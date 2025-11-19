void sub_19A1F60A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::PreviewImage::SerializeWithCachedSizes(topotext::PreviewImage *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 12), a3);
    v6 = *(this + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 52), a2, a4);
  v6 = *(this + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 5), a2);
  v6 = *(this + 8);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(4, *(this + 7), a2);
  v6 = *(this + 8);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  google::protobuf::internal::WireFormatLite::WriteInt32(5, *(this + 18), a2, a4);
  v6 = *(this + 8);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(this + 53), a2, a4);
  if ((*(this + 8) & 0x40) != 0)
  {
LABEL_8:
    google::protobuf::internal::WireFormatLite::WriteInt64(7, *(this + 8), a2, a4);
  }

LABEL_9:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::PreviewImage::ByteSize(topotext::PreviewImage *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_33;
  }

  v3 = ((v2 << 31) >> 31) & 5 | v2 & 2;
  if ((v2 & 4) != 0)
  {
    v5 = *(this + 5);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 += v10 + v6 + 1;
    if ((v2 & 8) == 0)
    {
LABEL_4:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_4;
  }

  v11 = *(this + 7);
  v12 = *(v11 + 23);
  v13 = v12;
  v14 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 0x80)
  {
    v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    v12 = *(v11 + 23);
    v14 = *(v11 + 8);
    v2 = *(this + 8);
    v13 = *(v11 + 23);
  }

  else
  {
    v16 = 1;
  }

  if (v13 < 0)
  {
    v12 = v14;
  }

  v3 += v16 + v12 + 1;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v17 = *(this + 18);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v18 = 2;
  }

  v3 += v18;
LABEL_31:
  v4 = ((v2 >> 4) & 2) + v3;
  if ((v2 & 0x40) != 0)
  {
    v4 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
  }

LABEL_33:
  v19 = *(this + 31);
  if (v19 < 0)
  {
    v19 = *(this + 2);
  }

  result = (v4 + v19);
  *(this + 9) = result;
  return result;
}

std::string *topotext::PreviewImage::CheckTypeAndMergeFrom(topotext::PreviewImage *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::PreviewImage::MergeFrom(this, lpsrc);
}

topotext::Todo *topotext::Todo::Todo(topotext::Todo *this)
{
  *this = &unk_1F0D66EB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Todo::SharedCtor(this);
  return this;
}

void sub_19A1F644C(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::Todo::SharedCtor(topotext::Todo *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_1F0D671C0;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  *(this + 48) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_19A1F6518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::Todo::~Todo(void **this)
{
  *this = &unk_1F0D66EB8;
  topotext::VectorTimestamp_Clock::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Todo::~Todo(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::Todo::MergePartialFromCodedStream(topotext::Todo *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v19, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v18, v19);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        if (v7 == 16)
        {
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_27;
        }

LABEL_23:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

LABEL_16:
      if (v7)
      {
        v13 = (v7 & 7) == 4;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
LABEL_36:
        v16 = 1;
        goto LABEL_38;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v18, v4))
      {
        goto LABEL_37;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_23;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
      break;
    }

    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v11 < v10 && *v11 == 16)
    {
      v12 = v11 + 1;
      *(a2 + 1) = v12;
LABEL_27:
      v20 = 0;
      if (v12 >= v10 || (v14 = *v12, (v14 & 0x8000000000000000) != 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v20))
        {
          break;
        }

        v14 = v20;
        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v15 = v12 + 1;
        *(a2 + 1) = v15;
      }

      *(this + 48) = v14 != 0;
      *(this + 8) |= 2u;
      if (v15 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v16 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }
  }

LABEL_37:
  v16 = 0;
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v18);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v19);
  return v16;
}

void sub_19A1F6880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Todo::SerializeWithCachedSizes(topotext::Todo *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 48), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::Todo::ByteSize(topotext::Todo *this)
{
  v2 = *(this + 32);
  if (*(this + 32))
  {
    if (v2)
    {
      v4 = *(this + 5);
      v5 = *(v4 + 23);
      v6 = v5;
      v7 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = v7;
      }

      if (v8 >= 0x80)
      {
        v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        v5 = *(v4 + 23);
        v7 = *(v4 + 8);
        v9 = v10 + 1;
        v2 = *(this + 8);
        v6 = *(v4 + 23);
      }

      else
      {
        v9 = 2;
      }

      if (v6 < 0)
      {
        v5 = v7;
      }

      v3 = v9 + v5;
    }

    else
    {
      v3 = 0;
    }

    v2 = (v2 & 2) + v3;
  }

  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Todo::CheckTypeAndMergeFrom(topotext::Todo *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Todo::MergeFrom(this, lpsrc);
}

void topotext::Color::~Color(void **this)
{
  *this = &unk_1F0D66F30;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Color::~Color(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::Color::MergePartialFromCodedStream(topotext::Color *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v17, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v16, v17);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v7 != 13)
        {
          goto LABEL_31;
        }

        v18 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
        {
          goto LABEL_44;
        }

        *(this + 10) = v18;
        *(this + 8) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 21)
        {
          *(a2 + 1) = v11 + 1;
LABEL_26:
          v18 = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
          {
            goto LABEL_44;
          }

          *(this + 11) = v18;
          *(this + 8) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 29)
          {
            *(a2 + 1) = v12 + 1;
LABEL_35:
            v18 = 0;
            if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
            {
              goto LABEL_44;
            }

            *(this + 12) = v18;
            *(this + 8) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 37)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_39;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        if (v7 == 21)
        {
          goto LABEL_26;
        }

LABEL_31:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_45;
        }

LABEL_33:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v16, v4))
        {
          goto LABEL_44;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 29)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 37)
    {
      goto LABEL_31;
    }

LABEL_39:
    v18 = 0;
    if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
    {
LABEL_44:
      v14 = 0;
      goto LABEL_46;
    }

    *(this + 13) = v18;
    *(this + 8) |= 8u;
    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v14 = 1;
      *(a2 + 36) = 1;
      goto LABEL_46;
    }
  }

LABEL_15:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_45:
  v14 = 1;
LABEL_46:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v16);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v17);
  return v14;
}

void sub_19A1F6DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Color::SerializeWithCachedSizes(topotext::Color *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 10), a3);
    v5 = *(this + 8);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 11), a3);
  v5 = *(this + 8);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(this + 12), a3);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(this + 13), a3);
  }

LABEL_6:
  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t topotext::Color::ByteSize(topotext::Color *this)
{
  v1 = *(this + 32);
  if (*(this + 32))
  {
    v2 = (v1 << 31 >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  v4 = (v1 + v3);
  *(this + 9) = v4;
  return v4;
}

std::string *topotext::Color::CheckTypeAndMergeFrom(topotext::Color *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Color::MergeFrom(this, lpsrc);
}

void sub_19A1F71D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1F72AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1F7388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1F7464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1F75A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1F7680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1F775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1F789C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::Substring::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1F7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::AttributeRun::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1F7B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::Attachment::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1F7CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::VectorTimestamp_Clock_ReplicaClock::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1F7E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::VectorTimestamp_Clock::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1F7F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::Selection_Range::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1F8110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::PreviewImage>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::PreviewImage::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1F8250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::VerifyVersion(google::protobuf::internal *this, google::protobuf::internal *a2, const std::string::value_type *a3, const char *a4)
{
  if (a2 > 2006001)
  {
    v21 = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/stubs/common.cc";
    v23 = 61;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    google::protobuf::internal::VersionString(a2, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v7 = &v18;
    }

    else
    {
      v7 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v8 = v20;
    }

    else
    {
      v8 = v19;
    }

    std::string::append(&v24, v7, v8);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    google::protobuf::internal::VersionString(0x1E9BF1, &__p);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v10 = v17;
    }

    else
    {
      v10 = v16;
    }

    std::string::append(&v24, p_p, v10);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    google::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (this < 2006000)
  {
    v21 = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/stubs/common.cc";
    v23 = 72;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    google::protobuf::internal::VersionString(this, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v11 = &v18;
    }

    else
    {
      v11 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v12 = v20;
    }

    else
    {
      v12 = v19;
    }

    std::string::append(&v24, v11, v12);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    google::protobuf::internal::VersionString(0x1E9BF1, &__p);
    if ((v17 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v16;
    }

    std::string::append(&v24, v13, v14);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    google::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19A1F853C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
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

unint64_t google::protobuf::internal::VersionString@<X0>(google::protobuf::internal *this@<X0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%d.%d.%d", this / 1000000, this / 1000 % 1000, this % 1000);
  __str[127] = 0;
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t google::protobuf::internal::DefaultLogHandler(int a1, const char *a2, int a3, uint64_t a4)
{
  v4 = MEMORY[0x1E69E9848];
  if (*(a4 + 23) >= 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = *a4;
  }

  fprintf(*MEMORY[0x1E69E9848], "[libprotobuf %s %s:%d] %s\n", google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names[a1], a2, a3, v5);
  v6 = *v4;

  return fflush(v6);
}

uint64_t google::protobuf::internal::DeleteLogSilencerCount(google::protobuf::internal *this)
{
  result = google::protobuf::internal::log_silencer_count_mutex_;
  if (google::protobuf::internal::log_silencer_count_mutex_)
  {
    google::protobuf::internal::Mutex::~Mutex(google::protobuf::internal::log_silencer_count_mutex_);
    result = MEMORY[0x19A8FD070]();
  }

  google::protobuf::internal::log_silencer_count_mutex_ = 0;
  return result;
}

void google::protobuf::internal::OnShutdown(google::protobuf::internal *this, void (*a2)(void))
{
  v3 = google::protobuf::internal::shutdown_functions_init;
  __dmb(0xBu);
  if (v3 != 2)
  {
    v17[0] = &unk_1F0D671C0;
    v17[1] = google::protobuf::internal::InitShutdownFunctions;
    v18 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::shutdown_functions_init, v17);
  }

  v4 = google::protobuf::internal::shutdown_functions_mutex;
  google::protobuf::internal::Mutex::Lock(google::protobuf::internal::shutdown_functions_mutex);
  v5 = google::protobuf::internal::shutdown_functions;
  v7 = *(google::protobuf::internal::shutdown_functions + 8);
  v6 = *(google::protobuf::internal::shutdown_functions + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *google::protobuf::internal::shutdown_functions) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<void (*)(void)>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - *google::protobuf::internal::shutdown_functions;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(google::protobuf::internal::shutdown_functions, v12);
    }

    v13 = (8 * v9);
    *v13 = this;
    v8 = 8 * v9 + 8;
    v14 = *(v5 + 8) - *v5;
    v15 = v13 - v14;
    memcpy(v13 - v14, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v8 = (v7 + 1);
  }

  *(v5 + 8) = v8;
  google::protobuf::internal::Mutex::Unlock(v4);
}

atomic_ullong *google::protobuf::internal::InitLogSilencerCountOnce(google::protobuf::internal *this)
{
  v3 = google::protobuf::internal::log_silencer_count_init_;
  __dmb(0xBu);
  if (v3 != 2)
  {
    v7 = v1;
    v8 = v2;
    v5[0] = &unk_1F0D671C0;
    v5[1] = google::protobuf::internal::InitLogSilencerCount;
    v6 = 0;
    return google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::log_silencer_count_init_, v5);
  }

  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void google::protobuf::internal::LogMessage::Finish(google::protobuf::internal::LogMessage *this)
{
  if (*this == 3)
  {
    v2 = 3;
  }

  else
  {
    google::protobuf::internal::InitLogSilencerCountOnce(this);
    v3 = google::protobuf::internal::log_silencer_count_mutex_;
    google::protobuf::internal::Mutex::Lock(google::protobuf::internal::log_silencer_count_mutex_);
    v4 = google::protobuf::internal::log_silencer_count_;
    google::protobuf::internal::Mutex::Unlock(v3);
    if (v4 > 0)
    {
      goto LABEL_6;
    }

    v2 = *this;
  }

  google::protobuf::internal::log_handler_(v2, *(this + 1), *(this + 4), this + 24);
LABEL_6:
  if (*this == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    google::protobuf::FatalException::FatalException(exception, *(this + 1), *(this + 4), this + 24);
  }
}

void google::protobuf::internal::Mutex::~Mutex(pthread_mutex_t **this)
{
  pthread_mutex_destroy(*this);
  if (*this)
  {
    MEMORY[0x19A8FD070](*this, 0x1000C40FA0F61DDLL);
  }
}

void google::protobuf::internal::Mutex::Lock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_lock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/stubs/common.cc";
    v6 = 304;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_lock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    google::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19A1F8D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::Mutex::Unlock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_unlock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/stubs/common.cc";
    v6 = 311;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_unlock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    google::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19A1F8E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_1F0D67188;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x19A8FD070);
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

uint64_t google::protobuf::internal::FunctionClosure0::Run(google::protobuf::internal::FunctionClosure0 *this)
{
  v2 = *(this + 16);
  result = (*(this + 1))();
  if (this && (v2 & 1) != 0)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

uint64_t google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_1F0D67188;
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void google::protobuf::io::CodedInputStream::~CodedInputStream(google::protobuf::io::CodedInputStream *this)
{
  if (*this)
  {
    google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(this);
  }

  if (*(this + 13) == -2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 1, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/coded_stream.cc", 78);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "The total number of bytes read was ");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, *(this + 6));
    google::protobuf::internal::LogFinisher::operator=(&v4, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }
}

_DWORD *google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(_DWORD *this)
{
  if (this[7] + this[11] + this[4] - this[2] >= 1)
  {
    v1 = this;
    this = (*(**this + 24))(*this);
    v2 = *(v1 + 1);
    v3 = v1[6] - v1[11] + v2 - v1[4];
    *(v1 + 2) = v2;
    v1[11] = 0;
    *(v1 + 3) = v3;
  }

  return this;
}

uint64_t google::protobuf::io::CodedInputStream::PushLimit(google::protobuf::io::CodedInputStream *this, signed int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 2);
  v4 = *(this + 10);
  v5 = *(this + 11);
  v6 = v2 - v5 + *(this + 2) - v3;
  v7 = (v6 ^ 0x7FFFFFFFu) < a2 || a2 < 0;
  v8 = v6 + a2;
  if (v7)
  {
    v8 = 0x7FFFFFFF;
  }

  if (v4 < v8)
  {
    v8 = *(this + 10);
  }

  *(this + 10) = v8;
  v9 = v3 + v5;
  *(this + 2) = v9;
  if (*(this + 12) < v8)
  {
    v8 = *(this + 12);
  }

  v10 = __OFSUB__(v2, v8);
  v11 = v2 - v8;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    v11 = 0;
  }

  else
  {
    *(this + 2) = v9 - v11;
  }

  *(this + 11) = v11;
  return v4;
}

uint64_t google::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 16) + *(this + 44);
  *(this + 16) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(this + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(this + 16) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 10);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 4) - *(this + 2));
  }
}

void google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(google::protobuf::io::CodedInputStream *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/coded_stream.cc", 180);
  v2 = google::protobuf::internal::LogMessage::operator<<(v6, "A protocol message was rejected because it was too big (more than ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, *(this + 12));
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
  google::protobuf::internal::LogFinisher::operator=(&v5, v4);
  google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
}

void sub_19A1F93F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::Refresh(google::protobuf::io::CodedInputStream *this)
{
  v2 = (this + 8);
  if (*(this + 4) != *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/coded_stream.cc", 519);
    v3 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (0) == (BufferSize()): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
  }

  v4 = *(this + 11);
  if (v4 > 0 || *(this + 7) > 0 || (v5 = *(this + 6), v5 == *(this + 10)))
  {
    v6 = *(this + 6) - v4;
    v7 = *(this + 12);
    if (v6 >= v7 && v7 != *(this + 10))
    {
      google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(this);
    }

    return 0;
  }

  else
  {
    v10 = *(this + 13);
    if ((v10 & 0x80000000) == 0 && v5 >= v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v30, 1, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/coded_stream.cc", 537);
      v11 = google::protobuf::internal::LogMessage::operator<<(v30, "Reading dangerously large protocol message.  If the message turns out to be larger than ");
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, *(this + 12));
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, " bytes, parsing will be halted for security reasons.  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
      google::protobuf::internal::LogFinisher::operator=(&v29, v13);
      google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
      *(this + 13) = -2;
    }

    v29 = 0;
    v28 = 0;
    v14 = *this;
    do
    {
      v8 = (*(*v14 + 16))(v14, &v29, &v28);
      if (!v8)
      {
        *v2 = 0;
        v2[1] = 0;
        return v8;
      }

      v15 = v28;
    }

    while (!v28);
    v16 = v29 + v28;
    *(this + 1) = v29;
    *(this + 2) = v16;
    if (v15 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/coded_stream.cc", 554);
      v17 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (buffer_size) >= (0): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, v17);
      google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
      v15 = v28;
    }

    v18 = *(this + 6);
    v19 = v18 - (v15 ^ 0x7FFFFFFF);
    if (v18 <= (v15 ^ 0x7FFFFFFF))
    {
      v21 = v15 + v18;
      v20 = *(this + 2);
    }

    else
    {
      *(this + 7) = v19;
      v20 = *(this + 2) - v19;
      *(this + 2) = v20;
      v21 = 0x7FFFFFFF;
    }

    *(this + 6) = v21;
    v22 = *(this + 10);
    v23 = v20 + *(this + 11);
    *(this + 2) = v23;
    v24 = *(this + 12);
    if (v24 >= v22)
    {
      v24 = v22;
    }

    v25 = __OFSUB__(v21, v24);
    v26 = v21 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v26 = 0;
    }

    else
    {
      *(this + 2) = v23 - v26;
    }

    *(this + 11) = v26;
  }

  return v8;
}

void sub_19A1F9668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadRaw(google::protobuf::io::CodedInputStream *this, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *(this + 1);
    v8 = *(this + 2) - v7;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *(this + 1) += v8;
    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *(this + 1) += v6;
  return v6 <= v8;
}

BOOL google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = __n;
  v4 = this;
  if (*(a1 + 16) - *(a1 + 8) >= __n)
  {
    std::string::resize(this, __n, 0);
    if (!v3)
    {
      return 1;
    }

    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v4->__r_.__value_.__l.__size_)
      {
LABEL_13:
        v4 = 0;
        goto LABEL_14;
      }

      v4 = v4->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v4->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

LABEL_14:
    memcpy(v4, *(a1 + 8), v3);
    *(a1 + 8) += v3;
    return 1;
  }

  return google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, __n);
}

BOOL google::protobuf::io::CodedInputStream::ReadStringFallback(_DWORD *a1, std::string *this, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v6 = a1[12];
  if (v6 >= a1[10])
  {
    v6 = a1[10];
  }

  if (v6 != 0x7FFFFFFF)
  {
    v7 = v6 - a1[6] + a1[11] + a1[4] - a1[2];
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(this, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *(a1 + 1);
    v12 = *(a1 + 2) - v11;
    v13 = __OFSUB__(v3, v12);
    v3 -= v12;
    if ((v3 < 0) ^ v13 | (v3 == 0))
    {
      break;
    }

    if (v12)
    {
      v14 = v12;
      std::string::append(this, v11, v12);
      v11 = *(a1 + 1);
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 1) = &v11[v14];
    if ((google::protobuf::io::CodedInputStream::Refresh(a1) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(this, v11, v10);
  *(a1 + 1) += v10;
  return v10 <= v12;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(google::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  if (((*(this + 4) - v3) & 0xFFFFFFFC) != 0)
  {
    *(this + 1) = v3 + 1;
  }

  else
  {
    v3 = __dst;
    result = google::protobuf::io::CodedInputStream::ReadRaw(this, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  if (((*(this + 4) - v3) & 0xFFFFFFF8) != 0)
  {
    *(this + 1) = v3 + 1;
LABEL_4:
    *a2 = *v3;
    result = 1;
    goto LABEL_5;
  }

  v3 = v6;
  result = google::protobuf::io::CodedInputStream::ReadRaw(this, v6, 8);
  if (result)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint64Fallback(google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3 - v2 <= 9 && (v3 <= v2 || *(v3 - 1) < 0))
  {
    return google::protobuf::io::CodedInputStream::ReadVarint64Slow(this, a2);
  }

  v4 = v2 + 1;
  v5 = *v2;
  if ((*v2 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
LABEL_25:
    *(this + 1) = &v2[v4 - v2];
    *a2 = v5 | (v6 << 28) | (v7 << 56);
    return 1;
  }

  v5 = v5 + (v2[1] << 7) - 128;
  if ((v2[1] & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 2;
    goto LABEL_25;
  }

  v5 = v5 + (v2[2] << 14) - 0x4000;
  if ((v2[2] & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 3;
    goto LABEL_25;
  }

  v5 = v5 + (v2[3] << 21) - 0x200000;
  if ((v2[3] & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 4;
    goto LABEL_25;
  }

  v5 -= 0x10000000;
  v6 = v2[4];
  if ((v2[4] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 5;
    goto LABEL_25;
  }

  v6 = v6 + (v2[5] << 7) - 128;
  if ((v2[5] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 6;
    goto LABEL_25;
  }

  v6 = v6 + (v2[6] << 14) - 0x4000;
  if ((v2[6] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 7;
    goto LABEL_25;
  }

  v6 = v6 + (v2[7] << 21) - 0x200000;
  if ((v2[7] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 8;
    goto LABEL_25;
  }

  v6 -= 0x10000000;
  v7 = v2[8];
  if ((v2[8] & 0x80000000) == 0)
  {
    v4 = v2 + 9;
    goto LABEL_25;
  }

  if ((v2[9] & 0x80000000) == 0)
  {
    v4 = v2 + 10;
    v7 = v7 + (v2[9] << 7) - 128;
    goto LABEL_25;
  }

  return 0;
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint32Fallback(google::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 - v3 <= 9 && (v4 <= v3 || *(v4 - 1) < 0))
  {
    v11 = 0;
    v7 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v11);
    if (v7)
    {
      *a2 = v11;
    }
  }

  else
  {
    v5 = (v3 + 1);
    v6 = *v3;
    if (*v3 < 0)
    {
      v6 = v6 + (v3[1] << 7) - 128;
      if (v3[1] < 0)
      {
        v6 = v6 + (v3[2] << 14) - 0x4000;
        if (v3[2] < 0)
        {
          v6 = v6 + (v3[3] << 21) - 0x200000;
          if (v3[3] < 0)
          {
            v8 = v3[4];
            v6 = v6 + (v8 << 28) - 0x10000000;
            if (v8 < 0)
            {
              v5 = (v3 + 6);
              v10 = 5;
              while (*(v5 - 1) < 0)
              {
                v7 = 0;
                ++v5;
                if (!--v10)
                {
                  return v7;
                }
              }
            }

            else
            {
              v5 = (v3 + 5);
            }
          }

          else
          {
            v5 = (v3 + 4);
          }
        }

        else
        {
          v5 = (v3 + 3);
        }
      }

      else
      {
        v5 = (v3 + 2);
      }
    }

    *a2 = v6;
    *(this + 1) = v5;
    return 1;
  }

  return v7;
}

uint64_t google::protobuf::io::CodedInputStream::ReadTagSlow(google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
LABEL_4:
    v7 = 0;
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v7);
      if (result)
      {
        return v7;
      }
    }

    else
    {
      *(this + 1) = v2 + 1;
    }

    return result;
  }

  if (google::protobuf::io::CodedInputStream::Refresh(this))
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    goto LABEL_4;
  }

  v5 = *(this + 12);
  result = 0;
  v6 = *(this + 6) - *(this + 11) < v5 || *(this + 10) == v5;
  *(this + 36) = v6;
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::ReadTagFallback(google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = v1 - v2;
  if (v1 - v2 > 9)
  {
    goto LABEL_4;
  }

  if (v3 >= 1)
  {
    if ((*(v1 - 1) & 0x80000000) == 0)
    {
LABEL_4:
      v4 = (v2 + 1);
      v5 = *v2;
      if (*v2 < 0)
      {
        v5 = v5 + (v2[1] << 7) - 128;
        if (v2[1] < 0)
        {
          v5 = v5 + (v2[2] << 14) - 0x4000;
          if (v2[2] < 0)
          {
            v5 = v5 + (v2[3] << 21) - 0x200000;
            if (v2[3] < 0)
            {
              v10 = v2[4];
              v5 = (v5 + (v10 << 28) - 0x10000000);
              if (v10 < 0)
              {
                v4 = (v2 + 6);
                v11 = 5;
                v9 = 0;
                while (*(v4 - 1) < 0)
                {
                  ++v4;
                  if (!--v11)
                  {
                    return v9;
                  }
                }
              }

              else
              {
                v4 = (v2 + 5);
              }
            }

            else
            {
              v4 = (v2 + 4);
            }
          }

          else
          {
            v4 = (v2 + 3);
          }
        }

        else
        {
          v4 = (v2 + 2);
        }
      }

      *(this + 1) = v4;
      return v5;
    }

    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v3)
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v7 = *(this + 11);
  v8 = *(this + 6);
  if (v7 <= 0 && v8 != *(this + 10))
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v8 - v7 >= *(this + 12))
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v9 = 0;
  *(this + 36) = 1;
  return v9;
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint64Slow(google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  while (v4 != 10)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 != *(this + 2))
      {
        break;
      }

      if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
      {
        return 0;
      }
    }

    v7 = *v6;
    v5 |= (*v6 & 0x7F) << (7 * v4);
    *(this + 1) = v6 + 1;
    ++v4;
    if ((v7 & 0x80) == 0)
    {
      *a2 = v5;
      return 1;
    }
  }

  return 0;
}

uint64_t google::protobuf::io::CodedOutputStream::Refresh(google::protobuf::io::CodedOutputStream *this)
{
  v4 = 0;
  result = (*(**this + 16))(*this, &v4, this + 16);
  if (result)
  {
    v3 = v4;
    *(this + 5) += *(this + 4);
  }

  else
  {
    v3 = 0;
    *(this + 4) = 0;
    *(this + 24) = 1;
  }

  *(this + 1) = v3;
  return result;
}

google::protobuf::io::CodedOutputStream *google::protobuf::io::CodedOutputStream::CodedOutputStream(google::protobuf::io::CodedOutputStream *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 12) = 0;
  google::protobuf::io::CodedOutputStream::Refresh(this);
  *(this + 24) = 0;
  return this;
}

void google::protobuf::io::CodedOutputStream::~CodedOutputStream(google::protobuf::io::CodedOutputStream *this)
{
  if (*(this + 4) >= 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

uint64_t google::protobuf::io::CodedOutputStream::WriteRaw(google::protobuf::io::CodedOutputStream *this, char *__src, int a3)
{
  while (1)
  {
    v6 = *(this + 4);
    v7 = *(this + 1);
    if (v6 >= a3)
    {
      break;
    }

    memcpy(v7, __src, v6);
    v8 = *(this + 4);
    a3 -= v8;
    __src += v8;
    result = google::protobuf::io::CodedOutputStream::Refresh(this);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = memcpy(v7, __src, a3);
  *(this + 1) += a3;
  *(this + 4) -= a3;
  return result;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteAliasedRaw(google::protobuf::io::CodedOutputStream *this, char *__src, uint64_t a3)
{
  v6 = *(this + 4);
  if (v6 <= a3)
  {
    if (v6 <= 0)
    {
      v9 = *(this + 5);
    }

    else
    {
      v8 = *this;
      (*(**this + 24))();
      v9 = *(this + 5) - *(this + 4);
      *(this + 1) = 0;
      *(this + 4) = 0;
    }

    *(this + 5) = v9 + a3;
    result = (*(**this + 40))(*this, __src, a3);
    *(this + 24) |= result ^ 1;
  }

  else
  {

    return google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, a3);
  }

  return result;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteLittleEndian32(uint64_t this, int a2)
{
  if (*(this + 16) < 4u)
  {
    v5 = v2;
    v6 = v3;
    v4 = a2;
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, &v4, 4);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 4;
    *(this + 16) -= 4;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteLittleEndian64(uint64_t this, uint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (*(this + 16) < 8u)
  {
    v3[0] = a2;
    this = google::protobuf::io::CodedOutputStream::WriteRaw(this, v3, 8);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 8;
    *(this + 16) -= 8;
  }

  v2 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteVarint32(uint64_t this, unsigned int a2)
{
  if (*(this + 16) < 5)
  {
    v9 = v2;
    v10 = v3;
    if (a2 < 0x80)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v8[v6++] = a2 | 0x80;
        v7 = a2 >> 14;
        a2 >>= 7;
      }

      while (v7);
    }

    v8[v6] = a2;
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v8, v6 + 1);
  }

  else
  {
    v4 = *(this + 8);
    *v4 = a2 | 0x80;
    if (a2 < 0x80)
    {
      *v4 = a2;
      v5 = 1;
    }

    else
    {
      v4[1] = (a2 >> 7) | 0x80;
      if (a2 < 0x4000)
      {
        v4[1] = a2 >> 7;
        v5 = 2;
      }

      else
      {
        v4[2] = (a2 >> 14) | 0x80;
        if (a2 < 0x200000)
        {
          v4[2] = a2 >> 14;
          v5 = 3;
        }

        else
        {
          v4[3] = (a2 >> 21) | 0x80;
          if (a2 >> 28)
          {
            v4[4] = a2 >> 28;
            v5 = 5;
          }

          else
          {
            v4[3] = a2 >> 21;
            v5 = 4;
          }
        }
      }
    }

    *(this + 8) += v5;
    *(this + 16) -= v5;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteVarint64(uint64_t this, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 16) >= 10)
  {
    v2 = *(this + 8);
    v3 = a2 >> 28;
    if (HIBYTE(a2))
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        v2[9] = -127;
        v4 = 10;
      }

      else
      {
        v4 = 9;
      }

      v2[8] = HIBYTE(a2) | 0x80;
    }

    else
    {
      if (!v3)
      {
        if (!(a2 >> 14))
        {
          if (a2 < 0x80)
          {
            v4 = 1;
LABEL_27:
            *v2 = a2 | 0x80;
            v2[v4 - 1] &= ~0x80u;
            *(this + 8) += v4;
            *(this + 16) -= v4;
            goto LABEL_28;
          }

          v4 = 2;
LABEL_26:
          v2[1] = (a2 >> 7) | 0x80;
          goto LABEL_27;
        }

        if (a2 < 0x200000)
        {
          v4 = 3;
          goto LABEL_25;
        }

        v4 = 4;
LABEL_24:
        v2[3] = (a2 >> 21) | 0x80;
LABEL_25:
        v2[2] = (a2 >> 14) | 0x80;
        goto LABEL_26;
      }

      if (!(v3 >> 14))
      {
        if (v3 < 0x80)
        {
          v4 = 5;
LABEL_23:
          v2[4] = v3 | 0x80;
          goto LABEL_24;
        }

        v4 = 6;
LABEL_22:
        v2[5] = (a2 >> 35) | 0x80;
        goto LABEL_23;
      }

      if (v3 < 0x200000)
      {
        v4 = 7;
        goto LABEL_21;
      }

      v4 = 8;
    }

    v2[7] = (a2 >> 49) | 0x80;
LABEL_21:
    v2[6] = (a2 >> 42) | 0x80;
    goto LABEL_22;
  }

  if (a2 < 0x80)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      __src[v5++] = a2 | 0x80;
      v6 = a2 >> 14;
      a2 >>= 7;
    }

    while (v6);
  }

  __src[v5] = a2;
  this = google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, v5 + 1);
LABEL_28:
  v7 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::VarintSize32Fallback(google::protobuf::io::CodedOutputStream *this)
{
  if (this >> 28)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (this >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (this >= 0x4000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (this >= 0x80)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t google::protobuf::io::CodedOutputStream::VarintSize64(unint64_t this)
{
  if ((this & 0x8000000000000000) == 0)
  {
    v1 = 9;
  }

  else
  {
    v1 = 10;
  }

  if (HIBYTE(this))
  {
    v2 = v1;
  }

  else
  {
    v2 = 8;
  }

  if (this >> 49)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7;
  }

  if (this >> 42)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (this >> 28)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  if (this >= 0x200000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (this >= 0x4000)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (this >= 0x80)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (this >> 35)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t CRDT::protobuf_ShutdownFile_crframework_2eproto(CRDT *this)
{
  if (CRDT::ObjectID::default_instance_)
  {
    (*(*CRDT::ObjectID::default_instance_ + 8))(CRDT::ObjectID::default_instance_);
  }

  if (CRDT::Timestamp::default_instance_)
  {
    (*(*CRDT::Timestamp::default_instance_ + 8))(CRDT::Timestamp::default_instance_);
  }

  if (CRDT::RegisterLatest::default_instance_)
  {
    (*(*CRDT::RegisterLatest::default_instance_ + 8))(CRDT::RegisterLatest::default_instance_);
  }

  if (CRDT::VectorTimestamp::default_instance_)
  {
    (*(*CRDT::VectorTimestamp::default_instance_ + 8))(CRDT::VectorTimestamp::default_instance_);
  }

  if (CRDT::VectorTimestamp_Element::default_instance_)
  {
    (*(*CRDT::VectorTimestamp_Element::default_instance_ + 8))(CRDT::VectorTimestamp_Element::default_instance_);
  }

  if (CRDT::Dictionary::default_instance_)
  {
    (*(*CRDT::Dictionary::default_instance_ + 8))(CRDT::Dictionary::default_instance_);
  }

  if (CRDT::Dictionary_Element::default_instance_)
  {
    (*(*CRDT::Dictionary_Element::default_instance_ + 8))(CRDT::Dictionary_Element::default_instance_);
  }

  if (CRDT::Index::default_instance_)
  {
    (*(*CRDT::Index::default_instance_ + 8))(CRDT::Index::default_instance_);
  }

  if (CRDT::Index_Element::default_instance_)
  {
    (*(*CRDT::Index_Element::default_instance_ + 8))(CRDT::Index_Element::default_instance_);
  }

  if (CRDT::OneOf::default_instance_)
  {
    (*(*CRDT::OneOf::default_instance_ + 8))(CRDT::OneOf::default_instance_);
  }

  if (CRDT::OneOf_Element::default_instance_)
  {
    (*(*CRDT::OneOf_Element::default_instance_ + 8))(CRDT::OneOf_Element::default_instance_);
  }

  if (CRDT::StringArray::default_instance_)
  {
    (*(*CRDT::StringArray::default_instance_ + 8))(CRDT::StringArray::default_instance_);
  }

  if (CRDT::StringArray_ArrayAttachment::default_instance_)
  {
    (*(*CRDT::StringArray_ArrayAttachment::default_instance_ + 8))(CRDT::StringArray_ArrayAttachment::default_instance_);
  }

  if (CRDT::Array::default_instance_)
  {
    (*(*CRDT::Array::default_instance_ + 8))(CRDT::Array::default_instance_);
  }

  if (CRDT::OrderedSet::default_instance_)
  {
    (*(*CRDT::OrderedSet::default_instance_ + 8))(CRDT::OrderedSet::default_instance_);
  }

  if (CRDT::Document::default_instance_)
  {
    (*(*CRDT::Document::default_instance_ + 8))(CRDT::Document::default_instance_);
  }

  if (CRDT::Document_CustomObject::default_instance_)
  {
    (*(*CRDT::Document_CustomObject::default_instance_ + 8))(CRDT::Document_CustomObject::default_instance_);
  }

  if (CRDT::Document_CustomObject_MapEntry::default_instance_)
  {
    (*(*CRDT::Document_CustomObject_MapEntry::default_instance_ + 8))(CRDT::Document_CustomObject_MapEntry::default_instance_);
  }

  result = CRDT::Document_DocObject::default_instance_;
  if (CRDT::Document_DocObject::default_instance_)
  {
    v2 = *(*CRDT::Document_DocObject::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CRDT::protobuf_AddDesc_crframework_2eproto_impl(CRDT *this, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x1E9BF1, 0x1E9BF0, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", a4);
  topotext::protobuf_AddDesc_topotext_2eproto(v4);
  operator new();
}

double CRDT::Timestamp::Timestamp(CRDT::Timestamp *this)
{
  *this = &unk_1F0D67278;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::RegisterLatest::RegisterLatest(CRDT::RegisterLatest *this)
{
  *this = &unk_1F0D672F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::VectorTimestamp::VectorTimestamp(CRDT::VectorTimestamp *this)
{
  *this = &unk_1F0D673E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::VectorTimestamp_Element::VectorTimestamp_Element(CRDT::VectorTimestamp_Element *this)
{
  *this = &unk_1F0D67368;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double CRDT::Dictionary::Dictionary(CRDT::Dictionary *this)
{
  *this = &unk_1F0D674D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::Dictionary_Element::Dictionary_Element(CRDT::Dictionary_Element *this)
{
  *this = &unk_1F0D67458;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

double CRDT::StringArray::StringArray(CRDT::StringArray *this)
{
  *this = &unk_1F0D677A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double CRDT::Array::Array(CRDT::Array *this)
{
  *this = &unk_1F0D67818;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::OrderedSet::OrderedSet(CRDT::OrderedSet *this)
{
  *this = &unk_1F0D67890;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::Document_CustomObject::Document_CustomObject(CRDT::Document_CustomObject *this)
{
  *this = &unk_1F0D67980;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::Document_CustomObject_MapEntry::Document_CustomObject_MapEntry(CRDT::Document_CustomObject_MapEntry *this)
{
  *this = &unk_1F0D67908;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double CRDT::Document_DocObject::Document_DocObject(CRDT::Document_DocObject *this)
{
  *this = &unk_1F0D679F8;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void CRDT::protobuf_AddDesc_crframework_2eproto(CRDT *this)
{
  v1 = CRDT::protobuf_AddDesc_crframework_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_1F0D671C0;
    v2[1] = CRDT::protobuf_AddDesc_crframework_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&CRDT::protobuf_AddDesc_crframework_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_19A1FB318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

CRDT::ObjectID *CRDT::ObjectID::ObjectID(CRDT::ObjectID *this)
{
  *this = &unk_1F0D67200;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CRDT::ObjectID::SharedCtor(this);
  return this;
}

void sub_19A1FB384(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void CRDT::ObjectID::SharedCtor(CRDT::ObjectID *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3[0] = &unk_1F0D671C0;
    v3[1] = google::protobuf::internal::InitEmptyString;
    v4 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v3);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 12) = 0;
}

void sub_19A1FB450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *CRDT::ObjectID::MergeFrom(CRDT::ObjectID *this, const CRDT::ObjectID *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 447);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v19, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 12);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v8 = *(a2 + 5);
      if (*(this + 12) != 1)
      {
        CRDT::ObjectID::clear_contents(this);
        v9 = 1;
LABEL_22:
        *(this + 12) = v9;
      }
    }

    else
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v6 = *(a2 + 5);
          if (*(this + 12) != 3)
          {
            CRDT::ObjectID::clear_contents(this);
            *(this + 12) = 3;
          }

          *(this + 5) = v6;
        }

        goto LABEL_28;
      }

      v8 = *(a2 + 5);
      if (*(this + 12) != 2)
      {
        CRDT::ObjectID::clear_contents(this);
        v9 = 2;
        goto LABEL_22;
      }
    }

    *(this + 5) = v8;
    goto LABEL_28;
  }

  switch(v5)
  {
    case 4:
      v10 = *(a2 + 5);
      if (*(this + 12) == 4)
      {
LABEL_25:
        std::string::operator=(*(this + 5), v10);
        break;
      }

      CRDT::ObjectID::clear_contents(this);
      v11 = 4;
LABEL_27:
      *(this + 12) = v11;
      operator new();
    case 5:
      v10 = *(a2 + 5);
      if (*(this + 12) == 5)
      {
        goto LABEL_25;
      }

      CRDT::ObjectID::clear_contents(this);
      v11 = 5;
      goto LABEL_27;
    case 6:
      v7 = *(a2 + 10);
      if (*(this + 12) != 6)
      {
        CRDT::ObjectID::clear_contents(this);
        *(this + 12) = 6;
      }

      *(this + 10) = v7;
      break;
  }

LABEL_28:
  v14 = *(a2 + 1);
  v13 = a2 + 8;
  v12 = v14;
  v15 = v13[23];
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = v13[23];
  }

  else
  {
    v17 = *(v13 + 1);
  }

  return std::string::append((this + 8), v16, v17);
}

void sub_19A1FB650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::ObjectID::~ObjectID(CRDT::ObjectID *this)
{
  v1 = this;
  *this = &unk_1F0D67200;
  if (*(this + 12))
  {
    this = CRDT::ObjectID::clear_contents(this);
  }

  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
}

{
  CRDT::ObjectID::~ObjectID(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::ObjectID::clear_contents(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2 == 5 || v2 == 4)
  {
    v3 = *(this + 40);
    if (v3)
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      this = MEMORY[0x19A8FD070](v3, 0x1012C40EC159624);
    }
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t CRDT::ObjectID::Clear(CRDT::ObjectID *this)
{
  result = CRDT::ObjectID::clear_contents(this);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::ObjectID::MergePartialFromCodedStream(CRDT::ObjectID *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v31, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v30, v31);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v10 = v7 >> 3;
        if (v7 >> 3 > 3)
        {
          break;
        }

        switch(v10)
        {
          case 1u:
            if (v7 != 8)
            {
              goto LABEL_33;
            }

            CRDT::ObjectID::clear_contents(this);
            v32 = 0;
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v12 >= v11 || (v13 = *v12, (v13 & 0x8000000000000000) != 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v32))
              {
                goto LABEL_75;
              }

              v13 = v32;
              v14 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v14 = v12 + 1;
              *(a2 + 1) = v14;
            }

            *(this + 5) = -(v13 & 1) ^ (v13 >> 1);
            *(this + 12) = 1;
            if (v14 < v11 && *v14 == 16)
            {
              *(a2 + 1) = v14 + 1;
              goto LABEL_42;
            }

            break;
          case 2u:
            if (v7 != 16)
            {
              goto LABEL_33;
            }

LABEL_42:
            CRDT::ObjectID::clear_contents(this);
            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v16 >= v15 || (v17 = *v16, v17 < 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
              {
                goto LABEL_75;
              }

              v18 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v17;
              v18 = v16 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 12) = 2;
            if (v18 < v15 && *v18 == 25)
            {
              *(a2 + 1) = v18 + 1;
              goto LABEL_50;
            }

            break;
          case 3u:
            if (v7 == 25)
            {
LABEL_50:
              CRDT::ObjectID::clear_contents(this);
              v32 = 0;
              if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v32))
              {
                goto LABEL_75;
              }

              *(this + 5) = v32;
              *(this + 12) = 3;
              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 34)
              {
                *(a2 + 1) = v19 + 1;
LABEL_54:
                CRDT::ObjectID::clear_contents(this);
                *(this + 12) = 4;
                operator new();
              }
            }

            else
            {
LABEL_33:
              if (!v7 || (v7 & 7) == 4)
              {
                goto LABEL_76;
              }

LABEL_35:
              if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v30, v4))
              {
                goto LABEL_75;
              }
            }

            break;
          default:
            goto LABEL_6;
        }
      }

      if (v10 != 4)
      {
        break;
      }

      if (v7 != 34)
      {
        goto LABEL_33;
      }

      if (*(this + 12) != 4)
      {
        goto LABEL_54;
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
      {
LABEL_75:
        v28 = 0;
        goto LABEL_77;
      }

      v21 = *(a2 + 1);
      if (v21 < *(a2 + 2) && *v21 == 42)
      {
        *(a2 + 1) = v21 + 1;
LABEL_59:
        if (*(this + 12) != 5)
        {
          CRDT::ObjectID::clear_contents(this);
          *(this + 12) = 5;
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
        {
          goto LABEL_75;
        }

        v23 = *(a2 + 1);
        if (v23 < *(a2 + 2) && *v23 == 48)
        {
          *(a2 + 1) = v23 + 1;
          goto LABEL_66;
        }
      }
    }

    if (v10 == 5)
    {
      if (v7 != 42)
      {
        goto LABEL_33;
      }

      goto LABEL_59;
    }

    if (v10 != 6)
    {
      break;
    }

    if (v7 != 48)
    {
      goto LABEL_33;
    }

LABEL_66:
    CRDT::ObjectID::clear_contents(this);
    v25 = *(a2 + 1);
    v24 = *(a2 + 2);
    if (v25 >= v24 || (v26 = *v25, v26 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
      {
        goto LABEL_75;
      }

      v27 = *(a2 + 1);
      v24 = *(a2 + 2);
    }

    else
    {
      *(this + 10) = v26;
      v27 = v25 + 1;
      *(a2 + 1) = v27;
    }

    *(this + 12) = 6;
    if (v27 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v28 = 1;
      *(a2 + 36) = 1;
      goto LABEL_77;
    }
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_76:
  v28 = 1;
LABEL_77:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v30);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v31);
  return v28;
}

void sub_19A1FBC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::ObjectID::SerializeWithCachedSizes(CRDT::ObjectID *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 12);
  if (v6 == 1)
  {
    google::protobuf::internal::WireFormatLite::WriteSInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 2)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 3)
  {
    google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(this + 5), a3);
    v6 = *(this + 12);
  }

  if (v6 == 4)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(4, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 5)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(5, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(this + 10), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::ObjectID::ByteSize(CRDT::ObjectID *this)
{
  v2 = *(this + 12);
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
      v11 = (2 * *(this + 5)) ^ (*(this + 5) >> 63);
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          v3 = 9;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_25;
      }

      v11 = *(this + 5);
    }

    v13 = google::protobuf::io::CodedOutputStream::VarintSize64(v11);
LABEL_24:
    v3 = v13 + 1;
    goto LABEL_25;
  }

  if (v2 != 4 && v2 != 5)
  {
    if (v2 != 6)
    {
      v3 = 0;
      goto LABEL_25;
    }

    v4 = *(this + 10);
    if (v4 < 0x80)
    {
      v3 = 2;
      goto LABEL_25;
    }

    v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    goto LABEL_24;
  }

  v5 = *(this + 5);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v12 + 1;
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = v10 + v6;
LABEL_25:
  v14 = *(this + 31);
  if (v14 < 0)
  {
    v14 = *(this + 2);
  }

  result = (v3 + v14);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::ObjectID::CheckTypeAndMergeFrom(CRDT::ObjectID *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::ObjectID::MergeFrom(this, lpsrc);
}

std::string *CRDT::Timestamp::MergeFrom(CRDT::Timestamp *this, const CRDT::Timestamp *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 706);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 6);
      *(this + 8) |= 2u;
      *(this + 6) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void sub_19A1FBFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Timestamp::~Timestamp(void **this)
{
  *this = &unk_1F0D67278;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Timestamp::~Timestamp(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::Timestamp::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t CRDT::Timestamp::MergePartialFromCodedStream(CRDT::Timestamp *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    v21 = 0;
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v21))
    {
      break;
    }

    v15 = v21;
    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 6) = v15;
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_19A1FC30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Timestamp::SerializeWithCachedSizes(CRDT::Timestamp *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 6), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::Timestamp::ByteSize(CRDT::Timestamp *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (*(this + 32))
  {
    v2 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_7:
    v2 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  }

LABEL_8:
  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  result = (v2 + v3);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Timestamp::CheckTypeAndMergeFrom(CRDT::Timestamp *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Timestamp::MergeFrom(this, lpsrc);
}

std::string *CRDT::RegisterLatest::MergeFrom(CRDT::RegisterLatest *this, const CRDT::RegisterLatest *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 949);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v7 = *(CRDT::RegisterLatest::default_instance_ + 40);
      }

      this = CRDT::Timestamp::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v9 = *(CRDT::RegisterLatest::default_instance_ + 48);
      }

      CRDT::ObjectID::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

void CRDT::RegisterLatest::~RegisterLatest(void **this)
{
  *this = &unk_1F0D672F0;
  CRDT::RegisterLatest::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::RegisterLatest::~RegisterLatest(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::RegisterLatest::SharedDtor(CRDT::RegisterLatest *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::RegisterLatest::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CRDT::RegisterLatest::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(this + 40);
      if (v3)
      {
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 32) = 0;
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

    if ((*(this + 32) & 2) != 0)
    {
      v4 = *(this + 48);
      if (v4)
      {
        this = CRDT::ObjectID::clear_contents(*(this + 48));
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t CRDT::RegisterLatest::MergePartialFromCodedStream(CRDT::RegisterLatest *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      v7 = v6 | 0x100000000;
    }

    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        goto LABEL_48;
      }

      v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!CRDT::Timestamp::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_48;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_33:
        *(this + 8) |= 2u;
        v19 = *(this + 6);
        if (!v19)
        {
          operator new();
        }

        v30 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::ObjectID::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v26 = 1;
          *(a2 + 36) = 1;
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_49;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }
  }

  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_49:
  v26 = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_19A1FCC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x10B3C407D90225ELL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::RegisterLatest::SerializeWithCachedSizes(CRDT::RegisterLatest *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::RegisterLatest::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 6);
    if (!v6)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v6 = *(CRDT::RegisterLatest::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v3 + 31);
  if (v7 < 0)
  {
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
  }

  else
  {
    v8 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::RegisterLatest::ByteSize(CRDT::RegisterLatest *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v3 = *(CRDT::RegisterLatest::default_instance_ + 40);
  }

  v4 = CRDT::Timestamp::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 6);
    if (!v7)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v7 = *(CRDT::RegisterLatest::default_instance_ + 48);
    }

    v8 = CRDT::ObjectID::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::RegisterLatest::CheckTypeAndMergeFrom(CRDT::RegisterLatest *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::RegisterLatest::MergeFrom(this, lpsrc);
}

std::string *CRDT::VectorTimestamp_Element::MergeFrom(CRDT::VectorTimestamp_Element *this, const CRDT::VectorTimestamp_Element *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 1216);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v14 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v14;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v15 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v15;
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      v6 = *(a2 + 7);
      *(this + 8) |= 4u;
      *(this + 7) = v6;
    }
  }

LABEL_8:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_19A1FCFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::VectorTimestamp_Element::~VectorTimestamp_Element(void **this)
{
  *this = &unk_1F0D67368;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::VectorTimestamp_Element::~VectorTimestamp_Element(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::VectorTimestamp_Element::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t CRDT::VectorTimestamp_Element::MergePartialFromCodedStream(CRDT::VectorTimestamp_Element *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v24, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v23, v24);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v7 == 16)
        {
          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_32;
        }

LABEL_22:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_24;
      }

      if (v9 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_50;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 8) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
LABEL_32:
          if (v15 >= v10 || (v17 = *v15, v17 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6))
            {
              goto LABEL_50;
            }

            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v17;
            v18 = v15 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 8) |= 2u;
          if (v18 < v10 && *v18 == 24)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_13:
        if (v7)
        {
          v14 = (v7 & 7) == 4;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
LABEL_49:
          v21 = 1;
          goto LABEL_51;
        }

LABEL_24:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v23, v4))
        {
          goto LABEL_50;
        }
      }
    }

    if (v7 != 24)
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_40:
    if (v16 < v10)
    {
      v19 = *v16;
      if ((v19 & 0x8000000000000000) == 0)
      {
        *(this + 7) = v19;
        v20 = v16 + 1;
        *(a2 + 1) = v20;
        goto LABEL_45;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7))
    {
      break;
    }

    v20 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_45:
    *(this + 8) |= 4u;
    if (v20 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v21 = 1;
      *(a2 + 36) = 1;
      goto LABEL_51;
    }
  }

LABEL_50:
  v21 = 0;
LABEL_51:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v23);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v24);
  return v21;
}

void sub_19A1FD354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::VectorTimestamp_Element::SerializeWithCachedSizes(CRDT::VectorTimestamp_Element *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 6), a2, a4);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteInt64(3, *(this + 7), a2, a4);
  }

LABEL_5:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::VectorTimestamp_Element::ByteSize(CRDT::VectorTimestamp_Element *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (*(this + 32))
  {
    v3 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_7:
    v3 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v2 = *(this + 8);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_10:
  v4 = *(this + 31);
  if (v4 < 0)
  {
    v4 = *(this + 2);
  }

  result = (v3 + v4);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::VectorTimestamp_Element::CheckTypeAndMergeFrom(CRDT::VectorTimestamp_Element *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::VectorTimestamp_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::VectorTimestamp::MergeFrom(CRDT::VectorTimestamp *this, const CRDT::VectorTimestamp *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 1414);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>((this + 40), (a2 + 40));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_19A1FD5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::VectorTimestamp::~VectorTimestamp(CRDT::VectorTimestamp *this)
{
  *this = &unk_1F0D673E0;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::VectorTimestamp::~VectorTimestamp(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::VectorTimestamp::Clear(CRDT::VectorTimestamp *this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::VectorTimestamp::MergePartialFromCodedStream(CRDT::VectorTimestamp *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 != 10)
      {
        break;
      }

      while (1)
      {
        v9 = *(this + 13);
        v10 = *(this + 12);
        if (v10 >= v9)
        {
          if (v9 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v9 + 1);
          }

          operator new();
        }

        v11 = *(this + 5);
        *(this + 12) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v27 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::VectorTimestamp_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v20 >= v21 || *v20 != 10)
        {
          break;
        }

        *(a2 + 1) = v20 + 1;
      }

      if (v20 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
  }

  while (!v22 && google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4));
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_19A1FD9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::VectorTimestamp::SerializeWithCachedSizes(CRDT::VectorTimestamp *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t CRDT::VectorTimestamp::ByteSize(CRDT::VectorTimestamp *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::VectorTimestamp_Element::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v2 += v6 + v7;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v2 + v8);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::VectorTimestamp::CheckTypeAndMergeFrom(CRDT::VectorTimestamp *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::VectorTimestamp::MergeFrom(this, lpsrc);
}

std::string *CRDT::Dictionary_Element::MergeFrom(CRDT::Dictionary_Element *this, const CRDT::Dictionary_Element *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 1725);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v7 = *(CRDT::Dictionary_Element::default_instance_ + 40);
      }

      this = CRDT::ObjectID::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v9 = *(CRDT::Dictionary_Element::default_instance_ + 48);
      }

      this = CRDT::ObjectID::MergeFrom(v8, v9);
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 8) |= 4u;
      v10 = *(v3 + 7);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 7);
      if (!v11)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v11 = *(CRDT::Dictionary_Element::default_instance_ + 56);
      }

      this = CRDT::VectorTimestamp::MergeFrom(v10, v11);
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      *(v3 + 8) |= 8u;
      v12 = *(v3 + 8);
      if (!v12)
      {
        operator new();
      }

      v13 = *(a2 + 8);
      if (!v13)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v13 = *(CRDT::Dictionary_Element::default_instance_ + 64);
      }

      CRDT::RegisterLatest::MergeFrom(v12, v13);
    }
  }

  v16 = *(a2 + 1);
  v15 = a2 + 8;
  v14 = v16;
  v17 = v15[23];
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = v15[23];
  }

  else
  {
    v19 = *(v15 + 1);
  }

  return std::string::append((v3 + 8), v18, v19);
}

void CRDT::Dictionary_Element::~Dictionary_Element(void **this)
{
  *this = &unk_1F0D67458;
  CRDT::Dictionary_Element::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Dictionary_Element::~Dictionary_Element(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::Dictionary_Element::SharedDtor(CRDT::Dictionary_Element *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Dictionary_Element::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 8);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CRDT::Dictionary_Element::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(this + 40);
      if (v3)
      {
        this = CRDT::ObjectID::clear_contents(*(this + 40));
        *(v3 + 32) = 0;
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

    if ((*(v1 + 32) & 2) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        this = CRDT::ObjectID::clear_contents(*(v1 + 48));
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }

    if ((*(v1 + 32) & 4) != 0)
    {
      v5 = *(v1 + 56);
      if (v5)
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v5 + 40);
        *(v5 + 32) = 0;
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

    if ((*(v1 + 32) & 8) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = CRDT::RegisterLatest::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t CRDT::Dictionary_Element::MergePartialFromCodedStream(CRDT::Dictionary_Element *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v46, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v45, v46);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v9 = v7 >> 3;
        if (v7 >> 3 > 2)
        {
          break;
        }

        if (v9 == 1)
        {
          if (v7 != 10)
          {
            goto LABEL_28;
          }

          *(this + 8) |= 1u;
          v11 = *(this + 5);
          if (!v11)
          {
            operator new();
          }

          v47 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || *v12 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
            {
              goto LABEL_84;
            }
          }

          else
          {
            v47 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          v13 = *(a2 + 14);
          v14 = *(a2 + 15);
          *(a2 + 14) = v13 + 1;
          if (v13 >= v14)
          {
            goto LABEL_84;
          }

          v15 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47);
          if (!CRDT::ObjectID::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_84;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
          v16 = *(a2 + 14);
          v17 = __OFSUB__(v16, 1);
          v18 = v16 - 1;
          if (v18 < 0 == v17)
          {
            *(a2 + 14) = v18;
          }

          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 18)
          {
            *(a2 + 1) = v19 + 1;
LABEL_41:
            *(this + 8) |= 2u;
            v20 = *(this + 6);
            if (!v20)
            {
              operator new();
            }

            v47 = 0;
            v21 = *(a2 + 1);
            if (v21 >= *(a2 + 2) || *v21 < 0)
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                goto LABEL_84;
              }
            }

            else
            {
              v47 = *v21;
              *(a2 + 1) = v21 + 1;
            }

            v22 = *(a2 + 14);
            v23 = *(a2 + 15);
            *(a2 + 14) = v22 + 1;
            if (v22 >= v23)
            {
              goto LABEL_84;
            }

            v24 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47);
            if (!CRDT::ObjectID::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
            {
              goto LABEL_84;
            }

            google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
            v25 = *(a2 + 14);
            v17 = __OFSUB__(v25, 1);
            v26 = v25 - 1;
            if (v26 < 0 == v17)
            {
              *(a2 + 14) = v26;
            }

            v27 = *(a2 + 1);
            if (v27 < *(a2 + 2) && *v27 == 26)
            {
              *(a2 + 1) = v27 + 1;
              goto LABEL_55;
            }
          }
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_15;
          }

          if (v7 == 18)
          {
            goto LABEL_41;
          }

LABEL_28:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_85;
          }

LABEL_30:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v45, v4))
          {
            goto LABEL_84;
          }
        }
      }

      if (v9 != 3)
      {
        break;
      }

      if (v7 != 26)
      {
        goto LABEL_28;
      }

LABEL_55:
      *(this + 8) |= 4u;
      v28 = *(this + 7);
      if (!v28)
      {
        operator new();
      }

      v47 = 0;
      v29 = *(a2 + 1);
      if (v29 >= *(a2 + 2) || *v29 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
        {
          goto LABEL_84;
        }
      }

      else
      {
        v47 = *v29;
        *(a2 + 1) = v29 + 1;
      }

      v30 = *(a2 + 14);
      v31 = *(a2 + 15);
      *(a2 + 14) = v30 + 1;
      if (v30 >= v31)
      {
        goto LABEL_84;
      }

      v32 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47);
      if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v28, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_84;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
      v33 = *(a2 + 14);
      v17 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v34 < 0 == v17)
      {
        *(a2 + 14) = v34;
      }

      v35 = *(a2 + 1);
      if (v35 < *(a2 + 2) && *v35 == 34)
      {
        *(a2 + 1) = v35 + 1;
        goto LABEL_69;
      }
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 34)
    {
      goto LABEL_28;
    }

LABEL_69:
    *(this + 8) |= 8u;
    v36 = *(this + 8);
    if (!v36)
    {
      operator new();
    }

    v47 = 0;
    v37 = *(a2 + 1);
    if (v37 >= *(a2 + 2) || *v37 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v47 = *v37;
      *(a2 + 1) = v37 + 1;
    }

    v38 = *(a2 + 14);
    v39 = *(a2 + 15);
    *(a2 + 14) = v38 + 1;
    if (v38 >= v39 || (v40 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47), !CRDT::RegisterLatest::MergePartialFromCodedStream(v36, a2)) || *(a2 + 36) != 1)
    {
LABEL_84:
      v43 = 0;
      goto LABEL_86;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v40);
    v41 = *(a2 + 14);
    v17 = __OFSUB__(v41, 1);
    v42 = v41 - 1;
    if (v42 < 0 == v17)
    {
      *(a2 + 14) = v42;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v43 = 1;
      *(a2 + 36) = 1;
      goto LABEL_86;
    }
  }

LABEL_15:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_85:
  v43 = 1;
LABEL_86:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v45);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v46);
  return v43;
}

void sub_19A1FE720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x10B3C407D90225ELL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Dictionary_Element::SerializeWithCachedSizes(CRDT::Dictionary_Element *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::Dictionary_Element::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 6);
  if (!v6)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(this);
    v6 = *(CRDT::Dictionary_Element::default_instance_ + 48);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  v4 = *(v3 + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v3 + 7);
  if (!v7)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(this);
    v7 = *(CRDT::Dictionary_Element::default_instance_ + 56);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2);
  if ((*(v3 + 8) & 8) != 0)
  {
LABEL_15:
    v8 = *(v3 + 8);
    if (!v8)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v8 = *(CRDT::Dictionary_Element::default_instance_ + 64);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2);
  }

LABEL_18:
  v9 = *(v3 + 31);
  if (v9 < 0)
  {
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
  }

  else
  {
    v10 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v10, v9);
}

uint64_t CRDT::Dictionary_Element::ByteSize(CRDT::Dictionary_Element *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_33;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 5);
  if (!v4)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v4 = *(CRDT::Dictionary_Element::default_instance_ + 40);
  }

  v5 = CRDT::ObjectID::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  v2 = *(this + 8);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 6);
    if (!v8)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v8 = *(CRDT::Dictionary_Element::default_instance_ + 48);
    }

    v9 = CRDT::ObjectID::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
    v2 = *(this + 8);
  }

LABEL_18:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v12 = *(this + 7);
  if (!v12)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v12 = *(CRDT::Dictionary_Element::default_instance_ + 56);
  }

  v13 = CRDT::VectorTimestamp::ByteSize(v12);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
  }

  else
  {
    v15 = 1;
  }

  v3 += v14 + v15 + 1;
  if ((*(this + 8) & 8) != 0)
  {
LABEL_27:
    v16 = *(this + 8);
    if (!v16)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v16 = *(CRDT::Dictionary_Element::default_instance_ + 64);
    }

    v17 = CRDT::RegisterLatest::ByteSize(v16);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    }

    else
    {
      v19 = 1;
    }

    v3 += v18 + v19 + 1;
  }

LABEL_33:
  v20 = *(this + 31);
  if (v20 < 0)
  {
    v20 = *(this + 2);
  }

  result = (v3 + v20);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Dictionary_Element::CheckTypeAndMergeFrom(CRDT::Dictionary_Element *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Dictionary_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::Dictionary::MergeFrom(CRDT::Dictionary *this, const CRDT::Dictionary *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 1927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>((this + 40), (a2 + 40));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_19A1FEB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Dictionary::~Dictionary(CRDT::Dictionary *this)
{
  *this = &unk_1F0D674D0;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Dictionary::~Dictionary(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::Dictionary::Clear(CRDT::Dictionary *this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::Dictionary::MergePartialFromCodedStream(CRDT::Dictionary *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 != 10)
      {
        break;
      }

      while (1)
      {
        v9 = *(this + 13);
        v10 = *(this + 12);
        if (v10 >= v9)
        {
          if (v9 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v9 + 1);
          }

          operator new();
        }

        v11 = *(this + 5);
        *(this + 12) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v27 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::Dictionary_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v20 >= v21 || *v20 != 10)
        {
          break;
        }

        *(a2 + 1) = v20 + 1;
      }

      if (v20 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
  }

  while (!v22 && google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4));
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_19A1FEF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Dictionary::SerializeWithCachedSizes(CRDT::Dictionary *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t CRDT::Dictionary::ByteSize(CRDT::Dictionary *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::Dictionary_Element::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v2 += v6 + v7;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v2 + v8);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Dictionary::CheckTypeAndMergeFrom(CRDT::Dictionary *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Dictionary::MergeFrom(this, lpsrc);
}

std::string *CRDT::Index_Element::MergeFrom(CRDT::Index_Element *this, const CRDT::Index_Element *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 2157);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 6);
      *(this + 8) |= 2u;
      *(this + 6) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void sub_19A1FF1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Index_Element::~Index_Element(void **this)
{
  *this = &unk_1F0D67548;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Index_Element::~Index_Element(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::Index_Element::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t CRDT::Index_Element::MergePartialFromCodedStream(CRDT::Index_Element *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    v21 = 0;
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v21))
    {
      break;
    }

    v15 = v21;
    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 6) = v15;
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_19A1FF528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Index_Element::SerializeWithCachedSizes(CRDT::Index_Element *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 6), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::Index_Element::ByteSize(CRDT::Index_Element *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (*(this + 32))
  {
    v2 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_7:
    v2 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  }

LABEL_8:
  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  result = (v2 + v3);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Index_Element::CheckTypeAndMergeFrom(CRDT::Index_Element *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Index_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::Index::MergeFrom(CRDT::Index *this, const CRDT::Index *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 2351);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>((this + 40), (a2 + 40));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_19A1FF780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Index::~Index(CRDT::Index *this)
{
  *this = &unk_1F0D675C0;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Index::~Index(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::Index::Clear(CRDT::Index *this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::Index::MergePartialFromCodedStream(CRDT::Index *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 != 10)
      {
        break;
      }

      while (1)
      {
        v9 = *(this + 13);
        v10 = *(this + 12);
        if (v10 >= v9)
        {
          if (v9 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v9 + 1);
          }

          operator new();
        }

        v11 = *(this + 5);
        *(this + 12) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v27 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::Index_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v20 >= v21 || *v20 != 10)
        {
          break;
        }

        *(a2 + 1) = v20 + 1;
      }

      if (v20 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
  }

  while (!v22 && google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4));
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_19A1FFB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Index::SerializeWithCachedSizes(CRDT::Index *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t CRDT::Index::ByteSize(CRDT::Index *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::Index_Element::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v2 += v6 + v7;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v2 + v8);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Index::CheckTypeAndMergeFrom(CRDT::Index *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Index::MergeFrom(this, lpsrc);
}

std::string *CRDT::OneOf_Element::MergeFrom(CRDT::OneOf_Element *this, const CRDT::OneOf_Element *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 2586);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v7 = *(CRDT::OneOf_Element::default_instance_ + 40);
      }

      this = CRDT::ObjectID::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v9 = *(CRDT::OneOf_Element::default_instance_ + 48);
      }

      CRDT::Timestamp::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

void CRDT::OneOf_Element::~OneOf_Element(void **this)
{
  *this = &unk_1F0D67638;
  CRDT::OneOf_Element::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::OneOf_Element::~OneOf_Element(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::OneOf_Element::SharedDtor(CRDT::OneOf_Element *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::OneOf_Element::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CRDT::OneOf_Element::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(this + 40);
      if (v3)
      {
        this = CRDT::ObjectID::clear_contents(*(this + 40));
        *(v3 + 32) = 0;
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

    if ((*(v1 + 32) & 2) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        *(v4 + 40) = 0;
        *(v4 + 48) = 0;
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t CRDT::OneOf_Element::MergePartialFromCodedStream(CRDT::OneOf_Element *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      v7 = v6 | 0x100000000;
    }

    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        goto LABEL_48;
      }

      v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!CRDT::ObjectID::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_48;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_33:
        *(this + 8) |= 2u;
        v19 = *(this + 6);
        if (!v19)
        {
          operator new();
        }

        v30 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::Timestamp::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v26 = 1;
          *(a2 + 36) = 1;
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_49;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }
  }

  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_49:
  v26 = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_19A2004BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x10B3C407D90225ELL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::OneOf_Element::SerializeWithCachedSizes(CRDT::OneOf_Element *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::OneOf_Element::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 6);
    if (!v6)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v6 = *(CRDT::OneOf_Element::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v3 + 31);
  if (v7 < 0)
  {
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
  }

  else
  {
    v8 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::OneOf_Element::ByteSize(CRDT::OneOf_Element *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v3 = *(CRDT::OneOf_Element::default_instance_ + 40);
  }

  v4 = CRDT::ObjectID::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 6);
    if (!v7)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v7 = *(CRDT::OneOf_Element::default_instance_ + 48);
    }

    v8 = CRDT::Timestamp::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::OneOf_Element::CheckTypeAndMergeFrom(CRDT::OneOf_Element *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::OneOf_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::OneOf::MergeFrom(CRDT::OneOf *this, const CRDT::OneOf *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 2780);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>((this + 40), (a2 + 40));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_19A2007CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::OneOf::~OneOf(CRDT::OneOf *this)
{
  *this = &unk_1F0D676B0;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::OneOf::~OneOf(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::OneOf::Clear(CRDT::OneOf *this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::OneOf::MergePartialFromCodedStream(CRDT::OneOf *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 != 10)
      {
        break;
      }

      while (1)
      {
        v9 = *(this + 13);
        v10 = *(this + 12);
        if (v10 >= v9)
        {
          if (v9 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v9 + 1);
          }

          operator new();
        }

        v11 = *(this + 5);
        *(this + 12) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v27 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::OneOf_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v20 >= v21 || *v20 != 10)
        {
          break;
        }

        *(a2 + 1) = v20 + 1;
      }

      if (v20 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
  }

  while (!v22 && google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4));
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_19A200BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::OneOf::SerializeWithCachedSizes(CRDT::OneOf *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t CRDT::OneOf::ByteSize(CRDT::OneOf *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::OneOf_Element::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v2 += v6 + v7;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v2 + v8);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::OneOf::CheckTypeAndMergeFrom(CRDT::OneOf *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::OneOf::MergeFrom(this, lpsrc);
}

CRDT::StringArray_ArrayAttachment *CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(CRDT::StringArray_ArrayAttachment *this)
{
  *this = &unk_1F0D67728;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CRDT::StringArray_ArrayAttachment::SharedCtor(this);
  return this;
}

void sub_19A200E04(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void CRDT::StringArray_ArrayAttachment::SharedCtor(CRDT::StringArray_ArrayAttachment *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_1F0D671C0;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_19A200ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

CRDT::StringArray_ArrayAttachment *CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(CRDT::StringArray_ArrayAttachment *this, const CRDT::StringArray_ArrayAttachment *a2)
{
  *this = &unk_1F0D67728;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CRDT::StringArray_ArrayAttachment::SharedCtor(this);
  CRDT::StringArray_ArrayAttachment::MergeFrom(this, a2);
  return this;
}

void sub_19A200F4C(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

std::string *CRDT::StringArray_ArrayAttachment::MergeFrom(CRDT::StringArray_ArrayAttachment *this, const CRDT::StringArray_ArrayAttachment *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 3006);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v8 = *(this + 6);
      if (v8 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  v11 = *(a2 + 1);
  v10 = a2 + 8;
  v9 = v11;
  v12 = v10[23];
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
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  return std::string::append((this + 8), v13, v14);
}

void sub_19A201090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(void **this)
{
  *this = &unk_1F0D67728;
  CRDT::StringArray_ArrayAttachment::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::StringArray_ArrayAttachment::SharedDtor(CRDT::StringArray_ArrayAttachment *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = *(this + 6);
  if (v1)
  {
    v2 = v1 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x19A8FD070](v1, 0x1012C40EC159624);
  }

  CRDT::protobuf_AddDesc_crframework_2eproto(this);
}

uint64_t CRDT::StringArray_ArrayAttachment::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    *(this + 40) = 0;
    if ((v1 & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 48);
      if (v2 != google::protobuf::internal::empty_string_)
      {
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
    }
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t CRDT::StringArray_ArrayAttachment::MergePartialFromCodedStream(CRDT::StringArray_ArrayAttachment *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v19, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v18, v19);
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        if (v7 >> 3 == 2)
        {
          if (v7 == 18)
          {
            v14 = *(this + 8);
            goto LABEL_28;
          }

LABEL_19:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_36;
          }

          goto LABEL_16;
        }

        if (v7 >> 3 == 1)
        {
          break;
        }

LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_36:
          v16 = 1;
          goto LABEL_38;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v18, v4))
        {
          goto LABEL_37;
        }
      }

      if (v7 != 8)
      {
        goto LABEL_19;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
        {
          goto LABEL_37;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      v14 = *(this + 8) | 1;
      *(this + 8) = v14;
    }

    while (v12 >= v9 || *v12 != 18);
    *(a2 + 1) = v12 + 1;
LABEL_28:
    *(this + 8) = v14 | 2;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v15 = *(this + 6);
    if (v15 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v15))
    {
      break;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v16 = 1;
      *(a2 + 36) = 1;
      goto LABEL_38;
    }
  }

LABEL_37:
  v16 = 0;
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v18);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v19);
  return v16;
}

void sub_19A2014F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::StringArray_ArrayAttachment::SerializeWithCachedSizes(CRDT::StringArray_ArrayAttachment *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(2, *(this + 6), a2);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::StringArray_ArrayAttachment::ByteSize(CRDT::StringArray_ArrayAttachment *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (*(this + 32))
  {
    v2 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v3 = *(this + 6);
  v4 = *(v3 + 23);
  v5 = v4;
  v6 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 0x80)
  {
    v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    v4 = *(v3 + 23);
    v6 = *(v3 + 8);
    v5 = *(v3 + 23);
  }

  else
  {
    v8 = 1;
  }

  if (v5 < 0)
  {
    v4 = v6;
  }

  v2 += v8 + v4 + 1;
LABEL_16:
  v9 = *(this + 31);
  if (v9 < 0)
  {
    v9 = *(this + 2);
  }

  result = (v2 + v9);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::StringArray_ArrayAttachment::CheckTypeAndMergeFrom(CRDT::StringArray_ArrayAttachment *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::StringArray_ArrayAttachment::MergeFrom(this, lpsrc);
}

std::string *CRDT::StringArray::MergeFrom(CRDT::StringArray *this, const CRDT::StringArray *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 3239);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>((this + 48), (a2 + 48));
  if (*(a2 + 32))
  {
    *(this + 8) |= 1u;
    v6 = *(this + 5);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 5);
    if (!v7)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(v5);
      v7 = *(CRDT::StringArray::default_instance_ + 40);
    }

    topotext::String::MergeFrom(v6, v7);
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void CRDT::StringArray::~StringArray(CRDT::StringArray *this)
{
  *this = &unk_1F0D677A0;
  CRDT::StringArray::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::StringArray::~StringArray(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::StringArray::SharedDtor(CRDT::StringArray *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::StringArray::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CRDT::StringArray::Clear(CRDT::StringArray *this)
{
  if (*(this + 32))
  {
    v2 = *(this + 5);
    if (v2)
    {
      topotext::String::Clear(v2);
    }
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 48);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::StringArray::MergePartialFromCodedStream(CRDT::StringArray *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v33, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v32, v33);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          goto LABEL_33;
        }

LABEL_21:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_55;
        }

        goto LABEL_18;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

LABEL_14:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_55:
        v30 = 1;
        goto LABEL_56;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v32, v4))
      {
        goto LABEL_54;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_21;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 5);
    if (!v9)
    {
      operator new();
    }

    v34 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v34 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      goto LABEL_54;
    }

    v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v34);
    if (!topotext::String::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
    {
      goto LABEL_54;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
    v15 = *(a2 + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(a2 + 14) = v17;
    }

    v18 = *(a2 + 1);
    if (v18 < *(a2 + 2) && *v18 == 18)
    {
      do
      {
        *(a2 + 1) = v18 + 1;
LABEL_33:
        v19 = *(this + 15);
        v20 = *(this + 14);
        if (v20 >= v19)
        {
          if (v19 == *(this + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v19 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New();
        }

        v21 = *(this + 6);
        *(this + 14) = v20 + 1;
        v22 = *(v21 + 8 * v20);
        v34 = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
          {
            goto LABEL_54;
          }
        }

        else
        {
          v34 = *v23;
          *(a2 + 1) = v23 + 1;
        }

        v24 = *(a2 + 14);
        v25 = *(a2 + 15);
        *(a2 + 14) = v24 + 1;
        if (v24 >= v25 || (v26 = google::protobuf::io::CodedInputStream::PushLimit(a2, v34), !CRDT::StringArray_ArrayAttachment::MergePartialFromCodedStream(v22, a2)) || *(a2 + 36) != 1)
        {
LABEL_54:
          v30 = 0;
          goto LABEL_56;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
        v27 = *(a2 + 14);
        v16 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v16)
        {
          *(a2 + 14) = v28;
        }

        v18 = *(a2 + 1);
        v29 = *(a2 + 2);
      }

      while (v18 < v29 && *v18 == 18);
      if (v18 == v29 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v30 = 1;
  *(a2 + 36) = 1;
LABEL_56:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v32);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v33);
  return v30;
}

void sub_19A201D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x10B3C406C843DA2);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::StringArray::SerializeWithCachedSizes(CRDT::StringArray *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    v4 = *(this + 5);
    if (!v4)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v4 = *(CRDT::StringArray::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(1, v4, a2);
  }

  if (*(this + 14) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(this + 48, v5);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
      ++v5;
    }

    while (v5 < *(this + 14));
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::StringArray::ByteSize(CRDT::StringArray *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    if (!v3)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v3 = *(CRDT::StringArray::default_instance_ + 40);
    }

    v4 = topotext::String::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = *(this + 14);
  v8 = v7 + v2;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(this + 48, v9);
      v11 = CRDT::StringArray_ArrayAttachment::ByteSize(v10);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      }

      else
      {
        v13 = 1;
      }

      v8 += v12 + v13;
      ++v9;
    }

    while (v9 < *(this + 14));
  }

  v14 = *(this + 31);
  if (v14 < 0)
  {
    v14 = *(this + 2);
  }

  result = (v8 + v14);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::StringArray::CheckTypeAndMergeFrom(CRDT::StringArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::StringArray::MergeFrom(this, lpsrc);
}

std::string *CRDT::Array::MergeFrom(CRDT::Array *this, const CRDT::Array *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 3480);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v7 = *(CRDT::Array::default_instance_ + 40);
      }

      this = CRDT::StringArray::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v9 = *(CRDT::Array::default_instance_ + 48);
      }

      CRDT::Dictionary::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

void sub_19A2021D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Array::~Array(void **this)
{
  *this = &unk_1F0D67818;
  CRDT::Array::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Array::~Array(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::Array::SharedDtor(CRDT::Array *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Array::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CRDT::Array::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = *(this + 40);
      if (this)
      {
        this = CRDT::StringArray::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v3 + 40);
        *(v3 + 32) = 0;
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
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t CRDT::Array::MergePartialFromCodedStream(CRDT::Array *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      v7 = v6 | 0x100000000;
    }

    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        goto LABEL_48;
      }

      v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!CRDT::StringArray::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_48;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_33:
        *(this + 8) |= 2u;
        v19 = *(this + 6);
        if (!v19)
        {
          operator new();
        }

        v30 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::Dictionary::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v26 = 1;
          *(a2 + 36) = 1;
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_49;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }
  }

  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_49:
  v26 = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_19A2027BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Array::SerializeWithCachedSizes(CRDT::Array *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::Array::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 6);
    if (!v6)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v6 = *(CRDT::Array::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v3 + 31);
  if (v7 < 0)
  {
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
  }

  else
  {
    v8 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::Array::ByteSize(CRDT::Array *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v3 = *(CRDT::Array::default_instance_ + 40);
  }

  v4 = CRDT::StringArray::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 6);
    if (!v7)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v7 = *(CRDT::Array::default_instance_ + 48);
    }

    v8 = CRDT::Dictionary::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Array::CheckTypeAndMergeFrom(CRDT::Array *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Array::MergeFrom(this, lpsrc);
}

std::string *CRDT::OrderedSet::MergeFrom(CRDT::OrderedSet *this, const CRDT::OrderedSet *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 3723);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v7 = *(CRDT::OrderedSet::default_instance_ + 40);
      }

      this = CRDT::Array::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v9 = *(CRDT::OrderedSet::default_instance_ + 48);
      }

      CRDT::Dictionary::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

void sub_19A202BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::OrderedSet::~OrderedSet(void **this)
{
  *this = &unk_1F0D67890;
  CRDT::OrderedSet::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::OrderedSet::~OrderedSet(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::OrderedSet::SharedDtor(CRDT::OrderedSet *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::OrderedSet::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}