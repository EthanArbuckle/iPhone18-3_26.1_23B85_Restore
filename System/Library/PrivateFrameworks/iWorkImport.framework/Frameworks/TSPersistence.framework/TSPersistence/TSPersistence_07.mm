uint64_t *TSP::LargeNumberArray::default_instance(TSP::LargeNumberArray *this)
{
  if (atomic_load_explicit(scc_info_LargeNumberArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArray_TSPMessages_2eproto);
  }

  return &TSP::_LargeNumberArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeNumberArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3));
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

google::protobuf::internal *TSP::LargeNumberArray::_InternalParse(TSP::LargeNumberArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
      v14 = *(this + 3);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(this + 3) = v14;
        v7 = v19;
      }

      v13 = sub_276BD42C0(a3, v14, v7);
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

const google::protobuf::UnknownFieldSet *TSP::LargeNumberArray::_InternalSerialize(TSP::LargeNumberArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSP::LargeArray::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeNumberArray::ByteSizeLong(TSP::LargeArray **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (this[2])
  {
    v6 = TSP::LargeArray::ByteSizeLong(this[3], a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
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

void TSP::LargeNumberArray::MergeFrom(TSP::LargeNumberArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeNumberArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeNumberArray::MergeFrom(void *this, const TSP::LargeNumberArray *a2)
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
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v7);
      v3[3] = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v6, v8);
  }

  return this;
}

void TSP::LargeNumberArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeNumberArray::Clear(this);

    TSP::LargeNumberArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeNumberArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeNumberArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeNumberArray::Clear(this);

    return TSP::LargeNumberArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeNumberArray::IsInitialized(TSP::LargeNumberArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSP::LargeNumberArray::InternalSwap(TSP::LargeNumberArray *this, google::protobuf::Arena **a2)
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

uint64_t TSP::LargeNumberArray::GetMetadata(TSP::LargeNumberArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[80];
  v2 = off_2812FC248[81];
  return result;
}

TSP::LargeStringArray *TSP::LargeStringArray::LargeStringArray(TSP::LargeStringArray *this, Arena *a2)
{
  *this = &unk_2885C3830;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeStringArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C3830;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeStringArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

TSP::LargeStringArray *TSP::LargeStringArray::LargeStringArray(TSP::LargeStringArray *this, const TSP::LargeStringArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3830;
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

void TSP::LargeStringArray::~LargeStringArray(TSP::LargeStringArray *this)
{
  if (this != TSP::_LargeStringArray_default_instance_)
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
  TSP::LargeStringArray::~LargeStringArray(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::LargeStringArray::default_instance(TSP::LargeStringArray *this)
{
  if (atomic_load_explicit(scc_info_LargeStringArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArray_TSPMessages_2eproto);
  }

  return &TSP::_LargeStringArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3));
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

google::protobuf::internal *TSP::LargeStringArray::_InternalParse(TSP::LargeStringArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
      v14 = *(this + 3);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(this + 3) = v14;
        v7 = v19;
      }

      v13 = sub_276BD42C0(a3, v14, v7);
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

const google::protobuf::UnknownFieldSet *TSP::LargeStringArray::_InternalSerialize(TSP::LargeStringArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSP::LargeArray::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeStringArray::ByteSizeLong(TSP::LargeArray **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (this[2])
  {
    v6 = TSP::LargeArray::ByteSizeLong(this[3], a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
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

void TSP::LargeStringArray::MergeFrom(TSP::LargeStringArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeStringArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeStringArray::MergeFrom(void *this, const TSP::LargeStringArray *a2)
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
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v7);
      v3[3] = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v6, v8);
  }

  return this;
}

void TSP::LargeStringArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeStringArray::Clear(this);

    TSP::LargeStringArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeStringArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeStringArray::Clear(this);

    return TSP::LargeStringArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeStringArray::IsInitialized(TSP::LargeStringArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSP::LargeStringArray::InternalSwap(TSP::LargeStringArray *this, google::protobuf::Arena **a2)
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

uint64_t TSP::LargeStringArray::GetMetadata(TSP::LargeStringArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[82];
  v2 = off_2812FC248[83];
  return result;
}

TSP::LargeLazyObjectArray *TSP::LargeLazyObjectArray::LargeLazyObjectArray(TSP::LargeLazyObjectArray *this, Arena *a2)
{
  *this = &unk_2885C38E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C38E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

TSP::LargeLazyObjectArray *TSP::LargeLazyObjectArray::LargeLazyObjectArray(TSP::LargeLazyObjectArray *this, const TSP::LargeLazyObjectArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C38E0;
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

void TSP::LargeLazyObjectArray::~LargeLazyObjectArray(TSP::LargeLazyObjectArray *this)
{
  if (this != TSP::_LargeLazyObjectArray_default_instance_)
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
  TSP::LargeLazyObjectArray::~LargeLazyObjectArray(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::LargeLazyObjectArray::default_instance(TSP::LargeLazyObjectArray *this)
{
  if (atomic_load_explicit(scc_info_LargeLazyObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArray_TSPMessages_2eproto);
  }

  return &TSP::_LargeLazyObjectArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3));
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

google::protobuf::internal *TSP::LargeLazyObjectArray::_InternalParse(TSP::LargeLazyObjectArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
      v14 = *(this + 3);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(this + 3) = v14;
        v7 = v19;
      }

      v13 = sub_276BD42C0(a3, v14, v7);
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

const google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArray::_InternalSerialize(TSP::LargeLazyObjectArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSP::LargeArray::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeLazyObjectArray::ByteSizeLong(TSP::LargeArray **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (this[2])
  {
    v6 = TSP::LargeArray::ByteSizeLong(this[3], a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
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

void TSP::LargeLazyObjectArray::MergeFrom(TSP::LargeLazyObjectArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeLazyObjectArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeLazyObjectArray::MergeFrom(void *this, const TSP::LargeLazyObjectArray *a2)
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
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v7);
      v3[3] = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v6, v8);
  }

  return this;
}

void TSP::LargeLazyObjectArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeLazyObjectArray::Clear(this);

    TSP::LargeLazyObjectArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeLazyObjectArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeLazyObjectArray::Clear(this);

    return TSP::LargeLazyObjectArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeLazyObjectArray::IsInitialized(TSP::LargeLazyObjectArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSP::LargeLazyObjectArray::InternalSwap(TSP::LargeLazyObjectArray *this, google::protobuf::Arena **a2)
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

uint64_t TSP::LargeLazyObjectArray::GetMetadata(TSP::LargeLazyObjectArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[84];
  v2 = off_2812FC248[85];
  return result;
}

TSP::LargeObjectArray *TSP::LargeObjectArray::LargeObjectArray(TSP::LargeObjectArray *this, Arena *a2)
{
  *this = &unk_2885C3990;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C3990;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

TSP::LargeObjectArray *TSP::LargeObjectArray::LargeObjectArray(TSP::LargeObjectArray *this, const TSP::LargeObjectArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3990;
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

void TSP::LargeObjectArray::~LargeObjectArray(TSP::LargeObjectArray *this)
{
  if (this != TSP::_LargeObjectArray_default_instance_)
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
  TSP::LargeObjectArray::~LargeObjectArray(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::LargeObjectArray::default_instance(TSP::LargeObjectArray *this)
{
  if (atomic_load_explicit(scc_info_LargeObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArray_TSPMessages_2eproto);
  }

  return &TSP::_LargeObjectArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeObjectArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3));
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

google::protobuf::internal *TSP::LargeObjectArray::_InternalParse(TSP::LargeObjectArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
      v14 = *(this + 3);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(this + 3) = v14;
        v7 = v19;
      }

      v13 = sub_276BD42C0(a3, v14, v7);
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

const google::protobuf::UnknownFieldSet *TSP::LargeObjectArray::_InternalSerialize(TSP::LargeObjectArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSP::LargeArray::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeObjectArray::ByteSizeLong(TSP::LargeArray **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (this[2])
  {
    v6 = TSP::LargeArray::ByteSizeLong(this[3], a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
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

void TSP::LargeObjectArray::MergeFrom(TSP::LargeObjectArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeObjectArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeObjectArray::MergeFrom(void *this, const TSP::LargeObjectArray *a2)
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
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v7);
      v3[3] = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v6, v8);
  }

  return this;
}

void TSP::LargeObjectArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeObjectArray::Clear(this);

    TSP::LargeObjectArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeObjectArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeObjectArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeObjectArray::Clear(this);

    return TSP::LargeObjectArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeObjectArray::IsInitialized(TSP::LargeObjectArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSP::LargeObjectArray::InternalSwap(TSP::LargeObjectArray *this, google::protobuf::Arena **a2)
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

uint64_t TSP::LargeObjectArray::GetMetadata(TSP::LargeObjectArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[86];
  v2 = off_2812FC248[87];
  return result;
}

TSP::LargeUUIDArray *TSP::LargeUUIDArray::LargeUUIDArray(TSP::LargeUUIDArray *this, Arena *a2)
{
  *this = &unk_2885C3A40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C3A40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LargeUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArray_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  return this;
}

TSP::LargeUUIDArray *TSP::LargeUUIDArray::LargeUUIDArray(TSP::LargeUUIDArray *this, const TSP::LargeUUIDArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3A40;
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

void TSP::LargeUUIDArray::~LargeUUIDArray(TSP::LargeUUIDArray *this)
{
  if (this != TSP::_LargeUUIDArray_default_instance_)
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
  TSP::LargeUUIDArray::~LargeUUIDArray(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::LargeUUIDArray::default_instance(TSP::LargeUUIDArray *this)
{
  if (atomic_load_explicit(scc_info_LargeUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArray_TSPMessages_2eproto);
  }

  return &TSP::_LargeUUIDArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::LargeUUIDArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3));
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

google::protobuf::internal *TSP::LargeUUIDArray::_InternalParse(TSP::LargeUUIDArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
      v14 = *(this + 3);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(this + 3) = v14;
        v7 = v19;
      }

      v13 = sub_276BD42C0(a3, v14, v7);
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

const google::protobuf::UnknownFieldSet *TSP::LargeUUIDArray::_InternalSerialize(TSP::LargeUUIDArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSP::LargeArray::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::LargeUUIDArray::ByteSizeLong(TSP::LargeArray **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (this[2])
  {
    v6 = TSP::LargeArray::ByteSizeLong(this[3], a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
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

void TSP::LargeUUIDArray::MergeFrom(TSP::LargeUUIDArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeUUIDArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeUUIDArray::MergeFrom(void *this, const TSP::LargeUUIDArray *a2)
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
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v7);
      v3[3] = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v6, v8);
  }

  return this;
}

void TSP::LargeUUIDArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::LargeUUIDArray::Clear(this);

    TSP::LargeUUIDArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::LargeUUIDArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::LargeUUIDArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::LargeUUIDArray::Clear(this);

    return TSP::LargeUUIDArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::LargeUUIDArray::IsInitialized(TSP::LargeUUIDArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSP::LargeUUIDArray::InternalSwap(TSP::LargeUUIDArray *this, google::protobuf::Arena **a2)
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

uint64_t TSP::LargeUUIDArray::GetMetadata(TSP::LargeUUIDArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[88];
  v2 = off_2812FC248[89];
  return result;
}

uint64_t TSP::FieldOptions::FieldOptions(uint64_t this, Arena *a2)
{
  *this = &unk_2885C3AF0;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2885C3AF0;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

TSP::FieldOptions *TSP::FieldOptions::FieldOptions(TSP::FieldOptions *this, const TSP::FieldOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C3AF0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSP::FieldOptions::~FieldOptions(TSP::FieldOptions *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::FieldOptions::default_instance(TSP::FieldOptions *this)
{
  if (atomic_load_explicit(scc_info_FieldOptions_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_TSPMessages_2eproto);
  }

  return TSP::_FieldOptions_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::FieldOptions::Clear(TSP::FieldOptions *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::FieldOptions::_InternalParse(TSP::FieldOptions *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v19 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v19, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v19 + 1);
    v8 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v19 + 2);
LABEL_6:
      v19 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v17;
LABEL_7:
    if (v8 == 8)
    {
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v19 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        if (!v19)
        {
          return 0;
        }
      }

      else
      {
        v14 = (v7 + 2);
LABEL_19:
        v19 = v14;
      }

      if (v13 > 7)
      {
        sub_276BD43CC(this + 1);
      }

      else
      {
        *(this + 4) |= 1u;
        *(this + 6) = v13;
      }

      continue;
    }

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

    v19 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7, a3, v6);
    if (!v19)
    {
      return 0;
    }
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *TSP::FieldOptions::_InternalSerialize(TSP::FieldOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
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

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::FieldOptions::ByteSizeLong(TSP::FieldOptions *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(this + 16))
  {
    v5 = *(this + 6);
    if (v5 < 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

void TSP::FieldOptions::MergeFrom(TSP::FieldOptions *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::FieldOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::FieldOptions::MergeFrom(void *this, const TSP::FieldOptions *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 6);
    *(v3 + 4) |= 1u;
    *(v3 + 6) = v5;
  }

  return this;
}

void TSP::FieldOptions::CopyFrom(char **this, char **lpsrc)
{
  if (lpsrc != this)
  {
    v6 = *(this + 8);
    v5 = (this + 1);
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    TSP::FieldOptions::MergeFrom(this, lpsrc);
  }
}

const TSP::FieldOptions *TSP::FieldOptions::CopyFrom(const TSP::FieldOptions *this, const TSP::FieldOptions *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    return TSP::FieldOptions::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::FieldOptions::InternalSwap(TSP::FieldOptions *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

uint64_t TSP::FieldOptions::GetMetadata(TSP::FieldOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[90];
  v2 = off_2812FC248[91];
  return result;
}

void *sub_276A41320(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A43F30(this, 1);
  *result = &unk_2885C1C00;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  *(result + 29) = 0;
  return result;
}

void *sub_276A41394(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A43FD8(this, 1);
  *result = &unk_2885C1CB0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_276A41404(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A44080(a1);
}

TSP::SparseReferenceArray *sub_276A414D4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44184(a1, 1);
  TSP::SparseReferenceArray::SparseReferenceArray(v2, a1);
  return v2;
}

void *sub_276A41560(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A44210(this, 1);
  *result = &unk_2885C1EC0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_276A415D0(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A442B8(this, 1);
  *result = &unk_2885C1F70;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

void *sub_276A41644(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A44360(a1);
}

void *sub_276A41710(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A44460(this, 1);
  *result = &unk_2885C20D0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_276A41780(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A44508(this, 1);
  *result = &unk_2885C2180;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_276A417F0(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A445B0(this, 1);
  *result = &unk_2885C2230;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSP::IndexSet *sub_276A41860(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44658(a1, 1);
  TSP::IndexSet::IndexSet(v2, a1);
  return v2;
}

double sub_276A418EC(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  v2 = sub_276A446E4(this, 1);
  *v2 = &unk_2885C2390;
  v2[1] = this;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  v2[6] = 0;
  *&result = 0x100000001;
  v2[7] = 0x100000001;
  *(v2 + 16) = 1065353216;
  return result;
}

TSP::Path_Element *sub_276A41974(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A4478C(a1, 1);
  TSP::Path_Element::Path_Element(v2, a1);
  return v2;
}

TSP::Path *sub_276A41A00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44818(a1, 1);
  TSP::Path::Path(v2, a1);
  return v2;
}

void *sub_276A41A8C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A448A4(a1);
}

TSP::ReferenceDictionary *sub_276A41B58(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A449A4(a1, 1);
  TSP::ReferenceDictionary::ReferenceDictionary(v2, a1);
  return v2;
}

void *sub_276A41BE4(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A44A30(this, 1);
  *result = &unk_2885C2700;
  result[1] = this;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSP::CFUUIDArchive *sub_276A41C58(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44AD8(a1, 1);
  TSP::CFUUIDArchive::CFUUIDArchive(v2, a1);
  return v2;
}

TSP::UUIDSetArchive *sub_276A41CE4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44B64(a1, 1);
  TSP::UUIDSetArchive::UUIDSetArchive(v2, a1);
  return v2;
}

TSP::UUIDMapArchive *sub_276A41D70(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44BF0(a1, 1);
  TSP::UUIDMapArchive::UUIDMapArchive(v2, a1);
  return v2;
}

TSP::UUIDMultiMapArchive *sub_276A41DFC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44C7C(a1, 1);
  TSP::UUIDMultiMapArchive::UUIDMultiMapArchive(v2, a1);
  return v2;
}

void *sub_276A41E88(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A44D08(a1);
}

TSP::UUIDRectArchive *sub_276A41F54(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44E08(a1, 1);
  TSP::UUIDRectArchive::UUIDRectArchive(v2, a1);
  return v2;
}

void *sub_276A41FE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A44E94(a1);
}

TSP::SparseUUIDArray *sub_276A420B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A44F98(a1, 1);
  TSP::SparseUUIDArray::SparseUUIDArray(v2, a1);
  return v2;
}

TSP::UUIDPath *sub_276A4213C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A45024(a1, 1);
  TSP::UUIDPath::UUIDPath(v2, a1);
  return v2;
}

void *sub_276A421C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A450B0(a1);
}

TSP::SparseUUIDPathArray *sub_276A42298(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A451B4(a1, 1);
  TSP::SparseUUIDPathArray::SparseUUIDPathArray(v2, a1);
  return v2;
}

TSP::PasteboardObject *sub_276A42324(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A45240(a1, 1);
  TSP::PasteboardObject::PasteboardObject(v2, a1);
  return v2;
}

TSP::ObjectCollection *sub_276A423B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A452CC(a1, 1);
  TSP::ObjectCollection::ObjectCollection(v2, a1);
  return v2;
}

TSP::ObjectContainer *sub_276A4243C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A45358(a1, 1);
  TSP::ObjectContainer::ObjectContainer(v2, a1);
  return v2;
}

void *sub_276A424C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A453E4(a1, 1);
  *v2 = &unk_2885C3150;
  v2[1] = a1;
  google::protobuf::internal::ExtensionSet::ExtensionSet((v2 + 2), a1);
  *(v2 + 10) = 0;
  return v2;
}

TSP::LargeArraySegment *sub_276A42590(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A45470(a1, 1);
  TSP::LargeArraySegment::LargeArraySegment(v2, a1);
  return v2;
}

TSP::LargeNumberArraySegment *sub_276A4261C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A454FC(a1, 1);
  TSP::LargeNumberArraySegment::LargeNumberArraySegment(v2, a1);
  return v2;
}

void *sub_276A426A8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A45588(a1);
}

TSP::LargeStringArraySegment *sub_276A4277C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A45690(a1, 1);
  TSP::LargeStringArraySegment::LargeStringArraySegment(v2, a1);
  return v2;
}

TSP::LargeUUIDArraySegment *sub_276A42808(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A4571C(a1, 1);
  TSP::LargeUUIDArraySegment::LargeUUIDArraySegment(v2, a1);
  return v2;
}

TSP::LargeLazyObjectArraySegment *sub_276A42894(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A457A8(a1, 1);
  TSP::LargeLazyObjectArraySegment::LargeLazyObjectArraySegment(v2, a1);
  return v2;
}

TSP::LargeObjectArraySegment *sub_276A42920(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A45834(a1, 1);
  TSP::LargeObjectArraySegment::LargeObjectArraySegment(v2, a1);
  return v2;
}

TSP::LargeArray *sub_276A429AC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276A458C0(a1, 1);
  TSP::LargeArray::LargeArray(v2, a1);
  return v2;
}

void *sub_276A42A38(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A4594C(a1);
}

void *sub_276A42B04(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A45A4C(a1);
}

void *sub_276A42BD0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A45B4C(a1);
}

void *sub_276A42C9C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A45C4C(a1);
}

void *sub_276A42D68(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276A45D4C(a1);
}

void *sub_276A42E34(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276A45E4C(this, 1);
  *result = &unk_2885C3AF0;
  result[1] = this;
  result[2] = 0;
  *(result + 6) = 0;
  return result;
}

void sub_276A432F4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::SparseReferenceArray_Entry::~SparseReferenceArray_Entry(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A43378(uint64_t *result, TSP::SparseReferenceArray_Entry **a2, TSP::SparseReferenceArray_Entry **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43428(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseReferenceArray_Entry>(v18);
      result = sub_276A43428(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A43438(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          sub_2769DEC8C((v5 + 8));
          MEMORY[0x277C9F670](v5, 0x1081C404FE48876);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A434D0(uint64_t *result, TSP::Range **a2, TSP::Range **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43580(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(v18);
      result = sub_276A43580(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_276A43590(uint64_t *result, TSP::Point **a2, TSP::Point **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43640(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(v18);
      result = sub_276A43640(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A43650(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::Path_Element::~Path_Element(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A436D4(uint64_t *result, TSP::Path_Element **a2, TSP::Path_Element **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43784(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Path_Element>(v18);
      result = sub_276A43784(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A43794(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::ReferenceDictionary_Entry::~ReferenceDictionary_Entry(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A43818(uint64_t *result, TSP::ReferenceDictionary_Entry **a2, TSP::ReferenceDictionary_Entry **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A438C8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ReferenceDictionary_Entry>(v18);
      result = sub_276A438C8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A438D8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          sub_2769DEC8C((v5 + 8));
          MEMORY[0x277C9F670](v5, 0x1081C40825B58B5);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A43970(uint64_t *result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43A20(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v18);
      result = sub_276A43A20(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A43A30(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::SparseUUIDArray_Entry::~SparseUUIDArray_Entry(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A43AB4(uint64_t *result, TSP::SparseUUIDArray_Entry **a2, TSP::SparseUUIDArray_Entry **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43B64(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDArray_Entry>(v18);
      result = sub_276A43B64(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A43B74(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::SparseUUIDPathArray_Entry::~SparseUUIDPathArray_Entry(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A43BF8(uint64_t *result, TSP::SparseUUIDPathArray_Entry **a2, TSP::SparseUUIDPathArray_Entry **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43CA8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDPathArray_Entry>(v18);
      result = sub_276A43CA8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_276A43CB8(uint64_t *result, void **a2, const TSP::Reference **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A08074(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v18);
      result = sub_276A08074(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A43D68(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::LargeStringArraySegment_OptionalElement::~LargeStringArraySegment_OptionalElement(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276A43DEC(uint64_t *result, TSP::LargeStringArraySegment_OptionalElement **a2, TSP::LargeStringArraySegment_OptionalElement **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276A43E9C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeStringArraySegment_OptionalElement>(v18);
      result = sub_276A43E9C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276A43EAC(google::protobuf::FieldOptions *a1, std::string::value_type a2, std::string::value_type a3)
{
  v7 = google::protobuf::FieldOptions::default_instance(a1);
  if (atomic_load_explicit(scc_info_FieldOptions_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_TSPMessages_2eproto);
  }

  google::protobuf::internal::ExtensionSet::RegisterMessageExtension(v7, a1, a2, 0, a3, TSP::_FieldOptions_default_instance_, v6);
}

void *sub_276A43F30(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4408(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_276A43FB8);
}

void *sub_276A43FD8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4438(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276A44060);
}

void *sub_276A44080(google::protobuf::Arena *a1)
{
  v2 = sub_276A440F8(a1, 1);
  *v2 = &unk_2885C1D60;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto);
  }

  *(v2 + 8) = 0;
  v2[3] = 0;
  return v2;
}

void *sub_276A440F8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4468(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::SparseReferenceArray_Entry::~SparseReferenceArray_Entry);
}

void *sub_276A44184(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4498(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::SparseReferenceArray::~SparseReferenceArray);
}

void *sub_276A44210(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD44C8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276A44298);
}

void *sub_276A442B8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD44F8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_276A44340);
}

void *sub_276A44360(google::protobuf::Arena *a1)
{
  v2 = sub_276A443D4(a1, 1);
  *v2 = &unk_2885C2020;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_Rect_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Rect_TSPMessages_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_276A443D4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4528(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::Rect::~Rect);
}

void *sub_276A44460(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4558(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276A444E8);
}

void *sub_276A44508(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4588(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276A44590);
}

void *sub_276A445B0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD45B8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276A44638);
}

void *sub_276A44658(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD45E8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::IndexSet::~IndexSet);
}

void *sub_276A446E4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4618(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, sub_276A4476C);
}

void *sub_276A4478C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4648(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::Path_Element::~Path_Element);
}

void *sub_276A44818(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4678(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::Path::~Path);
}

void *sub_276A448A4(google::protobuf::Arena *a1)
{
  v2 = sub_276A44918(a1, 1);
  *v2 = &unk_2885C25A0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_276A44918(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD46A8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::ReferenceDictionary_Entry::~ReferenceDictionary_Entry);
}

void *sub_276A449A4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD46D8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::ReferenceDictionary::~ReferenceDictionary);
}

void *sub_276A44A30(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4708(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_276A44AB8);
}

void *sub_276A44AD8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4738(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::CFUUIDArchive::~CFUUIDArchive);
}

void *sub_276A44B64(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4768(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::UUIDSetArchive::~UUIDSetArchive);
}

void *sub_276A44BF0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4798(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, TSP::UUIDMapArchive::~UUIDMapArchive);
}

void *sub_276A44C7C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD47C8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, TSP::UUIDMultiMapArchive::~UUIDMultiMapArchive);
}

void *sub_276A44D08(google::protobuf::Arena *a1)
{
  v2 = sub_276A44D7C(a1, 1);
  *v2 = &unk_2885C2A70;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_UUIDCoordArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDCoordArchive_TSPMessages_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_276A44D7C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD47F8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::UUIDCoordArchive::~UUIDCoordArchive);
}

void *sub_276A44E08(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4828(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, TSP::UUIDRectArchive::~UUIDRectArchive);
}

void *sub_276A44E94(google::protobuf::Arena *a1)
{
  v2 = sub_276A44F0C(a1, 1);
  *v2 = &unk_2885C2BD0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto);
  }

  *(v2 + 8) = 0;
  v2[3] = 0;
  return v2;
}

void *sub_276A44F0C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4858(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::SparseUUIDArray_Entry::~SparseUUIDArray_Entry);
}

void *sub_276A44F98(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4888(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::SparseUUIDArray::~SparseUUIDArray);
}

void *sub_276A45024(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD48B8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::UUIDPath::~UUIDPath);
}

void *sub_276A450B0(google::protobuf::Arena *a1)
{
  v2 = sub_276A45128(a1, 1);
  *v2 = &unk_2885C2DE0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto);
  }

  *(v2 + 8) = 0;
  v2[3] = 0;
  return v2;
}

void *sub_276A45128(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD48E8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::SparseUUIDPathArray_Entry::~SparseUUIDPathArray_Entry);
}

void *sub_276A451B4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4918(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::SparseUUIDPathArray::~SparseUUIDPathArray);
}

void *sub_276A45240(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4948(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xC0uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xC0uLL, TSP::PasteboardObject::~PasteboardObject);
}

void *sub_276A452CC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4984(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::ObjectCollection::~ObjectCollection);
}

void *sub_276A45358(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD49B4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::ObjectContainer::~ObjectContainer);
}

void *sub_276A453E4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD49E4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::DataAttributes::~DataAttributes);
}

void *sub_276A45470(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4A14(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::LargeArraySegment::~LargeArraySegment);
}

void *sub_276A454FC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4A44(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::LargeNumberArraySegment::~LargeNumberArraySegment);
}

void *sub_276A45588(google::protobuf::Arena *a1)
{
  v2 = sub_276A45604(a1, 1);
  *v2 = &unk_2885C3360;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto);
  }

  v2[3] = &google::protobuf::internal::fixed_address_empty_string;
  return v2;
}

void *sub_276A45604(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4A74(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::LargeStringArraySegment_OptionalElement::~LargeStringArraySegment_OptionalElement);
}

void *sub_276A45690(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4AA4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::LargeStringArraySegment::~LargeStringArraySegment);
}

void *sub_276A4571C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4AD4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::LargeUUIDArraySegment::~LargeUUIDArraySegment);
}

void *sub_276A457A8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4B04(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::LargeLazyObjectArraySegment::~LargeLazyObjectArraySegment);
}

void *sub_276A45834(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4B34(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::LargeObjectArraySegment::~LargeObjectArraySegment);
}

void *sub_276A458C0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4B64(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x70uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, TSP::LargeArray::~LargeArray);
}

void *sub_276A4594C(google::protobuf::Arena *a1)
{
  v2 = sub_276A459C0(a1, 1);
  *v2 = &unk_2885C3780;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeNumberArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_276A459C0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4BA0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::LargeNumberArray::~LargeNumberArray);
}

void *sub_276A45A4C(google::protobuf::Arena *a1)
{
  v2 = sub_276A45AC0(a1, 1);
  *v2 = &unk_2885C3830;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeStringArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_276A45AC0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4BD0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::LargeStringArray::~LargeStringArray);
}

void *sub_276A45B4C(google::protobuf::Arena *a1)
{
  v2 = sub_276A45BC0(a1, 1);
  *v2 = &unk_2885C38E0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_276A45BC0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4C00(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::LargeLazyObjectArray::~LargeLazyObjectArray);
}

void *sub_276A45C4C(google::protobuf::Arena *a1)
{
  v2 = sub_276A45CC0(a1, 1);
  *v2 = &unk_2885C3990;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_276A45CC0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4C30(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::LargeObjectArray::~LargeObjectArray);
}

void *sub_276A45D4C(google::protobuf::Arena *a1)
{
  v2 = sub_276A45DC0(a1, 1);
  *v2 = &unk_2885C3A40;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_276A45DC0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4C60(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::LargeUUIDArray::~LargeUUIDArray);
}

void *sub_276A45E4C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD4C90(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276A45ED4);
}

void sub_276A45F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  google::protobuf::internal::AddDescriptors(&descriptor_table_TSPMessages_2eproto, a2, a3, a4, a5, a6);
  if (atomic_load_explicit(scc_info_FieldOptions_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_TSPMessages_2eproto);
  }

  TSP::field_options = 51234;
  qword_2812FDA28 = TSP::_FieldOptions_default_instance_;

  sub_276A43EAC(0xC822, 11, 0);
}

void sub_276A46D00(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    (*(v3 + 16))(v3, 1, v4);
  }
}

uint64_t sub_276A46EEC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_276A47648(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A4774C;
  block[3] = &unk_27A6E4B40;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v22 = a2;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v12, block);
}

void sub_276A47768(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v12 = a5;
  if (a2)
  {
    v13 = *(a1 + 40);
    v55 = 0;
    v14 = objc_msgSend_processMetadataObject_error_(v13, v11, v9, &v55);
    v17 = v55;
    if (v14)
    {
      v18 = objc_msgSend_rootObjectComponent(*(a1 + 40), v15, v16);
      v19 = *(a1 + 32);
      v20 = *(v19 + 200);
      *(v19 + 200) = v18;

      v22 = *(a1 + 32);
      v23 = v22[25];
      if (!v23)
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPDecoderReadCoordinator readRootObjectWithCompletionQueue:completion:]_block_invoke_3");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderReadCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 103, 0, "invalid nil value for '%{public}s'", "_rootObjectComponent");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        v22 = *(a1 + 32);
        v23 = v22[25];
      }

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_276A47ABC;
      v51[3] = &unk_27A6E4B90;
      v31 = *(a1 + 48);
      v32 = *(a1 + 40);
      v33 = *(a1 + 32);
      v52 = v32;
      v53 = v33;
      v54 = *(a1 + 56);
      objc_msgSend_readComponent_completionQueue_completion_(v22, v34, v23, v31, v51);
    }

    else
    {
      objc_msgSend_setError_(*(a1 + 32), v15, v17);
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDecoderReadCoordinator readRootObjectWithCompletionQueue:completion:]_block_invoke_3");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderReadCoordinator.mm");
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v43 = objc_msgSend_domain(v12, v41, v42);
    v46 = objc_msgSend_code(v12, v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v47, v36, v38, 88, 0, "Could not read the metadata. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v40, v43, v46, v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
    objc_msgSend_setError_(*(a1 + 32), v50, v12);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_276A47ABC(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v24 = a3;
  v9 = a4;
  v10 = a5;
  v13 = v10;
  if (a2)
  {
    if ((objc_msgSend_isDecodingTransientObject(*(a1 + 32), v11, v12) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 168));
      v17 = objc_msgSend_dataReferenceMap(WeakRetained, v15, v16);
      v20 = objc_msgSend_upgradedComponentDataReferenceMap(*(*(a1 + 40) + 200), v18, v19);
      objc_msgSend_appendComponentDataReferenceMap_forUnarchivedObjects_(v17, v21, v20, v9);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v22 = *(a1 + 48);
    v23 = v10;
    if (!v10)
    {
      v23 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
    }

    (*(v22 + 16))(v22, 0, 0, 0, v23);
    if (!v13)
    {
    }
  }
}

void sub_276A47F38(uint64_t a1, int a2, void *a3, void *a4)
{
  v14 = a3;
  v8 = a4;
  objc_storeStrong((*(a1 + 32) + 208), a3);
  if (a2)
  {
    v11 = objc_msgSend_identifier(*(a1 + 40), v9, v10);
    v13 = objc_msgSend_tsp_objectForIdentifier_(v14, v12, v11);
  }

  else
  {
    if (!v8)
    {
      v8 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v9, 0);
    }

    v13 = 0;
    objc_msgSend_setError_(*(a1 + 32), v9, v8);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_276A485C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A48618(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A48630(uint64_t a1, const char *a2, uint64_t a3)
{
  v62 = objc_msgSend_dataManager(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_dataForDigest_(v62, v4, *(a1 + 40));
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10 = objc_msgSend_preferredFilename(*(a1 + 48), v8, v9);
  v15 = objc_msgSend_documentResourceLocator(*(a1 + 48), v11, v12);
  v16 = *(*(*(a1 + 72) + 8) + 40);
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 == 0;
  }

  if (!v17)
  {
    v18 = [TSPDocumentResourceInfo alloc];
    v21 = objc_msgSend_digestString(*(a1 + 40), v19, v20);
    v24 = objc_msgSend_pathExtension(v10, v22, v23);
    v26 = objc_msgSend_initWithDigestString_locator_fileExtension_fileSize_tags_pixelSize_fallbackColor_(v18, v25, v21, v15, v24, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));

    v29 = objc_msgSend_resourceContext(*(a1 + 32), v27, v28);
    ResourceRequestIfNeeded_error = objc_msgSend_newDataStorageForDocumentResourceInfo_createResourceRequestIfNeeded_error_(v29, v30, v26, 1, 0);

    if (ResourceRequestIfNeeded_error)
    {
      v33 = objc_msgSend_documentResourceDataForInfo_withStorage_filename_(v62, v32, v26, ResourceRequestIfNeeded_error, v10);
      v34 = *(*(a1 + 72) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;
    }

    v16 = *(*(*(a1 + 72) + 8) + 40);
  }

  if (!v16 || objc_msgSend_needsDownload(v16, v13, v14))
  {
    ChannelForDataWithIdentifier_info = objc_msgSend_newReadChannelForDataWithIdentifier_info_(*(*(a1 + 56) + 160), v13, *(a1 + 80), *(a1 + 48));
    if (ChannelForDataWithIdentifier_info)
    {
      v39 = objc_msgSend_dataFromReadChannel_filename_(v62, v36, ChannelForDataWithIdentifier_info, v10);
      v42 = v39;
      if (!v39)
      {
LABEL_25:

        goto LABEL_26;
      }

      if (objc_msgSend_isReadable(v39, v40, v41))
      {
        if (!v15)
        {
          v45 = objc_msgSend_digest(v42, v43, v44);
          isEqual = objc_msgSend_isEqual_(v45, v46, *(a1 + 40));

          if ((isEqual & 1) == 0 && *MEMORY[0x277D81408] != -1)
          {
            sub_276BD4CD4();
          }
        }

        v48 = (*(*(a1 + 72) + 8) + 40);
      }

      else
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD4CC0();
        }

        v60 = *(*(a1 + 72) + 8);
        v61 = *(v60 + 40);
        v48 = (v60 + 40);
        if (v61)
        {
          goto LABEL_25;
        }
      }

      v42 = v42;
      v59 = *v48;
      *v48 = v42;
    }

    else
    {
      if (!objc_msgSend_shouldDecodeMissingDataAsRemote(*(a1 + 64), v36, v37))
      {
LABEL_26:

        goto LABEL_27;
      }

      v51 = *(a1 + 32);
      v52 = *(a1 + 40);
      v53 = objc_msgSend_length(*(a1 + 48), v49, v50);
      v42 = objc_msgSend_documentRevision(*(a1 + 32), v54, v55);
      v57 = objc_msgSend_dataWithDigest_length_preferredFilename_canDownload_isMissingFromServer_documentRevision_downloadPriority_uploadStatus_(v51, v56, v52, v53, v10, 0, 1, v42, 1, 1);
      v58 = *(*(a1 + 72) + 8);
      v59 = *(v58 + 40);
      *(v58 + 40) = v57;
    }

    goto LABEL_25;
  }

LABEL_27:
}

void sub_276A489B4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A489F8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A4AD44()
{
  v0 = [TSPClassRegistry alloc];
  v2 = objc_msgSend_initWithName_(v0, v1, @"TSPDataAttributes");
  v3 = qword_280A529D8;
  qword_280A529D8 = v2;
}

void sub_276A4AFAC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_276A4B0A8;
  v12 = sub_276A4B0B8;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A4B0C0;
  v7[3] = &unk_27A6E4C30;
  v7[4] = &v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v5, v7);
  objc_msgSend_setQuery_(a1, v6, v9[5]);
  _Block_object_dispose(&v8, 8);
}

void sub_276A4B090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A4B0A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A4B0C0(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = MEMORY[0x277CCA900];
  v6 = a3;
  v9 = objc_msgSend_URLQueryAllowedCharacterSet(v5, v7, v8);
  v11 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v6, v10, v9);

  v12 = *(*(*(a1 + 32) + 8) + 40);
  if (v12)
  {
    objc_msgSend_appendFormat_(v12, v16, @"&%@=%@", v16, v11);
  }

  else
  {
    v13 = objc_msgSend_initWithFormat_(objc_alloc(MEMORY[0x277CCAB68]), v16, @"%@=%@", v16, v11);
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void sub_276A4BC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPDataRepReadChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276A4BD84(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dataLength(*(*(a1 + 32) + 8), a2, a3);
  if (v4 < 1)
  {
    v13 = *(*(a1 + 40) + 16);

    v13();
  }

  else
  {
    v5 = v4;
    v6 = 0;
    v7 = *MEMORY[0x277D85CB0];
    while (1)
    {
      v8 = v5 - v6 >= 0x20000 ? 0x20000 : v5 - v6;
      v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
      v11 = objc_msgSend_readToBuffer_size_(*(*(a1 + 32) + 16), v10, v9, v8);
      if (!v11)
      {
        break;
      }

      v6 += v11;
      v12 = dispatch_data_create(v9, v11, 0, v7);
      (*(*(a1 + 40) + 16))();

      if (v6 >= v5)
      {
        return;
      }
    }

    free(v9);
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD4CFC();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_276A4BF90()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A4CD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v3 = *(*(a1 + 32) + 72);
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = objc_msgSend_initWithUUIDBytes_(v4, v5, &v13);
  v8 = objc_msgSend_objectForKeyedSubscript_(v3, v7, v6, v13, v14);
  v11 = objc_msgSend_unsignedLongLongValue(v8, v9, v10);

  return v11;
}

void sub_276A4CE2C(uint64_t a1@<X0>, const char *a2@<X1>, char a3@<W2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if ((a3 & 1) == 0)
  {
    v7 = *(a1 + 32);
    if ((*(v7 + 16) & 4) == 0)
    {
      v8 = *(v7 + 80);
      v9 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a2);
      v11 = objc_msgSend_objectForKeyedSubscript_(v8, v10, v9);

      if (v11)
      {
        std::string::append(a4, " uuid: ");
        v14 = objc_msgSend_UUIDString(v11, v12, v13);
        v15 = v14;
        v18 = objc_msgSend_UTF8String(v15, v16, v17);
        std::string::append(a4, v18);
      }
    }
  }

  v19 = *(a1 + 32);
  if ((*(v19 + 16) & 8) == 0)
  {
    v20 = *(v19 + 64);
    v21 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a2);
    v23 = objc_msgSend_objectForKeyedSubscript_(v20, v22, v21);

    if (v23)
    {
      std::string::append(a4, " [class = ");
      v24 = objc_opt_class();
      Name = class_getName(v24);
      std::string::append(a4, Name);
      std::string::append(a4, "]");
    }

    else
    {
      v26 = *(a1 + 32);
      v29 = *(v26 + 48);
      v27 = v26 + 48;
      v28 = v29;
      if (v29)
      {
        v30 = v27;
        do
        {
          if (*(v28 + 32) >= a2)
          {
            v30 = v28;
          }

          v28 = *(v28 + 8 * (*(v28 + 32) < a2));
        }

        while (v28);
        if (v30 != v27 && *(v30 + 32) <= a2)
        {
          sub_276A5279C(v30 + 40, &v33);
          v31 = v33;
          if (v34)
          {
            sub_2769C1430(v34);
          }

          std::string::append(a4, " [message = ");
          v32 = *((*(*v31 + 152))(v31) + 8);
          if (v32[23] < 0)
          {
            v32 = *v32;
          }

          std::string::append(a4, v32);
          std::string::append(a4, "]");
        }
      }
    }
  }
}

void sub_276A4D030(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_276A4D084(uint64_t a1@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = *(*(a1 + 32) + 88);
  v7 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a2);
  v43 = objc_msgSend_objectForKeyedSubscript_(v6, v8, v7);

  if (!v43)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v30 = objc_msgSend_dataManager(WeakRetained, v28, v29);
    v32 = objc_msgSend_dataForIdentifier_(v30, v31, a2);

    if (v32)
    {
      v35 = objc_msgSend_null(TSPData, v33, v34);
      v38 = v35;
      if (v32 == v35)
      {
      }

      else
      {
        v43 = objc_msgSend_digest(v32, v36, v37);

        if (v43)
        {
          v40 = *(*(a1 + 32) + 88);
          v41 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v39, a2);
          objc_msgSend_setObject_forKeyedSubscript_(v40, v42, v43, v41);

          goto LABEL_2;
        }
      }
    }

    v43 = 0;
    std::string::append(a3, " MISSING_DATA_ERROR");
    goto LABEL_10;
  }

LABEL_2:
  std::string::append(a3, " data_digest: ");
  v11 = objc_msgSend_digestString(v43, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_UTF8String(v12, v13, v14);
  std::string::append(a3, v15);

  v16 = *(a1 + 32);
  if ((*(v16 + 16) & 0x10) == 0)
  {
    v17 = objc_loadWeakRetained((v16 + 8));
    v19 = objc_msgSend_anonymousIdentifierWithContext_(v43, v18, v17);

    std::string::append(a3, " data_anonymous_id: ");
    v22 = objc_msgSend_UUIDString(v19, v20, v21);
    v23 = v22;
    v26 = objc_msgSend_UTF8String(v23, v24, v25);
    std::string::append(a3, v26);
  }

LABEL_10:
}

void sub_276A4D298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void sub_276A4D334(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = [TSPDigest alloc];
  v18 = objc_msgSend_initFromProtobufString_(v6, v7, a2);
  if (v18)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v10 = objc_msgSend_anonymousIdentifierWithContext_(v18, v9, WeakRetained);

    sub_276A4D46C(a3, "anonymous_id: ");
    v13 = objc_msgSend_UUIDString(v10, v11, v12);
    v14 = v13;
    v17 = objc_msgSend_UTF8String(v14, v15, v16);
    std::string::append(a3, v17);
  }

  else
  {
    sub_276A4D46C(a3, "");
  }
}

_BYTE *sub_276A4D46C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_276A4D604(_Unwind_Exception *a1)
{
  v4 = sub_2769BB184(v2);
  MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

uint64_t sub_276A4D63C(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = *(a1 + 32);
    objc_msgSend_tsp_identifier(a2, v4, v5);
    sub_276A51254();
  }

  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDescriptionGenerator _strongReferencesFromArchiver:]_block_invoke");
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDescriptionGenerator.mm");
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v10, 204, 0, "Unexpected object class: %{public}@", v12);

  v16 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v16, v14, v15);
}

uint64_t sub_276A4DF24(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_276A4DF40(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2769C1430(v1);
  }
}

void sub_276A4DF50(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tsp_identifier(*(a1 + 32), a2, a3);
  v36 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v33 = *(a1 + 56);
  v34 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 80);
  v31 = *(a1 + 72);
  v32 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 96);
  v29 = *(a1 + 88);
  v30 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 112);
  v27 = *(a1 + 104);
  v28 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276A52798(v35, v4, &v33, &v31, &v29, &v27);
  sub_276A5204C(v5 + 40, &v36);
  sub_276A5280C(v35);
  if (v28)
  {
    sub_2769C1430(v28);
  }

  if (v30)
  {
    sub_2769C1430(v30);
  }

  if (v32)
  {
    sub_2769C1430(v32);
  }

  if (v34)
  {
    sub_2769C1430(v34);
  }

  v11 = *(a1 + 32);
  v12 = *(*(a1 + 40) + 64);
  v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v10, v36);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v14, v11, v13);

  if (*(a1 + 48))
  {
    v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v15, v36);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 40) + 72), v17, v16, *(a1 + 48));

    v18 = *(a1 + 48);
    v19 = *(*(a1 + 40) + 80);
    v21 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v20, v36);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v22, v18, v21);
  }

  if (v36 == 2)
  {
    v23 = *(a1 + 40);
    v24 = *(a1 + 64);
    v25 = *(a1 + 56);
    v26 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    objc_msgSend_processPackageMetadataMessage_(v23, v15, &v25);
    if (v26)
    {
      sub_2769C1430(v26);
    }
  }
}

void sub_276A4E13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a10)
  {
    sub_2769C1430(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_276A4E1AC(void *result, void *a2)
{
  v2 = a2[8];
  result[7] = a2[7];
  result[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[10];
  result[9] = a2[9];
  result[10] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[12];
  result[11] = a2[11];
  result[12] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[14];
  result[13] = a2[13];
  result[14] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_276A4E210(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    sub_2769C1430(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    sub_2769C1430(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    sub_2769C1430(v4);
  }

  v5 = a1[8];
  if (v5)
  {

    sub_2769C1430(v5);
  }
}

void sub_276A4E424(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v1, 0x10A0C408EF24B1CLL);
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_2769C1430(v4);
  }

  _Unwind_Resume(a1);
}

void sub_276A4E460(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1 + 5;
  v5 = a1[7];
  v29 = a1[6];
  v30 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[9];
  v27 = a1[8];
  v28 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1[11];
  v25 = a1[10];
  v26 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[13];
  v23 = a1[12];
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276A52798(v31, v3, &v29, &v27, &v25, &v23);
  sub_276A5204C(v2 + 40, v4);
  v10 = v9;
  sub_276A5280C(v31);
  if (v24)
  {
    sub_2769C1430(v24);
  }

  if (v26)
  {
    sub_2769C1430(v26);
  }

  if (v28)
  {
    sub_2769C1430(v28);
  }

  if (v30)
  {
    sub_2769C1430(v30);
  }

  if (*v4 == 2)
  {
    if (v10)
    {
      v12 = a1[4];
      v13 = a1[7];
      v21 = a1[6];
      v22 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend_processPackageMetadataMessage_(v12, v11, &v21);
      if (v22)
      {
        sub_2769C1430(v22);
      }
    }
  }

  else if ((v10 & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDescriptionGenerator addMessage:withStrongReferencesMap:forObjectIdentifier:]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDescriptionGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 297, 0, "Not expected to process the same object more than once.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }
}

void *sub_276A4E698(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[11];
  result[10] = a2[10];
  result[11] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[13];
  result[12] = a2[12];
  result[13] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_276A4E6FC(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    sub_2769C1430(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_2769C1430(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_2769C1430(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    sub_2769C1430(v5);
  }
}

void sub_276A4E964(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tsp_identifier(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 64);
  v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v7, v4);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v8, v5);

  if (*(a1 + 48))
  {
    v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v9, v4);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 40) + 72), v10, v16, *(a1 + 48));

    v11 = *(a1 + 48);
    v12 = *(*(a1 + 40) + 80);
    v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v13, v4);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v14, v11);
  }
}

uint64_t sub_276A4EB20(uint64_t a1, const char *a2)
{
  v3 = *(*(a1 + 32) + 32);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v3 = *(*(a1 + 32) + 32);
  }

  v7 = *(a1 + 40);

  return objc_msgSend_addObject_(v3, a2, v7);
}

void sub_276A4EC1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_componentObjectUUIDMap(*(a1 + 32), a2, a3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276A4ECBC;
  v6[3] = &unk_27A6E4D08;
  v6[4] = *(a1 + 40);
  objc_msgSend_enumerateIdentifiersAndObjectUUIDsUsingBlock_(v4, v5, v6);
}

void sub_276A4ECBC(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, a2);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 72), v7, v6, v9);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 80), v8, v9, v6);
}

uint64_t sub_276A4F018(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  sub_276A528D4(v32, v2 + 5, (v2[2] & 1) == 0, (v2[2] >> 1) & 1, v2[12], v2[13], v2[14], v2[15]);
  v3 = *(a1 + 40);
  v6 = objc_msgSend_fileSystemRepresentation(v3, v4, v5);
  v8 = open(v6, 1538, 420);
  if (v8 < 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPDescriptionGenerator dumpMessagesToFilePath:]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDescriptionGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 377, 0, "Invalid file descriptor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  google::protobuf::io::FileOutputStream::FileOutputStream(v31, v8);
  v31[60] = 1;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = *(*(a1 + 32) + 32);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v33, 16);
  if (v19)
  {
    v20 = 0;
    v21 = *v28;
LABEL_5:
    v22 = 0;
    while (1)
    {
      if (*v28 != v21)
      {
        objc_enumerationMutation(v16);
      }

      v23 = *(*(a1 + 48) + 8);
      if (*(v23 + 24) == 1)
      {
        v24 = objc_msgSend_dumpComponentMessages_printNewLine_withPrinter_outputStream_(*(a1 + 32), v18, *(*(&v27 + 1) + 8 * v22), v20 & 1, v32, v31);
        v23 = *(*(a1 + 48) + 8);
      }

      else
      {
        v24 = 0;
      }

      *(v23 + 24) = v24;
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        break;
      }

      ++v22;
      v20 = 1;
      if (v19 == v22)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v27, v33, 16);
        if (v19)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  google::protobuf::io::FileOutputStream::~FileOutputStream(v31);
  result = sub_276A52928(v32);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_276A4F828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_276A4F840(uint64_t result)
{
  v1 = *(result + 32);
  v4 = *(v1 + 48);
  v2 = v1 + 48;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    v6 = *(result + 48);
    v7 = v2;
    do
    {
      if (*(v3 + 32) >= v6)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v6));
    }

    while (v3);
    if (v7 != v2 && v6 >= *(v7 + 32))
    {
      sub_276A5279C(v7 + 40, &v38);
      v8 = v38;
      if (v39)
      {
        sub_2769C1430(v39);
      }

      v9 = *(v5 + 32);
      sub_276A528D4(&v38, v9 + 5, (v9[2] & 1) == 0, (v9[2] >> 1) & 1, v9[12], v9[13], v9[14], v9[15]);
      memset(__p, 0, sizeof(__p));
      google::protobuf::io::StringOutputStream::StringOutputStream(v36, __p);
      if ((*(*(v5 + 32) + 16) & 2) != 0)
      {
        objc_msgSend_string(MEMORY[0x277CCAB68], v10, v11);
      }

      else
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v10, @"id: %llu ", *(v5 + 48));
      }
      v12 = ;
      v13 = *(*(v5 + 32) + 64);
      v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v14, *(v5 + 48));
      v17 = objc_msgSend_objectForKeyedSubscript_(v13, v16, v15);

      if (v17)
      {
        v20 = objc_msgSend_objectUUID(v17, v18, v19);
        v23 = v20;
        v24 = *(v5 + 32);
        if (v20 && (*(v24 + 16) & 4) == 0)
        {
          v25 = objc_msgSend_UUIDString(v20, v21, v22);
          objc_msgSend_appendFormat_(v12, v26, @"uuid: %@ ", v25);

          v24 = *(v5 + 32);
        }

        if ((*(v24 + 16) & 8) == 0)
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          objc_msgSend_appendFormat_(v12, v29, @"[class = %@]", v28);
        }
      }

      else if ((*(*(v5 + 32) + 16) & 8) == 0)
      {
        v31 = *((*(*v8 + 152))(v8) + 8);
        if (*(v31 + 23) < 0)
        {
          v31 = *v31;
        }

        objc_msgSend_appendFormat_(v12, v30, @"[message = %s]", v31);
      }

      v32 = v12;
      v35 = objc_msgSend_UTF8String(v32, v33, v34);
      sub_276A52F20(&v38, v35, v7 + 40, v36, &unk_2885C4100);
    }
  }

  return result;
}

void sub_276A4FAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_276A52928(&a18);
  _Unwind_Resume(a1);
}

void sub_276A50758()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A5079C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A507E0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A50824(uint64_t a1, void *a2)
{
  v9 = a2;
  v6 = objc_msgSend_identifier(v9, v4, v5);
  if (v6 == 1)
  {
    v8 = 48;
LABEL_5:
    objc_storeStrong((*(*(a1 + v8) + 8) + 40), a2);
    goto LABEL_6;
  }

  if (v6 == 3)
  {
    v8 = 56;
    goto LABEL_5;
  }

  if (v6 != 2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v9);
  }

LABEL_6:
  objc_msgSend_addUUIDMapEntriesForComponent_(*(a1 + 40), v7, v9);
}

uint64_t sub_276A508FC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_locator(a2, v5, v6);
  v10 = objc_msgSend_locator(v4, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  return v12;
}

void sub_276A5096C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276A50998()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A509DC(void **a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  sub_276A528D4(v33, v2 + 5, (v2[2] & 1) == 0, (v2[2] >> 1) & 1, v2[12], v2[13], v2[14], v2[15]);
  v5 = objc_msgSend_path(a1[5], v3, v4);
  v6 = v5;
  v9 = objc_msgSend_fileSystemRepresentation(v5, v7, v8);
  v10 = open(v9, 1538, 420);

  if (v10 < 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSPDescriptionGenerator dumpMessagesForDocumentURL:supportURL:decryptionKey:toURL:]_block_invoke_7");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDescriptionGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 617, 0, "Invalid file descriptor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  google::protobuf::io::FileOutputStream::FileOutputStream(v32, v10);
  v32[60] = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = a1[6];
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v34, 16);
  if (v22)
  {
    v23 = 0;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_dumpComponentMessages_printNewLine_withPrinter_outputStream_(a1[4], v21, *(*(&v28 + 1) + 8 * v25++), v23 & 1, v33, v32);
        v23 = 1;
      }

      while (v22 != v25);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v28, v34, 16);
    }

    while (v22);
  }

  google::protobuf::io::FileOutputStream::~FileOutputStream(v32);
  result = sub_276A52928(v33);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_276A50F68(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_2769C1430(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_2769C1430(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_2769C1430(v4);
  }

  return a1;
}

uint64_t sub_276A50FB0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276A51028(a1, i + 2);
  }

  return a1;
}

void *sub_276A51028(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_276A51358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_2769B0EC4(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A51468(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_2769B0EC4(v3, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A51484(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 32);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(v2[5] + 4 * v5);
      if (v5)
      {
        v9 = v7;
        do
        {
          v8 *= 10;
          --v9;
        }

        while (v9 > 1);
      }

      v6 += v8;
      ++v5;
      ++v7;
    }

    while (v5 != v4);
  }

  v2[1] = v6;
  v10 = sub_276A51534(a1, v6, (v2 + 2));
  if (v10)
  {
    return v10;
  }

  sub_2769ABFB8(a1, v2);
  return v2;
}

uint64_t *sub_276A51534(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = *(a3 + 16);
        v9 = *(a3 + 24);
        do
        {
          v10 = v7[1];
          if (v10 == a2)
          {
            if (*(v7 + 8) == v8)
            {
              if (v8 < 1)
              {
                return v7;
              }

              v11 = v7[5];
              v12 = v9;
              v13 = v8;
              while (1)
              {
                v15 = *v11++;
                v14 = v15;
                v16 = *v12++;
                if (v14 != v16)
                {
                  break;
                }

                if (!--v13)
                {
                  return v7;
                }
              }
            }
          }

          else
          {
            if (v4.u32[0] > 1uLL)
            {
              if (v10 >= v3)
              {
                v10 %= v3;
              }
            }

            else
            {
              v10 &= v3 - 1;
            }

            if (v10 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v3 || (v18 * v3) < v17)
  {
    v19 = 2 * v3;
    v20 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v21 = v20 | v19;
    v22 = vcvtps_u32_f32(v17 / v18);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_2769AC06C(a1, v23);
  }

  return 0;
}

void sub_276A516E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_276BD4DB0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A51700(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A51738(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_276A51768(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C4220))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_276A517A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276A51828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A5183C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A5183C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2769B0AEC(v2);
    MEMORY[0x277C9F670](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void sub_276A51888(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A518C0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2769B0AEC(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276A51904(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C4298))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_276A51944(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276A519C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A519D8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A519D8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2769BB184(v2);
    MEMORY[0x277C9F670](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void sub_276A51A24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A51A5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2769BB184(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276A51AA0(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C4310))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_276A51AE0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_276A51B98();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_276A51C1C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_276A51C74(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_276A51C74(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_276A51E10(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276A51E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A51EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A51EA4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_276A51FD4(v2, *(v2 + 8));
    MEMORY[0x277C9F670](v2, 0x1020C4062D53EE8);
  }

  return a1;
}

void sub_276A51EFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A51F3C(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C4388))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_276A51F7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_276A51FD4(a2, *(a2 + 8));

    JUMPOUT(0x277C9F670);
  }
}

void sub_276A51FD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276A51FD4(a1, *a2);
    sub_276A51FD4(a1, a2[1]);
    v4 = a2[10];
    if (v4)
    {
      sub_2769C1430(v4);
    }

    v5 = a2[8];
    if (v5)
    {
      sub_2769C1430(v5);
    }

    v6 = a2[6];
    if (v6)
    {
      sub_2769C1430(v6);
    }

    operator delete(a2);
  }
}

void *sub_276A5204C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

char **sub_276A521A4(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_276A5280C(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_276A521F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276A521F0(a1, *a2);
    sub_276A521F0(a1, a2[1]);
    sub_276A5280C(a2 + 5);

    operator delete(a2);
  }
}

id sub_276A524E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSPMutableLargeObjectArray;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_276A52680(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSPMutableLargeObjectArray;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void *sub_276A52730(void *result, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  v7 = *a3;
  v6 = a3[1];
  *result = a2;
  result[1] = v7;
  result[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a4[1];
  result[3] = *a4;
  result[4] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a5[1];
  result[5] = *a5;
  result[6] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a6[1];
  result[7] = *a6;
  result[8] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_276A5279C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_276A527B8(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_2769C1430(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    sub_2769C1430(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    sub_2769C1430(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    sub_2769C1430(v5);
  }

  return a1;
}

uint64_t sub_276A52810(uint64_t a1, uint64_t a2, char a3, char a4, const void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 3) = 0;
  *a1 = 0;
  *(a1 + 7) = a3;
  *(a1 + 8) = a4;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  *(a1 + 16) = _Block_copy(a5);
  v16 = _Block_copy(v15);

  *(a1 + 24) = v16;
  v17 = _Block_copy(v14);

  *(a1 + 32) = v17;
  v18 = _Block_copy(v13);

  *(a1 + 40) = v18;
  *(a1 + 48) = a2;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  return a1;
}

uint64_t sub_276A528D8(uint64_t a1)
{
  sub_276A579A4(a1 + 56, *(a1 + 64));

  return a1;
}

void sub_276A5292C(uint64_t a1, void *a2, std::__shared_weak_count *a3, uint64_t a4, std::string *a5, void *a6)
{
  v56 = a6;
  v9 = a2[1];
  v8 = a2[2];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2769C1430(v8);
  }

  (*(*v9 + 152))(v9);
  v11 = v10;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  google::protobuf::Reflection::ListFields(v10, v9, &v62);
  v12 = (*(*v9 + 152))(v9);
  v13 = *(v12 + 1);
  if (*(v13 + 23) < 0)
  {
    if (v13[1] == 19)
    {
      v21 = **v13 == 0x6B6361502E505354 && *(*v13 + 8) == 0x646174654D656761;
      if (v21 && *(*v13 + 11) == 0x617461646174654DLL)
      {
        v16 = 0;
LABEL_36:
        v20 = 1;
        v26 = 8;
        goto LABEL_37;
      }
    }

    if (v13[1] != 17)
    {
LABEL_27:
      v20 = 0;
      goto LABEL_28;
    }

    v15 = *v13;
  }

  else
  {
    v14 = *(v13 + 23);
    v15 = *(v12 + 1);
    if (v14 != 17)
    {
      if (v14 == 19)
      {
        v16 = 0;
        if (*v13 != 0x6B6361502E505354 || v13[1] != 0x646174654D656761 || *(v13 + 11) != 0x617461646174654DLL)
        {
          UInt64 = a3;
          v54 = 0;
          v20 = 0;
          goto LABEL_58;
        }

        goto LABEL_36;
      }

      goto LABEL_27;
    }
  }

  v23 = 0x5453502E436F6D70;
  v24 = bswap64(*v15);
  if (v24 == 0x5453502E436F6D70 && (v23 = 0x6F6E656E74496E66, v24 = bswap64(*(v15 + 8)), v24 == 0x6F6E656E74496E66))
  {
    v25 = *(v15 + 16) - 111;
  }

  else if (v24 < v23)
  {
    v25 = -1;
  }

  else
  {
    v25 = 1;
  }

  v20 = 0;
  if (v25)
  {
    UInt64 = a3;
    v54 = 0;
    goto LABEL_58;
  }

  v16 = 1;
  v26 = 12;
LABEL_37:
  FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v12, v26);
  HasField = google::protobuf::Reflection::HasField(v11, v9, FieldByNumber);
  if (!HasField)
  {
    UInt64 = a3;
    if (v16)
    {
      goto LABEL_41;
    }

LABEL_28:
    v54 = 0;
    UInt64 = a3;
    goto LABEL_58;
  }

  UInt64 = google::protobuf::Reflection::GetUInt64(v11, v9, FieldByNumber);
  if (!v16)
  {
    v54 = 0;
    goto LABEL_58;
  }

LABEL_41:
  sub_276A57694(a5, "was_written_on_last_save: ", 26);
  if (HasField)
  {
    if (a3 == UInt64)
    {
      v29 = 3;
      v30 = "YES";
    }

    else
    {
      sub_276A57694(a5, "NO [delta = ", 12);
      google::protobuf::SimpleItoa((a3 - UInt64), v31, &__p);
      if ((v61 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v61 & 0x80u) == 0)
      {
        v33 = v61;
      }

      else
      {
        v33 = v60;
      }

      sub_276A57694(a5, p_p, v33);
      if (v61 < 0)
      {
        operator delete(__p);
      }

      v29 = 1;
      v30 = "]";
    }
  }

  else
  {
    v29 = 7;
    v30 = "UNKNOWN";
  }

  sub_276A57694(a5, v30, v29);
  if (*(a1 + 4))
  {
    v34 = " ";
  }

  else
  {
    v34 = "\n";
  }

  v54 = 1;
  sub_276A57694(a5, v34, 1);
LABEL_58:
  v52 = v9;
  v53 = v13;
  v35 = v62;
  if (v63 != v62)
  {
    v36 = 0;
    v38 = (a4 + 16);
    v37 = *(a4 + 16);
    do
    {
      v39 = v35[v36];
      v40 = *(v39 + 17);
      if (v37 == *(a4 + 20))
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve();
      }

      *(*(a4 + 24) + 4 * v37) = v40;
      *v38 = v37 + 1;
      if (v40 - 5 < 3)
      {
        v41 = v20;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        goto LABEL_71;
      }

      if (v54)
      {
        if (v40 <= 0xF && ((1 << v40) & 0xC030) != 0)
        {
          goto LABEL_71;
        }
      }

      else if (v40 == 4)
      {
        if ((*(v53 + 23) & 0x80000000) == 0 || v53[1] != 25)
        {
          goto LABEL_97;
        }

        v43 = **v53 == 0x617461442E505354 && *(*v53 + 8) == 0x69747265706F7250;
        v44 = v43 && *(*v53 + 16) == 0x567972746E457365;
        if (!v44 || *(*v53 + 24) != 49)
        {
          goto LABEL_97;
        }

        goto LABEL_71;
      }

      if ((v40 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_97;
      }

      v46 = v53;
      v47 = *(v53 + 23);
      if (v47 < 0)
      {
        if (v53[1] != 15)
        {
          goto LABEL_97;
        }

        v46 = *v53;
      }

      else if (v47 != 15)
      {
        goto LABEL_97;
      }

      v48 = *v46;
      v49 = *(v46 + 7);
      if (v48 != 0x746165462E505354 || v49 != 0x6F666E4965727574)
      {
LABEL_97:
        sub_276A53900(a1, a2, UInt64, v11, v39, a4, a5, v56);
        goto LABEL_98;
      }

LABEL_71:
      sub_276A53788(a1, a2, UInt64, v11, v39, a4, a5, v56);
LABEL_98:
      v37 = *v38 - 1;
      *v38 = v37;
      ++v36;
      v35 = v62;
    }

    while (v36 < (v63 - v62) >> 3);
  }

  UnknownFields = google::protobuf::Reflection::GetUnknownFields(v11, v52);
  sub_276A531D0(a1, UnknownFields, a5);
  sub_276A55324(a1, a2, UInt64, a4, a5, v56);
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }
}

void sub_276A52EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_276A52F20(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  sub_276A57744(v8, a4, *a1);
  operator new();
}

void sub_276A5305C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C9F670](v3, 0x1081C40B6D36AFBLL);
  sub_276A577C0(va);

  _Unwind_Resume(a1);
}

void sub_276A5309C(uint64_t a1)
{
  v1 = *(a1 + 47);
  if ((v1 & 0x8000000000000000) != 0)
  {
    v1 = *(a1 + 32);
    if (!v1)
    {
LABEL_6:
      google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDescriptionPrinter.mm", 70);
      v2 = google::protobuf::internal::LogMessage::operator<<(v5, " Outdent() without matching Indent().");
      google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
      return;
    }
  }

  else if (!*(a1 + 47))
  {
    goto LABEL_6;
  }

  if (v1 < 2 * *(a1 + 48))
  {
    goto LABEL_6;
  }

  v3 = (a1 + 24);

  std::string::resize(v3, v1 - 2, 0);
}

void sub_276A5314C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A53164(uint64_t *result, uint64_t a2, const char *a3)
{
  if (a3)
  {
    sub_276A57744(v5, a2, *result);
    v4 = strlen(a3);
    sub_276A57694(v5, a3, v4);
    return sub_276A577C0(v5);
  }

  return result;
}

void sub_276A531BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A577C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276A531D0(uint64_t result, uint64_t *a2, std::string *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2[1] - *a2;
  if ((v3 >> 4) >= 1)
  {
    v6 = result;
    sub_276A57694(a3, "tsp_unknown_fields {\n", 21);
    std::string::append(a3 + 1, "  ");
    v8 = 0;
    v9 = (v3 >> 4) & 0x7FFFFFFF;
    while (1)
    {
      v10 = *a2;
      google::protobuf::SimpleItoa(*(*a2 + v8), v7, &v46);
      v11 = *(v10 + v8 + 4);
      if (v11 <= 1)
      {
        if (!v11)
        {
          if ((v48 & 0x80u) == 0)
          {
            v29 = &v46;
          }

          else
          {
            v29 = v46;
          }

          if ((v48 & 0x80u) == 0)
          {
            v30 = v48;
          }

          else
          {
            v30 = v47;
          }

          sub_276A57694(a3, v29, v30);
          sub_276A57694(a3, ": ", 2);
          google::protobuf::SimpleItoa(*(v10 + v8 + 8), v31, &__p);
          if (v51 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v51 >= 0)
          {
            v33 = HIBYTE(v51);
          }

          else
          {
            v33 = v50;
          }

          sub_276A57694(a3, p_p, v33);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__p);
          }

          if (*(v6 + 4))
          {
            v34 = " ";
          }

          else
          {
            v34 = "\n";
          }

          v35 = 1;
          goto LABEL_67;
        }

        if (v11 == 1)
        {
          if ((v48 & 0x80u) == 0)
          {
            v14 = &v46;
          }

          else
          {
            v14 = v46;
          }

          if ((v48 & 0x80u) == 0)
          {
            v15 = v48;
          }

          else
          {
            v15 = v47;
          }

          sub_276A57694(a3, v14, v15);
          sub_276A57694(a3, ": 0x", 4);
          v17 = google::protobuf::FastHex32ToBuffer(*(v10 + v8 + 8), &__p, v16);
          v18 = strlen(v17);
          sub_276A57694(a3, v17, v18);
          if (*(v6 + 4))
          {
            v19 = " ";
          }

          else
          {
            v19 = "\n";
          }

          goto LABEL_26;
        }
      }

      else
      {
        switch(v11)
        {
          case 2:
            if ((v48 & 0x80u) == 0)
            {
              v20 = &v46;
            }

            else
            {
              v20 = v46;
            }

            if ((v48 & 0x80u) == 0)
            {
              v21 = v48;
            }

            else
            {
              v21 = v47;
            }

            sub_276A57694(a3, v20, v21);
            sub_276A57694(a3, ": 0x", 4);
            v23 = google::protobuf::FastHex64ToBuffer(*(v10 + v8 + 8), &__p, v22);
            v24 = strlen(v23);
            sub_276A57694(a3, v23, v24);
            if (*(v6 + 4))
            {
              v19 = " ";
            }

            else
            {
              v19 = "\n";
            }

LABEL_26:
            sub_276A57694(a3, v19, 1);
            break;
          case 3:
            if ((v48 & 0x80u) == 0)
            {
              v25 = &v46;
            }

            else
            {
              v25 = v46;
            }

            if ((v48 & 0x80u) == 0)
            {
              v26 = v48;
            }

            else
            {
              v26 = v47;
            }

            sub_276A57694(a3, v25, v26);
            v27 = *(v10 + v8 + 8);
            v50 = 0;
            v51 = 0;
            __p = 0;
            v28 = *(v27 + 23);
            if (v28 < 0)
            {
              if (!v27[1])
              {
                goto LABEL_78;
              }
            }

            else if (!*(v27 + 23))
            {
              goto LABEL_78;
            }

            if (v28 >= 0)
            {
              v36 = v27;
            }

            else
            {
              v36 = *v27;
            }

            if (v28 >= 0)
            {
              v37 = *(v27 + 23);
            }

            else
            {
              v37 = *(v27 + 2);
            }

            if (google::protobuf::UnknownFieldSet::ParseFromArray(&__p, v36, v37))
            {
              if (*(v6 + 4) == 1)
              {
                sub_276A57694(a3, " { ", 3);
              }

              else
              {
                sub_276A57694(a3, " {\n", 3);
                std::string::append(a3 + 1, "  ");
              }

              sub_276A531D0(v6, &__p, a3);
              if (*(v6 + 4))
              {
                v42 = 2;
                v41 = "} ";
              }

              else
              {
                sub_276A5309C(a3);
                v42 = 2;
                v41 = "}\n";
              }
            }

            else
            {
LABEL_78:
              sub_276A57694(a3, ": ", 3);
              google::protobuf::CEscape(v27, v38, &v45);
              if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v39 = &v45;
              }

              else
              {
                v39 = v45.__r_.__value_.__r.__words[0];
              }

              if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v40 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v40 = v45.__r_.__value_.__r.__words[1];
              }

              sub_276A57694(a3, v39, v40);
              if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v45.__r_.__value_.__l.__data_);
              }

              sub_276A57694(a3, "", 1);
              if (*(v6 + 4))
              {
                v41 = " ";
              }

              else
              {
                v41 = "\n";
              }

              v42 = 1;
            }

            sub_276A57694(a3, v41, v42);
            v43 = __p;
            if (__p != v50)
            {
              google::protobuf::UnknownFieldSet::ClearFallback(&__p);
              v43 = __p;
            }

            if (v43)
            {
              v50 = v43;
              operator delete(v43);
            }

            break;
          case 4:
            if ((v48 & 0x80u) == 0)
            {
              v12 = &v46;
            }

            else
            {
              v12 = v46;
            }

            if ((v48 & 0x80u) == 0)
            {
              v13 = v48;
            }

            else
            {
              v13 = v47;
            }

            sub_276A57694(a3, v12, v13);
            if (*(v6 + 4) == 1)
            {
              sub_276A57694(a3, " { ", 3);
            }

            else
            {
              sub_276A57694(a3, " {\n", 3);
              std::string::append(a3 + 1, "  ");
            }

            sub_276A531D0(v6, *(v10 + v8 + 8), a3);
            if (*(v6 + 4))
            {
              v35 = 2;
              v34 = "} ";
            }

            else
            {
              sub_276A5309C(a3);
              v35 = 2;
              v34 = "}\n";
            }

LABEL_67:
            sub_276A57694(a3, v34, v35);
            break;
        }
      }

      if (v48 < 0)
      {
        operator delete(v46);
      }

      v8 += 16;
      if (!--v9)
      {
        sub_276A5309C(a3);
        result = sub_276A57694(a3, "}\n", 2);
        break;
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276A53704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    sub_276B7B560(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A53788(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, google::protobuf::Reflection *a4, google::protobuf::FieldDescriptor *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v23 = a8;
  v18 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2769C1430(v17);
  }

  sub_276A567F4(v17, v15, v16, a5, a7);
  sub_276A57694(a7, ": ", 2);
  v19 = google::protobuf::Reflection::FieldSize(a4, v18, a5);
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if ((v21 & 1) == 0)
      {
        sub_276A57694(a7, ".", 1);
      }

      sub_276A557B8(a1, a2, a3, a4, a5, v20, a6, a7, v23);
      v21 = 0;
      ++v20;
    }

    while (v19 != v20);
  }

  if (*(a1 + 4))
  {
    v22 = " ";
  }

  else
  {
    v22 = "\n";
  }

  sub_276A57694(a7, v22, 1);
}

void sub_276A53900(uint64_t a1, void *a2, std::__shared_weak_count *a3, google::protobuf::Reflection *a4, uint64_t a5, uint64_t a6, std::string *a7, void *a8)
{
  v191 = *MEMORY[0x277D85DE8];
  v12 = a8;
  v13 = a2[2];
  v172 = a2;
  v173 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2769C1430(v13);
  }

  v15 = a2[3];
  v14 = a2[4];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2769C1430(v14);
  }

  v16 = a2[8];
  v165 = a2[7];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2769C1430(v16);
  }

  if (*(a1 + 5) != 1 || *(a5 + 60) != 3)
  {
    goto LABEL_18;
  }

  v17 = *(a5 + 48);
  if (v17)
  {
    __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v180.__r_.__value_.__r.__words[0] = a5;
    if (atomic_load_explicit(v17, memory_order_acquire) != -1)
    {
      *out = &__p;
      *&out[8] = &v180;
      v183 = out;
      std::__call_once(v17, &v183, sub_2769C149C);
    }
  }

  v18 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a5 + 56)];
  if (v18 == 9)
  {
    goto LABEL_18;
  }

  v19 = *(a5 + 48);
  if (v19)
  {
    __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v180.__r_.__value_.__r.__words[0] = a5;
    if (atomic_load_explicit(v19, memory_order_acquire) != -1)
    {
      *out = &__p;
      *&out[8] = &v180;
      v183 = out;
      std::__call_once(v19, &v183, sub_2769C149C);
    }

    v18 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a5 + 56)];
  }

  if (v18 != 10)
  {
    sub_276A569D0(a1, a2, a3, a4, a5, a6, a7, v12);
  }

  else
  {
LABEL_18:
    if (*(a5 + 60) == 3)
    {
      LODWORD(v20) = google::protobuf::Reflection::FieldSize(a4, v173, a5);
    }

    else
    {
      LODWORD(v20) = google::protobuf::Reflection::HasField(a4, v173, a5);
    }

    v176 = v20;
    if (v15 && (v20 = sub_276A579F8(v15, a6)) != 0)
    {
      v168 = *(v20 + 14);
      v174 = v168 != 0;
    }

    else
    {
      v174 = 0;
      v168 = 0;
    }

    if (v176 >= 1)
    {
      v23 = 0;
      v164 = (a1 + 64);
      v166 = a7;
      v167 = v12;
      v170 = a1;
      while (1)
      {
        sub_276A567F4(v20, v21, v22, a5, a7);
        v186 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        memset(&__p, 0, sizeof(__p));
        v24 = *(a5 + 48);
        if (v24)
        {
          *uu = google::protobuf::FieldDescriptor::TypeOnceInit;
          v189 = a5;
          if (atomic_load_explicit(v24, memory_order_acquire) != -1)
          {
            *out = uu;
            *&out[8] = &v189;
            v180.__r_.__value_.__r.__words[0] = out;
            std::__call_once(v24, &v180, sub_2769C149C);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a5 + 56)] != 10)
        {
          sub_276A57694(a7, ": ", 2);
LABEL_37:
          v178 = 0;
          v179 = 0;
          v177 = 0;
          goto LABEL_379;
        }

        v25 = google::protobuf::FieldDescriptor::message_type(a5);
        v26 = *(v25 + 8);
        v27 = *(v26 + 23);
        if (*(v26 + 23) < 0)
        {
          break;
        }

        v28 = 0;
        if (*(v26 + 23) <= 0xCu)
        {
          if (v27 == 8)
          {
            if (*v26 == 0x444955552E505354)
            {
              goto LABEL_121;
            }

LABEL_93:
            v28 = 0;
            HIDWORD(v178) = 0;
            v29 = *(v25 + 8);
LABEL_94:
            if (v27 != 17)
            {
              goto LABEL_105;
            }

LABEL_95:
            v40 = *v29;
            v41 = v29[1];
            v42 = *(v29 + 16);
            v45 = v40 == 0x617461442E505354 && v41 == 0x636E657265666552 && v42 == 101;
            HIDWORD(v178) = v45;
            goto LABEL_105;
          }

          HIDWORD(v178) = 0;
          if (v27 == 12)
          {
            v28 = 0;
            v36 = *v26 == 0x444955552E505354 && *(v26 + 2) == 1752457552;
            HIDWORD(v178) = 0;
            if (v36)
            {
              v179 = 1;
LABEL_91:
              LODWORD(v178) = 0;
              v177 = 0;
              goto LABEL_164;
            }
          }
        }

        else
        {
          if (v27 == 13)
          {
            if (*v26 == 0x656665522E505354 && *(v26 + 5) == 0x65636E6572656665)
            {
              goto LABEL_84;
            }

            goto LABEL_93;
          }

          if (v27 != 16)
          {
            v29 = *(v25 + 8);
            HIDWORD(v178) = 0;
            goto LABEL_94;
          }

          v28 = 0;
          v39 = *v26 == 0x444955552E505354 && v26[1] == 0x6C616E7265746E49;
          HIDWORD(v178) = 0;
          if (v39)
          {
            v179 = 0x100000000;
            goto LABEL_91;
          }
        }

LABEL_105:
        LODWORD(v179) = 0;
        if (v28 || (v178 & 0x100000000) != 0)
        {
          v52 = 0;
          HIDWORD(v179) = 0;
          HIDWORD(v177) = 0;
          LODWORD(v178) = 0;
          goto LABEL_120;
        }

        if ((v27 & 0x80) != 0)
        {
          goto LABEL_131;
        }

        if (v27 == 9)
        {
          v53 = *v26;
          v54 = *(v26 + 8);
          if (v53 != 0x6F6C6F432E505354 || v54 != 114)
          {
            goto LABEL_159;
          }

LABEL_160:
          v179 = 0;
          v177 = 0;
          LODWORD(v178) = 1;
          goto LABEL_164;
        }

        if (v27 != 20)
        {
          goto LABEL_146;
        }

        v179 = 0;
        LODWORD(v177) = 0;
        v46 = *v26;
        v47 = v26[1];
        v48 = *(v26 + 4);
        v51 = v46 == 0x75636F442E505354 && v47 == 0x69766552746E656DLL && v48 == 1852795251;
LABEL_163:
        HIDWORD(v177) = v51;
        LODWORD(v178) = 0;
LABEL_164:
        if (HIDWORD(v178))
        {
          v38 = 0;
LABEL_166:
          if (*(a5 + 60) == 3)
          {
            RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(a4, v173, a5, v23);
          }

          else
          {
            RepeatedMessage = google::protobuf::Reflection::GetMessage(a4, v173, a5, 0);
          }

          v66 = RepeatedMessage;
          sub_276A56420(RepeatedMessage, &v186);
          if (v28 && (*(v170 + 8) & 1) == 0)
          {
            v67 = (*(*v66 + 152))(v66);
            FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v67, 2);
            (*(*v66 + 152))(v66);
            v70 = v69;
            v71 = google::protobuf::Reflection::FieldSize(v69, v66, FieldByNumber);
            sub_276A56B3C(&v183, v71);
            if (v71 >= 1)
            {
              v72 = 0;
              v73 = v71;
              do
              {
                v74 = google::protobuf::Reflection::GetRepeatedMessage(v70, v66, FieldByNumber, v72);
                v75 = (*(*v74 + 152))(v74);
                v76 = google::protobuf::Descriptor::FindFieldByNumber(v75, 1);
                (*(*v74 + 152))(v74);
                UInt64 = google::protobuf::Reflection::GetUInt64(v77, v74, v76);
                *(v183 + v72++) = UInt64;
              }

              while (v73 != v72);
            }
          }

          if (v38)
          {
            a7 = v166;
            v12 = v167;
            a1 = v170;
LABEL_245:
            if (v12)
            {
              v101 = (*(v12 + 2))(v12, v186);
            }

            else
            {
              v101 = 0;
            }

            if (v165)
            {
              *out = v186;
              v102 = sub_276A57C60(v165, out) != 0;
              if (v101)
              {
LABEL_313:
                if ((*(a1 + 8) & 1) == 0)
                {
                  v128 = " weak_ref: ";
                  if (v101)
                  {
                    v128 = " external_weak_ref: ";
                    v129 = 20;
                  }

                  else
                  {
                    v129 = 11;
                  }

                  v130 = " ref: ";
                  if (v101)
                  {
                    v130 = " external_ref: ";
                    v131 = 15;
                  }

                  else
                  {
                    v131 = 6;
                  }

                  v132 = (v102 ? v130 : v128);
                  v133 = v102 ? v131 : v129;
                  sub_276A57694(a7, v132, v133);
                  google::protobuf::SimpleItoa(v186, v134, out);
                  v135 = out[23] >= 0 ? out : *out;
                  v136 = out[23] >= 0 ? out[23] : *&out[8];
                  sub_276A57694(a7, v135, v136);
                  if (out[23] < 0)
                  {
                    operator delete(*out);
                  }
                }

                if ((HIDWORD(v179) | v179) == 1)
                {
                  if (HIDWORD(v179))
                  {
                    v137 = " uuid: ";
                  }

                  else
                  {
                    v137 = " uuid_path: ";
                  }

                  if (HIDWORD(v179))
                  {
                    v138 = 7;
                  }

                  else
                  {
                    v138 = 12;
                  }

                  sub_276A57694(a7, v137, v138);
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v140 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v140 = __p.__r_.__value_.__r.__words[1];
                  }

                  sub_276A57694(a7, p_p, v140);
                }

                v141 = *(a1 + 24);
                if (v141)
                {
                  (*(v141 + 16))(out);
                  v142 = out[23] >= 0 ? out : *out;
                  v143 = out[23] >= 0 ? out[23] : *&out[8];
                  sub_276A57694(a7, v142, v143);
                  if (out[23] < 0)
                  {
                    operator delete(*out);
                  }
                }

                if (v174)
                {
                  sub_276A57694(a7, " [rule = ", 9);
                  sub_276A56B6C(a7, v168);
                  sub_276A57694(a7, "]", 1);
                }

                if (v102)
                {
                  v144 = *(a1 + 48);
                  v147 = *(v144 + 8);
                  v145 = v144 + 8;
                  v146 = v147;
                  if (!v147)
                  {
                    goto LABEL_367;
                  }

                  v148 = v145;
                  do
                  {
                    if (*(v146 + 32) >= v186)
                    {
                      v148 = v146;
                    }

                    v146 = *(v146 + 8 * (*(v146 + 32) < v186));
                  }

                  while (v146);
                  if (v148 == v145 || v186 < *(v148 + 32))
                  {
LABEL_367:
                    if (*(a1 + 7) == 1)
                    {
                      sub_276A57694(a7, " {\n", 3);
                      std::string::append(a7 + 1, "  ");
                      sub_276A57694(a7, " MISSING_OBJECT_ERROR\n", 22);
                      sub_276A5309C(a7);
                      sub_276A57694(a7, "}", 1);
                    }
                  }
                }

                v149 = 1;
                sub_276A57694(a7, "\n", 1);
                v150 = 1;
                goto LABEL_393;
              }
            }

            else
            {
              v102 = 1;
              if (v101)
              {
                goto LABEL_313;
              }
            }

            v103 = *v164;
            if (!*v164)
            {
              goto LABEL_260;
            }

            v104 = v164;
            do
            {
              v105 = v103[4];
              v106 = v105 >= v186;
              v107 = v105 < v186;
              if (v106)
              {
                v104 = v103;
              }

              v103 = v103[v107];
            }

            while (v103);
            if (v104 == v164 || v186 < v104[4])
            {
LABEL_260:
              sub_276A57D14(a1 + 56, &v186);
              if ((*(a1 + 8) & 1) == 0)
              {
                v108 = v102 ? " id: " : " weak_id: ";
                v109 = v102 ? 5 : 10;
                sub_276A57694(a7, v108, v109);
                google::protobuf::SimpleItoa(v186, v110, out);
                v111 = out[23] >= 0 ? out : *out;
                v112 = out[23] >= 0 ? out[23] : *&out[8];
                sub_276A57694(a7, v111, v112);
                if (out[23] < 0)
                {
                  operator delete(*out);
                }
              }

              if ((HIDWORD(v179) | v179) == 1)
              {
                if (HIDWORD(v179))
                {
                  v113 = " uuid: ";
                }

                else
                {
                  v113 = " uuid_path: ";
                }

                if (HIDWORD(v179))
                {
                  v114 = 7;
                }

                else
                {
                  v114 = 12;
                }

                sub_276A57694(a7, v113, v114);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v115 = &__p;
                }

                else
                {
                  v115 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v116 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v116 = __p.__r_.__value_.__r.__words[1];
                }

                sub_276A57694(a7, v115, v116);
              }

              v117 = *(a1 + 24);
              if (v117)
              {
                (*(v117 + 16))(out);
                v118 = out[23] >= 0 ? out : *out;
                v119 = out[23] >= 0 ? out[23] : *&out[8];
                sub_276A57694(a7, v118, v119);
                if (out[23] < 0)
                {
                  operator delete(*out);
                }
              }

              v120 = *(a1 + 48);
              v123 = *(v120 + 8);
              v121 = (v120 + 8);
              v122 = v123;
              if (v123)
              {
                v124 = v121;
                do
                {
                  if (v122[4] >= v186)
                  {
                    v124 = v122;
                  }

                  v122 = v122[v122[4] < v186];
                }

                while (v122);
                if (v124 != v121 && v186 >= v124[4])
                {
                  sub_276A57694(a7, " {\n", 3);
                  std::string::append(a7 + 1, "  ");
                  v161 = v124[8];
                  v160 = v124[9];
                  if (v160)
                  {
                    atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_2769C1430(v160);
                  }

                  if (v161)
                  {
                    sub_276A5F6FC();
                  }

                  sub_276A517A8(out, 0);
                }
              }

              if (*(a1 + 7) != 1)
              {
                v150 = 0;
                v149 = 1;
                goto LABEL_393;
              }

              sub_276A57694(a7, " {\n", 3);
              std::string::append(a7 + 1, "  ");
              if (v165)
              {
                *out = v186;
                v125 = sub_276A57C60(v165, out);
                if (v125)
                {
                  v126 = " MISSING_OBJECT_ERROR\n";
                }

                else
                {
                  v126 = " CULLED_OBJECT\n";
                }

                if (v125)
                {
                  v127 = 22;
                }

                else
                {
                  v127 = 15;
                }
              }

              else
              {
                v127 = 22;
                v126 = " MISSING_OBJECT_ERROR\n";
              }

              sub_276A57694(a7, v126, v127);
              sub_276A5309C(a7);
              v149 = 1;
              sub_276A57694(a7, "}", 1);
              goto LABEL_391;
            }

            goto LABEL_313;
          }

          goto LABEL_189;
        }

        if (HIDWORD(v179))
        {
          if (*(a5 + 60) == 3)
          {
            Message = google::protobuf::Reflection::GetRepeatedMessage(a4, v173, a5, v23);
          }

          else
          {
            Message = google::protobuf::Reflection::GetMessage(a4, v173, a5, 0);
          }

          v189 = 0;
          v181 = 0;
          sub_276A564B8(Message, &v189, &v181);
          v80 = v189;
          v81 = v181;
          *uu = v189;
          v188 = v181;
          memset(out, 0, sizeof(out));
          uuid_unparse_upper(uu, out);
          sub_276A4D46C(&v180, out);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v180;
          v82 = *(a1 + 16);
          if (v82)
          {
            v186 = (*(v82 + 16))(v82, v80, v81);
            HIDWORD(v179) = 1;
            if (v186)
            {
              goto LABEL_245;
            }
          }

          else
          {
            HIDWORD(v179) = 1;
          }

          v83 = " uuid: ";
          goto LABEL_372;
        }

        if (v179)
        {
          if (*(a5 + 60) == 3)
          {
            v79 = google::protobuf::Reflection::GetRepeatedMessage(a4, v173, a5, v23);
          }

          else
          {
            v79 = google::protobuf::Reflection::GetMessage(a4, v173, a5, 0);
          }

          *out = 0;
          v180.__r_.__value_.__r.__words[0] = 0;
          if (sub_276A56588(v79, out, &v180, &__p) && (v100 = *(a1 + 16)) != 0)
          {
            v186 = (*(v100 + 16))(v100, *out, v180.__r_.__value_.__r.__words[0]);
            v179 = 1;
            if (v186)
            {
              goto LABEL_245;
            }
          }

          else
          {
            v179 = 1;
          }

          v83 = " uuid_path: ";
          goto LABEL_372;
        }

        v179 = 0;
LABEL_189:
        if (HIDWORD(v179))
        {
          v83 = " uuid: ";
        }

        else
        {
          v83 = " uuid_path: ";
        }

        if ((HIDWORD(v179) | v179) == 1)
        {
          a7 = v166;
          v12 = v167;
          a1 = v170;
LABEL_372:
          v151 = strlen(v83);
          sub_276A57694(a7, v83, v151);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v152 = &__p;
          }

          else
          {
            v152 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v153 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v153 = __p.__r_.__value_.__r.__words[1];
          }

          sub_276A57694(a7, v152, v153);
          goto LABEL_379;
        }

        a7 = v166;
        a1 = v170;
        if (HIDWORD(v178))
        {
          v12 = v167;
          if ((*(v170 + 8) & 1) == 0)
          {
            sub_276A57694(v166, " data_id: ", 10);
            google::protobuf::SimpleItoa(v186, v84, out);
            v85 = out[23] >= 0 ? out : *out;
            v86 = out[23] >= 0 ? out[23] : *&out[8];
            sub_276A57694(v166, v85, v86);
            if (out[23] < 0)
            {
              operator delete(*out);
            }
          }

          v87 = *(v170 + 32);
          if (v87)
          {
            (*(v87 + 16))(out);
            v88 = out[23] >= 0 ? out : *out;
            v89 = out[23] >= 0 ? out[23] : *&out[8];
            sub_276A57694(v166, v88, v89);
            if (out[23] < 0)
            {
              operator delete(*out);
            }
          }

          if ((*(v170 + 8) & 1) != 0 || v184 == v183)
          {
            v179 = 0;
            HIDWORD(v178) = 1;
          }

          else
          {
            sub_276A57694(v166, " {\n", 3);
            std::string::append(v166 + 1, "  ");
            sub_276A57694(v166, " object_identifiers {\n", 22);
            std::string::append(v166 + 1, "  ");
            v90 = v183;
            v91 = v184;
            while (v90 != v91)
            {
              sub_276A57694(v166, " id: ", 5);
              google::protobuf::SimpleItoa(*v90, v92, out);
              if (out[23] >= 0)
              {
                v93 = out;
              }

              else
              {
                v93 = *out;
              }

              if (out[23] >= 0)
              {
                v94 = out[23];
              }

              else
              {
                v94 = *&out[8];
              }

              sub_276A57694(v166, v93, v94);
              if (out[23] < 0)
              {
                operator delete(*out);
              }

              v95 = *(v170 + 24);
              if (v95)
              {
                v96 = *v90;
                (*(v95 + 16))(out);
                v97 = out[23] >= 0 ? out : *out;
                v98 = out[23] >= 0 ? out[23] : *&out[8];
                sub_276A57694(v166, v97, v98);
                if (out[23] < 0)
                {
                  operator delete(*out);
                }
              }

              sub_276A57694(v166, "\n", 1);
              ++v90;
            }

            sub_276A5309C(v166);
            sub_276A57694(v166, "}\n", 2);
            sub_276A5309C(v166);
            sub_276A57694(v166, "}", 1);
          }
        }

        else
        {
          v12 = v167;
          if (v178)
          {
            sub_276A57694(v166, ": ", 2);
            if (*(a5 + 60) == 3)
            {
              v99 = google::protobuf::Reflection::GetRepeatedMessage(a4, v173, a5, v23);
            }

            else
            {
              v99 = google::protobuf::Reflection::GetMessage(a4, v173, a5, 0);
            }

            sub_276A56C04(v99, v99, v166);
            v179 = 0;
            v178 = 1;
          }

          else if (HIDWORD(v177))
          {
            sub_276A57694(v166, ": ", 2);
            if (*(a5 + 60) == 3)
            {
              v159 = google::protobuf::Reflection::GetRepeatedMessage(a4, v173, a5, v23);
            }

            else
            {
              v159 = google::protobuf::Reflection::GetMessage(a4, v173, a5, 0);
            }

            sub_276A57124(v159, v159, v166);
            v178 = 0;
            v179 = 0;
            HIDWORD(v177) = 1;
          }

          else
          {
            if (!v177)
            {
              if (*(v170 + 4) == 1)
              {
                sub_276A57694(v166, " { ", 3);
              }

              else
              {
                sub_276A57694(v166, " {\n", 3);
                std::string::append(v166 + 1, "  ");
              }

              goto LABEL_37;
            }

            if (*(a5 + 60) == 3)
            {
              v162 = google::protobuf::Reflection::GetRepeatedMessage(a4, v173, a5, v23);
            }

            else
            {
              v162 = google::protobuf::Reflection::GetMessage(a4, v173, a5, 0);
            }

            sub_276A5726C(v162, v162, v166);
            v178 = 0;
            v179 = 0;
            v177 = 1;
          }
        }

LABEL_379:
        v149 = 0;
        if ((v179 & 0x100000000) != 0 || (v179 & 1) != 0 || (v178 & 0x100000000) != 0 || (v178 & 1) != 0 || (v177 & 0x100000000) != 0)
        {
          v150 = 0;
          goto LABEL_393;
        }

        v150 = 0;
        if ((v177 & 1) == 0)
        {
          if (*(a5 + 60) == 3)
          {
            v154 = v23;
          }

          else
          {
            v154 = -1;
          }

          sub_276A557B8(a1, v172, a3, a4, a5, v154, a6, a7, v12);
          if (v174)
          {
            sub_276A57694(a7, " [rule = ", 9);
            sub_276A56B6C(a7, v168);
            sub_276A57694(a7, "] ", 2);
          }

          v149 = 0;
          v178 = 0;
          v179 = 0;
          v177 = 0;
LABEL_391:
          v150 = 0;
        }

LABEL_393:
        v155 = *(a5 + 48);
        if (v155)
        {
          *uu = google::protobuf::FieldDescriptor::TypeOnceInit;
          v189 = a5;
          if (atomic_load_explicit(v155, memory_order_acquire) != -1)
          {
            *out = uu;
            *&out[8] = &v189;
            v180.__r_.__value_.__r.__words[0] = out;
            std::__call_once(v155, &v180, sub_2769C149C);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a5 + 56)] != 10)
        {
          v157 = *(a1 + 4);
          goto LABEL_402;
        }

        if (!v149)
        {
          v157 = *(a1 + 4);
          if ((HIDWORD(v179) | v179 | HIDWORD(v178) | v178 | HIDWORD(v177) | v177))
          {
LABEL_402:
            if (v157)
            {
              v158 = " ";
            }

            else
            {
              v158 = "\n";
            }

            v156 = 1;
          }

          else if (v157)
          {
            v156 = 2;
            v158 = "} ";
          }

          else
          {
            sub_276A5309C(a7);
            v156 = 2;
            v158 = "}\n";
          }

LABEL_406:
          sub_276A57694(a7, v158, v156);
          goto LABEL_407;
        }

        if ((v150 & 1) == 0)
        {
          if (v174)
          {
            sub_276A57694(a7, " [rule = ", 9);
            sub_276A56B6C(a7, v168);
            v156 = 1;
            sub_276A57694(a7, "]", 1);
          }

          else
          {
            v156 = 1;
          }

          v158 = "\n";
          goto LABEL_406;
        }

LABEL_407:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LODWORD(v20) = v183;
        if (v183)
        {
          v184 = v183;
          operator delete(v183);
        }

        if (++v23 == v176)
        {
          goto LABEL_444;
        }
      }

      if (v26[1] == 13 && **v26 == 0x656665522E505354 && *(*v26 + 5) == 0x65636E6572656665)
      {
LABEL_84:
        v177 = 0;
        v178 = 0;
        v28 = 0;
        v179 = 0;
        v38 = 1;
        goto LABEL_166;
      }

      if (v26[1] == 8 && **v26 == 0x444955552E505354 || v26[1] == 16 && (**v26 == 0x444955552E505354 ? (v31 = *(*v26 + 8) == 0x6C616E7265746E49) : (v31 = 0), v31))
      {
LABEL_121:
        v177 = 0;
        v178 = 0;
        v28 = 0;
        v179 = 0x100000000;
        goto LABEL_164;
      }

      if (v26[1] == 12 && **v26 == 0x444955552E505354 && *(*v26 + 8) == 1752457552)
      {
        v177 = 0;
        v178 = 0;
        v28 = 0;
        v179 = 1;
        goto LABEL_164;
      }

      if (v26[1] == 26)
      {
        v28 = **v26 == 0x706D6F432E505354 && *(*v26 + 8) == 0x746144746E656E6FLL && *(*v26 + 16) == 0x6E65726566655261 && *(*v26 + 24) == 25955;
        if (v28)
        {
          v179 = 0;
          v177 = 0;
          LODWORD(v178) = 0;
          HIDWORD(v178) = v28;
          goto LABEL_164;
        }
      }

      else
      {
        v28 = 0;
      }

      if (v26[1] != 17)
      {
        v178 = 0;
        v179 = 0;
        v177 = 0;
        if (v28)
        {
          goto LABEL_164;
        }

LABEL_131:
        if (v26[1] == 9)
        {
          if (**v26 == 0x6F6C6F432E505354 && *(*v26 + 8) == 114)
          {
            goto LABEL_160;
          }

          if ((v27 & 0x80) == 0)
          {
            goto LABEL_159;
          }
        }

        if (v26[1] != 20)
        {
          goto LABEL_148;
        }

        if (**v26 != 0x75636F442E505354 || *(*v26 + 8) != 0x69766552746E656DLL || *(*v26 + 16) != 1852795251)
        {
          if ((v27 & 0x80) != 0)
          {
LABEL_148:
            if (v26[1] == 18)
            {
              v26 = *v26;
LABEL_150:
              v179 = 0;
              HIDWORD(v177) = 0;
              LODWORD(v178) = 0;
              v59 = *v26;
              v60 = v26[1];
              v61 = *(v26 + 8);
              v52 = v59 == 0x72636E452E505354 && v60 == 0x6E496E6F69747079 && v61 == 28518;
LABEL_120:
              LODWORD(v177) = v52;
              goto LABEL_164;
            }
          }

          else
          {
LABEL_146:
            if (v27 == 18)
            {
              goto LABEL_150;
            }
          }

LABEL_159:
          v179 = 0;
          v177 = 0;
          LODWORD(v178) = 0;
          goto LABEL_164;
        }

        v179 = 0;
        LODWORD(v177) = 0;
        v51 = 1;
        goto LABEL_163;
      }

      v29 = *v26;
      goto LABEL_95;
    }
  }

LABEL_444:

  v163 = *MEMORY[0x277D85DE8];
}

void sub_276A5520C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void sub_276A55324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v14 = a6;
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2769C1430(v6);
  }

  if (v7)
  {
    if (v7[2])
    {
      v8 = *v7;
      if (*v7 != v7 + 1)
      {
        v9 = v8[4];
        v15 = 0;
        v16 = 0;
        UnsafePointer(v9, &v16 + 1, &v16, &v15);
        v11 = v8[5];
        v10 = v8[6];
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = v8[7];
        sub_276A5F6FC();
      }
    }
  }
}

void sub_276A557B8(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, google::protobuf::Reflection *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = a9;
  v18 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2769C1430(v17);
  }

  v19 = *(a5 + 48);
  if (v19)
  {
    __p[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    __s1.__r_.__value_.__r.__words[0] = a5;
    if (atomic_load_explicit(v19, memory_order_acquire) != -1)
    {
      v80 = __p;
      p_s1 = &__s1;
      v78[0] = &v80;
      std::__call_once(v19, v78, sub_2769C149C);
    }
  }

  v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a5 + 56)];
  if (v20 <= 5)
  {
    if (v20 <= 2)
    {
      if (v20 == 1)
      {
        if (*(a5 + 60) == 3)
        {
          RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(a4, v18, a5, a6);
        }

        else
        {
          RepeatedInt32 = google::protobuf::Reflection::GetInt32(a4, v18, a5);
        }

        google::protobuf::SimpleItoa(RepeatedInt32, v28, &v80);
        if (v82 >= 0)
        {
          v37 = &v80;
        }

        else
        {
          v37 = v80;
        }

        if (v82 >= 0)
        {
          v38 = HIBYTE(v82);
        }

        else
        {
          v38 = p_s1;
        }
      }

      else
      {
        if (v20 != 2)
        {
          goto LABEL_185;
        }

        if (*(a5 + 60) == 3)
        {
          RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(a4, v18, a5, a6);
        }

        else
        {
          RepeatedInt64 = google::protobuf::Reflection::GetInt64(a4, v18, a5);
        }

        google::protobuf::SimpleItoa(RepeatedInt64, v25, &v80);
        if (v82 >= 0)
        {
          v37 = &v80;
        }

        else
        {
          v37 = v80;
        }

        if (v82 >= 0)
        {
          v38 = HIBYTE(v82);
        }

        else
        {
          v38 = p_s1;
        }
      }
    }

    else if (v20 == 3)
    {
      if (*(a5 + 60) == 3)
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(a4, v18, a5, a6);
      }

      else
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetUInt32(a4, v18, a5);
      }

      google::protobuf::SimpleItoa(RepeatedUInt32, v32, &v80);
      if (v82 >= 0)
      {
        v37 = &v80;
      }

      else
      {
        v37 = v80;
      }

      if (v82 >= 0)
      {
        v38 = HIBYTE(v82);
      }

      else
      {
        v38 = p_s1;
      }
    }

    else if (v20 == 4)
    {
      if (*(a5 + 60) == 3)
      {
        RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(a4, v18, a5, a6);
      }

      else
      {
        RepeatedUInt64 = google::protobuf::Reflection::GetUInt64(a4, v18, a5);
      }

      google::protobuf::SimpleItoa(RepeatedUInt64, v35, &v80);
      if (v82 >= 0)
      {
        v37 = &v80;
      }

      else
      {
        v37 = v80;
      }

      if (v82 >= 0)
      {
        v38 = HIBYTE(v82);
      }

      else
      {
        v38 = p_s1;
      }
    }

    else
    {
      if (*(a5 + 60) == 3)
      {
        RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(a4, v18, a5, a6);
      }

      else
      {
        RepeatedDouble = google::protobuf::Reflection::GetDouble(a4, v18, a5);
      }

      google::protobuf::SimpleDtoa(RepeatedDouble, v21, &v80);
      if (v82 >= 0)
      {
        v37 = &v80;
      }

      else
      {
        v37 = v80;
      }

      if (v82 >= 0)
      {
        v38 = HIBYTE(v82);
      }

      else
      {
        v38 = p_s1;
      }
    }

    goto LABEL_96;
  }

  if (v20 <= 7)
  {
    if (v20 == 6)
    {
      if (*(a5 + 60) == 3)
      {
        RepeatedFloat = google::protobuf::Reflection::GetRepeatedFloat(a4, v18, a5, a6);
      }

      else
      {
        RepeatedFloat = google::protobuf::Reflection::GetFloat(a4, v18, a5);
      }

      google::protobuf::SimpleFtoa(RepeatedFloat, v29, &v80);
      if (v82 >= 0)
      {
        v37 = &v80;
      }

      else
      {
        v37 = v80;
      }

      if (v82 >= 0)
      {
        v38 = HIBYTE(v82);
      }

      else
      {
        v38 = p_s1;
      }

LABEL_96:
      sub_276A57694(a8, v37, v38);
LABEL_183:
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v80);
      }

      goto LABEL_185;
    }

    if (*(a5 + 60) == 3)
    {
      RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(a4, v18, a5, a6);
    }

    else
    {
      RepeatedBool = google::protobuf::Reflection::GetBool(a4, v18, a5);
    }

    if (RepeatedBool)
    {
      v39 = "true";
    }

    else
    {
      v39 = "false";
    }

    if (RepeatedBool)
    {
      v40 = 4;
    }

    else
    {
      v40 = 5;
    }

LABEL_51:
    sub_276A57694(a8, v39, v40);
    goto LABEL_185;
  }

  switch(v20)
  {
    case 8:
      if (*(a5 + 60) == 3)
      {
        RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(a4, v18, a5, a6);
      }

      else
      {
        RepeatedEnum = google::protobuf::Reflection::GetEnum(a4, v18, a5);
      }

      v41 = *(*RepeatedEnum + 23);
      if (v41 >= 0)
      {
        v39 = *RepeatedEnum;
      }

      else
      {
        v39 = **RepeatedEnum;
      }

      if (v41 >= 0)
      {
        v40 = *(*RepeatedEnum + 23);
      }

      else
      {
        v40 = *(*RepeatedEnum + 2);
      }

      goto LABEL_51;
    case 9:
      v80 = 0;
      p_s1 = 0;
      v82 = 0;
      if (*(a5 + 60) == 3)
      {
        RepeatedStringReference = google::protobuf::Reflection::GetRepeatedStringReference(a4, v18, a5, a6);
      }

      else
      {
        RepeatedStringReference = google::protobuf::Reflection::GetStringReference(a4, v18, a5);
      }

      v43 = RepeatedStringReference;
      v44 = *(a5 + 68);
      if (v44 != 12 && v44 != 2)
      {
        goto LABEL_111;
      }

      v45 = *(a2 + 8);
      a3 = *(a2 + 16);
      if (a3)
      {
        atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v45 + 16))(v78);
      if (v79 < 0)
      {
        if (v78[1] != 12)
        {
          goto LABEL_111;
        }

        v46 = v78[0];
      }

      else
      {
        if (v79 != 12)
        {
          goto LABEL_111;
        }

        v46 = v78;
      }

      v47 = *v46;
      v48 = *(v46 + 2);
      if (v47 == 0x617461442E505354 && v48 == 1868983881)
      {
        v50 = 1;
        goto LABEL_149;
      }

LABEL_111:
      v50 = 0;
      if (v44 <= 4)
      {
        if (v44 != 1)
        {
          if (v44 != 2)
          {
            goto LABEL_172;
          }

          goto LABEL_149;
        }

LABEL_117:
        v51 = *(a2 + 8);
        v52 = *(a2 + 16);
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v51 + 16))(__p);
        v53 = v77;
        if (v77 < 0 && __p[1] == 25)
        {
          v54 = *__p[0] == 0x617461442E505354 && *(__p[0] + 1) == 0x69747265706F7250;
          v55 = v54 && *(__p[0] + 2) == 0x567972746E457365;
          if (v55 && *(__p[0] + 24) == 49)
          {
            v57 = 1;
LABEL_145:
            operator delete(__p[0]);
LABEL_146:
            if (v52)
            {
              sub_2769C1430(v52);
            }

            if (!v57)
            {
              goto LABEL_172;
            }

            goto LABEL_154;
          }
        }

        v57 = 0;
        if (v44 == 5)
        {
LABEL_144:
          if ((v53 & 0x80) == 0)
          {
            goto LABEL_146;
          }

          goto LABEL_145;
        }

        v58 = *(a2 + 8);
        v59 = *(a2 + 16);
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v58 + 16))(&__s1);
        v60 = a1;
        if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0 && __s1.__r_.__value_.__l.__size_ == 47)
        {
          v61 = memcmp(__s1.__r_.__value_.__l.__data_, "TSP.SupportMetadata.DataCollaborationProperties", 0x2FuLL) == 0;
        }

        else
        {
          v61 = 0;
          v57 = 0;
          if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_141:
            if (v59)
            {
              sub_2769C1430(v59);
            }

            v53 = v77;
            a1 = v60;
            goto LABEL_144;
          }
        }

        operator delete(__s1.__r_.__value_.__l.__data_);
        v57 = v61;
        goto LABEL_141;
      }

      if (v44 != 12)
      {
        if (v44 != 5)
        {
LABEL_172:
          sub_276A57694(a8, "", 1);
          if (*(a1 + 6) == 1)
          {
            google::protobuf::strings::Utf8SafeCEscape(v43);
          }

          google::protobuf::CEscape(v43, v71, &__s1);
          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = &__s1;
          }

          else
          {
            v72 = __s1.__r_.__value_.__r.__words[0];
          }

          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v73 = __s1.__r_.__value_.__r.__words[1];
          }

          sub_276A57694(a8, v72, v73);
          if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s1.__r_.__value_.__l.__data_);
          }

          sub_276A57694(a8, "", 1);
          goto LABEL_183;
        }

        goto LABEL_117;
      }

LABEL_149:
      if (v79 < 0)
      {
        operator delete(v78[0]);
      }

      if (a3)
      {
        sub_2769C1430(a3);
      }

      if ((v50 & 1) == 0)
      {
        goto LABEL_172;
      }

LABEL_154:
      v62 = a1;
      v74 = v16;
      v63 = *(v43 + 23);
      v64 = v43;
      if (v63 < 0)
      {
        v64 = *v43;
        v63 = *(v43 + 8);
      }

      for (; v63; --v63)
      {
        v65 = *v64++;
        snprintf(&__s1, 3uLL, "%02x", v65);
        sub_276A57694(a8, &__s1, 2);
      }

      v66 = *(v62 + 40);
      v16 = v74;
      if (v66)
      {
        (*(v66 + 16))(&__s1);
        size = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
        v68 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __s1.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          sub_276A57694(a8, " ", 1);
          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = &__s1;
          }

          else
          {
            v69 = __s1.__r_.__value_.__r.__words[0];
          }

          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v70 = __s1.__r_.__value_.__r.__words[1];
          }

          sub_276A57694(a8, v69, v70);
          v68 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
        }

        if (v68 < 0)
        {
          operator delete(__s1.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_183;
    case 10:
      if (*(a5 + 60) == 3)
      {
        RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(a4, v18, a5, a6);
      }

      else
      {
        RepeatedMessage = google::protobuf::Reflection::GetMessage(a4, v18, a5, 0);
      }

      v42 = (*(*RepeatedMessage + 24))(RepeatedMessage);
      sub_276A5167C(&v80, v42);
  }

LABEL_185:
}