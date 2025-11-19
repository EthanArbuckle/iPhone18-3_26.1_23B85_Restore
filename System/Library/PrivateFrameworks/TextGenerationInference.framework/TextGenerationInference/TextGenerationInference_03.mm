uint64_t sentencepiece::NBestSentencePieceText::NBestSentencePieceText(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBBF80;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_NBestSentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NBestSentencePieceText_sentencepiece_2eproto);
  }

  return a1;
}

sentencepiece::NBestSentencePieceText *sentencepiece::NBestSentencePieceText::NBestSentencePieceText(sentencepiece::NBestSentencePieceText *this, const sentencepiece::NBestSentencePieceText *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_287EBBF80;
  *(this + 3) = 0;
  *(this + 4) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(this + 16, a2 + 16);
  *(this + 10) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    if (*v4)
    {
      v6 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v6 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v7 >= 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v7 >= 0)
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v6, v9, v10);
  }

  return this;
}

void sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(sentencepiece::NBestSentencePieceText *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 755);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  google::protobuf::internal::InternalMetadata::Delete<std::string>(v3);
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::~RepeatedPtrField(this + 2);
}

{
  sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(this);

  JUMPOUT(0x26D6BF040);
}

void sub_26D3F5968(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  __clang_call_terminate(a1);
}

void *sentencepiece::NBestSentencePieceText::default_instance(sentencepiece::NBestSentencePieceText *this)
{
  if (atomic_load_explicit(scc_info_NBestSentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NBestSentencePieceText_sentencepiece_2eproto);
  }

  return &sentencepiece::_NBestSentencePieceText_default_instance_;
}

void sentencepiece::NBestSentencePieceText::Clear(sentencepiece::NBestSentencePieceText *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 31) < 0)
    {
      **(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    else
    {
      *(v3 + 8) = 0;
      *(v3 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::NBestSentencePieceText::_InternalParse(sentencepiece::NBestSentencePieceText *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v22 = a2;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v22, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v22 + 1);
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v20;
LABEL_6:
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v22 = (v11 + 1);
          v13 = *(this + 4);
          if (!v13)
          {
            break;
          }

          v18 = *(this + 6);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(this + 6) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_23;
          }

          if (v14 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v13 = v14 + 1;
          v15 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(*(this + 2));
          v16 = *(this + 6);
          v17 = *(this + 4) + 8 * v16;
          *(this + 6) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v22;
LABEL_23:
          v11 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText>(a3, v15, v12);
          v22 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_14;
          }
        }

        v14 = *(this + 7);
LABEL_19:
        google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 4, v14 + 1);
        v13 = *(this + 4);
        v14 = *v13;
        goto LABEL_20;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 20) = v6 - 1;
        return v22;
      }

      v9 = *(this + 1);
      if (v9)
      {
        v10 = ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
        v5 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v6, v10, v5, a3);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v22, *(a3 + 23)))
      {
        return v22;
      }
    }

    v5 = (v22 + 2);
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

unsigned __int8 *sentencepiece::NBestSentencePieceText::_InternalSerialize(sentencepiece::NBestSentencePieceText *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(this + 16, i);
      *a2 = 10;
      v9 = *(v8 + 11);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
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
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = sentencepiece::SentencePieceText::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - a2 >= v17)
  {
    v19 = v17;
    memcpy(a2, v18, v17);
    a2 += v19;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, a2);
}

uint64_t sentencepiece::NBestSentencePieceText::ByteSizeLong(sentencepiece::NBestSentencePieceText *this)
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
      v7 = sentencepiece::SentencePieceText::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 1);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(this + 10) = v2;
  return v2;
}

void sentencepiece::NBestSentencePieceText::CheckTypeAndMergeFrom(sentencepiece::NBestSentencePieceText *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::NBestSentencePieceText::MergeFrom(this, lpsrc);
}

void sentencepiece::NBestSentencePieceText::MergeFrom(sentencepiece::NBestSentencePieceText *this, const sentencepiece::NBestSentencePieceText *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 877);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(this + 16, a2 + 16);
}

void sub_26D3F5F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::NBestSentencePieceText::CopyFrom(sentencepiece::NBestSentencePieceText *this, const sentencepiece::NBestSentencePieceText *a2)
{
  if (a2 != this)
  {
    sentencepiece::NBestSentencePieceText::Clear(this);

    sentencepiece::NBestSentencePieceText::MergeFrom(this, a2);
  }
}

BOOL google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(a1, v2);
    if (!google::protobuf::internal::ExtensionSet::IsInitialized((v5 + 16)))
    {
      break;
    }
  }

  while (google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText_SentencePiece>(v5 + 48));
  return v3 < 1;
}

double sentencepiece::NBestSentencePieceText::InternalSwap(sentencepiece::NBestSentencePieceText *this, sentencepiece::NBestSentencePieceText *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_5:
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (v4)
    {
LABEL_6:
      v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *(v7 + 2);
      *v8 = *v7;
      *(v8 + 2) = v11;
      *v7 = v10;
      *(v7 + 2) = v9;
      goto LABEL_8;
    }

LABEL_12:
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:

  *&result = google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 16), (a2 + 16)).n128_u64[0];
  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x50uLL);
  sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x58uLL);
  sentencepiece::SentencePieceText::SentencePieceText(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NBestSentencePieceText>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x30uLL);
  sentencepiece::NBestSentencePieceText::NBestSentencePieceText(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(google::protobuf::internal::ArenaStringPtr *this)
{
  result = *this;
  if (result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 363);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !tagged_ptr_.IsTagged(): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    result = *this;
  }

  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 364);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: tagged_ptr_.UnsafeGet() != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return *this;
  }

  return result;
}

void sub_26D3F64A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(google::protobuf::internal::EpsCopyInputStream *this, const char **a2, int a3)
{
  v6 = *a2;
  if (!*a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 209);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: *ptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v6 = *a2;
  }

  if (v6 >= *this)
  {
    v10 = v6 - *(this + 2);
    if (v10 >= 17)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 212);
      v11 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (overrun) <= (kSlopBytes): ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    if (*(this + 7) == v10)
    {
      if (v10 >= 1 && !*(this + 2))
      {
        *a2 = 0;
      }

      v8 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v10, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_26D3F65E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 24))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v2, 0x20, google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<std::string>>);
  *AlignedAndAddCleanup = 0u;
  *(AlignedAndAddCleanup + 16) = 0u;
  *a1 = AlignedAndAddCleanup | 1;
  *AlignedAndAddCleanup = v2;
  return (AlignedAndAddCleanup + 8);
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<std::string>>(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::SentencePieceText_SentencePiece::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_26D3F6778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::SentencePieceText::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_26D3F6828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(void *a1)
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
          sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(*v3);
          MEMORY[0x26D6BF040]();
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

void google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(google::protobuf::internal::ArenaImpl **this)
{
  v1 = *this;
  if (v1)
  {
    google::protobuf::internal::ArenaImpl::SpaceAllocated(v1);
  }
}

uint64_t google::protobuf::internal::EpsCopyInputStream::PushLimit(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, unsigned int a3)
{
  v4 = a2;
  if (a3 >= 0x7FFFFFF0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 128);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: limit >= 0 && limit <= INT_MAX - kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v7 = *(this + 1);
  v8 = v4 - v7 + a3;
  *this = v7 + (v8 & (v8 >> 31));
  LODWORD(v7) = *(this + 7);
  *(this + 7) = v8;
  return (v7 - v8);
}

void sub_26D3F69D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_26D3F6AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t *a1, sentencepiece::SentencePieceText_SentencePiece **a2, sentencepiece::SentencePieceText_SentencePiece **a3, unsigned int a4, unsigned int a5)
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
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText_SentencePiece>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText_SentencePiece>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

__n128 google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (this == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2590);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*this != *a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2591);
    v5 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  result = *(a2 + 8);
  *(this + 8) = result;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  return result;
}

void sub_26D3F6C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(void *a1)
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
          sentencepiece::SentencePieceText::~SentencePieceText(*v3);
          MEMORY[0x26D6BF040]();
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

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_26D3F6E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(uint64_t *a1, sentencepiece::SentencePieceText **a2, sentencepiece::SentencePieceText **a3, unsigned int a4, unsigned int a5)
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
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void InitDefaultsscc_info_ModelProto_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::ModelProto::ModelProto(&sentencepiece::_ModelProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_ModelProto_default_instance_, v4);
}

void InitDefaultsscc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(sentencepiece::_ModelProto_SentencePiece_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, sentencepiece::_ModelProto_SentencePiece_default_instance_, v4);
}

void InitDefaultsscc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::NormalizerSpec::NormalizerSpec(&sentencepiece::_NormalizerSpec_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_NormalizerSpec_default_instance_, v4);
}

void InitDefaultsscc_info_SelfTestData_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::SelfTestData::SelfTestData(&sentencepiece::_SelfTestData_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_SelfTestData_default_instance_, v4);
}

void InitDefaultsscc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::SelfTestData_Sample::SelfTestData_Sample(sentencepiece::_SelfTestData_Sample_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, sentencepiece::_SelfTestData_Sample_default_instance_, v4);
}

void InitDefaultsscc_info_TrainerSpec_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::TrainerSpec::TrainerSpec(&sentencepiece::_TrainerSpec_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_TrainerSpec_default_instance_, v4);
}

uint64_t *sentencepiece::TrainerSpec_ModelType_Name(int a1)
{
  {
    sentencepiece::TrainerSpec_ModelType_Name(sentencepiece::TrainerSpec_ModelType)::dummy = google::protobuf::internal::InitializeEnumStrings(&sentencepiece::TrainerSpec_ModelType_entries, sentencepiece::TrainerSpec_ModelType_entries_by_number, 4, &sentencepiece::TrainerSpec_ModelType_strings);
  }

  v2 = google::protobuf::internal::LookUpEnumName(&sentencepiece::TrainerSpec_ModelType_entries, sentencepiece::TrainerSpec_ModelType_entries_by_number, 4uLL, a1);
  if (v2 != -1)
  {
    return (&sentencepiece::TrainerSpec_ModelType_strings + 24 * v2);
  }

  if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(v2);
  }

  return &google::protobuf::internal::fixed_address_empty_string;
}

uint64_t sentencepiece::TrainerSpec_ModelType_Parse(uint64_t *a1, _DWORD *a2, const char *a3)
{
  v6 = 0;
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v5, a1, a3);
  result = google::protobuf::internal::LookUpEnumValue(&sentencepiece::TrainerSpec_ModelType_entries, 4uLL, v5[0], v5[1], &v6);
  if (result)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t *sentencepiece::ModelProto_SentencePiece_Type_Name(int a1)
{
  {
    sentencepiece::ModelProto_SentencePiece_Type_Name(sentencepiece::ModelProto_SentencePiece_Type)::dummy = google::protobuf::internal::InitializeEnumStrings(&sentencepiece::ModelProto_SentencePiece_Type_entries, sentencepiece::ModelProto_SentencePiece_Type_entries_by_number, 6, &sentencepiece::ModelProto_SentencePiece_Type_strings);
  }

  v2 = google::protobuf::internal::LookUpEnumName(&sentencepiece::ModelProto_SentencePiece_Type_entries, sentencepiece::ModelProto_SentencePiece_Type_entries_by_number, 6uLL, a1);
  if (v2 != -1)
  {
    return (&sentencepiece::ModelProto_SentencePiece_Type_strings + 24 * v2);
  }

  if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(v2);
  }

  return &google::protobuf::internal::fixed_address_empty_string;
}

uint64_t sentencepiece::ModelProto_SentencePiece_Type_Parse(uint64_t *a1, _DWORD *a2, const char *a3)
{
  v6 = 0;
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v5, a1, a3);
  result = google::protobuf::internal::LookUpEnumValue(&sentencepiece::ModelProto_SentencePiece_Type_entries, 6uLL, v5[0], v5[1], &v6);
  if (result)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sentencepiece::TrainerSpec::TrainerSpec(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBC070;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 128) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (atomic_load_explicit(scc_info_TrainerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_TrainerSpec_sentencepiece_5fmodel_2eproto);
  }

  *(a1 + 152) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 160) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 168) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0x1F4000000001;
  *(a1 + 280) = 0xF42403F7FDF3BLL;
  *(a1 + 288) = 1061158912;
  *(a1 + 292) = xmmword_26D448DA0;
  *(a1 + 308) = 16843009;
  *(a1 + 312) = 257;
  *(a1 + 316) = 1;
  *(a1 + 320) = 0xFFFFFFFF00000002;
  return a1;
}

void sub_26D3F7594(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

sentencepiece::TrainerSpec *sentencepiece::TrainerSpec::TrainerSpec(sentencepiece::TrainerSpec *this, const sentencepiece::TrainerSpec *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *this = &unk_287EBC070;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = *(a2 + 5);
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0u;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, a2 + 56);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, a2 + 80);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, a2 + 104);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, a2 + 128);
  v5 = *(a2 + 1);
  if (v5)
  {
    if (*v4)
    {
      v6 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v6 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v7 >= 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v7 >= 0)
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v6, v9, v10);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 10);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 152), (*(a2 + 19) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 10);
  }

  *(this + 20) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 160), (*(a2 + 20) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 10);
  }

  *(this + 21) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 4) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 168), (*(a2 + 21) & 0xFFFFFFFFFFFFFFFELL), v14);
    v11 = *(a2 + 10);
  }

  *(this + 22) = 0;
  if ((v11 & 8) != 0)
  {
    v15 = *v4;
    if (*v4)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 176), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL), v15);
    v11 = *(a2 + 10);
  }

  *(this + 23) = 0;
  if ((v11 & 0x10) != 0)
  {
    v16 = *v4;
    if (*v4)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 184), (*(a2 + 23) & 0xFFFFFFFFFFFFFFFELL), v16);
    v11 = *(a2 + 10);
  }

  *(this + 24) = 0;
  if ((v11 & 0x20) != 0)
  {
    v17 = *v4;
    if (*v4)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 192), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v17);
    v11 = *(a2 + 10);
  }

  *(this + 25) = 0;
  if ((v11 & 0x40) != 0)
  {
    v18 = *v4;
    if (*v4)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 200), (*(a2 + 25) & 0xFFFFFFFFFFFFFFFELL), v18);
    v11 = *(a2 + 10);
  }

  *(this + 26) = 0;
  if ((v11 & 0x80) != 0)
  {
    v19 = *v4;
    if (*v4)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 208), (*(a2 + 26) & 0xFFFFFFFFFFFFFFFELL), v19);
    v11 = *(a2 + 10);
  }

  *(this + 27) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 0x100) != 0)
  {
    v20 = *v4;
    if (*v4)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 216), (*(a2 + 27) & 0xFFFFFFFFFFFFFFFELL), v20);
  }

  v21 = *(a2 + 14);
  v22 = *(a2 + 16);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = v22;
  *(this + 14) = v21;
  v23 = *(a2 + 17);
  v24 = *(a2 + 18);
  v25 = *(a2 + 19);
  *(this + 40) = *(a2 + 40);
  *(this + 18) = v24;
  *(this + 19) = v25;
  *(this + 17) = v23;
  return this;
}

void sub_26D3F78DC(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v5);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void sentencepiece::TrainerSpec::~TrainerSpec(sentencepiece::TrainerSpec *this)
{
  sentencepiece::TrainerSpec::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 128);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 104);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 80);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 56);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::TrainerSpec::~TrainerSpec(this);

  JUMPOUT(0x26D6BF040);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::TrainerSpec::SharedDtor(sentencepiece::TrainerSpec *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 519);
    v3 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v25, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  if (*(this + 19) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v4 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 152));
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x26D6BF040](v5, 0x1012C40EC159624);
  }

  if (*(this + 20) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 160));
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x26D6BF040](v7, 0x1012C40EC159624);
  }

  if (*(this + 21) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v8 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 168));
    v9 = v8;
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x26D6BF040](v9, 0x1012C40EC159624);
  }

  if (*(this + 22))
  {
    v10 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 176));
    v11 = v10;
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x26D6BF040](v11, 0x1012C40EC159624);
  }

  if (*(this + 23))
  {
    v12 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 184));
    v13 = v12;
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x26D6BF040](v13, 0x1012C40EC159624);
  }

  if (*(this + 24))
  {
    v14 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 192));
    v15 = v14;
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x26D6BF040](v15, 0x1012C40EC159624);
  }

  if (*(this + 25))
  {
    v16 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 200));
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    MEMORY[0x26D6BF040](v17, 0x1012C40EC159624);
  }

  result = (this + 208);
  if (*(this + 26))
  {
    v19 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v20 = v19;
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    result = MEMORY[0x26D6BF040](v20, 0x1012C40EC159624);
  }

  v22 = *(this + 27);
  v21 = (this + 216);
  if (v22 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v23 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v21);
    v24 = v23;
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    return MEMORY[0x26D6BF040](v24, 0x1012C40EC159624);
  }

  return result;
}

void sub_26D3F7C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::TrainerSpec::default_instance(sentencepiece::TrainerSpec *this)
{
  if (atomic_load_explicit(scc_info_TrainerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_TrainerSpec_sentencepiece_5fmodel_2eproto);
  }

  return &sentencepiece::_TrainerSpec_default_instance_;
}

void sentencepiece::TrainerSpec::Clear(sentencepiece::TrainerSpec *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128);
  v2 = *(this + 10);
  if (!v2)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    v3 = *(this + 19) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v5 = *(this + 21) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v4 = *(this + 20) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  v6 = *(this + 1);
  if (v6)
  {
    v14 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 176), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v7 = *(this + 1);
  if (v7)
  {
    v15 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 184), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_);
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v8 = *(this + 1);
  if (v8)
  {
    v16 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault(this + 8, &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_);
  if ((v2 & 0x40) != 0)
  {
LABEL_33:
    v9 = *(this + 1);
    if (v9)
    {
      v17 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 200), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_);
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_36:
  v10 = *(this + 1);
  if (v10)
  {
    v18 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 208), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_);
  if ((v2 & 0x100) != 0)
  {
LABEL_39:
    v11 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
    }
  }

LABEL_42:
  if ((v2 & 0xFE00) != 0)
  {
    *(this + 28) = 0;
    *(this + 29) = 0;
    *(this + 239) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 247) = 0;
    *(this + 271) = 0;
    *(this + 255) = 0;
    *(this + 263) = 0;
    *(this + 68) = 1;
  }

  if (HIBYTE(v2))
  {
    *(this + 276) = 0x3F7FDF3B00001F40;
    *(this + 284) = 0x3F400000000F4240;
    *(this + 292) = xmmword_26D448DA0;
  }

  if (*(this + 44))
  {
    *(this + 156) = 257;
    *(this + 77) = 16843009;
    *(this + 316) = 0x200000001;
  }

  *(this + 81) = -1;
  *(this + 5) = 0;
  v12 = *(this + 1);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 31) < 0)
    {
      **(v13 + 8) = 0;
      *(v13 + 16) = 0;
    }

    else
    {
      *(v13 + 8) = 0;
      *(v13 + 31) = 0;
    }
  }
}

unsigned __int8 *sentencepiece::TrainerSpec::_InternalSerialize(sentencepiece::TrainerSpec *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 16);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  v11 = *(this + 10);
  if (v11)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 19) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v11 & 0x800000) == 0)
    {
LABEL_15:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }
  }

  else if ((v11 & 0x800000) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 68);
  *a2 = 24;
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v18 = v15 >> 7;
        ++a2;
        v19 = v15 >> 14;
        v15 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    a2[1] = v13;
    a2 += 2;
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 69);
  *a2 = 32;
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v14 | 0x80;
        v16 = v14 >> 7;
        ++a2;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
    }

    else
    {
      a2[2] = v14;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
  }

LABEL_37:
  v20 = *(this + 22);
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v22 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, j);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = *(v22 + 8), v23 > 127) || *a3 - a2 + 14 < v23)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 5, v22, a2);
      }

      else
      {
        *a2 = 42;
        a2[1] = v23;
        if (*(v22 + 23) >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = *v22;
        }

        memcpy(a2 + 2, v24, v23);
        a2 += v23 + 2;
      }
    }
  }

  if ((v11 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 56);
    *a2 = 48;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v28 | 0x80;
          v31 = v28 >> 7;
          ++a2;
          v32 = v28 >> 14;
          v28 >>= 7;
        }

        while (v32);
        *(a2 - 1) = v31;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        a2[2] = v28;
        a2 += 3;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v11 & 2) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_51:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_81;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_51;
  }

LABEL_80:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, (*(this + 20) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 70);
  *a2 = 85;
  *(a2 + 1) = v33;
  a2 += 5;
  if ((v11 & 0x800) == 0)
  {
LABEL_53:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_54;
    }

LABEL_95:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v38 = *(this + 57);
    *a2 = 96;
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++a2;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(a2 - 1) = v40;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        a2[2] = v39;
        a2 += 3;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      a2[1] = v38;
      a2 += 2;
      if ((v11 & 0x1000) != 0)
      {
        goto LABEL_106;
      }
    }

LABEL_55:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_117:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(this + 71);
    *a2 = 112;
    if (v46 > 0x7F)
    {
      a2[1] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++a2;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(a2 - 1) = v48;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }

      else
      {
        a2[2] = v47;
        a2 += 3;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      a2[1] = v46;
      a2 += 2;
      if ((v11 & 0x8000000) != 0)
      {
        goto LABEL_128;
      }
    }

LABEL_57:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_131:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v51 = *(this + 73);
    *a2 = 384;
    if (v51 > 0x7F)
    {
      a2[2] = v51 | 0x80;
      v52 = v51 >> 7;
      if (v51 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++a2;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(a2 - 1) = v53;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        a2[3] = v52;
        a2 += 4;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      a2[2] = v51;
      a2 += 3;
      if ((v11 & 0x20000000) != 0)
      {
        goto LABEL_142;
      }
    }

LABEL_59:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_60;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 29);
  *a2 = 88;
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v35 = v34 >> 7;
    if (v34 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++a2;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(a2 - 1) = v36;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      a2[2] = v35;
      a2 += 3;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }
  }

  else
  {
    a2[1] = v34;
    a2 += 2;
    if ((v11 & 0x400) != 0)
    {
      goto LABEL_95;
    }
  }

LABEL_54:
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_55;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 60);
  *a2 = 104;
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v43 = v42 >> 7;
    if (v42 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++a2;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(a2 - 1) = v44;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      a2[2] = v43;
      a2 += 3;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }
  }

  else
  {
    a2[1] = v42;
    a2 += 2;
    if ((v11 & 0x4000000) != 0)
    {
      goto LABEL_117;
    }
  }

LABEL_56:
  if ((v11 & 0x8000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_128:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 72);
  *a2 = 125;
  *(a2 + 1) = v50;
  a2 += 5;
  if ((v11 & 0x10000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_58:
  if ((v11 & 0x20000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_142:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(this + 74);
  *a2 = 392;
  if (v55 > 0x7F)
  {
    a2[2] = v55 | 0x80;
    v56 = v55 >> 7;
    if (v55 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++a2;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(a2 - 1) = v57;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      a2[3] = v56;
      a2 += 4;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }
  }

  else
  {
    a2[2] = v55;
    a2 += 3;
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 75);
  *a2 = 400;
  if (v25 > 0x7F)
  {
    a2[2] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v27 | 0x80;
        v29 = v27 >> 7;
        ++a2;
        v30 = v27 >> 14;
        v27 >>= 7;
      }

      while (v30);
      *(a2 - 1) = v29;
    }

    else
    {
      a2[3] = v27;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v25;
    a2 += 3;
  }

LABEL_153:
  if (*(this + 44))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v59 = *(this + 308);
    *a2 = 408;
    a2[2] = v59;
    a2 += 3;
  }

  if ((*(this + 10) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(this + 76);
    *a2 = 416;
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v61 = v60 >> 7;
      if (v60 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v61 | 0x80;
          v62 = v61 >> 7;
          ++a2;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
        *(a2 - 1) = v62;
      }

      else
      {
        a2[3] = v61;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v60;
      a2 += 3;
    }
  }

  v64 = *(this + 11);
  if ((v64 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v65 = *(this + 309);
    *a2 = 424;
    a2[2] = v65;
    a2 += 3;
    if ((v64 & 8) == 0)
    {
LABEL_169:
      if ((v64 & 4) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_177;
    }
  }

  else if ((v64 & 8) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v66 = *(this + 311);
  *a2 = 432;
  a2[2] = v66;
  a2 += 3;
  if ((v64 & 4) != 0)
  {
LABEL_177:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(this + 310);
    *a2 = 440;
    a2[2] = v67;
    a2 += 3;
  }

LABEL_180:
  v68 = *(this + 10);
  if ((v68 & 0x4000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v69 = *(this + 245);
    *a2 = 448;
    a2[2] = v69;
    a2 += 3;
    if ((v68 & 0x10000) == 0)
    {
LABEL_182:
      if ((v68 & 0x8000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_190;
    }
  }

  else if ((v68 & 0x10000) == 0)
  {
    goto LABEL_182;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v70 = *(this + 247);
  *a2 = 456;
  a2[2] = v70;
  a2 += 3;
  if ((v68 & 0x8000) != 0)
  {
LABEL_190:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v71 = *(this + 246);
    *a2 = 464;
    a2[2] = v71;
    a2 += 3;
  }

LABEL_193:
  v72 = *(this + 28);
  if (v72 >= 1)
  {
    for (k = 0; k != v72; ++k)
    {
      v74 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, k);
      v75 = *(v74 + 23);
      if (v75 < 0 && (v75 = *(v74 + 8), v75 > 127) || *a3 - a2 + 13 < v75)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 30, v74, a2);
      }

      else
      {
        *a2 = 498;
        a2[2] = v75;
        if (*(v74 + 23) >= 0)
        {
          v76 = v74;
        }

        else
        {
          v76 = *v74;
        }

        memcpy(a2 + 3, v76, v75);
        a2 += v75 + 3;
      }
    }
  }

  v77 = *(this + 34);
  if (v77 >= 1)
  {
    for (m = 0; m != v77; ++m)
    {
      v79 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, m);
      v80 = *(v79 + 23);
      if (v80 < 0 && (v80 = *(v79 + 8), v80 > 127) || *a3 - a2 + 13 < v80)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 31, v79, a2);
      }

      else
      {
        *a2 = 506;
        a2[2] = v80;
        if (*(v79 + 23) >= 0)
        {
          v81 = v79;
        }

        else
        {
          v81 = *v79;
        }

        memcpy(a2 + 3, v81, v80);
        a2 += v80 + 3;
      }
    }
  }

  v82 = *(this + 11);
  if ((v82 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v83 = *(this + 312);
    *a2 = 640;
    a2[2] = v83;
    a2 += 3;
  }

  if ((v82 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v84 = *(this + 313);
    *a2 = 648;
    a2[2] = v84;
    a2 += 3;
  }

  v85 = *(this + 10);
  if ((v85 & 0x40000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v86 = *(this + 249);
    *a2 = 656;
    a2[2] = v86;
    a2 += 3;
    if ((v85 & 0x20000) == 0)
    {
LABEL_227:
      if ((v85 & 4) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_236;
    }
  }

  else if ((v85 & 0x20000) == 0)
  {
    goto LABEL_227;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v87 = *(this + 248);
  *a2 = 664;
  a2[2] = v87;
  a2 += 3;
  if ((v85 & 4) == 0)
  {
LABEL_228:
    if ((v85 & 0x100000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_237;
  }

LABEL_236:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 36, (*(this + 21) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v85 & 0x100000) == 0)
  {
    goto LABEL_246;
  }

LABEL_237:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v88 = *(this + 63);
  *a2 = 704;
  if (v88 > 0x7F)
  {
    a2[2] = v88 | 0x80;
    v89 = v88 >> 7;
    if (v88 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++a2;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(a2 - 1) = v90;
    }

    else
    {
      a2[3] = v89;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v88;
    a2 += 3;
  }

LABEL_246:
  v92 = *(this + 11);
  if ((v92 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v94 = *(this + 79);
    *a2 = 712;
    if (v94 > 0x7F)
    {
      a2[2] = v94 | 0x80;
      v96 = v94 >> 7;
      if (v94 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v96 | 0x80;
          v99 = v96 >> 7;
          ++a2;
          v100 = v96 >> 14;
          v96 >>= 7;
        }

        while (v100);
        *(a2 - 1) = v99;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }

      else
      {
        a2[3] = v96;
        a2 += 4;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }
    }

    else
    {
      a2[2] = v94;
      a2 += 3;
      if ((v92 & 0x80) != 0)
      {
        goto LABEL_269;
      }
    }

LABEL_248:
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_249;
  }

  if ((v92 & 0x80) == 0)
  {
    goto LABEL_248;
  }

LABEL_269:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v101 = *(this + 80);
  *a2 = 720;
  if (v101 > 0x7F)
  {
    a2[2] = v101 | 0x80;
    v102 = v101 >> 7;
    if (v101 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v102 | 0x80;
        v103 = v102 >> 7;
        ++a2;
        v104 = v102 >> 14;
        v102 >>= 7;
      }

      while (v104);
      *(a2 - 1) = v103;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      a2[3] = v102;
      a2 += 4;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }
  }

  else
  {
    a2[2] = v101;
    a2 += 3;
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }
  }

LABEL_249:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v93 = *(this + 81);
  *a2 = 728;
  if (v93 > 0x7F)
  {
    a2[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v95 | 0x80;
        v97 = v95 >> 7;
        ++a2;
        v98 = v95 >> 14;
        v95 >>= 7;
      }

      while (v98);
      *(a2 - 1) = v97;
    }

    else
    {
      a2[3] = v95;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v93;
    a2 += 3;
  }

LABEL_280:
  v105 = *(this + 10);
  if ((v105 & 8) != 0)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 44, (*(this + 22) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v105 & 0x10) == 0)
    {
LABEL_282:
      if ((v105 & 0x20) == 0)
      {
        goto LABEL_283;
      }

      goto LABEL_295;
    }
  }

  else if ((v105 & 0x10) == 0)
  {
    goto LABEL_282;
  }

  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 45, (*(this + 23) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x20) == 0)
  {
LABEL_283:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_296;
  }

LABEL_295:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 46, (*(this + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x40) == 0)
  {
LABEL_284:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_297;
  }

LABEL_296:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 47, (*(this + 25) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80) == 0)
  {
LABEL_285:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_298;
  }

LABEL_297:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 48, (*(this + 26) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80000) == 0)
  {
LABEL_286:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_301;
  }

LABEL_298:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v110 = *(this + 250);
  *a2 = 904;
  a2[2] = v110;
  a2 += 3;
  if ((v105 & 0x2000) == 0)
  {
LABEL_287:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_304;
  }

LABEL_301:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v111 = *(this + 244);
  *a2 = 912;
  a2[2] = v111;
  a2 += 3;
  if ((v105 & 0x200000) == 0)
  {
LABEL_288:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_307;
  }

LABEL_304:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v112 = *(this + 64);
  *a2 = 925;
  *(a2 + 2) = v112;
  a2 += 6;
  if ((v105 & 0x400000) == 0)
  {
LABEL_289:
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_290;
  }

LABEL_307:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v113 = *(this + 33);
  *a2 = 928;
  if (v113 <= 0x7F)
  {
    a2[2] = v113;
    a2 += 3;
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_290:
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 53, (*(this + 27) & 0xFFFFFFFFFFFFFFFELL), a2);
    goto LABEL_291;
  }

  a2[2] = v113 | 0x80;
  v114 = v113 >> 7;
  if (v113 >> 14)
  {
    a2 += 4;
    do
    {
      *(a2 - 1) = v114 | 0x80;
      v115 = v114 >> 7;
      ++a2;
      v116 = v114 >> 14;
      v114 >>= 7;
    }

    while (v116);
    *(a2 - 1) = v115;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    a2[3] = v114;
    a2 += 4;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

LABEL_291:
  v106 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, a2, a3);
  v107 = v106;
  v108 = *(this + 1);
  if ((v108 & 1) == 0)
  {
    return v107;
  }

  v117 = v108 & 0xFFFFFFFFFFFFFFFELL;
  v118 = *(v117 + 31);
  if (v118 < 0)
  {
    v119 = *(v117 + 8);
    v118 = *(v117 + 16);
  }

  else
  {
    v119 = (v117 + 8);
  }

  if (*a3 - v106 >= v118)
  {
    v120 = v118;
    memcpy(v106, v119, v118);
    v107 += v120;
    return v107;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v119, v118, v106);
}

uint64_t sentencepiece::TrainerSpec::ByteSizeLong(sentencepiece::TrainerSpec *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 16);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, v5);
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v6 + 8);
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v5;
    }

    while (v3 != v5);
  }

  v8 = *(this + 22);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, v10);
      v12 = *(v11 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v10;
    }

    while (v8 != v10);
  }

  v13 = *(this + 28);
  v14 = v9 + 2 * v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, v15);
      v17 = *(v16 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 8);
      }

      v14 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v18 = *(this + 34);
  v19 = v14 + 2 * v18;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, v20);
      v22 = *(v21 + 23);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      v19 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      ++v20;
    }

    while (v18 != v20);
  }

  v23 = *(this + 10);
  if (!v23)
  {
    goto LABEL_33;
  }

  if (v23)
  {
    v58 = *(this + 19) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_24:
      if ((v23 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_24;
  }

  v61 = *(this + 20) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(v61 + 23);
  v63 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v63 = v62;
  }

  v19 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_25:
    if ((v23 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_134;
  }

LABEL_131:
  v64 = *(this + 21) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v19 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 8) == 0)
  {
LABEL_26:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_134:
  v67 = *(this + 22) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v19 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x10) == 0)
  {
LABEL_27:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_140:
    v73 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v19 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x40) == 0)
    {
LABEL_29:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_137:
  v70 = *(this + 23) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v19 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_28:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_143:
  v76 = *(this + 25) & 0xFFFFFFFFFFFFFFFELL;
  v77 = *(v76 + 23);
  v78 = *(v76 + 8);
  if ((v77 & 0x80u) == 0)
  {
    v78 = v77;
  }

  v19 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x80) != 0)
  {
LABEL_30:
    v24 = *(this + 26) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v23 & 0x100) != 0)
  {
    v79 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
    v80 = *(v79 + 23);
    v81 = *(v79 + 8);
    if ((v80 & 0x80u) == 0)
    {
      v81 = v80;
    }

    v19 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x200) == 0)
    {
LABEL_36:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_154;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v82 = *(this + 56);
  v83 = ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v82 >= 0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 11;
  }

  v19 += v84;
  if ((v23 & 0x400) == 0)
  {
LABEL_37:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_38;
    }

LABEL_158:
    v19 += ((9 * (__clz(*(this + 29) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v23 & 0x1000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_154:
  v85 = *(this + 57);
  v86 = ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v85 >= 0)
  {
    v87 = v86;
  }

  else
  {
    v87 = 11;
  }

  v19 += v87;
  if ((v23 & 0x800) != 0)
  {
    goto LABEL_158;
  }

LABEL_38:
  if ((v23 & 0x1000) != 0)
  {
LABEL_39:
    v27 = *(this + 60);
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 11;
    }

    v19 += v29;
  }

LABEL_43:
  v30 = v19 + 3;
  if ((v23 & 0x2000) == 0)
  {
    v30 = v19;
  }

  if ((v23 & 0x4000) != 0)
  {
    v30 += 3;
  }

  if ((v23 & 0x8000) != 0)
  {
    v19 = v30 + 3;
  }

  else
  {
    v19 = v30;
  }

LABEL_50:
  if ((v23 & 0xFF0000) != 0)
  {
    v31 = v19 + 3;
    if ((v23 & 0x10000) == 0)
    {
      v31 = v19;
    }

    if ((v23 & 0x20000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x40000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x80000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x100000) != 0)
    {
      v32 = *(this + 63);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 12;
      }

      v31 += v34;
    }

    if ((v23 & 0x200000) != 0)
    {
      v19 = v31 + 6;
    }

    else
    {
      v19 = v31;
    }

    if ((v23 & 0x400000) != 0)
    {
      v19 += ((9 * (__clz(*(this + 33) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v23 & 0x800000) != 0)
    {
      v35 = *(this + 68);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 11;
      }

      v19 += v37;
    }
  }

  if (!HIBYTE(v23))
  {
    goto LABEL_94;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v38 = *(this + 69);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 11;
    }

    v19 += v40;
  }

  v41 = v19 + 5;
  if ((v23 & 0x2000000) == 0)
  {
    v41 = v19;
  }

  if ((v23 & 0x4000000) != 0)
  {
    v42 = *(this + 71);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 11;
    }

    v41 += v44;
  }

  if ((v23 & 0x8000000) != 0)
  {
    v19 = v41 + 5;
  }

  else
  {
    v19 = v41;
  }

  if ((v23 & 0x10000000) == 0)
  {
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_164:
    v91 = *(this + 74);
    v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v91 >= 0)
    {
      v93 = v92;
    }

    else
    {
      v93 = 12;
    }

    v19 += v93;
    if ((v23 & 0x40000000) == 0)
    {
LABEL_93:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_172;
    }

    goto LABEL_168;
  }

  v88 = *(this + 73);
  v89 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v88 >= 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 12;
  }

  v19 += v90;
  if ((v23 & 0x20000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_92:
  if ((v23 & 0x40000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_168:
  v94 = *(this + 75);
  v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v94 >= 0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 12;
  }

  v19 += v96;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_172:
    v97 = *(this + 76);
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v97 >= 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = 12;
    }

    v19 += v99;
  }

LABEL_94:
  v45 = *(this + 11);
  if (v45)
  {
    v46 = v19 + 3;
    if ((v45 & 1) == 0)
    {
      v46 = v19;
    }

    if ((v45 & 2) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 4) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 8) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x10) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x20) != 0)
    {
      v19 = v46 + 3;
    }

    else
    {
      v19 = v46;
    }

    if ((v45 & 0x40) != 0)
    {
      v47 = *(this + 79);
      v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v47 >= 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 12;
      }

      v19 += v49;
    }

    if ((v45 & 0x80) != 0)
    {
      v50 = *(this + 80);
      v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v50 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 12;
      }

      v19 += v52;
    }
  }

  if ((v45 & 0x100) != 0)
  {
    v53 = *(this + 81);
    v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 12;
    }

    v19 += v55;
  }

  v56 = *(this + 1);
  if (v56)
  {
    v100 = v56 & 0xFFFFFFFFFFFFFFFELL;
    v101 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v101 < 0)
    {
      v101 = *(v100 + 16);
    }

    v19 += v101;
  }

  *(this + 12) = v19;
  return v19;
}

void sentencepiece::TrainerSpec::CheckTypeAndMergeFrom(sentencepiece::TrainerSpec *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::TrainerSpec::MergeFrom(this, lpsrc);
}

void sentencepiece::TrainerSpec::MergeFrom(sentencepiece::TrainerSpec *this, const sentencepiece::TrainerSpec *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v35, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1671);
    v4 = google::protobuf::internal::LogMessage::operator<<(v35, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v34, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v35[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, a2 + 56);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, a2 + 80);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, a2 + 104);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, a2 + 128);
  v13 = *(a2 + 10);
  if (!v13)
  {
    goto LABEL_47;
  }

  if (v13)
  {
    v14 = *(a2 + 19);
    *(this + 10) |= 1u;
    v15 = *(this + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 152), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v13 & 2) == 0)
    {
LABEL_16:
      if ((v13 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 20);
  *(this + 10) |= 2u;
  v17 = *(this + 1);
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 160), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v13 & 4) == 0)
  {
LABEL_17:
    if ((v13 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  v18 = *(a2 + 21);
  *(this + 10) |= 4u;
  v19 = *(this + 1);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 168), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v13 & 8) == 0)
  {
LABEL_18:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v20 = *(a2 + 22);
  *(this + 10) |= 8u;
  v21 = *(this + 1);
  if (v21)
  {
    v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 176), (v20 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v13 & 0x10) == 0)
  {
LABEL_19:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v24 = *(a2 + 24);
    *(this + 10) |= 0x20u;
    v25 = *(this + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 192), (v24 & 0xFFFFFFFFFFFFFFFELL), v25);
    if ((v13 & 0x40) == 0)
    {
LABEL_21:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_35:
  v22 = *(a2 + 23);
  *(this + 10) |= 0x10u;
  v23 = *(this + 1);
  if (v23)
  {
    v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 184), (v22 & 0xFFFFFFFFFFFFFFFELL), v23);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  v26 = *(a2 + 25);
  *(this + 10) |= 0x40u;
  v27 = *(this + 1);
  if (v27)
  {
    v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 200), (v26 & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v13 & 0x80) != 0)
  {
LABEL_44:
    v28 = *(a2 + 26);
    *(this + 10) |= 0x80u;
    v29 = *(this + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 208), (v28 & 0xFFFFFFFFFFFFFFFELL), v29);
  }

LABEL_47:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v13 & 0x100) != 0)
  {
    v32 = *(a2 + 27);
    *(this + 10) |= 0x100u;
    v33 = *(this + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 216), (v32 & 0xFFFFFFFFFFFFFFFELL), v33);
    if ((v13 & 0x200) == 0)
    {
LABEL_50:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_97;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  *(this + 56) = *(a2 + 56);
  if ((v13 & 0x400) == 0)
  {
LABEL_51:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(this + 57) = *(a2 + 57);
  if ((v13 & 0x800) == 0)
  {
LABEL_52:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(this + 29) = *(a2 + 29);
  if ((v13 & 0x1000) == 0)
  {
LABEL_53:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(this + 60) = *(a2 + 60);
  if ((v13 & 0x2000) == 0)
  {
LABEL_54:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_101:
    *(this + 245) = *(a2 + 245);
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_100:
  *(this + 244) = *(a2 + 244);
  if ((v13 & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_55:
  if ((v13 & 0x8000) != 0)
  {
LABEL_56:
    *(this + 246) = *(a2 + 246);
  }

LABEL_57:
  *(this + 10) |= v13;
LABEL_58:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_69;
  }

  if ((v13 & 0x10000) != 0)
  {
    *(this + 247) = *(a2 + 247);
    if ((v13 & 0x20000) == 0)
    {
LABEL_61:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_105;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

  *(this + 248) = *(a2 + 248);
  if ((v13 & 0x40000) == 0)
  {
LABEL_62:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(this + 249) = *(a2 + 249);
  if ((v13 & 0x80000) == 0)
  {
LABEL_63:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(this + 250) = *(a2 + 250);
  if ((v13 & 0x100000) == 0)
  {
LABEL_64:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(this + 63) = *(a2 + 63);
  if ((v13 & 0x200000) == 0)
  {
LABEL_65:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

LABEL_109:
    *(this + 33) = *(a2 + 33);
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_108:
  *(this + 64) = *(a2 + 64);
  if ((v13 & 0x400000) != 0)
  {
    goto LABEL_109;
  }

LABEL_66:
  if ((v13 & 0x800000) != 0)
  {
LABEL_67:
    *(this + 68) = *(a2 + 68);
  }

LABEL_68:
  *(this + 10) |= v13;
LABEL_69:
  if (!HIBYTE(v13))
  {
    goto LABEL_79;
  }

  if ((v13 & 0x1000000) != 0)
  {
    *(this + 69) = *(a2 + 69);
    if ((v13 & 0x2000000) == 0)
    {
LABEL_72:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_72;
  }

  *(this + 70) = *(a2 + 70);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_73:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(this + 71) = *(a2 + 71);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_74:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(this + 72) = *(a2 + 72);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_75:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(this + 73) = *(a2 + 73);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    *(this + 75) = *(a2 + 75);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    *(this + 76) = *(a2 + 76);
    goto LABEL_78;
  }

LABEL_124:
  *(this + 74) = *(a2 + 74);
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_78:
  *(this + 10) |= v13;
LABEL_79:
  v30 = *(a2 + 11);
  if (!v30)
  {
    goto LABEL_90;
  }

  if (v30)
  {
    *(this + 308) = *(a2 + 308);
    if ((v30 & 2) == 0)
    {
LABEL_82:
      if ((v30 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_113;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(this + 309) = *(a2 + 309);
  if ((v30 & 4) == 0)
  {
LABEL_83:
    if ((v30 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(this + 310) = *(a2 + 310);
  if ((v30 & 8) == 0)
  {
LABEL_84:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(this + 311) = *(a2 + 311);
  if ((v30 & 0x10) == 0)
  {
LABEL_85:
    if ((v30 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(this + 312) = *(a2 + 312);
  if ((v30 & 0x20) == 0)
  {
LABEL_86:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_117:
    *(this + 79) = *(a2 + 79);
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_116:
  *(this + 313) = *(a2 + 313);
  if ((v30 & 0x40) != 0)
  {
    goto LABEL_117;
  }

LABEL_87:
  if ((v30 & 0x80) != 0)
  {
LABEL_88:
    *(this + 80) = *(a2 + 80);
  }

LABEL_89:
  *(this + 11) |= v30;
LABEL_90:
  if ((v30 & 0x100) != 0)
  {
    v31 = *(a2 + 81);
    *(this + 11) |= 0x100u;
    *(this + 81) = v31;
  }
}

void sub_26D3FA050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::TrainerSpec::CopyFrom(sentencepiece::TrainerSpec *this, const sentencepiece::TrainerSpec *a2)
{
  if (a2 != this)
  {
    sentencepiece::TrainerSpec::Clear(this);

    sentencepiece::TrainerSpec::MergeFrom(this, a2);
  }
}

float sentencepiece::TrainerSpec::InternalSwap(sentencepiece::TrainerSpec *this, sentencepiece::TrainerSpec *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_50;
    }

LABEL_5:
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (v4)
    {
LABEL_6:
      v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *(v7 + 2);
      *v8 = *v7;
      *(v8 + 2) = v11;
      *v7 = v10;
      *(v7 + 2) = v9;
      goto LABEL_8;
    }

LABEL_50:
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 56), (a2 + 56));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 80), (a2 + 80));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 104), (a2 + 104));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 128), (a2 + 128));
  v14 = *(this + 1);
  v15 = v14;
  if (v14)
  {
    v15 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 19) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 19) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 19, v15);
    v17 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 19, v15);
    v18 = v16[2];
    v19 = *v16;
    v20 = v17[2];
    *v16 = *v17;
    v16[2] = v20;
    *v17 = v19;
    v17[2] = v18;
    v14 = *v5;
  }

  v21 = v14 & 1;
  v22 = v14;
  if (v14)
  {
    v22 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 20) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 20) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v23 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 20, v22);
    v24 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 20, v22);
    v25 = v23[2];
    v26 = *v23;
    v27 = v24[2];
    *v23 = *v24;
    v23[2] = v27;
    *v24 = v26;
    v24[2] = v25;
    v14 = *v5;
    v21 = *v5 & 1;
  }

  if (v21)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 21) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 21) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v28 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 21, v14);
    v29 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 21, v14);
    v30 = v28[2];
    v31 = *v28;
    v32 = v29[2];
    *v28 = *v29;
    v28[2] = v32;
    *v29 = v31;
    v29[2] = v30;
  }

  v33 = *(this + 22);
  if (v33)
  {
    v34 = *(a2 + 22);
  }

  else
  {
    v34 = *(a2 + 22);
    if (!v34)
    {
      goto LABEL_27;
    }
  }

  *(this + 22) = v34;
  *(a2 + 22) = v33;
LABEL_27:
  v35 = *(this + 23);
  if (v35)
  {
    v36 = *(a2 + 23);
  }

  else
  {
    v36 = *(a2 + 23);
    if (!v36)
    {
      goto LABEL_31;
    }
  }

  *(this + 23) = v36;
  *(a2 + 23) = v35;
LABEL_31:
  v37 = *(this + 24);
  if (v37)
  {
    v38 = *(a2 + 24);
  }

  else
  {
    v38 = *(a2 + 24);
    if (!v38)
    {
      goto LABEL_35;
    }
  }

  *(this + 24) = v38;
  *(a2 + 24) = v37;
LABEL_35:
  v39 = *(this + 25);
  if (v39)
  {
    v40 = *(a2 + 25);
  }

  else
  {
    v40 = *(a2 + 25);
    if (!v40)
    {
      goto LABEL_39;
    }
  }

  *(this + 25) = v40;
  *(a2 + 25) = v39;
LABEL_39:
  v41 = *(this + 26);
  if (v41)
  {
    v42 = *(a2 + 26);
  }

  else
  {
    v42 = *(a2 + 26);
    if (!v42)
    {
      goto LABEL_43;
    }
  }

  *(this + 26) = v42;
  *(a2 + 26) = v41;
LABEL_43:
  v43 = *(this + 1);
  if (v43)
  {
    v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 27) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 27) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v44 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 27, v43);
    v45 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 27, v43);
    v46 = v44[2];
    v47 = *v44;
    v48 = v45[2];
    *v44 = *v45;
    v44[2] = v48;
    *v45 = v47;
    v45[2] = v46;
  }

  v49 = *(this + 28);
  v50 = *(this + 29);
  *(this + 14) = *(a2 + 14);
  *(a2 + 28) = v49;
  *(a2 + 29) = v50;
  v51 = *(this + 30);
  v52 = *(this + 31);
  *(this + 15) = *(a2 + 15);
  *(a2 + 30) = v51;
  *(a2 + 31) = v52;
  v53 = *(this + 32);
  v54 = *(this + 33);
  *(this + 16) = *(a2 + 16);
  *(a2 + 32) = v53;
  *(a2 + 33) = v54;
  LODWORD(v53) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v53;
  LODWORD(v53) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v53;
  v55 = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v55;
  LODWORD(v53) = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v53;
  result = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = result;
  LODWORD(v53) = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v53;
  LODWORD(v53) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v53;
  LODWORD(v53) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v53;
  LODWORD(v53) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v53;
  LOBYTE(v53) = *(this + 308);
  *(this + 308) = *(a2 + 308);
  *(a2 + 308) = v53;
  LOBYTE(v53) = *(this + 309);
  *(this + 309) = *(a2 + 309);
  *(a2 + 309) = v53;
  LOBYTE(v53) = *(this + 310);
  *(this + 310) = *(a2 + 310);
  *(a2 + 310) = v53;
  LOBYTE(v53) = *(this + 311);
  *(this + 311) = *(a2 + 311);
  *(a2 + 311) = v53;
  LOBYTE(v53) = *(this + 312);
  *(this + 312) = *(a2 + 312);
  *(a2 + 312) = v53;
  LOBYTE(v53) = *(this + 313);
  *(this + 313) = *(a2 + 313);
  *(a2 + 313) = v53;
  LODWORD(v53) = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v53;
  LODWORD(v53) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v53;
  LODWORD(v53) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v53;
  return result;
}

uint64_t sentencepiece::NormalizerSpec::NormalizerSpec(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBC0F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_287EBC190;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 24, a2);
  *(a1 + 48) = 0;
  if (atomic_load_explicit(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto);
  }

  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 16843008;
  return a1;
}

sentencepiece::NormalizerSpec *sentencepiece::NormalizerSpec::NormalizerSpec(sentencepiece::NormalizerSpec *this, const sentencepiece::NormalizerSpec *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287EBC0F0;
  *(this + 2) = &unk_287EBC190;
  *(this + 3) = 0;
  v5 = (this + 24);
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = *(a2 + 12);
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 24));
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 56), (*(a2 + 7) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 12);
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 64), (*(a2 + 8) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 12);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 4) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 72), (*(a2 + 9) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sentencepiece::NormalizerSpec::~NormalizerSpec(sentencepiece::NormalizerSpec *this)
{
  sentencepiece::NormalizerSpec::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 24));
}

{
  sentencepiece::NormalizerSpec::~NormalizerSpec(this);

  JUMPOUT(0x26D6BF040);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::NormalizerSpec::SharedDtor(sentencepiece::NormalizerSpec *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1972);
    v3 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  if (*(this + 7) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v4 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 56));
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x26D6BF040](v5, 0x1012C40EC159624);
  }

  result = (this + 64);
  if (*(this + 8) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v7 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v8 = v7;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x26D6BF040](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 9);
  v9 = (this + 72);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v11 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v9);
    v12 = v11;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    return MEMORY[0x26D6BF040](v12, 0x1012C40EC159624);
  }

  return result;
}

void sub_26D3FA940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk tosentencepiece::NormalizerSpec::~NormalizerSpec(sentencepiece::NormalizerSpec *this)
{
  sentencepiece::NormalizerSpec::~NormalizerSpec((this - 16));
}

{
  sentencepiece::NormalizerSpec::~NormalizerSpec((this - 16));

  JUMPOUT(0x26D6BF040);
}

void *sentencepiece::NormalizerSpec::default_instance(sentencepiece::NormalizerSpec *this)
{
  if (atomic_load_explicit(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto);
  }

  return &sentencepiece::_NormalizerSpec_default_instance_;
}

void sentencepiece::NormalizerSpec::Clear(sentencepiece::NormalizerSpec *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 24));
  v2 = *(this + 12);
  if ((v2 & 7) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v4 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v3 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v5 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
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

LABEL_17:
  if ((v2 & 0x78) != 0)
  {
    *(this + 20) = 16843008;
  }

  *(this + 12) = 0;
  v6 = *(this + 1);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 31) < 0)
    {
      **(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    else
    {
      *(v7 + 8) = 0;
      *(v7 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::NormalizerSpec::_InternalParse(sentencepiece::NormalizerSpec *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v41, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v41 + 1);
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v9 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_76;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_57;
          }

          *(this + 12) |= 1u;
          v23 = *(this + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (this + 56);
LABEL_53:
          v28 = google::protobuf::internal::ArenaStringPtr::Mutable(v24, v23);
          v29 = google::protobuf::internal::InlineGreedyStringParser(v28, v41, a3);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_57;
          }

          *(this + 12) |= 2u;
          v23 = *(this + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (this + 64);
          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v41 = v16;
          *(this + 81) = v15 != 0;
          goto LABEL_55;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v41 = v39;
        *(this + 81) = v40 != 0;
        if (!v39)
        {
LABEL_76:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(this + 12) |= 4u;
            v23 = *(this + 1);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (this + 72);
            goto LABEL_53;
          }

LABEL_57:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x648)
          {
            v31 = *(this + 1);
            if (v31)
            {
              v32 = ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v32 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
              v7 = v41;
            }

            v29 = google::protobuf::internal::UnknownFieldParse(v8, v32, v7, a3);
          }

          else
          {
            v29 = google::protobuf::internal::ExtensionSet::ParseField((this + 24), v8, v7, &sentencepiece::_NormalizerSpec_default_instance_, this + 1, a3);
          }

LABEL_54:
          v41 = v29;
          if (!v29)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        if (v10 != 200 || v8 != 64)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_33:
          v41 = v19;
          *(this + 80) = v18 != 0;
          goto LABEL_55;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v41 = v37;
        *(this + 80) = v38 != 0;
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_44:
          v41 = v26;
          *(this + 82) = v25 != 0;
          goto LABEL_55;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v41 = v33;
        *(this + 82) = v34 != 0;
        if (!v33)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x40u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v41 = v12;
          *(this + 83) = v11 != 0;
          goto LABEL_55;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v41 = v35;
        *(this + 83) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

LABEL_55:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v41, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v41 + 2);
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 12) |= v5;
  return v41;
}

unsigned __int8 *sentencepiece::NormalizerSpec::_InternalSerialize(sentencepiece::NormalizerSpec *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 12);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 81);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 82);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 83);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 80);
  *v4 = 3264;
  v4[2] = v10;
  v4 += 3;
LABEL_24:
  v11 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 24), 201, 0x20000000, v4, a3);
  v12 = v11;
  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if (*a3 - v11 >= v16)
  {
    v18 = v16;
    memcpy(v11, v17, v16);
    v12 += v18;
    return v12;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v17, v16, v11);
}

uint64_t sentencepiece::NormalizerSpec::ByteSizeLong(sentencepiece::NormalizerSpec *this)
{
  result = google::protobuf::internal::ExtensionSet::ByteSize((this + 24));
  v3 = *(this + 12);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v9 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = result + 3;
  if ((v3 & 8) == 0)
  {
    v7 = result;
  }

  result = v7 + ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
LABEL_11:
  v8 = *(this + 1);
  if (v8)
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v16 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(this + 13) = result;
  return result;
}

void sentencepiece::NormalizerSpec::CheckTypeAndMergeFrom(sentencepiece::NormalizerSpec *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::NormalizerSpec::MergeFrom(this, lpsrc);
}

void sentencepiece::NormalizerSpec::MergeFrom(sentencepiece::NormalizerSpec *this, const sentencepiece::NormalizerSpec *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2246);
    v4 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v20, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 24), (a2 + 24));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 12);
  if ((v13 & 0x7F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 7);
      *(this + 12) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_30;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 8);
    *(this + 12) |= 2u;
    v17 = *(this + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

LABEL_30:
    v18 = *(a2 + 9);
    *(this + 12) |= 4u;
    v19 = *(this + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(this + 80) = *(a2 + 80);
    if ((v13 & 0x10) == 0)
    {
LABEL_19:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(this + 81) = *(a2 + 81);
    if ((v13 & 0x20) == 0)
    {
LABEL_20:
      if ((v13 & 0x40) == 0)
      {
LABEL_22:
        *(this + 12) |= v13;
        return;
      }

LABEL_21:
      *(this + 83) = *(a2 + 83);
      goto LABEL_22;
    }

LABEL_35:
    *(this + 82) = *(a2 + 82);
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

void sub_26D3FB4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::NormalizerSpec::CopyFrom(sentencepiece::NormalizerSpec *this, const sentencepiece::NormalizerSpec *a2)
{
  if (a2 != this)
  {
    sentencepiece::NormalizerSpec::Clear(this);

    sentencepiece::NormalizerSpec::MergeFrom(this, a2);
  }
}

uint64_t *sentencepiece::NormalizerSpec::InternalSwap(sentencepiece::NormalizerSpec *this, sentencepiece::NormalizerSpec *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 24), (a2 + 24));
  v4 = (this + 8);
  v5 = *(this + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_26:
      v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    goto LABEL_9;
  }

  v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v10 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v11 = *(v10 + 2);
  v12 = *v10;
  v13 = *(v9 + 2);
  *v10 = *v9;
  *(v10 + 2) = v13;
  *v9 = v12;
  *(v9 + 2) = v11;
  v5 = *(this + 1);
  LODWORD(v11) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (this + 56);
  if (*(this + 7) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 7) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(result, v14);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 7, v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  v20 = v5;
  if (v7)
  {
    v20 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 8) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 8) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v21 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 8, v20);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 8, v20);
    v22 = v21[2];
    v23 = *v21;
    v24 = result[2];
    *v21 = *result;
    v21[2] = v24;
    *result = v23;
    result[2] = v22;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 9) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 9) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v25 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 9, v5);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 9, v5);
    v26 = v25[2];
    v27 = *v25;
    v28 = result[2];
    *v25 = *result;
    v25[2] = v28;
    *result = v27;
    result[2] = v26;
  }

  v29 = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v29;
  v30 = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v30;
  v31 = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v31;
  v32 = *(this + 83);
  *(this + 83) = *(a2 + 83);
  *(a2 + 83) = v32;
  return result;
}

void *sentencepiece::SelfTestData_Sample::SelfTestData_Sample(void *a1, uint64_t a2)
{
  *a1 = &unk_287EBC1D0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto);
  }

  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  a1[4] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

sentencepiece::SelfTestData_Sample *sentencepiece::SelfTestData_Sample::SelfTestData_Sample(sentencepiece::SelfTestData_Sample *this, const sentencepiece::SelfTestData_Sample *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287EBC1D0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    v11 = *(v7 + 8);
    v10 = v7 + 8;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    std::string::append(v8, v13, v14);
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v15 = *v4;
    if (*v4)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 24), (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v15);
    v5 = *(a2 + 4);
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 2) != 0)
  {
    v16 = *v4;
    if (*v4)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 32), (*(a2 + 4) & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  return this;
}

void sentencepiece::SelfTestData_Sample::~SelfTestData_Sample(sentencepiece::SelfTestData_Sample *this)
{
  sentencepiece::SelfTestData_Sample::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
}

{
  sentencepiece::SelfTestData_Sample::~SelfTestData_Sample(this);

  JUMPOUT(0x26D6BF040);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::SelfTestData_Sample::SharedDtor(sentencepiece::SelfTestData_Sample *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2362);
    v3 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  result = (this + 24);
  if (*(this + 3) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v5 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x26D6BF040](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 4);
  v7 = (this + 32);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v9 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x26D6BF040](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_26D3FBA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::SelfTestData_Sample::default_instance(sentencepiece::SelfTestData_Sample *this)
{
  if (atomic_load_explicit(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto);
  }

  return sentencepiece::_SelfTestData_Sample_default_instance_;
}

uint64_t sentencepiece::SelfTestData_Sample::Clear(uint64_t this)
{
  v1 = *(this + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(this + 32) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  *(this + 16) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return this;
}

google::protobuf::internal *sentencepiece::SelfTestData_Sample::_InternalParse(sentencepiece::SelfTestData_Sample *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v20 = a2;
  for (i = a3[11].i32[1]; (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v20, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (v20 + 1);
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v20 + 2);
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v8 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(this + 4) |= 2u;
        v14 = *(this + 1);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = (this + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(this + 4) |= 1u;
      v14 = *(this + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = (this + 24);
LABEL_26:
      v16 = google::protobuf::internal::ArenaStringPtr::Mutable(v15, v14);
      v13 = google::protobuf::internal::InlineGreedyStringParser(v16, v20, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      a3[10].i32[0] = v7 - 1;
      return v20;
    }

    v11 = *(this + 1);
    if (v11)
    {
      v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v12 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      v6 = v20;
    }

    v13 = google::protobuf::internal::UnknownFieldParse(v7, v12, v6, a3);
LABEL_27:
    v20 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *sentencepiece::SelfTestData_Sample::_InternalSerialize(sentencepiece::SelfTestData_Sample *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v11, v10, v4);
}

uint64_t sentencepiece::SelfTestData_Sample::ByteSizeLong(sentencepiece::SelfTestData_Sample *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(this + 1);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(this + 5) = v2;
  return v2;
}

void sentencepiece::SelfTestData_Sample::CheckTypeAndMergeFrom(sentencepiece::SelfTestData_Sample *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SelfTestData_Sample::MergeFrom(this, lpsrc);
}

void sentencepiece::SelfTestData_Sample::MergeFrom(sentencepiece::SelfTestData_Sample *this, const sentencepiece::SelfTestData_Sample *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2516);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 4);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 3);
      *(this + 4) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 24), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      v16 = *(a2 + 4);
      *(this + 4) |= 2u;
      v17 = *(this + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 32), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    }
  }
}

void sub_26D3FC0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SelfTestData_Sample::CopyFrom(sentencepiece::SelfTestData_Sample *this, const sentencepiece::SelfTestData_Sample *a2)
{
  if (a2 != this)
  {
    sentencepiece::SelfTestData_Sample::Clear(this);

    sentencepiece::SelfTestData_Sample::MergeFrom(this, a2);
  }
}

__n128 sentencepiece::SelfTestData_Sample::InternalSwap(sentencepiece::SelfTestData_Sample *this, sentencepiece::SelfTestData_Sample *a2)
{
  v4 = (this + 8);
  v5 = *(this + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v8;
    goto LABEL_9;
  }

  v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v11 = v10[1].n128_u64[0];
  result = *v10;
  v13 = *(v9 + 2);
  *v10 = *v9;
  v10[1].n128_u64[0] = v13;
  *v9 = result;
  *(v9 + 2) = v11;
  v5 = *(this + 1);
  LODWORD(v11) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  if (*(this + 3) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 3) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v15 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v14);
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 3, v14);
    v17 = v15[1].n128_i64[0];
    result = *v15;
    v18 = v16[2];
    *v15 = *v16;
    v15[1].n128_u64[0] = v18;
    *v16 = result;
    v16[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 4) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 4) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v19 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 4, v5);
    v20 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 4, v5);
    v21 = v19[1].n128_i64[0];
    result = *v19;
    v22 = v20[2];
    *v19 = *v20;
    v19[1].n128_u64[0] = v22;
    *v20 = result;
    v20[2] = v21;
  }

  return result;
}

uint64_t sentencepiece::SelfTestData::SelfTestData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBC250;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto);
  }

  return a1;
}

void sub_26D3FC36C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

sentencepiece::SelfTestData *sentencepiece::SelfTestData::SelfTestData(sentencepiece::SelfTestData *this, const sentencepiece::SelfTestData *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287EBC250;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 6) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40, a2 + 40);
  *(this + 16) = 0;
  v6 = *(a2 + 1);
  if (v6)
  {
    if (*v4)
    {
      v7 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v8 >= 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v10, v11);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  return this;
}

void sub_26D3FC460(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 40));
  google::protobuf::internal::ExtensionSet::~ExtensionSet(v1);
  _Unwind_Resume(a1);
}

void sentencepiece::SelfTestData::~SelfTestData(sentencepiece::SelfTestData *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2589);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  google::protobuf::internal::InternalMetadata::Delete<std::string>(v3);
  google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::~RepeatedPtrField(this + 5);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SelfTestData::~SelfTestData(this);

  JUMPOUT(0x26D6BF040);
}

void sub_26D3FC530(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  __clang_call_terminate(a1);
}

void *sentencepiece::SelfTestData::default_instance(sentencepiece::SelfTestData *this)
{
  if (atomic_load_explicit(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto);
  }

  return &sentencepiece::_SelfTestData_default_instance_;
}

void sentencepiece::SelfTestData::Clear(sentencepiece::SelfTestData *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 31) < 0)
    {
      **(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    else
    {
      *(v3 + 8) = 0;
      *(v3 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::SelfTestData::_InternalParse(sentencepiece::SelfTestData *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v23 + 1);
      v6 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v21;
LABEL_6:
      if (v6 == 10)
      {
        v10 = v5 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          v23 = (v10 + 1);
          v12 = *(this + 7);
          if (!v12)
          {
            break;
          }

          v17 = *(this + 12);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(this + 12) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_20;
          }

          if (v13 == *(this + 13))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v12 = v13 + 1;
          v14 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData_Sample>(*(this + 5));
          v15 = *(this + 12);
          v16 = *(this + 7) + 8 * v15;
          *(this + 12) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v23;
LABEL_20:
          v10 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData_Sample>(a3, v14, v11);
          v23 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_30;
          }
        }

        v13 = *(this + 13);
LABEL_16:
        google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 10, v13 + 1);
        v12 = *(this + 7);
        v13 = *v12;
        goto LABEL_17;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 20) = v6 - 1;
        return v23;
      }

      if (v6 < 0x640)
      {
        v18 = *(this + 1);
        if (v18)
        {
          v19 = ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v19 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
          v5 = v23;
        }

        v9 = google::protobuf::internal::UnknownFieldParse(v6, v19, v5, a3);
      }

      else
      {
        v9 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v6, v5, &sentencepiece::_SelfTestData_default_instance_, this + 1, a3);
      }

      v23 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v5 = (v23 + 2);
LABEL_5:
    v23 = v5;
    goto LABEL_6;
  }

  return v23;
}

unsigned __int8 *sentencepiece::SelfTestData::_InternalSerialize(sentencepiece::SelfTestData *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 12);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40, i);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
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
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = sentencepiece::SelfTestData_Sample::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, a2, a3);
  v15 = v14;
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - v14 >= v19)
  {
    v21 = v19;
    memcpy(v14, v20, v19);
    v15 += v21;
    return v15;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v20, v19, v14);
}

uint64_t sentencepiece::SelfTestData::ByteSizeLong(sentencepiece::SelfTestData *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 12);
  v4 = v2 + v3;
  v5 = *(this + 7);
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
      v9 = sentencepiece::SelfTestData_Sample::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 1);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(this + 16) = v4;
  return v4;
}

void sentencepiece::SelfTestData::CheckTypeAndMergeFrom(sentencepiece::SelfTestData *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SelfTestData::MergeFrom(this, lpsrc);
}

void sentencepiece::SelfTestData::MergeFrom(sentencepiece::SelfTestData *this, const sentencepiece::SelfTestData *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2724);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40, a2 + 40);
}

void sub_26D3FCBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SelfTestData::CopyFrom(sentencepiece::SelfTestData *this, const sentencepiece::SelfTestData *a2)
{
  if (a2 != this)
  {
    sentencepiece::SelfTestData::Clear(this);

    sentencepiece::SelfTestData::MergeFrom(this, a2);
  }
}

double sentencepiece::SelfTestData::InternalSwap(sentencepiece::SelfTestData *this, sentencepiece::SelfTestData *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_5:
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (v4)
    {
LABEL_6:
      v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *(v7 + 2);
      *v8 = *v7;
      *(v8 + 2) = v11;
      *v7 = v10;
      *(v7 + 2) = v9;
      goto LABEL_8;
    }

LABEL_12:
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:

  *&result = google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 40), (a2 + 40)).n128_u64[0];
  return result;
}

void *sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(void *a1, uint64_t a2)
{
  *a1 = &unk_287EBC2D0;
  a1[1] = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((a1 + 2), a2);
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto);
  }

  a1[6] = &google::protobuf::internal::fixed_address_empty_string;
  a1[7] = 0x100000000;
  return a1;
}

sentencepiece::ModelProto_SentencePiece *sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(sentencepiece::ModelProto_SentencePiece *this, const sentencepiece::ModelProto_SentencePiece *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287EBC2D0;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = *(a2 + 10);
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 40))
  {
    v11 = *v4;
    if (*v4)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 48), (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(this + 7) = *(a2 + 7);
  return this;
}

void sentencepiece::ModelProto_SentencePiece::~ModelProto_SentencePiece(sentencepiece::ModelProto_SentencePiece *this)
{
  sentencepiece::ModelProto_SentencePiece::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::ModelProto_SentencePiece::~ModelProto_SentencePiece(this);

  JUMPOUT(0x26D6BF040);
}

void sentencepiece::ModelProto_SentencePiece::SharedDtor(sentencepiece::ModelProto_SentencePiece *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2813);
    v3 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  v5 = *(this + 6);
  v4 = (this + 48);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x26D6BF040](v7, 0x1012C40EC159624);
  }
}

void sub_26D3FCF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::ModelProto_SentencePiece::default_instance(sentencepiece::ModelProto_SentencePiece *this)
{
  if (atomic_load_explicit(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto);
  }

  return sentencepiece::_ModelProto_SentencePiece_default_instance_;
}

void sentencepiece::ModelProto_SentencePiece::Clear(sentencepiece::ModelProto_SentencePiece *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v2 & 6) != 0)
  {
    *(this + 7) = 0x100000000;
  }

  *(this + 10) = 0;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::ModelProto_SentencePiece::_InternalParse(sentencepiece::ModelProto_SentencePiece *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
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
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 24)
        {
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v23 = google::protobuf::internal::VarintParseSlow64(v7, v14);
            if (!v23)
            {
LABEL_44:
              v23 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_25:
            v23 = v15;
          }

          if ((v14 - 1) > 5)
          {
            sentencepiece::ModelProto_SentencePiece::_InternalParse(this + 1, v14);
          }

          else
          {
            *(this + 10) |= 4u;
            *(this + 15) = v14;
          }

          goto LABEL_37;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(this + 14) = *v7;
          v23 = (v7 + 4);
          goto LABEL_37;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(this + 10) |= 1u;
        v17 = *(this + 1);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 6, v17);
        v13 = google::protobuf::internal::InlineGreedyStringParser(v18, v23, a3);
        goto LABEL_36;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        a3[10].i32[0] = v8 - 1;
        goto LABEL_2;
      }

      if (v8 < 0x640)
      {
        v21 = *(this + 1);
        if (v21)
        {
          v22 = ((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v22 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
          v7 = v23;
        }

        v13 = google::protobuf::internal::UnknownFieldParse(v8, v22, v7, a3);
      }

      else
      {
        v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, sentencepiece::_ModelProto_SentencePiece_default_instance_, this + 1, a3);
      }

LABEL_36:
      v23 = v13;
      if (!v13)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v5;
  return v23;
}

unsigned __int8 *sentencepiece::ModelProto_SentencePiece::_InternalSerialize(sentencepiece::ModelProto_SentencePiece *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
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

  v7 = *(this + 14);
  *v4 = 21;
  *(v4 + 1) = v7;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 15);
    *v4 = 24;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
    }
  }

LABEL_18:
  v12 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, v4, a3);
  v13 = v12;
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v12 >= v17)
  {
    v19 = v17;
    memcpy(v12, v18, v17);
    v13 += v19;
    return v13;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, v12);
}

uint64_t sentencepiece::ModelProto_SentencePiece::ByteSizeLong(sentencepiece::ModelProto_SentencePiece *this)
{
  result = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += 5;
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(this + 15);
      if (v7 < 0)
      {
        v8 = 11;
      }

      else
      {
        v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v8;
    }
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(this + 11) = result;
  return result;
}

void sentencepiece::ModelProto_SentencePiece::CheckTypeAndMergeFrom(sentencepiece::ModelProto_SentencePiece *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::ModelProto_SentencePiece::MergeFrom(this, lpsrc);
}

void sentencepiece::ModelProto_SentencePiece::MergeFrom(sentencepiece::ModelProto_SentencePiece *this, const sentencepiece::ModelProto_SentencePiece *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3001);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 10);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 6);
      *(this + 10) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
LABEL_18:
          *(this + 10) |= v13;
          return;
        }

LABEL_17:
        *(this + 15) = *(a2 + 15);
        goto LABEL_18;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(this + 14) = *(a2 + 14);
    if ((v13 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }
}

void sub_26D3FD758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::ModelProto_SentencePiece::CopyFrom(sentencepiece::ModelProto_SentencePiece *this, const sentencepiece::ModelProto_SentencePiece *a2)
{
  if (a2 != this)
  {
    sentencepiece::ModelProto_SentencePiece::Clear(this);

    sentencepiece::ModelProto_SentencePiece::MergeFrom(this, a2);
  }
}

float sentencepiece::ModelProto_SentencePiece::InternalSwap(sentencepiece::ModelProto_SentencePiece *this, sentencepiece::ModelProto_SentencePiece *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
    goto LABEL_9;
  }

  v8 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if (v4)
  {
LABEL_6:
    v9 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    goto LABEL_7;
  }

LABEL_14:
  v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
LABEL_7:
  v10 = *(v9 + 2);
  v11 = *v9;
  v12 = *(v8 + 2);
  *v9 = *v8;
  *(v9 + 2) = v12;
  *v8 = v11;
  *(v8 + 2) = v10;
  v4 = *(this + 1);
  LODWORD(v10) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_9:
  if (*(this + 6) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 6) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v13 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 6, v4);
    v14 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 6, v4);
    v15 = v13[2];
    v16 = *v13;
    v17 = v14[2];
    *v13 = *v14;
    v13[2] = v17;
    *v14 = v16;
    v14[2] = v15;
  }

  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  v19 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v19;
  return result;
}

uint64_t sentencepiece::ModelProto::ModelProto(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBC350;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_287EBC468;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 24, a2);
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(scc_info_ModelProto_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_sentencepiece_5fmodel_2eproto);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_26D3FDA08(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 24));
  _Unwind_Resume(a1);
}

sentencepiece::ModelProto *sentencepiece::ModelProto::ModelProto(sentencepiece::ModelProto *this, const sentencepiece::ModelProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287EBC350;
  *(this + 2) = &unk_287EBC468;
  *(this + 3) = 0;
  v5 = (this + 24);
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 12) = *(a2 + 12);
  *(this + 19) = 0;
  *(this + 60) = 0;
  *(this + 68) = 0;
  *(this + 52) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, a2 + 56);
  v6 = *(a2 + 1);
  if (v6)
  {
    if (*v4)
    {
      v7 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v8 >= 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v10, v11);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 24));
  v12 = *(a2 + 12);
  if (v12)
  {
    if (!*(a2 + 10))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v13 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 10) = 0;
  if ((v12 & 2) != 0)
  {
    if (!*(a2 + 11))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v14 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 11) = 0;
  if ((v12 & 4) != 0)
  {
    if (!*(a2 + 12))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
      v15 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || self_test_data_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 12) = 0;
  if ((v12 & 8) != 0)
  {
    if (!*(a2 + 13))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v16 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 13) = 0;
  return this;
}

void sub_26D3FDD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField((v3 + 56));
  google::protobuf::internal::ExtensionSet::~ExtensionSet(v4);
  _Unwind_Resume(a1);
}

void sentencepiece::ModelProto::~ModelProto(sentencepiece::ModelProto *this)
{
  sentencepiece::ModelProto::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField(this + 7);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 24));
}

{
  sentencepiece::ModelProto::~ModelProto(this);

  JUMPOUT(0x26D6BF040);
}

void sentencepiece::ModelProto::SharedDtor(sentencepiece::ModelProto *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3145);
    v3 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  if (this != &sentencepiece::_ModelProto_default_instance_)
  {
    v4 = *(this + 10);
    if (v4)
    {
      sentencepiece::TrainerSpec::~TrainerSpec(v4);
      MEMORY[0x26D6BF040]();
    }

    v5 = *(this + 11);
    if (v5)
    {
      sentencepiece::NormalizerSpec::~NormalizerSpec(v5);
      MEMORY[0x26D6BF040]();
    }

    v6 = *(this + 12);
    if (v6)
    {
      sentencepiece::SelfTestData::~SelfTestData(v6);
      MEMORY[0x26D6BF040]();
    }

    v7 = *(this + 13);
    if (v7)
    {
      sentencepiece::NormalizerSpec::~NormalizerSpec(v7);
      MEMORY[0x26D6BF040]();
    }
  }
}

void sub_26D3FDF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk tosentencepiece::ModelProto::~ModelProto(sentencepiece::ModelProto *this)
{
  sentencepiece::ModelProto::~ModelProto((this - 16));
}

{
  sentencepiece::ModelProto::~ModelProto((this - 16));

  JUMPOUT(0x26D6BF040);
}

void *sentencepiece::ModelProto::default_instance(sentencepiece::ModelProto *this)
{
  if (atomic_load_explicit(scc_info_ModelProto_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_sentencepiece_5fmodel_2eproto);
  }

  return &sentencepiece::_ModelProto_default_instance_;
}

void sentencepiece::ModelProto::Clear(sentencepiece::ModelProto *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 24));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56);
  v2 = *(this + 12);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(this + 10);
      if (!v3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3178);
        v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: trainer_spec_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v3 = *(this + 10);
      }

      sentencepiece::TrainerSpec::Clear(v3);
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(this + 11);
      if (!v5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3182);
        v6 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: normalizer_spec_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v5 = *(this + 11);
      }

      sentencepiece::NormalizerSpec::Clear(v5);
    }

    if ((v2 & 4) != 0)
    {
      v7 = *(this + 12);
      if (!v7)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3186);
        v8 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: self_test_data_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v7 = *(this + 12);
      }

      sentencepiece::SelfTestData::Clear(v7);
    }

    if ((v2 & 8) != 0)
    {
      v9 = *(this + 13);
      if (!v9)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3190);
        v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: denormalizer_spec_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v9 = *(this + 13);
      }

      sentencepiece::NormalizerSpec::Clear(v9);
    }
  }

  *(this + 12) = 0;
  v11 = *(this + 1);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 31) < 0)
    {
      **(v12 + 8) = 0;
      *(v12 + 16) = 0;
    }

    else
    {
      *(v12 + 8) = 0;
      *(v12 + 31) = 0;
    }
  }
}

void sub_26D3FE19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *sentencepiece::ModelProto::_InternalParse(sentencepiece::ModelProto *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v32 + 1);
      v7 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v8 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v29;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 26)
          {
            *(this + 12) |= 2u;
            v10 = *(this + 11);
            if (!v10)
            {
              v16 = *(this + 1);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v16);
              *(this + 11) = v10;
LABEL_32:
              v6 = v32;
            }

LABEL_33:
            v15 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::NormalizerSpec>(a3, v10, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 34)
          {
            *(this + 12) |= 4u;
            v17 = *(this + 12);
            if (!v17)
            {
              v18 = *(this + 1);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData>(v18);
              *(this + 12) = v17;
              v6 = v32;
            }

            v15 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData>(a3, v17, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 5 && v7 == 42)
        {
          *(this + 12) |= 8u;
          v10 = *(this + 13);
          if (!v10)
          {
            v11 = *(this + 1);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v11);
            *(this + 13) = v10;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        goto LABEL_54;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_54;
        }

        v19 = v6 - 1;
        while (2)
        {
          v20 = (v19 + 1);
          v32 = (v19 + 1);
          v21 = *(this + 9);
          if (!v21)
          {
            v22 = *(this + 17);
            goto LABEL_44;
          }

          v26 = *(this + 16);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(this + 17))
            {
LABEL_44:
              google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 14, v22 + 1);
              v21 = *(this + 9);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto_SentencePiece>(*(this + 7));
            v24 = *(this + 16);
            v25 = *(this + 9) + 8 * v24;
            *(this + 16) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v32;
          }

          else
          {
            *(this + 16) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::ModelProto_SentencePiece>(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        *(this + 12) |= 1u;
        v13 = *(this + 10);
        if (!v13)
        {
          v14 = *(this + 1);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(v14);
          *(this + 10) = v13;
          v6 = v32;
        }

        google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::TrainerSpec>(a3, v13, v6);
        goto LABEL_65;
      }

LABEL_54:
      if (v7)
      {
        v27 = (v7 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        *(a3 + 20) = v7 - 1;
        return v32;
      }

      if (v7 < 0x640)
      {
        v30 = *(this + 1);
        if (v30)
        {
          v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v31 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
          v6 = v32;
        }

        v15 = google::protobuf::internal::UnknownFieldParse(v7, v31, v6, a3);
      }

      else
      {
        v15 = google::protobuf::internal::ExtensionSet::ParseField((this + 24), v7, v6, &sentencepiece::_ModelProto_default_instance_, this + 1, a3);
      }

LABEL_65:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }

LABEL_66:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v32, *(a3 + 23)))
      {
        return v32;
      }
    }

    v6 = (v32 + 2);
LABEL_6:
    v32 = v6;
    goto LABEL_7;
  }

  return v32;
}

unsigned __int8 *sentencepiece::ModelProto::_InternalSerialize(sentencepiece::ModelProto *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 16);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, i);
      *a2 = 10;
      v9 = *(v8 + 11);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
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
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = sentencepiece::ModelProto_SentencePiece::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 10);
    *a2 = 18;
    v16 = *(v15 + 12);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = (a2 + 3);
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
        v17 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v16;
      v17 = (a2 + 2);
    }

    a2 = sentencepiece::TrainerSpec::_InternalSerialize(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 11);
  *a2 = 26;
  v22 = *(v21 + 13);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = (a2 + 3);
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      a2[2] = v24;
      v23 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v22;
    v23 = (a2 + 2);
  }

  a2 = sentencepiece::NormalizerSpec::_InternalSerialize(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 12);
  *a2 = 34;
  v28 = *(v27 + 16);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = (a2 + 3);
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v28;
    v29 = (a2 + 2);
  }

  a2 = sentencepiece::SelfTestData::_InternalSerialize(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(this + 13);
    *a2 = 42;
    v34 = *(v33 + 13);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = (a2 + 3);
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v34;
      v35 = (a2 + 2);
    }

    a2 = sentencepiece::NormalizerSpec::_InternalSerialize(v33, v35, a3);
  }

LABEL_58:
  v39 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 24), 200, 0x20000000, a2, a3);
  v40 = v39;
  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return v40;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if (*a3 - v39 >= v44)
  {
    v46 = v44;
    memcpy(v39, v45, v44);
    v40 += v46;
    return v40;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v45, v44, v39);
}

uint64_t sentencepiece::ModelProto::ByteSizeLong(sentencepiece::ModelProto *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 24));
  v3 = *(this + 16);
  v4 = v2 + v3;
  v5 = *(this + 9);
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
      v9 = sentencepiece::ModelProto_SentencePiece::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 12);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = sentencepiece::NormalizerSpec::ByteSizeLong(*(this + 11));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v14 = sentencepiece::TrainerSpec::ByteSizeLong(*(this + 10));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v16 = sentencepiece::SelfTestData::ByteSizeLong(*(this + 12));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sentencepiece::NormalizerSpec::ByteSizeLong(*(this + 13));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v12 = *(this + 1);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(this + 13) = v4;
  return v4;
}

void sentencepiece::ModelProto::CheckTypeAndMergeFrom(sentencepiece::ModelProto *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::ModelProto::MergeFrom(this, lpsrc);
}

void sentencepiece::ModelProto::MergeFrom(sentencepiece::ModelProto *this, const sentencepiece::ModelProto *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3397);
    v4 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 24), (a2 + 24));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, a2 + 56);
  v13 = *(a2 + 12);
  if ((v13 & 0xF) != 0)
  {
    if (v13)
    {
      *(this + 12) |= 1u;
      v14 = *(this + 10);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(v15);
        *(this + 10) = v14;
      }

      if (*(a2 + 10))
      {
        v16 = *(a2 + 10);
      }

      else
      {
        v16 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      sentencepiece::TrainerSpec::MergeFrom(v14, v16);
    }

    if ((v13 & 2) != 0)
    {
      *(this + 12) |= 2u;
      v17 = *(this + 11);
      if (!v17)
      {
        v18 = *(this + 1);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v18);
        *(this + 11) = v17;
      }

      if (*(a2 + 11))
      {
        v19 = *(a2 + 11);
      }

      else
      {
        v19 = &sentencepiece::_NormalizerSpec_default_instance_;
      }

      sentencepiece::NormalizerSpec::MergeFrom(v17, v19);
      if ((v13 & 4) == 0)
      {
LABEL_25:
        if ((v13 & 8) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else if ((v13 & 4) == 0)
    {
      goto LABEL_25;
    }

    *(this + 12) |= 4u;
    v20 = *(this + 12);
    if (!v20)
    {
      v21 = *(this + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData>(v21);
      *(this + 12) = v20;
    }

    if (*(a2 + 12))
    {
      v22 = *(a2 + 12);
    }

    else
    {
      v22 = &sentencepiece::_SelfTestData_default_instance_;
    }

    sentencepiece::SelfTestData::MergeFrom(v20, v22);
    if ((v13 & 8) != 0)
    {
LABEL_43:
      *(this + 12) |= 8u;
      v23 = *(this + 13);
      if (!v23)
      {
        v24 = *(this + 1);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v24);
        *(this + 13) = v23;
      }

      if (*(a2 + 13))
      {
        v25 = *(a2 + 13);
      }

      else
      {
        v25 = &sentencepiece::_NormalizerSpec_default_instance_;
      }

      sentencepiece::NormalizerSpec::MergeFrom(v23, v25);
    }
  }
}

void sub_26D3FED50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::ModelProto::CopyFrom(sentencepiece::ModelProto *this, const sentencepiece::ModelProto *a2)
{
  if (a2 != this)
  {
    sentencepiece::ModelProto::Clear(this);

    sentencepiece::ModelProto::MergeFrom(this, a2);
  }
}

uint64_t sentencepiece::ModelProto::IsInitialized(sentencepiece::ModelProto *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 24));
  if (!result)
  {
    return result;
  }

  result = google::protobuf::internal::AllAreInitialized<sentencepiece::ModelProto_SentencePiece>(this + 56);
  if (!result)
  {
    return result;
  }

  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(this + 10);
    if (!v4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      v4 = *(this + 10);
    }

    result = google::protobuf::internal::ExtensionSet::IsInitialized((v4 + 16));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 12);
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(this + 11);
    if (!v6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      v6 = *(this + 11);
    }

    result = google::protobuf::internal::ExtensionSet::IsInitialized((v6 + 24));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 12);
  }

  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v10 = *(this + 13);
    if (!v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v11 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      v10 = *(this + 13);
    }

    result = google::protobuf::internal::ExtensionSet::IsInitialized((v10 + 24));
    if (result)
    {
      return 1;
    }

    return result;
  }

  v8 = *(this + 12);
  if (!v8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || self_test_data_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v8 = *(this + 12);
  }

  result = google::protobuf::internal::ExtensionSet::IsInitialized((v8 + 16));
  if (result)
  {
    v3 = *(this + 12);
    goto LABEL_18;
  }

  return result;
}

void sub_26D3FEF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::internal::AllAreInitialized<sentencepiece::ModelProto_SentencePiece>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(a1, v2);
  }

  while ((google::protobuf::internal::ExtensionSet::IsInitialized((v5 + 16)) & 1) != 0);
  return v3 < 1;
}

__n128 sentencepiece::ModelProto::InternalSwap(__n128 *this, __n128 *a2)
{
  google::protobuf::internal::ExtensionSet::Swap(&this[1].n128_i8[8], &a2[1].n128_i8[8]);
  v5 = &this->n128_u64[1];
  v4 = this->n128_u64[1];
  v6 = a2->n128_u64[1];
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(&a2->n128_u64[1]);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(&this->n128_u64[1]);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v9 = *(v8 + 2);
  v10 = *v8;
  v11 = *(v7 + 2);
  *v8 = *v7;
  *(v8 + 2) = v11;
  *v7 = v10;
  *(v7 + 2) = v9;
LABEL_8:
  v12 = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(&this[3].n128_i8[8], &a2[3].n128_i8[8]);
  v13 = this[5].n128_u64[0];
  v14 = this[5].n128_u64[1];
  this[5] = a2[5];
  a2[5].n128_u64[0] = v13;
  a2[5].n128_u64[1] = v14;
  v15 = this[6].n128_u64[0];
  v16 = this[6].n128_u64[1];
  result = a2[6];
  this[6] = result;
  a2[6].n128_u64[0] = v15;
  a2[6].n128_u64[1] = v16;
  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x148uLL);
  sentencepiece::TrainerSpec::TrainerSpec(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x58uLL);
  sentencepiece::NormalizerSpec::NormalizerSpec(AlignedNoHook, a1);
  return AlignedNoHook;
}

void *google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData_Sample>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x28uLL);
  sentencepiece::SelfTestData_Sample::SelfTestData_Sample(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x48uLL);
  sentencepiece::SelfTestData::SelfTestData(AlignedNoHook, a1);
  return AlignedNoHook;
}

void *google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto_SentencePiece>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x40uLL);
  sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x70uLL);
  sentencepiece::ModelProto::ModelProto(AlignedNoHook, a1);
  return AlignedNoHook;
}

unint64_t sentencepiece::ModelProto::UnkSurface(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_280500530, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::UnkPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2805004B0, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::BosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2805004D0, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::EosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2805004F0, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::PadPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_280500510, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sentencepiece::ModelProto::ByteFallback(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  return v1[248];
}

uint64_t sentencepiece::ModelProto::HasUnkSurface(sentencepiece::ModelProto *this)
{
  v1 = &sentencepiece::_TrainerSpec_default_instance_;
  if (*(this + 10))
  {
    v1 = *(this + 10);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t *sentencepiece::ModelProto::IdToPiece(sentencepiece::ModelProto *this, int a2)
{
  v2 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t sentencepiece::ModelProto::NormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}

uint64_t sentencepiece::ModelProto::DenormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}