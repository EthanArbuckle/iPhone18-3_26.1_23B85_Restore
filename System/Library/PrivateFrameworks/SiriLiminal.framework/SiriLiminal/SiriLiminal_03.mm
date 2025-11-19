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
      MEMORY[0x26D5F93A0]();
    }

    v5 = *(this + 11);
    if (v5)
    {
      sentencepiece::NormalizerSpec::~NormalizerSpec(v5);
      MEMORY[0x26D5F93A0]();
    }

    v6 = *(this + 12);
    if (v6)
    {
      sentencepiece::SelfTestData::~SelfTestData(v6);
      MEMORY[0x26D5F93A0]();
    }

    v7 = *(this + 13);
    if (v7)
    {
      sentencepiece::NormalizerSpec::~NormalizerSpec(v7);
      MEMORY[0x26D5F93A0]();
    }
  }
}

void sub_26757D718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

  JUMPOUT(0x26D5F93A0);
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

void sub_26757D964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 14, v22 + 1);
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

void sub_26757E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26757E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    result = atomic_load_explicit(&qword_2801C9788, memory_order_acquire);
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
    result = atomic_load_explicit(&qword_2801C9708, memory_order_acquire);
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
    result = atomic_load_explicit(&qword_2801C9728, memory_order_acquire);
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
    result = atomic_load_explicit(&qword_2801C9748, memory_order_acquire);
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
    result = atomic_load_explicit(&qword_2801C9768, memory_order_acquire);
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

uint64_t sentencepiece::ModelProto::GetModelType(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unint64_t non-virtual thunk tosentencepiece::ModelProto::UnkSurface(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
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
    result = atomic_load_explicit(&qword_2801C9788, memory_order_acquire);
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

unint64_t non-virtual thunk tosentencepiece::ModelProto::UnkPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
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
    result = atomic_load_explicit(&qword_2801C9708, memory_order_acquire);
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

unint64_t non-virtual thunk tosentencepiece::ModelProto::BosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
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
    result = atomic_load_explicit(&qword_2801C9728, memory_order_acquire);
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

unint64_t non-virtual thunk tosentencepiece::ModelProto::EosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
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
    result = atomic_load_explicit(&qword_2801C9748, memory_order_acquire);
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

unint64_t non-virtual thunk tosentencepiece::ModelProto::PadPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
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
    result = atomic_load_explicit(&qword_2801C9768, memory_order_acquire);
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

uint64_t non-virtual thunk tosentencepiece::ModelProto::ByteFallback(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  return v1[248];
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::HasUnkSurface(sentencepiece::ModelProto *this)
{
  v1 = &sentencepiece::_TrainerSpec_default_instance_;
  if (*(this + 8))
  {
    v1 = *(this + 8);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::GetModelType(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t *non-virtual thunk tosentencepiece::ModelProto::IdToPiece(sentencepiece::ModelProto *this, int a2)
{
  v2 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 40, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::NormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::DenormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}

void google::protobuf::internal::arena_destruct_object<std::string>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26757F604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v2 = *(a1 + 16) + 8;
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
    *(a1 + 8) = 0;
  }
}

void sub_26757F6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26757F7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t a1)
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
      sentencepiece::SelfTestData_Sample::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_26757F860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1)
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
      sentencepiece::ModelProto_SentencePiece::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_26757F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, uint64_t a2)
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_26757F9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
    v18 = v9->__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (!v18)
      {
        operator new();
      }

      if (*(v18 + 24))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v18 + 32);
      }

      AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v18, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
      AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
      AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
      AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(AlignedAndAddCleanup, v21);
      *v20++ = AlignedAndAddCleanup;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

void google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(void *a1)
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
          sentencepiece::SelfTestData_Sample::~SelfTestData_Sample(*v3);
          MEMORY[0x26D5F93A0]();
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

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t a1, uint64_t a2)
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_26757FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t *a1, sentencepiece::SelfTestData_Sample **a2, sentencepiece::SelfTestData_Sample **a3, unsigned int a4, unsigned int a5)
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
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SelfTestData_Sample>::Merge(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData_Sample>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SelfTestData_Sample>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(void *a1)
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
          sentencepiece::ModelProto_SentencePiece::~ModelProto_SentencePiece(*v3);
          MEMORY[0x26D5F93A0]();
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

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1, uint64_t a2)
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
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_26757FF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t *a1, sentencepiece::ModelProto_SentencePiece **a2, sentencepiece::ModelProto_SentencePiece **a3, unsigned int a4, unsigned int a5)
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
      google::protobuf::internal::GenericTypeHandler<sentencepiece::ModelProto_SentencePiece>::Merge(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto_SentencePiece>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::ModelProto_SentencePiece>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void *OUTLINED_FUNCTION_2()
{

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v0, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
}

uint64_t *OUTLINED_FUNCTION_8()
{
  result = *(*(v0 + 32) + 32);
  v2 = *result;
  return result;
}

void *OUTLINED_FUNCTION_17(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void OUTLINED_FUNCTION_21()
{

  operator new();
}

void sentencepiece::ModelProto_SentencePiece::_InternalParse(unint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a1);
  }

  google::protobuf::internal::WriteVarint(3, a2, v3);
}

void *sentencepiece::filesystem::PosixReadableFile::PosixReadableFile(void *a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_2878A33A0;
  v6 = a1 + 1;
  sentencepiece::util::Status::Status(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v7 = MEMORY[0x277D82668];
  a1[2] = MEMORY[0x277D82668];
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    v15 = 5;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "", 1);
    v8 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ": ", 3);
    v9 = __error();
    sentencepiece::util::StrError(*v9);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v10, v11);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v15, &v21);
    sentencepiece::util::Status::operator=(v6, &v21);
    sentencepiece::util::Status::~Status(&v21);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x277D82828];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
    v17 = MEMORY[0x277D82878] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x26D5F9330](&v20);
  }

  return a1;
}

void sub_267580530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  sentencepiece::util::Status::~Status((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sentencepiece::util::StatusBuilder::~StatusBuilder(&a15);
  sentencepiece::util::Status::~Status(v15);
  _Unwind_Resume(a1);
}

void sentencepiece::filesystem::PosixReadableFile::~PosixReadableFile(sentencepiece::filesystem::PosixReadableFile *this)
{
  sentencepiece::filesystem::PosixReadableFile::~PosixReadableFile(this);

  JUMPOUT(0x26D5F93A0);
}

{
  *this = &unk_2878A33A0;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82668] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sentencepiece::util::Status::~Status((this + 8));
}

BOOL sentencepiece::filesystem::PosixReadableFile::ReadLine(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

BOOL sentencepiece::filesystem::PosixReadableFile::ReadAll(sentencepiece::logging *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = MEMORY[0x277D82668];
  if (v2 == MEMORY[0x277D82668])
  {
    if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
    {
      v12 = 0;
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "filesystem.cc", 13);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
      v6 = MEMORY[0x26D5F9210](v5, 55);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LOG(", 4);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ERROR", 5);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ReadAll is not supported for stdin.", 35);
      sentencepiece::error::Die::~Die(&v12);
    }
  }

  else
  {
    std::string::__assign_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(a2, *(v2 + *(*v2 - 24) + 40), 0);
  }

  return v2 != v3;
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x26D5F9160](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2675809D8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x267580998);
  }

  __cxa_rethrow();
}

void std::string::__assign_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(uint64_t a1, void *a2, void *a3)
{
  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, a2, a3);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  MEMORY[0x26D5F90B0](a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_267580ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_267580C18(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

uint64_t sentencepiece::GetRandomGeneratorSeed(sentencepiece *this)
{
  if (v1 != -1)
  {
  }

  std::random_device::random_device[abi:ne200100](&v4);
  v2 = MEMORY[0x26D5F9260](&v4);
  std::random_device::~random_device(&v4);
  return v2;
}

void sub_267580D28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_begin_catch(a1);
  atomic_load(v12);
  __cxa_end_catch();
  JUMPOUT(0x267580D14);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_267580DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::string_util::DecodeUTF8(sentencepiece::string_util *this, const char *a2, char *a3, unint64_t *a4)
{
  v4 = *this;
  if ((v4 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *this;
  }

  v6 = a2 - this;
  if ((a2 - this) >= 2)
  {
    if ((v4 & 0xE0) == 0xC0)
    {
      v7 = *(this + 1);
      if (v7 <= -65)
      {
        v8 = (v4 & 0x1F) << 6;
        if (v8 >= 0x80)
        {
          result = v8 | v7 & 0x3F;
          v9 = 2;
LABEL_8:
          *a3 = v9;
          return result;
        }
      }
    }

    else if (v6 != 2)
    {
      if ((v4 & 0xF0) == 0xE0)
      {
        v10 = *(this + 1);
        if (v10 <= -65)
        {
          v11 = *(this + 2);
          if (v11 <= -65)
          {
            v12 = (v4 & 0xF) << 12;
            v13 = v12 & 0xFFFFF03F | ((v10 & 0x3F) << 6);
            if (v13 >= 0x800 && ((v12 - 57344) < 0x102000 || v13 >> 11 <= 0x1A))
            {
              result = v12 & 0xFFFFF000 | ((v10 & 0x3F) << 6) | v11 & 0x3F;
              v9 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v6 >= 4 && (v4 & 0xF8) == 0xF0)
      {
        v14 = *(this + 1);
        if (v14 <= -65)
        {
          v15 = *(this + 2);
          if (v15 <= -65)
          {
            v16 = *(this + 3);
            if (v16 <= -65)
            {
              v17 = ((v4 & 7) << 18) | ((v14 & 0x3F) << 12);
              if (v17 >= 0x10000)
              {
                result = v16 & 0x3F | ((v15 & 0x3F) << 6) | v17;
                if (v17 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v9 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

uint64_t sentencepiece::random::GetRandomGenerator(sentencepiece::random *this)
{
  if ((*v1 & 1) == 0)
  {
    sentencepiece::random::GetRandomGenerator(v1);
  }

  return sentencepiece::random::GetRandomGenerator(void)::mt(&sentencepiece::random::GetRandomGenerator(void)::mt);
}

uint64_t sentencepiece::util::StrError(sentencepiece::util *this)
{
  v13 = *MEMORY[0x277D85DE8];
  strerror_r(this, __strerrbuf, 0x3FFuLL);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  v2 = strlen(__strerrbuf);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, __strerrbuf, v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " Error #", 8);
  MEMORY[0x26D5F9210](v4, this);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  result = MEMORY[0x26D5F9330](&v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sentencepiece::mmap_util::RoundUp(sentencepiece::mmap_util *this, unint64_t a2)
{
  if (!a2)
  {
    sentencepiece::mmap_util::RoundUp();
  }

  return (this + a2 - 1) / a2 * a2;
}

void sentencepiece::mmap_util::Padding(std::string *this)
{
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if ((size & 3) != 0)
  {
    do
    {
      std::string::push_back(this, 0);
      LOBYTE(v3) = *(&this->__r_.__value_.__s + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = this->__r_.__value_.__l.__size_;
      }
    }

    while ((v3 & 3) != 0);
  }
}

void *sentencepiece::mmap_util::RemovePrefix@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sentencepiece::util::Status::Status(a3);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x26D5F9210](&v10, 287);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "string.size() >= size", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a3);
    v10 = *MEMORY[0x277D82828];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x26D5F9330](&v14);
  }
}

_BYTE *sentencepiece::random::GetRandomGenerator(sentencepiece *a1)
{
  sentencepiece::GetRandomGeneratorSeed(a1);
  v1 = sentencepiece::random::GetRandomGenerator(void)::mt(&sentencepiece::random::GetRandomGenerator(void)::mt);
  *v1 = v4;
  do
  {
    v5 = v3(v2);
    *(v5 + 4 * v7) = v6;
  }

  while (v7 != 623);
  *(v3(v2) + 2496) = 0;
  *result = 1;
  return result;
}

sentencepiece::bpe::Model *sentencepiece::bpe::Model::Model(sentencepiece::bpe::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *v4 = &unk_2878A3400;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  return this;
}

void *sentencepiece::bpe::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sentencepiece::ModelInterface::ModelInterface(a1, a2, a3, a4);
  *result = &unk_2878A3400;
  return result;
}

void sentencepiece::bpe::Model::~Model(sentencepiece::bpe::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x26D5F93A0);
}

void sentencepiece::bpe::Model::SampleEncode(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v71 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(v57);
  if (*&v57[0])
  {
    sentencepiece::util::Status::~Status(v57);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_4;
  }

  sentencepiece::util::Status::~Status(v57);
  if (!a3)
  {
    goto LABEL_3;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v62 = 0uLL;
  if (a3 >> 59)
  {
    std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
  }

  std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(v57, a3, 0, &__p);
  v11 = (*(&v57[0] + 1) - (v62 - __p));
  memcpy(v11, __p, v62 - __p);
  v12 = __p;
  v13 = *(&v62 + 1);
  __p = v11;
  v62 = v57[1];
  *&v57[1] = v12;
  *(&v57[1] + 1) = v13;
  *&v57[0] = v12;
  *(&v57[0] + 1) = v12;
  if (v12)
  {
    operator delete(v12);
  }

  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  memset(v57 + 8, 0, 40);
  v58 = 256;
  v56[0] = a1;
  v56[1] = v57;
  v56[2] = &__p;
  v56[3] = &v65;
  v56[4] = v59;
  *&v57[0] = &unk_2878A3518;
  v14 = 1;
  do
  {
    v64 = 0uLL;
    v15 = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(a1[2], a2, a3, &v63 + 8);
    *&v64 = a2;
    *(&v64 + 1) = v15;
    a3 -= v15;
    if (a3)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    LODWORD(v63) = v14 - 2;
    DWORD1(v63) = v16;
    v17 = v62;
    if (v62 >= *(&v62 + 1))
    {
      v20 = (v62 - __p) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
      }

      v22 = *(&v62 + 1) - __p;
      if ((*(&v62 + 1) - __p) >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(&v68, v23, v20, &__p);
      v24 = v70;
      v25 = v64;
      *v70 = v63;
      *(v24 + 16) = v25;
      *&v70 = v70 + 32;
      v26 = &v69[-(v62 - __p)];
      memcpy(v26, __p, v62 - __p);
      v27 = __p;
      v28 = *(&v62 + 1);
      __p = v26;
      v29 = v70;
      v62 = v70;
      *&v70 = v27;
      *(&v70 + 1) = v28;
      v68 = v27;
      v69 = v27;
      if (v27)
      {
        v55 = v29;
        operator delete(v27);
        v29 = v55;
      }

      v19 = v29;
    }

    else
    {
      v18 = v64;
      *v62 = v63;
      *(v17 + 16) = v18;
      v19 = (v17 + 32);
    }

    a2 += v15;
    *&v62 = v19;
    ++v14;
  }

  while (a3);
  if (__p != v19)
  {
    if ((v19 - __p) >= 0x21)
    {
      v30 = 1;
      do
      {
        sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, v30 - 1, v30);
        ++v30;
      }

      while (v30 < (v62 - __p) >> 5);
    }

    v31 = v65;
    v32 = v66;
    if (v65 == v66)
    {
LABEL_55:
      *(&v64 + 1) = 0;
      operator new();
    }

    RandomGenerator = 0;
    while (1)
    {
      v34 = *v31;
      v35 = (v32 - v31) >> 3;
      if (v35 >= 2)
      {
        v36 = 0;
        v37 = v31;
        do
        {
          v38 = v37;
          v37 = (v37 + 8 * v36 + 8);
          v39 = 2 * v36;
          v36 = (2 * v36) | 1;
          v40 = v39 + 2;
          if (v40 < v35)
          {
            v41 = *(v37 + 1);
            v42 = *(*v37 + 8);
            v43 = *(v41 + 8);
            if (v42 < v43 || v42 == v43 && **v37 > *v41)
            {
              v37 = (v37 + 8);
              v36 = v40;
            }
          }

          *v38 = *v37;
        }

        while (v36 <= ((v35 - 2) >> 1));
        v44 = (v32 - 8);
        if (v37 == v44)
        {
          *v37 = v34;
        }

        else
        {
          *v37 = *v44;
          *v44 = v34;
          v31 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(v31, v37 + 8, ((v37 + 8) - v31) >> 3);
        }
      }

      v66 = (v66 - 8);
      v45 = *v34;
      v46 = *v34;
      v47 = __p;
      v48 = *(__p + 4 * v46 + 3);
      if (!v48)
      {
        goto LABEL_54;
      }

      v49 = v34[1];
      v50 = *(__p + 4 * v49 + 3);
      if (!v50 || v50 + v48 != *(v34 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!RandomGenerator)
        {
          RandomGenerator = sentencepiece::random::GetRandomGenerator(v31);
        }

        v51 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator);
        if ((v51 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v47 = __p;
        v45 = *v34;
        v49 = v34[1];
        v46 = *v34;
      }

      v52 = &v47[8 * v46];
      v53 = &v47[8 * v49];
      *(v52 + 3) += *(v53 + 3);
      v54 = *(v53 + 1);
      *(v52 + 1) = v54;
      if ((v54 & 0x80000000) == 0)
      {
        v47[8 * v54] = v45;
      }

      *(v53 + 2) = "";
      *(v53 + 3) = 0;
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, *(__p + 8 * v46), v45);
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, *v34, *(__p + 8 * *v34 + 1));
LABEL_54:
      v31 = v65;
      v32 = v66;
      if (v65 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(v57);
  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_267581C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::~__value_func[abi:ne200100](&a33);
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(&a18);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 208);
  if (v35)
  {
    *(v33 - 200) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

double sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v37[14] = v3;
    v37[15] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = *(v10 + 24) + *(v8 + 24);
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12++;
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              if (!--v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v37[3] = v37;
                  v33 = std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(v32, v37);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

void *sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(void *a1)
{
  *a1 = &unk_2878A3518;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x26D5F9370](*v2, 0x1000C801E56706BLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void *std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

void sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(void *a1)
{
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(a1);

  JUMPOUT(0x26D5F93A0);
}

uint64_t std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

__n128 std::__function::__func<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0>,void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2878A3548;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0>,void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  *&v21 = *a2;
  *(&v21 + 1) = v4;
  v6 = *(a1 + 8);
  v7 = ((*v6)[14])(v6, v21, v4);
  if (v7 != -1 && ((*(*v6[1] + 128))(v6[1], v7) & 1) != 0 && (v8 = std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::find<std::string_view>(*(a1 + 24), &v21)) != 0)
  {
    v9 = v8;
    std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(*(a1 + 16), v9[4], v9[5], v5);
    std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(*(a1 + 16), v9[6], v9[7], v5);
  }

  else
  {
    v11 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(v5, v16);
      }

      v17 = 24 * v13;
      *v17 = v21;
      *(v17 + 16) = v7;
      v12 = 24 * v13 + 24;
      v18 = *(v5 + 8) - *v5;
      v19 = v17 - v18;
      memcpy((v17 - v18), *v5, v18);
      v20 = *v5;
      *v5 = v19;
      *(v5 + 8) = v12;
      *(v5 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = v21;
      *(v11 + 16) = v7;
      v12 = v11 + 24;
    }

    *(v5 + 8) = v12;
  }
}

uint64_t std::__function::__func<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0>,void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::find<std::string_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_267582BF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sentencepiece::error::Abort(sentencepiece::error *this)
{
  if (!sentencepiece::error::gTestCounter)
  {
    v1 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82670], "Program terminated with an unrecoverable error.");
    v2 = std::endl[abi:ne200100]<char,std::char_traits<char>>(v1);
    sentencepiece::ShutdownLibrary(v2);
    exit(-1);
  }

  sentencepiece::error::gTestCounter = 2;
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sentencepiece::util::Status::~Status(sentencepiece::util::Status *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](this, v1);
  }
}

void sub_267582E94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::util::Status::Status(void *this, const sentencepiece::util::Status *a2)
{
  if (*a2)
  {
    operator new();
  }

  *this = 0;
  return this;
}

void sentencepiece::util::Status::operator=(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](a1, v3);
    }
  }
}

const char *sentencepiece::util::Status::error_message(sentencepiece::util::Status *this)
{
  v1 = *this;
  if (!*this)
  {
    return "";
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sentencepiece::util::Status::code(sentencepiece::util::Status *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

std::string *sentencepiece::util::Status::ToString@<X0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v4 = this;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *v3 - 1;
    if (v5 < 0x10)
    {
      MEMORY[0x26D5F90A0](a2, off_279C0E7B8[v5]);
    }

    std::string::append(a2, ": ");
    v6 = *(v4->__r_.__value_.__r.__words[0] + 31);
    if (v6 >= 0)
    {
      v7 = (v4->__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v7 = *(v4->__r_.__value_.__r.__words[0] + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 31);
    }

    else
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 16);
    }

    return std::string::append(a2, v7, v8);
  }

  else
  {
    *(a2 + 23) = 2;
    strcpy(a2, "OK");
  }

  return this;
}

void sub_267583134(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x26D5F93A0);
  }
}

void *google::protobuf::internal::ArenaImpl::thread_cache(google::protobuf::internal::ArenaImpl *this)
{
  {
    operator new();
  }

  v1 = google::protobuf::internal::ArenaImpl::thread_cache(void)::thread_cache_;

  return google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Get(v1);
}

void sub_267583258(_Unwind_Exception *a1)
{
  MEMORY[0x26D5F93A0](v1, 0x1000C4000313F17);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Get(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_2675A87B0;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

uint64_t google::protobuf::internal::SerialArena::Block::Pointer(google::protobuf::internal::SerialArena::Block *this, unint64_t a2)
{
  if (*(this + 2) < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: n <= size_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  return this + a2;
}

void sub_267583370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::SerialArena::New(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, void *a3, google::protobuf::internal::ArenaImpl *a4)
{
  v7 = *(this + 1);
  v8 = v7 + 72;
  if (v7 + 72 > *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v10 = google::protobuf::internal::SerialArena::Block::Pointer(this, v7);
  *(this + 1) = v8;
  *v10 = a3;
  v10[1] = a2;
  v10[2] = this;
  v10[5] = google::protobuf::internal::SerialArena::Block::Pointer(this, v8);
  v11 = google::protobuf::internal::SerialArena::Block::Pointer(this, *(this + 2));
  v10[3] = 0;
  v10[7] = 0;
  v10[8] = 0;
  v10[6] = v11;
  return v10;
}

void sub_267583478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ArenaImpl::NewBuffer(google::protobuf::internal::ArenaImpl *this, uint64_t a2, unint64_t a3)
{
  v5 = *(this + 4);
  if (a2 == -1)
  {
    if (v5)
    {
      v7 = *v5;
    }

    else
    {
      v7 = 256;
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0x2000;
    }

    if (v6 >= 2 * a2)
    {
      v7 = 2 * a2;
    }

    else
    {
      v7 = v6;
    }
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
    v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v5 = *(this + 4);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  if (v5)
  {
    result = (*(v5 + 16))(v9);
  }

  else
  {
    result = operator new(v9);
  }

  atomic_fetch_add_explicit(this + 2, v9, memory_order_relaxed);
  return result;
}

void sub_2675835AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::SerialArena::Block *google::protobuf::internal::SerialArena::NewBlock(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, google::protobuf::internal::ArenaImpl *a3, google::protobuf::internal::ArenaImpl *a4)
{
  if (this)
  {
    v7 = *(this + 2);
  }

  else
  {
    v7 = -1;
  }

  v8 = google::protobuf::internal::ArenaImpl::NewBuffer(a3, v7, a2);

  return google::protobuf::internal::SerialArena::Block::Block(v8, v9, this, 0, 0);
}

void *google::protobuf::internal::SerialArena::AddCleanupFallback(google::protobuf::internal::SerialArena *this, void *a2, void (*a3)(void *), google::protobuf::internal::ArenaImpl *a4)
{
  result = *(this + 3);
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v8 = 64;
      }

      else
      {
        v8 = 2 * *result;
      }
    }

    else
    {
      v8 = 8;
    }

    result = google::protobuf::internal::SerialArena::AllocateAligned(this, ((16 * v8 + 23) & 0xFF0), a3, a4);
    v9 = *(this + 3);
    *result = v8;
    result[1] = v9;
    *(this + 3) = result;
    *(this + 7) = result + 2;
    *(this + 8) = &result[2 * v8 + 2];
  }

  while (!v8);
  result[2] = a2;
  result[3] = a3;
  *(this + 7) = result + 4;
  return result;
}

unint64_t google::protobuf::internal::SerialArena::AllocateAligned(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, uint64_t a3, google::protobuf::internal::ArenaImpl *a4)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  result = *(this + 5);
  v8 = *(this + 6);
  if (v8 < result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v9 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (limit_) >= (ptr_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    result = *(this + 5);
    v8 = *(this + 6);
  }

  if (v8 - result < a2)
  {
    return google::protobuf::internal::SerialArena::AllocateAlignedFallback(this, a2, a3, a4);
  }

  *(this + 5) = a2 + result;
  return result;
}

void sub_2675837A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(atomic_ullong *this, google::protobuf::internal::SerialArena::Block *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*(v6 + 1) == this[3])
  {
    explicit = *(v6 + 2);
    goto LABEL_3;
  }

  v10 = google::protobuf::internal::ArenaImpl::thread_cache(v6);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && *(explicit + 1) == v10)
  {
LABEL_3:

    return google::protobuf::internal::SerialArena::AllocateAlignedAndAddCleanup(explicit, a2, a3, v7);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(this, a2, a3);
}

void *google::protobuf::internal::SerialArena::AllocateAlignedAndAddCleanup(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, void (*a3)(void *), google::protobuf::internal::ArenaImpl *a4)
{
  Aligned = google::protobuf::internal::SerialArena::AllocateAligned(this, a2, a3, a4);
  v8 = Aligned;
  v9 = *(this + 7);
  if (v9 == *(this + 8))
  {
    google::protobuf::internal::SerialArena::AddCleanupFallback(this, Aligned, a3, v7);
  }

  else
  {
    *v9 = Aligned;
    v9[1] = a3;
    *(this + 7) = v9 + 2;
  }

  return v8;
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(google::protobuf::internal::ArenaImpl *this, google::protobuf::internal::SerialArena::Block *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  SerialArenaFallback = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v6);

  return google::protobuf::internal::SerialArena::AllocateAlignedAndAddCleanup(SerialArenaFallback, a2, a3, v8);
}

unint64_t google::protobuf::internal::ArenaImpl::AllocateAlignedFallback(google::protobuf::internal::ArenaImpl *this, google::protobuf::internal::SerialArena::Block *a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  SerialArenaFallback = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v4);

  return google::protobuf::internal::SerialArena::AllocateAligned(SerialArenaFallback, a2, v6, v7);
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(atomic_ullong *this, google::protobuf::internal::SerialArena::Block *a2)
{
  v3 = this;
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 1) != a2)
    {
      explicit = *(explicit + 4);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v5 = google::protobuf::internal::ArenaImpl::NewBuffer(this, -1, 0x48uLL);
    *v5 = xmmword_2675A87C0;
    *(v5 + 2) = v6;
    this = google::protobuf::internal::SerialArena::New(v5, a2, v3, v7);
    explicit = this;
    v8 = *v3;
    this[4] = *v3;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(v3, &v9, this, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        this[4] = v9;
        atomic_compare_exchange_strong_explicit(v3, &v10, this, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  v12 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  *(v12 + 2) = explicit;
  v13 = v3[3];
  google::protobuf::internal::ArenaImpl::thread_cache(v12)[1] = v13;
  atomic_store(explicit, v3 + 1);
  return explicit;
}

uint64_t google::protobuf::internal::SerialArena::AllocateAlignedFallback(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, uint64_t a3, google::protobuf::internal::ArenaImpl *a4)
{
  v6 = *(this + 2);
  *(v6 + 1) = *(v6 + 2) - *(this + 6) + *(this + 5);
  v7 = google::protobuf::internal::SerialArena::NewBlock(v6, a2, *this, a4);
  *(this + 2) = v7;
  *(this + 5) = google::protobuf::internal::SerialArena::Block::Pointer(v7, v7[1]);
  *(this + 6) = google::protobuf::internal::SerialArena::Block::Pointer(*(this + 2), *(*(this + 2) + 16));

  return google::protobuf::internal::SerialArena::AllocateAligned(this, a2);
}

unint64_t google::protobuf::internal::ArenaImpl::AllocateAligned(atomic_ullong *this, google::protobuf::internal::SerialArena::Block *a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*(v4 + 1) == this[3])
  {
    explicit = *(v4 + 2);
    goto LABEL_3;
  }

  v9 = google::protobuf::internal::ArenaImpl::thread_cache(v4);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && *(explicit + 1) == v9)
  {
LABEL_3:

    return google::protobuf::internal::SerialArena::AllocateAligned(explicit, a2, v5, v6);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedFallback(this, a2);
}

google::protobuf::internal::SerialArena::Block *google::protobuf::internal::SerialArena::Block::Block(google::protobuf::internal::SerialArena::Block *this, uint64_t a2, unint64_t a3, unsigned int a4, int a5)
{
  v6 = 2;
  if (!a5)
  {
    v6 = 0;
  }

  *this = v6 | a4 | a3;
  *(this + 1) = 24;
  *(this + 2) = a2;
  if ((a3 & 3) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_267583BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x26D5F9390);
  }

  return result;
}

atomic_ullong *google::protobuf::internal::LazyString::Init(atomic_ullong *this)
{
  {
    google::protobuf::internal::LazyString::Init();
  }

  std::mutex::lock(&google::protobuf::internal::LazyString::Init(void)const::mu);
  explicit = atomic_load_explicit(this + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = this[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = *this;
    if (v3 >= 0x17)
    {
      operator new();
    }

    *(this + 23) = v3;
    if (v3)
    {
      memmove(this, v4, v3);
    }

    *(this + v3) = 0;
    atomic_store(this, this + 3);
    explicit = this;
  }

  std::mutex::unlock(&google::protobuf::internal::LazyString::Init(void)const::mu);
  return explicit;
}

void google::protobuf::internal::ArenaStringPtr::Set(google::protobuf::internal::ArenaStringPtr *this, uint64_t a2, __int128 *a3, google::protobuf::internal::ArenaImpl *a4)
{
  if (*this != a2)
  {
    google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v6 = *a3;
      v7 = *(a3 + 1);
    }

    JUMPOUT(0x26D5F90B0);
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    google::protobuf::internal::ArenaStringPtr::Set(a4);
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a4, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  v10 = AlignedAndAddCleanup;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(AlignedAndAddCleanup, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&AlignedAndAddCleanup->__r_.__value_.__l.__data_ = v11;
  }

  *this = v10;
}

{
  if (*this == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      v11 = a4;
      google::protobuf::internal::ArenaStringPtr::Set(a4);
      a4 = v11;
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a4, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
    v10 = *(a3 + 2);
    *AlignedAndAddCleanup = *a3;
    AlignedAndAddCleanup[2] = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *this = AlignedAndAddCleanup;
  }

  else
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void google::protobuf::internal::ArenaStringPtr::Set(google::protobuf::internal::ArenaStringPtr *a1, __int128 *a2, google::protobuf::internal::ArenaImpl *a3)
{
  google::protobuf::internal::ArenaStringPtr::Set(a1, &google::protobuf::internal::fixed_address_empty_string, a2, a3);
}

{
  google::protobuf::internal::ArenaStringPtr::Set(a1, &google::protobuf::internal::fixed_address_empty_string, a2, a3);
}

{
  google::protobuf::internal::ArenaStringPtr::Set(a1, 0, a2, a3);
}

uint64_t *google::protobuf::internal::ArenaStringPtr::Mutable(uint64_t **a1, google::protobuf::internal::ArenaImpl *a2)
{
  if (*a1 == &google::protobuf::internal::fixed_address_empty_string)
  {
    return google::protobuf::internal::ArenaStringPtr::MutableSlow<>(a1, a2);
  }

  else
  {
    return google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(a1);
  }
}

uint64_t *google::protobuf::internal::ArenaStringPtr::MutableSlow<>(uint64_t **a1, google::protobuf::internal::ArenaImpl *this)
{
  if (*a1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: IsDefault(default_value): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
    google::protobuf::internal::ArenaStringPtr::MutableSlow<>(this);
  }

  result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_26758407C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::ArenaStringPtr::Mutable(google::protobuf::internal::ArenaStringPtr *this, atomic_ullong *a2, google::protobuf::Arena *a3)
{
  if (*this)
  {
    return google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
  }

  else
  {
    return google::protobuf::internal::ArenaStringPtr::MutableSlow<google::protobuf::internal::LazyString>(this, a3, a2);
  }
}

std::string *google::protobuf::internal::ArenaStringPtr::MutableSlow<google::protobuf::internal::LazyString>(std::string **a1, google::protobuf::internal::ArenaImpl *this, atomic_ullong *a3)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: IsDefault(default_value): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  explicit = atomic_load_explicit(a3 + 3, memory_order_acquire);
  if (explicit)
  {
    if (this)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator new();
  }

  explicit = google::protobuf::internal::LazyString::Init(a3);
  if (!this)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(this + 24))
  {
    google::protobuf::internal::ArenaStringPtr::MutableSlow<>(this);
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  v9 = AlignedAndAddCleanup;
  if (*(explicit + 23) < 0)
  {
    std::string::__init_copy_ctor_external(AlignedAndAddCleanup, *explicit, explicit[1]);
  }

  else
  {
    v10 = *explicit;
    AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = explicit[2];
    *&AlignedAndAddCleanup->__r_.__value_.__l.__data_ = v10;
  }

  *a1 = v9;
  return v9;
}

std::string *google::protobuf::internal::ArenaStringPtr::ClearToDefault(std::string *result, atomic_ullong *a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    explicit = atomic_load_explicit(a2 + 3, memory_order_acquire);
    if (!explicit)
    {
      explicit = google::protobuf::internal::LazyString::Init(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_1_0(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void google::protobuf::internal::LazyString::Init()
{
  {
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::LazyString::Init(void)const::mu, &dword_26754E000);
  }
}

unint64_t google::protobuf::io::EpsCopyOutputStream::Flush(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  while (1)
  {
    v5 = *this;
    v4 = *(this + 1);
    if (!v4)
    {
      v10 = v5 - a2;
      v9 = v10 + 16;
      *(this + 1) = a2;
      if (((v10 + 16) & 0x80000000) == 0)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      break;
    }

    if (*(this + 56) == 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !had_error_: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    if (v6 >= 17)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: overrun <= kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    a2 = &google::protobuf::io::EpsCopyOutputStream::Next(this)[v6];
    if (*(this + 56))
    {
      return 0;
    }
  }

  memcpy(v4, this + 16, a2 - (this + 16));
  v11 = *this;
  *(this + 1) += a2 - (this + 16);
  v9 = v11 - a2;
  if (((v11 - a2) & 0x80000000) == 0)
  {
    return v9;
  }

LABEL_12:
  google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: s >= 0: ");
  google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  return v9;
}

void sub_2675844E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::io::EpsCopyOutputStream::Next(google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(this + 56) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !had_error_: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 6))
  {
    v3 = this + 16;
    v5 = *this;
    v4 = *(this + 1);
    if (v4)
    {
      memcpy(v4, this + 16, v5 - v3);
      v12 = 0;
      do
      {
        v13[0].__r_.__value_.__r.__words[0] = 0;
        if (((*(**(this + 6) + 16))(*(this + 6), v13, &v12) & 1) == 0)
        {
          *(this + 56) = 1;
          goto LABEL_14;
        }

        v6 = v12;
      }

      while (!v12);
      v5 = v13[0].__r_.__value_.__r.__words[0];
      if (v12 >= 17)
      {
        *v13[0].__r_.__value_.__l.__data_ = **this;
        *this = &v5[v6 - 16];
        *(this + 1) = 0;
        return v5;
      }

      if (v12 <= 0)
      {
        v10 = v13[0].__r_.__value_.__r.__words[0];
        google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: size > 0: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
        LODWORD(v6) = v12;
        v5 = v10;
      }

      *v3 = **this;
      v7 = &v3[v6];
    }

    else
    {
      *v3 = *v5;
      v7 = this + 32;
    }

    *this = v7;
    *(this + 1) = v5;
  }

  else
  {
    *(this + 56) = 1;
    v3 = this + 16;
LABEL_14:
    *this = this + 32;
  }

  return v3;
}

void sub_2675846AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::io::EpsCopyOutputStream::Trim(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  if ((*(this + 56) & 1) == 0)
  {
    v3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, a2);
    if (v3)
    {
      (*(**(this + 6) + 24))(*(this + 6), v3);
    }

    a2 = this + 16;
    *this = this + 16;
    *(this + 1) = this + 16;
  }

  return a2;
}

char *google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  while (*(this + 56) != 1)
  {
    v3 = &a2[-*this];
    if ((v3 & 0x80000000) != 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: overrun <= kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    a2 = &google::protobuf::io::EpsCopyOutputStream::Next(this)[v3];
    if (a2 < *this)
    {
      return a2;
    }
  }

  return this + 16;
}

void sub_267584830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(google::protobuf::io::EpsCopyOutputStream *this, char *a2, int a3, unsigned __int8 *a4)
{
  v4 = a4;
  for (i = google::protobuf::io::EpsCopyOutputStream::GetSize(this, a4); a3 > i; i = google::protobuf::io::EpsCopyOutputStream::GetSize(this, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t google::protobuf::io::EpsCopyOutputStream::GetSize(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 *a2)
{
  v3 = *this;
  if (*this + 16 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v3 = *this;
  }

  return v3 - a2 + 16;
}

void sub_267584978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(google::protobuf::io::EpsCopyOutputStream *this, void *a2, uint64_t a3, char *a4)
{
  if (google::protobuf::io::EpsCopyOutputStream::GetSize(this, a4) <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::Trim(this, a4);
    if (((*(**(this + 6) + 40))(*(this + 6), a2, a3) & 1) == 0)
    {
      *(this + 56) = 1;
      v8 = this + 16;
      *this = this + 32;
    }

    return v8;
  }

  if (*this - a4 >= a3)
  {
    memcpy(a4, a2, a3);
    return &a4[a3];
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, a3, a4);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(google::protobuf::io::EpsCopyOutputStream *this, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *this;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    v8 = *this;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ptr < end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v18, v9, v17);
}

void sub_267584C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(google::protobuf::io::EpsCopyOutputStream *this, void *a2, uint64_t a3, char *a4)
{
  if (*(this + 57) == 1)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(this, a2, a3, a4);
  }

  else if (*this - a4 < a3)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, a3, a4);
  }

  else
  {
    v6 = a3;
    memcpy(a4, a2, a3);
    return &a4[v6];
  }
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(google::protobuf::io::EpsCopyOutputStream *this, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *this;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    v8 = *this;
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v9) = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v8 <= v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ptr < end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (*this - v17 < v9)
  {
    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_267584E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::VerifyVersion(google::protobuf::internal *this, google::protobuf::internal *a2, const std::string::value_type *a3, const char *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2 > 3014000)
  {
    LODWORD(v22) = 3;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v24 = 76;
    memset(&v25, 0, sizeof(v25));
    std::string::append(&v25, "This program requires version ");
    google::protobuf::internal::VersionString(a2, &v19);
    if ((v21 & 0x80u) == 0)
    {
      v7 = &v19;
    }

    else
    {
      v7 = v19;
    }

    if ((v21 & 0x80u) == 0)
    {
      v8 = v21;
    }

    else
    {
      v8 = v20;
    }

    std::string::append(&v25, v7, v8);
    std::string::append(&v25, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v27 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, __str);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = v17;
    }

    std::string::append(&v25, p_p, v10);
    std::string::append(&v25, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v25, a3);
    std::string::append(&v25, ".)");
    google::protobuf::internal::LogMessage::Finish(&v22);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  if (this < 3014000)
  {
    LODWORD(v22) = 3;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v24 = 87;
    memset(&v25, 0, sizeof(v25));
    std::string::append(&v25, "This program was compiled against version ");
    google::protobuf::internal::VersionString(this, &v19);
    if ((v21 & 0x80u) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19;
    }

    if ((v21 & 0x80u) == 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v20;
    }

    std::string::append(&v25, v11, v12);
    std::string::append(&v25, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v27 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, __str);
    if ((v18 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }

    std::string::append(&v25, v13, v14);
    std::string::append(&v25, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v25, a3);
    std::string::append(&v25, ".)");
    google::protobuf::internal::LogMessage::Finish(&v22);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_267585154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::LogMessage::LogMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const std::string::value_type *a2)
{
  std::string::append(a1 + 1, a2);
  return a1;
}

{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

_BYTE *google::protobuf::internal::VersionString@<X0>(google::protobuf::internal *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", this / 1000000, this / 1000 % 1000, this % 1000);
  __str[127] = 0;
  result = std::string::basic_string[abi:ne200100]<0>(a2, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t google::protobuf::internal::DefaultLogHandler(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x277D85DF8];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

const char **google::protobuf::internal::LogMessage::Finish(const char **this)
{
  v1 = this;
  if (*this == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&google::protobuf::internal::log_silencer_count_);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *this;
  }

  this = google::protobuf::internal::log_handler_(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    google::protobuf::FatalException::FatalException(exception, v1[1], *(v1 + 4), v1 + 3);
  }

  return this;
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_2878A35F0;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x26D5F93A0);
}

uint64_t google::protobuf::FatalException::what(google::protobuf::FatalException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_2878A35F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t google::protobuf::internal::GeneratedExtensionFinder::Find(uint64_t a1, int a2, _OWORD *a3)
{
  {
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
      google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::~()::$_0>(*v2, (v2 + 8));
    }

    else if (*(this + 5))
    {
      v3 = 32 * *(this + 5);
      v4 = (v2 + 8);
      do
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(v4);
        v4 = (v4 + 32);
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      google::protobuf::internal::ExtensionSet::~ExtensionSet(v5 == 0, *(this + 2));
    }

    else if (v5)
    {
      MEMORY[0x26D5F9370](*(this + 2), 0x1062C802AB6010CLL);
    }
  }
}

void google::protobuf::internal::ExtensionSet::Extension::Clear(google::protobuf::internal::ExtensionSet::Extension *this)
{
  if (*(this + 9) == 1)
  {
    v2 = *(this + 8);
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v3->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v4 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
    if (v4 > 5)
    {
      if (v4 <= 8)
      {
LABEL_20:
        **this = 0;
        return;
      }

      if (v4 == 9)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*this);
      }

      else if (v4 == 10)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*this);
      }
    }

    else if (v4 > 2 || v4 == 1 || v4 == 2)
    {
      goto LABEL_20;
    }
  }

  else if ((*(this + 10) & 1) == 0)
  {
    v5 = *(this + 8);
    if ((v5 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v7 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v5];
    if (v7 == 10)
    {
      v9 = **this;
      if ((*(this + 10) & 0x10) != 0)
      {
        (*(v9 + 112))();
      }

      else
      {
        (*(v9 + 40))();
      }
    }

    else if (v7 == 9)
    {
      v8 = *this;
      if (*(*this + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }

    *(this + 10) = *(this + 10) & 0xF0 | 1;
  }
}

void sub_267585AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_267585CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddInt32(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<int>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_267585FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_2675861F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddInt64(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<long long>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<long long>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<long long>::elements(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<long long>::elements(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2675864F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetUInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_267586714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddUInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddUInt32(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned int>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<unsigned int>::elements(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<unsigned int>::elements(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_267586A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetUInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_267586C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddUInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddUInt64(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned long long>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<unsigned long long>::elements(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<unsigned long long>::elements(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_267586F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetFloat(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, float a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a4;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
}

void sub_267587164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddFloat(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, float a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddFloat(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<float>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<float>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<float>::elements(v23);
    *(result + 4 * v24) = a6;
  }

  else
  {
    result = google::protobuf::RepeatedField<float>::elements(v23);
    *(result + 4 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_267587474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetDouble(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, double a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a4;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
}

void sub_267587698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddDouble(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, double a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddDouble(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<double>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<double>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<double>::elements(v23);
    *(result + 8 * v24) = a6;
  }

  else
  {
    result = google::protobuf::RepeatedField<double>::elements(v23);
    *(result + 8 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2675879A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetBool(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, char a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_267587BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddBool(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddBool(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<BOOL>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<BOOL>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<BOOL>::elements(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<BOOL>::elements(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_267587ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, char a4, uint64_t a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
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
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
          }

          v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<float>>;
          goto LABEL_48;
        }
      }

      else
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
          }

          v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<BOOL>>;
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    switch(v12)
    {
      case 8:
        v13 = *a1;
        if (!v13)
        {
          goto LABEL_49;
        }

        if (*(v13 + 24))
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 9:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v15);
          }

          v16 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<std::string>>;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v15);
          }

          v16 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>;
LABEL_54:
          AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v15, 0x18, v16);
          AlignedAndAddCleanup[2] = 0;
          *AlignedAndAddCleanup = v15;
          AlignedAndAddCleanup[1] = 0;
          goto LABEL_56;
        }

        break;
      default:
        return *v10;
    }

    operator new();
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
        }

        v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned int>>;
        goto LABEL_48;
      }
    }

    else if (v12 == 4)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
        }

        v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned long long>>;
        goto LABEL_48;
      }
    }

    else
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
        }

        v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<double>>;
        goto LABEL_48;
      }
    }

LABEL_49:
    operator new();
  }

  if (v12 == 1)
  {
    v13 = *a1;
    if (!v13)
    {
      goto LABEL_49;
    }

    if (*(v13 + 24))
    {
LABEL_42:
      google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
    }

LABEL_43:
    v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>;
LABEL_48:
    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v13, 0x10, v14);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v13;
LABEL_56:
    *v10 = AlignedAndAddCleanup;
    return *v10;
  }

  if (v12 == 2)
  {
    v13 = *a1;
    if (v13)
    {
      if (*(v13 + 24))
      {
        google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
      }

      v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<long long>>;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

void google::protobuf::internal::ExtensionSet::SetEnum(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_2675883D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddEnum(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddInt32(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<int>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2675886E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableString(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      google::protobuf::internal::ArenaStringPtr::MutableSlow<>(v12);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v12, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = 0;
    AlignedAndAddCleanup[2] = 0;
    *v8 = AlignedAndAddCleanup;
  }

  else
  {
    if (*(v7 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v15] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_26758895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ExtensionSet::AddString(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    *(v8 + 9) = 1;
    *(v8 + 11) = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddString(v12);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v12, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<std::string>>);
    AlignedAndAddCleanup[2] = 0;
    *AlignedAndAddCleanup = v12;
    AlignedAndAddCleanup[1] = 0;
    *v8 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v15] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v18, v21 + 1);
    v19 = *(v18 + 16);
    v21 = *v19;
    goto LABEL_23;
  }

  v20 = *(v18 + 8);
  v21 = *v19;
  if (v20 < *v19)
  {
    *(v18 + 8) = v20 + 1;
    return *&v19[2 * v20 + 2];
  }

  if (v21 == *(v18 + 12))
  {
    goto LABEL_22;
  }

LABEL_23:
  *v19 = v21 + 1;
  v23 = *v18;
  if (!*v18)
  {
    operator new();
  }

  if (*(v23 + 24))
  {
    google::protobuf::internal::ArenaStringPtr::MutableSlow<>(*v18);
  }

  result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v23, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_267588CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    *(v10 + 9) = 0;
    *(v10 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *a1);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    if (*(v9 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v16] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v10 + 10);
    *(v10 + 10) = v19 & 0xF0;
    result = *v10;
    if ((v19 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

void sub_267588F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddMessage(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v14, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>);
    AlignedAndAddCleanup[2] = 0;
    *AlignedAndAddCleanup = v14;
    AlignedAndAddCleanup[1] = 0;
    *v10 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v17] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v19->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v10, v23);
  }

  return v23;
}

void sub_26758922C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::Clear(google::protobuf::internal::ExtensionSet *this)
{
  v2 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = v2 + 1;
    v5 = v7;

    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(v5, v6);
  }

  else if (*(this + 5))
  {
    v3 = 32 * *(this + 5);
    v4 = (v2 + 1);
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Clear(v4);
      v4 = (v4 + 32);
      v3 -= 32;
    }

    while (v3);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::GrowCapacity(uint64_t this, size_t __sz)
{
  v2 = *(this + 8);
  if (v2 <= 0x100 && v2 < __sz)
  {
    v4 = this;
    do
    {
      if (v2)
      {
        LOWORD(v2) = 4 * v2;
      }

      else
      {
        LOWORD(v2) = 1;
      }
    }

    while (v2 < __sz);
    v5 = *(this + 16);
    v6 = *(this + 10);
    v7 = *this;
    if (v2 < 0x101u)
    {
      v8 = 32 * v2;
      if (v7)
      {
        if (*(v7 + 24))
        {
          google::protobuf::internal::ExtensionSet::GrowCapacity(*this);
          v8 = 32 * v2;
        }

        this = google::protobuf::Arena::AllocateAlignedNoHook(v7, v8);
      }

      else
      {
        this = operator new[](32 * v2);
      }

      v9 = this;
      if (v6)
      {
        this = memmove(this, v5, 32 * v6);
      }
    }

    else
    {
      if (!v7)
      {
        operator new();
      }

      if (*(v7 + 24))
      {
        google::protobuf::internal::ExtensionSet::GrowCapacity(*this);
      }

      this = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v7, 0x18, google::protobuf::internal::arena_destruct_object<std::map<int,google::protobuf::internal::ExtensionSet::Extension>>);
      v9 = this;
      *(this + 8) = 0;
      v10 = (this + 8);
      *(this + 16) = 0;
      *this = this + 8;
      if (v6)
      {
        v11 = &v5[32 * v6];
        v12 = v5;
        do
        {
          v15 = *v12;
          v13 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = v13;
          this = std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_hint_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(v9, v10, &v15);
          v10 = this;
          v12 += 32;
        }

        while (v12 != v11);
      }
    }

    if (*v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v5 == 0;
    }

    if (!v14)
    {
      this = MEMORY[0x26D5F9370](v5, 0x1062C802AB6010CLL);
    }

    *(v4 + 8) = v2;
    *(v4 + 16) = v9;
    if (v2 >= 0x101u)
    {
      *(v4 + 10) = 0;
    }
  }

  return this;
}

uint64_t google::protobuf::internal::anonymous namespace::SizeOfUnion<google::protobuf::internal::ExtensionSet::KeyValue *,std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>>(char *a1, char *a2, void *a3, void *a4)
{
  v4 = 0;
  if (a1 != a2 && a3 != a4)
  {
    v4 = 0;
    do
    {
      v5 = *(a3 + 8);
      if (*a1 >= v5)
      {
        if (*a1 == v5)
        {
          a1 += 32;
          v6 = a3[1];
          if (v6)
          {
            do
            {
              a3 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = a3;
              a3 = a3[2];
            }

            while (*a3 != v7);
          }
        }

        else
        {
          v8 = a3[1];
          if (v8)
          {
            do
            {
              a3 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = a3;
              a3 = a3[2];
            }

            while (*a3 != v9);
          }
        }
      }

      else
      {
        a1 += 32;
      }

      ++v4;
    }

    while (a1 != a2 && a3 != a4);
  }

  if (a3 == a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v13 = *v12 == a3;
          a3 = v12;
        }

        while (!v13);
      }

      ++v10;
      a3 = v12;
    }

    while (v12 != a4);
  }

  return v4 + ((a2 - a1) >> 5) + v10;
}

void google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::internal::ExtensionSet::Extension *a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v11 = *(a3 + 8);
    if ((v11 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    v13 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v11];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          google::protobuf::internal::ExtensionSet::SetInt32(this, a2, *(a3 + 8), *a3, *(a3 + 2));
        }

        else if (v13 == 2)
        {
          google::protobuf::internal::ExtensionSet::SetInt64(this, a2, *(a3 + 8), *a3, *(a3 + 2));
        }
      }

      else if (v13 == 3)
      {
        google::protobuf::internal::ExtensionSet::SetUInt32(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      }

      else if (v13 == 4)
      {
        google::protobuf::internal::ExtensionSet::SetUInt64(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetDouble(this, a2, *(a3 + 8), *(a3 + 2), *a3);
      }

      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        google::protobuf::internal::ExtensionSet::SetFloat(this, a2, *(a3 + 8), *(a3 + 2), *a3);
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetBool(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      }

      return;
    }

    if (v13 == 8)
    {
      google::protobuf::internal::ExtensionSet::SetEnum(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      return;
    }

    if (v13 == 9)
    {
      v44 = *(a3 + 8);
      v45 = *a3;
      if (*(*a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v66, *v45, *(v45 + 1));
      }

      else
      {
        v46 = *v45;
        v66.__r_.__value_.__r.__words[2] = *(v45 + 2);
        *&v66.__r_.__value_.__l.__data_ = v46;
      }

      v54 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, v44, *(a3 + 2));
      v55 = v54;
      if (*(v54 + 23) < 0)
      {
        operator delete(*v54);
      }

      v56 = *&v66.__r_.__value_.__l.__data_;
      *(v55 + 16) = *(&v66.__r_.__value_.__l + 2);
      *v55 = v56;
      return;
    }

    if (v13 != 10)
    {
      return;
    }

    v24 = *(a3 + 2);
    v25 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v26 = v25;
    v25[2] = v24;
    if (v27)
    {
      *(v25 + 8) = *(a3 + 8);
      *(v25 + 11) = *(a3 + 11);
      *(v25 + 9) = 0;
      v28 = *(v25 + 10) & 0xF;
      if ((*(a3 + 10) & 0x10) != 0)
      {
        *(v25 + 10) = v28 | 0x10;
        v65 = (*(**a3 + 16))(*a3, *this);
        *v26 = v65;
        (*(*v65 + 104))(v65, *a3);
        goto LABEL_151;
      }

      *(v25 + 10) = v28;
      v29 = (*(**a3 + 32))(*a3, *this);
      *v26 = v29;
LABEL_118:
      (*(*v29 + 64))(v29, *a3);
LABEL_151:
      *(v26 + 10) &= 0xF0u;
      return;
    }

    if (*(v25 + 8) != *(a3 + 8))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1026);
      v47 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v47->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if (*(v26 + 11) != *(a3 + 11))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1027);
      v48 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v48->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if (*(v26 + 9) == 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1028);
      v49 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: !extension->is_repeated: ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v49->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    v50 = *(v26 + 10);
    v51 = *v26;
    v52 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v26 + 10) & 0x10) != 0)
      {
        (*(*v51 + 104))(*v26, v52);
        goto LABEL_151;
      }

      v52 = (*(*v52 + 24))(*a3, *v26);
      v53 = *v51;
    }

    else
    {
      v53 = *v51;
      if ((*(v26 + 10) & 0x10) != 0)
      {
        v29 = (*(v53 + 32))(*v26, v52);
        goto LABEL_118;
      }
    }

    (*(v53 + 64))(v51, v52);
    goto LABEL_151;
  }

  v6 = *(a3 + 2);
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  v10 = v9;
  v7[2] = v6;
  if (v9)
  {
    *(v7 + 8) = *(a3 + 8);
    *(v7 + 11) = *(a3 + 11);
    *(v7 + 9) = 1;
  }

  else
  {
    if (*(v7 + 8) != *(a3 + 8))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 931);
      v14 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if (*(v8 + 11) != *(a3 + 11))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 932);
      v15 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if ((*(v8 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 933);
      v16 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: extension->is_repeated: ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }
  }

  v17 = *(a3 + 8);
  if ((v17 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v18 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v67, &v18->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
  }

  v19 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v17];
  if (v19 <= 5)
  {
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        if (v10)
        {
          v37 = *this;
          if (!v37)
          {
            operator new();
          }

          if (*(v37 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddUInt32(v37);
          }

          AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v37, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned int>>);
          *AlignedAndAddCleanup = 0;
          *(AlignedAndAddCleanup + 1) = v37;
          *v8 = AlignedAndAddCleanup;
        }

        else
        {
          AlignedAndAddCleanup = *v8;
        }

        google::protobuf::RepeatedField<unsigned int>::MergeFrom(AlignedAndAddCleanup, *a3);
      }

      else if (v19 == 4)
      {
        if (v10)
        {
          v40 = *this;
          if (!v40)
          {
            operator new();
          }

          if (*(v40 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddUInt64(v40);
          }

          v41 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v40, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned long long>>);
          *v41 = 0;
          *(v41 + 1) = v40;
          *v8 = v41;
        }

        else
        {
          v41 = *v8;
        }

        google::protobuf::RepeatedField<unsigned long long>::MergeFrom(v41, *a3);
      }

      else
      {
        if (v10)
        {
          v20 = *this;
          if (!v20)
          {
            operator new();
          }

          if (*(v20 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddDouble(v20);
          }

          v21 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v20, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<double>>);
          *v21 = 0;
          *(v21 + 1) = v20;
          *v8 = v21;
        }

        else
        {
          v21 = *v8;
        }

        google::protobuf::RepeatedField<double>::MergeFrom(v21, *a3);
      }

      return;
    }

    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if (v10)
        {
          v30 = *this;
          if (!v30)
          {
            operator new();
          }

          if (*(v30 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddInt64(v30);
          }

          v31 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v30, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<long long>>);
          *v31 = 0;
          *(v31 + 1) = v30;
          *v8 = v31;
        }

        else
        {
          v31 = *v8;
        }

        google::protobuf::RepeatedField<long long>::MergeFrom(v31, *a3);
      }

      return;
    }

    if (v10)
    {
      v34 = *this;
      if (v34)
      {
        if (*(v34 + 24))
        {
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      goto LABEL_107;
    }

    goto LABEL_82;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      if (v10)
      {
        v35 = *this;
        if (!v35)
        {
          operator new();
        }

        if (*(v35 + 24))
        {
          google::protobuf::internal::ExtensionSet::AddFloat(v35);
        }

        v36 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v35, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<float>>);
        *v36 = 0;
        *(v36 + 1) = v35;
        *v8 = v36;
      }

      else
      {
        v36 = *v8;
      }

      google::protobuf::RepeatedField<float>::MergeFrom(v36, *a3);
    }

    else
    {
      if (v10)
      {
        v32 = *this;
        if (!v32)
        {
          operator new();
        }

        if (*(v32 + 24))
        {
          google::protobuf::internal::ExtensionSet::AddBool(v32);
        }

        v33 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v32, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<BOOL>>);
        *v33 = 0;
        *(v33 + 1) = v32;
        *v8 = v33;
      }

      else
      {
        v33 = *v8;
      }

      google::protobuf::RepeatedField<BOOL>::MergeFrom(v33, *a3);
    }
  }

  else
  {
    switch(v19)
    {
      case 8:
        if (v10)
        {
          v34 = *this;
          if (v34)
          {
            if (*(v34 + 24))
            {
LABEL_80:
              google::protobuf::internal::ExtensionSet::AddInt32(v34);
            }

LABEL_81:
            v39 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v34, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>);
            *v39 = 0;
            *(v39 + 1) = v34;
            *v8 = v39;
LABEL_108:
            google::protobuf::RepeatedField<int>::MergeFrom(v39, *a3);
            return;
          }

LABEL_107:
          operator new();
        }

LABEL_82:
        v39 = *v8;
        goto LABEL_108;
      case 9:
        if (v10)
        {
          v42 = *this;
          if (!v42)
          {
            operator new();
          }

          if (*(v42 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddString(v42);
          }

          v43 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v42, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<std::string>>);
          *(v43 + 2) = 0;
          *v43 = v42;
          *(v43 + 1) = 0;
          *v8 = v43;
        }

        else
        {
          v43 = *v8;
        }

        google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v43, *a3);
        break;
      case 10:
        if (v10)
        {
          v22 = *this;
          if (!*this)
          {
            operator new();
          }

          if (*(v22 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddMessage(*this);
          }

          v23 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v22, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>);
          *(v23 + 2) = 0;
          *v23 = v22;
          *(v23 + 1) = 0;
          *v8 = v23;
        }

        v57 = *a3;
        if (*(v57 + 8) >= 1)
        {
          v58 = 0;
          do
          {
            v59 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v57, v58);
            v60 = v59;
            v61 = *v8;
            v62 = *(*v8 + 2);
            if (!v62 || (v63 = v61[2], v63 >= *v62) || (v61[2] = v63 + 1, (v64 = *&v62[2 * v63 + 2]) == 0))
            {
              v64 = (*(*v59 + 32))(v59, *this);
              google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v8, v64);
            }

            (*(*v64 + 64))(v64, v60);
            ++v58;
          }

          while (v58 < *(v57 + 8));
        }

        break;
    }
  }
}

void google::protobuf::internal::ExtensionSet::Swap(google::protobuf::internal::ExtensionSet *this, google::protobuf::internal::ExtensionSet *a2)
{
  if (*this == *a2)
  {
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    google::protobuf::internal::ExtensionSet::MergeFrom(&v7, a2);
    google::protobuf::internal::ExtensionSet::Clear(a2);
    google::protobuf::internal::ExtensionSet::MergeFrom(a2, this);
    google::protobuf::internal::ExtensionSet::Clear(this);
    google::protobuf::internal::ExtensionSet::MergeFrom(this, &v7);
    google::protobuf::internal::ExtensionSet::~ExtensionSet(&v7);
  }
}

void sub_26758A2BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::ExtensionSet::Insert(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = *(this + 4);
  v4 = *(this + 2);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(v4, &v14) + 5;
  }

  else
  {
    v6 = *(this + 5);
    v7 = &v4[32 * v6];
    if (*(this + 5))
    {
      v8 = *(this + 5);
      do
      {
        v9 = v8 >> 1;
        v10 = &v4[32 * (v8 >> 1)];
        v12 = *v10;
        v11 = (v10 + 8);
        v8 += ~(v8 >> 1);
        if (v12 < a2)
        {
          v4 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    if (v4 == v7)
    {
      if (v6 < v3)
      {
LABEL_15:
        *(this + 5) = v6 + 1;
        *v4 = a2;
        *(v4 + 1) = 0;
        result = (v4 + 8);
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v4 == a2)
      {
        return (v4 + 8);
      }

      if (v6 < v3)
      {
        memmove(v4 + 32, v4, v7 - v4);
        LOWORD(v6) = *(this + 5);
        goto LABEL_15;
      }
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v6 + 1);
    return google::protobuf::internal::ExtensionSet::Insert(this, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::IsInitialized(google::protobuf::internal::ExtensionSet *this)
{
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v8 = *v1;
    v7 = v1 + 1;
    v6 = v8;
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      do
      {
        IsInitialized = google::protobuf::internal::ExtensionSet::Extension::IsInitialized((v6 + 5));
        if (!IsInitialized)
        {
          break;
        }

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

        v6 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    while (1)
    {
      v3 = *(this + 2) + 32 * *(this + 5);
      IsInitialized = v1 == v3;
      if (v1 == v3)
      {
        break;
      }

      v5 = (v1 + 1);
      if (!google::protobuf::internal::ExtensionSet::Extension::IsInitialized(v5))
      {
        break;
      }

      v1 = (v5 + 24);
      if (*(this + 4) > 0x100u)
      {
        google::protobuf::internal::ExtensionSet::IsInitialized();
      }
    }
  }

  return IsInitialized;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::IsInitialized(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v2 = *(this + 8);
  if ((v2 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v3 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2] != 10)
  {
    return 1;
  }

  if (*(this + 9) == 1)
  {
    v4 = *this;
    if (*(*this + 8) >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v4, v5);
        if (((*(*v6 + 48))(v6) & 1) == 0)
        {
          break;
        }

        ++v5;
        v4 = *this;
        if (v5 >= *(*this + 8))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (*(this + 10))
  {
    return 1;
  }

  v8 = **this;
  if ((*(this + 10) & 0x10) != 0)
  {
    return ((*(v8 + 72))() & 1) != 0;
  }

  result = (*(v8 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_26758A624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = *a5;
    if ((v10 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    v12 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[v10];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v12 > 5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 82);
        v13 = google::protobuf::internal::LogMessage::operator<<(v15, "can't reach here.");
        google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      }

      else
      {
        result = 1;
        if (((1 << v12) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v12 == a2;
  }

  return result;
}

void sub_26758A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *a1, unint64_t a2, google::protobuf::internal *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_2878A3628;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(a1, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo<std::string>(a1, v11, v15, v14, a5, a3, a6);
  }

  if (*a5)
  {
    v13 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v13 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a5);
  }

  return google::protobuf::internal::UnknownFieldParse(v9, v13, a3, a6);
}

char *google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo<std::string>(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, unint64_t *a5, google::protobuf::internal *this, int32x2_t *a7)
{
  v8 = this;
  v11 = a2;
  v12 = a1;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v54 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 1, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedDoubleParser(v54, v8, a7, v55);
        break;
      case 2:
        v56 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 2, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFloatParser(v56, v8, a7, v57);
        break;
      case 3:
        v40 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 3, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt64Parser(v40, v8, a7, v41);
        break;
      case 4:
        v48 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 4, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt64Parser(v48, v8, a7, v49);
        break;
      case 5:
        v30 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 5, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt32Parser(v30, v8, a7, v31);
        break;
      case 6:
        v64 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 6, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed64Parser(v64, v8, a7, v65);
        break;
      case 7:
        v73 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 7, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed32Parser(v73, v8, a7, v74);
        break;
      case 8:
        v51 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 8, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedBoolParser(v51, v8, a7, v52);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        google::protobuf::internal::LogMessage::LogMessage(&v105, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/extension_set_inl.h", 79);
        v13 = google::protobuf::internal::LogMessage::operator<<(&v105, "Non-primitive types can't be packed.");
        google::protobuf::internal::LogFinisher::operator=(&v104, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v105.__r_.__value_.__l.__data_);
        goto LABEL_170;
      case 0xD:
        v32 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 13, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt32Parser(v32, v8, a7, v33);
        break;
      case 0xE:
        v105.__r_.__value_.__r.__words[0] = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v105.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v106 = a5;
        v107 = v11;
        v8 = google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(a7, v8, &v105);
        goto LABEL_170;
      case 0xF:
        v20 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 15, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed32Parser(v20, v8, a7, v21);
        break;
      case 0x10:
        v43 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 16, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed64Parser(v43, v8, a7, v44);
        break;
      case 0x11:
        v16 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 17, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt32Parser(v16, v8, a7, v17);
        break;
      case 0x12:
        v60 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(a1, a2, 18, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt64Parser(v60, v8, a7, v61);
        break;
      default:
        goto LABEL_170;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = (this + 8);
        v58 = *this;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(a1, a2, 1, *(a4 + 2), *(a4 + 24), v58);
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetDouble(a1, a2, 1, *(a4 + 24), v58);
        }

        goto LABEL_170;
      case 2:
        v8 = (this + 4);
        v59 = *this;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(a1, a2, 2, *(a4 + 2), *(a4 + 24), v59);
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetFloat(a1, a2, 2, *(a4 + 24), v59);
        }

        goto LABEL_170;
      case 3:
        v42 = *this;
        if ((v42 & 0x8000000000000000) != 0)
        {
          v42 = (*(this + 1) << 7) + v42 - 128;
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, v42);
            if (!v8)
            {
              goto LABEL_170;
            }

            v42 = v100;
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v47 = 3;
          goto LABEL_158;
        }

        v84 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v85 = 3;
        goto LABEL_160;
      case 4:
        v50 = *this;
        if ((v50 & 0x8000000000000000) != 0)
        {
          v50 = (*(this + 1) << 7) + v50 - 128;
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, v50);
            if (!v8)
            {
              goto LABEL_170;
            }

            v50 = v101;
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v66 = *(a4 + 2);
          v67 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v68 = 4;
          goto LABEL_148;
        }

        v86 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v87 = 4;
        goto LABEL_150;
      case 5:
        v35 = *this;
        if ((v35 & 0x8000000000000000) != 0)
        {
          v35 = (*(this + 1) << 7) + v35 - 128;
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, v35);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v35) = v99;
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v25 = 5;
          v96 = v35;
          goto LABEL_136;
        }

        v82 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v83 = 5;
        v97 = v35;
        goto LABEL_138;
      case 6:
        v8 = (this + 8);
        v50 = *this;
        if (*(a4 + 1) == 1)
        {
          v66 = *(a4 + 2);
          v67 = *(a4 + 24);
          v68 = 6;
LABEL_148:
          google::protobuf::internal::ExtensionSet::AddUInt64(a1, a2, v68, v66, v50, v67);
        }

        else
        {
          v86 = *(a4 + 24);
          v87 = 6;
LABEL_150:
          google::protobuf::internal::ExtensionSet::SetUInt64(a1, a2, v87, v50, v86);
        }

        goto LABEL_170;
      case 7:
        v8 = (this + 4);
        v75 = *this;
        if (*(a4 + 1) == 1)
        {
          v76 = *(a4 + 2);
          v77 = *(a4 + 24);
          v78 = 7;
          v79 = v75;
          goto LABEL_129;
        }

        v92 = *(a4 + 24);
        v93 = 7;
        v94 = *this;
        goto LABEL_131;
      case 8:
        v53 = *this;
        if ((v53 & 0x8000000000000000) != 0)
        {
          v53 = (*(this + 1) << 7) + v53 - 128;
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, v53);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddBool(v12, v11, 8, *(a4 + 2), v53 != 0, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetBool(v12, v11, 8, v53 != 0, *(a4 + 24));
        }

        goto LABEL_170;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v36 = google::protobuf::internal::ExtensionSet::AddString(a1, a2, 9, v15);
        }

        else
        {
          v36 = google::protobuf::internal::ExtensionSet::MutableString(a1, a2, 9, v15);
        }

        v37 = v36;
        v38 = *v8;
        if (*v8 < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback(v8, *v8);
          if (!SizeFallback)
          {
LABEL_101:
            v8 = 0;
            goto LABEL_170;
          }

          v39 = SizeFallback;
          v38 = v81;
        }

        else
        {
          v39 = v8 + 1;
        }

        return google::protobuf::internal::EpsCopyInputStream::ReadString(a7, v39, v38, v37);
      case 0xA:
        v69 = *(a4 + 1);
        v70 = *(a4 + 8);
        v71 = *(a4 + 24);
        if (v69 == 1)
        {
          v72 = google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 10, v70, v71);
        }

        else
        {
          v72 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 10, v70, v71);
        }

        v88 = a7[11].i32[0];
        v89 = __OFSUB__(v88--, 1);
        a7[11].i32[0] = v88;
        if (v88 < 0 != v89)
        {
          goto LABEL_101;
        }

        ++a7[11].i32[1];
        v90 = (*(*v72 + 88))(v72, v8, a7);
        a7[11] = vadd_s32(a7[11], 0xFFFFFFFF00000001);
        v91 = a7[10].i32[0];
        a7[10].i32[0] = 0;
        if (v91 == ((8 * v11) | 3))
        {
          v8 = v90;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_170;
      case 0xB:
        v26 = *(a4 + 1);
        v27 = *(a4 + 8);
        v28 = *(a4 + 24);
        if (v26 == 1)
        {
          v29 = google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 11, v27, v28);
        }

        else
        {
          v29 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 11, v27, v28);
        }

        return google::protobuf::internal::ParseContext::ParseMessage(a7, v29, v8);
      case 0xD:
        v34 = *this;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v34 = (*(this + 1) << 7) + v34 - 128;
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, v34);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v34) = v98;
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v76 = *(a4 + 2);
          v77 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v78 = 13;
          v79 = v34;
LABEL_129:
          google::protobuf::internal::ExtensionSet::AddUInt32(a1, a2, v78, v76, v79, v77);
        }

        else
        {
          v92 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v93 = 13;
          v94 = v34;
LABEL_131:
          google::protobuf::internal::ExtensionSet::SetUInt32(a1, a2, v93, v94, v92);
        }

        goto LABEL_170;
      case 0xE:
        v63 = *this;
        if ((v63 & 0x8000000000000000) != 0)
        {
          v95 = (*(this + 1) << 7) + v63;
          v63 = (v95 - 128);
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, (v95 - 128));
            if (!v8)
            {
              goto LABEL_170;
            }

            v63 = v102;
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        if ((*(a4 + 8))(*(a4 + 16), v63))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(v12, v11, 14, *(a4 + 2), v63, *(a4 + 24));
          }

          else
          {
            google::protobuf::internal::ExtensionSet::SetEnum(v12, v11, 14, v63, *(a4 + 24));
          }
        }

        else
        {
          if (*a5)
          {
            v103 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v103 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a5);
          }

          google::protobuf::internal::WriteVarint(v11, v63, v103);
        }

        goto LABEL_170;
      case 0xF:
        v8 = (this + 4);
        v22 = *this;
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          v25 = 15;
          goto LABEL_122;
        }

        v82 = *(a4 + 24);
        v83 = 15;
        goto LABEL_124;
      case 0x10:
        v8 = (this + 8);
        v42 = *this;
        if (*(a4 + 1) == 1)
        {
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          v47 = 16;
          goto LABEL_158;
        }

        v84 = *(a4 + 24);
        v85 = 16;
        goto LABEL_160;
      case 0x11:
        v19 = *this;
        if ((v19 & 0x8000000000000000) != 0)
        {
          v19 = (*(this + 1) << 7) + v19 - 128;
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, v19);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        v22 = -(v19 & 1) ^ (v19 >> 1);
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v25 = 17;
LABEL_122:
          v96 = v22;
LABEL_136:
          google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, v25, v23, v96, v24);
        }

        else
        {
          v82 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v83 = 17;
LABEL_124:
          v97 = v22;
LABEL_138:
          google::protobuf::internal::ExtensionSet::SetInt32(a1, a2, v83, v97, v82);
        }

        goto LABEL_170;
      case 0x12:
        v62 = *this;
        if ((v62 & 0x8000000000000000) != 0)
        {
          v62 = (*(this + 1) << 7) + v62 - 128;
          if (*(this + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(this, v62);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = (this + 2);
          }
        }

        else
        {
          v8 = (this + 1);
        }

        v42 = -(v62 & 1) ^ (v62 >> 1);
        if (*(a4 + 1) == 1)
        {
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v47 = 18;
LABEL_158:
          google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, v47, v45, v42, v46);
        }

        else
        {
          v84 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v85 = 18;
LABEL_160:
          google::protobuf::internal::ExtensionSet::SetInt64(a1, a2, v85, v42, v84);
        }

LABEL_170:
        result = v8;
        break;
      default:
        goto LABEL_170;
    }
  }

  return result;
}

void sub_26758B530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::_InternalSerialize(google::protobuf::internal::ExtensionSet *this, signed int a2, int a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *a5)
{
  v7 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v18 = *(v7 + 1);
    v17 = v7 + 2;
    v16 = v18;
    if (v18)
    {
      v19 = v17;
      do
      {
        if (*(v16 + 32) >= a2)
        {
          v19 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < a2));
      }

      while (v16);
      if (v19 != v17)
      {
        do
        {
          v20 = *(v19 + 8);
          if (v20 >= a3)
          {
            break;
          }

          a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v19 + 5, v20, a4, a5);
          v21 = v19[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v19[2];
              v23 = *v22 == v19;
              v19 = v22;
            }

            while (!v23);
          }

          v19 = v22;
        }

        while (v22 != v17);
      }
    }
  }

  else
  {
    v8 = *(this + 5);
    v9 = &v7[8 * v8];
    while (v8)
    {
      v10 = v8 >> 1;
      v11 = &v7[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v7 != v9)
    {
      v14 = *v7;
      if (v14 >= a3)
      {
        break;
      }

      a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v7 + 1, v14, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(int **this, uint64_t a2, char *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a3;
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      if (*(this + 3))
      {
        if (*a4 <= a3)
        {
          v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v8 = 8 * a2;
        if ((8 * a2) > 0x7F)
        {
          *v5 = v8 | 0x82;
          v33 = v8 >> 7;
          if (v8 >> 14)
          {
            v9 = v5 + 2;
            do
            {
              *(v9 - 1) = v33 | 0x80;
              v34 = v33 >> 7;
              ++v9;
              v35 = v33 >> 14;
              v33 >>= 7;
            }

            while (v35);
            *(v9 - 1) = v34;
          }

          else
          {
            v5[1] = v33;
            v9 = v5 + 2;
          }
        }

        else
        {
          *v5 = v8 | 2;
          v9 = v5 + 1;
        }

        v36 = *(this + 3);
        if (v36 > 0x7F)
        {
          *v9 = v36 | 0x80;
          v37 = v36 >> 7;
          if (v36 >> 14)
          {
            v5 = v9 + 2;
            do
            {
              *(v5 - 1) = v37 | 0x80;
              v38 = v37 >> 7;
              ++v5;
              v39 = v37 >> 14;
              v37 >>= 7;
            }

            while (v39);
            *(v5 - 1) = v38;
          }

          else
          {
            v9[1] = v37;
            v5 = v9 + 2;
          }
        }

        else
        {
          *v9 = v36;
          v5 = v9 + 1;
        }

        v40 = *(this + 8);
        if ((v40 - 19) <= 0xFFFFFFED)
        {
          google::protobuf::internal::LogMessage::LogMessage(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
          v41 = google::protobuf::internal::LogMessage::operator<<(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
          google::protobuf::internal::LogFinisher::operator=(&v426, &v41->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v427[0].__r_.__value_.__l.__data_);
        }

        switch(v40)
        {
          case 1:
            v343 = *this;
            if (**this >= 1)
            {
              v344 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v343 = *this;
                }

                *v5 = *google::protobuf::RepeatedField<double>::Get(v343, v344);
                v5 += 8;
                ++v344;
                v343 = *this;
              }

              while (v344 < **this);
            }

            break;
          case 2:
            v345 = *this;
            if (**this >= 1)
            {
              v346 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v345 = *this;
                }

                *v5 = *google::protobuf::RepeatedField<float>::Get(v345, v346);
                v5 += 4;
                ++v346;
                v345 = *this;
              }

              while (v346 < **this);
            }

            break;
          case 3:
            v327 = *this;
            if (**this >= 1)
            {
              v328 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v327 = *this;
                }

                v329 = *google::protobuf::RepeatedField<long long>::Get(v327, v328);
                if (v329 > 0x7F)
                {
                  *v5 = v329 | 0x80;
                  v330 = v329 >> 7;
                  if (v329 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v330 | 0x80;
                      v331 = v330 >> 7;
                      ++v5;
                      v332 = v330 >> 14;
                      v330 >>= 7;
                    }

                    while (v332);
                    *(v5 - 1) = v331;
                  }

                  else
                  {
                    v5[1] = v330;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v329;
                }

                ++v328;
                v327 = *this;
              }

              while (v328 < **this);
            }

            break;
          case 4:
            v335 = *this;
            if (**this >= 1)
            {
              v336 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v335 = *this;
                }

                v337 = *google::protobuf::RepeatedField<unsigned long long>::Get(v335, v336);
                if (v337 > 0x7F)
                {
                  *v5 = v337 | 0x80;
                  v338 = v337 >> 7;
                  if (v337 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v338 | 0x80;
                      v339 = v338 >> 7;
                      ++v5;
                      v340 = v338 >> 14;
                      v338 >>= 7;
                    }

                    while (v340);
                    *(v5 - 1) = v339;
                  }

                  else
                  {
                    v5[1] = v338;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v337;
                }

                ++v336;
                v335 = *this;
              }

              while (v336 < **this);
            }

            break;
          case 5:
            v315 = *this;
            if (**this >= 1)
            {
              v316 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v315 = *this;
                }

                v317 = *google::protobuf::RepeatedField<int>::Get(v315, v316);
                if (v317 > 0x7F)
                {
                  *v5 = v317 | 0x80;
                  v318 = v317 >> 7;
                  if (v317 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v318 | 0x80;
                      v319 = v318 >> 7;
                      ++v5;
                      v320 = v318 >> 14;
                      v318 >>= 7;
                    }

                    while (v320);
                    *(v5 - 1) = v319;
                  }

                  else
                  {
                    v5[1] = v318;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v317;
                }

                ++v316;
                v315 = *this;
              }

              while (v316 < **this);
            }

            break;
          case 6:
            v360 = *this;
            if (**this >= 1)
            {
              v361 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v360 = *this;
                }

                *v5 = *google::protobuf::RepeatedField<unsigned long long>::Get(v360, v361);
                v5 += 8;
                ++v361;
                v360 = *this;
              }

              while (v361 < **this);
            }

            break;
          case 7:
            v362 = *this;
            if (**this >= 1)
            {
              v363 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v362 = *this;
                }

                *v5 = *google::protobuf::RepeatedField<unsigned int>::Get(v362, v363);
                v5 += 4;
                ++v363;
                v362 = *this;
              }

              while (v363 < **this);
            }

            break;
          case 8:
            v341 = *this;
            if (**this >= 1)
            {
              v342 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v341 = *this;
                }

                *v5++ = *google::protobuf::RepeatedField<BOOL>::Get(v341, v342++);
                v341 = *this;
              }

              while (v342 < **this);
            }

            break;
          case 9:
          case 10:
          case 11:
          case 12:
            google::protobuf::internal::LogMessage::LogMessage(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1966);
            v42 = google::protobuf::internal::LogMessage::operator<<(v427, "Non-primitive types can't be packed.");
            google::protobuf::internal::LogFinisher::operator=(&v426, &v42->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v427[0].__r_.__value_.__l.__data_);
            break;
          case 13:
            v321 = *this;
            if (**this >= 1)
            {
              v322 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v321 = *this;
                }

                v323 = *google::protobuf::RepeatedField<unsigned int>::Get(v321, v322);
                if (v323 > 0x7F)
                {
                  *v5 = v323 | 0x80;
                  v324 = v323 >> 7;
                  if (v323 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v324 | 0x80;
                      v325 = v324 >> 7;
                      ++v5;
                      v326 = v324 >> 14;
                      v324 >>= 7;
                    }

                    while (v326);
                    *(v5 - 1) = v325;
                  }

                  else
                  {
                    v5[1] = v324;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v323;
                }

                ++v322;
                v321 = *this;
              }

              while (v322 < **this);
            }

            break;
          case 14:
            v354 = *this;
            if (**this >= 1)
            {
              v355 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v354 = *this;
                }

                v356 = *google::protobuf::RepeatedField<int>::Get(v354, v355);
                if (v356 > 0x7F)
                {
                  *v5 = v356 | 0x80;
                  v357 = v356 >> 7;
                  if (v356 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v357 | 0x80;
                      v358 = v357 >> 7;
                      ++v5;
                      v359 = v357 >> 14;
                      v357 >>= 7;
                    }

                    while (v359);
                    *(v5 - 1) = v358;
                  }

                  else
                  {
                    v5[1] = v357;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v356;
                }

                ++v355;
                v354 = *this;
              }

              while (v355 < **this);
            }

            break;
          case 15:
            v313 = *this;
            if (**this >= 1)
            {
              v314 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v313 = *this;
                }

                *v5 = *google::protobuf::RepeatedField<int>::Get(v313, v314);
                v5 += 4;
                ++v314;
                v313 = *this;
              }

              while (v314 < **this);
            }

            break;
          case 16:
            v333 = *this;
            if (**this >= 1)
            {
              v334 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v333 = *this;
                }

                *v5 = *google::protobuf::RepeatedField<long long>::Get(v333, v334);
                v5 += 8;
                ++v334;
                v333 = *this;
              }

              while (v334 < **this);
            }

            break;
          case 17:
            v306 = *this;
            if (**this >= 1)
            {
              v307 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v306 = *this;
                }

                v308 = google::protobuf::RepeatedField<int>::Get(v306, v307);
                v309 = (2 * *v308) ^ (*v308 >> 31);
                if (v309 > 0x7F)
                {
                  *v5 = v309 | 0x80;
                  v310 = v309 >> 7;
                  if (v309 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v310 | 0x80;
                      v311 = v310 >> 7;
                      ++v5;
                      v312 = v310 >> 14;
                      v310 >>= 7;
                    }

                    while (v312);
                    *(v5 - 1) = v311;
                  }

                  else
                  {
                    v5[1] = v310;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v309;
                }

                ++v307;
                v306 = *this;
              }

              while (v307 < **this);
            }

            break;
          case 18:
            v347 = *this;
            if (**this >= 1)
            {
              v348 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v347 = *this;
                }

                v349 = google::protobuf::RepeatedField<long long>::Get(v347, v348);
                v350 = (2 * *v349) ^ (*v349 >> 63);
                if (v350 > 0x7F)
                {
                  *v5 = v350 | 0x80;
                  v351 = v350 >> 7;
                  if (v350 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v351 | 0x80;
                      v352 = v351 >> 7;
                      ++v5;
                      v353 = v351 >> 14;
                      v351 >>= 7;
                    }

                    while (v353);
                    *(v5 - 1) = v352;
                  }

                  else
                  {
                    v5[1] = v351;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v350;
                }

                ++v348;
                v347 = *this;
              }

              while (v348 < **this);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      v11 = *(this + 8);
      if ((v11 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = google::protobuf::internal::LogMessage::operator<<(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v426, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v427[0].__r_.__value_.__l.__data_);
      }

      switch(v11)
      {
        case 1:
          v13 = *this;
          if (**this >= 1)
          {
            v14 = 0;
            v15 = 8 * a2;
            v16 = (8 * a2) | 0x81;
            v17 = (a2 >> 4) & 0x1FFFFFF;
            v18 = (8 * a2) | 1;
            v19 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v13 = *this;
              }

              v20 = *google::protobuf::RepeatedField<double>::Get(v13, v14);
              if (v15 > 0x7F)
              {
                *v5 = v16;
                if (v15 >= 0x4000)
                {
                  v21 = v5 + 2;
                  v22 = v17;
                  do
                  {
                    *(v21 - 1) = v22 | 0x80;
                    v23 = v22 >> 7;
                    v21 = (v21 + 1);
                    v24 = v22 >> 14;
                    v22 >>= 7;
                  }

                  while (v24);
                  *(v21 - 1) = v23;
                }

                else
                {
                  v5[1] = v19;
                  v21 = v5 + 2;
                }
              }

              else
              {
                *v5 = v18;
                v21 = v5 + 1;
              }

              *v21 = v20;
              v5 = (v21 + 1);
              ++v14;
              v13 = *this;
            }

            while (v14 < **this);
          }

          break;
        case 2:
          v205 = *this;
          if (**this >= 1)
          {
            v206 = 0;
            v207 = 8 * a2;
            v208 = (a2 >> 4) & 0x1FFFFFF;
            v209 = (8 * a2) | 5;
            v210 = (8 * a2) >> 7;
            v211 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v205 = *this;
              }

              v212 = *google::protobuf::RepeatedField<float>::Get(v205, v206);
              if (v207 > 0x7F)
              {
                *v5 = v211;
                if (v207 >= 0x4000)
                {
                  v213 = v5 + 2;
                  v214 = v208;
                  do
                  {
                    *(v213 - 1) = v214 | 0x80;
                    v215 = v214 >> 7;
                    v213 = (v213 + 1);
                    v216 = v214 >> 14;
                    v214 >>= 7;
                  }

                  while (v216);
                  *(v213 - 1) = v215;
                }

                else
                {
                  v5[1] = v210;
                  v213 = v5 + 2;
                }
              }

              else
              {
                *v5 = v209;
                v213 = v5 + 1;
              }

              *v213 = v212;
              v5 = (v213 + 1);
              ++v206;
              v205 = *this;
            }

            while (v206 < **this);
          }

          break;
        case 3:
          v153 = *this;
          if (**this >= 1)
          {
            v154 = 0;
            v155 = 8 * a2;
            v156 = (8 * a2) | 0x80;
            v157 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v153 = *this;
              }

              v158 = *google::protobuf::RepeatedField<long long>::Get(v153, v154);
              if (v155 > 0x7F)
              {
                *v5 = v156;
                if (v155 >= 0x4000)
                {
                  v159 = v5 + 2;
                  v160 = v157;
                  do
                  {
                    *(v159 - 1) = v160 | 0x80;
                    v161 = v160 >> 7;
                    ++v159;
                    v162 = v160 >> 14;
                    v160 >>= 7;
                  }

                  while (v162);
                  *(v159 - 1) = v161;
                }

                else
                {
                  v5[1] = v155 >> 7;
                  v159 = v5 + 2;
                }
              }

              else
              {
                v159 = v5 + 1;
                *v5 = v155;
              }

              if (v158 > 0x7F)
              {
                *v159 = v158 | 0x80;
                v163 = v158 >> 7;
                if (v158 >> 14)
                {
                  v5 = v159 + 2;
                  do
                  {
                    *(v5 - 1) = v163 | 0x80;
                    v164 = v163 >> 7;
                    ++v5;
                    v165 = v163 >> 14;
                    v163 >>= 7;
                  }

                  while (v165);
                  *(v5 - 1) = v164;
                }

                else
                {
                  v159[1] = v163;
                  v5 = v159 + 2;
                }
              }

              else
              {
                *v159 = v158;
                v5 = v159 + 1;
              }

              ++v154;
              v153 = *this;
            }

            while (v154 < **this);
          }

          break;
        case 4:
          v180 = *this;
          if (**this >= 1)
          {
            v181 = 0;
            v182 = 8 * a2;
            v183 = (8 * a2) | 0x80;
            v184 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v180 = *this;
              }

              v185 = *google::protobuf::RepeatedField<unsigned long long>::Get(v180, v181);
              if (v182 > 0x7F)
              {
                *v5 = v183;
                if (v182 >= 0x4000)
                {
                  v186 = v5 + 2;
                  v187 = v184;
                  do
                  {
                    *(v186 - 1) = v187 | 0x80;
                    v188 = v187 >> 7;
                    ++v186;
                    v189 = v187 >> 14;
                    v187 >>= 7;
                  }

                  while (v189);
                  *(v186 - 1) = v188;
                }

                else
                {
                  v5[1] = v182 >> 7;
                  v186 = v5 + 2;
                }
              }

              else
              {
                v186 = v5 + 1;
                *v5 = v182;
              }

              if (v185 > 0x7F)
              {
                *v186 = v185 | 0x80;
                v190 = v185 >> 7;
                if (v185 >> 14)
                {
                  v5 = v186 + 2;
                  do
                  {
                    *(v5 - 1) = v190 | 0x80;
                    v191 = v190 >> 7;
                    ++v5;
                    v192 = v190 >> 14;
                    v190 >>= 7;
                  }

                  while (v192);
                  *(v5 - 1) = v191;
                }

                else
                {
                  v186[1] = v190;
                  v5 = v186 + 2;
                }
              }

              else
              {
                *v186 = v185;
                v5 = v186 + 1;
              }

              ++v181;
              v180 = *this;
            }

            while (v181 < **this);
          }

          break;
        case 5:
          v103 = *this;
          if (**this >= 1)
          {
            v104 = 0;
            v105 = 8 * a2;
            v106 = (8 * a2) | 0x80;
            v107 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v103 = *this;
              }

              v108 = *google::protobuf::RepeatedField<int>::Get(v103, v104);
              if (v105 > 0x7F)
              {
                *v5 = v106;
                if (v105 >= 0x4000)
                {
                  v109 = v5 + 2;
                  v110 = v107;
                  do
                  {
                    *(v109 - 1) = v110 | 0x80;
                    v111 = v110 >> 7;
                    ++v109;
                    v112 = v110 >> 14;
                    v110 >>= 7;
                  }

                  while (v112);
                  *(v109 - 1) = v111;
                }

                else
                {
                  v5[1] = v105 >> 7;
                  v109 = v5 + 2;
                }
              }

              else
              {
                v109 = v5 + 1;
                *v5 = v105;
              }

              if (v108 > 0x7F)
              {
                *v109 = v108 | 0x80;
                v113 = v108 >> 7;
                if (v108 >> 14)
                {
                  v5 = v109 + 2;
                  do
                  {
                    *(v5 - 1) = v113 | 0x80;
                    v114 = v113 >> 7;
                    ++v5;
                    v115 = v113 >> 14;
                    v113 >>= 7;
                  }

                  while (v115);
                  *(v5 - 1) = v114;
                }

                else
                {
                  v109[1] = v113;
                  v5 = v109 + 2;
                }
              }

              else
              {
                *v109 = v108;
                v5 = v109 + 1;
              }

              ++v104;
              v103 = *this;
            }

            while (v104 < **this);
          }

          break;
        case 6:
          v234 = *this;
          if (**this >= 1)
          {
            v235 = 0;
            v236 = 8 * a2;
            v237 = (8 * a2) | 0x81;
            v238 = (a2 >> 4) & 0x1FFFFFF;
            v239 = (8 * a2) | 1;
            v240 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v234 = *this;
              }

              v241 = *google::protobuf::RepeatedField<unsigned long long>::Get(v234, v235);
              if (v236 > 0x7F)
              {
                *v5 = v237;
                if (v236 >= 0x4000)
                {
                  v242 = v5 + 2;
                  v243 = v238;
                  do
                  {
                    *(v242 - 1) = v243 | 0x80;
                    v244 = v243 >> 7;
                    v242 = (v242 + 1);
                    v245 = v243 >> 14;
                    v243 >>= 7;
                  }

                  while (v245);
                  *(v242 - 1) = v244;
                }

                else
                {
                  v5[1] = v240;
                  v242 = v5 + 2;
                }
              }

              else
              {
                *v5 = v239;
                v242 = v5 + 1;
              }

              *v242 = v241;
              v5 = (v242 + 1);
              ++v235;
              v234 = *this;
            }

            while (v235 < **this);
          }

          break;
        case 7:
          v260 = *this;
          if (**this >= 1)
          {
            v261 = 0;
            v262 = 8 * a2;
            v263 = (a2 >> 4) & 0x1FFFFFF;
            v264 = (8 * a2) | 5;
            v265 = (8 * a2) >> 7;
            v266 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v260 = *this;
              }

              v267 = *google::protobuf::RepeatedField<unsigned int>::Get(v260, v261);
              if (v262 > 0x7F)
              {
                *v5 = v266;
                if (v262 >= 0x4000)
                {
                  v268 = v5 + 2;
                  v269 = v263;
                  do
                  {
                    *(v268 - 1) = v269 | 0x80;
                    v270 = v269 >> 7;
                    v268 = (v268 + 1);
                    v271 = v269 >> 14;
                    v269 >>= 7;
                  }

                  while (v271);
                  *(v268 - 1) = v270;
                }

                else
                {
                  v5[1] = v265;
                  v268 = v5 + 2;
                }
              }

              else
              {
                *v5 = v264;
                v268 = v5 + 1;
              }

              *v268 = v267;
              v5 = (v268 + 1);
              ++v261;
              v260 = *this;
            }

            while (v261 < **this);
          }

          break;
        case 8:
          v194 = *this;
          if (**this >= 1)
          {
            v195 = 0;
            v196 = 8 * a2;
            v197 = (8 * a2) | 0x80;
            v198 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v194 = *this;
              }

              v199 = *google::protobuf::RepeatedField<BOOL>::Get(v194, v195);
              if (v196 > 0x7F)
              {
                *v5 = v197;
                if (v196 >= 0x4000)
                {
                  v200 = v5 + 2;
                  v201 = v198;
                  do
                  {
                    *(v200 - 1) = v201 | 0x80;
                    v202 = v201 >> 7;
                    ++v200;
                    v203 = v201 >> 14;
                    v201 >>= 7;
                  }

                  while (v203);
                  *(v200 - 1) = v202;
                }

                else
                {
                  v5[1] = v196 >> 7;
                  v200 = v5 + 2;
                }
              }

              else
              {
                *v5 = v196;
                v200 = v5 + 1;
              }

              *v200 = v199;
              v5 = v200 + 1;
              ++v195;
              v194 = *this;
            }

            while (v195 < **this);
          }

          break;
        case 9:
          v292 = *this;
          if ((*this)[2] >= 1)
          {
            v293 = 0;
            v294 = 8 * a2;
            v295 = -3;
            if ((8 * a2) < 0x80)
            {
              v295 = -2;
            }

            v296 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v296 = -5;
            }

            if (v294 < 0x200000)
            {
              v296 = -4;
            }

            if (v294 >= 0x4000)
            {
              v297 = v296;
            }

            else
            {
              v297 = v295;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v292 = *this;
              }

              v298 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v292, v293);
              v299 = *(v298 + 23);
              if (v299 < 0 && (v299 = *(v298 + 8), v299 > 127) || *a4 + v297 - v5 + 16 < v299)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a4, a2, v298, v5);
              }

              else
              {
                if (v294 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v294 >= 0x4000)
                  {
                    v300 = v5 + 2;
                    v301 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v300 - 1) = v301 | 0x80;
                      v302 = v301 >> 7;
                      ++v300;
                      v303 = v301 >> 14;
                      v301 >>= 7;
                    }

                    while (v303);
                    *(v300 - 1) = v302;
                  }

                  else
                  {
                    v5[1] = v294 >> 7;
                    v300 = v5 + 2;
                  }
                }

                else
                {
                  v300 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v300 = v299;
                v304 = v300 + 1;
                if (*(v298 + 23) >= 0)
                {
                  v305 = v298;
                }

                else
                {
                  v305 = *v298;
                }

                memcpy(v304, v305, v299);
                v5 = &v304[v299];
              }

              ++v293;
              v292 = *this;
            }

            while (v293 < (*this)[2]);
          }

          break;
        case 10:
          v133 = *this;
          if ((*this)[2] >= 1)
          {
            v134 = 0;
            v135 = 8 * a2;
            v425 = (8 * a2) | 0x83;
            v136 = (a2 >> 4) & 0x1FFFFFF;
            v137 = (8 * a2) | 3;
            v138 = (8 * a2) | 4;
            v139 = (8 * a2) >> 7;
            v140 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v133 = *this;
              }

              v141 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v133, v134);
              if (v135 > 0x7F)
              {
                *v5 = v425;
                if (v135 >= 0x4000)
                {
                  v142 = v5 + 2;
                  v143 = v136;
                  do
                  {
                    *(v142 - 1) = v143 | 0x80;
                    v144 = v143 >> 7;
                    ++v142;
                    v145 = v143 >> 14;
                    v143 >>= 7;
                  }

                  while (v145);
                  *(v142 - 1) = v144;
                }

                else
                {
                  v5[1] = v139;
                  v142 = v5 + 2;
                }
              }

              else
              {
                v142 = v5 + 1;
                *v5 = v137;
              }

              v146 = (*(*v141 + 96))(v141, v142, a4);
              if (*a4 <= v146)
              {
                v146 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v146);
              }

              if (v135 > 0x7F)
              {
                *v146 = v140;
                if (v135 >= 0x4000)
                {
                  v5 = v146 + 2;
                  v147 = v136;
                  do
                  {
                    *(v5 - 1) = v147 | 0x80;
                    v148 = v147 >> 7;
                    ++v5;
                    v149 = v147 >> 14;
                    v147 >>= 7;
                  }

                  while (v149);
                  *(v5 - 1) = v148;
                }

                else
                {
                  v146[1] = v139;
                  v5 = v146 + 2;
                }
              }

              else
              {
                v5 = v146 + 1;
                *v146 = v138;
              }

              ++v134;
              v133 = *this;
            }

            while (v134 < (*this)[2]);
          }

          break;
        case 11:
          v272 = *this;
          if ((*this)[2] >= 1)
          {
            v273 = 0;
            v274 = 8 * a2;
            v275 = (a2 >> 4) & 0x1FFFFFF;
            v276 = (8 * a2) | 2;
            v277 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v272 = *this;
              }

              v278 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v272, v273);
              v279 = v278;
              if (v274 > 0x7F)
              {
                *v5 = v277;
                if (v274 >= 0x4000)
                {
                  v280 = v5 + 2;
                  v281 = v275;
                  do
                  {
                    *(v280 - 1) = v281 | 0x80;
                    v282 = v281 >> 7;
                    ++v280;
                    v283 = v281 >> 14;
                    v281 >>= 7;
                  }

                  while (v283);
                  *(v280 - 1) = v282;
                }

                else
                {
                  v5[1] = v274 >> 7;
                  v280 = v5 + 2;
                }
              }

              else
              {
                v280 = v5 + 1;
                *v5 = v276;
              }

              v284 = (*(*v278 + 80))(v278);
              if (v284 > 0x7F)
              {
                *v280 = v284 | 0x80;
                v286 = v284 >> 7;
                if (v284 >> 14)
                {
                  v285 = v280 + 2;
                  do
                  {
                    *(v285 - 1) = v286 | 0x80;
                    v287 = v286 >> 7;
                    ++v285;
                    v288 = v286 >> 14;
                    v286 >>= 7;
                  }

                  while (v288);
                  *(v285 - 1) = v287;
                }

                else
                {
                  v280[1] = v286;
                  v285 = v280 + 2;
                }
              }

              else
              {
                *v280 = v284;
                v285 = v280 + 1;
              }

              v5 = (*(*v279 + 96))(v279, v285, a4);
              ++v273;
              v272 = *this;
            }

            while (v273 < (*this)[2]);
          }

          break;
        case 12:
          v78 = *this;
          if ((*this)[2] >= 1)
          {
            v79 = 0;
            v80 = 8 * a2;
            v81 = -3;
            if ((8 * a2) < 0x80)
            {
              v81 = -2;
            }

            v82 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v82 = -5;
            }

            if (v80 < 0x200000)
            {
              v82 = -4;
            }

            if (v80 >= 0x4000)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v78 = *this;
              }

              v84 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v78, v79);
              v85 = *(v84 + 23);
              if (v85 < 0 && (v85 = *(v84 + 8), v85 > 127) || *a4 + v83 - v5 + 16 < v85)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a4, a2, v84, v5);
              }

              else
              {
                if (v80 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v80 >= 0x4000)
                  {
                    v86 = v5 + 2;
                    v87 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v86 - 1) = v87 | 0x80;
                      v88 = v87 >> 7;
                      ++v86;
                      v89 = v87 >> 14;
                      v87 >>= 7;
                    }

                    while (v89);
                    *(v86 - 1) = v88;
                  }

                  else
                  {
                    v5[1] = v80 >> 7;
                    v86 = v5 + 2;
                  }
                }

                else
                {
                  v86 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v86 = v85;
                v90 = v86 + 1;
                if (*(v84 + 23) >= 0)
                {
                  v91 = v84;
                }

                else
                {
                  v91 = *v84;
                }

                memcpy(v90, v91, v85);
                v5 = &v90[v85];
              }

              ++v79;
              v78 = *this;
            }

            while (v79 < (*this)[2]);
          }

          break;
        case 13:
          v118 = *this;
          if (**this >= 1)
          {
            v119 = 0;
            v120 = 8 * a2;
            v121 = (8 * a2) | 0x80;
            v122 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v118 = *this;
              }

              v123 = *google::protobuf::RepeatedField<unsigned int>::Get(v118, v119);
              if (v120 > 0x7F)
              {
                *v5 = v121;
                if (v120 >= 0x4000)
                {
                  v124 = v5 + 2;
                  v125 = v122;
                  do
                  {
                    *(v124 - 1) = v125 | 0x80;
                    v126 = v125 >> 7;
                    ++v124;
                    v127 = v125 >> 14;
                    v125 >>= 7;
                  }

                  while (v127);
                  *(v124 - 1) = v126;
                }

                else
                {
                  v5[1] = v120 >> 7;
                  v124 = v5 + 2;
                }
              }

              else
              {
                v124 = v5 + 1;
                *v5 = v120;
              }

              if (v123 > 0x7F)
              {
                *v124 = v123 | 0x80;
                v128 = v123 >> 7;
                if (v123 >> 14)
                {
                  v5 = v124 + 2;
                  do
                  {
                    *(v5 - 1) = v128 | 0x80;
                    v129 = v128 >> 7;
                    ++v5;
                    v130 = v128 >> 14;
                    v128 >>= 7;
                  }

                  while (v130);
                  *(v5 - 1) = v129;
                }

                else
                {
                  v124[1] = v128;
                  v5 = v124 + 2;
                }
              }

              else
              {
                *v124 = v123;
                v5 = v124 + 1;
              }

              ++v119;
              v118 = *this;
            }

            while (v119 < **this);
          }

          break;
        case 14:
          v246 = *this;
          if (**this >= 1)
          {
            v247 = 0;
            v248 = 8 * a2;
            v249 = (8 * a2) | 0x80;
            v250 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v246 = *this;
              }

              v251 = *google::protobuf::RepeatedField<int>::Get(v246, v247);
              if (v248 > 0x7F)
              {
                *v5 = v249;
                if (v248 >= 0x4000)
                {
                  v252 = v5 + 2;
                  v253 = v250;
                  do
                  {
                    *(v252 - 1) = v253 | 0x80;
                    v254 = v253 >> 7;
                    ++v252;
                    v255 = v253 >> 14;
                    v253 >>= 7;
                  }

                  while (v255);
                  *(v252 - 1) = v254;
                }

                else
                {
                  v5[1] = v248 >> 7;
                  v252 = v5 + 2;
                }
              }

              else
              {
                v252 = v5 + 1;
                *v5 = v248;
              }

              if (v251 > 0x7F)
              {
                *v252 = v251 | 0x80;
                v256 = v251 >> 7;
                if (v251 >> 14)
                {
                  v5 = v252 + 2;
                  do
                  {
                    *(v5 - 1) = v256 | 0x80;
                    v257 = v256 >> 7;
                    ++v5;
                    v258 = v256 >> 14;
                    v256 >>= 7;
                  }

                  while (v258);
                  *(v5 - 1) = v257;
                }

                else
                {
                  v252[1] = v256;
                  v5 = v252 + 2;
                }
              }

              else
              {
                *v252 = v251;
                v5 = v252 + 1;
              }

              ++v247;
              v246 = *this;
            }

            while (v247 < **this);
          }

          break;
        case 15:
          v60 = *this;
          if (**this >= 1)
          {
            v61 = 0;
            v62 = 8 * a2;
            v63 = (a2 >> 4) & 0x1FFFFFF;
            v64 = (8 * a2) | 5;
            v65 = (8 * a2) >> 7;
            v66 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v60 = *this;
              }

              v67 = *google::protobuf::RepeatedField<int>::Get(v60, v61);
              if (v62 > 0x7F)
              {
                *v5 = v66;
                if (v62 >= 0x4000)
                {
                  v68 = v5 + 2;
                  v69 = v63;
                  do
                  {
                    *(v68 - 1) = v69 | 0x80;
                    v70 = v69 >> 7;
                    v68 = (v68 + 1);
                    v71 = v69 >> 14;
                    v69 >>= 7;
                  }

                  while (v71);
                  *(v68 - 1) = v70;
                }

                else
                {
                  v5[1] = v65;
                  v68 = v5 + 2;
                }
              }

              else
              {
                *v5 = v64;
                v68 = v5 + 1;
              }

              *v68 = v67;
              v5 = (v68 + 1);
              ++v61;
              v60 = *this;
            }

            while (v61 < **this);
          }

          break;
        case 16:
          v167 = *this;
          if (**this >= 1)
          {
            v168 = 0;
            v169 = 8 * a2;
            v170 = (8 * a2) | 0x81;
            v171 = (a2 >> 4) & 0x1FFFFFF;
            v172 = (8 * a2) | 1;
            v173 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v167 = *this;
              }

              v174 = *google::protobuf::RepeatedField<long long>::Get(v167, v168);
              if (v169 > 0x7F)
              {
                *v5 = v170;
                if (v169 >= 0x4000)
                {
                  v175 = v5 + 2;
                  v176 = v171;
                  do
                  {
                    *(v175 - 1) = v176 | 0x80;
                    v177 = v176 >> 7;
                    v175 = (v175 + 1);
                    v178 = v176 >> 14;
                    v176 >>= 7;
                  }

                  while (v178);
                  *(v175 - 1) = v177;
                }

                else
                {
                  v5[1] = v173;
                  v175 = v5 + 2;
                }
              }

              else
              {
                *v5 = v172;
                v175 = v5 + 1;
              }

              *v175 = v174;
              v5 = (v175 + 1);
              ++v168;
              v167 = *this;
            }

            while (v168 < **this);
          }

          break;
        case 17:
          v43 = *this;
          if (**this >= 1)
          {
            v44 = 0;
            v45 = 8 * a2;
            v46 = (8 * a2) | 0x80;
            v47 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v43 = *this;
              }

              v48 = *google::protobuf::RepeatedField<int>::Get(v43, v44);
              if (v45 > 0x7F)
              {
                *v5 = v46;
                if (v45 >= 0x4000)
                {
                  v49 = v5 + 2;
                  v50 = v47;
                  do
                  {
                    *(v49 - 1) = v50 | 0x80;
                    v51 = v50 >> 7;
                    ++v49;
                    v52 = v50 >> 14;
                    v50 >>= 7;
                  }

                  while (v52);
                  *(v49 - 1) = v51;
                }

                else
                {
                  v5[1] = v45 >> 7;
                  v49 = v5 + 2;
                }
              }

              else
              {
                v49 = v5 + 1;
                *v5 = v45;
              }

              v53 = (2 * v48) ^ (v48 >> 31);
              if (v53 > 0x7F)
              {
                *v49 = v53 | 0x80;
                v54 = v53 >> 7;
                if (v53 >> 14)
                {
                  v5 = v49 + 2;
                  do
                  {
                    *(v5 - 1) = v54 | 0x80;
                    v55 = v54 >> 7;
                    ++v5;
                    v56 = v54 >> 14;
                    v54 >>= 7;
                  }

                  while (v56);
                  *(v5 - 1) = v55;
                }

                else
                {
                  v49[1] = v54;
                  v5 = v49 + 2;
                }
              }

              else
              {
                *v49 = v53;
                v5 = v49 + 1;
              }

              ++v44;
              v43 = *this;
            }

            while (v44 < **this);
          }

          break;
        case 18:
          v218 = *this;
          if (**this >= 1)
          {
            v219 = 0;
            v220 = 8 * a2;
            v221 = (8 * a2) | 0x80;
            v222 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v218 = *this;
              }

              v223 = *google::protobuf::RepeatedField<long long>::Get(v218, v219);
              if (v220 > 0x7F)
              {
                *v5 = v221;
                if (v220 >= 0x4000)
                {
                  v224 = v5 + 2;
                  v225 = v222;
                  do
                  {
                    *(v224 - 1) = v225 | 0x80;
                    v226 = v225 >> 7;
                    ++v224;
                    v227 = v225 >> 14;
                    v225 >>= 7;
                  }

                  while (v227);
                  *(v224 - 1) = v226;
                }

                else
                {
                  v5[1] = v220 >> 7;
                  v224 = v5 + 2;
                }
              }

              else
              {
                v224 = v5 + 1;
                *v5 = v220;
              }

              v228 = (2 * v223) ^ (v223 >> 63);
              if (v228 > 0x7F)
              {
                *v224 = v228 | 0x80;
                v229 = v228 >> 7;
                if (v228 >> 14)
                {
                  v5 = v224 + 2;
                  do
                  {
                    *(v5 - 1) = v229 | 0x80;
                    v230 = v229 >> 7;
                    ++v5;
                    v231 = v229 >> 14;
                    v229 >>= 7;
                  }

                  while (v231);
                  *(v5 - 1) = v230;
                }

                else
                {
                  v224[1] = v229;
                  v5 = v224 + 2;
                }
              }

              else
              {
                *v224 = v228;
                v5 = v224 + 1;
              }

              ++v219;
              v218 = *this;
            }

            while (v219 < **this);
          }

          break;
        default:
          return v5;
      }
    }

    return v5;
  }

  if (*(this + 10))
  {
    return v5;
  }

  v25 = *(this + 8);
  if ((v25 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v26 = google::protobuf::internal::LogMessage::operator<<(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v426, &v26->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v427[0].__r_.__value_.__l.__data_);
  }

  switch(v25)
  {
    case 1:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v27 = *this;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v32 = v29 >> 14;
        v29 >>= 7;
      }

      while (v32);
      goto LABEL_698;
    case 2:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v72 = *this;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = (v5 + 2);
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v217 = v74 >> 14;
        v74 >>= 7;
      }

      while (v217);
      goto LABEL_713;
    case 3:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v116 = *this;
      v166 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v166 | 0x80;
        v368 = v166 >> 7;
        if (v166 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v368 | 0x80;
            v396 = v368 >> 7;
            ++v59;
            v397 = v368 >> 14;
            v368 >>= 7;
          }

          while (v397);
          *(v59 - 1) = v396;
        }

        else
        {
          v5[1] = v368;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v166;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v398 = v385 >> 14;
        v385 >>= 7;
      }

      while (v398);
      goto LABEL_710;
    case 4:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v116 = *this;
      v193 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v193 | 0x80;
        v369 = v193 >> 7;
        if (v193 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v369 | 0x80;
            v399 = v369 >> 7;
            ++v59;
            v400 = v369 >> 14;
            v369 >>= 7;
          }

          while (v400);
          *(v59 - 1) = v399;
        }

        else
        {
          v5[1] = v369;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v193;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v401 = v385 >> 14;
        v385 >>= 7;
      }

      while (v401);
      goto LABEL_710;
    case 5:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v116 = *this;
      v117 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v117 | 0x80;
        v365 = v117 >> 7;
        if (v117 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v365 | 0x80;
            v383 = v365 >> 7;
            ++v59;
            v384 = v365 >> 14;
            v365 >>= 7;
          }

          while (v384);
          *(v59 - 1) = v383;
        }

        else
        {
          v5[1] = v365;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v117;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v387 = v385 >> 14;
        v385 >>= 7;
      }

      while (v387);
      goto LABEL_710;
    case 6:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v27 = *this;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v410 = v29 >> 14;
        v29 >>= 7;
      }

      while (v410);
      goto LABEL_698;
    case 7:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v72 = *this;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = (v5 + 2);
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v414 = v74 >> 14;
        v74 >>= 7;
      }

      while (v414);
      goto LABEL_713;
    case 8:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      LOBYTE(v131) = *this;
      v204 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v204 | 0x80;
        v370 = v204 >> 7;
        if (v204 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v370 | 0x80;
            v402 = v370 >> 7;
            ++v59;
            v403 = v370 >> 14;
            v370 >>= 7;
          }

          while (v403);
          *(v59 - 1) = v402;
        }

        else
        {
          v5[1] = v370;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v204;
        v59 = v5 + 1;
      }

      goto LABEL_685;
    case 9:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v92 = *this;
      v93 = *(*this + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
        goto LABEL_461;
      }

      v374 = 2;
      v375 = 3;
      v376 = 4;
      if (v95 >> 28)
      {
        v376 = 5;
      }

      if (v95 >= 0x200000)
      {
        v375 = v376;
      }

      if (v95 >= 0x4000)
      {
        v374 = v375;
      }

      if ((v94 + ~&v5[v374] + 16) < v93)
      {
        return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a4, a2, v92, v5);
      }

      *v5 = v95 | 0x82;
      v99 = v95 >> 7;
      if (!(v95 >> 14))
      {
        goto LABEL_627;
      }

      v100 = v5 + 2;
      do
      {
        *(v100 - 1) = v99 | 0x80;
        v101 = v99 >> 7;
        ++v100;
        v416 = v99 >> 14;
        v99 >>= 7;
      }

      while (v416);
      goto LABEL_719;
    case 10:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v150 = *this;
      v151 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v151 | 0x83;
        v367 = v151 >> 7;
        if (v151 >> 14)
        {
          v152 = v5 + 2;
          do
          {
            *(v152 - 1) = v367 | 0x80;
            v393 = v367 >> 7;
            ++v152;
            v394 = v367 >> 14;
            v367 >>= 7;
          }

          while (v394);
          *(v152 - 1) = v393;
        }

        else
        {
          v5[1] = v367;
          v152 = v5 + 2;
        }
      }

      else
      {
        *v5 = v151 | 3;
        v152 = v5 + 1;
      }

      v59 = (*(*v150 + 96))(v150, v152, a4);
      if (*a4 <= v59)
      {
        v59 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v59);
      }

      if (v151 <= 0x7F)
      {
        LOBYTE(v131) = v151 | 4;
LABEL_685:
        *v59 = v131;
        return (v59 + 1);
      }

      *v59 = v151 | 0x84;
      v380 = v151 >> 7;
      if (!(v151 >> 14))
      {
        goto LABEL_662;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v395 = v380 >> 14;
        v380 >>= 7;
      }

      while (v395);
      goto LABEL_665;
    case 11:
      if ((*(this + 10) & 0x10) != 0)
      {
        return (*(**this + 136))(*this, a2, v5, a4);
      }

      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v289 = *this;
      v290 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v290 | 0x82;
        v415 = v290 >> 7;
        if (v290 >> 14)
        {
          v291 = v5 + 2;
          do
          {
            *(v291 - 1) = v415 | 0x80;
            v418 = v415 >> 7;
            ++v291;
            v419 = v415 >> 14;
            v415 >>= 7;
          }

          while (v419);
          *(v291 - 1) = v418;
        }

        else
        {
          v5[1] = v415;
          v291 = v5 + 2;
        }
      }

      else
      {
        *v5 = v290 | 2;
        v291 = v5 + 1;
      }

      v420 = (*(*v289 + 80))(v289);
      if (v420 > 0x7F)
      {
        *v291 = v420 | 0x80;
        v422 = v420 >> 7;
        if (v420 >> 14)
        {
          v421 = v291 + 2;
          do
          {
            *(v421 - 1) = v422 | 0x80;
            v423 = v422 >> 7;
            ++v421;
            v424 = v422 >> 14;
            v422 >>= 7;
          }

          while (v424);
          *(v421 - 1) = v423;
        }

        else
        {
          v291[1] = v422;
          v421 = v291 + 2;
        }
      }

      else
      {
        *v291 = v420;
        v421 = v291 + 1;
      }

      return (*(*v289 + 96))(v289, v421, a4);
    case 12:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v92 = *this;
      v93 = *(*this + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
LABEL_461:
        if (v94 - v5 + 14 >= v93)
        {
          *v5 = v95 | 2;
          v100 = v5 + 1;
LABEL_720:
          *v100 = v93;
          v417 = v100 + 1;
          if (*(v92 + 23) < 0)
          {
            v92 = *v92;
          }

          memcpy(v417, v92, v93);
          return &v417[v93];
        }
      }

      else
      {
        v96 = 2;
        v97 = 3;
        v98 = 4;
        if (v95 >> 28)
        {
          v98 = 5;
        }

        if (v95 >= 0x200000)
        {
          v97 = v98;
        }

        if (v95 >= 0x4000)
        {
          v96 = v97;
        }

        if ((v94 + ~&v5[v96] + 16) >= v93)
        {
          *v5 = v95 | 0x82;
          v99 = v95 >> 7;
          if (v95 >> 14)
          {
            v100 = v5 + 2;
            do
            {
              *(v100 - 1) = v99 | 0x80;
              v101 = v99 >> 7;
              ++v100;
              v102 = v99 >> 14;
              v99 >>= 7;
            }

            while (v102);
LABEL_719:
            *(v100 - 1) = v101;
          }

          else
          {
LABEL_627:
            v5[1] = v99;
            v100 = v5 + 2;
          }

          goto LABEL_720;
        }
      }

      return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a4, a2, v92, v5);
    case 13:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v131 = *this;
      v132 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v132 | 0x80;
        v366 = v132 >> 7;
        if (v132 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v366 | 0x80;
            v388 = v366 >> 7;
            ++v59;
            v389 = v366 >> 14;
            v366 >>= 7;
          }

          while (v389);
          *(v59 - 1) = v388;
        }

        else
        {
          v5[1] = v366;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v132;
        v59 = v5 + 1;
      }

      if (v131 <= 0x7F)
      {
        goto LABEL_685;
      }

      *v59 = v131 | 0x80;
      v390 = v131 >> 7;
      if (!(v131 >> 14))
      {
        v59[1] = v390;
        return (v59 + 2);
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v390 | 0x80;
        v391 = v390 >> 7;
        ++v5;
        v392 = v390 >> 14;
        v390 >>= 7;
      }

      while (v392);
      *(v5 - 1) = v391;
      return v5;
    case 14:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v116 = *this;
      v259 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v259 | 0x80;
        v372 = v259 >> 7;
        if (v259 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v372 | 0x80;
            v411 = v372 >> 7;
            ++v59;
            v412 = v372 >> 14;
            v372 >>= 7;
          }

          while (v412);
          *(v59 - 1) = v411;
        }

        else
        {
          v5[1] = v372;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v259;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
LABEL_704:
        *v59 = v116;
        return (v59 + 1);
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
LABEL_706:
        v59[1] = v385;
        return (v59 + 2);
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v413 = v385 >> 14;
        v385 >>= 7;
      }

      while (v413);
LABEL_710:
      *(v5 - 1) = v386;
      return v5;
    case 15:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v72 = *this;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_401:
        *v5 = v73 | 5;
        v75 = (v5 + 1);
      }

      else
      {
        *v5 = v73 | 0x85;
        v74 = v73 >> 7;
        if (v73 >> 14)
        {
          v75 = (v5 + 2);
          do
          {
            *(v75 - 1) = v74 | 0x80;
            v76 = v74 >> 7;
            v75 = (v75 + 1);
            v77 = v74 >> 14;
            v74 >>= 7;
          }

          while (v77);
LABEL_713:
          *(v75 - 1) = v76;
        }

        else
        {
LABEL_617:
          v5[1] = v74;
          v75 = (v5 + 2);
        }
      }

      *v75 = v72;
      return (v75 + 1);
    case 16:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v27 = *this;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_360:
        *v5 = v28 | 1;
        v30 = (v5 + 1);
      }

      else
      {
        *v5 = v28 | 0x81;
        v29 = v28 >> 7;
        if (v28 >> 14)
        {
          v30 = (v5 + 2);
          do
          {
            *(v30 - 1) = v29 | 0x80;
            v31 = v29 >> 7;
            v30 = (v30 + 1);
            v179 = v29 >> 14;
            v29 >>= 7;
          }

          while (v179);
LABEL_698:
          *(v30 - 1) = v31;
        }

        else
        {
LABEL_613:
          v5[1] = v29;
          v30 = (v5 + 2);
        }
      }

      *v30 = v27;
      return (v30 + 1);
    case 17:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v57 = *this;
      v58 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v58 | 0x80;
        v364 = v58 >> 7;
        if (v58 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v364 | 0x80;
            v377 = v364 >> 7;
            ++v59;
            v378 = v364 >> 14;
            v364 >>= 7;
          }

          while (v378);
          *(v59 - 1) = v377;
        }

        else
        {
          v5[1] = v364;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v58;
        v59 = v5 + 1;
      }

      v379 = (2 * v57) ^ (v57 >> 31);
      if (v379 <= 0x7F)
      {
        *v59 = v379;
        return (v59 + 1);
      }

      *v59 = v379 | 0x80;
      v380 = v379 >> 7;
      if (!(v379 >> 14))
      {
LABEL_662:
        v59[1] = v380;
        return (v59 + 2);
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v382 = v380 >> 14;
        v380 >>= 7;
      }

      while (v382);
LABEL_665:
      *(v5 - 1) = v381;
      return v5;
    case 18:
      if (*a4 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
      }

      v232 = *this;
      v233 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v233 | 0x80;
        v371 = v233 >> 7;
        if (v233 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v371 | 0x80;
            v404 = v371 >> 7;
            ++v59;
            v405 = v371 >> 14;
            v371 >>= 7;
          }

          while (v405);
          *(v59 - 1) = v404;
        }

        else
        {
          v5[1] = v371;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v233;
        v59 = v5 + 1;
      }

      v406 = (2 * v232) ^ (v232 >> 63);
      if (v406 > 0x7F)
      {
        *v59 = v406 | 0x80;
        v407 = v406 >> 7;
        if (v406 >> 14)
        {
          v5 = v59 + 2;
          do
          {
            *(v5 - 1) = v407 | 0x80;
            v408 = v407 >> 7;
            ++v5;
            v409 = v407 >> 14;
            v407 >>= 7;
          }

          while (v409);
          *(v5 - 1) = v408;
        }

        else
        {
          v59[1] = v407;
          return (v59 + 2);
        }
      }

      else
      {
        *v59 = v406;
        return (v59 + 1);
      }

      return v5;
    default:
      return v5;
  }
}