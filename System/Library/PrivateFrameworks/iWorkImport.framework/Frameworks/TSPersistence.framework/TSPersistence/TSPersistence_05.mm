uint64_t TSP::Range::RequiredFieldsByteSizeFallback(TSP::Range *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

const InternalMetadata *TSP::Range::ByteSizeLong(TSP::Range *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v5 = TSP::Range::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v5 = (((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2);
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

void TSP::Range::MergeFrom(TSP::Range *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Range::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Range::MergeFrom(void *this, const TSP::Range *a2)
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
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

void TSP::Range::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Range::Clear(this);

    TSP::Range::MergeFrom(this, a2);
  }
}

TSP::Range *TSP::Range::CopyFrom(TSP::Range *this, const TSP::Range *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Range::Clear(this);

    return TSP::Range::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::Range::InternalSwap(TSP::Range *this, google::protobuf::Arena **a2)
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

uint64_t TSP::Range::GetMetadata(TSP::Range *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[16];
  v2 = off_2812FC248[17];
  return result;
}

void *TSP::Date::Date(void *this, Arena *a2)
{
  *this = &unk_2885C2230;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2885C2230;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

TSP::Date *TSP::Date::Date(TSP::Date *this, const TSP::Date *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2230;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSP::Date::~Date(TSP::Date *this)
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

uint64_t *TSP::Date::default_instance(TSP::Date *this)
{
  if (atomic_load_explicit(scc_info_Date_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Date_TSPMessages_2eproto);
  }

  return &TSP::_Date_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Date::Clear(TSP::Date *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::Date::_InternalParse(TSP::Date *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v16 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v16, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v16 + 1);
      v8 = *v16;
      if ((*v16 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v9 - 128));
      v16 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_23;
      }

      v7 = TagFallback;
      v8 = v14;
LABEL_6:
      if (v8 == 9)
      {
        *(this + 3) = *v7;
        v16 = (v7 + 8);
        v6 = 1;
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
          goto LABEL_22;
        }

        v11 = *(this + 1);
        if (v11)
        {
          v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v12 = sub_2769F617C(this + 1);
          v7 = v16;
        }

        v16 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7, a3, v5);
        if (!v16)
        {
LABEL_23:
          v16 = 0;
          goto LABEL_22;
        }
      }

      if (sub_2769F6104(a3, &v16, *(a3 + 23)))
      {
        goto LABEL_22;
      }
    }

    v7 = (v16 + 2);
LABEL_5:
    v16 = v7;
    goto LABEL_6;
  }

LABEL_22:
  *(this + 4) |= v6;
  return v16;
}

const google::protobuf::UnknownFieldSet *TSP::Date::_InternalSerialize(TSP::Date *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::Date::ByteSizeLong(TSP::Date *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(this + 16))
  {
    v4 = 9;
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

void TSP::Date::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Date::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

double TSP::Date::MergeFrom(google::protobuf::Arena **this, const TSP::Date *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSP::Date::CopyFrom(char **this, char **lpsrc)
{
  if (lpsrc != this)
  {
    v6 = *(this + 8);
    v5 = (this + 1);
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    TSP::Date::MergeFrom(this, lpsrc);
  }
}

double TSP::Date::CopyFrom(TSP::Date *this, const TSP::Date *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    return TSP::Date::MergeFrom(this, a2);
  }

  return result;
}

double TSP::Date::InternalSwap(TSP::Date *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 3);
  *(this + 3) = a2[3];
  *(a2 + 3) = result;
  return result;
}

uint64_t TSP::Date::GetMetadata(TSP::Date *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[18];
  v2 = off_2812FC248[19];
  return result;
}

TSP::IndexSet *TSP::IndexSet::IndexSet(TSP::IndexSet *this, Arena *a2)
{
  *this = &unk_2885C22E0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_IndexSet_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_IndexSet_TSPMessages_2eproto);
  }

  return this;
}

TSP::IndexSet *TSP::IndexSet::IndexSet(TSP::IndexSet *this, const TSP::IndexSet *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C22E0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A434D0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSP::IndexSet::~IndexSet(TSP::IndexSet *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A43438(this + 2);
}

{
  TSP::IndexSet::~IndexSet(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::IndexSet::default_instance(TSP::IndexSet *this)
{
  if (atomic_load_explicit(scc_info_IndexSet_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_IndexSet_TSPMessages_2eproto);
  }

  return &TSP::_IndexSet_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::IndexSet::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
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

google::protobuf::internal *TSP::IndexSet::_InternalParse(TSP::IndexSet *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD3C40(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *TSP::IndexSet::_InternalSerialize(TSP::IndexSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSP::Range::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::IndexSet::ByteSizeLong(TSP::IndexSet *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = TSP::Range::ByteSizeLong(v9, a2, a3, a4);
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

void TSP::IndexSet::MergeFrom(TSP::IndexSet *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::IndexSet::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::IndexSet::MergeFrom(void *this, const TSP::IndexSet *a2)
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
    this = sub_276A434D0(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
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

void TSP::IndexSet::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::IndexSet::Clear(this);

    TSP::IndexSet::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::IndexSet::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::IndexSet *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::IndexSet::Clear(this);

    return TSP::IndexSet::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::IndexSet::IsInitialized(TSP::IndexSet *this)
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

__n128 TSP::IndexSet::InternalSwap(TSP::IndexSet *this, TSP::IndexSet *a2)
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

uint64_t TSP::IndexSet::GetMetadata(TSP::IndexSet *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[20];
  v2 = off_2812FC248[21];
  return result;
}

double TSP::Color::Color(TSP::Color *this, Arena *a2)
{
  *this = &unk_2885C2390;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *&result = 0x100000001;
  *(this + 7) = 0x100000001;
  *(this + 16) = 1065353216;
  return result;
}

{
  *this = &unk_2885C2390;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *&result = 0x100000001;
  *(this + 7) = 0x100000001;
  *(this + 16) = 1065353216;
  return result;
}

TSP::Color *TSP::Color::Color(TSP::Color *this, const TSP::Color *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2390;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(this + 52) = *(a2 + 52);
  *(this + 40) = v7;
  *(this + 24) = v6;
  return this;
}

void TSP::Color::~Color(TSP::Color *this)
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

uint64_t *TSP::Color::default_instance(TSP::Color *this)
{
  if (atomic_load_explicit(scc_info_Color_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Color_TSPMessages_2eproto);
  }

  return &TSP::_Color_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Color::Clear(TSP::Color *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
  }

  if ((v1 & 0x700) != 0)
  {
    *(this + 7) = 0x100000001;
    *(this + 16) = 1065353216;
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

google::protobuf::internal *TSP::Color::_InternalParse(TSP::Color *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v34 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v34, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v34 + 1);
      v9 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v10 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_77;
      }

      v8 = TagFallback;
      v9 = v21;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 6)
      {
        if (v9 >> 3 <= 3)
        {
          if (v11 == 1)
          {
            if (v9 == 8)
            {
              v23 = (v8 + 1);
              v22 = *v8;
              if ((v22 & 0x8000000000000000) == 0)
              {
                goto LABEL_43;
              }

              v24 = *v23;
              v22 = (v24 << 7) + v22 - 128;
              if (v24 < 0)
              {
                v34 = google::protobuf::internal::VarintParseSlow64(v8, v22);
                if (!v34)
                {
                  goto LABEL_77;
                }
              }

              else
              {
                v23 = (v8 + 2);
LABEL_43:
                v34 = v23;
              }

              if ((v22 - 1) > 2)
              {
                sub_276BD43CC(this + 1);
              }

              else
              {
                *(this + 4) |= 0x200u;
                *(this + 15) = v22;
              }

              goto LABEL_59;
            }
          }

          else if (v11 == 3 && v9 == 29)
          {
            v19 = *v8;
            v12 = (v8 + 4);
            v6 |= 1u;
            *(this + 6) = v19;
            goto LABEL_58;
          }
        }

        else if (v11 == 4)
        {
          if (v9 == 37)
          {
            v28 = *v8;
            v12 = (v8 + 4);
            v6 |= 2u;
            *(this + 7) = v28;
            goto LABEL_58;
          }
        }

        else if (v11 == 5)
        {
          if (v9 == 45)
          {
            v25 = *v8;
            v12 = (v8 + 4);
            v6 |= 4u;
            *(this + 8) = v25;
            goto LABEL_58;
          }
        }

        else if (v11 == 6 && v9 == 53)
        {
          v14 = *v8;
          v12 = (v8 + 4);
          v6 |= 0x400u;
          *(this + 16) = v14;
          goto LABEL_58;
        }
      }

      else if (v9 >> 3 > 9)
      {
        if (v11 == 10)
        {
          if (v9 == 85)
          {
            v30 = *v8;
            v12 = (v8 + 4);
            v6 |= 0x40u;
            *(this + 12) = v30;
            goto LABEL_58;
          }
        }

        else if (v11 == 11)
        {
          if (v9 == 93)
          {
            v27 = *v8;
            v12 = (v8 + 4);
            v6 |= 0x80u;
            *(this + 13) = v27;
            goto LABEL_58;
          }
        }

        else if (v11 == 12 && v9 == 96)
        {
          v16 = (v8 + 1);
          v15 = *v8;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v34 = google::protobuf::internal::VarintParseSlow64(v8, v15);
            if (!v34)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v16 = (v8 + 2);
LABEL_27:
            v34 = v16;
          }

          if ((v15 - 1) > 1)
          {
            sub_276BD4390(this + 1);
          }

          else
          {
            *(this + 4) |= 0x100u;
            *(this + 14) = v15;
          }

          goto LABEL_59;
        }
      }

      else if (v11 == 7)
      {
        if (v9 == 61)
        {
          v29 = *v8;
          v12 = (v8 + 4);
          v6 |= 8u;
          *(this + 9) = v29;
          goto LABEL_58;
        }
      }

      else if (v11 == 8)
      {
        if (v9 == 69)
        {
          v26 = *v8;
          v12 = (v8 + 4);
          v6 |= 0x10u;
          *(this + 10) = v26;
          goto LABEL_58;
        }
      }

      else if (v11 == 9 && v9 == 77)
      {
        v13 = *v8;
        v12 = (v8 + 4);
        v6 |= 0x20u;
        *(this + 11) = v13;
LABEL_58:
        v34 = v12;
        goto LABEL_59;
      }

      if (v9)
      {
        v31 = (v9 & 7) == 4;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        *(a3 + 20) = v9 - 1;
        goto LABEL_2;
      }

      v32 = *(this + 1);
      if (v32)
      {
        v33 = ((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v33 = sub_2769F617C(this + 1);
        v8 = v34;
      }

      v34 = google::protobuf::internal::UnknownFieldParse(v9, v33, v8, a3, v5);
      if (!v34)
      {
LABEL_77:
        v34 = 0;
        goto LABEL_2;
      }

LABEL_59:
      if (sub_2769F6104(a3, &v34, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v34 + 2);
LABEL_6:
    v34 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v34;
}

const google::protobuf::UnknownFieldSet *TSP::Color::_InternalSerialize(TSP::Color *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 15);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
        if (v6)
        {
          goto LABEL_24;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if (v6)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if (v6)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 6);
  *a2 = 29;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 7);
  *a2 = 37;
  *(a2 + 1) = v12;
  a2 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 8);
  *a2 = 45;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v6 & 0x400) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 16);
  *a2 = 53;
  *(a2 + 1) = v14;
  a2 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 9);
  *a2 = 61;
  *(a2 + 1) = v15;
  a2 += 5;
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 10);
  *a2 = 69;
  *(a2 + 1) = v16;
  a2 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 11);
  *a2 = 77;
  *(a2 + 1) = v17;
  a2 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 12);
  *a2 = 85;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((v6 & 0x80) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 13);
  *a2 = 93;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v6 & 0x100) != 0)
  {
LABEL_51:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 14);
    *a2 = 96;
    if (v20 > 0x7F)
    {
      a2[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++a2;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(a2 - 1) = v22;
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
    }
  }

LABEL_60:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v24 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::Color::ByteSizeLong(TSP::Color *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if ((v4 & 0x200) != 0)
  {
    v6 = *(this + 15);
    if (v6 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 4))
  {
    if (v4)
    {
      v5 += 5;
    }

    if ((v4 & 2) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 4) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 8) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 0x10) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 0x20) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 0x40) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 0x80) != 0)
    {
      v5 += 5;
    }
  }

  if ((v4 & 0x100) != 0)
  {
    v7 = *(this + 14);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  if ((v4 & 0x400) != 0)
  {
    v9 = (v5 + 5);
  }

  else
  {
    v9 = v5;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v9, this + 5, a4);
  }

  *(this + 5) = v9;
  return v9;
}

void TSP::Color::MergeFrom(TSP::Color *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Color::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Color::MergeFrom(void *this, const TSP::Color *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    v3[8] = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    v3[9] = *(a2 + 9);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    v3[10] = *(a2 + 10);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:
    v3[11] = *(a2 + 11);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        v3[4] |= v5;
        goto LABEL_14;
      }

LABEL_12:
      v3[13] = *(a2 + 13);
      goto LABEL_13;
    }

LABEL_27:
    v3[12] = *(a2 + 12);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x700) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v3[15] = *(a2 + 15);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v3[14] = *(a2 + 14);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v5 & 0x400) != 0)
  {
LABEL_18:
    v3[16] = *(a2 + 16);
  }

LABEL_19:
  v3[4] |= v5;
  return this;
}

void TSP::Color::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Color::Clear(this);

    TSP::Color::MergeFrom(this, a2);
  }
}

TSP::Color *TSP::Color::CopyFrom(TSP::Color *this, const TSP::Color *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Color::Clear(this);

    return TSP::Color::MergeFrom(v4, a2);
  }

  return this;
}

float TSP::Color::InternalSwap(TSP::Color *this, TSP::Color *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  LODWORD(v7) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  result = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t TSP::Color::GetMetadata(TSP::Color *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[22];
  v2 = off_2812FC248[23];
  return result;
}

TSP::Path_Element *TSP::Path_Element::Path_Element(TSP::Path_Element *this, Arena *a2)
{
  *this = &unk_2885C2440;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Path_Element_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Path_Element_TSPMessages_2eproto);
  }

  *(this + 12) = 1;
  return this;
}

TSP::Path_Element *TSP::Path_Element::Path_Element(TSP::Path_Element *this, const TSP::Path_Element *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2440;
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
    sub_276A43590(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TSP::Path_Element::~Path_Element(TSP::Path_Element *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A43438(this + 3);
}

{
  TSP::Path_Element::~Path_Element(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::Path_Element::default_instance(TSP::Path_Element *this)
{
  if (atomic_load_explicit(scc_info_Path_Element_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Path_Element_TSPMessages_2eproto);
  }

  return &TSP::_Path_Element_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Path_Element::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Point::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 1;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::Path_Element::_InternalParse(TSP::Path_Element *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
      if (v8 != 18)
      {
        goto LABEL_12;
      }

      v14 = (v7 - 1);
      while (1)
      {
        v15 = (v14 + 1);
        v28 = (v14 + 1);
        v16 = *(this + 5);
        if (!v16)
        {
          break;
        }

        v21 = *(this + 8);
        v17 = *v16;
        if (v21 < *v16)
        {
          *(this + 8) = v21 + 1;
          v18 = *&v16[2 * v21 + 2];
          goto LABEL_28;
        }

        if (v17 == *(this + 9))
        {
          goto LABEL_24;
        }

LABEL_25:
        *v16 = v17 + 1;
        v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(*(this + 3));
        v19 = *(this + 8);
        v20 = *(this + 5) + 8 * v19;
        *(this + 8) = v19 + 1;
        *(v20 + 8) = v18;
        v15 = v28;
LABEL_28:
        v14 = sub_276BD3AA0(a3, v18, v15);
        v28 = v14;
        if (!v14)
        {
          return 0;
        }

        if (*a3 <= v14 || *v14 != 18)
        {
          goto LABEL_40;
        }
      }

      v17 = *(this + 9);
LABEL_24:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v17 + 1);
      v16 = *(this + 5);
      v17 = *v16;
      goto LABEL_25;
    }

    if (v8 >> 3 == 1 && v8 == 8)
    {
      v23 = (v7 + 1);
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if (v24 < 0)
      {
        v28 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        if (!v28)
        {
          return 0;
        }
      }

      else
      {
        v23 = (v7 + 2);
LABEL_37:
        v28 = v23;
      }

      if ((v22 - 1) > 4)
      {
        sub_276BD43CC(this + 1);
      }

      else
      {
        *(this + 4) |= 1u;
        *(this + 12) = v22;
      }

      continue;
    }

LABEL_12:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

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

    v28 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
    if (!v28)
    {
      return 0;
    }

LABEL_40:
    ;
  }

  *(a3 + 20) = v8 - 1;
  return v28;
}

const google::protobuf::UnknownFieldSet *TSP::Path_Element::_InternalSerialize(TSP::Path_Element *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSP::Point::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::Path_Element::ByteSizeLong(TSP::Path_Element *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(this + 16))
  {
    v6 = *(this + 12);
    if (v6 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(this + 8);
  v8 = (v5 + v7);
  v9 = *(this + 5);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = TSP::Point::ByteSizeLong(v12, a2, a3, a4);
      v8 = (v8 + v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6));
      v11 -= 8;
    }

    while (v11);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v8, this + 5, a4);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

void TSP::Path_Element::MergeFrom(TSP::Path_Element *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Path_Element::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Path_Element::MergeFrom(void *this, const TSP::Path_Element *a2)
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
    this = sub_276A43590(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
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

void TSP::Path_Element::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Path_Element::Clear(this);

    TSP::Path_Element::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::Path_Element::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::Path_Element *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Path_Element::Clear(this);

    return TSP::Path_Element::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::Path_Element::IsInitialized(TSP::Path_Element *this)
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

    v4 = *(v3 + 8 * v2--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

__n128 TSP::Path_Element::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
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

uint64_t TSP::Path_Element::GetMetadata(TSP::Path_Element *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[24];
  v2 = off_2812FC248[25];
  return result;
}

TSP::Path *TSP::Path::Path(TSP::Path *this, Arena *a2)
{
  *this = &unk_2885C24F0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_Path_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Path_TSPMessages_2eproto);
  }

  return this;
}

TSP::Path *TSP::Path::Path(TSP::Path *this, const TSP::Path *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C24F0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A436D4(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSP::Path::~Path(TSP::Path *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A43650(this + 2);
}

{
  TSP::Path::~Path(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::Path::default_instance(TSP::Path *this)
{
  if (atomic_load_explicit(scc_info_Path_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Path_TSPMessages_2eproto);
  }

  return &TSP::_Path_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Path::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Path_Element::Clear(v4);
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

google::protobuf::internal *TSP::Path::_InternalParse(TSP::Path *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Path_Element>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD3D10(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *TSP::Path::_InternalSerialize(TSP::Path *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSP::Path_Element::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::Path::ByteSizeLong(TSP::Path *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = TSP::Path_Element::ByteSizeLong(v9, a2, a3, a4);
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

void TSP::Path::MergeFrom(TSP::Path *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Path::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Path::MergeFrom(void *this, const TSP::Path *a2)
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
    this = sub_276A436D4(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
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

void TSP::Path::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Path::Clear(this);

    TSP::Path::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::Path::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::Path *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Path::Clear(this);

    return TSP::Path::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSP::Path::InternalSwap(TSP::Path *this, TSP::Path *a2)
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

uint64_t TSP::Path::GetMetadata(TSP::Path *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[26];
  v2 = off_2812FC248[27];
  return result;
}

TSP::ReferenceDictionary_Entry *TSP::ReferenceDictionary_Entry::ReferenceDictionary_Entry(TSP::ReferenceDictionary_Entry *this, Arena *a2)
{
  *this = &unk_2885C25A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885C25A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSP::ReferenceDictionary_Entry *TSP::ReferenceDictionary_Entry::ReferenceDictionary_Entry(TSP::ReferenceDictionary_Entry *this, const TSP::ReferenceDictionary_Entry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C25A0;
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
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSP::ReferenceDictionary_Entry::~ReferenceDictionary_Entry(TSP::ReferenceDictionary_Entry *this)
{
  if (this != TSP::_ReferenceDictionary_Entry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2769DEC8C((v2 + 8));
      MEMORY[0x277C9F670](v2, 0x1081C407D3F2757);
    }

    v3 = *(this + 4);
    if (v3)
    {
      sub_2769DEC8C((v3 + 8));
      MEMORY[0x277C9F670](v3, 0x1081C407D3F2757);
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::ReferenceDictionary_Entry::~ReferenceDictionary_Entry(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::ReferenceDictionary_Entry::default_instance(TSP::ReferenceDictionary_Entry *this)
{
  if (atomic_load_explicit(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto);
  }

  return TSP::_ReferenceDictionary_Entry_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary_Entry::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return this;
}

google::protobuf::internal *TSP::ReferenceDictionary_Entry::_InternalParse(TSP::ReferenceDictionary_Entry *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v21 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v21, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v21 + 1);
    v8 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v21 + 2);
LABEL_6:
      v21 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v9 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v19;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(this + 4) |= 2u;
        v15 = *(this + 4);
        if (!v15)
        {
          v16 = *(this + 1);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v16);
          *(this + 4) = v15;
LABEL_28:
          v7 = v21;
        }

LABEL_29:
        v14 = sub_276BD2124(a3, v15, v7);
        goto LABEL_30;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(this + 4) |= 1u;
      v15 = *(this + 3);
      if (!v15)
      {
        v17 = *(this + 1);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v17);
        *(this + 3) = v15;
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
      *(a3 + 20) = v8 - 1;
      return v21;
    }

    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v21;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
LABEL_30:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
}

const google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary_Entry::_InternalSerialize(TSP::ReferenceDictionary_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::Reference::_InternalSerialize(v7, v9, a3, a4);
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::ReferenceDictionary_Entry::RequiredFieldsByteSizeFallback(TSP::ReferenceDictionary_Entry *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if ((v5 & 2) == 0)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v7 = TSP::Reference::ByteSizeLong(*(this + 3), a2, a3, a4);
  v6 = &v7->ptr_ + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v8 = TSP::Reference::ByteSizeLong(*(this + 4), a2, a3, a4);
    v6 += &v8->ptr_ + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v6;
}

const InternalMetadata *TSP::ReferenceDictionary_Entry::ByteSizeLong(TSP::Reference **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v11 = TSP::ReferenceDictionary_Entry::RequiredFieldsByteSizeFallback(this, a2, a3, a4);
  }

  else
  {
    v5 = TSP::Reference::ByteSizeLong(this[3], a2, a3, a4);
    v9 = TSP::Reference::ByteSizeLong(this[4], v6, v7, v8);
    v11 = (&v9->ptr_ + v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v11, this + 5, v10);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

void TSP::ReferenceDictionary_Entry::MergeFrom(TSP::ReferenceDictionary_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ReferenceDictionary_Entry::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ReferenceDictionary_Entry::MergeFrom(void *this, const TSP::ReferenceDictionary_Entry *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSP::_Reference_default_instance_;
      }

      this = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 4) |= 2u;
      v9 = v3[4];
      if (!v9)
      {
        v10 = v3[1];
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v10);
        v3[4] = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSP::_Reference_default_instance_;
      }

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

void TSP::ReferenceDictionary_Entry::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::ReferenceDictionary_Entry::Clear(this);

    TSP::ReferenceDictionary_Entry::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary_Entry::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::ReferenceDictionary_Entry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::ReferenceDictionary_Entry::Clear(this);

    return TSP::ReferenceDictionary_Entry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSP::ReferenceDictionary_Entry::IsInitialized(TSP::ReferenceDictionary_Entry *this)
{
  if (~*(this + 4) & 3) == 0 && (*(*(this + 3) + 16))
  {
    return *(*(this + 4) + 16) & 1;
  }

  else
  {
    return 0;
  }
}

__n128 TSP::ReferenceDictionary_Entry::InternalSwap(TSP::ReferenceDictionary_Entry *this, TSP::ReferenceDictionary_Entry *a2)
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
  return result;
}

uint64_t TSP::ReferenceDictionary_Entry::GetMetadata(TSP::ReferenceDictionary_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[28];
  v2 = off_2812FC248[29];
  return result;
}

TSP::ReferenceDictionary *TSP::ReferenceDictionary::ReferenceDictionary(TSP::ReferenceDictionary *this, Arena *a2)
{
  *this = &unk_2885C2650;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ReferenceDictionary_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_TSPMessages_2eproto);
  }

  return this;
}

TSP::ReferenceDictionary *TSP::ReferenceDictionary::ReferenceDictionary(TSP::ReferenceDictionary *this, const TSP::ReferenceDictionary *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C2650;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A43818(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSP::ReferenceDictionary::~ReferenceDictionary(TSP::ReferenceDictionary *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A43794(this + 2);
}

{
  TSP::ReferenceDictionary::~ReferenceDictionary(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::ReferenceDictionary::default_instance(TSP::ReferenceDictionary *this)
{
  if (atomic_load_explicit(scc_info_ReferenceDictionary_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_TSPMessages_2eproto);
  }

  return &TSP::_ReferenceDictionary_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::ReferenceDictionary_Entry::Clear(v4);
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

google::protobuf::internal *TSP::ReferenceDictionary::_InternalParse(TSP::ReferenceDictionary *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::ReferenceDictionary_Entry>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD3DE0(a3, v16, v13);
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

const InternalMetadata *TSP::ReferenceDictionary::ByteSizeLong(TSP::ReferenceDictionary *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = TSP::ReferenceDictionary_Entry::ByteSizeLong(v9, a2, a3, a4);
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

void TSP::ReferenceDictionary::MergeFrom(TSP::ReferenceDictionary *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ReferenceDictionary::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ReferenceDictionary::MergeFrom(void *this, const TSP::ReferenceDictionary *a2)
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
    this = sub_276A43818(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
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

void TSP::ReferenceDictionary::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::ReferenceDictionary::Clear(this);

    TSP::ReferenceDictionary::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::ReferenceDictionary *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::ReferenceDictionary::Clear(this);

    return TSP::ReferenceDictionary::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_276A2C7E8(uint64_t a1)
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

__n128 TSP::ReferenceDictionary::InternalSwap(TSP::ReferenceDictionary *this, TSP::ReferenceDictionary *a2)
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

uint64_t TSP::ReferenceDictionary::GetMetadata(TSP::ReferenceDictionary *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[30];
  v2 = off_2812FC248[31];
  return result;
}

void *TSP::UUID::UUID(void *this, Arena *a2)
{
  *this = &unk_2885C2700;
  this[1] = a2;
  this[3] = 0;
  this[4] = 0;
  this[2] = 0;
  return this;
}

{
  *this = &unk_2885C2700;
  this[1] = a2;
  this[3] = 0;
  this[4] = 0;
  this[2] = 0;
  return this;
}

TSP::UUID *TSP::UUID::UUID(TSP::UUID *this, const TSP::UUID *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2700;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSP::UUID::~UUID(TSP::UUID *this)
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

uint64_t *TSP::UUID::default_instance(TSP::UUID *this)
{
  if (atomic_load_explicit(scc_info_UUID_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUID_TSPMessages_2eproto);
  }

  return &TSP::_UUID_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::UUID::Clear(TSP::UUID *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::UUID::_InternalParse(TSP::UUID *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v27 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v27, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v27 + 1);
      v9 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v10 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
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
          v27 = v16;
          *(this + 4) = v15;
          goto LABEL_29;
        }

        v23 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v27 = v23;
        *(this + 4) = v24;
        if (!v23)
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
            v8 = v27;
          }

          v27 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v27)
          {
LABEL_39:
            v27 = 0;
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
          v27 = v19;
          *(this + 3) = v18;
          goto LABEL_29;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v27 = v25;
        *(this + 3) = v26;
        if (!v25)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_2769F6104(a3, &v27, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v27 + 2);
LABEL_6:
    v27 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v27;
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

const InternalMetadata *TSP::UUID::ByteSizeLong(TSP::UUID *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v5 = TSP::UUID::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v5 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 2);
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

void TSP::UUID::MergeFrom(TSP::UUID *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUID::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUID::MergeFrom(void *this, const TSP::UUID *a2)
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
      v3[3] = *(a2 + 3);
    }

    if ((v5 & 2) != 0)
    {
      v3[4] = *(a2 + 4);
    }

    *(v3 + 4) |= v5;
  }

  return this;
}

void TSP::UUID::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::UUID::Clear(this);

    TSP::UUID::MergeFrom(this, a2);
  }
}

TSP::UUID *TSP::UUID::CopyFrom(TSP::UUID *this, const TSP::UUID *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::UUID::Clear(this);

    return TSP::UUID::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSP::UUID::InternalSwap(TSP::UUID *this, TSP::UUID *a2)
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
  return result;
}

uint64_t TSP::UUID::GetMetadata(TSP::UUID *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[32];
  v2 = off_2812FC248[33];
  return result;
}

TSP::CFUUIDArchive *TSP::CFUUIDArchive::CFUUIDArchive(TSP::CFUUIDArchive *this, Arena *a2)
{
  *this = &unk_2885C27B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CFUUIDArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_CFUUIDArchive_TSPMessages_2eproto);
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

TSP::CFUUIDArchive *TSP::CFUUIDArchive::CFUUIDArchive(TSP::CFUUIDArchive *this, const TSP::CFUUIDArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C27B0;
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

  *(this + 2) = *(a2 + 2);
  return this;
}

void TSP::CFUUIDArchive::~CFUUIDArchive(TSP::CFUUIDArchive *this)
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
  TSP::CFUUIDArchive::~CFUUIDArchive(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::CFUUIDArchive::default_instance(TSP::CFUUIDArchive *this)
{
  if (atomic_load_explicit(scc_info_CFUUIDArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_CFUUIDArchive_TSPMessages_2eproto);
  }

  return &TSP::_CFUUIDArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::CFUUIDArchive::Clear(TSP::CFUUIDArchive *this)
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

  if ((v1 & 0x1E) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
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

google::protobuf::internal *TSP::CFUUIDArchive::_InternalParse(TSP::CFUUIDArchive *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v41 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v41, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v41 + 1);
      v9 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v10 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_62;
      }

      v8 = TagFallback;
      v9 = v32;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 == 10)
          {
            *(this + 4) |= 1u;
            v25 = *(this + 1);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v25);
            v27 = google::protobuf::internal::InlineGreedyStringParser(v26, v41, a3);
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
              *(a3 + 20) = v9 - 1;
              goto LABEL_2;
            }

            v29 = *(this + 1);
            if (v29)
            {
              v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v30 = sub_2769F617C(this + 1);
              v8 = v41;
            }

            v27 = google::protobuf::internal::UnknownFieldParse(v9, v30, v8, a3, v5);
          }

          v41 = v27;
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
          v41 = v16;
          *(this + 8) = v17;
          goto LABEL_48;
        }

        v39 = google::protobuf::internal::VarintParseSlow32(v8, v17);
        v41 = v39;
        *(this + 8) = v40;
        if (!v39)
        {
LABEL_62:
          v41 = 0;
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
          v41 = v19;
          *(this + 9) = v20;
          goto LABEL_48;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v8, v20);
        v41 = v33;
        *(this + 9) = v34;
        if (!v33)
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
          v41 = v22;
          *(this + 10) = v23;
          goto LABEL_48;
        }

        v35 = google::protobuf::internal::VarintParseSlow32(v8, v23);
        v41 = v35;
        *(this + 10) = v36;
        if (!v35)
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
          v41 = v12;
          *(this + 11) = v13;
          goto LABEL_48;
        }

        v37 = google::protobuf::internal::VarintParseSlow32(v8, v13);
        v41 = v37;
        *(this + 11) = v38;
        if (!v37)
        {
          goto LABEL_62;
        }
      }

LABEL_48:
      if (sub_2769F6104(a3, &v41, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v41 + 2);
LABEL_6:
    v41 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v41;
}

const google::protobuf::UnknownFieldSet *TSP::CFUUIDArchive::_InternalSerialize(TSP::CFUUIDArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
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

const InternalMetadata *TSP::CFUUIDArchive::ByteSizeLong(TSP::CFUUIDArchive *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if ((v4 & 0x1F) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if ((v4 & 1) == 0)
  {
    v5 = 0;
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = (v5 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1);
    goto LABEL_10;
  }

  v6 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v6 + 23);
  v8 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v7;
  }

  v5 = (v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v4 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v4 & 4) != 0)
  {
    v5 = (v5 + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v4 & 8) == 0)
    {
LABEL_12:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_12;
  }

  v5 = (v5 + ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v4 & 0x10) != 0)
  {
LABEL_13:
    v5 = (v5 + ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void TSP::CFUUIDArchive::MergeFrom(TSP::CFUUIDArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::CFUUIDArchive::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::CFUUIDArchive::MergeFrom(void *this, const TSP::CFUUIDArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 8) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    *(v3 + 9) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 4) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 11) = *(a2 + 11);
      goto LABEL_10;
    }

LABEL_17:
    *(v3 + 10) = *(a2 + 10);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

void TSP::CFUUIDArchive::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::CFUUIDArchive::Clear(this);

    TSP::CFUUIDArchive::MergeFrom(this, a2);
  }
}

TSP::CFUUIDArchive *TSP::CFUUIDArchive::CopyFrom(TSP::CFUUIDArchive *this, const TSP::CFUUIDArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::CFUUIDArchive::Clear(this);

    return TSP::CFUUIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSP::CFUUIDArchive::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[3];
  a2[3] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v6;
  a2[5] = v7;
  return result;
}

uint64_t TSP::CFUUIDArchive::GetMetadata(TSP::CFUUIDArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[34];
  v2 = off_2812FC248[35];
  return result;
}

TSP::UUIDSetArchive *TSP::UUIDSetArchive::UUIDSetArchive(TSP::UUIDSetArchive *this, Arena *a2)
{
  *this = &unk_2885C2860;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_UUIDSetArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDSetArchive_TSPMessages_2eproto);
  }

  return this;
}

TSP::UUIDSetArchive *TSP::UUIDSetArchive::UUIDSetArchive(TSP::UUIDSetArchive *this, const TSP::UUIDSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C2860;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A43970(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSP::UUIDSetArchive::~UUIDSetArchive(TSP::UUIDSetArchive *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A438D8(this + 2);
}

{
  TSP::UUIDSetArchive::~UUIDSetArchive(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::UUIDSetArchive::default_instance(TSP::UUIDSetArchive *this)
{
  if (atomic_load_explicit(scc_info_UUIDSetArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDSetArchive_TSPMessages_2eproto);
  }

  return &TSP::_UUIDSetArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::UUIDSetArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
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

google::protobuf::internal *TSP::UUIDSetArchive::_InternalParse(TSP::UUIDSetArchive *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD1DE4(a3, v16, v13);
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

const InternalMetadata *TSP::UUIDSetArchive::ByteSizeLong(TSP::UUIDSetArchive *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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

void TSP::UUIDSetArchive::MergeFrom(TSP::UUIDSetArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDSetArchive::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDSetArchive::MergeFrom(void *this, const TSP::UUIDSetArchive *a2)
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
    this = sub_276A43970(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
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

void TSP::UUIDSetArchive::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::UUIDSetArchive::Clear(this);

    TSP::UUIDSetArchive::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::UUIDSetArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::UUIDSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::UUIDSetArchive::Clear(this);

    return TSP::UUIDSetArchive::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::UUIDSetArchive::InternalSwap(TSP::UUIDSetArchive *this, TSP::UUIDSetArchive *a2)
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

uint64_t TSP::UUIDSetArchive::GetMetadata(TSP::UUIDSetArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[36];
  v2 = off_2812FC248[37];
  return result;
}

TSP::UUIDMapArchive *TSP::UUIDMapArchive::UUIDMapArchive(TSP::UUIDMapArchive *this, Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_2885C2910;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_UUIDMapArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDMapArchive_TSPMessages_2eproto);
  }

  return this;
}

void sub_276A2E700(_Unwind_Exception *a1)
{
  sub_276A438D8(v2);
  sub_276A438D8(v1);
  _Unwind_Resume(a1);
}

TSP::UUIDMapArchive *TSP::UUIDMapArchive::UUIDMapArchive(TSP::UUIDMapArchive *this, const TSP::UUIDMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C2910;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A43970(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), *(a2 + 12));
    sub_276A43970(this + 5, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 16) = 0;
  v16 = *(a2 + 1);
  if (v16)
  {
    sub_2769F63D8(v4, ((v16 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void sub_276A2E878(_Unwind_Exception *a1)
{
  sub_276A438D8(v2);
  sub_276A438D8(v1);
  _Unwind_Resume(a1);
}

void TSP::UUIDMapArchive::~UUIDMapArchive(TSP::UUIDMapArchive *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A438D8(this + 5);
  sub_276A438D8(this + 2);
}

{
  TSP::UUIDMapArchive::~UUIDMapArchive(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::UUIDMapArchive::default_instance(TSP::UUIDMapArchive *this)
{
  if (atomic_load_explicit(scc_info_UUIDMapArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDMapArchive_TSPMessages_2eproto);
  }

  return &TSP::_UUIDMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::UUIDMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_2769F6424(v8);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDMapArchive::_InternalParse(TSP::UUIDMapArchive *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  if ((sub_2769F6104(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v31;
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
          v32 = (v14 + 1);
          v16 = *(this + 7);
          if (!v16)
          {
            v17 = *(this + 13);
            goto LABEL_25;
          }

          v21 = *(this + 12);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(this + 13))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v17 + 1);
              v16 = *(this + 7);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 5));
            v19 = *(this + 12);
            v20 = *(this + 7) + 8 * v19;
            *(this + 12) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v32;
          }

          else
          {
            *(this + 12) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_276BD1DE4(a3, v18, v15);
          v32 = v14;
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
          v32 = (v22 + 1);
          v24 = *(this + 4);
          if (!v24)
          {
            break;
          }

          v29 = *(this + 6);
          v25 = *v24;
          if (v29 < *v24)
          {
            *(this + 6) = v29 + 1;
            v26 = *&v24[2 * v29 + 2];
            goto LABEL_42;
          }

          if (v25 == *(this + 7))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v25 + 1;
          v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 2));
          v27 = *(this + 6);
          v28 = *(this + 4) + 8 * v27;
          *(this + 6) = v27 + 1;
          *(v28 + 8) = v26;
          v23 = v32;
LABEL_42:
          v22 = sub_276BD1DE4(a3, v26, v23);
          v32 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(this + 7);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v25 + 1);
        v24 = *(this + 4);
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
        *(a3 + 20) = v8 - 1;
        return v32;
      }

      v12 = *(this + 1);
      if (v12)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v13 = sub_2769F617C(this + 1);
        v7 = v32;
      }

      v32 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v5);
      if (!v32)
      {
        return 0;
      }

LABEL_19:
      if (sub_2769F6104(a3, &v32, *(a3 + 23)))
      {
        return v32;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

  return v32;
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

const InternalMetadata *TSP::UUIDMapArchive::ByteSizeLong(TSP::UUIDMapArchive *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = TSP::UUID::ByteSizeLong(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 12);
  v12 = (v5 + v11);
  v13 = *(this + 7);
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
      v17 = TSP::UUID::ByteSizeLong(v16, a2, a3, a4);
      v12 = (v12 + v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6));
      v15 -= 8;
    }

    while (v15);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v12, this + 16, a4);
  }

  else
  {
    *(this + 16) = v12;
    return v12;
  }
}

void TSP::UUIDMapArchive::MergeFrom(TSP::UUIDMapArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDMapArchive::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDMapArchive::MergeFrom(void *this, const TSP::UUIDMapArchive *a2)
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
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2), *(a2 + 6));
    this = sub_276A43970(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *(a2 + 7);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 5), v10);
    this = sub_276A43970(v3 + 5, v12, (v11 + 8), v10, *v3[7] - *(v3 + 12));
    v13 = *(v3 + 12) + v10;
    *(v3 + 12) = v13;
    v14 = v3[7];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  return this;
}

void TSP::UUIDMapArchive::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::UUIDMapArchive::Clear(this);

    TSP::UUIDMapArchive::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::UUIDMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::UUIDMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::UUIDMapArchive::Clear(this);

    return TSP::UUIDMapArchive::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::UUIDMapArchive::InternalSwap(TSP::UUIDMapArchive *this, TSP::UUIDMapArchive *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  return result;
}

uint64_t TSP::UUIDMapArchive::GetMetadata(TSP::UUIDMapArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[38];
  v2 = off_2812FC248[39];
  return result;
}

TSP::UUIDMultiMapArchive *TSP::UUIDMultiMapArchive::UUIDMultiMapArchive(TSP::UUIDMultiMapArchive *this, Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_2885C29C0;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_UUIDMultiMapArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDMultiMapArchive_TSPMessages_2eproto);
  }

  return this;
}

void sub_276A2F354(_Unwind_Exception *a1)
{
  sub_276A438D8(v2);
  sub_276A438D8(v1);
  _Unwind_Resume(a1);
}

TSP::UUIDMultiMapArchive *TSP::UUIDMultiMapArchive::UUIDMultiMapArchive(TSP::UUIDMultiMapArchive *this, const TSP::UUIDMultiMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C29C0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A43970(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), *(a2 + 12));
    sub_276A43970(this + 5, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 16) = 0;
  v16 = *(a2 + 1);
  if (v16)
  {
    sub_2769F63D8(v4, ((v16 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void sub_276A2F4CC(_Unwind_Exception *a1)
{
  sub_276A438D8(v2);
  sub_276A438D8(v1);
  _Unwind_Resume(a1);
}

void TSP::UUIDMultiMapArchive::~UUIDMultiMapArchive(TSP::UUIDMultiMapArchive *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A438D8(this + 5);
  sub_276A438D8(this + 2);
}

{
  TSP::UUIDMultiMapArchive::~UUIDMultiMapArchive(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::UUIDMultiMapArchive::default_instance(TSP::UUIDMultiMapArchive *this)
{
  if (atomic_load_explicit(scc_info_UUIDMultiMapArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDMultiMapArchive_TSPMessages_2eproto);
  }

  return &TSP::_UUIDMultiMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::UUIDMultiMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_2769F6424(v8);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDMultiMapArchive::_InternalParse(TSP::UUIDMultiMapArchive *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  if ((sub_2769F6104(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v31;
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
          v32 = (v14 + 1);
          v16 = *(this + 7);
          if (!v16)
          {
            v17 = *(this + 13);
            goto LABEL_25;
          }

          v21 = *(this + 12);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(this + 13))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v17 + 1);
              v16 = *(this + 7);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 5));
            v19 = *(this + 12);
            v20 = *(this + 7) + 8 * v19;
            *(this + 12) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v32;
          }

          else
          {
            *(this + 12) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_276BD1DE4(a3, v18, v15);
          v32 = v14;
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
          v32 = (v22 + 1);
          v24 = *(this + 4);
          if (!v24)
          {
            break;
          }

          v29 = *(this + 6);
          v25 = *v24;
          if (v29 < *v24)
          {
            *(this + 6) = v29 + 1;
            v26 = *&v24[2 * v29 + 2];
            goto LABEL_42;
          }

          if (v25 == *(this + 7))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v25 + 1;
          v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 2));
          v27 = *(this + 6);
          v28 = *(this + 4) + 8 * v27;
          *(this + 6) = v27 + 1;
          *(v28 + 8) = v26;
          v23 = v32;
LABEL_42:
          v22 = sub_276BD1DE4(a3, v26, v23);
          v32 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(this + 7);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v25 + 1);
        v24 = *(this + 4);
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
        *(a3 + 20) = v8 - 1;
        return v32;
      }

      v12 = *(this + 1);
      if (v12)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v13 = sub_2769F617C(this + 1);
        v7 = v32;
      }

      v32 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v5);
      if (!v32)
      {
        return 0;
      }

LABEL_19:
      if (sub_2769F6104(a3, &v32, *(a3 + 23)))
      {
        return v32;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

  return v32;
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

const InternalMetadata *TSP::UUIDMultiMapArchive::ByteSizeLong(TSP::UUIDMultiMapArchive *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = TSP::UUID::ByteSizeLong(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 12);
  v12 = (v5 + v11);
  v13 = *(this + 7);
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
      v17 = TSP::UUID::ByteSizeLong(v16, a2, a3, a4);
      v12 = (v12 + v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6));
      v15 -= 8;
    }

    while (v15);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v12, this + 16, a4);
  }

  else
  {
    *(this + 16) = v12;
    return v12;
  }
}

void TSP::UUIDMultiMapArchive::MergeFrom(TSP::UUIDMultiMapArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDMultiMapArchive::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDMultiMapArchive::MergeFrom(void *this, const TSP::UUIDMultiMapArchive *a2)
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
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2), *(a2 + 6));
    this = sub_276A43970(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *(a2 + 7);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 5), v10);
    this = sub_276A43970(v3 + 5, v12, (v11 + 8), v10, *v3[7] - *(v3 + 12));
    v13 = *(v3 + 12) + v10;
    *(v3 + 12) = v13;
    v14 = v3[7];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  return this;
}

void TSP::UUIDMultiMapArchive::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::UUIDMultiMapArchive::Clear(this);

    TSP::UUIDMultiMapArchive::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::UUIDMultiMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::UUIDMultiMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::UUIDMultiMapArchive::Clear(this);

    return TSP::UUIDMultiMapArchive::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::UUIDMultiMapArchive::InternalSwap(TSP::UUIDMultiMapArchive *this, TSP::UUIDMultiMapArchive *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  return result;
}

uint64_t TSP::UUIDMultiMapArchive::GetMetadata(TSP::UUIDMultiMapArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[40];
  v2 = off_2812FC248[41];
  return result;
}

TSP::UUIDCoordArchive *TSP::UUIDCoordArchive::UUIDCoordArchive(TSP::UUIDCoordArchive *this, Arena *a2)
{
  *this = &unk_2885C2A70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UUIDCoordArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDCoordArchive_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885C2A70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UUIDCoordArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDCoordArchive_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSP::UUIDCoordArchive *TSP::UUIDCoordArchive::UUIDCoordArchive(TSP::UUIDCoordArchive *this, const TSP::UUIDCoordArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2A70;
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
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSP::UUIDCoordArchive::~UUIDCoordArchive(TSP::UUIDCoordArchive *this)
{
  if (this != TSP::_UUIDCoordArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2769DEC8C((v2 + 8));
      MEMORY[0x277C9F670](v2, 0x1081C40825B58B5);
    }

    v3 = *(this + 4);
    if (v3)
    {
      sub_2769DEC8C((v3 + 8));
      MEMORY[0x277C9F670](v3, 0x1081C40825B58B5);
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::UUIDCoordArchive::~UUIDCoordArchive(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::UUIDCoordArchive::default_instance(TSP::UUIDCoordArchive *this)
{
  if (atomic_load_explicit(scc_info_UUIDCoordArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDCoordArchive_TSPMessages_2eproto);
  }

  return TSP::_UUIDCoordArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::UUIDCoordArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::UUID::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDCoordArchive::_InternalParse(TSP::UUIDCoordArchive *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v21 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v21, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v21 + 1);
    v8 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v21 + 2);
LABEL_6:
      v21 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v9 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v19;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(this + 4) |= 2u;
        v15 = *(this + 4);
        if (!v15)
        {
          v16 = *(this + 1);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v16);
          *(this + 4) = v15;
LABEL_28:
          v7 = v21;
        }

LABEL_29:
        v14 = sub_276BD1DE4(a3, v15, v7);
        goto LABEL_30;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(this + 4) |= 1u;
      v15 = *(this + 3);
      if (!v15)
      {
        v17 = *(this + 1);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v17);
        *(this + 3) = v15;
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
      *(a3 + 20) = v8 - 1;
      return v21;
    }

    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v21;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
LABEL_30:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
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

uint64_t TSP::UUIDCoordArchive::RequiredFieldsByteSizeFallback(TSP::UUIDCoordArchive *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if ((v5 & 2) == 0)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v7 = TSP::UUID::ByteSizeLong(*(this + 3), a2, a3, a4);
  v6 = &v7->ptr_ + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v8 = TSP::UUID::ByteSizeLong(*(this + 4), a2, a3, a4);
    v6 += &v8->ptr_ + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v6;
}

const InternalMetadata *TSP::UUIDCoordArchive::ByteSizeLong(TSP::UUID **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v11 = TSP::UUIDCoordArchive::RequiredFieldsByteSizeFallback(this, a2, a3, a4);
  }

  else
  {
    v5 = TSP::UUID::ByteSizeLong(this[3], a2, a3, a4);
    v9 = TSP::UUID::ByteSizeLong(this[4], v6, v7, v8);
    v11 = (&v9->ptr_ + v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v11, this + 5, v10);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

void TSP::UUIDCoordArchive::MergeFrom(TSP::UUIDCoordArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDCoordArchive::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDCoordArchive::MergeFrom(void *this, const TSP::UUIDCoordArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSP::_UUID_default_instance_;
      }

      this = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 4) |= 2u;
      v9 = v3[4];
      if (!v9)
      {
        v10 = v3[1];
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v10);
        v3[4] = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSP::_UUID_default_instance_;
      }

      return TSP::UUID::MergeFrom(v9, v11);
    }
  }

  return this;
}

void TSP::UUIDCoordArchive::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::UUIDCoordArchive::Clear(this);

    TSP::UUIDCoordArchive::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::UUIDCoordArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::UUIDCoordArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::UUIDCoordArchive::Clear(this);

    return TSP::UUIDCoordArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSP::UUIDCoordArchive::InternalSwap(TSP::UUIDCoordArchive *this, TSP::UUIDCoordArchive *a2)
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
  return result;
}

uint64_t TSP::UUIDCoordArchive::GetMetadata(TSP::UUIDCoordArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[42];
  v2 = off_2812FC248[43];
  return result;
}

TSP::UUIDRectArchive *TSP::UUIDRectArchive::UUIDRectArchive(TSP::UUIDRectArchive *this, Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_2885C2B20;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_UUIDRectArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDRectArchive_TSPMessages_2eproto);
  }

  return this;
}

void sub_276A30AA8(_Unwind_Exception *a1)
{
  sub_276A438D8(v2);
  sub_276A438D8(v1);
  _Unwind_Resume(a1);
}

TSP::UUIDRectArchive *TSP::UUIDRectArchive::UUIDRectArchive(TSP::UUIDRectArchive *this, const TSP::UUIDRectArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C2B20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A43970(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), *(a2 + 12));
    sub_276A43970(this + 5, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 16) = 0;
  v16 = *(a2 + 1);
  if (v16)
  {
    sub_2769F63D8(v4, ((v16 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void sub_276A30C20(_Unwind_Exception *a1)
{
  sub_276A438D8(v2);
  sub_276A438D8(v1);
  _Unwind_Resume(a1);
}

void TSP::UUIDRectArchive::~UUIDRectArchive(TSP::UUIDRectArchive *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A438D8(this + 5);
  sub_276A438D8(this + 2);
}

{
  TSP::UUIDRectArchive::~UUIDRectArchive(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::UUIDRectArchive::default_instance(TSP::UUIDRectArchive *this)
{
  if (atomic_load_explicit(scc_info_UUIDRectArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDRectArchive_TSPMessages_2eproto);
  }

  return &TSP::_UUIDRectArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::UUIDRectArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_2769F6424(v8);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDRectArchive::_InternalParse(TSP::UUIDRectArchive *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  if ((sub_2769F6104(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v31;
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
          v32 = (v14 + 1);
          v16 = *(this + 7);
          if (!v16)
          {
            v17 = *(this + 13);
            goto LABEL_25;
          }

          v21 = *(this + 12);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(this + 13))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v17 + 1);
              v16 = *(this + 7);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 5));
            v19 = *(this + 12);
            v20 = *(this + 7) + 8 * v19;
            *(this + 12) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v32;
          }

          else
          {
            *(this + 12) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_276BD1DE4(a3, v18, v15);
          v32 = v14;
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
          v32 = (v22 + 1);
          v24 = *(this + 4);
          if (!v24)
          {
            break;
          }

          v29 = *(this + 6);
          v25 = *v24;
          if (v29 < *v24)
          {
            *(this + 6) = v29 + 1;
            v26 = *&v24[2 * v29 + 2];
            goto LABEL_42;
          }

          if (v25 == *(this + 7))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v25 + 1;
          v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 2));
          v27 = *(this + 6);
          v28 = *(this + 4) + 8 * v27;
          *(this + 6) = v27 + 1;
          *(v28 + 8) = v26;
          v23 = v32;
LABEL_42:
          v22 = sub_276BD1DE4(a3, v26, v23);
          v32 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(this + 7);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v25 + 1);
        v24 = *(this + 4);
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
        *(a3 + 20) = v8 - 1;
        return v32;
      }

      v12 = *(this + 1);
      if (v12)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v13 = sub_2769F617C(this + 1);
        v7 = v32;
      }

      v32 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v5);
      if (!v32)
      {
        return 0;
      }

LABEL_19:
      if (sub_2769F6104(a3, &v32, *(a3 + 23)))
      {
        return v32;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

  return v32;
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

const InternalMetadata *TSP::UUIDRectArchive::ByteSizeLong(TSP::UUIDRectArchive *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = TSP::UUID::ByteSizeLong(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 12);
  v12 = (v5 + v11);
  v13 = *(this + 7);
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
      v17 = TSP::UUID::ByteSizeLong(v16, a2, a3, a4);
      v12 = (v12 + v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6));
      v15 -= 8;
    }

    while (v15);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v12, this + 16, a4);
  }

  else
  {
    *(this + 16) = v12;
    return v12;
  }
}

void TSP::UUIDRectArchive::MergeFrom(TSP::UUIDRectArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDRectArchive::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDRectArchive::MergeFrom(void *this, const TSP::UUIDRectArchive *a2)
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
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2), *(a2 + 6));
    this = sub_276A43970(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *(a2 + 7);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 5), v10);
    this = sub_276A43970(v3 + 5, v12, (v11 + 8), v10, *v3[7] - *(v3 + 12));
    v13 = *(v3 + 12) + v10;
    *(v3 + 12) = v13;
    v14 = v3[7];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  return this;
}

void TSP::UUIDRectArchive::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::UUIDRectArchive::Clear(this);

    TSP::UUIDRectArchive::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::UUIDRectArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::UUIDRectArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::UUIDRectArchive::Clear(this);

    return TSP::UUIDRectArchive::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::UUIDRectArchive::InternalSwap(TSP::UUIDRectArchive *this, TSP::UUIDRectArchive *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  return result;
}

uint64_t TSP::UUIDRectArchive::GetMetadata(TSP::UUIDRectArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[44];
  v2 = off_2812FC248[45];
  return result;
}

TSP::SparseUUIDArray_Entry *TSP::SparseUUIDArray_Entry::SparseUUIDArray_Entry(TSP::SparseUUIDArray_Entry *this, Arena *a2)
{
  *this = &unk_2885C2BD0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto);
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C2BD0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto);
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSP::SparseUUIDArray_Entry *TSP::SparseUUIDArray_Entry::SparseUUIDArray_Entry(TSP::SparseUUIDArray_Entry *this, const TSP::SparseUUIDArray_Entry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2BD0;
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

void TSP::SparseUUIDArray_Entry::~SparseUUIDArray_Entry(TSP::SparseUUIDArray_Entry *this)
{
  if (this != TSP::_SparseUUIDArray_Entry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2769DEC8C((v2 + 8));
      MEMORY[0x277C9F670](v2, 0x1081C40825B58B5);
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::SparseUUIDArray_Entry::~SparseUUIDArray_Entry(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::SparseUUIDArray_Entry::default_instance(TSP::SparseUUIDArray_Entry *this)
{
  if (atomic_load_explicit(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto);
  }

  return TSP::_SparseUUIDArray_Entry_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray_Entry::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::UUID::Clear(*(this + 3));
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

google::protobuf::internal *TSP::SparseUUIDArray_Entry::_InternalParse(TSP::SparseUUIDArray_Entry *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v17);
            *(this + 3) = v16;
            v8 = v25;
          }

          v15 = sub_276BD1DE4(a3, v16, v8);
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

uint64_t TSP::SparseUUIDArray_Entry::RequiredFieldsByteSizeFallback(TSP::SparseUUIDArray_Entry *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if (v5)
  {
    v7 = TSP::UUID::ByteSizeLong(*(this + 3), a2, a3, a4);
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

const InternalMetadata *TSP::SparseUUIDArray_Entry::ByteSizeLong(TSP::UUID **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TSP::SparseUUIDArray_Entry::RequiredFieldsByteSizeFallback(this, a2, a3, a4);
  }

  else
  {
    v5 = TSP::UUID::ByteSizeLong(this[3], a2, a3, a4);
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

void TSP::SparseUUIDArray_Entry::MergeFrom(TSP::SparseUUIDArray_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDArray_Entry::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDArray_Entry::MergeFrom(void *this, const TSP::SparseUUIDArray_Entry *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSP::_UUID_default_instance_;
      }

      this = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) = *(a2 + 8);
    }

    *(v3 + 4) |= v5;
  }

  return this;
}

void TSP::SparseUUIDArray_Entry::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::SparseUUIDArray_Entry::Clear(this);

    TSP::SparseUUIDArray_Entry::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray_Entry::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::SparseUUIDArray_Entry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::SparseUUIDArray_Entry::Clear(this);

    return TSP::SparseUUIDArray_Entry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::SparseUUIDArray_Entry::InternalSwap(TSP::SparseUUIDArray_Entry *this, google::protobuf::Arena **a2)
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

uint64_t TSP::SparseUUIDArray_Entry::GetMetadata(TSP::SparseUUIDArray_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[46];
  v2 = off_2812FC248[47];
  return result;
}

TSP::SparseUUIDArray *TSP::SparseUUIDArray::SparseUUIDArray(TSP::SparseUUIDArray *this, Arena *a2)
{
  *this = &unk_2885C2C80;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_TSPMessages_2eproto);
  }

  *(this + 12) = 0;
  return this;
}

TSP::SparseUUIDArray *TSP::SparseUUIDArray::SparseUUIDArray(TSP::SparseUUIDArray *this, const TSP::SparseUUIDArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2C80;
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
    sub_276A43AB4(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TSP::SparseUUIDArray::~SparseUUIDArray(TSP::SparseUUIDArray *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A43A30(this + 3);
}

{
  TSP::SparseUUIDArray::~SparseUUIDArray(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::SparseUUIDArray::default_instance(TSP::SparseUUIDArray *this)
{
  if (atomic_load_explicit(scc_info_SparseUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_TSPMessages_2eproto);
  }

  return &TSP::_SparseUUIDArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::SparseUUIDArray_Entry::Clear(v4);
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

google::protobuf::internal *TSP::SparseUUIDArray::_InternalParse(TSP::SparseUUIDArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDArray_Entry>(*(this + 3));
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

          v15 = sub_276BD3EB0(a3, v19, v16);
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

const InternalMetadata *TSP::SparseUUIDArray::ByteSizeLong(TSP::SparseUUIDArray *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v12 = TSP::SparseUUIDArray_Entry::ByteSizeLong(v11, a2, a3, a4);
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

void TSP::SparseUUIDArray::MergeFrom(TSP::SparseUUIDArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDArray::MergeFrom(void *this, const TSP::SparseUUIDArray *a2)
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
    this = sub_276A43AB4(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
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

void TSP::SparseUUIDArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::SparseUUIDArray::Clear(this);

    TSP::SparseUUIDArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::SparseUUIDArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::SparseUUIDArray::Clear(this);

    return TSP::SparseUUIDArray::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::SparseUUIDArray::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
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

uint64_t TSP::SparseUUIDArray::GetMetadata(TSP::SparseUUIDArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[48];
  v2 = off_2812FC248[49];
  return result;
}

TSP::UUIDPath *TSP::UUIDPath::UUIDPath(TSP::UUIDPath *this, Arena *a2)
{
  *this = &unk_2885C2D30;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_UUIDPath_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDPath_TSPMessages_2eproto);
  }

  return this;
}

TSP::UUIDPath *TSP::UUIDPath::UUIDPath(TSP::UUIDPath *this, const TSP::UUIDPath *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C2D30;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276A43970(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSP::UUIDPath::~UUIDPath(TSP::UUIDPath *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A438D8(this + 2);
}

{
  TSP::UUIDPath::~UUIDPath(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::UUIDPath::default_instance(TSP::UUIDPath *this)
{
  if (atomic_load_explicit(scc_info_UUIDPath_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDPath_TSPMessages_2eproto);
  }

  return &TSP::_UUIDPath_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::UUIDPath::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
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

google::protobuf::internal *TSP::UUIDPath::_InternalParse(TSP::UUIDPath *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD1DE4(a3, v16, v13);
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

const InternalMetadata *TSP::UUIDPath::ByteSizeLong(TSP::UUIDPath *this, uint64_t a2, uint64_t a3, CachedSize *a4)
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

void TSP::UUIDPath::MergeFrom(TSP::UUIDPath *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDPath::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDPath::MergeFrom(void *this, const TSP::UUIDPath *a2)
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
    this = sub_276A43970(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
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

void TSP::UUIDPath::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::UUIDPath::Clear(this);

    TSP::UUIDPath::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::UUIDPath::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::UUIDPath *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::UUIDPath::Clear(this);

    return TSP::UUIDPath::MergeFrom(v4, a2);
  }

  return this;
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

__n128 TSP::UUIDPath::InternalSwap(TSP::UUIDPath *this, TSP::UUIDPath *a2)
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

uint64_t TSP::UUIDPath::GetMetadata(TSP::UUIDPath *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[50];
  v2 = off_2812FC248[51];
  return result;
}

TSP::SparseUUIDPathArray_Entry *TSP::SparseUUIDPathArray_Entry::SparseUUIDPathArray_Entry(TSP::SparseUUIDPathArray_Entry *this, Arena *a2)
{
  *this = &unk_2885C2DE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto);
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C2DE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto);
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}