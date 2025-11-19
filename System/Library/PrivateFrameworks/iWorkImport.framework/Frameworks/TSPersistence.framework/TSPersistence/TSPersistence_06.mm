TSP::SparseUUIDPathArray_Entry *TSP::SparseUUIDPathArray_Entry::SparseUUIDPathArray_Entry(TSP::SparseUUIDPathArray_Entry *this, const TSP::SparseUUIDPathArray_Entry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2DE0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(v4, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSP::SparseUUIDPathArray_Entry::~SparseUUIDPathArray_Entry(TSP::SparseUUIDPathArray_Entry *this)
{
  if (this != TSP::_SparseUUIDPathArray_Entry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUIDPath::~UUIDPath(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::SparseUUIDPathArray_Entry::~SparseUUIDPathArray_Entry(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::SparseUUIDPathArray_Entry::default_instance(TSP::SparseUUIDPathArray_Entry *this)
{
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto);
  }

  return TSP::_SparseUUIDPathArray_Entry_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray_Entry::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::UUIDPath::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return this;
}

google::protobuf::internal *TSP::SparseUUIDPathArray_Entry::_InternalParse(TSP::SparseUUIDPathArray_Entry *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v25 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v25, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 18)
        {
          *(this + 4) |= 1u;
          v16 = *(this + 3);
          if (!v16)
          {
            v17 = *(this + 1);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(v17);
            *(this + 3) = v16;
            v8 = v25;
          }

          v15 = sub_276BD3F80(a3, v16, v8);
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
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v25;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
        }

        v25 = v15;
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
        v25 = v18;
        *(this + 8) = v19;
        goto LABEL_31;
      }

      v23 = google::protobuf::internal::VarintParseSlow32(v8, v19);
      v25 = v23;
      *(this + 8) = v24;
      if (!v23)
      {
LABEL_39:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_2769F6104(a3, &v25, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v25;
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

uint64_t TSP::SparseUUIDPathArray_Entry::RequiredFieldsByteSizeFallback(TSP::SparseUUIDPathArray_Entry *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if (v5)
  {
    v7 = TSP::UUIDPath::ByteSizeLong(*(this + 3), a2, a3, a4);
    result = &v7->ptr_ + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v5 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

const InternalMetadata *TSP::SparseUUIDPathArray_Entry::ByteSizeLong(TSP::UUIDPath **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TSP::SparseUUIDPathArray_Entry::RequiredFieldsByteSizeFallback(this, a2, a3, a4);
  }

  else
  {
    v5 = TSP::UUIDPath::ByteSizeLong(this[3], a2, a3, a4);
    v7 = (&v5->ptr_ + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v7, this + 5, v6);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

void TSP::SparseUUIDPathArray_Entry::MergeFrom(TSP::SparseUUIDPathArray_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDPathArray_Entry::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDPathArray_Entry::MergeFrom(void *this, const TSP::SparseUUIDPathArray_Entry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 4) |= 1u;
      v6 = v3[3];
      if (!v6)
      {
        v7 = v3[1];
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSP::_UUIDPath_default_instance_;
      }

      this = TSP::UUIDPath::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) = *(a2 + 8);
    }

    *(v3 + 4) |= v5;
  }

  return this;
}

void TSP::SparseUUIDPathArray_Entry::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::SparseUUIDPathArray_Entry::Clear(this);

    TSP::SparseUUIDPathArray_Entry::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray_Entry::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::SparseUUIDPathArray_Entry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::SparseUUIDPathArray_Entry::Clear(this);

    return TSP::SparseUUIDPathArray_Entry::MergeFrom(v4, a2);
  }

  return this;
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

uint64_t *TSP::SparseUUIDPathArray_Entry::InternalSwap(TSP::SparseUUIDPathArray_Entry *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

uint64_t TSP::SparseUUIDPathArray_Entry::GetMetadata(TSP::SparseUUIDPathArray_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[52];
  v2 = off_2812FC248[53];
  return result;
}

TSP::SparseUUIDPathArray *TSP::SparseUUIDPathArray::SparseUUIDPathArray(TSP::SparseUUIDPathArray *this, Arena *a2)
{
  *this = &unk_2885C2E90;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_TSPMessages_2eproto);
  }

  *(this + 12) = 0;
  return this;
}

TSP::SparseUUIDPathArray *TSP::SparseUUIDPathArray::SparseUUIDPathArray(TSP::SparseUUIDPathArray *this, const TSP::SparseUUIDPathArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2E90;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43BF8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TSP::SparseUUIDPathArray::~SparseUUIDPathArray(TSP::SparseUUIDPathArray *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A43B74(this + 3);
}

{
  TSP::SparseUUIDPathArray::~SparseUUIDPathArray(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::SparseUUIDPathArray::default_instance(TSP::SparseUUIDPathArray *this)
{
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_TSPMessages_2eproto);
  }

  return &TSP::_SparseUUIDPathArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::SparseUUIDPathArray_Entry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::SparseUUIDPathArray::_InternalParse(TSP::SparseUUIDPathArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, *(a3 + 23)) & 1) == 0)
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
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v27;
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
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v30;
          }

          v30 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v30)
          {
LABEL_46:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v30 = (v15 + 1);
          v17 = *(this + 5);
          if (!v17)
          {
            v18 = *(this + 9);
            goto LABEL_24;
          }

          v22 = *(this + 8);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(this + 9))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
              v17 = *(this + 5);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDPathArray_Entry>(*(this + 3));
            v20 = *(this + 8);
            v21 = *(this + 5) + 8 * v20;
            *(this + 8) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v30;
          }

          else
          {
            *(this + 8) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_276BD4050(a3, v19, v16);
          v30 = v15;
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
        v30 = v23;
        *(this + 12) = v24;
        v6 = 1;
        goto LABEL_38;
      }

      v28 = google::protobuf::internal::VarintParseSlow32(v8, v24);
      v30 = v28;
      *(this + 12) = v29;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_2769F6104(a3, &v30, *(a3 + 23)))
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
  *(this + 4) |= v6;
  return v30;
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

const InternalMetadata *TSP::SparseUUIDPathArray::ByteSizeLong(TSP::SparseUUIDPathArray *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(this + 16))
  {
    v5 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 8);
  v7 = (v5 + v6);
  v8 = *(this + 5);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TSP::SparseUUIDPathArray_Entry::ByteSizeLong(v11, a2, a3, a4);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 5, a4);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

void TSP::SparseUUIDPathArray::MergeFrom(TSP::SparseUUIDPathArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDPathArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDPathArray::MergeFrom(void *this, const TSP::SparseUUIDPathArray *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43BF8(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 12);
    *(v3 + 4) |= 1u;
    *(v3 + 12) = v10;
  }

  return this;
}

void TSP::SparseUUIDPathArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::SparseUUIDPathArray::Clear(this);

    TSP::SparseUUIDPathArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::SparseUUIDPathArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::SparseUUIDPathArray::Clear(this);

    return TSP::SparseUUIDPathArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_276A348DC(uint64_t a1)
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

__n128 TSP::SparseUUIDPathArray::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = *(a2 + 12);
  *(a2 + 12) = v5;
  return result;
}

uint64_t TSP::SparseUUIDPathArray::GetMetadata(TSP::SparseUUIDPathArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[54];
  v2 = off_2812FC248[55];
  return result;
}

TSP::PasteboardObject *TSP::PasteboardObject::PasteboardObject(TSP::PasteboardObject *this, Arena *a2)
{
  *this = &unk_2885C2F40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 15) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (atomic_load_explicit(scc_info_PasteboardObject_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_PasteboardObject_TSPMessages_2eproto);
  }

  *(this + 170) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  return this;
}

void sub_276A34AD8(_Unwind_Exception *a1)
{
  sub_276A43438(v5);
  sub_276A07EA8(v4);
  sub_276A07EA8(v3);
  sub_276A07EA8(v2);
  sub_276A07EA8(v1);
  _Unwind_Resume(a1);
}

TSP::PasteboardObject *TSP::PasteboardObject::PasteboardObject(TSP::PasteboardObject *this, const TSP::PasteboardObject *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2F40;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43CB8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276A43CB8(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_276A43CB8(this + 9, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96), *(a2 + 26));
    sub_276A43CB8(this + 12, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = *(this + 14);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120), *(a2 + 32));
    sub_276A434D0(this + 15, v27, (v26 + 8), v25, **(this + 17) - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = *(this + 17);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 1);
  if (v30)
  {
    sub_2769F63D8(v4, ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v31 = *(a2 + 4);
  if (v31)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v31 & 2) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v31 & 4) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v31 & 8) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v31 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  *(this + 92) = *(a2 + 92);
  return this;
}

void sub_276A34EDC(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v6, 0x1081C407D3F2757);
  sub_276A43438(v5);
  sub_276A07EA8(v4);
  sub_276A07EA8(v3);
  sub_276A07EA8(v2);
  sub_276A07EA8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSP::PasteboardObject::~PasteboardObject(TSP::PasteboardObject *this)
{
  sub_276A34FE8(this);
  sub_2769DEC8C(this + 1);
  sub_276A43438(this + 15);
  sub_276A07EA8(this + 12);
  sub_276A07EA8(this + 9);
  sub_276A07EA8(this + 6);
  sub_276A07EA8(this + 3);
}

{
  TSP::PasteboardObject::~PasteboardObject(this);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A34FE8(uint64_t result)
{
  if (result != &TSP::_PasteboardObject_default_instance_)
  {
    v1 = result;
    v2 = *(result + 144);
    if (v2)
    {
      sub_2769DEC8C((v2 + 8));
      result = MEMORY[0x277C9F670](v2, 0x1081C407D3F2757);
    }

    v3 = v1[19];
    if (v3)
    {
      sub_2769DEC8C((v3 + 8));
      result = MEMORY[0x277C9F670](v3, 0x1081C407D3F2757);
    }

    v4 = v1[20];
    if (v4)
    {
      sub_2769DEC8C((v4 + 8));
      result = MEMORY[0x277C9F670](v4, 0x1081C407D3F2757);
    }

    v5 = v1[21];
    if (v5)
    {
      sub_2769DEC8C((v5 + 8));
      result = MEMORY[0x277C9F670](v5, 0x1081C407D3F2757);
    }

    v6 = v1[22];
    if (v6)
    {
      sub_2769DEC8C((v6 + 8));

      JUMPOUT(0x277C9F670);
    }
  }

  return result;
}

void *TSP::PasteboardObject::default_instance(TSP::PasteboardObject *this)
{
  if (atomic_load_explicit(scc_info_PasteboardObject_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_PasteboardObject_TSPMessages_2eproto);
  }

  return &TSP::_PasteboardObject_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::PasteboardObject::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      this = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      this = TSP::Range::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 16);
  if ((v17 & 0x1F) == 0)
  {
    goto LABEL_28;
  }

  if (v17)
  {
    this = TSP::Reference::Clear(*(v1 + 144));
    if ((v17 & 2) == 0)
    {
LABEL_24:
      if ((v17 & 4) == 0)
      {
        goto LABEL_25;
      }

LABEL_34:
      this = TSP::Reference::Clear(*(v1 + 160));
      if ((v17 & 8) == 0)
      {
LABEL_26:
        if ((v17 & 0x10) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_24;
  }

  this = TSP::Reference::Clear(*(v1 + 152));
  if ((v17 & 4) != 0)
  {
    goto LABEL_34;
  }

LABEL_25:
  if ((v17 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_35:
  this = TSP::Reference::Clear(*(v1 + 168));
  if ((v17 & 0x10) != 0)
  {
LABEL_27:
    this = TSP::Reference::Clear(*(v1 + 176));
  }

LABEL_28:
  v19 = *(v1 + 8);
  v18 = v1 + 8;
  *(v18 + 176) = 0;
  *(v18 + 8) = 0;
  if (v19)
  {

    return sub_2769F6424(v18);
  }

  return this;
}

google::protobuf::internal *TSP::PasteboardObject::_InternalParse(TSP::PasteboardObject *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v75 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v75, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v75 + 1);
      v9 = *v75;
      if ((*v75 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v75, (v10 - 128));
      v75 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_150;
      }

      v8 = TagFallback;
      v9 = v41;
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

              *(this + 4) |= 0x10u;
              v42 = *(this + 22);
              if (v42)
              {
                goto LABEL_133;
              }

              v66 = *(this + 1);
              if (v66)
              {
                v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
              }

              v42 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v66);
              *(this + 22) = v42;
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
              v75 = (v32 + 1);
              v34 = *(this + 17);
              if (!v34)
              {
                v35 = *(this + 33);
                goto LABEL_62;
              }

              v39 = *(this + 32);
              v35 = *v34;
              if (v39 >= *v34)
              {
                if (v35 == *(this + 33))
                {
LABEL_62:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v35 + 1);
                  v34 = *(this + 17);
                  v35 = *v34;
                }

                *v34 = v35 + 1;
                v36 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(this + 15));
                v37 = *(this + 32);
                v38 = *(this + 17) + 8 * v37;
                *(this + 32) = v37 + 1;
                *(v38 + 8) = v36;
                v33 = v75;
              }

              else
              {
                *(this + 32) = v39 + 1;
                v36 = *&v34[2 * v39 + 2];
              }

              v32 = sub_276BD3C40(a3, v36, v33);
              v75 = v32;
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

          v48 = (v8 - 1);
          while (2)
          {
            v49 = (v48 + 1);
            v75 = (v48 + 1);
            v50 = *(this + 14);
            if (!v50)
            {
              v51 = *(this + 27);
              goto LABEL_93;
            }

            v55 = *(this + 26);
            v51 = *v50;
            if (v55 >= *v50)
            {
              if (v51 == *(this + 27))
              {
LABEL_93:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v51 + 1);
                v50 = *(this + 14);
                v51 = *v50;
              }

              *v50 = v51 + 1;
              v52 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 12));
              v53 = *(this + 26);
              v54 = *(this + 14) + 8 * v53;
              *(this + 26) = v53 + 1;
              *(v54 + 8) = v52;
              v49 = v75;
            }

            else
            {
              *(this + 26) = v55 + 1;
              v52 = *&v50[2 * v55 + 2];
            }

            v48 = sub_276BD2124(a3, v52, v49);
            v75 = v48;
            if (!v48)
            {
              goto LABEL_150;
            }

            if (*a3 <= v48 || *v48 != 90)
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

            *(this + 4) |= 8u;
            v42 = *(this + 21);
            if (v42)
            {
              goto LABEL_133;
            }

            v64 = *(this + 1);
            if (v64)
            {
              v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
            }

            v42 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v64);
            *(this + 21) = v42;
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
            v75 = (v21 + 1);
            v23 = *(this + 11);
            if (!v23)
            {
              v24 = *(this + 21);
              goto LABEL_37;
            }

            v28 = *(this + 20);
            v24 = *v23;
            if (v28 >= *v23)
            {
              if (v24 == *(this + 21))
              {
LABEL_37:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v24 + 1);
                v23 = *(this + 11);
                v24 = *v23;
              }

              *v23 = v24 + 1;
              v25 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 9));
              v26 = *(this + 20);
              v27 = *(this + 11) + 8 * v26;
              *(this + 20) = v26 + 1;
              *(v27 + 8) = v25;
              v22 = v75;
            }

            else
            {
              *(this + 20) = v28 + 1;
              v25 = *&v23[2 * v28 + 2];
            }

            v21 = sub_276BD2124(a3, v25, v22);
            v75 = v21;
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
        v45 = (v8 + 1);
        v44 = *v8;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_83;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if ((v46 & 0x80000000) == 0)
        {
          v45 = (v8 + 2);
LABEL_83:
          v75 = v45;
          *(this + 185) = v44 != 0;
          goto LABEL_135;
        }

        v73 = google::protobuf::internal::VarintParseSlow64(v8, v44);
        v75 = v73;
        *(this + 185) = v74 != 0;
        if (!v73)
        {
LABEL_150:
          v75 = 0;
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
              *(this + 4) |= 1u;
              v42 = *(this + 18);
              if (!v42)
              {
                v43 = *(this + 1);
                if (v43)
                {
                  v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
                }

                v42 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v43);
                *(this + 18) = v42;
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
              v75 = (v13 + 1);
              v15 = *(this + 8);
              if (!v15)
              {
                v16 = *(this + 15);
                goto LABEL_19;
              }

              v20 = *(this + 14);
              v16 = *v15;
              if (v20 >= *v15)
              {
                if (v16 == *(this + 15))
                {
LABEL_19:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v16 + 1);
                  v15 = *(this + 8);
                  v16 = *v15;
                }

                *v15 = v16 + 1;
                v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 6));
                v18 = *(this + 14);
                v19 = *(this + 8) + 8 * v18;
                *(this + 14) = v18 + 1;
                *(v19 + 8) = v17;
                v14 = v75;
              }

              else
              {
                *(this + 14) = v20 + 1;
                v17 = *&v15[2 * v20 + 2];
              }

              v13 = sub_276BD2124(a3, v17, v14);
              v75 = v13;
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

          v56 = (v8 - 1);
          while (2)
          {
            v57 = (v56 + 1);
            v75 = (v56 + 1);
            v58 = *(this + 5);
            if (!v58)
            {
              v59 = *(this + 9);
              goto LABEL_107;
            }

            v63 = *(this + 8);
            v59 = *v58;
            if (v63 >= *v58)
            {
              if (v59 == *(this + 9))
              {
LABEL_107:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v59 + 1);
                v58 = *(this + 5);
                v59 = *v58;
              }

              *v58 = v59 + 1;
              v60 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 3));
              v61 = *(this + 8);
              v62 = *(this + 5) + 8 * v61;
              *(this + 8) = v61 + 1;
              *(v62 + 8) = v60;
              v57 = v75;
            }

            else
            {
              *(this + 8) = v63 + 1;
              v60 = *&v58[2 * v63 + 2];
            }

            v56 = sub_276BD2124(a3, v60, v57);
            v75 = v56;
            if (!v56)
            {
              goto LABEL_150;
            }

            if (*a3 <= v56 || *v56 != 18)
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

          *(this + 4) |= 2u;
          v42 = *(this + 19);
          if (v42)
          {
            goto LABEL_133;
          }

          v47 = *(this + 1);
          if (v47)
          {
            v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
          }

          v42 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v47);
          *(this + 19) = v42;
LABEL_132:
          v8 = v75;
          goto LABEL_133;
        }

        if (v11 == 6)
        {
          if (v9 == 50)
          {
            *(this + 4) |= 4u;
            v42 = *(this + 20);
            if (!v42)
            {
              v65 = *(this + 1);
              if (v65)
              {
                v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
              }

              v42 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v65);
              *(this + 20) = v42;
              goto LABEL_132;
            }

LABEL_133:
            v67 = sub_276BD2124(a3, v42, v8);
LABEL_134:
            v75 = v67;
            if (!v67)
            {
              goto LABEL_150;
            }

            goto LABEL_135;
          }

LABEL_137:
          if (v9)
          {
            v68 = (v9 & 7) == 4;
          }

          else
          {
            v68 = 1;
          }

          if (v68)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v69 = *(this + 1);
          if (v69)
          {
            v70 = ((v69 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v70 = sub_2769F617C(this + 1);
            v8 = v75;
          }

          v67 = google::protobuf::internal::UnknownFieldParse(v9, v70, v8, a3, v5);
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
          v75 = v30;
          *(this + 184) = v29 != 0;
          goto LABEL_135;
        }

        v71 = google::protobuf::internal::VarintParseSlow64(v8, v29);
        v75 = v71;
        *(this + 184) = v72 != 0;
        if (!v71)
        {
          goto LABEL_150;
        }
      }

LABEL_135:
      if (sub_2769F6104(a3, &v75, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v75 + 2);
LABEL_6:
    v75 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v75;
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

const InternalMetadata *TSP::PasteboardObject::ByteSizeLong(TSP::PasteboardObject *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = *(this + 8);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::Reference::ByteSizeLong(v16, a2, a3, a4);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 20);
  v19 = v12 + v18;
  v20 = *(this + 11);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = TSP::Reference::ByteSizeLong(v23, a2, a3, a4);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(this + 26);
  v26 = v19 + v25;
  v27 = *(this + 14);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = TSP::Reference::ByteSizeLong(v30, a2, a3, a4);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(this + 32);
  v33 = (v26 + v32);
  v34 = *(this + 17);
  if (v34)
  {
    v35 = (v34 + 8);
  }

  else
  {
    v35 = 0;
  }

  if (v32)
  {
    v36 = 8 * v32;
    do
    {
      v37 = *v35++;
      v38 = TSP::Range::ByteSizeLong(v37, a2, a3, a4);
      v33 = (v33 + v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6));
      v36 -= 8;
    }

    while (v36);
  }

  v39 = *(this + 4);
  if ((v39 & 0x7F) != 0)
  {
    if (v39)
    {
      v42 = TSP::Reference::ByteSizeLong(*(this + 18), a2, a3, a4);
      v33 = (&v42->ptr_ + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + v33 + 1);
      if ((v39 & 2) == 0)
      {
LABEL_36:
        if ((v39 & 4) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }
    }

    else if ((v39 & 2) == 0)
    {
      goto LABEL_36;
    }

    v43 = TSP::Reference::ByteSizeLong(*(this + 19), a2, a3, a4);
    v33 = (&v43->ptr_ + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + v33 + 1);
    if ((v39 & 4) == 0)
    {
LABEL_37:
      if ((v39 & 8) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }

LABEL_45:
    v44 = TSP::Reference::ByteSizeLong(*(this + 20), a2, a3, a4);
    v33 = (&v44->ptr_ + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + v33 + 1);
    if ((v39 & 8) == 0)
    {
LABEL_38:
      if ((v39 & 0x10) == 0)
      {
LABEL_40:
        v33 = (v33 + ((v39 >> 5) & 2) + ((v39 >> 4) & 2));
        goto LABEL_41;
      }

LABEL_39:
      v40 = TSP::Reference::ByteSizeLong(*(this + 22), a2, a3, a4);
      v33 = (&v40->ptr_ + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + v33 + 1);
      goto LABEL_40;
    }

LABEL_46:
    v45 = TSP::Reference::ByteSizeLong(*(this + 21), a2, a3, a4);
    v33 = (&v45->ptr_ + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + v33 + 1);
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_41:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v33, this + 5, a4);
  }

  else
  {
    *(this + 5) = v33;
    return v33;
  }
}

void TSP::PasteboardObject::MergeFrom(TSP::PasteboardObject *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::PasteboardObject::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::PasteboardObject::MergeFrom(void *this, const TSP::PasteboardObject *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43CB8(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 6), *(a2 + 14));
    this = sub_276A43CB8(v3 + 6, v12, (v11 + 8), v10, *v3[8] - *(v3 + 14));
    v13 = *(v3 + 14) + v10;
    *(v3 + 14) = v13;
    v14 = v3[8];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 9), *(a2 + 20));
    this = sub_276A43CB8(v3 + 9, v17, (v16 + 8), v15, *v3[11] - *(v3 + 20));
    v18 = *(v3 + 20) + v15;
    *(v3 + 20) = v18;
    v19 = v3[11];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 12), *(a2 + 26));
    this = sub_276A43CB8(v3 + 12, v22, (v21 + 8), v20, *v3[14] - *(v3 + 26));
    v23 = *(v3 + 26) + v20;
    *(v3 + 26) = v23;
    v24 = v3[14];
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 15), *(a2 + 32));
    this = sub_276A434D0(v3 + 15, v27, (v26 + 8), v25, *v3[17] - *(v3 + 32));
    v28 = *(v3 + 32) + v25;
    *(v3 + 32) = v28;
    v29 = v3[17];
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 4);
  if ((v30 & 0x7F) != 0)
  {
    if (v30)
    {
      *(v3 + 4) |= 1u;
      v31 = v3[18];
      if (!v31)
      {
        v32 = v3[1];
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v32);
        v3[18] = v31;
      }

      if (*(a2 + 18))
      {
        v33 = *(a2 + 18);
      }

      else
      {
        v33 = &TSP::_Reference_default_instance_;
      }

      this = TSP::Reference::MergeFrom(v31, v33);
      if ((v30 & 2) == 0)
      {
LABEL_21:
        if ((v30 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_45;
      }
    }

    else if ((v30 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 4) |= 2u;
    v34 = v3[19];
    if (!v34)
    {
      v35 = v3[1];
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v35);
      v3[19] = v34;
    }

    if (*(a2 + 19))
    {
      v36 = *(a2 + 19);
    }

    else
    {
      v36 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v34, v36);
    if ((v30 & 4) == 0)
    {
LABEL_22:
      if ((v30 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(v3 + 4) |= 4u;
    v37 = v3[20];
    if (!v37)
    {
      v38 = v3[1];
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v38);
      v3[20] = v37;
    }

    if (*(a2 + 20))
    {
      v39 = *(a2 + 20);
    }

    else
    {
      v39 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v37, v39);
    if ((v30 & 8) == 0)
    {
LABEL_23:
      if ((v30 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(v3 + 4) |= 8u;
    v40 = v3[21];
    if (!v40)
    {
      v41 = v3[1];
      if (v41)
      {
        v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
      }

      v40 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v41);
      v3[21] = v40;
    }

    if (*(a2 + 21))
    {
      v42 = *(a2 + 21);
    }

    else
    {
      v42 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v40, v42);
    if ((v30 & 0x10) == 0)
    {
LABEL_24:
      if ((v30 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_69;
    }

LABEL_61:
    *(v3 + 4) |= 0x10u;
    v43 = v3[22];
    if (!v43)
    {
      v44 = v3[1];
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v44);
      v3[22] = v43;
    }

    if (*(a2 + 22))
    {
      v45 = *(a2 + 22);
    }

    else
    {
      v45 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v43, v45);
    if ((v30 & 0x20) == 0)
    {
LABEL_25:
      if ((v30 & 0x40) == 0)
      {
LABEL_27:
        *(v3 + 4) |= v30;
        return this;
      }

LABEL_26:
      *(v3 + 185) = *(a2 + 185);
      goto LABEL_27;
    }

LABEL_69:
    *(v3 + 184) = *(a2 + 184);
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return this;
}

void TSP::PasteboardObject::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::PasteboardObject::Clear(this);

    TSP::PasteboardObject::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::PasteboardObject::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::PasteboardObject *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::PasteboardObject::Clear(this);

    return TSP::PasteboardObject::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::PasteboardObject::InternalSwap(TSP::PasteboardObject *this, TSP::PasteboardObject *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 16);
  v14 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v15 = *(this + 18);
  v16 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v15;
  *(a2 + 19) = v16;
  v17 = *(this + 20);
  v18 = *(this + 21);
  result = *(a2 + 10);
  *(this + 10) = result;
  *(a2 + 20) = v17;
  *(a2 + 21) = v18;
  v20 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v20;
  LOWORD(v20) = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v20;
  return result;
}

uint64_t TSP::PasteboardObject::GetMetadata(TSP::PasteboardObject *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[56];
  v2 = off_2812FC248[57];
  return result;
}

TSP::ObjectCollection *TSP::ObjectCollection::ObjectCollection(TSP::ObjectCollection *this, Arena *a2)
{
  *this = &unk_2885C2FF0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ObjectCollection_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectCollection_TSPMessages_2eproto);
  }

  return this;
}

TSP::ObjectCollection *TSP::ObjectCollection::ObjectCollection(TSP::ObjectCollection *this, const TSP::ObjectCollection *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C2FF0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A43CB8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void TSP::ObjectCollection::~ObjectCollection(TSP::ObjectCollection *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A07EA8(this + 2);
}

{
  TSP::ObjectCollection::~ObjectCollection(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::ObjectCollection::default_instance(TSP::ObjectCollection *this)
{
  if (atomic_load_explicit(scc_info_ObjectCollection_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectCollection_TSPMessages_2eproto);
  }

  return &TSP::_ObjectCollection_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::ObjectCollection::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::ObjectCollection::_InternalParse(TSP::ObjectCollection *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v23 = (v12 + 1);
          v14 = *(this + 4);
          if (!v14)
          {
            break;
          }

          v19 = *(this + 6);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(this + 6) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD2124(a3, v16, v13);
          v23 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(this + 7);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v15 + 1);
        v14 = *(this + 4);
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
        *(a3 + 20) = v7 - 1;
        return v23;
      }

      v10 = *(this + 1);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_2769F617C(this + 1);
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6, a3, v5);
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      if (sub_2769F6104(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
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

const InternalMetadata *TSP::ObjectCollection::ByteSizeLong(TSP::ObjectCollection *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 6);
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 10, a4);
  }

  else
  {
    *(this + 10) = v5;
    return v5;
  }
}

void TSP::ObjectCollection::MergeFrom(TSP::ObjectCollection *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectCollection::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ObjectCollection::MergeFrom(void *this, const TSP::ObjectCollection *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2), v5);
    this = sub_276A43CB8(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

void TSP::ObjectCollection::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::ObjectCollection::Clear(this);

    TSP::ObjectCollection::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::ObjectCollection::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::ObjectCollection *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::ObjectCollection::Clear(this);

    return TSP::ObjectCollection::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::ObjectCollection::InternalSwap(TSP::ObjectCollection *this, TSP::ObjectCollection *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TSP::ObjectCollection::GetMetadata(TSP::ObjectCollection *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[58];
  v2 = off_2812FC248[59];
  return result;
}

TSP::ObjectContainer *TSP::ObjectContainer::ObjectContainer(TSP::ObjectContainer *this, Arena *a2)
{
  *this = &unk_2885C30A0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ObjectContainer_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectContainer_TSPMessages_2eproto);
  }

  *(this + 12) = 0;
  return this;
}

TSP::ObjectContainer *TSP::ObjectContainer::ObjectContainer(TSP::ObjectContainer *this, const TSP::ObjectContainer *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C30A0;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43CB8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TSP::ObjectContainer::~ObjectContainer(TSP::ObjectContainer *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A07EA8(this + 3);
}

{
  TSP::ObjectContainer::~ObjectContainer(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::ObjectContainer::default_instance(TSP::ObjectContainer *this)
{
  if (atomic_load_explicit(scc_info_ObjectContainer_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectContainer_TSPMessages_2eproto);
  }

  return &TSP::_ObjectContainer_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::ObjectContainer::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::ObjectContainer::_InternalParse(TSP::ObjectContainer *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, *(a3 + 23)) & 1) == 0)
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
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v27;
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
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v30;
          }

          v30 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v30)
          {
LABEL_46:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v30 = (v15 + 1);
          v17 = *(this + 5);
          if (!v17)
          {
            v18 = *(this + 9);
            goto LABEL_24;
          }

          v22 = *(this + 8);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(this + 9))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
              v17 = *(this + 5);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 3));
            v20 = *(this + 8);
            v21 = *(this + 5) + 8 * v20;
            *(this + 8) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v30;
          }

          else
          {
            *(this + 8) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_276BD2124(a3, v19, v16);
          v30 = v15;
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
        v30 = v23;
        *(this + 12) = v24;
        v6 = 1;
        goto LABEL_38;
      }

      v28 = google::protobuf::internal::VarintParseSlow32(v8, v24);
      v30 = v28;
      *(this + 12) = v29;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_2769F6104(a3, &v30, *(a3 + 23)))
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
  *(this + 4) |= v6;
  return v30;
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

const InternalMetadata *TSP::ObjectContainer::ByteSizeLong(TSP::ObjectContainer *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 16))
  {
    v5 = (v5 + ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void TSP::ObjectContainer::MergeFrom(TSP::ObjectContainer *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectContainer::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ObjectContainer::MergeFrom(void *this, const TSP::ObjectContainer *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43CB8(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 12);
    *(v3 + 4) |= 1u;
    *(v3 + 12) = v10;
  }

  return this;
}

void TSP::ObjectContainer::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::ObjectContainer::Clear(this);

    TSP::ObjectContainer::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::ObjectContainer::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::ObjectContainer *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::ObjectContainer::Clear(this);

    return TSP::ObjectContainer::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::ObjectContainer::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = *(a2 + 12);
  *(a2 + 12) = v5;
  return result;
}

uint64_t TSP::ObjectContainer::GetMetadata(TSP::ObjectContainer *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[60];
  v2 = off_2812FC248[61];
  return result;
}

TSP::DataAttributes *TSP::DataAttributes::DataAttributes(TSP::DataAttributes *this, Arena *a2)
{
  *this = &unk_2885C3150;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2885C3150;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 10) = 0;
  return this;
}

TSP::DataAttributes *TSP::DataAttributes::DataAttributes(TSP::DataAttributes *this, const TSP::DataAttributes *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_2885C3150;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  return this;
}

void TSP::DataAttributes::~DataAttributes(TSP::DataAttributes *this)
{
  sub_2769DEC8C(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  TSP::DataAttributes::~DataAttributes(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::DataAttributes::default_instance(TSP::DataAttributes *this)
{
  if (atomic_load_explicit(scc_info_DataAttributes_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataAttributes_TSPMessages_2eproto);
  }

  return TSP::_DataAttributes_default_instance_;
}

unsigned __int8 *TSP::DataAttributes::Clear(TSP::DataAttributes *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return result;
}

google::protobuf::internal *TSP::DataAttributes::_InternalParse(TSP::DataAttributes *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v15 = a2;
  if ((sub_2769F6104(a3, &v15, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (v15 + 1);
      LODWORD(v7) = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v15, v7);
      v15 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_6:
      if (v7)
      {
        v8 = (v7 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v7 - 1;
        return v15;
      }

      v9 = v7;
      if (v7 < 0x320)
      {
        v11 = *(this + 1);
        if (v11)
        {
          v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v12 = sub_2769F617C(this + 1);
          v6 = v15;
        }

        v10 = google::protobuf::internal::UnknownFieldParse(v9, v12, v6, a3, v5);
      }

      else
      {
        v10 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v7, v6, TSP::_DataAttributes_default_instance_, this + 1, a3);
      }

      v15 = v10;
      if (!v10)
      {
        return 0;
      }

      if (sub_2769F6104(a3, &v15, a3[11].i32[1]))
      {
        return v15;
      }
    }

    v6 = (v15 + 2);
LABEL_5:
    v15 = v6;
    goto LABEL_6;
  }

  return v15;
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

const InternalMetadata *TSP::DataAttributes::ByteSizeLong(TSP::DataAttributes *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10, v3);
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
  v4 = *(a2 + 1);
  if (v4)
  {

    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
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

void TSP::DataAttributes::CopyFrom(TSP::DataAttributes *this, const TSP::DataAttributes *a2)
{
  if (a2 != this)
  {
    TSP::DataAttributes::Clear(this);

    TSP::DataAttributes::MergeFrom(this, a2);
  }
}

uint64_t *TSP::DataAttributes::InternalSwap(TSP::DataAttributes *this, google::protobuf::Arena **a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 2));

  return sub_2769DF630(this + 1, a2 + 1);
}

uint64_t TSP::DataAttributes::GetMetadata(TSP::DataAttributes *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[62];
  v2 = off_2812FC248[63];
  return result;
}

TSP::LargeArraySegment *TSP::LargeArraySegment::LargeArraySegment(TSP::LargeArraySegment *this, Arena *a2)
{
  *this = &unk_2885C3200;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeArraySegment_TSPMessages_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = 0;
  return this;
}

TSP::LargeArraySegment *TSP::LargeArraySegment::LargeArraySegment(TSP::LargeArraySegment *this, const TSP::LargeArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3200;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  *(this + 4) = *(a2 + 4);
  return this;
}

void TSP::LargeArraySegment::~LargeArraySegment(TSP::LargeArraySegment *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::LargeArraySegment::~LargeArraySegment(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::LargeArraySegment::default_instance(TSP::LargeArraySegment *this)
{
  if (atomic_load_explicit(scc_info_LargeArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeArraySegment_TSPMessages_2eproto);
  }

  return &TSP::_LargeArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeArraySegment::Clear(TSP::LargeArraySegment *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(this + 4) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::LargeArraySegment::_InternalParse(TSP::LargeArraySegment *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v31 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v31, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v31 + 1);
      v9 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v10 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v8 = TagFallback;
      v9 = v26;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 == 26)
        {
          *(this + 4) |= 1u;
          v20 = *(this + 1);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v20);
          v16 = google::protobuf::internal::InlineGreedyStringParser(v21, v31, a3);
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
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(this + 1);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_2769F617C(this + 1);
            v8 = v31;
          }

          v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
        }

        v31 = v16;
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
          v31 = v17;
          *(this + 9) = v18;
          goto LABEL_35;
        }

        v27 = google::protobuf::internal::VarintParseSlow32(v8, v18);
        v31 = v27;
        *(this + 9) = v28;
        if (!v27)
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
          v31 = v23;
          *(this + 32) = v22 != 0;
          goto LABEL_35;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v31 = v29;
        *(this + 32) = v30 != 0;
        if (!v29)
        {
LABEL_45:
          v31 = 0;
          goto LABEL_2;
        }
      }

LABEL_35:
      if (sub_2769F6104(a3, &v31, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v31 + 2);
LABEL_6:
    v31 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v31;
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
    v4 = sub_2769E1AB4(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
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

const InternalMetadata *TSP::LargeArraySegment::ByteSizeLong(TSP::LargeArraySegment *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v5 = v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5 + (v4 & 2));
    if ((v4 & 4) != 0)
    {
      v6 = (v6 + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  *(this + 5) = v6;
  return v6;
}

void TSP::LargeArraySegment::MergeFrom(TSP::LargeArraySegment *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeArraySegment::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeArraySegment::MergeFrom(void *this, const TSP::LargeArraySegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 4) |= 1u;
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 4) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 9) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::LargeArraySegment::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeArraySegment::Clear(this);

    TSP::LargeArraySegment::MergeFrom(this, a2);
  }
}

TSP::LargeArraySegment *TSP::LargeArraySegment::CopyFrom(TSP::LargeArraySegment *this, const TSP::LargeArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeArraySegment::Clear(this);

    return TSP::LargeArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::LargeArraySegment::InternalSwap(TSP::LargeArraySegment *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  v7 = *(this + 4);
  *(this + 4) = a2[4];
  a2[4] = v7;
  return result;
}

uint64_t TSP::LargeArraySegment::GetMetadata(TSP::LargeArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[64];
  v2 = off_2812FC248[65];
  return result;
}

TSP::LargeNumberArraySegment *TSP::LargeNumberArraySegment::LargeNumberArraySegment(TSP::LargeNumberArraySegment *this, Arena *a2)
{
  *(this + 4) = a2;
  *this = &unk_2885C32B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (atomic_load_explicit(scc_info_LargeNumberArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArraySegment_TSPMessages_2eproto);
  }

  *(this + 5) = 0;
  return this;
}

void sub_276A39018(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276BD2A14(v2);
  }

  _Unwind_Resume(exception_object);
}

TSP::LargeNumberArraySegment *TSP::LargeNumberArraySegment::LargeNumberArraySegment(TSP::LargeNumberArraySegment *this, const TSP::LargeNumberArraySegment *a2)
{
  *(this + 1) = 0;
  *this = &unk_2885C32B0;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  if (*(a2 + 6))
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void sub_276A39128(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x1081C4010071FB2);
  if (*(v1 + 28) >= 1)
  {
    v4 = *(v1 + 32);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  _Unwind_Resume(a1);
}

void TSP::LargeNumberArraySegment::~LargeNumberArraySegment(TSP::LargeNumberArraySegment *this)
{
  if (this != &TSP::_LargeNumberArraySegment_default_instance_)
  {
    v2 = *(this + 5);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  if (*(this + 7) >= 1)
  {
    v3 = *(this + 4);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }
}

{
  TSP::LargeNumberArraySegment::~LargeNumberArraySegment(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::LargeNumberArraySegment::default_instance(TSP::LargeNumberArraySegment *this)
{
  if (atomic_load_explicit(scc_info_LargeNumberArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArraySegment_TSPMessages_2eproto);
  }

  return &TSP::_LargeNumberArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeNumberArraySegment::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 6) = 0;
  if (*(this + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(this + 5));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return this;
}

google::protobuf::internal *TSP::LargeNumberArraySegment::_InternalParse(TSP::LargeNumberArraySegment *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v24 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v24, i) & 1) == 0; i = *(a3 + 23))
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
      v8 = (v24 + 2);
LABEL_6:
      v24 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v10 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v22;
LABEL_7:
    if (v9 >> 3 == 2)
    {
      if (v9 == 17)
      {
        v16 = v8 - 1;
        v17 = *(this + 6);
        do
        {
          v18 = v16 + 1;
          v24 = (v16 + 1);
          if (v17 == *(this + 7))
          {
            google::protobuf::RepeatedField<double>::Reserve();
          }

          *(*(this + 4) + 8 * v17++) = *(v16 + 1);
          *(this + 6) = v17;
          v16 += 9;
          v24 = (v18 + 8);
        }

        while (*a3 > (v18 + 8) && *v16 == 17);
        continue;
      }

      if (v9 == 18)
      {
        v15 = google::protobuf::internal::PackedDoubleParser((this + 24), v8, a3, v6);
        goto LABEL_31;
      }
    }

    else if (v9 >> 3 == 1 && v9 == 10)
    {
      *(this + 4) |= 1u;
      v19 = *(this + 5);
      if (!v19)
      {
        v20 = *(this + 1);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v20);
        *(this + 5) = v19;
        v8 = v24;
      }

      v15 = sub_276BD4120(a3, v19, v8);
      goto LABEL_31;
    }

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
      *(a3 + 20) = v9 - 1;
      return v24;
    }

    v13 = *(this + 1);
    if (v13)
    {
      v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v14 = sub_2769F617C(this + 1);
      v8 = v24;
    }

    v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v7);
LABEL_31:
    v24 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v24;
}

const google::protobuf::UnknownFieldSet *TSP::LargeNumberArraySegment::_InternalSerialize(TSP::LargeNumberArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 5);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::LargeArraySegment::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 6);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 8 * v12;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 4) + v13);
      *a2 = 17;
      *(a2 + 1) = v15;
      a2 += 9;
      v13 += 8;
    }

    while (v14 != v13);
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeNumberArraySegment::ByteSizeLong(TSP::LargeArraySegment **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = (9 * *(this + 6));
  if (this[2])
  {
    v6 = TSP::LargeArraySegment::ByteSizeLong(this[5], a2, a3, a4);
    v5 = (&v6->ptr_ + v5 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void TSP::LargeNumberArraySegment::MergeFrom(TSP::LargeNumberArraySegment *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeNumberArraySegment::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeNumberArraySegment::MergeFrom(void *this, const TSP::LargeNumberArraySegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 6))
  {
    v5 = *(v3 + 6);
    google::protobuf::RepeatedField<double>::Reserve();
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 5);
    *(v3 + 4) |= 1u;
    v7 = v3[5];
    if (!v7)
    {
      v8 = v3[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v8);
      v3[5] = v7;
      v6 = *(a2 + 5);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(v7, v9);
  }

  return this;
}

void TSP::LargeNumberArraySegment::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeNumberArraySegment::Clear(this);

    TSP::LargeNumberArraySegment::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeNumberArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeNumberArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeNumberArraySegment::Clear(this);

    return TSP::LargeNumberArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSP::LargeNumberArraySegment::InternalSwap(TSP::LargeNumberArraySegment *this, TSP::LargeNumberArraySegment *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

uint64_t TSP::LargeNumberArraySegment::GetMetadata(TSP::LargeNumberArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[66];
  v2 = off_2812FC248[67];
  return result;
}

TSP::LargeStringArraySegment_OptionalElement *TSP::LargeStringArraySegment_OptionalElement::LargeStringArraySegment_OptionalElement(TSP::LargeStringArraySegment_OptionalElement *this, Arena *a2)
{
  *this = &unk_2885C3360;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

{
  *this = &unk_2885C3360;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

TSP::LargeStringArraySegment_OptionalElement *TSP::LargeStringArraySegment_OptionalElement::LargeStringArraySegment_OptionalElement(TSP::LargeStringArraySegment_OptionalElement *this, const TSP::LargeStringArraySegment_OptionalElement *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3360;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  return this;
}

void TSP::LargeStringArraySegment_OptionalElement::~LargeStringArraySegment_OptionalElement(TSP::LargeStringArraySegment_OptionalElement *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::LargeStringArraySegment_OptionalElement::~LargeStringArraySegment_OptionalElement(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::LargeStringArraySegment_OptionalElement::default_instance(TSP::LargeStringArraySegment_OptionalElement *this)
{
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto);
  }

  return TSP::_LargeStringArraySegment_OptionalElement_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment_OptionalElement::Clear(TSP::LargeStringArraySegment_OptionalElement *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v3)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::LargeStringArraySegment_OptionalElement::_InternalParse(TSP::LargeStringArraySegment_OptionalElement *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v19 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v19, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v19 + 1);
    v8 = *v19;
    if (*v19 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
        v19 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v17;
        goto LABEL_7;
      }

      v7 = (v19 + 2);
    }

    v19 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(this + 4) |= 1u;
      v14 = *(this + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v14);
      v13 = google::protobuf::internal::InlineGreedyStringParser(v15, v19, a3);
    }

    else
    {
      if (v8)
      {
        v10 = (v8 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 20) = v8 - 1;
        return v19;
      }

      v11 = *(this + 1);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_2769F617C(this + 1);
        v7 = v19;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7, a3, v6);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment_OptionalElement::_InternalSerialize(TSP::LargeStringArraySegment_OptionalElement *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 16))
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v6 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

const InternalMetadata *TSP::LargeStringArraySegment_OptionalElement::ByteSizeLong(TSP::LargeStringArraySegment_OptionalElement *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(this + 16))
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v4 = (v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 5, a4);
  }

  *(this + 5) = v4;
  return v4;
}

void TSP::LargeStringArraySegment_OptionalElement::MergeFrom(TSP::LargeStringArraySegment_OptionalElement *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeStringArraySegment_OptionalElement::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeStringArraySegment_OptionalElement::MergeFrom(void *this, const TSP::LargeStringArraySegment_OptionalElement *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 4) |= 1u;
    v6 = v3[1];
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    return google::protobuf::internal::ArenaStringPtr::Set(v3 + 3, (v5 & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  return this;
}

void TSP::LargeStringArraySegment_OptionalElement::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeStringArraySegment_OptionalElement::Clear(this);

    TSP::LargeStringArraySegment_OptionalElement::MergeFrom(this, a2);
  }
}

TSP::LargeStringArraySegment_OptionalElement *TSP::LargeStringArraySegment_OptionalElement::CopyFrom(TSP::LargeStringArraySegment_OptionalElement *this, const TSP::LargeStringArraySegment_OptionalElement *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeStringArraySegment_OptionalElement::Clear(this);

    return TSP::LargeStringArraySegment_OptionalElement::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::LargeStringArraySegment_OptionalElement::InternalSwap(TSP::LargeStringArraySegment_OptionalElement *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  return result;
}

uint64_t TSP::LargeStringArraySegment_OptionalElement::GetMetadata(TSP::LargeStringArraySegment_OptionalElement *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[68];
  v2 = off_2812FC248[69];
  return result;
}

TSP::LargeStringArraySegment *TSP::LargeStringArraySegment::LargeStringArraySegment(TSP::LargeStringArraySegment *this, Arena *a2)
{
  *this = &unk_2885C3410;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_TSPMessages_2eproto);
  }

  *(this + 6) = 0;
  return this;
}

TSP::LargeStringArraySegment *TSP::LargeStringArraySegment::LargeStringArraySegment(TSP::LargeStringArraySegment *this, const TSP::LargeStringArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3410;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43DEC(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_276A3A2B8(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x1081C4010071FB2);
  sub_276A43D68((v1 + 24));
  _Unwind_Resume(a1);
}

void TSP::LargeStringArraySegment::~LargeStringArraySegment(TSP::LargeStringArraySegment *this)
{
  if (this != &TSP::_LargeStringArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  sub_276A43D68(this + 3);
}

{
  TSP::LargeStringArraySegment::~LargeStringArraySegment(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::LargeStringArraySegment::default_instance(TSP::LargeStringArraySegment *this)
{
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_TSPMessages_2eproto);
  }

  return &TSP::_LargeStringArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::LargeStringArraySegment_OptionalElement::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::LargeStringArraySegment::_InternalParse(TSP::LargeStringArraySegment *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v28 = a2;
  for (i = *(a3 + 23); ; i = *(a3 + 23))
  {
    if (sub_2769F6104(a3, &v28, i))
    {
      return v28;
    }

    v7 = (v28 + 1);
    v8 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v28 + 2);
LABEL_6:
      v28 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v26;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(this + 4) |= 1u;
    v23 = *(this + 6);
    if (!v23)
    {
      v24 = *(this + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(this + 6) = v23;
      v7 = v28;
    }

    v14 = sub_276BD4120(a3, v23, v7);
LABEL_38:
    v28 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  if (v8 == 18)
  {
    v15 = (v7 - 1);
    while (1)
    {
      v16 = (v15 + 1);
      v28 = (v15 + 1);
      v17 = *(this + 5);
      if (!v17)
      {
        break;
      }

      v22 = *(this + 8);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(this + 8) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(this + 9))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeStringArraySegment_OptionalElement>(*(this + 3));
      v20 = *(this + 8);
      v21 = *(this + 5) + 8 * v20;
      *(this + 8) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v28;
LABEL_27:
      v15 = sub_276BD41F0(a3, v19, v16);
      v28 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(this + 9);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
    v17 = *(this + 5);
    v18 = *v17;
    goto LABEL_24;
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

  if (!v11)
  {
    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v28;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
    goto LABEL_38;
  }

  *(a3 + 20) = v8 - 1;
  return v28;
}

const google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment::_InternalSerialize(TSP::LargeStringArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::LargeArraySegment::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::LargeStringArraySegment_OptionalElement::_InternalSerialize(v14, v16, a3);
    }
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeStringArraySegment::ByteSizeLong(TSP::LargeStringArraySegment *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::LargeStringArraySegment_OptionalElement::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 16))
  {
    v11 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6), a2, a3, a4);
    v5 = (&v11->ptr_ + v5 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void TSP::LargeStringArraySegment::MergeFrom(TSP::LargeStringArraySegment *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeStringArraySegment::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeStringArraySegment::MergeFrom(void *this, const TSP::LargeStringArraySegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43DEC(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 4) |= 1u;
    v11 = v3[6];
    if (!v11)
    {
      v12 = v3[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v12);
      v3[6] = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(v11, v13);
  }

  return this;
}

void TSP::LargeStringArraySegment::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeStringArraySegment::Clear(this);

    TSP::LargeStringArraySegment::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeStringArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeStringArraySegment::Clear(this);

    return TSP::LargeStringArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSP::LargeStringArraySegment::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[6];
  a2[6] = v8;
  return result;
}

uint64_t TSP::LargeStringArraySegment::GetMetadata(TSP::LargeStringArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[70];
  v2 = off_2812FC248[71];
  return result;
}

TSP::LargeUUIDArraySegment *TSP::LargeUUIDArraySegment::LargeUUIDArraySegment(TSP::LargeUUIDArraySegment *this, Arena *a2)
{
  *this = &unk_2885C34C0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_LargeUUIDArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArraySegment_TSPMessages_2eproto);
  }

  *(this + 6) = 0;
  return this;
}

TSP::LargeUUIDArraySegment *TSP::LargeUUIDArraySegment::LargeUUIDArraySegment(TSP::LargeUUIDArraySegment *this, const TSP::LargeUUIDArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C34C0;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43970(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_276A3ADF0(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x1081C4010071FB2);
  sub_276A438D8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSP::LargeUUIDArraySegment::~LargeUUIDArraySegment(TSP::LargeUUIDArraySegment *this)
{
  if (this != &TSP::_LargeUUIDArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  sub_276A438D8(this + 3);
}

{
  TSP::LargeUUIDArraySegment::~LargeUUIDArraySegment(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::LargeUUIDArraySegment::default_instance(TSP::LargeUUIDArraySegment *this)
{
  if (atomic_load_explicit(scc_info_LargeUUIDArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArraySegment_TSPMessages_2eproto);
  }

  return &TSP::_LargeUUIDArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeUUIDArraySegment::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::LargeUUIDArraySegment::_InternalParse(TSP::LargeUUIDArraySegment *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v28 = a2;
  for (i = *(a3 + 23); ; i = *(a3 + 23))
  {
    if (sub_2769F6104(a3, &v28, i))
    {
      return v28;
    }

    v7 = (v28 + 1);
    v8 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v28 + 2);
LABEL_6:
      v28 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v26;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(this + 4) |= 1u;
    v23 = *(this + 6);
    if (!v23)
    {
      v24 = *(this + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(this + 6) = v23;
      v7 = v28;
    }

    v14 = sub_276BD4120(a3, v23, v7);
LABEL_38:
    v28 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  if (v8 == 18)
  {
    v15 = (v7 - 1);
    while (1)
    {
      v16 = (v15 + 1);
      v28 = (v15 + 1);
      v17 = *(this + 5);
      if (!v17)
      {
        break;
      }

      v22 = *(this + 8);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(this + 8) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(this + 9))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 3));
      v20 = *(this + 8);
      v21 = *(this + 5) + 8 * v20;
      *(this + 8) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v28;
LABEL_27:
      v15 = sub_276BD1DE4(a3, v19, v16);
      v28 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(this + 9);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
    v17 = *(this + 5);
    v18 = *v17;
    goto LABEL_24;
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

  if (!v11)
  {
    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v28;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
    goto LABEL_38;
  }

  *(a3 + 20) = v8 - 1;
  return v28;
}

const google::protobuf::UnknownFieldSet *TSP::LargeUUIDArraySegment::_InternalSerialize(TSP::LargeUUIDArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::LargeArraySegment::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3, a4);
    }
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeUUIDArraySegment::ByteSizeLong(TSP::LargeUUIDArraySegment *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::UUID::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 16))
  {
    v11 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6), a2, a3, a4);
    v5 = (&v11->ptr_ + v5 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void TSP::LargeUUIDArraySegment::MergeFrom(TSP::LargeUUIDArraySegment *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeUUIDArraySegment::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeUUIDArraySegment::MergeFrom(void *this, const TSP::LargeUUIDArraySegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43970(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 4) |= 1u;
    v11 = v3[6];
    if (!v11)
    {
      v12 = v3[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v12);
      v3[6] = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(v11, v13);
  }

  return this;
}

void TSP::LargeUUIDArraySegment::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeUUIDArraySegment::Clear(this);

    TSP::LargeUUIDArraySegment::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeUUIDArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeUUIDArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeUUIDArraySegment::Clear(this);

    return TSP::LargeUUIDArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeUUIDArraySegment::IsInitialized(TSP::LargeUUIDArraySegment *this)
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

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

__n128 TSP::LargeUUIDArraySegment::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[6];
  a2[6] = v8;
  return result;
}

uint64_t TSP::LargeUUIDArraySegment::GetMetadata(TSP::LargeUUIDArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[72];
  v2 = off_2812FC248[73];
  return result;
}

TSP::LargeLazyObjectArraySegment *TSP::LargeLazyObjectArraySegment::LargeLazyObjectArraySegment(TSP::LargeLazyObjectArraySegment *this, Arena *a2)
{
  *this = &unk_2885C3570;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArraySegment_TSPMessages_2eproto);
  }

  *(this + 6) = 0;
  return this;
}

TSP::LargeLazyObjectArraySegment *TSP::LargeLazyObjectArraySegment::LargeLazyObjectArraySegment(TSP::LargeLazyObjectArraySegment *this, const TSP::LargeLazyObjectArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3570;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43CB8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_276A3B958(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x1081C4010071FB2);
  sub_276A07EA8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSP::LargeLazyObjectArraySegment::~LargeLazyObjectArraySegment(TSP::LargeLazyObjectArraySegment *this)
{
  if (this != &TSP::_LargeLazyObjectArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  sub_276A07EA8(this + 3);
}

{
  TSP::LargeLazyObjectArraySegment::~LargeLazyObjectArraySegment(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::LargeLazyObjectArraySegment::default_instance(TSP::LargeLazyObjectArraySegment *this)
{
  if (atomic_load_explicit(scc_info_LargeLazyObjectArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArraySegment_TSPMessages_2eproto);
  }

  return &TSP::_LargeLazyObjectArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArraySegment::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::LargeLazyObjectArraySegment::_InternalParse(TSP::LargeLazyObjectArraySegment *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v28 = a2;
  for (i = *(a3 + 23); ; i = *(a3 + 23))
  {
    if (sub_2769F6104(a3, &v28, i))
    {
      return v28;
    }

    v7 = (v28 + 1);
    v8 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v28 + 2);
LABEL_6:
      v28 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v26;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(this + 4) |= 1u;
    v23 = *(this + 6);
    if (!v23)
    {
      v24 = *(this + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(this + 6) = v23;
      v7 = v28;
    }

    v14 = sub_276BD4120(a3, v23, v7);
LABEL_38:
    v28 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  if (v8 == 18)
  {
    v15 = (v7 - 1);
    while (1)
    {
      v16 = (v15 + 1);
      v28 = (v15 + 1);
      v17 = *(this + 5);
      if (!v17)
      {
        break;
      }

      v22 = *(this + 8);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(this + 8) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(this + 9))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 3));
      v20 = *(this + 8);
      v21 = *(this + 5) + 8 * v20;
      *(this + 8) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v28;
LABEL_27:
      v15 = sub_276BD2124(a3, v19, v16);
      v28 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(this + 9);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
    v17 = *(this + 5);
    v18 = *v17;
    goto LABEL_24;
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

  if (!v11)
  {
    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v28;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
    goto LABEL_38;
  }

  *(a3 + 20) = v8 - 1;
  return v28;
}

const google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArraySegment::_InternalSerialize(TSP::LargeLazyObjectArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::LargeArraySegment::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v14, v16, a3, a4);
    }
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeLazyObjectArraySegment::ByteSizeLong(TSP::LargeLazyObjectArraySegment *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 16))
  {
    v11 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6), a2, a3, a4);
    v5 = (&v11->ptr_ + v5 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void TSP::LargeLazyObjectArraySegment::MergeFrom(TSP::LargeLazyObjectArraySegment *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeLazyObjectArraySegment::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeLazyObjectArraySegment::MergeFrom(void *this, const TSP::LargeLazyObjectArraySegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43CB8(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 4) |= 1u;
    v11 = v3[6];
    if (!v11)
    {
      v12 = v3[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v12);
      v3[6] = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(v11, v13);
  }

  return this;
}

void TSP::LargeLazyObjectArraySegment::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeLazyObjectArraySegment::Clear(this);

    TSP::LargeLazyObjectArraySegment::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeLazyObjectArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeLazyObjectArraySegment::Clear(this);

    return TSP::LargeLazyObjectArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeLazyObjectArraySegment::IsInitialized(TSP::LargeLazyObjectArraySegment *this)
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

__n128 TSP::LargeLazyObjectArraySegment::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[6];
  a2[6] = v8;
  return result;
}

uint64_t TSP::LargeLazyObjectArraySegment::GetMetadata(TSP::LargeLazyObjectArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[74];
  v2 = off_2812FC248[75];
  return result;
}

TSP::LargeObjectArraySegment *TSP::LargeObjectArraySegment::LargeObjectArraySegment(TSP::LargeObjectArraySegment *this, Arena *a2)
{
  *this = &unk_2885C3620;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_LargeObjectArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArraySegment_TSPMessages_2eproto);
  }

  *(this + 6) = 0;
  return this;
}

TSP::LargeObjectArraySegment *TSP::LargeObjectArraySegment::LargeObjectArraySegment(TSP::LargeObjectArraySegment *this, const TSP::LargeObjectArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3620;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43CB8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_276A3C4B8(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x1081C4010071FB2);
  sub_276A07EA8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSP::LargeObjectArraySegment::~LargeObjectArraySegment(TSP::LargeObjectArraySegment *this)
{
  if (this != &TSP::_LargeObjectArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  sub_276A07EA8(this + 3);
}

{
  TSP::LargeObjectArraySegment::~LargeObjectArraySegment(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::LargeObjectArraySegment::default_instance(TSP::LargeObjectArraySegment *this)
{
  if (atomic_load_explicit(scc_info_LargeObjectArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArraySegment_TSPMessages_2eproto);
  }

  return &TSP::_LargeObjectArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeObjectArraySegment::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::LargeObjectArraySegment::_InternalParse(TSP::LargeObjectArraySegment *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v28 = a2;
  for (i = *(a3 + 23); ; i = *(a3 + 23))
  {
    if (sub_2769F6104(a3, &v28, i))
    {
      return v28;
    }

    v7 = (v28 + 1);
    v8 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v28 + 2);
LABEL_6:
      v28 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v26;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(this + 4) |= 1u;
    v23 = *(this + 6);
    if (!v23)
    {
      v24 = *(this + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(this + 6) = v23;
      v7 = v28;
    }

    v14 = sub_276BD4120(a3, v23, v7);
LABEL_38:
    v28 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  if (v8 == 18)
  {
    v15 = (v7 - 1);
    while (1)
    {
      v16 = (v15 + 1);
      v28 = (v15 + 1);
      v17 = *(this + 5);
      if (!v17)
      {
        break;
      }

      v22 = *(this + 8);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(this + 8) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(this + 9))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 3));
      v20 = *(this + 8);
      v21 = *(this + 5) + 8 * v20;
      *(this + 8) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v28;
LABEL_27:
      v15 = sub_276BD2124(a3, v19, v16);
      v28 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(this + 9);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
    v17 = *(this + 5);
    v18 = *v17;
    goto LABEL_24;
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

  if (!v11)
  {
    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v28;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
    goto LABEL_38;
  }

  *(a3 + 20) = v8 - 1;
  return v28;
}

const google::protobuf::UnknownFieldSet *TSP::LargeObjectArraySegment::_InternalSerialize(TSP::LargeObjectArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::LargeArraySegment::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v14, v16, a3, a4);
    }
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeObjectArraySegment::ByteSizeLong(TSP::LargeObjectArraySegment *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 16))
  {
    v11 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6), a2, a3, a4);
    v5 = (&v11->ptr_ + v5 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void TSP::LargeObjectArraySegment::MergeFrom(TSP::LargeObjectArraySegment *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeObjectArraySegment::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeObjectArraySegment::MergeFrom(void *this, const TSP::LargeObjectArraySegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43CB8(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 4) |= 1u;
    v11 = v3[6];
    if (!v11)
    {
      v12 = v3[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v12);
      v3[6] = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(v11, v13);
  }

  return this;
}

void TSP::LargeObjectArraySegment::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeObjectArraySegment::Clear(this);

    TSP::LargeObjectArraySegment::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeObjectArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeObjectArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeObjectArraySegment::Clear(this);

    return TSP::LargeObjectArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeObjectArraySegment::IsInitialized(TSP::LargeObjectArraySegment *this)
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

__n128 TSP::LargeObjectArraySegment::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[6];
  a2[6] = v8;
  return result;
}

uint64_t TSP::LargeObjectArraySegment::GetMetadata(TSP::LargeObjectArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[76];
  v2 = off_2812FC248[77];
  return result;
}

TSP::LargeArray *TSP::LargeArray::LargeArray(TSP::LargeArray *this, Arena *a2)
{
  *this = &unk_2885C36D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_LargeArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeArray_TSPMessages_2eproto);
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  return this;
}

void sub_276A3CEF4(_Unwind_Exception *a1)
{
  sub_276A07EA8(v2);
  sub_276A43438(v1);
  _Unwind_Resume(a1);
}

TSP::LargeArray *TSP::LargeArray::LargeArray(TSP::LargeArray *this, const TSP::LargeArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C36D0;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A434D0(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276A43CB8(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_2769F63D8(v4, ((v15 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 88);
  *(this + 13) = *(a2 + 13);
  *(this + 88) = v17;
  *(this + 72) = v16;
  return this;
}

void sub_276A3D084(_Unwind_Exception *a1)
{
  sub_276A07EA8(v2);
  sub_276A43438((v1 + 24));
  _Unwind_Resume(a1);
}

void TSP::LargeArray::~LargeArray(TSP::LargeArray *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A07EA8(this + 6);
  sub_276A43438(this + 3);
}

{
  TSP::LargeArray::~LargeArray(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::LargeArray::default_instance(TSP::LargeArray *this)
{
  if (atomic_load_explicit(scc_info_LargeArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeArray_TSPMessages_2eproto);
  }

  return &TSP::_LargeArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if ((*(v1 + 16) & 0x7F) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_2769F6424(v8);
  }

  return this;
}

google::protobuf::internal *TSP::LargeArray::_InternalParse(TSP::LargeArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v69 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v69, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v69 + 1);
      v9 = *v69;
      if ((*v69 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v69, (v10 - 128));
      v69 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_112;
      }

      v8 = TagFallback;
      v9 = v31;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 4)
      {
        if (v9 >> 3 <= 2)
        {
          if (v11 != 1)
          {
            if (v11 != 2 || v9 != 18)
            {
              goto LABEL_87;
            }

            v16 = (v8 - 1);
            while (2)
            {
              v17 = (v16 + 1);
              v69 = (v16 + 1);
              v18 = *(this + 8);
              if (!v18)
              {
                v19 = *(this + 15);
                goto LABEL_27;
              }

              v23 = *(this + 14);
              v19 = *v18;
              if (v23 >= *v18)
              {
                if (v19 == *(this + 15))
                {
LABEL_27:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v19 + 1);
                  v18 = *(this + 8);
                  v19 = *v18;
                }

                *v18 = v19 + 1;
                v20 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(this + 6));
                v21 = *(this + 14);
                v22 = *(this + 8) + 8 * v21;
                *(this + 14) = v21 + 1;
                *(v22 + 8) = v20;
                v17 = v69;
              }

              else
              {
                *(this + 14) = v23 + 1;
                v20 = *&v18[2 * v23 + 2];
              }

              v16 = sub_276BD2124(a3, v20, v17);
              v69 = v16;
              if (!v16)
              {
                goto LABEL_112;
              }

              if (*a3 <= v16 || *v16 != 18)
              {
                goto LABEL_94;
              }

              continue;
            }
          }

          if (v9 != 10)
          {
LABEL_87:
            if (v9)
            {
              v52 = (v9 & 7) == 4;
            }

            else
            {
              v52 = 1;
            }

            if (v52)
            {
              *(a3 + 20) = v9 - 1;
              goto LABEL_2;
            }

            v53 = *(this + 1);
            if (v53)
            {
              v54 = ((v53 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v54 = sub_2769F617C(this + 1);
              v8 = v69;
            }

            v69 = google::protobuf::internal::UnknownFieldParse(v9, v54, v8, a3, v5);
            if (!v69)
            {
LABEL_112:
              v69 = 0;
              goto LABEL_2;
            }

            goto LABEL_94;
          }

          v32 = (v8 - 1);
          while (2)
          {
            v33 = (v32 + 1);
            v69 = (v32 + 1);
            v34 = *(this + 5);
            if (!v34)
            {
              v35 = *(this + 9);
              goto LABEL_57;
            }

            v39 = *(this + 8);
            v35 = *v34;
            if (v39 >= *v34)
            {
              if (v35 == *(this + 9))
              {
LABEL_57:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v35 + 1);
                v34 = *(this + 5);
                v35 = *v34;
              }

              *v34 = v35 + 1;
              v36 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(this + 3));
              v37 = *(this + 8);
              v38 = *(this + 5) + 8 * v37;
              *(this + 8) = v37 + 1;
              *(v38 + 8) = v36;
              v33 = v69;
            }

            else
            {
              *(this + 8) = v39 + 1;
              v36 = *&v34[2 * v39 + 2];
            }

            v32 = sub_276BD3C40(a3, v36, v33);
            v69 = v32;
            if (!v32)
            {
              goto LABEL_112;
            }

            if (*a3 <= v32 || *v32 != 10)
            {
              goto LABEL_94;
            }

            continue;
          }
        }

        if (v11 == 3)
        {
          if (v9 != 24)
          {
            goto LABEL_87;
          }

          v6 |= 1u;
          v41 = (v8 + 1);
          v40 = *v8;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_71;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if ((v42 & 0x80000000) == 0)
          {
            v41 = (v8 + 2);
LABEL_71:
            v69 = v41;
            *(this + 9) = v40;
            goto LABEL_94;
          }

          v59 = google::protobuf::internal::VarintParseSlow64(v8, v40);
          v69 = v59;
          *(this + 9) = v60;
          if (!v59)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v11 != 4 || v9 != 32)
          {
            goto LABEL_87;
          }

          v6 |= 2u;
          v25 = (v8 + 1);
          v24 = *v8;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if ((v26 & 0x80000000) == 0)
          {
            v25 = (v8 + 2);
LABEL_43:
            v69 = v25;
            *(this + 10) = v24;
            goto LABEL_94;
          }

          v55 = google::protobuf::internal::VarintParseSlow64(v8, v24);
          v69 = v55;
          *(this + 10) = v56;
          if (!v55)
          {
            goto LABEL_112;
          }
        }
      }

      else if (v9 >> 3 <= 6)
      {
        if (v11 == 5)
        {
          if (v9 != 40)
          {
            goto LABEL_87;
          }

          v6 |= 8u;
          v47 = (v8 + 1);
          v46 = *v8;
          if ((v46 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v48 = *v47;
          v46 = (v48 << 7) + v46 - 128;
          if ((v48 & 0x80000000) == 0)
          {
            v47 = (v8 + 2);
LABEL_81:
            v69 = v47;
            *(this + 92) = v46 != 0;
            goto LABEL_94;
          }

          v63 = google::protobuf::internal::VarintParseSlow64(v8, v46);
          v69 = v63;
          *(this + 92) = v64 != 0;
          if (!v63)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v11 != 6 || v9 != 48)
          {
            goto LABEL_87;
          }

          v6 |= 4u;
          v27 = (v8 + 1);
          LODWORD(v28) = *v8;
          if ((*v8 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          v29 = *v27;
          v28 = (v28 + (v29 << 7) - 128);
          if ((v29 & 0x80000000) == 0)
          {
            v27 = (v8 + 2);
LABEL_50:
            v69 = v27;
            *(this + 22) = v28;
            goto LABEL_94;
          }

          v57 = google::protobuf::internal::VarintParseSlow32(v8, v28);
          v69 = v57;
          *(this + 22) = v58;
          if (!v57)
          {
            goto LABEL_112;
          }
        }
      }

      else if (v11 == 7)
      {
        if (v9 != 56)
        {
          goto LABEL_87;
        }

        v6 |= 0x10u;
        v44 = (v8 + 1);
        v43 = *v8;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_76;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if ((v45 & 0x80000000) == 0)
        {
          v44 = (v8 + 2);
LABEL_76:
          v69 = v44;
          *(this + 93) = v43 != 0;
          goto LABEL_94;
        }

        v61 = google::protobuf::internal::VarintParseSlow64(v8, v43);
        v69 = v61;
        *(this + 93) = v62 != 0;
        if (!v61)
        {
          goto LABEL_112;
        }
      }

      else if (v11 == 8)
      {
        if (v9 != 64)
        {
          goto LABEL_87;
        }

        v6 |= 0x20u;
        v50 = (v8 + 1);
        v49 = *v8;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

        v51 = *v50;
        v49 = (v51 << 7) + v49 - 128;
        if ((v51 & 0x80000000) == 0)
        {
          v50 = (v8 + 2);
LABEL_86:
          v69 = v50;
          *(this + 12) = v49;
          goto LABEL_94;
        }

        v67 = google::protobuf::internal::VarintParseSlow64(v8, v49);
        v69 = v67;
        *(this + 12) = v68;
        if (!v67)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v11 != 9 || v9 != 72)
        {
          goto LABEL_87;
        }

        v6 |= 0x40u;
        v13 = (v8 + 1);
        v12 = *v8;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_16:
          v69 = v13;
          *(this + 13) = v12;
          goto LABEL_94;
        }

        v65 = google::protobuf::internal::VarintParseSlow64(v8, v12);
        v69 = v65;
        *(this + 13) = v66;
        if (!v65)
        {
          goto LABEL_112;
        }
      }

LABEL_94:
      if (sub_2769F6104(a3, &v69, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v69 + 2);
LABEL_6:
    v69 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v69;
}

const google::protobuf::UnknownFieldSet *TSP::LargeArray::_InternalSerialize(TSP::LargeArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::Range::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 14);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 8) + 8 * j + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v16, v18, a3, a4);
    }
  }

  v22 = *(this + 4);
  if ((v22 & 1) == 0)
  {
    if ((v22 & 2) == 0)
    {
      goto LABEL_27;
    }

LABEL_52:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 10);
    *a2 = 32;
    if (v31 > 0x7F)
    {
      a2[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++a2;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(a2 - 1) = v33;
        if ((v22 & 8) != 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        a2[2] = v32;
        a2 += 3;
        if ((v22 & 8) != 0)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      a2[1] = v31;
      a2 += 2;
      if ((v22 & 8) != 0)
      {
        goto LABEL_63;
      }
    }

LABEL_28:
    if ((v22 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_66:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v36 = *(this + 22);
    *a2 = 48;
    if (v36 > 0x7F)
    {
      a2[1] = v36 | 0x80;
      v37 = v36 >> 7;
      if (v36 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v37 | 0x80;
          v38 = v37 >> 7;
          ++a2;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
        *(a2 - 1) = v38;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        a2[2] = v37;
        a2 += 3;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
      a2[1] = v36;
      a2 += 2;
      if ((v22 & 0x10) != 0)
      {
        goto LABEL_77;
      }
    }

LABEL_30:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 9);
  *a2 = 24;
  if (v24 > 0x7F)
  {
    a2[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v26 | 0x80;
        v29 = v26 >> 7;
        ++a2;
        v30 = v26 >> 14;
        v26 >>= 7;
      }

      while (v30);
      *(a2 - 1) = v29;
      if ((v22 & 2) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      a2[2] = v26;
      a2 += 3;
      if ((v22 & 2) != 0)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    a2[1] = v24;
    a2 += 2;
    if ((v22 & 2) != 0)
    {
      goto LABEL_52;
    }
  }

LABEL_27:
  if ((v22 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_63:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 92);
  *a2 = 40;
  a2[1] = v35;
  a2 += 2;
  if ((v22 & 4) != 0)
  {
    goto LABEL_66;
  }

LABEL_29:
  if ((v22 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(this + 93);
  *a2 = 56;
  a2[1] = v40;
  a2 += 2;
  if ((v22 & 0x20) == 0)
  {
LABEL_31:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_32;
  }

LABEL_80:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(this + 12);
  *a2 = 64;
  if (v41 > 0x7F)
  {
    a2[1] = v41 | 0x80;
    v42 = v41 >> 7;
    if (v41 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v42 | 0x80;
        v43 = v42 >> 7;
        ++a2;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
      *(a2 - 1) = v43;
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_91;
      }
    }

    else
    {
      a2[2] = v42;
      a2 += 3;
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_91;
      }
    }
  }

  else
  {
    a2[1] = v41;
    a2 += 2;
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_91;
    }
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 13);
  *a2 = 72;
  if (v23 > 0x7F)
  {
    a2[1] = v23 | 0x80;
    v25 = v23 >> 7;
    if (v23 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v25 | 0x80;
        v27 = v25 >> 7;
        ++a2;
        v28 = v25 >> 14;
        v25 >>= 7;
      }

      while (v28);
      *(a2 - 1) = v27;
    }

    else
    {
      a2[2] = v25;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v23;
    a2 += 2;
  }

LABEL_91:
  v45 = *(this + 1);
  if ((v45 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v45 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeArray::ByteSizeLong(TSP::LargeArray *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = TSP::Range::ByteSizeLong(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 14);
  v12 = (v5 + v11);
  v13 = *(this + 8);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::Reference::ByteSizeLong(v16, a2, a3, a4);
      v12 = (v12 + v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6));
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 4);
  if ((v18 & 0x7F) != 0)
  {
    if (v18)
    {
      v12 = (v12 + ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1);
      if ((v18 & 2) == 0)
      {
LABEL_18:
        if ((v18 & 4) == 0)
        {
LABEL_20:
          v12 = (v12 + ((v18 >> 3) & 2) + ((v18 >> 2) & 2));
          if ((v18 & 0x20) != 0)
          {
            v12 = (v12 + ((9 * (__clz(*(this + 12) | 1) ^ 0x3F) + 73) >> 6) + 1);
          }

          if ((v18 & 0x40) != 0)
          {
            v12 = (v12 + ((9 * (__clz(*(this + 13) | 1) ^ 0x3F) + 73) >> 6) + 1);
          }

          goto LABEL_24;
        }

LABEL_19:
        v12 = (v12 + ((9 * (__clz(*(this + 22) | 1) ^ 0x1F) + 73) >> 6) + 1);
        goto LABEL_20;
      }
    }

    else if ((v18 & 2) == 0)
    {
      goto LABEL_18;
    }

    v12 = (v12 + ((9 * (__clz(*(this + 10) | 1) ^ 0x3F) + 73) >> 6) + 1);
    if ((v18 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_24:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v12, this + 5, a4);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

void TSP::LargeArray::MergeFrom(TSP::LargeArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeArray::MergeFrom(void *this, const TSP::LargeArray *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A434D0(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 6), *(a2 + 14));
    this = sub_276A43CB8(v3 + 6, v12, (v11 + 8), v10, *v3[8] - *(v3 + 14));
    v13 = *(v3 + 14) + v10;
    *(v3 + 14) = v13;
    v14 = v3[8];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 0x7F) != 0)
  {
    if (v15)
    {
      v3[9] = *(a2 + 9);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_22;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    v3[10] = *(a2 + 10);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 22) = *(a2 + 22);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 92) = *(a2 + 92);
    if ((v15 & 0x10) == 0)
    {
LABEL_15:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 93) = *(a2 + 93);
    if ((v15 & 0x20) == 0)
    {
LABEL_16:
      if ((v15 & 0x40) == 0)
      {
LABEL_18:
        *(v3 + 4) |= v15;
        return this;
      }

LABEL_17:
      v3[13] = *(a2 + 13);
      goto LABEL_18;
    }

LABEL_25:
    v3[12] = *(a2 + 12);
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return this;
}

void TSP::LargeArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeArray::Clear(this);

    TSP::LargeArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeArray::Clear(this);

    return TSP::LargeArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeArray::IsInitialized(TSP::LargeArray *this)
{
  v1 = *(this + 8);
  while (v1 >= 1)
  {
    v2 = *(*(this + 5) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v4 = *(this + 14);
  v5 = *(this + 8);
  do
  {
    result = v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v6 = *(v5 + 8 * v4--);
  }

  while ((*(v6 + 16) & 1) != 0);
  return result;
}

__n128 TSP::LargeArray::InternalSwap(TSP::LargeArray *this, TSP::LargeArray *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v14 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  return result;
}

uint64_t TSP::LargeArray::GetMetadata(TSP::LargeArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[78];
  v2 = off_2812FC248[79];
  return result;
}

TSP::LargeNumberArray *TSP::LargeNumberArray::LargeNumberArray(TSP::LargeNumberArray *this, Arena *a2)
{
  *this = &unk_2885C3780;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeNumberArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C3780;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeNumberArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

TSP::LargeNumberArray *TSP::LargeNumberArray::LargeNumberArray(TSP::LargeNumberArray *this, const TSP::LargeNumberArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3780;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(v4, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSP::LargeNumberArray::~LargeNumberArray(TSP::LargeNumberArray *this)
{
  if (this != TSP::_LargeNumberArray_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::LargeArray::~LargeArray(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::LargeNumberArray::~LargeNumberArray(this);

  JUMPOUT(0x277C9F670);
}