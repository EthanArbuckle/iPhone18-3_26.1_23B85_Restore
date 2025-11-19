char *TSP::LargeArraySegment::ByteSizeLong(TSP::LargeArraySegment *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    v3 = (v2 + (v1 & 2));
    if ((v1 & 4) != 0)
    {
      v3 = (v3 + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  *(this + 5) = v3;
  return v3;
}

void TSP::LargeArraySegment::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeArraySegment::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::LargeArraySegment::MergeFrom(std::string *this, const TSP::LargeArraySegment *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
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
LABEL_8:
          LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
          return this;
        }

LABEL_7:
        HIDWORD(v4[1].__r_.__value_.__r.__words[1]) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v4[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::LargeArraySegment::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeArraySegment::Clear(this, a2, a3);

    TSP::LargeArraySegment::MergeFrom(this, a2);
  }
}

uint64_t TSP::LargeArraySegment::GetMetadata(TSP::LargeArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[64];
  v2 = off_1001E9950[65];
  return result;
}

void *TSP::LargeNumberArraySegment::LargeNumberArraySegment(void *a1, uint64_t a2)
{
  a1[4] = a2;
  *a1 = off_1001CAF20;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  if (atomic_load_explicit(scc_info_LargeNumberArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArraySegment_TSPMessages_2eproto);
  }

  a1[5] = 0;
  return a1;
}

void sub_100061E18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_100156CF0(v2);
  }

  _Unwind_Resume(exception_object);
}

void TSP::LargeNumberArraySegment::~LargeNumberArraySegment(TSP::LargeNumberArraySegment *this)
{
  if (this != TSP::_LargeNumberArraySegment_default_instance_)
  {
    v2 = *(this + 5);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
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

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeNumberArraySegment::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  *(this + 6) = 0;
  if (*(this + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(this + 5), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeNumberArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v23, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v23 + 1);
    v8 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v23 + 2);
LABEL_6:
      v23 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 17)
      {
        v15 = v7 - 1;
        v16 = *(a1 + 24);
        do
        {
          v17 = (v15 + 1);
          v23 = (v15 + 1);
          v18 = *(v15 + 1);
          if (v16 == *(a1 + 28))
          {
            google::protobuf::RepeatedField<double>::Reserve((a1 + 24), v16 + 1);
            *(*(a1 + 32) + 8 * v16) = v18;
            v17 = v23;
          }

          else
          {
            *(*(a1 + 32) + 8 * v16) = v18;
          }

          *(a1 + 24) = ++v16;
          v15 = v17 + 8;
          v23 = (v17 + 8);
        }

        while (*a3 > v17 + 8 && *v15 == 17);
        continue;
      }

      if (v8 == 18)
      {
        v14 = google::protobuf::internal::PackedDoubleParser(a1 + 24, v7, a3);
        goto LABEL_32;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 40);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v20);
        *(a1 + 40) = v19;
        v7 = v23;
      }

      v14 = sub_100158238(a3, v19, v7);
      goto LABEL_32;
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
      return v23;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v23;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
LABEL_32:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
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

char *TSP::LargeNumberArraySegment::ByteSizeLong(TSP::LargeArraySegment **this)
{
  v2 = (9 * *(this + 6));
  if (this[2])
  {
    v3 = TSP::LargeArraySegment::ByteSizeLong(this[5]);
    v2 = &v3[v2 + 1 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::LargeNumberArraySegment::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeNumberArraySegment::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::LargeNumberArraySegment::MergeFrom(std::string *this, const TSP::LargeNumberArraySegment *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    data_low = SLODWORD(v4[1].__r_.__value_.__l.__data_);
    google::protobuf::RepeatedField<double>::Reserve(&v4[1], data_low + v6);
    size = v4[1].__r_.__value_.__l.__size_;
    LODWORD(v4[1].__r_.__value_.__l.__data_) += *(a2 + 6);
    this = memcpy((size + 8 * data_low), *(a2 + 4), 8 * *(a2 + 6));
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 5);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    v10 = v4[1].__r_.__value_.__r.__words[2];
    if (!v10)
    {
      v11 = v4->__r_.__value_.__l.__size_;
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v11);
      v4[1].__r_.__value_.__r.__words[2] = v10;
      v9 = *(a2 + 5);
    }

    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(v10, v12, a3);
  }

  return this;
}

void TSP::LargeNumberArraySegment::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeNumberArraySegment::Clear(this, a2, a3);

    TSP::LargeNumberArraySegment::MergeFrom(this, a2);
  }
}

uint64_t TSP::LargeNumberArraySegment::GetMetadata(TSP::LargeNumberArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[66];
  v2 = off_1001E9950[67];
  return result;
}

void TSP::LargeStringArraySegment_OptionalElement::~LargeStringArraySegment_OptionalElement(TSP::LargeStringArraySegment_OptionalElement *this)
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
  TSP::LargeStringArraySegment_OptionalElement::~LargeStringArraySegment_OptionalElement(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment_OptionalElement::Clear(TSP::LargeStringArraySegment_OptionalElement *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 16))
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  v5 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v5)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::LargeStringArraySegment_OptionalElement::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v14);
      v13 = google::protobuf::internal::InlineGreedyStringParser(v15, v18, a3);
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
        *(a3 + 80) = v8 - 1;
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

const google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment_OptionalElement::_InternalSerialize(TSP::LargeStringArraySegment_OptionalElement *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 16))
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v6 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *TSP::LargeStringArraySegment_OptionalElement::ByteSizeLong(TSP::LargeStringArraySegment_OptionalElement *this)
{
  if (*(this + 16))
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = (v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v1, this + 5);
  }

  *(this + 5) = v1;
  return v1;
}

void TSP::LargeStringArraySegment_OptionalElement::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeStringArraySegment_OptionalElement::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::LargeStringArraySegment_OptionalElement::MergeFrom(std::string *this, const TSP::LargeStringArraySegment_OptionalElement *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    size = v4->__r_.__value_.__l.__size_;
    if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFELL);
    }

    return google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v6 & 0xFFFFFFFFFFFFFFFELL, size);
  }

  return this;
}

void TSP::LargeStringArraySegment_OptionalElement::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeStringArraySegment_OptionalElement::Clear(this, a2, a3);

    TSP::LargeStringArraySegment_OptionalElement::MergeFrom(this, a2);
  }
}

uint64_t TSP::LargeStringArraySegment_OptionalElement::GetMetadata(TSP::LargeStringArraySegment_OptionalElement *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[68];
  v2 = off_1001E9950[69];
  return result;
}

void *TSP::LargeStringArraySegment::LargeStringArraySegment(void *a1, uint64_t a2)
{
  *a1 = off_1001CB080;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_TSPMessages_2eproto);
  }

  a1[6] = 0;
  return a1;
}

void TSP::LargeStringArraySegment::~LargeStringArraySegment(TSP::LargeStringArraySegment *this)
{
  if (this != TSP::_LargeStringArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_10006AB0C(this + 3);
}

{
  TSP::LargeStringArraySegment::~LargeStringArraySegment(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArraySegment::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::LargeStringArraySegment_OptionalElement::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  if (*(v3 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v3 + 48), a2, a3);
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeStringArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_1000313B0(a3, &v27, i))
    {
      return v27;
    }

    v7 = (v27 + 1);
    v8 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v27 + 2);
LABEL_6:
      v27 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 48);
    if (!v23)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(a1 + 48) = v23;
      v7 = v27;
    }

    v14 = sub_100158238(a3, v23, v7);
LABEL_38:
    v27 = v14;
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
      v27 = (v15 + 1);
      v17 = *(a1 + 40);
      if (!v17)
      {
        break;
      }

      v22 = *(a1 + 32);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(a1 + 32) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(a1 + 36))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeStringArraySegment_OptionalElement>(*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v27;
LABEL_27:
      v15 = sub_100158308(a3, v19, v16);
      v27 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(a1 + 36);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
    v17 = *(a1 + 40);
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v27;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
    goto LABEL_38;
  }

  *(a3 + 80) = v8 - 1;
  return v27;
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

char *TSP::LargeStringArraySegment::ByteSizeLong(TSP::LargeStringArraySegment *this)
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
      v7 = TSP::LargeStringArraySegment_OptionalElement::ByteSizeLong(v6);
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
    v8 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6));
    v2 = &v8[v2 + 1 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)];
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

void TSP::LargeStringArraySegment::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeStringArraySegment::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::LargeStringArraySegment::MergeFrom(std::string *this, const TSP::LargeStringArraySegment *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1], *(a2 + 8));
    this = sub_10006AB90(v4 + 1, v8, v7 + 8, v6, *v4[1].__r_.__value_.__r.__words[2] - LODWORD(v4[1].__r_.__value_.__r.__words[1]));
    v9 = LODWORD(v4[1].__r_.__value_.__r.__words[1]) + v6;
    LODWORD(v4[1].__r_.__value_.__r.__words[1]) = v9;
    v10 = v4[1].__r_.__value_.__r.__words[2];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 6);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    data = v4[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      data = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(size);
      v4[2].__r_.__value_.__r.__words[0] = data;
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(data, v14, a3);
  }

  return this;
}

void TSP::LargeStringArraySegment::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeStringArraySegment::Clear(this, a2, a3);

    TSP::LargeStringArraySegment::MergeFrom(this, a2);
  }
}

uint64_t TSP::LargeStringArraySegment::GetMetadata(TSP::LargeStringArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[70];
  v2 = off_1001E9950[71];
  return result;
}

void *TSP::LargeUUIDArraySegment::LargeUUIDArraySegment(void *a1, uint64_t a2)
{
  *a1 = off_1001CB130;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_LargeUUIDArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArraySegment_TSPMessages_2eproto);
  }

  a1[6] = 0;
  return a1;
}

void TSP::LargeUUIDArraySegment::~LargeUUIDArraySegment(TSP::LargeUUIDArraySegment *this)
{
  if (this != TSP::_LargeUUIDArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_10004A544(this + 3);
}

{
  TSP::LargeUUIDArraySegment::~LargeUUIDArraySegment(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeUUIDArraySegment::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::UUID::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  if (*(v3 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v3 + 48), a2, a3);
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeUUIDArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_1000313B0(a3, &v27, i))
    {
      return v27;
    }

    v7 = (v27 + 1);
    v8 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v27 + 2);
LABEL_6:
      v27 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 48);
    if (!v23)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(a1 + 48) = v23;
      v7 = v27;
    }

    v14 = sub_100158238(a3, v23, v7);
LABEL_38:
    v27 = v14;
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
      v27 = (v15 + 1);
      v17 = *(a1 + 40);
      if (!v17)
      {
        break;
      }

      v22 = *(a1 + 32);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(a1 + 32) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(a1 + 36))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v27;
LABEL_27:
      v15 = sub_100156190(a3, v19, v16);
      v27 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(a1 + 36);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
    v17 = *(a1 + 40);
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v27;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
    goto LABEL_38;
  }

  *(a3 + 80) = v8 - 1;
  return v27;
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

char *TSP::LargeUUIDArraySegment::ByteSizeLong(TSP::LargeUUIDArraySegment *this)
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

  if (*(this + 16))
  {
    v8 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6));
    v2 = &v8[v2 + 1 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)];
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

void TSP::LargeUUIDArraySegment::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeUUIDArraySegment::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::LargeUUIDArraySegment::MergeFrom(std::string *this, const TSP::LargeUUIDArraySegment *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1], *(a2 + 8));
    this = sub_10006A66C(&v4[1], v8, v7 + 8, v6, *v4[1].__r_.__value_.__r.__words[2] - LODWORD(v4[1].__r_.__value_.__r.__words[1]));
    v9 = LODWORD(v4[1].__r_.__value_.__r.__words[1]) + v6;
    LODWORD(v4[1].__r_.__value_.__r.__words[1]) = v9;
    v10 = v4[1].__r_.__value_.__r.__words[2];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 6);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    data = v4[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      data = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(size);
      v4[2].__r_.__value_.__r.__words[0] = data;
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(data, v14, a3);
  }

  return this;
}

void TSP::LargeUUIDArraySegment::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeUUIDArraySegment::Clear(this, a2, a3);

    TSP::LargeUUIDArraySegment::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeUUIDArraySegment::GetMetadata(TSP::LargeUUIDArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[72];
  v2 = off_1001E9950[73];
  return result;
}

void *TSP::LargeLazyObjectArraySegment::LargeLazyObjectArraySegment(void *a1, uint64_t a2)
{
  *a1 = off_1001CB1E0;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArraySegment_TSPMessages_2eproto);
  }

  a1[6] = 0;
  return a1;
}

void TSP::LargeLazyObjectArraySegment::~LargeLazyObjectArraySegment(TSP::LargeLazyObjectArraySegment *this)
{
  if (this != TSP::_LargeLazyObjectArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_10006A9B4(this + 3);
}

{
  TSP::LargeLazyObjectArraySegment::~LargeLazyObjectArraySegment(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArraySegment::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
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

  if (*(v3 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v3 + 48), a2, a3);
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeLazyObjectArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_1000313B0(a3, &v27, i))
    {
      return v27;
    }

    v7 = (v27 + 1);
    v8 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v27 + 2);
LABEL_6:
      v27 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 48);
    if (!v23)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(a1 + 48) = v23;
      v7 = v27;
    }

    v14 = sub_100158238(a3, v23, v7);
LABEL_38:
    v27 = v14;
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
      v27 = (v15 + 1);
      v17 = *(a1 + 40);
      if (!v17)
      {
        break;
      }

      v22 = *(a1 + 32);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(a1 + 32) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(a1 + 36))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v27;
LABEL_27:
      v15 = sub_100155104(a3, v19, v16);
      v27 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(a1 + 36);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
    v17 = *(a1 + 40);
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v27;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
    goto LABEL_38;
  }

  *(a3 + 80) = v8 - 1;
  return v27;
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

char *TSP::LargeLazyObjectArraySegment::ByteSizeLong(TSP::LargeLazyObjectArraySegment *this)
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
    v8 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6));
    v2 = &v8[v2 + 1 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)];
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

void TSP::LargeLazyObjectArraySegment::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeLazyObjectArraySegment::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::LargeLazyObjectArraySegment::MergeFrom(std::string *this, const TSP::LargeLazyObjectArraySegment *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1], *(a2 + 8));
    this = sub_10006AA4C(&v4[1], v8, v7 + 8, v6, *v4[1].__r_.__value_.__r.__words[2] - LODWORD(v4[1].__r_.__value_.__r.__words[1]));
    v9 = LODWORD(v4[1].__r_.__value_.__r.__words[1]) + v6;
    LODWORD(v4[1].__r_.__value_.__r.__words[1]) = v9;
    v10 = v4[1].__r_.__value_.__r.__words[2];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 6);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    data = v4[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      data = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(size);
      v4[2].__r_.__value_.__r.__words[0] = data;
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(data, v14, a3);
  }

  return this;
}

void TSP::LargeLazyObjectArraySegment::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeLazyObjectArraySegment::Clear(this, a2, a3);

    TSP::LargeLazyObjectArraySegment::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeLazyObjectArraySegment::GetMetadata(TSP::LargeLazyObjectArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[74];
  v2 = off_1001E9950[75];
  return result;
}

void *TSP::LargeObjectArraySegment::LargeObjectArraySegment(void *a1, uint64_t a2)
{
  *a1 = off_1001CB290;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_LargeObjectArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArraySegment_TSPMessages_2eproto);
  }

  a1[6] = 0;
  return a1;
}

void TSP::LargeObjectArraySegment::~LargeObjectArraySegment(TSP::LargeObjectArraySegment *this)
{
  if (this != TSP::_LargeObjectArraySegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::LargeArraySegment::~LargeArraySegment(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_10006A9B4(this + 3);
}

{
  TSP::LargeObjectArraySegment::~LargeObjectArraySegment(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeObjectArraySegment::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
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

  if (*(v3 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v3 + 48), a2, a3);
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeObjectArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_1000313B0(a3, &v27, i))
    {
      return v27;
    }

    v7 = (v27 + 1);
    v8 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v27 + 2);
LABEL_6:
      v27 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 48);
    if (!v23)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(v24);
      *(a1 + 48) = v23;
      v7 = v27;
    }

    v14 = sub_100158238(a3, v23, v7);
LABEL_38:
    v27 = v14;
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
      v27 = (v15 + 1);
      v17 = *(a1 + 40);
      if (!v17)
      {
        break;
      }

      v22 = *(a1 + 32);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(a1 + 32) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_27;
      }

      if (v18 == *(a1 + 36))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v27;
LABEL_27:
      v15 = sub_100155104(a3, v19, v16);
      v27 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_39;
      }
    }

    v18 = *(a1 + 36);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
    v17 = *(a1 + 40);
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v27;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
    goto LABEL_38;
  }

  *(a3 + 80) = v8 - 1;
  return v27;
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

char *TSP::LargeObjectArraySegment::ByteSizeLong(TSP::LargeObjectArraySegment *this)
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
    v8 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6));
    v2 = &v8[v2 + 1 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)];
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

void TSP::LargeObjectArraySegment::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeObjectArraySegment::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::LargeObjectArraySegment::MergeFrom(std::string *this, const TSP::LargeObjectArraySegment *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1], *(a2 + 8));
    this = sub_10006AA4C(&v4[1], v8, v7 + 8, v6, *v4[1].__r_.__value_.__r.__words[2] - LODWORD(v4[1].__r_.__value_.__r.__words[1]));
    v9 = LODWORD(v4[1].__r_.__value_.__r.__words[1]) + v6;
    LODWORD(v4[1].__r_.__value_.__r.__words[1]) = v9;
    v10 = v4[1].__r_.__value_.__r.__words[2];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 6);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    data = v4[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      data = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArraySegment>(size);
      v4[2].__r_.__value_.__r.__words[0] = data;
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = TSP::_LargeArraySegment_default_instance_;
    }

    return TSP::LargeArraySegment::MergeFrom(data, v14, a3);
  }

  return this;
}

void TSP::LargeObjectArraySegment::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeObjectArraySegment::Clear(this, a2, a3);

    TSP::LargeObjectArraySegment::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeObjectArraySegment::GetMetadata(TSP::LargeObjectArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[76];
  v2 = off_1001E9950[77];
  return result;
}

uint64_t TSP::LargeArray::LargeArray(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CB340;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_LargeArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeArray_TSPMessages_2eproto);
  }

  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_100064EF8(_Unwind_Exception *a1)
{
  sub_10006A9B4(v2);
  sub_10006A1CC(v1);
  _Unwind_Resume(a1);
}

void TSP::LargeArray::~LargeArray(TSP::LargeArray *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A9B4(this + 6);
  sub_10006A1CC(this + 3);
}

{
  TSP::LargeArray::~LargeArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::Range::Clear(v6, a2, a3);
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

  if ((*(v3 + 16) & 0x7F) != 0)
  {
    *(v3 + 104) = 0;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
  }

  v11 = *(v3 + 8);
  v10 = v3 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1000315EC(v10, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v68 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v68, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v68 + 1);
      v9 = *v68;
      if ((*v68 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v68, (v10 - 128));
      v68 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_112;
      }

      v8 = TagFallback;
      v9 = v5;
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
              v68 = (v16 + 1);
              v18 = *(a1 + 64);
              if (!v18)
              {
                v19 = *(a1 + 60);
                goto LABEL_27;
              }

              v23 = *(a1 + 56);
              v19 = *v18;
              if (v23 >= *v18)
              {
                if (v19 == *(a1 + 60))
                {
LABEL_27:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v19 + 1);
                  v18 = *(a1 + 64);
                  v19 = *v18;
                }

                *v18 = v19 + 1;
                v20 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 48));
                v21 = *(a1 + 56);
                v22 = *(a1 + 64) + 8 * v21;
                *(a1 + 56) = v21 + 1;
                *(v22 + 8) = v20;
                v17 = v68;
              }

              else
              {
                *(a1 + 56) = v23 + 1;
                v20 = *&v18[2 * v23 + 2];
              }

              v16 = sub_100155104(a3, v20, v17);
              v68 = v16;
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
              v51 = (v9 & 7) == 4;
            }

            else
            {
              v51 = 1;
            }

            if (v51)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            v52 = *(a1 + 8);
            if (v52)
            {
              v53 = ((v52 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v53 = sub_100031428((a1 + 8), v5, v8);
              v8 = v68;
            }

            v68 = google::protobuf::internal::UnknownFieldParse(v9, v53, v8);
            if (!v68)
            {
LABEL_112:
              v68 = 0;
              goto LABEL_2;
            }

            goto LABEL_94;
          }

          v31 = (v8 - 1);
          while (2)
          {
            v32 = (v31 + 1);
            v68 = (v31 + 1);
            v33 = *(a1 + 40);
            if (!v33)
            {
              v34 = *(a1 + 36);
              goto LABEL_57;
            }

            v38 = *(a1 + 32);
            v34 = *v33;
            if (v38 >= *v33)
            {
              if (v34 == *(a1 + 36))
              {
LABEL_57:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v34 + 1);
                v33 = *(a1 + 40);
                v34 = *v33;
              }

              *v33 = v34 + 1;
              v35 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(a1 + 24));
              v36 = *(a1 + 32);
              v37 = *(a1 + 40) + 8 * v36;
              *(a1 + 32) = v36 + 1;
              *(v37 + 8) = v35;
              v32 = v68;
            }

            else
            {
              *(a1 + 32) = v38 + 1;
              v35 = *&v33[2 * v38 + 2];
            }

            v31 = sub_100157D58(a3, v35, v32);
            v68 = v31;
            if (!v31)
            {
              goto LABEL_112;
            }

            if (*a3 <= v31 || *v31 != 10)
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
          v40 = (v8 + 1);
          v39 = *v8;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_71;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if ((v41 & 0x80000000) == 0)
          {
            v40 = (v8 + 2);
LABEL_71:
            v68 = v40;
            *(a1 + 72) = v39;
            goto LABEL_94;
          }

          v58 = google::protobuf::internal::VarintParseSlow64(v8, v39);
          v68 = v58;
          *(a1 + 72) = v59;
          if (!v58)
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
            v68 = v25;
            *(a1 + 80) = v24;
            goto LABEL_94;
          }

          v54 = google::protobuf::internal::VarintParseSlow64(v8, v24);
          v68 = v54;
          *(a1 + 80) = v55;
          if (!v54)
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
          v46 = (v8 + 1);
          v45 = *v8;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if ((v47 & 0x80000000) == 0)
          {
            v46 = (v8 + 2);
LABEL_81:
            v68 = v46;
            *(a1 + 92) = v45 != 0;
            goto LABEL_94;
          }

          v62 = google::protobuf::internal::VarintParseSlow64(v8, v45);
          v68 = v62;
          *(a1 + 92) = v63 != 0;
          if (!v62)
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
            v68 = v27;
            *(a1 + 88) = v28;
            goto LABEL_94;
          }

          v56 = google::protobuf::internal::VarintParseSlow32(v8, v28);
          v68 = v56;
          *(a1 + 88) = v57;
          if (!v56)
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
        v43 = (v8 + 1);
        v42 = *v8;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_76;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if ((v44 & 0x80000000) == 0)
        {
          v43 = (v8 + 2);
LABEL_76:
          v68 = v43;
          *(a1 + 93) = v42 != 0;
          goto LABEL_94;
        }

        v60 = google::protobuf::internal::VarintParseSlow64(v8, v42);
        v68 = v60;
        *(a1 + 93) = v61 != 0;
        if (!v60)
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
        v49 = (v8 + 1);
        v48 = *v8;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if ((v50 & 0x80000000) == 0)
        {
          v49 = (v8 + 2);
LABEL_86:
          v68 = v49;
          *(a1 + 96) = v48;
          goto LABEL_94;
        }

        v66 = google::protobuf::internal::VarintParseSlow64(v8, v48);
        v68 = v66;
        *(a1 + 96) = v67;
        if (!v66)
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
          v68 = v13;
          *(a1 + 104) = v12;
          goto LABEL_94;
        }

        v64 = google::protobuf::internal::VarintParseSlow64(v8, v12);
        v68 = v64;
        *(a1 + 104) = v65;
        if (!v64)
        {
          goto LABEL_112;
        }
      }

LABEL_94:
      if (sub_1000313B0(a3, &v68, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v68 + 2);
LABEL_6:
    v68 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v68;
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

char *TSP::LargeArray::ByteSizeLong(TSP::LargeArray *this)
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
      v7 = TSP::Range::ByteSizeLong(v6);
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
  v9 = (v2 + v8);
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
      v9 = (v9 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6));
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 4);
  if ((v15 & 0x7F) != 0)
  {
    if (v15)
    {
      v9 = (v9 + ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1);
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
LABEL_20:
          v9 = (v9 + ((v15 >> 3) & 2) + ((v15 >> 2) & 2));
          if ((v15 & 0x20) != 0)
          {
            v9 = (v9 + ((9 * (__clz(*(this + 12) | 1) ^ 0x3F) + 73) >> 6) + 1);
          }

          if ((v15 & 0x40) != 0)
          {
            v9 = (v9 + ((9 * (__clz(*(this + 13) | 1) ^ 0x3F) + 73) >> 6) + 1);
          }

          goto LABEL_24;
        }

LABEL_19:
        v9 = (v9 + ((9 * (__clz(*(this + 22) | 1) ^ 0x1F) + 73) >> 6) + 1);
        goto LABEL_20;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v9 = (v9 + ((9 * (__clz(*(this + 10) | 1) ^ 0x3F) + 73) >> 6) + 1);
    if ((v15 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_24:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v9, this + 5);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

void TSP::LargeArray::MergeFrom(TSP::LargeArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeArray::MergeFrom(void *this, const TSP::LargeArray *a2, uint64_t a3)
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
    this = sub_10006A264(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
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

  v16 = *(a2 + 4);
  if ((v16 & 0x7F) != 0)
  {
    if (v16)
    {
      v4[9] = *(a2 + 9);
      if ((v16 & 2) == 0)
      {
LABEL_12:
        if ((v16 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_22;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_12;
    }

    v4[10] = *(a2 + 10);
    if ((v16 & 4) == 0)
    {
LABEL_13:
      if ((v16 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v4 + 22) = *(a2 + 22);
    if ((v16 & 8) == 0)
    {
LABEL_14:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v4 + 92) = *(a2 + 92);
    if ((v16 & 0x10) == 0)
    {
LABEL_15:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v4 + 93) = *(a2 + 93);
    if ((v16 & 0x20) == 0)
    {
LABEL_16:
      if ((v16 & 0x40) == 0)
      {
LABEL_18:
        *(v4 + 4) |= v16;
        return this;
      }

LABEL_17:
      v4[13] = *(a2 + 13);
      goto LABEL_18;
    }

LABEL_25:
    v4[12] = *(a2 + 12);
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return this;
}

void TSP::LargeArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeArray::Clear(this, a2, a3);

    TSP::LargeArray::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeArray::GetMetadata(TSP::LargeArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[78];
  v2 = off_1001E9950[79];
  return result;
}

void TSP::LargeNumberArray::~LargeNumberArray(TSP::LargeNumberArray *this)
{
  if (this != TSP::_LargeNumberArray_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::LargeArray::~LargeArray(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::LargeNumberArray::~LargeNumberArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeNumberArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeNumberArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(a1 + 24) = v14;
        v7 = v18;
      }

      v13 = sub_1001583D8(a3, v14, v7);
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
        *(a3 + 80) = v8 - 1;
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
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

char *TSP::LargeNumberArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::LargeNumberArray::MergeFrom(TSP::LargeNumberArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeNumberArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeNumberArray::MergeFrom(void *this, const TSP::LargeNumberArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    *(v4 + 4) |= 1u;
    v7 = v4[3];
    if (!v7)
    {
      v8 = v4[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v8);
      v4[3] = v7;
      v6 = *(a2 + 3);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v7, v9, a3);
  }

  return this;
}

void TSP::LargeNumberArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeNumberArray::Clear(this, a2, a3);

    TSP::LargeNumberArray::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeNumberArray::GetMetadata(TSP::LargeNumberArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[80];
  v2 = off_1001E9950[81];
  return result;
}

void TSP::LargeStringArray::~LargeStringArray(TSP::LargeStringArray *this)
{
  if (this != TSP::_LargeStringArray_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::LargeArray::~LargeArray(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::LargeStringArray::~LargeStringArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeStringArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeStringArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(a1 + 24) = v14;
        v7 = v18;
      }

      v13 = sub_1001583D8(a3, v14, v7);
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
        *(a3 + 80) = v8 - 1;
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
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

char *TSP::LargeStringArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::LargeStringArray::MergeFrom(TSP::LargeStringArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeStringArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeStringArray::MergeFrom(void *this, const TSP::LargeStringArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    *(v4 + 4) |= 1u;
    v7 = v4[3];
    if (!v7)
    {
      v8 = v4[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v8);
      v4[3] = v7;
      v6 = *(a2 + 3);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v7, v9, a3);
  }

  return this;
}

void TSP::LargeStringArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeStringArray::Clear(this, a2, a3);

    TSP::LargeStringArray::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeStringArray::GetMetadata(TSP::LargeStringArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[82];
  v2 = off_1001E9950[83];
  return result;
}

void TSP::LargeLazyObjectArray::~LargeLazyObjectArray(TSP::LargeLazyObjectArray *this)
{
  if (this != TSP::_LargeLazyObjectArray_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::LargeArray::~LargeArray(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::LargeLazyObjectArray::~LargeLazyObjectArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeLazyObjectArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeLazyObjectArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(a1 + 24) = v14;
        v7 = v18;
      }

      v13 = sub_1001583D8(a3, v14, v7);
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
        *(a3 + 80) = v8 - 1;
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
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

char *TSP::LargeLazyObjectArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::LargeLazyObjectArray::MergeFrom(TSP::LargeLazyObjectArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeLazyObjectArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeLazyObjectArray::MergeFrom(void *this, const TSP::LargeLazyObjectArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    *(v4 + 4) |= 1u;
    v7 = v4[3];
    if (!v7)
    {
      v8 = v4[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v8);
      v4[3] = v7;
      v6 = *(a2 + 3);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v7, v9, a3);
  }

  return this;
}

void TSP::LargeLazyObjectArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeLazyObjectArray::Clear(this, a2, a3);

    TSP::LargeLazyObjectArray::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeLazyObjectArray::GetMetadata(TSP::LargeLazyObjectArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[84];
  v2 = off_1001E9950[85];
  return result;
}

void TSP::LargeObjectArray::~LargeObjectArray(TSP::LargeObjectArray *this)
{
  if (this != TSP::_LargeObjectArray_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::LargeArray::~LargeArray(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::LargeObjectArray::~LargeObjectArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeObjectArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeObjectArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(a1 + 24) = v14;
        v7 = v18;
      }

      v13 = sub_1001583D8(a3, v14, v7);
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
        *(a3 + 80) = v8 - 1;
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
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

char *TSP::LargeObjectArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::LargeObjectArray::MergeFrom(TSP::LargeObjectArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeObjectArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeObjectArray::MergeFrom(void *this, const TSP::LargeObjectArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    *(v4 + 4) |= 1u;
    v7 = v4[3];
    if (!v7)
    {
      v8 = v4[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v8);
      v4[3] = v7;
      v6 = *(a2 + 3);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v7, v9, a3);
  }

  return this;
}

void TSP::LargeObjectArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeObjectArray::Clear(this, a2, a3);

    TSP::LargeObjectArray::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeObjectArray::GetMetadata(TSP::LargeObjectArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[86];
  v2 = off_1001E9950[87];
  return result;
}

void TSP::LargeUUIDArray::~LargeUUIDArray(TSP::LargeUUIDArray *this)
{
  if (this != TSP::_LargeUUIDArray_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::LargeArray::~LargeArray(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::LargeUUIDArray::~LargeUUIDArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeUUIDArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::LargeUUIDArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v15);
        *(a1 + 24) = v14;
        v7 = v18;
      }

      v13 = sub_1001583D8(a3, v14, v7);
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
        *(a3 + 80) = v8 - 1;
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
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

char *TSP::LargeUUIDArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::LargeUUIDArray::MergeFrom(TSP::LargeUUIDArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::LargeUUIDArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::LargeUUIDArray::MergeFrom(void *this, const TSP::LargeUUIDArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    *(v4 + 4) |= 1u;
    v7 = v4[3];
    if (!v7)
    {
      v8 = v4[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeArray>(v8);
      v4[3] = v7;
      v6 = *(a2 + 3);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_LargeArray_default_instance_;
    }

    return TSP::LargeArray::MergeFrom(v7, v9, a3);
  }

  return this;
}

void TSP::LargeUUIDArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::LargeUUIDArray::Clear(this, a2, a3);

    TSP::LargeUUIDArray::MergeFrom(this, a2);
  }
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

uint64_t TSP::LargeUUIDArray::GetMetadata(TSP::LargeUUIDArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[88];
  v2 = off_1001E9950[89];
  return result;
}

void TSP::FieldOptions::~FieldOptions(TSP::FieldOptions *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::FieldOptions::Clear(TSP::FieldOptions *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::FieldOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v18 + 2);
LABEL_6:
      v18 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
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
        v18 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        if (!v18)
        {
          return 0;
        }
      }

      else
      {
        v14 = (v7 + 2);
LABEL_19:
        v18 = v14;
      }

      if (v13 > 7)
      {
        sub_1001584E4((a1 + 8));
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
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
      *(a3 + 80) = v8 - 1;
      return v18;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v12 = sub_100031428((a1 + 8), v6, v7);
      v7 = v18;
    }

    v18 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    if (!v18)
    {
      return 0;
    }
  }

  return v18;
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

char *TSP::FieldOptions::ByteSizeLong(TSP::FieldOptions *this)
{
  if (*(this + 16))
  {
    v2 = *(this + 6);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v1, this + 5);
  }

  *(this + 5) = v1;
  return v1;
}

void TSP::FieldOptions::MergeFrom(TSP::FieldOptions *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::FieldOptions::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::FieldOptions::MergeFrom(void *this, const TSP::FieldOptions *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 6);
    *(v4 + 4) |= 1u;
    *(v4 + 6) = v6;
  }

  return this;
}

void TSP::FieldOptions::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 4) = 0;
    *(v6 + 2) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    TSP::FieldOptions::MergeFrom(this, lpsrc);
  }
}

uint64_t TSP::FieldOptions::GetMetadata(TSP::FieldOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[90];
  v2 = off_1001E9950[91];
  return result;
}

void *sub_10006821C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006ACD4(this, 1);
  *result = off_1001C9870;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  *(result + 29) = 0;
  return result;
}

void *sub_100068290(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006AD7C(this, 1);
  *result = off_1001C9920;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_100068300(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006AE24(a1);
}

void *sub_1000683D0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006AF28(a1, 1);
  TSP::SparseReferenceArray::SparseReferenceArray(v2, a1);
  return v2;
}

void *sub_10006845C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006AFB4(this, 1);
  *result = off_1001C9B30;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1000684CC(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006B05C(this, 1);
  *result = off_1001C9BE0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

void *sub_100068540(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006B104(a1);
}

void *sub_10006860C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006B204(this, 1);
  *result = off_1001C9D40;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_10006867C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006B2AC(this, 1);
  *result = off_1001C9DF0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1000686EC(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006B354(this, 1);
  *result = off_1001C9EA0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_10006875C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006B3FC(a1, 1);
  TSP::IndexSet::IndexSet(v2, a1);
  return v2;
}

double sub_1000687E8(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  v2 = sub_10006B488(this, 1);
  *v2 = off_1001CA000;
  v2[1] = this;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  v2[6] = 0;
  *&result = 0x100000001;
  v2[7] = 0x100000001;
  *(v2 + 16) = 1065353216;
  return result;
}

void *sub_100068870(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006B530(a1, 1);
  TSP::Path_Element::Path_Element(v2, a1);
  return v2;
}

void *sub_1000688FC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006B5BC(a1, 1);
  TSP::Path::Path(v2, a1);
  return v2;
}

void *sub_100068988(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006B648(a1);
}

void *sub_100068A54(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006B748(a1, 1);
  TSP::ReferenceDictionary::ReferenceDictionary(v2, a1);
  return v2;
}

void *sub_100068AE0(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006B7D4(this, 1);
  *result = off_1001CA370;
  result[1] = this;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_100068B54(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006B87C(a1, 1);
  TSP::CFUUIDArchive::CFUUIDArchive(v2, a1);
  return v2;
}

void *sub_100068BE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006B908(a1, 1);
  TSP::UUIDSetArchive::UUIDSetArchive(v2, a1);
  return v2;
}

void *sub_100068C6C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006B994(a1, 1);
  TSP::UUIDMapArchive::UUIDMapArchive(v2, a1);
  return v2;
}

void *sub_100068CF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006BA20(a1, 1);
  TSP::UUIDMultiMapArchive::UUIDMultiMapArchive(v2, a1);
  return v2;
}

void *sub_100068D84(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006BAAC(a1);
}

void *sub_100068E50(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006BBAC(a1, 1);
  TSP::UUIDRectArchive::UUIDRectArchive(v2, a1);
  return v2;
}

void *sub_100068EDC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006BC38(a1);
}

void *sub_100068FAC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006BD3C(a1, 1);
  TSP::SparseUUIDArray::SparseUUIDArray(v2, a1);
  return v2;
}

void *sub_100069038(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006BDC8(a1, 1);
  TSP::UUIDPath::UUIDPath(v2, a1);
  return v2;
}

void *sub_1000690C4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006BE54(a1);
}

void *sub_100069194(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006BF58(a1, 1);
  TSP::SparseUUIDPathArray::SparseUUIDPathArray(v2, a1);
  return v2;
}

void *sub_100069220(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006BFE4(a1, 1);
  TSP::PasteboardObject::PasteboardObject(v2, a1);
  return v2;
}

void *sub_1000692AC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C070(a1, 1);
  TSP::ObjectCollection::ObjectCollection(v2, a1);
  return v2;
}

void *sub_100069338(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C0FC(a1, 1);
  TSP::ObjectContainer::ObjectContainer(v2, a1);
  return v2;
}

void *sub_1000693C4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C188(a1, 1);
  *v2 = off_1001CADC0;
  v2[1] = a1;
  google::protobuf::internal::ExtensionSet::ExtensionSet((v2 + 2), a1);
  *(v2 + 10) = 0;
  return v2;
}

void *sub_10006948C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C214(a1, 1);
  TSP::LargeArraySegment::LargeArraySegment(v2, a1);
  return v2;
}

void *sub_100069518(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C2A0(a1, 1);
  TSP::LargeNumberArraySegment::LargeNumberArraySegment(v2, a1);
  return v2;
}

void *sub_1000695A4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006C32C(a1);
}

void *sub_100069678(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C434(a1, 1);
  TSP::LargeStringArraySegment::LargeStringArraySegment(v2, a1);
  return v2;
}

void *sub_100069704(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C4C0(a1, 1);
  TSP::LargeUUIDArraySegment::LargeUUIDArraySegment(v2, a1);
  return v2;
}

void *sub_100069790(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C54C(a1, 1);
  TSP::LargeLazyObjectArraySegment::LargeLazyObjectArraySegment(v2, a1);
  return v2;
}

void *sub_10006981C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C5D8(a1, 1);
  TSP::LargeObjectArraySegment::LargeObjectArraySegment(v2, a1);
  return v2;
}

void *sub_1000698A8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10006C664(a1, 1);
  TSP::LargeArray::LargeArray(v2, a1);
  return v2;
}

void *sub_100069934(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006C6F0(a1);
}

void *sub_100069A00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006C7F0(a1);
}

void *sub_100069ACC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006C8F0(a1);
}

void *sub_100069B98(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006C9F0(a1);
}

void *sub_100069C64(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10006CAF0(a1);
}

void *sub_100069D30(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10006CBF0(this, 1);
  *result = off_1001CB760;
  result[1] = this;
  result[2] = 0;
  *(result + 6) = 0;
  return result;
}

void sub_10006A088(void *a1)
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
          operator delete();
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

uint64_t *sub_10006A10C(uint64_t *result, TSP::SparseReferenceArray_Entry **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A1BC(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseReferenceArray_Entry>(v18);
      result = sub_10006A1BC(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006A1CC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_10002F4C4((*v3 + 8));
          operator delete();
        }

        v3 += 2;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_10006A264(uint64_t *result, TSP::Range **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A314(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(v18);
      result = sub_10006A314(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_10006A324(uint64_t *result, TSP::Point **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A3D4(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(v18);
      result = sub_10006A3D4(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006A3E4(void *a1)
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
          operator delete();
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

uint64_t *sub_10006A468(uint64_t *result, TSP::Path_Element **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A518(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Path_Element>(v18);
      result = sub_10006A518(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006A528(void *a1)
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
          operator delete();
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

uint64_t *sub_10006A5AC(uint64_t *result, TSP::ReferenceDictionary_Entry **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A65C(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ReferenceDictionary_Entry>(v18);
      result = sub_10006A65C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_10006A66C(uint64_t *result, TSP::UUID **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A71C(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v18);
      result = sub_10006A71C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006A72C(void *a1)
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
          operator delete();
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

uint64_t *sub_10006A7B0(uint64_t *result, TSP::SparseUUIDArray_Entry **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A860(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDArray_Entry>(v18);
      result = sub_10006A860(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006A870(void *a1)
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
          operator delete();
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

uint64_t *sub_10006A8F4(uint64_t *result, TSP::SparseUUIDPathArray_Entry **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006A9A4(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDPathArray_Entry>(v18);
      result = sub_10006A9A4(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006A9B4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_10002F4C4((*v3 + 8));
          operator delete();
        }

        v3 += 2;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_10006AA4C(uint64_t *result, TSP::Reference **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006AAFC(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v18);
      result = sub_10006AAFC(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006AB0C(void *a1)
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
          operator delete();
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

std::string *sub_10006AB90(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10006AC40(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeStringArraySegment_OptionalElement>(v18);
      result = sub_10006AC40(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10006AC50(google::protobuf::FieldOptions *a1, std::string::value_type a2, std::string::value_type a3)
{
  v5 = a1;
  v6 = google::protobuf::FieldOptions::default_instance(a1);
  if (atomic_load_explicit(scc_info_FieldOptions_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_TSPMessages_2eproto);
  }

  google::protobuf::internal::ExtensionSet::RegisterMessageExtension(v6, v5, a2, 0, a3, TSP::_FieldOptions_default_instance_);
}

void *sub_10006ACD4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158520(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_10006AD5C);
}

void *sub_10006AD7C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158550(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10006AE04);
}

void *sub_10006AE24(google::protobuf::Arena *a1)
{
  v2 = sub_10006AE9C(a1, 1);
  *v2 = off_1001C99D0;
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

void *sub_10006AE9C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158580(this);
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

void *sub_10006AF28(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001585B0(this);
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

void *sub_10006AFB4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001585E0(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10006B03C);
}

void *sub_10006B05C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158610(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_10006B0E4);
}

void *sub_10006B104(google::protobuf::Arena *a1)
{
  v2 = sub_10006B178(a1, 1);
  *v2 = off_1001C9C90;
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

void *sub_10006B178(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158640(this);
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

void *sub_10006B204(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158670(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10006B28C);
}

void *sub_10006B2AC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001586A0(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10006B334);
}

void *sub_10006B354(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001586D0(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10006B3DC);
}

void *sub_10006B3FC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158700(this);
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

void *sub_10006B488(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158730(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, sub_10006B510);
}

void *sub_10006B530(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158760(this);
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

void *sub_10006B5BC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158790(this);
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

void *sub_10006B648(google::protobuf::Arena *a1)
{
  v2 = sub_10006B6BC(a1, 1);
  *v2 = off_1001CA210;
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

void *sub_10006B6BC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001587C0(this);
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

void *sub_10006B748(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001587F0(this);
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

void *sub_10006B7D4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158820(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_10006B85C);
}

void *sub_10006B87C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158850(this);
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

void *sub_10006B908(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158880(this);
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

void *sub_10006B994(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001588B0(this);
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

void *sub_10006BA20(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001588E0(this);
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

void *sub_10006BAAC(google::protobuf::Arena *a1)
{
  v2 = sub_10006BB20(a1, 1);
  *v2 = off_1001CA6E0;
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

void *sub_10006BB20(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158910(this);
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

void *sub_10006BBAC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158940(this);
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

void *sub_10006BC38(google::protobuf::Arena *a1)
{
  v2 = sub_10006BCB0(a1, 1);
  *v2 = off_1001CA840;
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

void *sub_10006BCB0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158970(this);
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

void *sub_10006BD3C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001589A0(this);
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

void *sub_10006BDC8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001589D0(this);
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

void *sub_10006BE54(google::protobuf::Arena *a1)
{
  v2 = sub_10006BECC(a1, 1);
  *v2 = off_1001CAA50;
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

void *sub_10006BECC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158A00(this);
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

void *sub_10006BF58(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158A30(this);
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

void *sub_10006BFE4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158A60(this);
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

void *sub_10006C070(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158A9C(this);
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

void *sub_10006C0FC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158ACC(this);
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

void *sub_10006C188(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158AFC(this);
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

void *sub_10006C214(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158B2C(this);
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

void *sub_10006C2A0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158B5C(this);
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

void *sub_10006C32C(google::protobuf::Arena *a1)
{
  v2 = sub_10006C3A8(a1, 1);
  *v2 = off_1001CAFD0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto);
  }

  v2[3] = &google::protobuf::internal::fixed_address_empty_string;
  return v2;
}

void *sub_10006C3A8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158B8C(this);
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

void *sub_10006C434(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158BBC(this);
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

void *sub_10006C4C0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158BEC(this);
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

void *sub_10006C54C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158C1C(this);
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

void *sub_10006C5D8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158C4C(this);
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

void *sub_10006C664(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158C7C(this);
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

void *sub_10006C6F0(google::protobuf::Arena *a1)
{
  v2 = sub_10006C764(a1, 1);
  *v2 = off_1001CB3F0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeNumberArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_10006C764(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158CB8(this);
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

void *sub_10006C7F0(google::protobuf::Arena *a1)
{
  v2 = sub_10006C864(a1, 1);
  *v2 = off_1001CB4A0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeStringArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_10006C864(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158CE8(this);
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

void *sub_10006C8F0(google::protobuf::Arena *a1)
{
  v2 = sub_10006C964(a1, 1);
  *v2 = off_1001CB550;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_10006C964(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158D18(this);
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

void *sub_10006C9F0(google::protobuf::Arena *a1)
{
  v2 = sub_10006CA64(a1, 1);
  *v2 = off_1001CB600;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_10006CA64(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158D48(this);
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

void *sub_10006CAF0(google::protobuf::Arena *a1)
{
  v2 = sub_10006CB64(a1, 1);
  *v2 = off_1001CB6B0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LargeUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArray_TSPMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_10006CB64(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158D78(this);
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

void *sub_10006CBF0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100158DA8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10006CC78);
}

void sub_10006CCA8()
{
  google::protobuf::internal::AddDescriptors(&descriptor_table_TSPMessages_2eproto);
  if (atomic_load_explicit(scc_info_FieldOptions_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_TSPMessages_2eproto);
  }

  TSP::field_options = 51234;
  qword_1001EC980 = TSP::_FieldOptions_default_instance_;

  sub_10006AC50(0xC822, 11, 0);
}

void sub_10006CF98(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10006D0E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10006E094(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10006E0D8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10006E338(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10006E734(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10006E918(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10006E95C(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10006EAB4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10006EB30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x34u);
}

void sub_1000702B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000702C8(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_100070584(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_100070D50(a1, a2 - v2);
  }
}

void sub_100070728(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100070E64();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100070F0C(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

__n128 *sub_10007090C(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_100070E64();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_100070F0C(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_1000710F0(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_100070AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100070D50(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_100070E64();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100070F0C(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_100070E7C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100070ED8(exception, a1);
}

std::logic_error *sub_100070ED8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100070F0C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100070F54();
}

void sub_100070F54()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_100070F88(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000710B4(v6, v10);
    }

    sub_100070E64();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1000710B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100070F0C(a1, a2);
  }

  sub_100070E64();
}

__n128 sub_1000710F0(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_100070F0C(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void sub_100071574(id a1)
{
  v1 = TSUFrameworkBundle();
  v5 = [v1 URLForResource:@"Defaults" withExtension:@"plist"];

  if (v5)
  {
    v2 = [NSDictionary dictionaryWithContentsOfURL:?];
    v3 = v2;
    if (v2 && [v2 count])
    {
      v4 = +[NSUserDefaults standardUserDefaults];
      [v4 registerDefaults:v3];
    }
  }

  _objc_release_x2();
}

uint64_t tsu_reachable_statfs(void *a1, statfs *a2)
{
  v3 = [a1 tsu_reachableFileURLByDeletingUnreachablePathComponents];
  v4 = [v3 fileSystemRepresentation];
  if (v4)
  {
    v5 = statfs(v4, a2);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return v5;
}

void sub_100071A84(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100071E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100071EA8(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

CGImageSourceRef sub_100071EEC(uint64_t a1, CFURLRef url)
{
  result = CGImageSourceCreateWithURL(url, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100071F24(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000725FC(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100072640(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100072764(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100072888(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000729AC(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100072D3C(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000730F8(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10007313C(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100073714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007372C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100073744(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  if ([v6 resultType] == 2048)
  {
    v7 = [v6 phoneNumber];
    if (![v7 length])
    {
      v8 = +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100159790();
      }

      v9 = TSUAssertCat_log_t;
      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001597A4(v8, v9);
      }

      v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSURL(TSUAdditions) tsu_urlFromUserProvidedTelephoneString:withDataDetector:]_block_invoke");
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSURL_TSUAdditions.m"];
      [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:565 isFatal:0 description:"Expected phone number match from NSDataDetector"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if ([v7 length])
    {
      v12 = +[NSCharacterSet alphanumericCharacterSet];
      v13 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v12];
      v14 = [@"tel:" stringByAppendingString:v13];
      v15 = [NSURL URLWithString:v14];
      v16 = *(*(a1 + 32) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
    }
  }
}

void sub_100073910(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_1000739D8()
{

  return objc_opt_class();
}

id sub_1000739F0()
{

  return [v0 code];
}

void sub_100073CA4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100074CD0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100074F84(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100075474(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007592C(id a1)
{
  v1 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"*?+[(){}^$|\\./");
  objc_storeStrong(&qword_1001EAF88, v1);
  if (!qword_1001EAF88)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100159C4C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100159C60();
    }

    v2 = [NSString stringWithUTF8String:"[NSString(TSUAdditions) tsu_escapeForIcuRegex]_block_invoke"];
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:407 isFatal:0 description:"invalid nil value for '%{public}s'", "icuRegexCharSet"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

void sub_100075A68(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100076138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

NSUInteger sub_10007615C(void *a1, uint64_t a2, NSRange a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = NSUnionRange(*(*(a1[4] + 8) + 32), a3);
  result = v9.location;
  *(*(a1[4] + 8) + 32) = v9;
  if (++*(*(a1[5] + 8) + 24) >= a1[6])
  {
    *a6 = 1;
  }

  return result;
}

void sub_1000763F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007640C(uint64_t a1, uint64_t a2, NSRange a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = NSUnionRange(*(*(*(a1 + 56) + 8) + 32), a3);
  v9 = [*(a1 + 32) substringWithRange:{v8.location, v8.length}];
  v11 = [v9 stringByAppendingString:*(a1 + 40)];

  [v11 sizeWithAttributes:*(a1 + 48)];
  if (*(a1 + 64) >= v10)
  {
    *(*(*(a1 + 56) + 8) + 32) = v8;
  }

  else
  {
    *a6 = 1;
  }
}

void sub_100076B10(id a1)
{
  v1 = [NSString stringWithCString:"a" encoding:1];
  qword_1001EAF98 = objc_opt_class();

  v2 = NSStringFromClass(qword_1001EAF98);
  v3 = [v2 isEqual:@"NSTaggedPointerString"];

  if ((v3 & 1) == 0)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100159D18();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100159D2C();
    }

    v4 = [NSString stringWithUTF8String:"[NSString(TSUAdditions) tsu_isTaggedPointer]_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:742 isFatal:0 description:"expecting NSTaggedPointerString class here"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

void sub_100076C48(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100077428(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) rangeOfString:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 40);
    v8 = [NSValue valueWithRange:v5, v6];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

int64_t sub_1000774BC(id a1, NSValue *a2, NSValue *a3)
{
  v4 = a3;
  v5 = [(NSValue *)a2 rangeValue];
  v6 = [(NSValue *)v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

void sub_100077828(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

CFStringTokenizerTokenType sub_100078628(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  do
  {
    while (1)
    {
      Token = CFStringTokenizerAdvanceToNextToken(tokenizer);
      v5 = Token;
      if (Token)
      {
        break;
      }

      if (CFStringTokenizerGetCurrentTokenRange(tokenizer).location == -1)
      {
        return v5;
      }
    }
  }

  while ((Token & 0x10) != 0 && (*(a1 + 32) & 1) == 0);
  return v5;
}

void sub_1000786E4(id a1)
{
  v3 = -4;
  v1 = [[NSString alloc] initWithCharacters:&v3 length:1];
  v2 = qword_1001EAFA8;
  qword_1001EAFA8 = v1;
}

void sub_10007890C(id a1)
{
  qword_1001EAFC0 = [NSCharacterSet characterSetWithCharactersInString:@"ـ‑-‐–—"];

  _objc_release_x1();
}

void sub_1000789B0(id a1)
{
  qword_1001EAFD0 = [NSCharacterSet characterSetWithCharactersInString:@"'’‘‚“”„«»‹›」「』『"];

  _objc_release_x1();
}

void sub_100078D74(id a1)
{
  v1 = [NSMutableCharacterSet characterSetWithRange:0, 32];
  v2 = qword_1001EAFD8;
  qword_1001EAFD8 = v1;

  [qword_1001EAFD8 addCharactersInString:@"\"];
  v4 = 539566120;
  v3 = [[NSString alloc] initWithCharacters:&v4 length:2];
  [qword_1001EAFD8 addCharactersInString:v3];
}

void sub_1000794E0(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

id sub_100079730(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  if ([v1 count] >= 2)
  {
    v3 = [v1 valueForKey:@"integerValue"];
    if ([v3 count] >= 3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 arrayByAddingObject:&off_1001D71F0];
    }

    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100079E84(id a1)
{
  v4 = 0;
  v1 = [[NSRegularExpression alloc] initWithPattern:@"<REDACT .*? REDACT>" options:8 error:&v4];
  v2 = v4;
  v3 = qword_1001EAFE8;
  qword_1001EAFE8 = v1;
}

void sub_10007A3AC(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 2)
  {
    v11 = objc_begin_catch(exc_buf);
    v12 = [v11 sfu_localErrno];
    v13 = [v11 userInfo];
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:v13];
    v15 = *(v10 + 32);
    *(v10 + 32) = v14;

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x10007A340);
}

NSObject *TSUCreateRecursiveQueue(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = dispatch_queue_create([a1 UTF8String], v5);

  dispatch_queue_set_specific(v6, off_1001E9AF8, v6, 0);
  return v6;
}

void sub_10007B08C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007B33C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007B764(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007BF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_10007BF50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    [WeakRetained maxValue];
    if (v3 > 0.0)
    {
      v4 = v3;
      [WeakRetained value];
      [v2 setCompletedUnitCount:(v5 / v4 * *(a1 + 48))];
    }
  }
}

void sub_10007BFEC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t TSUFrameworkBundle()
{
  if (qword_1001EB000 != -1)
  {
    sub_10015A248();
  }

  return qword_1001EAFF8;
}

void sub_10007C7C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [NSError tsu_fileReadUnknownErrorWithUserInfo:?];
    (*(v1 + 16))(v1, 0, v4);
  }
}

void sub_10007CA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007CAB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007CAC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007CD04(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007D0B0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007D0F4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10007D138(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10007D460(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007D6D8(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10007D954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10007D978(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = objc_autoreleasePoolPush();
    if (!v3)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015A67C();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015A690();
      }

      v5 = [NSString stringWithUTF8String:"[TSUZipFileArchive copyToTemporaryLocationRelativeToURL:error:]_block_invoke"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileArchive.m"];
      [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:326 isFatal:0 description:"File should be opened."];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    [*(a1 + 32) createTemporaryDirectoryRelativeToURL:*(a1 + 40)];
    v7 = [*(*(a1 + 32) + 64) URLByAppendingPathComponent:@"Temp.zip"];
    if (v7)
    {
      v8 = [TSUFileIOChannel alloc];
      v9 = *(*(a1 + 48) + 8);
      obj = *(v9 + 40);
      v10 = [(TSUFileIOChannel *)v8 initForStreamWritingURL:v7 error:&obj];
      objc_storeStrong((v9 + 40), obj);
    }

    else
    {
      v10 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v10 != 0;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_10007CAB0;
      v39 = sub_10007CAC0;
      v40 = 0;
      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      v12 = [v3 readChannel];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10007DF44;
      v31[3] = &unk_1001CC558;
      v34 = &v35;
      v13 = v11;
      v32 = v13;
      v14 = v10;
      v33 = v14;
      [v12 readFromOffset:0 length:-1 handler:v31];

      dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      [v14 close];

      v15 = v36;
      *(*(*(a1 + 56) + 8) + 24) = v36[5] == 0;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
        if (TSUDefaultCat_init_token != -1)
        {
          sub_10015A7E0();
        }

        v16 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = [*(a1 + 40) path];
          v23 = [v7 path];
          v24 = v36[5];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v36[5] domain];
          v28 = [v36[5] code];
          v29 = v36[5];
          *buf = 138413570;
          v43 = v22;
          v44 = 2112;
          v45 = v23;
          v46 = 2114;
          v47 = v26;
          v48 = 2114;
          v49 = v27;
          v50 = 2048;
          v51 = v28;
          v52 = 2112;
          v53 = v29;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to copy zip file from %@ to %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x3Eu);
        }
      }

      _Block_object_dispose(&v35, 8);
      v10 = 0;
    }

    else
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015A718();
      }

      v17 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015A740(v17, v7);
      }
    }

    v18 = *(*(a1 + 56) + 8);
    if (*(v18 + 24) == 1)
    {
      v19 = *(a1 + 32);
      v20 = *(*(a1 + 48) + 8);
      v30 = *(v20 + 40);
      v21 = [v19 reopenWithTemporaryURL:v7 error:&v30];
      objc_storeStrong((v20 + 40), v30);
      v18 = *(*(a1 + 56) + 8);
    }

    else
    {
      v21 = 0;
    }

    *(v18 + 24) = v21;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) removeTemporaryDirectory];
    }

    objc_autoreleasePoolPop(v4);
    [v3 waitForAccessToEnd];
  }
}