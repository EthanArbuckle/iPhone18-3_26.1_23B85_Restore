void google::protobuf::UninterpretedOption::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::UninterpretedOption::Clear(this, a2, a3);

    google::protobuf::UninterpretedOption::MergeFrom(this, a2);
  }
}

BOOL google::protobuf::UninterpretedOption::IsInitialized(google::protobuf::UninterpretedOption *this)
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

uint64_t google::protobuf::UninterpretedOption::GetMetadata(google::protobuf::UninterpretedOption *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[44];
  v2 = off_1001EA190[45];
  return result;
}

uint64_t google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *a1 = off_1001D04D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = a2;
  *(a1 + 72) = a2;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 104) = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void sub_1000EA198(_Unwind_Exception *a1)
{
  sub_1000ED63C(v5);
  sub_100156D24(v3, v4, (v1 + 28), v2);
  _Unwind_Resume(a1);
}

void google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this)
{
  v2 = *(this + 12);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 13);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  sub_1000ED63C(this + 9);
  if (*(this + 13) >= 1)
  {
    v4 = *(this + 7);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::Clear(google::protobuf::SourceCodeInfo_Location *this)
{
  *(this + 6) = 0;
  *(this + 12) = 0;
  result = sub_1000ED4AC(this + 72);
  v5 = *(this + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v7 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_11:
  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::SourceCodeInfo_Location::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_1000313B0(a3, &v30, i))
    {
      return v30;
    }

    v7 = (v30 + 1);
    v8 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v30 + 2);
LABEL_6:
      v30 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = (a1 + 96);
      }

      else
      {
        if (v10 != 4)
        {
          if (v10 == 6 && v8 == 50)
          {
            v11 = v7 - 1;
            while (1)
            {
              v12 = v11 + 1;
              v30 = (v11 + 1);
              v13 = *(a1 + 88);
              if (!v13)
              {
                break;
              }

              v14 = *(a1 + 80);
              v15 = *v13;
              if (v14 >= *v13)
              {
                if (v15 == *(a1 + 84))
                {
LABEL_18:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v15 + 1);
                  v13 = *(a1 + 88);
                  v15 = *v13;
                }

                *v13 = v15 + 1;
                v16 = sub_1000B3534(*(a1 + 72));
                v17 = *(a1 + 80);
                v18 = *(a1 + 88) + 8 * v17;
                *(a1 + 80) = v17 + 1;
                *(v18 + 8) = v16;
                v12 = v30;
                goto LABEL_20;
              }

              *(a1 + 80) = v14 + 1;
              v16 = *&v13[2 * v14 + 2];
LABEL_20:
              v11 = google::protobuf::internal::InlineGreedyStringParser(v16, v12, a3);
              v30 = v11;
              if (!v11)
              {
                return 0;
              }

              if (*a3 <= v11 || *v11 != 50)
              {
                goto LABEL_56;
              }
            }

            v15 = *(a1 + 84);
            goto LABEL_18;
          }

          goto LABEL_48;
        }

        if (v8 != 34)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 2u;
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = (a1 + 104);
      }

      v22 = google::protobuf::internal::ArenaStringPtr::Mutable(v21, v20);
      v23 = google::protobuf::internal::InlineGreedyStringParser(v22, v30, a3);
      goto LABEL_55;
    }

    if (v10 == 1)
    {
      if (v8 == 10)
      {
        v19 = (a1 + 24);
        goto LABEL_39;
      }

      if (v8 == 8)
      {
        v31 = sub_100033784(&v30);
        v25 = (a1 + 24);
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_48;
      }

      if (v8 == 18)
      {
        v19 = (a1 + 48);
LABEL_39:
        v23 = google::protobuf::internal::PackedInt32Parser(v19, v7, a3);
        goto LABEL_55;
      }

      if (v8 == 16)
      {
        v31 = sub_100033784(&v30);
        v25 = (a1 + 48);
LABEL_46:
        google::protobuf::RepeatedField<int>::Add(v25, &v31);
        if (!v30)
        {
          return 0;
        }

        continue;
      }
    }

LABEL_48:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = ((v27 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v28 = sub_100031428((a1 + 8), v6, v7);
      v7 = v30;
    }

    v23 = google::protobuf::internal::UnknownFieldParse(v8, v28, v7);
LABEL_55:
    v30 = v23;
    if (!v23)
    {
      return 0;
    }

LABEL_56:
    ;
  }

  *(a3 + 80) = v8 - 1;
  return v30;
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::_InternalSerialize(google::protobuf::SourceCodeInfo_Location *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_1000EE5AC(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v7 = *(this + 16);
  if (v7 >= 1)
  {
    v4 = sub_1000EE5AC(a3, 2, this + 12, v7, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v4 = sub_100030384(a3, 3, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if ((v8 & 2) != 0)
  {
    v4 = sub_100030384(a3, 4, (*(this + 13) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v9 = *(this + 20);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v4 = sub_1000D92B8(a3, 6, *(*(this + 11) + v10), v4);
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v11 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v7);
}

char *google::protobuf::SourceCodeInfo_Location::ByteSizeLong(google::protobuf::SourceCodeInfo_Location *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(this + 10) = v3;
  v5 = v4 + v2;
  v6 = google::protobuf::internal::WireFormatLite::Int32Size(this + 12);
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(this + 16) = v7;
  v9 = *(this + 20);
  v10 = (v5 + v6 + v9);
  if (v9 >= 1)
  {
    v11 = (*(this + 11) + 8);
    do
    {
      v12 = *v11++;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v10 = (v10 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6));
      --v9;
    }

    while (v9);
  }

  v15 = *(this + 4);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      v16 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v10 = (v10 + v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v15 & 2) != 0)
    {
      v19 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v10 = (v10 + v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v10, this + 5);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

void google::protobuf::SourceCodeInfo_Location::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::SourceCodeInfo_Location::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::SourceCodeInfo_Location::MergeFrom(std::string *this, const google::protobuf::SourceCodeInfo_Location *a2, uint64_t a3)
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
    google::protobuf::RepeatedField<int>::Reserve(&v4[1], data_low + v6);
    size = v4[1].__r_.__value_.__l.__size_;
    LODWORD(v4[1].__r_.__value_.__l.__data_) += *(a2 + 6);
    this = memcpy((size + 4 * data_low), *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 12);
  if (v9)
  {
    v10 = SLODWORD(v4[2].__r_.__value_.__l.__data_);
    google::protobuf::RepeatedField<int>::Reserve(&v4[2], v10 + v9);
    v11 = v4[2].__r_.__value_.__l.__size_;
    LODWORD(v4[2].__r_.__value_.__l.__data_) += *(a2 + 12);
    this = memcpy((v11 + 4 * v10), *(a2 + 7), 4 * *(a2 + 12));
  }

  v12 = *(a2 + 20);
  if (v12)
  {
    v13 = *(a2 + 11);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[3], *(a2 + 20));
    this = sub_1000ED8E8(v4 + 3, v14, (v13 + 8), v12, *v4[3].__r_.__value_.__r.__words[2] - LODWORD(v4[3].__r_.__value_.__r.__words[1]));
    v15 = LODWORD(v4[3].__r_.__value_.__r.__words[1]) + v12;
    LODWORD(v4[3].__r_.__value_.__r.__words[1]) = v15;
    v16 = v4[3].__r_.__value_.__r.__words[2];
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 4);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      v18 = *(a2 + 12);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      v19 = v4->__r_.__value_.__l.__size_;
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v4[4], v18 & 0xFFFFFFFFFFFFFFFELL, v19);
    }

    if ((v17 & 2) != 0)
    {
      v20 = *(a2 + 13);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 2u;
      v21 = v4->__r_.__value_.__l.__size_;
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      return google::protobuf::internal::ArenaStringPtr::Set(&v4[4].__r_.__value_.__l.__size_, v20 & 0xFFFFFFFFFFFFFFFELL, v21);
    }
  }

  return this;
}

void google::protobuf::SourceCodeInfo_Location::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::SourceCodeInfo_Location::Clear(this);

    google::protobuf::SourceCodeInfo_Location::MergeFrom(this, a2);
  }
}

std::string *google::protobuf::SourceCodeInfo_Location::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::SourceCodeInfo_Location::Clear(this);

    return google::protobuf::SourceCodeInfo_Location::MergeFrom(v4, a2, v5);
  }

  return this;
}

uint64_t google::protobuf::SourceCodeInfo_Location::GetMetadata(google::protobuf::SourceCodeInfo_Location *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[46];
  v2 = off_1001EA190[47];
  return result;
}

uint64_t google::protobuf::SourceCodeInfo::SourceCodeInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0580;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return a1;
}

void google::protobuf::SourceCodeInfo::~SourceCodeInfo(google::protobuf::SourceCodeInfo *this)
{
  sub_10002F4C4(this + 1);
  sub_1000D651C(this + 2);
}

{
  google::protobuf::SourceCodeInfo::~SourceCodeInfo(this);

  operator delete();
}

void *google::protobuf::SourceCodeInfo::default_instance(google::protobuf::SourceCodeInfo *this)
{
  if (atomic_load_explicit(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_SourceCodeInfo_default_instance_;
}

google::protobuf::internal *google::protobuf::SourceCodeInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100163238(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::_InternalSerialize(google::protobuf::SourceCodeInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = google::protobuf::SourceCodeInfo_Location::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::SourceCodeInfo::ByteSizeLong(google::protobuf::SourceCodeInfo *this)
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
      v7 = google::protobuf::SourceCodeInfo_Location::ByteSizeLong(v6);
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

void google::protobuf::SourceCodeInfo::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::SourceCodeInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::SourceCodeInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::SourceCodeInfo::Clear(this, a2, a3);

    google::protobuf::SourceCodeInfo::MergeFrom(this, a2);
  }
}

std::string *google::protobuf::SourceCodeInfo::CopyFrom(std::string *this, std::string *a2, uint64_t a3)
{
  if (a2 != this)
  {
    v5 = this;
    google::protobuf::SourceCodeInfo::Clear(this, a2, a3);

    return google::protobuf::SourceCodeInfo::MergeFrom(v5, a2, v6);
  }

  return this;
}

uint64_t google::protobuf::SourceCodeInfo::GetMetadata(google::protobuf::SourceCodeInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[48];
  v2 = off_1001EA190[49];
  return result;
}

void *google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(void *a1, uint64_t a2)
{
  a1[4] = a2;
  *a1 = off_1001D0630;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[6] = &google::protobuf::internal::fixed_address_empty_string;
  a1[7] = 0;
  return a1;
}

void sub_1000EB3E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_100156CF0(v2);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
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
  google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::Clear(google::protobuf::GeneratedCodeInfo_Annotation *this, uint64_t a2, uint64_t a3)
{
  *(this + 6) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
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
    *(this + 7) = 0;
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

google::protobuf::internal *google::protobuf::GeneratedCodeInfo_Annotation::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_52;
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
            v15 = google::protobuf::internal::PackedInt32Parser((a1 + 24), v8, a3);
          }

          else
          {
            if (v9 == 8)
            {
              v31 = sub_100033784(&v30);
              google::protobuf::RepeatedField<int>::Add((a1 + 24), &v31);
              if (!v30)
              {
                goto LABEL_52;
              }

              goto LABEL_48;
            }

LABEL_40:
            if (v9)
            {
              v27 = (v9 & 7) == 4;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            v28 = *(a1 + 8);
            if (v28)
            {
              v29 = ((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v29 = sub_100031428((a1 + 8), v5, v8);
              v8 = v30;
            }

            v15 = google::protobuf::internal::UnknownFieldParse(v9, v29, v8);
          }
        }

        else
        {
          if (v11 != 2 || v9 != 18)
          {
            goto LABEL_40;
          }

          *(a1 + 16) |= 1u;
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 48), v13);
          v15 = google::protobuf::internal::InlineGreedyStringParser(v14, v30, a3);
        }

        v30 = v15;
        if (!v15)
        {
LABEL_52:
          v30 = 0;
          goto LABEL_2;
        }

        goto LABEL_48;
      }

      if (v11 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_40;
        }

        v6 |= 2u;
        v20 = (v8 + 1);
        LODWORD(v19) = *v8;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v20;
        v19 = v19 + (v21 << 7) - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v8 + 2);
LABEL_30:
          v30 = v20;
          *(a1 + 56) = v19;
          goto LABEL_48;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v8, v19);
        v30 = v25;
        *(a1 + 56) = v26;
        if (!v25)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v11 != 4 || v9 != 32)
        {
          goto LABEL_40;
        }

        v6 |= 4u;
        v17 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_23;
        }

        v18 = *v17;
        v16 = v16 + (v18 << 7) - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_23:
          v30 = v17;
          *(a1 + 60) = v16;
          goto LABEL_48;
        }

        v23 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v30 = v23;
        *(a1 + 60) = v24;
        if (!v23)
        {
          goto LABEL_52;
        }
      }

LABEL_48:
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

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::_InternalSerialize(google::protobuf::GeneratedCodeInfo_Annotation *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_1000EE5AC(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v7 = *(this + 4);
  if (v7)
  {
    v4 = sub_100030384(a3, 2, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_6;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_5;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 14);
  *v4 = 24;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v14 = v11 >> 7;
        ++v4;
        v15 = v11 >> 14;
        v11 >>= 7;
      }

      while (v15);
      *(v4 - 1) = v14;
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v7 & 4) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 15);
  *v4 = 32;
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
        v12 = v10 >> 7;
        ++v4;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(v4 - 1) = v12;
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
  }

LABEL_27:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v6);
}

char *google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(this + 10) = v3;
  v5 = (v4 + v2);
  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v5 = (v5 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1);
      if ((v6 & 2) == 0)
      {
LABEL_9:
        if ((v6 & 4) == 0)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = *(this + 15);
        if (v12 < 0)
        {
          v13 = 11;
        }

        else
        {
          v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v5 = (v5 + v13);
        goto LABEL_22;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_9;
    }

    v10 = *(this + 14);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 = (v5 + v11);
    if ((v6 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_22:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(google::protobuf::Arena **this, const google::protobuf::GeneratedCodeInfo_Annotation *a2, uint64_t a3)
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
    v7 = *(v4 + 6);
    google::protobuf::RepeatedField<int>::Reserve(v4 + 6, v7 + v6);
    v8 = v4[4];
    *(v4 + 6) += *(a2 + 6);
    this = memcpy(v8 + 4 * v7, *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 4);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 6);
      *(v4 + 4) |= 1u;
      v11 = v4[1];
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v4 + 6, v10 & 0xFFFFFFFFFFFFFFFELL, v11);
      if ((v9 & 2) == 0)
      {
LABEL_8:
        if ((v9 & 4) == 0)
        {
LABEL_10:
          *(v4 + 4) |= v9;
          return this;
        }

LABEL_9:
        *(v4 + 15) = *(a2 + 15);
        goto LABEL_10;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(v4 + 14) = *(a2 + 14);
    if ((v9 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

void google::protobuf::GeneratedCodeInfo_Annotation::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::GeneratedCodeInfo_Annotation::Clear(this, a2, a3);

    google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::GeneratedCodeInfo_Annotation::GetMetadata(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[50];
  v2 = off_1001EA190[51];
  return result;
}

uint64_t google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D06E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return a1;
}

void google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EE6BC(this + 2);
}

{
  google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = google::protobuf::GeneratedCodeInfo_Annotation::Clear(v6, a2, a3);
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

google::protobuf::internal *google::protobuf::GeneratedCodeInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::GeneratedCodeInfo_Annotation>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100163308(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::_InternalSerialize(google::protobuf::GeneratedCodeInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = google::protobuf::GeneratedCodeInfo_Annotation::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::GeneratedCodeInfo::ByteSizeLong(google::protobuf::GeneratedCodeInfo *this)
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
      v7 = google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(v6);
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

void google::protobuf::GeneratedCodeInfo::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::GeneratedCodeInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **google::protobuf::GeneratedCodeInfo::MergeFrom(google::protobuf::Arena **this, const google::protobuf::GeneratedCodeInfo *a2, uint64_t a3)
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
    this = sub_1000EE740(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
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

void google::protobuf::GeneratedCodeInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::GeneratedCodeInfo::Clear(this, a2, a3);

    google::protobuf::GeneratedCodeInfo::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::GeneratedCodeInfo::GetMetadata(google::protobuf::GeneratedCodeInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[52];
  v2 = off_1001EA190[53];
  return result;
}

void *sub_1000EC42C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EE800(a1, 1);
  google::protobuf::FileDescriptorSet::FileDescriptorSet(v2, a1);
  return v2;
}

void *sub_1000EC4B8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EE88C(a1, 1);
  google::protobuf::FileDescriptorProto::FileDescriptorProto(v2, a1);
  return v2;
}

void *sub_1000EC544(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1000EE918(a1);
}

void *sub_1000EC610(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_1000EEA18(this, 1);
  *result = off_1001CF710;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1000EC680(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEAC0(a1, 1);
  google::protobuf::DescriptorProto::DescriptorProto(v2, a1);
  return v2;
}

void *sub_1000EC70C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEB4C(a1, 1);
  google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(v2, a1);
  return v2;
}

void *sub_1000EC798(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEBD8(a1, 1);
  google::protobuf::FieldDescriptorProto::FieldDescriptorProto(v2, a1);
  return v2;
}

void *sub_1000EC824(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEC64(a1, 1);
  google::protobuf::OneofDescriptorProto::OneofDescriptorProto(v2, a1);
  return v2;
}

void *sub_1000EC8B0(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_1000EECF0(this, 1);
  *result = off_1001CFA80;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1000EC920(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EED98(a1, 1);
  google::protobuf::EnumDescriptorProto::EnumDescriptorProto(v2, a1);
  return v2;
}

void *sub_1000EC9AC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEE24(a1, 1);
  google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(v2, a1);
  return v2;
}

void *sub_1000ECA38(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEEB0(a1, 1);
  google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(v2, a1);
  return v2;
}

void *sub_1000ECAC4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEF3C(a1, 1);
  google::protobuf::MethodDescriptorProto::MethodDescriptorProto(v2, a1);
  return v2;
}

void *sub_1000ECB50(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EEFC8(a1, 1);
  google::protobuf::FileOptions::FileOptions(v2, a1);
  return v2;
}

void *sub_1000ECBDC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF054(a1, 1);
  google::protobuf::MessageOptions::MessageOptions(v2, a1);
  return v2;
}

void *sub_1000ECC68(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF0E0(a1, 1);
  google::protobuf::FieldOptions::FieldOptions(v2, a1);
  return v2;
}

void *sub_1000ECCF4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF16C(a1, 1);
  google::protobuf::OneofOptions::OneofOptions(v2, a1);
  return v2;
}

void *sub_1000ECD80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF1F8(a1, 1);
  google::protobuf::EnumOptions::EnumOptions(v2, a1);
  return v2;
}

void *sub_1000ECE0C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF284(a1, 1);
  google::protobuf::EnumValueOptions::EnumValueOptions(v2, a1);
  return v2;
}

void *sub_1000ECE98(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF310(a1, 1);
  google::protobuf::ServiceOptions::ServiceOptions(v2, a1);
  return v2;
}

void *sub_1000ECF24(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF39C(a1, 1);
  google::protobuf::MethodOptions::MethodOptions(v2, a1);
  return v2;
}

void *sub_1000ECFB0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF428(a1, 1);
  google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(v2, a1);
  return v2;
}

void *sub_1000ED03C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF4B4(a1, 1);
  google::protobuf::UninterpretedOption::UninterpretedOption(v2, a1);
  return v2;
}

void *sub_1000ED0C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF540(a1, 1);
  google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(v2, a1);
  return v2;
}

void *sub_1000ED154(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF5CC(a1, 1);
  google::protobuf::SourceCodeInfo::SourceCodeInfo(v2, a1);
  return v2;
}

void *sub_1000ED1E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF658(a1, 1);
  google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(v2, a1);
  return v2;
}

void *sub_1000ED26C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000EF6E4(a1, 1);
  google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(v2, a1);
  return v2;
}

uint64_t sub_1000ED4AC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_1000ED4F8(void *a1)
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
          google::protobuf::FileDescriptorProto::~FileDescriptorProto(*v3);
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

void sub_1000ED57C(uint64_t *a1, google::protobuf::FileDescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000ED62C(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileDescriptorProto>(v18);
      sub_1000ED62C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1000ED63C(void *a1)
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
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

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

void sub_1000ED6D8(void *a1)
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
          google::protobuf::DescriptorProto::~DescriptorProto(*v3);
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

void sub_1000ED75C(void *a1)
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
          google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(*v3);
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

void sub_1000ED7E0(void *a1)
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
          google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(*v3);
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

void sub_1000ED864(void *a1)
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
          google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(*v3);
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

std::string *sub_1000ED8E8(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      result = std::string::operator=(v15, v13);
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
      v22 = sub_1000B3534(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_1000ED994(uint64_t *a1, google::protobuf::DescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EDA44(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(v18);
      sub_1000EDA44(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1000EDA54(uint64_t *a1, google::protobuf::EnumDescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EDB04(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(v18);
      sub_1000EDB04(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1000EDB14(uint64_t *a1, google::protobuf::ServiceDescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EDBC4(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceDescriptorProto>(v18);
      sub_1000EDBC4(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1000EDBD4(uint64_t *a1, google::protobuf::FieldDescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EDC84(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(v18);
      sub_1000EDC84(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1000EDC94(void *a1)
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
          google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(*v3);
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

void sub_1000EDD18(void *a1)
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
          google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(*v3);
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

void sub_1000EDD9C(uint64_t *a1, google::protobuf::Arena ***a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EDE4C(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ExtensionRange>(v18);
      sub_1000EDE4C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1000EDE5C(uint64_t *a1, google::protobuf::OneofDescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EDF0C(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofDescriptorProto>(v18);
      sub_1000EDF0C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t *sub_1000EDF1C(uint64_t *result, google::protobuf::DescriptorProto_ReservedRange **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_1000EDFCC(v13, v15, a3);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ReservedRange>(v18);
      result = sub_1000EDFCC(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_1000EDFDC(void *a1)
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
          google::protobuf::UninterpretedOption::~UninterpretedOption(*v3);
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

std::string *sub_1000EE060(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_1000EE110(v13, v15, a3);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(v18);
      result = sub_1000EE110(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_1000EE120(void *a1)
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
          google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(*v3);
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

void sub_1000EE1A4(uint64_t *a1, google::protobuf::EnumValueDescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EE254(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueDescriptorProto>(v18);
      sub_1000EE254(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t *sub_1000EE264(uint64_t *result, google::protobuf::EnumDescriptorProto_EnumReservedRange **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_1000EE314(v13, v15, a3);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto_EnumReservedRange>(v18);
      result = sub_1000EE314(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_1000EE324(void *a1)
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
          google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(*v3);
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

void sub_1000EE3A8(uint64_t *a1, google::protobuf::MethodDescriptorProto **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
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
      sub_1000EE458(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodDescriptorProto>(v18);
      sub_1000EE458(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1000EE468(void *a1)
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
          google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(*v3);
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

std::string *sub_1000EE4EC(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_1000EE59C(v13, v15, a3);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption_NamePart>(v18);
      result = sub_1000EE59C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

unsigned __int8 *sub_1000EE5AC(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_1000497D4(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

void sub_1000EE6BC(void *a1)
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
          google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(*v3);
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

google::protobuf::Arena **sub_1000EE740(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_1000EE7F0(v13, v15, a3);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::GeneratedCodeInfo_Annotation>(v18);
      result = sub_1000EE7F0(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_1000EE800(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163450(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::FileDescriptorSet::~FileDescriptorSet);
}

void *sub_1000EE88C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163480(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xD8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xD8uLL, google::protobuf::FileDescriptorProto::~FileDescriptorProto);
}

void *sub_1000EE918(google::protobuf::Arena *a1)
{
  v2 = sub_1000EE98C(a1, 1);
  *v2 = off_1001CF660;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_1000EE98C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001634BC(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange);
}

void *sub_1000EEA18(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001634EC(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_1000EEAA0);
}

void *sub_1000EEAC0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10016351C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xE8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xE8uLL, google::protobuf::DescriptorProto::~DescriptorProto);
}

void *sub_1000EEB4C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163558(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions);
}

void *sub_1000EEBD8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163588(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x60uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x60uLL, google::protobuf::FieldDescriptorProto::~FieldDescriptorProto);
}

void *sub_1000EEC64(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001635B8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::OneofDescriptorProto::~OneofDescriptorProto);
}

void *sub_1000EECF0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001635E8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_1000EED78);
}

void *sub_1000EED98(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163618(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, google::protobuf::EnumDescriptorProto::~EnumDescriptorProto);
}

void *sub_1000EEE24(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163648(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto);
}

void *sub_1000EEEB0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163678(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto);
}

void *sub_1000EEF3C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001636A8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::MethodDescriptorProto::~MethodDescriptorProto);
}

void *sub_1000EEFC8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001636D8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xA8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xA8uLL, google::protobuf::FileOptions::~FileOptions);
}

void *sub_1000EF054(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163714(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::MessageOptions::~MessageOptions);
}

void *sub_1000EF0E0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163744(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x58uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x58uLL, google::protobuf::FieldOptions::~FieldOptions);
}

void *sub_1000EF16C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163780(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::OneofOptions::~OneofOptions);
}

void *sub_1000EF1F8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001637B0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::EnumOptions::~EnumOptions);
}

void *sub_1000EF284(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001637E0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::EnumValueOptions::~EnumValueOptions);
}

void *sub_1000EF310(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163810(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::ServiceOptions::~ServiceOptions);
}

void *sub_1000EF39C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163840(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::MethodOptions::~MethodOptions);
}

void *sub_1000EF428(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163870(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart);
}

void *sub_1000EF4B4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001638A0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x60uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x60uLL, google::protobuf::UninterpretedOption::~UninterpretedOption);
}

void *sub_1000EF540(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001638D0(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location);
}

void *sub_1000EF5CC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163900(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::SourceCodeInfo::~SourceCodeInfo);
}

void *sub_1000EF658(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163930(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation);
}

void *sub_1000EF6E4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163960(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo);
}

BOOL sub_1000EF79C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 1;
    }

    return memcmp(a1, __s, v4) != 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1000CF3C0();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) != 0;
  }

  return 1;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::Add(google::protobuf::EncodedDescriptorDatabase *this, void *a2, int a3)
{
  google::protobuf::FileDescriptorProto::FileDescriptorProto(v11, 0);
  if (google::protobuf::MessageLite::ParseFromArray(v11, a2))
  {
    v6 = sub_1000EF90C(*(this + 1), v11, a2, a3);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 559);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "Invalid file descriptor data passed to EncodedDescriptorDatabase::Add().");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v6 = 0;
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(v11);
  return v6;
}

void sub_1000EF8E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF90C(void *a1, uint64_t a2, void *a3, int a4)
{
  v51[0] = a3;
  LODWORD(v51[1]) = a4;
  v53 = 0;
  __p = 0uLL;
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    v9 = sub_1000F16A0(a1, v51);
    v10 = SHIBYTE(v53);
    a1[1] = v9;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = v51[0];
    *(v6 + 8) = v51[1];
    *v6 = v7;
    v8 = __p;
    *(v6 + 32) = v53;
    *(v6 + 16) = v8;
    a1[1] = v6 + 40;
  }

  sub_1000B3420(v51, (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), a3);
  if ((sub_1000F08E0(v51[0], v51[1]) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v51, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 631);
    v23 = google::protobuf::internal::LogMessage::operator<<(v51, "Invalid package name: ");
    v24 = google::protobuf::internal::LogMessage::operator<<(v23, (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL));
    google::protobuf::internal::LogFinisher::operator=(&v54, &v24->__r_.__value_.__l.__data_);
LABEL_18:
    google::protobuf::internal::LogMessage::~LogMessage(v51);
    return 0;
  }

  sub_1000B3420(&v50, (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), v11);
  v54 = v50;
  sub_1000CD768(&v54, v51);
  v13 = a1[1];
  v14 = v13 - 24;
  if (*(v13 - 1) < 0)
  {
    operator delete(*v14);
  }

  v15 = *v51;
  *(v14 + 16) = __p;
  *v14 = v15;
  LODWORD(v51[0]) = -858993459 * ((a1[1] - *a1) >> 3) - 1;
  sub_1000B3420(&v50, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v12);
  v54 = v50;
  sub_1000CD768(&v54, &v51[1]);
  sub_1000F1A18((a1 + 3), v51);
  if ((v16 & 1) == 0)
  {
    if (SHIBYTE(__p) < 0)
    {
      operator delete(v51[1]);
    }

    goto LABEL_17;
  }

  v17 = a1[7];
  v18 = a1[8];
  v19 = *(a2 + 176);
  *&v50 = a1[6];
  LOBYTE(v54) = 0;
  v21 = sub_1000F1D34(v17, (v19 & 0xFFFFFFFFFFFFFFFELL), ((v18 - v17) >> 5), &v50);
  if (v21 == v18)
  {
    v22 = 0;
  }

  else
  {
    sub_1000B3420(&v54, (v19 & 0xFFFFFFFFFFFFFFFELL), v20);
    v22 = !sub_1000F1CC8(&v50, v54, *(&v54 + 1), v21);
  }

  if (SHIBYTE(__p) < 0)
  {
    operator delete(v51[1]);
    if (v22)
    {
      goto LABEL_17;
    }
  }

  else if (v22)
  {
LABEL_17:
    google::protobuf::internal::LogMessage::LogMessage(v51, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 641);
    v25 = google::protobuf::internal::LogMessage::operator<<(v51, "File already exists in database: ");
    v26 = google::protobuf::internal::LogMessage::operator<<(v25, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL));
    google::protobuf::internal::LogFinisher::operator=(&v54, &v26->__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

  v28 = *(a2 + 64);
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(a2 + 56);
  if (v30)
  {
    v31 = 8 * v30;
    while (1)
    {
      v32 = *v29;
      sub_1000B3420(v51, (*(*v29 + 216) & 0xFFFFFFFFFFFFFFFELL), v20);
      result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]);
      if (!result)
      {
        break;
      }

      sub_1000B3420(v51, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((sub_1000F1310(a1, v51[0], v51[1], v32) & 1) == 0)
      {
        return 0;
      }

      ++v29;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    v34 = *(a2 + 88);
    if (v34)
    {
      v35 = v34 + 8;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a2 + 80);
    if (v36)
    {
      v37 = 8 * v36;
      do
      {
        sub_1000B3420(v51, (*(*v35 + 96) & 0xFFFFFFFFFFFFFFFELL), v20);
        if ((google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]) & 1) == 0)
        {
          return 0;
        }

        v35 += 8;
        v37 -= 8;
      }

      while (v37);
    }

    v38 = *(a2 + 136);
    if (v38)
    {
      v39 = (v38 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a2 + 128);
    if (v40)
    {
      v41 = 8 * v40;
      while (1)
      {
        v42 = *v39;
        sub_1000B3420(v51, (*(*v39 + 24) & 0xFFFFFFFFFFFFFFFELL), v20);
        result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]);
        if (!result)
        {
          break;
        }

        sub_1000B3420(v51, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v43);
        if ((sub_1000F13E0(a1, v51[0], v51[1], v42) & 1) == 0)
        {
          return 0;
        }

        ++v39;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_45:
      v44 = *(a2 + 112);
      if (v44)
      {
        v45 = (v44 + 8);
      }

      else
      {
        v45 = 0;
      }

      v46 = *(a2 + 104);
      if (v46)
      {
        v47 = 8 * v46 - 8;
        do
        {
          v48 = *v45++;
          sub_1000B3420(v51, (*(v48 + 48) & 0xFFFFFFFFFFFFFFFELL), v20);
          result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]);
          if (result)
          {
            v49 = v47 == 0;
          }

          else
          {
            v49 = 1;
          }

          v47 -= 8;
        }

        while (!v49);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

const void *google::protobuf::EncodedDescriptorDatabase::FindFileByName(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *(a1 + 8);
  sub_1000B3420(v6, a2, a3);
  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindFile(v4, v6[0], v6[1]);
  if (result)
  {
    return google::protobuf::MessageLite::ParseFromArray(a3, result);
  }

  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindFile(uint64_t a1, const char *a2, uint64_t a3)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  __s1[0] = *(a1 + 48);
  if (v7 != v8)
  {
    v9 = (v7 - v8) >> 5;
    do
    {
      v10 = &v8[4 * (v9 >> 1)];
      v11 = sub_1000F1DCC(__s1, v10, a2, a3);
      if (v11)
      {
        v9 += ~(v9 >> 1);
      }

      else
      {
        v9 >>= 1;
      }

      if (v11)
      {
        v8 = (v10 + 32);
      }
    }

    while (v9);
    v7 = *(a1 + 64);
  }

  if (v8 == v7)
  {
    return 0;
  }

  sub_1000B3420(__s1, v8 + 1, v6);
  if (__s1[1] != a3 || __s1[0] != a2 && a3 >= 1 && memcmp(__s1[0], a2, a3))
  {
    return 0;
  }

  v13 = *a1 + 40 * *v8;
  result = *v13;
  v14 = *(v13 + 8);
  return result;
}

const void *google::protobuf::EncodedDescriptorDatabase::FindFileContainingSymbol(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *(a1 + 8);
  sub_1000B3420(v8, a2, a3);
  v5 = v8[0];
  v6 = v8[1];
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(v4);
  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindSymbolOnlyFlat(v4, v5, v6);
  if (result)
  {
    return google::protobuf::MessageLite::ParseFromArray(a3, result);
  }

  return result;
}

const void *google::protobuf::EncodedDescriptorDatabase::FindFileContainingExtension(uint64_t a1, uint64_t *a2, const char *a3, google::protobuf::MessageLite *a4)
{
  v5 = a3;
  v6 = *(a1 + 8);
  sub_1000B3420(v8, a2, a3);
  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindExtension(v6, v8[0], v8[1], v5);
  if (result)
  {
    return google::protobuf::MessageLite::ParseFromArray(a4, result);
  }

  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindExtension(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *a1, const void *a2, int64_t a3, int a4)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v8 = *(a1 + 21);
  v9 = *(a1 + 22);
  *&v18 = a2;
  *(&v18 + 1) = a3;
  v19 = a4;
  v21 = *(a1 + 20);
  v20 = 0;
  v10 = sub_1000F2A14(v8, &v18, 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3), &v21);
  if (*(a1 + 22) == v10)
  {
    return 0;
  }

  v12 = v10;
  v13 = sub_1000F0CC8(v10, a1, v11);
  if (v14 != a3 || a3 >= 1 && v13 != a2 && memcmp(v13, a2, a3))
  {
    return 0;
  }

  if (v12[8] != a4)
  {
    return 0;
  }

  v15 = *a1 + 40 * *v12;
  result = *v15;
  v17 = *(v15 + 8);
  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::FindAllExtensionNumbers(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *(a1 + 8);
  sub_1000B3420(v6, a2, a3);
  return google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllExtensionNumbers(v4, v6[0], v6[1], a3);
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllExtensionNumbers(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *a1, const void *a2, int64_t a3, const void **a4)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v8 = *(a1 + 21);
  v9 = *(a1 + 22);
  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = 0;
  v23 = *(a1 + 20);
  v22 = 0;
  v10 = sub_1000F2A14(v8, &v20, 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3), &v23);
  if (*(a1 + 22) == v10 || (v12 = v10, v13 = sub_1000F0CC8(v10, a1, v11), v14 != a3))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v12 + 40;
    while (a3 < 1 || v13 == a2 || !memcmp(v13, a2, a3))
    {
      sub_1000B966C(a4, (v16 - 8));
      if (v16 == *(a1 + 22))
      {
        v15 = 1;
        return v15 & 1;
      }

      v13 = sub_1000F0CC8(v16, a1, v17);
      v16 += 40;
      v15 = 1;
      if (v18 != a3)
      {
        return v15 & 1;
      }
    }
  }

  return v15 & 1;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(uint64_t a1, unsigned __int8 *a2, std::string::size_type a3)
{
  v73 = -858993459 * ((*(a1 + 8) - *a1) >> 3) - 1;
  __p[0].__r_.__value_.__r.__words[0] = a2;
  __p[0].__r_.__value_.__l.__size_ = a3;
  sub_1000CD768(__p, &v74);
  sub_1000F081C(&v73, a1, v6, &v72);
  if ((sub_1000F08E0(a2, a3) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 703);
    v16 = google::protobuf::internal::LogMessage::operator<<(__p, "Invalid symbol name: ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, &v72);
    google::protobuf::internal::LogFinisher::operator=(&v77, &v17->__r_.__value_.__l.__data_);
LABEL_49:
    google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    v69 = 0;
    goto LABEL_50;
  }

  v9 = (a1 + 88);
  v8 = *(a1 + 88);
  v10 = (a1 + 88);
  if (v8)
  {
    v10 = (a1 + 88);
    do
    {
      v11 = sub_1000F2264((a1 + 104), &v73, (v8 + 32));
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = 8;
      }

      if (v11)
      {
        v10 = v8;
      }

      v8 = *(v8 + v12);
    }

    while (v8);
  }

  if (v10 == *(a1 + 80))
  {
    v14 = v10;
  }

  else
  {
    v13 = *v10;
    if (*v10)
    {
      do
      {
        v14 = v13;
        v13 = v13[1];
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v10[2];
        v15 = *v14 == v10;
        v10 = v14;
      }

      while (v15);
    }
  }

  sub_1000B3420(&v71, &v72, v7);
  v79 = v71;
  if (v14 != v9)
  {
    sub_1000F081C(v14 + 8, a1, v18, __p);
    sub_1000B3420(&v77, __p, v19);
    v20 = sub_1000F0C2C(v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_, v79, *(&v79 + 1));
    v22 = v20;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v22)
      {
        goto LABEL_21;
      }
    }

    else if (v20)
    {
LABEL_21:
      google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 668);
      v23 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
      v24 = google::protobuf::internal::LogMessage::operator<<(v23, &v79);
      v25 = google::protobuf::internal::LogMessage::operator<<(v24, " conflicts with the existing symbol ");
      sub_1000F081C(v14 + 8, a1, v26, &v77);
      v27 = google::protobuf::internal::LogMessage::operator<<(v25, &v77);
      v28 = google::protobuf::internal::LogMessage::operator<<(v27, ".");
      google::protobuf::internal::LogFinisher::operator=(&v76, &v28->__r_.__value_.__l.__data_);
      goto LABEL_47;
    }

    v29 = v14[1];
    if (v29)
    {
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      do
      {
        v30 = v14[2];
        v15 = *v30 == v14;
        v14 = v30;
      }

      while (!v15);
    }

    if (v30 != v9)
    {
      v31 = v79;
      sub_1000F081C(v30 + 8, a1, v21, __p);
      sub_1000B3420(&v77, __p, v32);
      v33 = sub_1000F0C2C(v31, *(&v31 + 1), v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
      v34 = v33;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
        if (v34)
        {
          goto LABEL_31;
        }
      }

      else if (v33)
      {
LABEL_31:
        google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 682);
        v35 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
        v36 = google::protobuf::internal::LogMessage::operator<<(v35, &v79);
        v37 = google::protobuf::internal::LogMessage::operator<<(v36, " conflicts with the existing symbol ");
        sub_1000F081C(v30 + 8, a1, v38, &v77);
        v39 = google::protobuf::internal::LogMessage::operator<<(v37, &v77);
        v40 = google::protobuf::internal::LogMessage::operator<<(v39, ".");
        google::protobuf::internal::LogFinisher::operator=(&v76, &v40->__r_.__value_.__l.__data_);
        goto LABEL_47;
      }

      v9 = v30;
    }
  }

  v41 = *(a1 + 112);
  v42 = *(a1 + 120);
  __p[0].__r_.__value_.__r.__words[0] = *(a1 + 104);
  v44 = sub_1000F24EC(v41, v42, &v73, __p);
  if (*(a1 + 112) == v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = -32;
  }

  sub_1000B3420(&v71, &v72, v43);
  v47 = (v44 + v45);
  v48 = *(a1 + 120);
  v79 = v71;
  if (v47 != v48)
  {
    sub_1000F081C(v47, a1, v46, __p);
    sub_1000B3420(&v77, __p, v49);
    v50 = sub_1000F0C2C(v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_, v79, *(&v79 + 1));
    v52 = v50;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v52)
      {
        goto LABEL_40;
      }
    }

    else if (v50)
    {
LABEL_40:
      google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 668);
      v53 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
      v54 = google::protobuf::internal::LogMessage::operator<<(v53, &v79);
      v55 = google::protobuf::internal::LogMessage::operator<<(v54, " conflicts with the existing symbol ");
      sub_1000F081C(v47, a1, v56, &v77);
      v57 = google::protobuf::internal::LogMessage::operator<<(v55, &v77);
      v58 = google::protobuf::internal::LogMessage::operator<<(v57, ".");
      google::protobuf::internal::LogFinisher::operator=(&v76, &v58->__r_.__value_.__l.__data_);
      goto LABEL_47;
    }

    v59 = v47 + 8;
    if (v59 != v48)
    {
      v60 = v79;
      sub_1000F081C(v59, a1, v51, __p);
      sub_1000B3420(&v77, __p, v61);
      v62 = sub_1000F0C2C(v60, *(&v60 + 1), v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v62)
      {
        google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 682);
        v63 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
        v64 = google::protobuf::internal::LogMessage::operator<<(v63, &v79);
        v65 = google::protobuf::internal::LogMessage::operator<<(v64, " conflicts with the existing symbol ");
        sub_1000F081C(v59, a1, v66, &v77);
        v67 = google::protobuf::internal::LogMessage::operator<<(v65, &v77);
        v68 = google::protobuf::internal::LogMessage::operator<<(v67, ".");
        google::protobuf::internal::LogFinisher::operator=(&v76, &v68->__r_.__value_.__l.__data_);
LABEL_47:
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        goto LABEL_49;
      }
    }
  }

  sub_1000F2574(a1 + 80, v9, &v73);
  v69 = 1;
LABEL_50:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (v75 < 0)
  {
    operator delete(v74);
  }

  return v69;
}

void sub_1000F074C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a32);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1000F081C(int *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, std::string *a4@<X8>)
{
  v5 = (a1 + 2);
  sub_1000B3420(&v10, (*a2 + 40 * *a1 + 16), a3);
  v7 = "";
  if (v11)
  {
    v7 = ".";
  }

  v9[0] = v7;
  v9[1] = v11 != 0;
  sub_1000B3420(&v8, v5, v6);
  google::protobuf::StrCat(&v10, v9, &v8, a4);
}

uint64_t sub_1000F08E0(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  while (1)
  {
    v2 = *a1;
    if (v2 != 46 && v2 != 95)
    {
      v3 = v2 - 58;
      v4 = (v2 & 0xFFFFFFDF) - 91;
      if (v3 <= 0xFFFFFFF5 && v4 < 0xFFFFFFE6)
      {
        break;
      }
    }

    ++a1;
    if (!--a2)
    {
      return 1;
    }
  }

  return 0;
}

void google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *this)
{
  sub_1000F0D14(this);
  v2 = *(this + 5);
  if (v2)
  {
    sub_1000F2AB4(&v14, v2 + ((*(this + 8) - *(this + 7)) >> 5));
    v3 = *(this + 3);
    v4 = *(this + 7);
    v5 = *(this + 8);
    v16 = *(this + 6);
    sub_1000F2C5C(v3, this + 4, v4, v5, v14, &v16);
    sub_1000F2E2C(this + 7);
    *(this + 56) = v14;
    *(this + 9) = v15;
    v15 = 0;
    v14 = 0uLL;
    sub_1000D5DB0(this + 24, *(this + 4));
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 3) = this + 32;
    v17 = &v14;
    sub_1000F2BB8(&v17);
  }

  v6 = *(this + 12);
  if (v6)
  {
    sub_1000F2E6C(&v14, v6 + ((*(this + 15) - *(this + 14)) >> 5));
    v7 = *(this + 10);
    v8 = *(this + 14);
    v9 = *(this + 15);
    v16 = *(this + 13);
    sub_1000F2EEC(v7, this + 11, v8, v9, v14, &v16);
    sub_1000F2E2C(this + 14);
    *(this + 7) = v14;
    *(this + 16) = v15;
    v15 = 0;
    v14 = 0uLL;
    sub_1000D5DB0(this + 80, *(this + 11));
    *(this + 11) = 0;
    *(this + 12) = 0;
    *(this + 10) = this + 88;
    v17 = &v14;
    sub_1000F2BB8(&v17);
  }

  v10 = *(this + 19);
  if (v10)
  {
    sub_1000F3028(&v14, v10 - 0x3333333333333333 * ((*(this + 22) - *(this + 21)) >> 3));
    v11 = *(this + 17);
    v12 = *(this + 21);
    v13 = *(this + 22);
    v16 = *(this + 20);
    sub_1000F3214(v11, this + 18, v12, v13, v14, &v16);
    sub_1000F33E8(this + 21);
    *(this + 168) = v14;
    *(this + 23) = v15;
    v15 = 0;
    v14 = 0uLL;
    sub_1000D5DB0(this + 136, *(this + 18));
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = this + 144;
    v17 = &v14;
    sub_1000F3170(&v17);
  }
}

void sub_1000F0AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000F3170(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindSymbolOnlyFlat(void *a1, uint64_t a2, uint64_t a3)
{
  *&v18 = a2;
  *(&v18 + 1) = a3;
  v5 = a1[13];
  v4 = a1[14];
  v6 = a1[15];
  __p.__r_.__value_.__r.__words[0] = v5;
  v7 = sub_1000F2838(v4, v6, &v18, &__p);
  v9 = -32;
  if (a1[14] == v7)
  {
    v9 = 0;
  }

  v10 = (v7 + v9);
  if (v7 + v9 == a1[15])
  {
    return 0;
  }

  sub_1000F081C(v10, a1, v8, &__p);
  sub_1000B3420(v17, &__p, v11);
  if (sub_1000F0C2C(v17[0], v17[1], v18, *(&v18 + 1)))
  {
    v12 = *a1 + 40 * *v10;
    v13 = *v12;
    v14 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1000F0C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000F0C2C(unsigned __int8 *__s2, int64_t __n, unsigned __int8 *__s1, int64_t a4)
{
  if (__n == a4)
  {
    result = 1;
    if (__n < 1 || __s2 == __s1)
    {
      return result;
    }

    if (!memcmp(__s2, __s1, __n))
    {
      return 1;
    }
  }

  return a4 >= __n && !memcmp(__s1, __s2, __n) && __s1[__n] == 46;
}

uint64_t **sub_1000F0D14(uint64_t **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    v15 = result;
    if (v1 != v2)
    {
      sub_1000F17E8(result, 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3));
    }

    v7 = 8 * (v4 >> 3);
    v12 = 0;
    v13 = 40 * v6;
    v14 = 40 * v6;
    if (0xCCCCCCCCCCCCCCCDLL * (v3 >> 3))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      sub_1000F1840(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_1000F1984(&v12);
  }

  return result;
}

void sub_1000F0E00(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000F1984(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000F0DF0);
}

__n128 google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllFileNames(void *a1, void *a2)
{
  sub_1000F0F98(a2, a1[5] + ((a1[8] - a1[7]) >> 5));
  v6 = a1[3];
  if (v6 == a1 + 4)
  {
    v12 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      sub_1000B3420(&v18, v6 + 5, v4);
      v17 = v18;
      sub_1000CD768(&v17, &v18);
      v8 = *a2 + 24 * v7;
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      result = v18;
      *(v8 + 16) = v19;
      *v8 = result;
      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      ++v7;
      v6 = v10;
    }

    while (v10 != a1 + 4);
    v12 = v7;
  }

  v14 = a1[7];
  v13 = a1[8];
  if (v14 != v13)
  {
    v15 = 24 * v12;
    do
    {
      sub_1000B3420(&v18, (v14 + 8), v4);
      v17 = v18;
      sub_1000CD768(&v17, &v18);
      v16 = *a2 + v15;
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      result = v18;
      *(v16 + 16) = v19;
      *v16 = result;
      v14 += 32;
      v15 += 24;
    }

    while (v14 != v13);
  }

  return result;
}

void sub_1000F0F98(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1000F3428(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 1);
      v3 -= 3;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

void google::protobuf::EncodedDescriptorDatabase::~EncodedDescriptorDatabase(google::protobuf::EncodedDescriptorDatabase *this)
{
  *this = off_1001D0A18;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    v6 = (v5 + 168);
    sub_1000F3170(&v6);
    sub_1000D5DB0(v5 + 136, *(v5 + 144));
    v6 = (v5 + 112);
    sub_1000F2BB8(&v6);
    sub_1000D5DB0(v5 + 80, *(v5 + 88));
    v6 = (v5 + 56);
    sub_1000F2BB8(&v6);
    sub_1000D5DB0(v5 + 24, *(v5 + 32));
    v6 = v5;
    sub_1000F3594(&v6);
    operator delete();
  }
}

{
  google::protobuf::EncodedDescriptorDatabase::~EncodedDescriptorDatabase(this);

  operator delete();
}

uint64_t sub_1000F1244@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_1000B3394(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_1000F1310(void *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a4 + 64);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 56);
  if (v10)
  {
    v11 = 8 * v10;
    while ((sub_1000F1310(a1, a2, a3, *v9) & 1) != 0)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    v12 = *(a4 + 136);
    if (v12)
    {
      v13 = (v12 + 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a4 + 128);
    if (v14)
    {
      v15 = 8 * v14 - 8;
      do
      {
        v16 = *v13++;
        result = sub_1000F13E0(a1, a2, a3, v16);
        if (result)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        v15 -= 8;
      }

      while (!v18);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000F13E0(void *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v32[0] = a2;
  v32[1] = a3;
  v6 = *(a4 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    if (!*(v6 + 8))
    {
      return 1;
    }

    v7 = *v6;
  }

  else
  {
    v7 = (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (!*(v6 + 23))
    {
      return 1;
    }
  }

  if (*v7 == 46)
  {
    LODWORD(v26.__r_.__value_.__l.__data_) = -858993459 * ((a1[1] - *a1) >> 3) - 1;
    sub_1000B3420(&v36, v6, a3);
    *&__p.__r_.__value_.__l.__data_ = v36;
    sub_1000CD768(&__p, &v26.__r_.__value_.__s.__data_[8]);
    v28 = *(a4 + 72);
    sub_1000F1E38((a1 + 17), &v26);
    if (v8)
    {
      v9 = a1[21];
      v10 = a1[22];
      std::string::basic_string(&v29, (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL), 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v36);
      v11 = *(a4 + 72);
      __p = v29;
      memset(&v29, 0, sizeof(v29));
      v31 = v11;
      v35 = a1[20];
      LOBYTE(v36) = 0;
      v13 = sub_1000F216C(v9, &__p, (0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3)), &v35);
      if (v13 == v10)
      {
        v14 = 0;
      }

      else
      {
        sub_1000B3420(v33, &__p, v12);
        v34 = v31;
        *&v36 = sub_1000F0CC8(v13, v35, v15);
        *(&v36 + 1) = v16;
        v37 = *(v13 + 32);
        v14 = sub_1000F2064(&v38, v33, &v36) ^ 1;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = 1;
    }

    if (v27 < 0)
    {
      operator delete(v26.__r_.__value_.__l.__size_);
      if (v14)
      {
        goto LABEL_18;
      }
    }

    else if (v14)
    {
LABEL_18:
      google::protobuf::internal::LogMessage::LogMessage(&v26, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor_database.cc", 756);
      v17 = google::protobuf::internal::LogMessage::operator<<(&v26, "Extension conflicts with extension already in database: extend ");
      v18 = google::protobuf::internal::LogMessage::operator<<(v17, (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL));
      v19 = google::protobuf::internal::LogMessage::operator<<(v18, " { ");
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, (*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL));
      v21 = google::protobuf::internal::LogMessage::operator<<(v20, " = ");
      v22 = google::protobuf::internal::LogMessage::operator<<(v21, *(a4 + 72));
      v23 = google::protobuf::internal::LogMessage::operator<<(v22, " } from:");
      v24 = google::protobuf::internal::LogMessage::operator<<(v23, v32);
      google::protobuf::internal::LogFinisher::operator=(&__p, &v24->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26.__r_.__value_.__l.__data_);
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000F16A0(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_100070E64();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1000F17E8(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 1);
  *(v7 + 32) = a2[4];
  *(v7 + 16) = v9;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  sub_1000F1840(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000F1984(&v16);
  return v15;
}

void sub_1000F17D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000F1984(va);
  _Unwind_Resume(a1);
}

void sub_1000F17E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100070F54();
}

uint64_t sub_1000F1840(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v8;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      v5 += 5;
    }
  }

  return sub_1000F1904(v10);
}

uint64_t sub_1000F1904(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000F193C(a1);
  }

  return a1;
}

void sub_1000F193C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t sub_1000F1984(uint64_t a1)
{
  sub_1000F19BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000F19BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1000F1A18(uint64_t a1, uint64_t a2)
{
  result = *sub_1000F1A98(a1, &v3, a2);
  if (!result)
  {
    sub_1000F1B34();
  }

  return result;
}

void *sub_1000F1A98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1000F1BEC(a1 + 24, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000F1BEC(a1 + 24, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_1000F1BD0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000F1C64(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_1000F1BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B3420(&v12, (a2 + 8), a3);
  v4 = v12;
  v5 = v13;
  sub_1000B3420(&v12, (a3 + 8), v6);
  v7 = v13;
  if (v5 >= v13)
  {
    v8 = v13;
  }

  else
  {
    v8 = v5;
  }

  v9 = memcmp(v4, v12, v8);
  if (v9 < 0)
  {
    return 1;
  }

  return v5 < v7 && v9 == 0;
}

void sub_1000F1C64(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL sub_1000F1CC8(uint64_t a1, const void *a2, const char *a3, uint64_t a4)
{
  sub_1000B3420(&v11, (a4 + 8), a3);
  v6 = v12;
  if (a3 >= v12)
  {
    v7 = v12;
  }

  else
  {
    v7 = a3;
  }

  v8 = memcmp(a2, v11, v7);
  if (v8 < 0)
  {
    return 1;
  }

  return a3 < v6 && v8 == 0;
}

uint64_t sub_1000F1D34(uint64_t a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = a1 + 32 * (v6 >> 1);
      sub_1000B3420(v11, a2, a3);
      v9 = sub_1000F1DCC(a4, v8, v11[0], v11[1]);
      if (v9)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v9)
      {
        a1 = v8 + 32;
      }
    }

    while (v6);
  }

  return a1;
}

BOOL sub_1000F1DCC(uint64_t a1, uint64_t a2, const char *a3, int64_t a4)
{
  sub_1000B3420(&v11, (a2 + 8), a3);
  v6 = v12;
  if (v12 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v12;
  }

  v8 = memcmp(v11, a3, v7);
  if (v8 < 0)
  {
    return 1;
  }

  return v6 < a4 && v8 == 0;
}

uint64_t sub_1000F1E38(uint64_t a1, uint64_t a2)
{
  result = *sub_1000F1EB8(a1, &v3, a2);
  if (!result)
  {
    sub_1000F1F54();
  }

  return result;
}

void *sub_1000F1EB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1000F1FEC((a1 + 24), a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000F1FEC((a1 + 24), (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_1000F1FD0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000F1C64(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F1FEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12[0] = sub_1000F0CC8(a2, *a1, a3);
  v12[1] = v6;
  v13 = *(a2 + 32);
  v10[0] = sub_1000F0CC8(a3, *a1, v7);
  v10[1] = v8;
  v11 = *(a3 + 32);
  return sub_1000F2064(&v14, v12, v10);
}

uint64_t sub_1000F2064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  if (v6 >= v8)
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = memcmp(*a2, *a3, v9);
  if (v10 < 0)
  {
    return 1;
  }

  if (v6 < v8 && v10 == 0)
  {
    return 1;
  }

  result = memcmp(v7, v5, v9);
  if ((result & 0x80000000) != 0)
  {
    return 0;
  }

  if (v8 >= v6 || result)
  {
    return *(a2 + 16) < *(a3 + 16);
  }

  return result;
}

_BYTE *sub_1000F2110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    result = sub_1000B32D8(result, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *result = v6;
  }

  *(a2 + 32) = *(a3 + 32);
  return result;
}

uint64_t sub_1000F216C(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = a1 + 40 * (v6 >> 1);
      sub_1000B3420(v11, a2, a3);
      v12 = *(a2 + 24);
      v9 = sub_1000F2210(a4, v8, v11);
      if (v9)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v9)
      {
        a1 = v8 + 40;
      }
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1000F2210(uint64_t *a1, uint64_t a2, const char *a3)
{
  v7[0] = sub_1000F0CC8(a2, *a1, a3);
  v7[1] = v5;
  v8 = *(a2 + 32);
  return sub_1000F2064(&v9, v7, a3);
}

uint64_t sub_1000F2264(void **a1, int *a2, char *a3)
{
  sub_1000F23FC(a1, a2, a3, v36);
  sub_1000F23FC(a1, a3, v6, v32);
  __p.__r_.__value_.__r.__words[0] = google::protobuf::StringPiece::substr(v36, 0);
  __p.__r_.__value_.__l.__size_ = v7;
  v8 = google::protobuf::StringPiece::substr(v32, 0);
  v10 = sub_1000F248C(&__p, v8, v9);
  if (v10)
  {
    return v10 >> 31;
  }

  if (v37 != v33)
  {
    sub_1000F081C(a2, *a1, v11, &__p);
    sub_1000F081C(a3, *a1, v19, &v30);
    v20 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    v21 = v30.__r_.__value_.__r.__words[0];
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v30.__r_.__value_.__l.__size_;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v30;
    }

    else
    {
      v26 = v30.__r_.__value_.__r.__words[0];
    }

    if (v25 >= size)
    {
      v27 = size;
    }

    else
    {
      v27 = v25;
    }

    v28 = memcmp(p_p, v26, v27);
    if (v28)
    {
      v12 = v28 < 0;
    }

    else
    {
      v12 = size < v25;
    }

    if (v20 < 0)
    {
      operator delete(v21);
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        return v12;
      }
    }

    else if ((v22 & 0x80) == 0)
    {
      return v12;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    return v12;
  }

  v13 = v39;
  v14 = v35;
  if (v39 >= v35)
  {
    v15 = v35;
  }

  else
  {
    v15 = v39;
  }

  v16 = memcmp(v38, v34, v15);
  v18 = v13 < v14 && v16 == 0;
  return v16 < 0 || v18;
}

void sub_1000F23E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F23FC@<X0>(void **a1@<X0>, int *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = (a2 + 2);
  sub_1000B3420(&v10, (**a1 + 40 * *a2 + 16), a3);
  v7 = *(&v10 + 1);
  if (*(&v10 + 1))
  {
    v8 = v10;
    result = sub_1000B3420(&v10, v5, v6);
    *(a4 + 16) = v10;
  }

  else
  {
    result = sub_1000B3420(&v10, v5, v6);
    v7 = *(&v10 + 1);
    v8 = v10;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1000F248C(uint64_t a1, const void *a2, int64_t a3)
{
  v3 = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 < a3)
  {
    a3 = v5;
  }

  v7 = memcmp(v4, a2, a3);
  if (v7 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v7;
  if (v7)
  {
    result = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (v5 >= v3 && v9 == 0)
  {
    return v5 > v3;
  }

  return result;
}

uint64_t sub_1000F24EC(uint64_t a1, uint64_t a2, int *a3, void **a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = (a2 - a1) >> 5;
    do
    {
      if (sub_1000F2264(a4, a3, (v4 + 32 * (v7 >> 1))))
      {
        v7 >>= 1;
      }

      else
      {
        v4 += 32 * (v7 >> 1) + 32;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

uint64_t sub_1000F2574(uint64_t a1, uint64_t *a2, char *a3)
{
  result = *sub_1000F25F8(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1000F1B34();
  }

  return result;
}

char *sub_1000F25F8(uint64_t a1, uint64_t *a2, char **a3, uint64_t *a4, char *a5)
{
  v9 = a1 + 8;
  if ((a1 + 8) != a2 && !sub_1000F2264((a1 + 24), a5, a2 + 32))
  {
    if (!sub_1000F2264((a1 + 24), a2 + 8, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = *(v18 + 2);
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000F2264((a1 + 24), a5, v15 + 32))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000F2264((a1 + 24), v12 + 8, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000F279C(a1, a3, a5);
}

char *sub_1000F279C(uint64_t a1, char **a2, int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1000F2264((a1 + 24), a3, v4 + 32))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000F2264((a1 + 24), v8 + 8, a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 1);
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_1000F2838(uint64_t a1, uint64_t a2, __int128 *a3, void **a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = (a2 - a1) >> 5;
    do
    {
      if (sub_1000F28C0(a4, a3, (v4 + 32 * (v7 >> 1))))
      {
        v7 >>= 1;
      }

      else
      {
        v4 += 32 * (v7 >> 1) + 32;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

uint64_t sub_1000F28C0(void **a1, __int128 *a2, int *a3)
{
  v35 = 0;
  v36 = 0;
  v34 = *a2;
  sub_1000F23FC(a1, a3, a3, v30);
  __p.__r_.__value_.__r.__words[0] = google::protobuf::StringPiece::substr(&v34, 0);
  __p.__r_.__value_.__l.__size_ = v6;
  v7 = google::protobuf::StringPiece::substr(v30, 0);
  v9 = sub_1000F248C(&__p, v7, v8);
  if (v9)
  {
    return v9 >> 31;
  }

  if (*(&v34 + 1) == v31)
  {
    v12 = v36;
    v13 = v33;
    if (v36 >= v33)
    {
      v14 = v33;
    }

    else
    {
      v14 = v36;
    }

    v15 = memcmp(v35, v32, v14);
    v17 = v12 < v13 && v15 == 0;
    return v15 < 0 || v17;
  }

  else
  {
    v19 = *a2;
    v18 = *(a2 + 1);
    sub_1000F081C(a3, *a1, v10, &__p);
    sub_1000B3420(&v28, &__p, v20);
    v21 = v29;
    if (v18 >= v29)
    {
      v22 = v29;
    }

    else
    {
      v22 = v18;
    }

    v23 = memcmp(v19, v28, v22);
    v25 = v18 < v21 && v23 == 0;
    v11 = v23 < 0 || v25;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v11;
}

void sub_1000F29F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F2A14(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = a1 + 40 * (v6 >> 1);
      v11 = *a2;
      v12 = *(a2 + 2);
      v9 = sub_1000F2210(a4, v8, &v11);
      if (v9)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v9)
      {
        a1 = v8 + 40;
      }
    }

    while (v6);
  }

  return a1;
}

void *sub_1000F2AB4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000F2B34(result, a2);
  }

  return result;
}

void sub_1000F2B34(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1000F2B70(a1, a2);
  }

  sub_100070E64();
}

void sub_1000F2B70(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100070F54();
}

void sub_1000F2BB8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000F2C0C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000F2C0C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

_DWORD *sub_1000F2C5C(void *a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a2)
  {
LABEL_11:
    if (a3 != a4)
    {
      v14 = a3;
      v15 = a5;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
        std::string::operator=((a5 + 8), (a3 + 8));
        a5 = v15;
        a3 = v14;
      }

      while (v14 != a4);
      return v15;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      if (sub_1000F1BEC(a6, a3, (v11 + 4)))
      {
        *a5 = *a3;
        std::string::operator=((a5 + 8), (a3 + 8));
        a3 += 32;
      }

      else
      {
        *a5 = *(v11 + 8);
        std::string::operator=((a5 + 8), (v11 + 5));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11;
            v11 = v11[2];
          }

          while (*v11 != v13);
        }
      }

      a5 += 32;
      if (v11 == a2)
      {
        goto LABEL_11;
      }
    }

    sub_1000F2D98(&v19, v11, a2, a5);
    return v17;
  }

  return a5;
}

void *sub_1000F2D98(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *(v5 + 8);
      std::string::operator=((a4 + 8), (v5 + 5));
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      a4 += 32;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_1000F2E2C(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000F2C0C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_1000F2E6C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000F2B34(result, a2);
  }

  return result;
}

_DWORD *sub_1000F2EEC(void *a1, void *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, void **a6)
{
  if (a1 == a2)
  {
LABEL_11:
    if (a3 != a4)
    {
      v14 = a3;
      v15 = a5;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
        std::string::operator=((a5 + 8), (a3 + 2));
        a5 = v15;
        a3 = v14;
      }

      while (v14 != a4);
      return v15;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      if (sub_1000F2264(a6, a3, v11 + 32))
      {
        *a5 = *a3;
        std::string::operator=((a5 + 8), (a3 + 2));
        a3 += 8;
      }

      else
      {
        *a5 = *(v11 + 8);
        std::string::operator=((a5 + 8), (v11 + 5));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11;
            v11 = v11[2];
          }

          while (*v11 != v13);
        }
      }

      a5 += 32;
      if (v11 == a2)
      {
        goto LABEL_11;
      }
    }

    sub_1000F2D98(&v19, v11, a2, a5);
    return v17;
  }

  return a5;
}

void *sub_1000F3028(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000F30CC(result, a2);
  }

  return result;
}

void sub_1000F30CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1000F3118(a1, a2);
  }

  sub_100070E64();
}

void sub_1000F3118(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100070F54();
}

void sub_1000F3170(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000F31C4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000F31C4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t sub_1000F3214(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1 == a2)
  {
LABEL_13:
    while (a3 != a4)
    {
      *a5 = *a3;
      std::string::operator=((a5 + 8), (a3 + 8));
      *(a5 + 32) = *(a3 + 32);
      a5 += 40;
      a3 += 40;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      if (sub_1000F1FEC(a6, a3, (v11 + 4)))
      {
        *a5 = *a3;
        std::string::operator=((a5 + 8), (a3 + 8));
        *(a5 + 32) = *(a3 + 32);
        a3 += 40;
      }

      else
      {
        *a5 = *(v11 + 8);
        std::string::operator=((a5 + 8), (v11 + 5));
        *(a5 + 32) = *(v11 + 16);
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11;
            v11 = v11[2];
          }

          while (*v11 != v13);
        }
      }

      a5 += 40;
      if (v11 == a2)
      {
        goto LABEL_13;
      }
    }

    sub_1000F334C(&v16, v11, a2, a5);
    return v14;
  }

  return a5;
}

void *sub_1000F334C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *(v5 + 8);
      std::string::operator=((a4 + 8), (v5 + 5));
      *(a4 + 32) = *(v5 + 16);
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      a4 += 40;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_1000F33E8(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000F31C4(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1000F3428(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100070E64();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1000CE87C(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1000CE8D4(v18);
  }
}

void sub_1000F3594(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000F35E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000F35E8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void google::protobuf::DynamicMessage::SharedCtor(google::protobuf::DynamicMessage *this, int a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 32);
  v5 = *(v4 + 108);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v4 + 48) + 32;
    do
    {
      if (*(v8 - 8) != 1 || (*(**v8 + 65) & 1) == 0)
      {
        v9 = *(v3 + 8) + 4 * v7++;
        *(this + v9) = 0;
        v5 = *(v4 + 108);
      }

      ++v6;
      v8 += 48;
    }

    while (v6 < v5);
  }

  v10 = *(v3 + 12);
  if (v10 != -1)
  {
    v11 = *(this + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ExtensionSet::ExtensionSet(this + v10, v11);
  }

  if (*(v4 + 104) >= 1)
  {
    v12 = 0;
    for (i = 0; i < *(v4 + 104); ++i)
    {
      v14 = *(v4 + 40);
      v15 = (v14 + v12);
      v16 = *(*(*(this + 2) + 40) + 4 * i);
      v17 = *(v14 + v12 + 88);
      if (v17 && (*(v17 + 24) != 1 || *(**(v17 + 32) + 65) != 1))
      {
        goto LABEL_67;
      }

      v18 = *(v15 + 6);
      if (v18)
      {
        v37 = v14 + v12;
        v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v18, memory_order_acquire) != -1)
        {
          v39 = &v40;
          v40 = &v38;
          v41 = &v37;
          std::__call_once(v18, &v39, sub_1000B32C4);
        }
      }

      v19 = (this + v16);
      v20 = *(v14 + v12 + 56);
      v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v20];
      if (v21 > 5)
      {
        if (v21 <= 7)
        {
          if (v21 == 6)
          {
            if (*(v14 + v12 + 60) == 3)
            {
              goto LABEL_52;
            }

            *v19 = *(v14 + v12 + 144);
          }

          else
          {
            if (*(v14 + v12 + 60) == 3)
            {
              goto LABEL_52;
            }

            *v19 = *(v14 + v12 + 144);
          }
        }

        else
        {
          switch(v21)
          {
            case 8:
              if (*(v14 + v12 + 60) == 3)
              {
LABEL_52:
                v29 = *(this + 1);
                if (v29)
                {
                  v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
                }

                *v19 = 0;
                *(v19 + 1) = v29;
                break;
              }

              v28 = *(google::protobuf::FieldDescriptor::default_value_enum((v14 + v12)) + 16);
              goto LABEL_60;
            case 9:
              if (*(v14 + v12 + 60) == 3)
              {
                goto LABEL_56;
              }

              v30 = *(v14 + v12 + 144);
              v31 = *(v30 + 23);
              if (v31 < 0)
              {
                v31 = *(v30 + 8);
              }

              v32 = v31 == 0;
              v27 = &google::protobuf::internal::fixed_address_empty_string;
              if (!v32)
              {
                v27 = 0;
              }

LABEL_66:
              *v19 = v27;
              break;
            case 10:
              if (*(v14 + v12 + 60) == 3)
              {
                v22 = *(v15 + 6);
                if (v22)
                {
                  v37 = v14 + v12;
                  v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
                  if (atomic_load_explicit(v22, memory_order_acquire) != -1)
                  {
                    v39 = &v40;
                    v40 = &v38;
                    v41 = &v37;
                    std::__call_once(v22, &v39, sub_1000B32C4);
                  }

                  LODWORD(v20) = *(v14 + v12 + 56);
                }

                if (v20 == 11 && google::protobuf::FieldDescriptor::is_map_message_type((v14 + v12)))
                {
                  v23 = *(this + 1);
                  if (a2)
                  {
                    if (v23)
                    {
                      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v24 = *(*(this + 2) + 16);
                    v25 = google::protobuf::FieldDescriptor::message_type(v15);
                    PrototypeNoLock = (*(*v24 + 16))(v24, v25);
                  }

                  else
                  {
                    if (v23)
                    {
                      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v33 = *(*(this + 2) + 16);
                    v34 = google::protobuf::FieldDescriptor::message_type(v15);
                    PrototypeNoLock = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(v33, v34);
                  }

                  if (v23)
                  {
                    v35 = *(this + 1);
                    if (v35)
                    {
                      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    google::protobuf::internal::DynamicMapField::DynamicMapField(v19, PrototypeNoLock, v35);
                  }

                  else
                  {
                    google::protobuf::internal::DynamicMapField::DynamicMapField(v19, PrototypeNoLock);
                  }

                  break;
                }

LABEL_56:
                v27 = *(this + 1);
                if (v27)
                {
                  v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
                }

                *(v19 + 1) = 0;
                *(v19 + 2) = 0;
                goto LABEL_66;
              }

              *v19 = 0;
              break;
          }
        }
      }

      else if (v21 <= 2)
      {
        if (v21 == 1)
        {
LABEL_47:
          if (*(v14 + v12 + 60) == 3)
          {
            goto LABEL_52;
          }

          v28 = *(v14 + v12 + 144);
LABEL_60:
          *v19 = v28;
          goto LABEL_67;
        }

        if (v21 == 2)
        {
LABEL_42:
          if (*(v14 + v12 + 60) == 3)
          {
            goto LABEL_52;
          }

          v27 = *(v14 + v12 + 144);
          goto LABEL_66;
        }
      }

      else
      {
        if (v21 == 3)
        {
          goto LABEL_47;
        }

        if (v21 == 4)
        {
          goto LABEL_42;
        }

        if (*(v14 + v12 + 60) == 3)
        {
          goto LABEL_52;
        }

        *v19 = *(v14 + v12 + 144);
      }

LABEL_67:
      v12 += 152;
    }
  }
}

uint64_t google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  v9[0] = a2;
  if (*(this + 16) == 1 && (v3 = *(*(a2 + 2) + 16), v4 = google::protobuf::DescriptorPool::generated_pool(this), v3 == v4))
  {
    v7 = *(*google::protobuf::MessageFactory::generated_factory(v4) + 16);

    return v7();
  }

  else
  {
    v5 = *(this + 3);
    v9[1] = v9;
    v6 = sub_1000F524C(v5, v9)[3];
    if (!v6)
    {
      operator new();
    }

    return *(v6 + 64);
  }
}

void sub_1000F43C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DynamicMessage::~DynamicMessage(google::protobuf::DynamicMessage *this)
{
  *this = off_1001D0A88;
  v2 = *(*(this + 2) + 32);
  sub_10002F4C4(this + 1);
  v3 = *(*(this + 2) + 12);
  if (v3 != -1)
  {
    google::protobuf::internal::ExtensionSet::~ExtensionSet((this + v3));
  }

  LODWORD(v4) = *(v2 + 104);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v2 + 40);
      v8 = v7 + v5;
      v9 = *(v7 + v5 + 88);
      if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0)
      {
        v10 = (this + *(*(*(this + 2) + 40) + 4 * v6));
        v11 = *(v8 + 48);
        if (*(v8 + 60) != 3)
        {
          if (v11)
          {
            v36 = v7 + v5;
            v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v11, memory_order_acquire) != -1)
            {
              v39 = &v37;
              v40 = &v36;
              v38 = &v39;
              std::__call_once(v11, &v38, sub_1000B32C4);
            }
          }

          v25 = v7 + v5;
          v26 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v25 + 56)];
          if (v26 != 9)
          {
            v29 = *(v8 + 48);
            if (v29)
            {
              v36 = v8;
              v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v29, memory_order_acquire) != -1)
              {
                v39 = &v37;
                v40 = &v36;
                v38 = &v39;
                std::__call_once(v29, &v38, sub_1000B32C4);
              }

              v26 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v25 + 56)];
            }

            if (v26 != 10)
            {
              goto LABEL_62;
            }

            v30 = *(*(this + 2) + 64);
            if (v30 == this || v30 == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_53;
          }

          v27 = *(this + 2);
          v23 = *(v27 + 64);
          v24 = *(*(v27 + 40) + 4 * v6);
LABEL_26:
          google::protobuf::internal::ArenaStringPtr::Destroy(v10, *(v23 + v24) & 0xFFFFFFFFFFFFFFFELL, 0);
          goto LABEL_62;
        }

        if (v11)
        {
          v36 = v7 + v5;
          v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v11, memory_order_acquire) != -1)
          {
            v39 = &v37;
            v40 = &v36;
            v38 = &v39;
            std::__call_once(v11, &v38, sub_1000B32C4);
          }
        }

        v12 = v7 + v5;
        v13 = *(v12 + 56);
        v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v13];
        if (v14 > 5)
        {
          if (v14 > 8)
          {
            if (v14 == 9)
            {
              sub_1000ED63C(v10);
            }

            else if (v14 == 10)
            {
              v28 = *(v8 + 48);
              if (v28)
              {
                v36 = v8;
                v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
                if (atomic_load_explicit(v28, memory_order_acquire) != -1)
                {
                  v39 = &v37;
                  v40 = &v36;
                  v38 = &v39;
                  std::__call_once(v28, &v38, sub_1000B32C4);
                }

                LODWORD(v13) = *(v12 + 56);
              }

              if (v13 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(v8))
              {
                (**v10)(v10);
              }

              else
              {
                sub_1000F51C0(v10);
              }
            }

            goto LABEL_62;
          }

LABEL_57:
          if (*(v10 + 1) >= 1)
          {
            v33 = v10[1];
            v35 = *(v33 - 8);
            v34 = (v33 - 8);
            if (!v35)
            {
              operator delete(v34);
            }
          }

          goto LABEL_62;
        }

        if (v14 > 2 || v14 == 1 || v14 == 2)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v15 = *(this + 2);
        v16 = -1431655765 * ((v9 - *(*(v9 + 16) + 48)) >> 4);
        v17 = v7 + v5;
        if (*(this + 4 * v16 + *(v15 + 8)) == *(v7 + v5 + 68))
        {
          v18 = *(*(v15 + 40) + 4 * (v4 + v16));
          v19 = *(v17 + 48);
          if (v19)
          {
            v36 = v7 + v5;
            v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v19, memory_order_acquire) != -1)
            {
              v39 = &v37;
              v40 = &v36;
              v38 = &v39;
              std::__call_once(v19, &v38, sub_1000B32C4);
            }
          }

          v10 = (this + v18);
          v20 = v7 + v5;
          v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 56)];
          if (v21 != 9)
          {
            v32 = *(v17 + 48);
            if (v32)
            {
              v36 = v8;
              v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v32, memory_order_acquire) != -1)
              {
                v39 = &v37;
                v40 = &v36;
                v38 = &v39;
                std::__call_once(v32, &v38, sub_1000B32C4);
              }

              v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 56)];
            }

            if (v21 != 10)
            {
              goto LABEL_62;
            }

LABEL_53:
            if (*v10)
            {
              (*(**v10 + 8))(*v10);
            }

            goto LABEL_62;
          }

          v22 = *(this + 2);
          v23 = *(v22 + 64);
          v24 = *(*(v22 + 40) + 4 * v6);
          goto LABEL_26;
        }
      }

LABEL_62:
      ++v6;
      v4 = *(v2 + 104);
      v5 += 152;
    }

    while (v6 < v4);
  }
}

{
  google::protobuf::DynamicMessage::~DynamicMessage(this);

  operator delete(v1);
}

void google::protobuf::DynamicMessage::CrossLinkPrototypes(google::protobuf::DynamicMessage *this)
{
  v2 = *(this + 2);
  v3 = v2[8];
  if (v3 != this && v3 != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/dynamic_message.cc", 603);
    v5 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: is_prototype(): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v2 = *(this + 2);
  }

  v6 = v2[4];
  if (*(v6 + 104) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = v2[2];
    do
    {
      v10 = *(v6 + 40);
      v11 = *(*(*(this + 2) + 40) + 4 * v8);
      v12 = *(v10 + v7 + 48);
      if (v12)
      {
        v15 = v10 + v7;
        v16 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v12, memory_order_acquire) != -1)
        {
          v14[0].__r_.__value_.__r.__words[0] = &v16;
          v14[0].__r_.__value_.__l.__size_ = &v15;
          v17 = v14;
          std::__call_once(v12, &v17, sub_1000B32C4);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + v7 + 56)] == 10 && *(v10 + v7 + 60) != 3)
      {
        v13 = google::protobuf::FieldDescriptor::message_type((v10 + v7));
        *(this + v11) = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(v9, v13);
      }

      ++v8;
      v7 += 152;
    }

    while (v8 < *(v6 + 104));
  }
}

void sub_1000F4AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::DynamicMessage::New(google::protobuf::DynamicMessage *this, google::protobuf::Arena *a2)
{
  v4 = *(this + 2);
  if (a2)
  {
    v5 = sub_1000324F8(a2, *v4);
    bzero(v5, **(this + 2));
    v6 = *(this + 2);
  }

  else
  {
    v5 = operator new(*v4);
    v6 = *(this + 2);
    bzero(v5, *v6);
  }

  *v5 = off_1001D0A88;
  v5[1] = a2;
  v5[2] = v6;
  *(v5 + 6) = 0;
  google::protobuf::DynamicMessage::SharedCtor(v5, 1);
  return v5;
}

uint64_t google::protobuf::DynamicMessage::GetMetadata(google::protobuf::DynamicMessage *this)
{
  v1 = *(this + 2);
  result = *(v1 + 32);
  v3 = *(v1 + 56);
  return result;
}

void google::protobuf::DynamicMessageFactory::DynamicMessageFactory(google::protobuf::DynamicMessageFactory *this)
{
  *this = off_1001D0B38;
  *(this + 1) = 0;
  *(this + 16) = 0;
  operator new();
}

void google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2, const unsigned int *a3, const void *a4)
{
  *this = off_1001D0B38;
  for (i = *(*(this + 3) + 16); i; i = *i)
  {
    google::protobuf::DynamicMessageFactory::DeleteDefaultOneofInstance(*(i[3] + 32), a2, a3, a4);
    v6 = i[3];
    if (v6)
    {
      sub_1000F5118(v6);
      operator delete();
    }
  }

  std::mutex::~mutex((this + 32));
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    sub_1000CF798(v7);
    operator delete();
  }

  google::protobuf::MessageFactory::~MessageFactory(this);
}

{
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(this, a2, a3, a4);

  operator delete();
}

void google::protobuf::DynamicMessageFactory::DeleteDefaultOneofInstance(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2, const unsigned int *a3, const void *a4)
{
  v6 = *(this + 27);
  if (v6 >= 1)
  {
    v16[10] = v4;
    v16[11] = v5;
    v8 = 0;
    v9 = *(this + 6);
    do
    {
      v10 = v9 + 48 * v8;
      if ((*(v10 + 24) != 1 || (*(**(v10 + 32) + 65) & 1) == 0) && *(v9 + 48 * v8 + 24) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = *(*(*(v9 + 48 * v8 + 32) + 8 * v11) + 48);
          if (v12)
          {
            v13 = *(*(v9 + 48 * v8 + 32) + 8 * v11);
            v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v12, memory_order_acquire) != -1)
            {
              v16[0] = &v14;
              v16[1] = &v13;
              v15 = v16;
              std::__call_once(v12, &v15, sub_1000B32C4);
            }

            v9 = *(this + 6);
          }

          ++v11;
        }

        while (v11 < *(v9 + 48 * v8 + 24));
        v6 = *(this + 27);
      }

      ++v8;
    }

    while (v8 < v6);
  }
}

uint64_t google::protobuf::DynamicMessageFactory::GetPrototype(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  std::mutex::lock((this + 32));
  PrototypeNoLock = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(this, a2);
  std::mutex::unlock((this + 32));
  return PrototypeNoLock;
}

void google::protobuf::DynamicMessageFactory::ConstructDefaultOneofInstance(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2, const unsigned int *a3, void *a4)
{
  v6 = *(this + 27);
  if (v6 >= 1)
  {
    v24[12] = v4;
    v24[13] = v5;
    v10 = 0;
    v11 = *(this + 6);
    while (1)
    {
      v12 = v11 + 48 * v10;
      if ((*(v12 + 24) != 1 || (*(**(v12 + 32) + 65) & 1) == 0) && *(v11 + 48 * v10 + 24) >= 1)
      {
        break;
      }

LABEL_38:
      if (++v10 >= v6)
      {
        return;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = *(*(v11 + 48 * v10 + 32) + 8 * v13);
      if (*(v14 + 67))
      {
        v15 = *(v14 + 96);
        v16 = (v15 ? v15 + 80 : *(v14 + 40) + 128);
      }

      else
      {
        v16 = (*(v14 + 80) + 40);
      }

      v17 = *(a2 + ((0x286BCA1B00000000 * ((v14 - *v16) >> 3)) >> 30));
      v18 = *(v14 + 48);
      if (v18)
      {
        v21 = v14;
        v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v18, memory_order_acquire) != -1)
        {
          v24[0] = &v22;
          v24[1] = &v21;
          v23 = v24;
          std::__call_once(v18, &v23, sub_1000B32C4);
        }
      }

      v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v14 + 56)];
      if (v19 > 5)
      {
        break;
      }

      if (v19 <= 2)
      {
        if (v19 != 1)
        {
          if (v19 != 2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_30:
        v20 = *(v14 + 144);
LABEL_33:
        *(a3 + v17) = v20;
        goto LABEL_36;
      }

      if (v19 == 3)
      {
        goto LABEL_30;
      }

      if (v19 == 4)
      {
        goto LABEL_35;
      }

      *(a3 + v17) = *(v14 + 144);
LABEL_36:
      ++v13;
      v11 = *(this + 6);
      if (v13 >= *(v11 + 48 * v10 + 24))
      {
        v6 = *(this + 27);
        goto LABEL_38;
      }
    }

    if (v19 <= 7)
    {
      if (v19 == 6)
      {
        *(a3 + v17) = *(v14 + 144);
      }

      else
      {
        *(a3 + v17) = *(v14 + 144);
      }

      goto LABEL_36;
    }

    if (v19 != 8)
    {
      if (v19 != 9)
      {
        if (v19 == 10)
        {
          *(a3 + v17) = 0;
        }

        goto LABEL_36;
      }

      *(a3 + v17) = 0;
LABEL_35:
      *(a3 + v17) = *(v14 + 144);
      goto LABEL_36;
    }

    v20 = *(google::protobuf::FieldDescriptor::default_value_enum(v14) + 16);
    goto LABEL_33;
  }
}

void *sub_1000F5118(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete[]();
  }

  v5 = a1[5];
  a1[5] = 0;
  if (v5)
  {
    operator delete[]();
  }

  return a1;
}

void sub_1000F51C0(void *a1)
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
          (*(**v3 + 8))(*v3);
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

void *sub_1000F524C(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t google::protobuf::internal::GeneratedExtensionFinder::Find(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_1001EB2E0)
  {
    v3 = *(qword_1001EB2E0 + 8);
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
      v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))) ^ a2;
      v8 = vcnt_s8(v3);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (v7 >= *&v3)
        {
          v9 = v7 % *&v3;
        }
      }

      else
      {
        v9 = (*&v3 - 1) & v7;
      }

      v10 = *(*qword_1001EB2E0 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v7 == v12)
          {
            if (i[2] == v4 && *(i + 6) == a2)
            {
              v14 = *(i + 3);
              *a3 = *(i + 2);
              a3[1] = v14;
              return 1;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v3)
              {
                v12 %= *&v3;
              }
            }

            else
            {
              v12 &= *&v3 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_1000F55CC(unint64_t a1, int a2, _OWORD *a3)
{
  if ((atomic_load_explicit(&qword_1001EB2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB2F0))
  {
    operator new();
  }

  qword_1001EB2E0 = qword_1001EB2E8;
  v6 = a3[1];
  v25[0] = *a3;
  v25[1] = v6;
  v7 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v7 >> 47) ^ v7);
  v9 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
  v10 = *(qword_1001EB2E8 + 8);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v9;
  }

  v13 = *(*qword_1001EB2E8 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (v14[2] != a1 || *(v14 + 6) != a2)
  {
    goto LABEL_22;
  }

  google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 108);
  v17 = google::protobuf::internal::LogMessage::operator<<(v25, "Multiple extension registrations for type ");
  (*(*a1 + 16))(__p, a1);
  v18 = google::protobuf::internal::LogMessage::operator<<(v17, __p);
  v19 = google::protobuf::internal::LogMessage::operator<<(v18, ", field number ");
  v20 = google::protobuf::internal::LogMessage::operator<<(v19, a2);
  v21 = google::protobuf::internal::LogMessage::operator<<(v20, ".");
  google::protobuf::internal::LogFinisher::operator=(&v22, &v21->__r_.__value_.__l.__data_);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  google::protobuf::internal::LogMessage::~LogMessage(v25);
}

void google::protobuf::internal::ExtensionSet::RegisterMessageExtension(unint64_t a1, int a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6)
{
  if ((a3 & 0xFE) != 0xA)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 177);
    v12 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14.__r_.__value_.__l.__data_);
  }

  v14.__r_.__value_.__s.__data_[0] = a3;
  v14.__r_.__value_.__s.__data_[1] = a4;
  v14.__r_.__value_.__s.__data_[2] = a5;
  v14.__r_.__value_.__l.__size_ = a6;
  v15 = 0;
  sub_1000F55CC(a1, a2, &v14);
}

void sub_1000F5C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1000F5CB0(google::protobuf::Arena *this, unint64_t a2)
{
  if (a2 >> 59)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/arena.h", 310);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (num_elements) <= (std::numeric_limits<size_t>::max() / sizeof(T)): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Requested size is too large to fit into size_t.");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (this)
  {
    return sub_1000FC2CC(this, a2);
  }

  else
  {
    return operator new[](32 * a2);
  }
}

void sub_1000F5D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSet(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void google::protobuf::internal::ExtensionSet::~ExtensionSet(google::protobuf::internal::ExtensionSet *this)
{
  if (!*this)
  {
    v2 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      sub_1000FC388(*v2, (v2 + 8));
    }

    else if (*(this + 5))
    {
      v3 = 32 * *(this + 5);
      v4 = (v2 + 8);
      do
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      sub_100163AC4(v5 == 0, *(this + 2));
    }

    else if (v5)
    {
      v6 = *(this + 2);
      operator delete[]();
    }
  }
}

uint64_t google::protobuf::internal::ExtensionSet::Has(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {
    v3 = *(v2 + 10) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

_DWORD *google::protobuf::internal::ExtensionSet::FindOrNull(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 2);
  if (*(this + 4) < 0x101u)
  {
    v3 = *(this + 5);
    v4 = &v2[8 * v3];
    while (v3)
    {
      v5 = v3 >> 1;
      v6 = &v2[8 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 8;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    if (v2 != v4)
    {
      v10 = *v2;
      v9 = v2 + 2;
      if (v10 == a2)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v14 = *(v2 + 1);
  v12 = v2 + 2;
  v13 = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = v12;
  do
  {
    if (v13[8] >= a2)
    {
      v15 = v13;
    }

    v13 = *&v13[2 * (v13[8] < a2)];
  }

  while (v13);
  if (v15 == v12)
  {
    return 0;
  }

  v16 = v15[8];
  v17 = v15 + 10;
  if (v16 <= a2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(this + 2);
  if (*(this + 4) < 0x101u)
  {
    v3 = *(this + 5);
    v4 = &v2[8 * v3];
    while (v3)
    {
      v5 = v3 >> 1;
      v6 = &v2[8 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 8;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    if (v2 != v4)
    {
      v10 = *v2;
      v9 = v2 + 2;
      if (v10 == a2)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v14 = *(v2 + 1);
  v12 = v2 + 2;
  v13 = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = v12;
  do
  {
    if (v13[8] >= a2)
    {
      v15 = v13;
    }

    v13 = *&v13[2 * (v13[8] < a2)];
  }

  while (v13);
  if (v15 == v12)
  {
    return 0;
  }

  v16 = v15[8];
  v17 = v15 + 10;
  if (v16 <= a2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::internal::ExtensionSet::ExtensionSize(google::protobuf::internal::ExtensionSet *this, int a2)
{
  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::GetSize(result);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::GetSize(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (v1 > 5)
  {
    if (v1 <= 8)
    {
      return **this;
    }

    if (v1 == 9 || v1 == 10)
    {
      return *(*this + 8);
    }
  }

  else if (v1 > 2 || v1 == 1 || v1 == 2)
  {
    return **this;
  }

  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 1719);
  v3 = google::protobuf::internal::LogMessage::operator<<(v5, "Can't get here.");
  google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_1000F6034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::ClearExtension(google::protobuf::internal::ExtensionSet *this, int a2)
{
  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::Clear(result);
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::Clear(unsigned __int8 *this)
{
  v1 = this;
  if (this[9] == 1)
  {
    v2 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
    if (v2 > 5)
    {
      if (v2 <= 8)
      {
LABEL_19:
        **this = 0;
        return this;
      }

      if (v2 == 9)
      {
        v12 = *this;

        return sub_1000ED4AC(v12);
      }

      else if (v2 == 10)
      {
        v6 = *this;
        v7 = *(*this + 8);
        if (v7 >= 1)
        {
          v8 = (*(v6 + 2) + 8);
          do
          {
            v9 = *v8++;
            this = (*(*v9 + 40))(v9);
            --v7;
          }

          while (v7);
          v6[2] = 0;
        }
      }
    }

    else if (v2 > 2 || v2 == 1 || v2 == 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = this[10];
    if ((v3 & 1) == 0)
    {
      v4 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
      if (v4 == 10)
      {
        v10 = *this;
        v11 = **v1;
        if ((v3 & 0x10) != 0)
        {
          this = (*(v11 + 112))();
        }

        else
        {
          this = (*(v11 + 40))();
        }
      }

      else if (v4 == 9)
      {
        v5 = *this;
        if (*(*this + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }

      *(v1 + 10) = *(v1 + 10) & 0xF0 | 1;
    }
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt32(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (*(v4 + 10) & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MaybeNewExtension(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::internal::ExtensionSet::Extension **a4)
{
  v6 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *a4 = v6;
  v6[2] = a3;
  return v7 & 1;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 348);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_1000F6450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC3F8(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<int>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + 4 * v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + 4 * v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt64(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, uint64_t a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 349);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 8 * a3);
}

void sub_1000F662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, uint64_t a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC4F0(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<long long>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + 8 * v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + 8 * v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt32(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (*(v4 + 10) & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetUInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 350);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_1000F6808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddUInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC5E8(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + 4 * v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + 4 * v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt64(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetUInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, uint64_t a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 351);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 8 * a3);
}

void sub_1000F69E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddUInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, uint64_t a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC6E0(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + 8 * v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + 8 * v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

float google::protobuf::internal::ExtensionSet::GetFloat(google::protobuf::internal::ExtensionSet *this, int a2, float a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, float a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

float google::protobuf::internal::ExtensionSet::GetRepeatedFloat(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 352);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_1000F6BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, float a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC7D8(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<float>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + 4 * v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + 4 * v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

double google::protobuf::internal::ExtensionSet::GetDouble(google::protobuf::internal::ExtensionSet *this, int a2, double a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, double a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

double google::protobuf::internal::ExtensionSet::GetRepeatedDouble(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 353);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 8 * a3);
}

void sub_1000F6DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, double a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC8D0(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<double>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + 8 * v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + 8 * v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

uint64_t google::protobuf::internal::ExtensionSet::GetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    a3 = *v4;
  }

  return a3 & 1;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedBool(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 354);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + a3);
}

void sub_1000F6F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, char a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC9C8(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<BOOL>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(google::protobuf::internal::ExtensionSet *this, int a2, int a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v13 = sub_1000FC5E8(*this);
      }

      else if (v12 == 4)
      {
        v13 = sub_1000FC6E0(*this);
      }

      else
      {
        v13 = sub_1000FC8D0(*this);
      }

      goto LABEL_22;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v13 = sub_1000FC4F0(*this);
        goto LABEL_22;
      }

      return *v10;
    }

LABEL_17:
    v13 = sub_1000FC3F8(*this);
    goto LABEL_22;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      v13 = sub_1000FC7D8(*this);
    }

    else
    {
      v13 = sub_1000FC9C8(*this);
    }

    goto LABEL_22;
  }

  switch(v12)
  {
    case 8:
      goto LABEL_17;
    case 9:
      v13 = sub_1000FCAC0(*this);
      goto LABEL_22;
    case 10:
      v13 = sub_1000FCBC0(*this);
LABEL_22:
      *v10 = v13;
      break;
  }

  return *v10;
}

uint64_t google::protobuf::internal::ExtensionSet::GetEnum(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (*(v4 + 10) & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

uint64_t *google::protobuf::internal::ExtensionSet::SetEnum(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedEnum(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 471);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_1000F72A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::AddEnum(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = sub_1000FC3F8(*this);
    *v12 = v14;
  }

  else
  {
    v14 = *v11;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    v16 = v15 + 1;
    google::protobuf::RepeatedField<int>::Reserve(v14, v15 + 1);
    *(*(v14 + 1) + 4 * v15) = a5;
  }

  else
  {
    *(*(v14 + 1) + 4 * v15) = a5;
    v16 = v15 + 1;
  }

  *v14 = v16;
}

uint64_t google::protobuf::internal::ExtensionSet::GetString(google::protobuf::internal::ExtensionSet *a1, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

void *google::protobuf::internal::ExtensionSet::MutableString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    *(v7 + 9) = 0;
    result = sub_1000B3534(*this);
    *v8 = result;
  }

  else
  {
    result = *v7;
  }

  *(v8 + 10) &= 0xF0u;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedString(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 533);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_1000F7498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ExtensionSet::AddString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    *(v7 + 9) = 1;
    *(v7 + 11) = 0;
    v10 = sub_1000FCAC0(*this);
    *v8 = v10;
  }

  else
  {
    v10 = *v7;
  }

  v11 = v10[2];
  if (!v11)
  {
    v13 = *(v10 + 3);
LABEL_9:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v10, v13 + 1);
    v11 = v10[2];
    v13 = *v11;
    goto LABEL_10;
  }

  v12 = *(v10 + 2);
  v13 = *v11;
  if (v12 < *v11)
  {
    *(v10 + 2) = v12 + 1;
    return *&v11[2 * v12 + 2];
  }

  if (v13 == *(v10 + 3))
  {
    goto LABEL_9;
  }

LABEL_10:
  *v11 = v13 + 1;
  result = sub_1000B3534(*v10);
  v15 = *(v10 + 2);
  v16 = v10[2] + 8 * v15;
  *(v10 + 2) = v15 + 1;
  *(v16 + 8) = result;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    *(v9 + 9) = 0;
    *(v9 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *this);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    v13 = *(v9 + 10);
    *(v9 + 10) = v13 & 0xF0;
    result = *v9;
    if ((v13 & 0x10) != 0)
    {
      v14 = *(*result + 32);

      return v14();
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, unsigned __int8 a3, const google::protobuf::FieldDescriptor *a4, google::protobuf::MessageLite *a5)
{
  if (a5)
  {
    result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v10 = result;
    *(result + 2) = a4;
    if (v11)
    {
      result[8] = a3;
      result[9] = 0;
      result[10] &= 0xFu;
    }

    else
    {
      if ((result[10] & 0x10) != 0)
      {
        v12 = *result;
        result = (*(**v10 + 48))();
        goto LABEL_14;
      }

      if (!*this)
      {
        result = *result;
        if (*v10)
        {
          result = (*(*result + 8))(result);
        }
      }
    }

    *v10 = a5;
LABEL_14:
    v10[10] &= 0xF0u;
    return result;
  }

  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::Clear(result);
  }

  return result;
}