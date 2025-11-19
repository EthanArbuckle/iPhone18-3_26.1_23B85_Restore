uint64_t CRDT::OrderedSet::Clear(uint64_t this)
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
        this = CRDT::Array::Clear(this);
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

uint64_t CRDT::OrderedSet::MergePartialFromCodedStream(CRDT::OrderedSet *this, google::protobuf::io::CodedInputStream *a2)
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
      if (!CRDT::Array::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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

void sub_19A2031A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::OrderedSet::SerializeWithCachedSizes(CRDT::OrderedSet *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::OrderedSet::default_instance_ + 40);
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
      v6 = *(CRDT::OrderedSet::default_instance_ + 48);
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

uint64_t CRDT::OrderedSet::ByteSize(CRDT::OrderedSet *this)
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
    v3 = *(CRDT::OrderedSet::default_instance_ + 40);
  }

  v4 = CRDT::Array::ByteSize(v3);
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
      v7 = *(CRDT::OrderedSet::default_instance_ + 48);
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

std::string *CRDT::OrderedSet::CheckTypeAndMergeFrom(CRDT::OrderedSet *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::OrderedSet::MergeFrom(this, lpsrc);
}

std::string *CRDT::Document_CustomObject_MapEntry::MergeFrom(CRDT::Document_CustomObject_MapEntry *this, const CRDT::Document_CustomObject_MapEntry *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 3958);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 12);
      *(this + 8) |= 1u;
      *(this + 12) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 8) |= 2u;
      v7 = *(this + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v8 = *(CRDT::Document_CustomObject_MapEntry::default_instance_ + 40);
      }

      CRDT::ObjectID::MergeFrom(v7, v8);
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

void CRDT::Document_CustomObject_MapEntry::~Document_CustomObject_MapEntry(void **this)
{
  *this = &unk_1F0D67908;
  CRDT::Document_CustomObject_MapEntry::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Document_CustomObject_MapEntry::~Document_CustomObject_MapEntry(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::Document_CustomObject_MapEntry::SharedDtor(CRDT::Document_CustomObject_MapEntry *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Document_CustomObject_MapEntry::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CRDT::Document_CustomObject_MapEntry::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    *(this + 48) = 0;
    if ((v2 & 2) != 0)
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

uint64_t CRDT::Document_CustomObject_MapEntry::MergePartialFromCodedStream(CRDT::Document_CustomObject_MapEntry *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
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
        v14 = *(this + 8);
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 8)
    {
      v27 = 0;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
        {
          goto LABEL_43;
        }

        v11 = v27;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 12) = v11;
      v14 = *(this + 8) | 1;
      *(this + 8) = v14;
      if (v12 < v9 && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_28:
        *(this + 8) = v14 | 2;
        v15 = *(this + 5);
        if (!v15)
        {
          operator new();
        }

        v27 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v27 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18 || (v19 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::ObjectID::MergePartialFromCodedStream(v15, a2)) || *(a2 + 36) != 1)
        {
LABEL_43:
          v23 = 0;
          goto LABEL_45;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v19);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v23 = 1;
          *(a2 + 36) = 1;
          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_44;
      }

LABEL_16:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4))
      {
        goto LABEL_43;
      }
    }
  }

  if (v7)
  {
    v13 = (v7 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_44:
  v23 = 1;
LABEL_45:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_19A2039F8(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t CRDT::Document_CustomObject_MapEntry::SerializeWithCachedSizes(CRDT::Document_CustomObject_MapEntry *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 12), a2, a4);
    v6 = *(v5 + 8);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 5);
    if (!v7)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v7 = *(CRDT::Document_CustomObject_MapEntry::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2);
  }

  v8 = *(v5 + 31);
  if (v8 < 0)
  {
    v9 = *(v5 + 1);
    v8 = *(v5 + 2);
  }

  else
  {
    v9 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v9, v8);
}

uint64_t CRDT::Document_CustomObject_MapEntry::ByteSize(CRDT::Document_CustomObject_MapEntry *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 32))
  {
    v4 = *(this + 12);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 8) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 5);
  if (!v5)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v5 = *(CRDT::Document_CustomObject_MapEntry::default_instance_ + 40);
  }

  v6 = CRDT::ObjectID::ByteSize(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 += v7 + v8 + 1;
LABEL_19:
  v9 = *(this + 31);
  if (v9 < 0)
  {
    v9 = *(this + 2);
  }

  result = (v3 + v9);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document_CustomObject_MapEntry::CheckTypeAndMergeFrom(CRDT::Document_CustomObject_MapEntry *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Document_CustomObject_MapEntry::MergeFrom(this, lpsrc);
}

std::string *CRDT::Document_CustomObject::MergeFrom(CRDT::Document_CustomObject *this, const CRDT::Document_CustomObject *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 4184);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>((this + 40), (a2 + 40));
  if (*(a2 + 32))
  {
    v5 = *(a2 + 16);
    *(this + 8) |= 1u;
    *(this + 16) = v5;
  }

  v8 = *(a2 + 1);
  v7 = a2 + 8;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 8), v10, v11);
}

void sub_19A203D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Document_CustomObject::~Document_CustomObject(CRDT::Document_CustomObject *this)
{
  *this = &unk_1F0D67980;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Document_CustomObject::~Document_CustomObject(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::Document_CustomObject::Clear(CRDT::Document_CustomObject *this)
{
  *(this + 16) = 0;
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

uint64_t CRDT::Document_CustomObject::MergePartialFromCodedStream(CRDT::Document_CustomObject *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
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

      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_49;
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
LABEL_49:
        v26 = 1;
        goto LABEL_50;
      }

LABEL_16:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }

    if (v7 != 8)
    {
      goto LABEL_19;
    }

    v30 = 0;
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        goto LABEL_48;
      }

      v11 = v30;
      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      v12 = v9 + 1;
      *(a2 + 1) = v12;
    }

    *(this + 16) = v11;
    *(this + 8) |= 1u;
    if (v12 < v10 && *v12 == 26)
    {
      do
      {
        *(a2 + 1) = v12 + 1;
LABEL_27:
        v14 = *(this + 13);
        v15 = *(this + 12);
        if (v15 >= v14)
        {
          if (v14 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v14 + 1);
          }

          operator new();
        }

        v16 = *(this + 5);
        *(this + 12) = v15 + 1;
        v17 = *(v16 + 8 * v15);
        v30 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20 || (v21 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::Document_CustomObject_MapEntry::MergePartialFromCodedStream(v17, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v12 = *(a2 + 1);
        v25 = *(a2 + 2);
      }

      while (v12 < v25 && *v12 == 26);
      if (v12 == v25 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v26 = 1;
  *(a2 + 36) = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_19A2041C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Document_CustomObject::SerializeWithCachedSizes(CRDT::Document_CustomObject *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
  }

  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(this + 40, v6);
      google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2);
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v9 = *(this + 1);
    v8 = *(this + 2);
  }

  else
  {
    v9 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v9, v8);
}

uint64_t CRDT::Document_CustomObject::ByteSize(CRDT::Document_CustomObject *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 16);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
    {
      v2 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 12);
  v5 = v4 + v2;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(this + 40, v6);
      v8 = CRDT::Document_CustomObject_MapEntry::ByteSize(v7);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v5 += v9 + v10;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v5 + v11);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document_CustomObject::CheckTypeAndMergeFrom(CRDT::Document_CustomObject *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Document_CustomObject::MergeFrom(this, lpsrc);
}

BOOL google::protobuf::internal::AllAreInitialized<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>>(uint64_t a1)
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

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(a1, v2);
  }

  while (((*(*v5 + 40))(v5) & 1) != 0);
  return v3 < 1;
}

std::string *CRDT::Document_DocObject::MergeFrom(const CRDT::RegisterLatest **this, const CRDT::RegisterLatest **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 4864);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  switch(*(a2 + 12))
  {
    case 1:
      if (*(this + 12) != 1)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 1;
        operator new();
      }

      goto LABEL_25;
    case 2:
      if (*(this + 12) != 2)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 2;
        operator new();
      }

      goto LABEL_25;
    case 3:
      if (*(this + 12) != 3)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 3;
        operator new();
      }

LABEL_25:
      CRDT::RegisterLatest::MergeFrom(this[5], a2[5]);
      break;
    case 4:
      if (*(this + 12) != 4)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 4;
        operator new();
      }

      goto LABEL_27;
    case 5:
      if (*(this + 12) != 5)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 5;
        operator new();
      }

      goto LABEL_27;
    case 6:
      if (*(this + 12) != 6)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 6;
        operator new();
      }

LABEL_27:
      CRDT::Dictionary::MergeFrom(this[5], a2[5]);
      break;
    case 7:
      if (*(this + 12) != 7)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 7;
        operator new();
      }

      CRDT::Timestamp::MergeFrom(this[5], a2[5]);
      break;
    case 8:
      if (*(this + 12) != 8)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 8;
        operator new();
      }

      CRDT::VectorTimestamp::MergeFrom(this[5], a2[5]);
      break;
    case 9:
      if (*(this + 12) != 9)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 9;
        operator new();
      }

      CRDT::Index::MergeFrom(this[5], a2[5]);
      break;
    case 0xA:
      if (*(this + 12) != 10)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 10;
        operator new();
      }

      topotext::String::MergeFrom(this[5], a2[5]);
      break;
    case 0xB:
      v5 = a2[5];
      if (*(this + 12) != 11)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 11;
      }

      this[5] = v5;
      break;
    case 0xC:
      if (*(this + 12) != 12)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 12;
        operator new();
      }

      CRDT::OneOf::MergeFrom(this[5], a2[5]);
      break;
    case 0xD:
      if (*(this + 12) != 13)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 13;
        operator new();
      }

      CRDT::Document_CustomObject::MergeFrom(this[5], a2[5]);
      break;
    case 0xE:
      if (*(this + 12) != 14)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 14;
        operator new();
      }

      CRDT::StringArray::MergeFrom(this[5], a2[5]);
      break;
    case 0xF:
      if (*(this + 12) != 15)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 15;
        operator new();
      }

      CRDT::Array::MergeFrom(this[5], a2[5]);
      break;
    case 0x10:
      if (*(this + 12) != 16)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 16;
        operator new();
      }

      CRDT::OrderedSet::MergeFrom(this[5], a2[5]);
      break;
    default:
      break;
  }

  v8 = a2[1];
  v7 = (a2 + 1);
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 1), v10, v11);
}

void CRDT::Document_DocObject::~Document_DocObject(CRDT::Document_DocObject *this)
{
  v1 = this;
  *this = &unk_1F0D679F8;
  if (*(this + 12))
  {
    this = CRDT::Document_DocObject::clear_contents(this);
  }

  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
}

{
  CRDT::Document_DocObject::~Document_DocObject(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t CRDT::Document_DocObject::clear_contents(uint64_t this)
{
  v1 = this;
  switch(*(this + 48))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      this = *(this + 40);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      break;
    default:
      break;
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t CRDT::Document_DocObject::Clear(CRDT::Document_DocObject *this)
{
  result = CRDT::Document_DocObject::clear_contents(this);
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

uint64_t CRDT::Document_DocObject::MergePartialFromCodedStream(CRDT::Document_DocObject *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v140, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v139, v140);
  while (2)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v5 < v6)
      {
        v7 = *v5;
        if (*v5 >= 1)
        {
          *(a2 + 8) = v7;
          v8 = (v5 + 1);
          goto LABEL_8;
        }

        if ((v5 + 1) < v6)
        {
          v9 = v5[1];
          if ((v7 & ~v9) >= 0x80)
          {
            break;
          }
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v10 = TagFallback | ((TagFallback - 1 < 0x3FFF) << 32);
      if ((v10 & 0x100000000) != 0)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v10)
      {
        v11 = (v10 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_286:
        v137 = 1;
        goto LABEL_287;
      }

LABEL_52:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v10, v139, v4))
      {
        goto LABEL_285;
      }
    }

    v7 = (v7 + (v9 << 7) - 128);
    *(a2 + 8) = v7;
    v8 = (v5 + 2);
LABEL_8:
    *(a2 + 1) = v8;
    v10 = v7 | 0x100000000;
LABEL_16:
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_50;
        }

        if (*(this + 12) != 1)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 1;
          operator new();
        }

        v13 = *(this + 5);
        v141 = 0;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v15;
          *(a2 + 1) = v15 + 1;
        }

        v16 = *(a2 + 14);
        v17 = *(a2 + 15);
        *(a2 + 14) = v16 + 1;
        if (v16 >= v17)
        {
          goto LABEL_285;
        }

        v18 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::RegisterLatest::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v18);
        v19 = *(a2 + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 18)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_67:
        if (*(this + 12) != 2)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 2;
          operator new();
        }

        v23 = *(this + 5);
        v141 = 0;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v24;
          *(a2 + 1) = v24 + 1;
        }

        v25 = *(a2 + 14);
        v26 = *(a2 + 15);
        *(a2 + 14) = v25 + 1;
        if (v25 >= v26)
        {
          goto LABEL_285;
        }

        v27 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::RegisterLatest::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v27);
        v28 = *(a2 + 14);
        v20 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v20)
        {
          *(a2 + 14) = v29;
        }

        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 26)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_82:
        if (*(this + 12) != 3)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 3;
          operator new();
        }

        v31 = *(this + 5);
        v141 = 0;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v32;
          *(a2 + 1) = v32 + 1;
        }

        v33 = *(a2 + 14);
        v34 = *(a2 + 15);
        *(a2 + 14) = v33 + 1;
        if (v33 >= v34)
        {
          goto LABEL_285;
        }

        v35 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::RegisterLatest::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
        v36 = *(a2 + 14);
        v20 = __OFSUB__(v36, 1);
        v37 = v36 - 1;
        if (v37 < 0 == v20)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 34)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_97:
        if (*(this + 12) != 4)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 4;
          operator new();
        }

        v39 = *(this + 5);
        v141 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 >= v42)
        {
          goto LABEL_285;
        }

        v43 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Dictionary::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v43);
        v44 = *(a2 + 14);
        v20 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v20)
        {
          *(a2 + 14) = v45;
        }

        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 != 42)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_112:
        if (*(this + 12) != 5)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 5;
          operator new();
        }

        v47 = *(this + 5);
        v141 = 0;
        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v48;
          *(a2 + 1) = v48 + 1;
        }

        v49 = *(a2 + 14);
        v50 = *(a2 + 15);
        *(a2 + 14) = v49 + 1;
        if (v49 >= v50)
        {
          goto LABEL_285;
        }

        v51 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Dictionary::MergePartialFromCodedStream(v47, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
        v52 = *(a2 + 14);
        v20 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v53 < 0 == v20)
        {
          *(a2 + 14) = v53;
        }

        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 != 50)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_127:
        if (*(this + 12) != 6)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 6;
          operator new();
        }

        v55 = *(this + 5);
        v141 = 0;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v56;
          *(a2 + 1) = v56 + 1;
        }

        v57 = *(a2 + 14);
        v58 = *(a2 + 15);
        *(a2 + 14) = v57 + 1;
        if (v57 >= v58)
        {
          goto LABEL_285;
        }

        v59 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Dictionary::MergePartialFromCodedStream(v55, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v59);
        v60 = *(a2 + 14);
        v20 = __OFSUB__(v60, 1);
        v61 = v60 - 1;
        if (v61 < 0 == v20)
        {
          *(a2 + 14) = v61;
        }

        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 != 58)
        {
          continue;
        }

        *(a2 + 1) = v62 + 1;
LABEL_142:
        if (*(this + 12) != 7)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 7;
          operator new();
        }

        v63 = *(this + 5);
        v141 = 0;
        v64 = *(a2 + 1);
        if (v64 >= *(a2 + 2) || *v64 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v64;
          *(a2 + 1) = v64 + 1;
        }

        v65 = *(a2 + 14);
        v66 = *(a2 + 15);
        *(a2 + 14) = v65 + 1;
        if (v65 >= v66)
        {
          goto LABEL_285;
        }

        v67 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Timestamp::MergePartialFromCodedStream(v63, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v67);
        v68 = *(a2 + 14);
        v20 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v20)
        {
          *(a2 + 14) = v69;
        }

        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 66)
        {
          continue;
        }

        *(a2 + 1) = v70 + 1;
LABEL_157:
        if (*(this + 12) != 8)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 8;
          operator new();
        }

        v71 = *(this + 5);
        v141 = 0;
        v72 = *(a2 + 1);
        if (v72 >= *(a2 + 2) || *v72 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v72;
          *(a2 + 1) = v72 + 1;
        }

        v73 = *(a2 + 14);
        v74 = *(a2 + 15);
        *(a2 + 14) = v73 + 1;
        if (v73 >= v74)
        {
          goto LABEL_285;
        }

        v75 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v71, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v75);
        v76 = *(a2 + 14);
        v20 = __OFSUB__(v76, 1);
        v77 = v76 - 1;
        if (v77 < 0 == v20)
        {
          *(a2 + 14) = v77;
        }

        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 != 74)
        {
          continue;
        }

        *(a2 + 1) = v78 + 1;
LABEL_172:
        if (*(this + 12) != 9)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 9;
          operator new();
        }

        v79 = *(this + 5);
        v141 = 0;
        v80 = *(a2 + 1);
        if (v80 >= *(a2 + 2) || *v80 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v80;
          *(a2 + 1) = v80 + 1;
        }

        v81 = *(a2 + 14);
        v82 = *(a2 + 15);
        *(a2 + 14) = v81 + 1;
        if (v81 >= v82)
        {
          goto LABEL_285;
        }

        v83 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Index::MergePartialFromCodedStream(v79, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v83);
        v84 = *(a2 + 14);
        v20 = __OFSUB__(v84, 1);
        v85 = v84 - 1;
        if (v85 < 0 == v20)
        {
          *(a2 + 14) = v85;
        }

        v86 = *(a2 + 1);
        if (v86 >= *(a2 + 2) || *v86 != 82)
        {
          continue;
        }

        *(a2 + 1) = v86 + 1;
LABEL_187:
        if (*(this + 12) != 10)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 10;
          operator new();
        }

        v87 = *(this + 5);
        v141 = 0;
        v88 = *(a2 + 1);
        if (v88 >= *(a2 + 2) || *v88 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v88;
          *(a2 + 1) = v88 + 1;
        }

        v89 = *(a2 + 14);
        v90 = *(a2 + 15);
        *(a2 + 14) = v89 + 1;
        if (v89 >= v90)
        {
          goto LABEL_285;
        }

        v91 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!topotext::String::MergePartialFromCodedStream(v87, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v91);
        v92 = *(a2 + 14);
        v20 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v20)
        {
          *(a2 + 14) = v93;
        }

        v94 = *(a2 + 1);
        if (v94 >= *(a2 + 2) || *v94 != 88)
        {
          continue;
        }

        *(a2 + 1) = v94 + 1;
LABEL_202:
        CRDT::Document_DocObject::clear_contents(this);
        v96 = *(a2 + 1);
        v95 = *(a2 + 2);
        if (v96 >= v95 || (v97 = *v96, v97 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_285;
          }

          v98 = *(a2 + 1);
          v95 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v97;
          v98 = v96 + 1;
          *(a2 + 1) = v98;
        }

        *(this + 12) = 11;
        if (v98 < v95 && *v98 == 98)
        {
          *(a2 + 1) = v98 + 1;
LABEL_210:
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 12;
          operator new();
        }

        continue;
      case 2u:
        if (v10 == 18)
        {
          goto LABEL_67;
        }

        goto LABEL_50;
      case 3u:
        if (v10 == 26)
        {
          goto LABEL_82;
        }

        goto LABEL_50;
      case 4u:
        if (v10 == 34)
        {
          goto LABEL_97;
        }

        goto LABEL_50;
      case 5u:
        if (v10 == 42)
        {
          goto LABEL_112;
        }

        goto LABEL_50;
      case 6u:
        if (v10 == 50)
        {
          goto LABEL_127;
        }

        goto LABEL_50;
      case 7u:
        if (v10 == 58)
        {
          goto LABEL_142;
        }

        goto LABEL_50;
      case 8u:
        if (v10 == 66)
        {
          goto LABEL_157;
        }

        goto LABEL_50;
      case 9u:
        if (v10 != 74)
        {
          goto LABEL_50;
        }

        goto LABEL_172;
      case 0xAu:
        if (v10 == 82)
        {
          goto LABEL_187;
        }

        goto LABEL_50;
      case 0xBu:
        if (v10 == 88)
        {
          goto LABEL_202;
        }

        goto LABEL_50;
      case 0xCu:
        if (v10 != 98)
        {
          goto LABEL_50;
        }

        if (*(this + 12) != 12)
        {
          goto LABEL_210;
        }

        v14 = *(this + 5);
        v141 = 0;
        v99 = *(a2 + 1);
        if (v99 >= *(a2 + 2) || *v99 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v99;
          *(a2 + 1) = v99 + 1;
        }

        v100 = *(a2 + 14);
        v101 = *(a2 + 15);
        *(a2 + 14) = v100 + 1;
        if (v100 >= v101)
        {
          goto LABEL_285;
        }

        v102 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::OneOf::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v102);
        v103 = *(a2 + 14);
        v20 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v20)
        {
          *(a2 + 14) = v104;
        }

        v105 = *(a2 + 1);
        if (v105 >= *(a2 + 2) || *v105 != 106)
        {
          continue;
        }

        *(a2 + 1) = v105 + 1;
LABEL_223:
        if (*(this + 12) != 13)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 13;
          operator new();
        }

        v106 = *(this + 5);
        v141 = 0;
        v107 = *(a2 + 1);
        if (v107 >= *(a2 + 2) || *v107 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v107;
          *(a2 + 1) = v107 + 1;
        }

        v108 = *(a2 + 14);
        v109 = *(a2 + 15);
        *(a2 + 14) = v108 + 1;
        if (v108 >= v109)
        {
          goto LABEL_285;
        }

        v110 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Document_CustomObject::MergePartialFromCodedStream(v106, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v110);
        v111 = *(a2 + 14);
        v20 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v20)
        {
          *(a2 + 14) = v112;
        }

        v113 = *(a2 + 1);
        if (v113 >= *(a2 + 2) || *v113 != 114)
        {
          continue;
        }

        *(a2 + 1) = v113 + 1;
LABEL_238:
        if (*(this + 12) != 14)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 14;
          operator new();
        }

        v114 = *(this + 5);
        v141 = 0;
        v115 = *(a2 + 1);
        if (v115 >= *(a2 + 2) || *v115 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v115;
          *(a2 + 1) = v115 + 1;
        }

        v116 = *(a2 + 14);
        v117 = *(a2 + 15);
        *(a2 + 14) = v116 + 1;
        if (v116 >= v117)
        {
          goto LABEL_285;
        }

        v118 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::StringArray::MergePartialFromCodedStream(v114, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v118);
        v119 = *(a2 + 14);
        v20 = __OFSUB__(v119, 1);
        v120 = v119 - 1;
        if (v120 < 0 == v20)
        {
          *(a2 + 14) = v120;
        }

        v121 = *(a2 + 1);
        if (v121 >= *(a2 + 2) || *v121 != 122)
        {
          continue;
        }

        *(a2 + 1) = v121 + 1;
LABEL_253:
        if (*(this + 12) != 15)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 15;
          operator new();
        }

        v122 = *(this + 5);
        v141 = 0;
        v123 = *(a2 + 1);
        if (v123 >= *(a2 + 2) || *v123 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v123;
          *(a2 + 1) = v123 + 1;
        }

        v124 = *(a2 + 14);
        v125 = *(a2 + 15);
        *(a2 + 14) = v124 + 1;
        if (v124 >= v125)
        {
          goto LABEL_285;
        }

        v126 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Array::MergePartialFromCodedStream(v122, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v126);
        v127 = *(a2 + 14);
        v20 = __OFSUB__(v127, 1);
        v128 = v127 - 1;
        if (v128 < 0 == v20)
        {
          *(a2 + 14) = v128;
        }

        v129 = *(a2 + 1);
        if (*(a2 + 4) - v129 <= 1 || *v129 != 130 || v129[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v129 + 2;
LABEL_269:
        if (*(this + 12) != 16)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 16;
          operator new();
        }

        v130 = *(this + 5);
        v141 = 0;
        v131 = *(a2 + 1);
        if (v131 >= *(a2 + 2) || *v131 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v131;
          *(a2 + 1) = v131 + 1;
        }

        v132 = *(a2 + 14);
        v133 = *(a2 + 15);
        *(a2 + 14) = v132 + 1;
        if (v132 >= v133 || (v134 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141), !CRDT::OrderedSet::MergePartialFromCodedStream(v130, a2)) || *(a2 + 36) != 1)
        {
LABEL_285:
          v137 = 0;
          goto LABEL_287;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v134);
        v135 = *(a2 + 14);
        v20 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v20)
        {
          *(a2 + 14) = v136;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        v137 = 1;
        *(a2 + 36) = 1;
LABEL_287:
        google::protobuf::io::CodedOutputStream::~CodedOutputStream(v139);
        google::protobuf::io::StringOutputStream::~StringOutputStream(v140);
        return v137;
      case 0xDu:
        if (v10 == 106)
        {
          goto LABEL_223;
        }

        goto LABEL_50;
      case 0xEu:
        if (v10 == 114)
        {
          goto LABEL_238;
        }

        goto LABEL_50;
      case 0xFu:
        if (v10 == 122)
        {
          goto LABEL_253;
        }

        goto LABEL_50;
      case 0x10u:
        if (v10 == 130)
        {
          goto LABEL_269;
        }

LABEL_50:
        if (v10 && (v10 & 7) != 4)
        {
          goto LABEL_52;
        }

        goto LABEL_286;
      default:
        goto LABEL_9;
    }
  }
}

void sub_19A206384(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t CRDT::Document_DocObject::SerializeWithCachedSizes(CRDT::Document_DocObject *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 12);
  if (v6 == 1)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(1, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 2)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(2, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 3)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(3, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 4)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(4, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 5)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(5, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 6)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(6, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 7)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(7, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 8)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(8, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 9)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(9, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 10)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(10, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 11)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(0xB, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 12)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(12, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 13)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(13, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 14)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(14, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 15)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(15, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 16)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(16, *(this + 5), a2);
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

uint64_t CRDT::Document_DocObject::ByteSize(CRDT::RegisterLatest **this)
{
  switch(*(this + 12))
  {
    case 1:
    case 2:
    case 3:
      v2 = CRDT::RegisterLatest::ByteSize(this[5]);
      goto LABEL_15;
    case 4:
    case 5:
    case 6:
      v2 = CRDT::Dictionary::ByteSize(this[5]);
      goto LABEL_15;
    case 7:
      v2 = CRDT::Timestamp::ByteSize(this[5]);
      goto LABEL_15;
    case 8:
      v2 = CRDT::VectorTimestamp::ByteSize(this[5]);
      goto LABEL_15;
    case 9:
      v2 = CRDT::Index::ByteSize(this[5]);
      goto LABEL_15;
    case 0xA:
      v2 = topotext::String::ByteSize(this[5]);
      goto LABEL_15;
    case 0xB:
      v6 = google::protobuf::io::CodedOutputStream::VarintSize64(this[5]) + 1;
      break;
    case 0xC:
      v2 = CRDT::OneOf::ByteSize(this[5]);
      goto LABEL_15;
    case 0xD:
      v2 = CRDT::Document_CustomObject::ByteSize(this[5]);
      goto LABEL_15;
    case 0xE:
      v2 = CRDT::StringArray::ByteSize(this[5]);
      goto LABEL_15;
    case 0xF:
      v2 = CRDT::Array::ByteSize(this[5]);
LABEL_15:
      v7 = v2;
      if (v2 >= 0x80)
      {
        v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v2);
      }

      else
      {
        v8 = 1;
      }

      v6 = v7 + v8 + 1;
      break;
    case 0x10:
      v3 = CRDT::OrderedSet::ByteSize(this[5]);
      v4 = v3;
      if (v3 >= 0x80)
      {
        v5 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3);
      }

      else
      {
        v5 = 1;
      }

      v6 = v4 + v5 + 2;
      break;
    default:
      v6 = 0;
      break;
  }

  v9 = *(this + 31);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = this[2];
  }

  result = (v6 + v9);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document_DocObject::CheckTypeAndMergeFrom(const CRDT::RegisterLatest **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Document_DocObject::MergeFrom(this, lpsrc);
}

uint64_t CRDT::Document_DocObject::IsInitialized(CRDT::Document_DocObject *this)
{
  if (*(this + 12) != 13)
  {
    return 1;
  }

  result = (*(**(this + 5) + 40))(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

CRDT::Document *CRDT::Document::Document(CRDT::Document *this)
{
  *this = &unk_1F0D67A70;
  *(this + 1) = 0;
  *(this + 7) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  CRDT::Document::SharedCtor(this);
  return this;
}

void sub_19A2068A4(_Unwind_Exception *a1)
{
  v7 = v3;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v7);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v5);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v4);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v6);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void CRDT::Document::SharedCtor(CRDT::Document *this)
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

  *(this + 19) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void sub_19A2069A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *CRDT::Document::MergeFrom(CRDT::Document *this, const CRDT::Document *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/crframework.pb.cc", 5327);
    v4 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v20, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>((this + 56), (a2 + 56));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 80), (a2 + 80));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 104), (a2 + 104));
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 128), (a2 + 128));
  LOBYTE(v6) = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v7 = *(this + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(v5);
        v8 = *(CRDT::Document::default_instance_ + 40);
      }

      v5 = CRDT::VectorTimestamp::MergeFrom(v7, v8);
      v6 = *(a2 + 8);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 0x40) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v9 = *(this + 6);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 6);
    if (!v10)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(v5);
      v10 = *(CRDT::Document::default_instance_ + 48);
    }

    v5 = CRDT::VectorTimestamp::MergeFrom(v9, v10);
    if ((*(a2 + 8) & 0x40) != 0)
    {
LABEL_18:
      *(this + 8) |= 0x40u;
      v11 = *(this + 19);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 19);
      if (!v12)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(v5);
        v12 = *(CRDT::Document::default_instance_ + 152);
      }

      topotext::VectorTimestamp::MergeFrom(v11, v12);
    }
  }

LABEL_23:
  v15 = *(a2 + 1);
  v14 = a2 + 8;
  v13 = v15;
  v16 = v14[23];
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = v14[23];
  }

  else
  {
    v18 = *(v14 + 1);
  }

  return std::string::append((this + 8), v17, v18);
}

void CRDT::Document::~Document(CRDT::Document *this)
{
  *this = &unk_1F0D67A70;
  CRDT::Document::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 32);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 26);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 20);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 7);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  CRDT::Document::~Document(this);

  JUMPOUT(0x19A8FD070);
}

void CRDT::Document::SharedDtor(CRDT::Document *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Document::default_instance_ != this)
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

    v4 = *(this + 19);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CRDT::Document::Clear(CRDT::Document *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x43) != 0)
  {
    if (v2)
    {
      v3 = *(this + 5);
      if (v3)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v3 + 40);
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
      v4 = *(this + 6);
      if (v4)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v4 + 40);
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

    if ((*(this + 32) & 0x40) != 0)
    {
      v5 = *(this + 19);
      if (v5)
      {
        topotext::VectorTimestamp::Clear(v5);
      }
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 56);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128);
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

uint64_t CRDT::Document::MergePartialFromCodedStream(CRDT::Document *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v61, this + 8);
  TagFallback = google::protobuf::io::CodedOutputStream::CodedOutputStream(v60, v61);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, v7 < 1))
          {
            TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            v8 = TagFallback | (((TagFallback - 1) < 0x7F) << 32);
            if ((v8 & 0x100000000) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
            v8 = v7 | 0x100000000;
          }

          v10 = v8 >> 3;
          if (v8 >> 3 > 3)
          {
            break;
          }

          switch(v10)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_38;
              }

              *(this + 8) |= 1u;
              v11 = *(this + 5);
              if (!v11)
              {
                operator new();
              }

              v62 = 0;
              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2) || *v12 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
                {
                  goto LABEL_128;
                }
              }

              else
              {
                v62 = *v12;
                *(a2 + 1) = v12 + 1;
              }

              v13 = *(a2 + 14);
              v14 = *(a2 + 15);
              *(a2 + 14) = v13 + 1;
              if (v13 >= v14)
              {
                goto LABEL_128;
              }

              v15 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62);
              if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_128;
              }

              TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
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
                goto LABEL_51;
              }

              break;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_38;
              }

LABEL_51:
              *(this + 8) |= 2u;
              v20 = *(this + 6);
              if (!v20)
              {
                operator new();
              }

              v62 = 0;
              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2) || *v21 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
                {
                  goto LABEL_128;
                }
              }

              else
              {
                v62 = *v21;
                *(a2 + 1) = v21 + 1;
              }

              v22 = *(a2 + 14);
              v23 = *(a2 + 15);
              *(a2 + 14) = v22 + 1;
              if (v22 >= v23)
              {
                goto LABEL_128;
              }

              v24 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62);
              if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_128;
              }

              TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
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
                while (1)
                {
                  *(a2 + 1) = v27 + 1;
LABEL_65:
                  v28 = *(this + 17);
                  v29 = *(this + 16);
                  if (v29 >= v28)
                  {
                    if (v28 == *(this + 18))
                    {
                      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 7, v28 + 1);
                    }

                    operator new();
                  }

                  v30 = *(this + 7);
                  *(this + 16) = v29 + 1;
                  v31 = *(v30 + 8 * v29);
                  v62 = 0;
                  v32 = *(a2 + 1);
                  if (v32 >= *(a2 + 2) || *v32 < 0)
                  {
                    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
                    {
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    v62 = *v32;
                    *(a2 + 1) = v32 + 1;
                  }

                  v33 = *(a2 + 14);
                  v34 = *(a2 + 15);
                  *(a2 + 14) = v33 + 1;
                  if (v33 >= v34)
                  {
                    goto LABEL_128;
                  }

                  v35 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62);
                  if (!CRDT::Document_DocObject::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
                  {
                    goto LABEL_128;
                  }

                  TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
                  v36 = *(a2 + 14);
                  v17 = __OFSUB__(v36, 1);
                  v37 = v36 - 1;
                  if (v37 < 0 == v17)
                  {
                    *(a2 + 14) = v37;
                  }

                  v27 = *(a2 + 1);
                  if (v27 >= *(a2 + 2))
                  {
                    break;
                  }

                  v38 = *v27;
                  if (v38 != 26)
                  {
                    if (v38 == 34)
                    {
                      while (1)
                      {
                        *(a2 + 1) = v27 + 1;
LABEL_83:
                        v39 = *(this + 23);
                        v40 = *(this + 22);
                        if (v40 >= v39)
                        {
                          if (v39 == *(this + 24))
                          {
                            TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v39 + 1);
                          }

                          google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
                        }

                        v41 = *(this + 10);
                        *(this + 22) = v40 + 1;
                        TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v41 + 8 * v40));
                        if (!TagFallback)
                        {
                          goto LABEL_128;
                        }

                        v27 = *(a2 + 1);
                        if (v27 >= *(a2 + 2))
                        {
                          break;
                        }

                        v42 = *v27;
                        if (v42 != 34)
                        {
                          if (v42 == 42)
                          {
                            goto LABEL_92;
                          }

                          goto LABEL_2;
                        }
                      }
                    }

                    goto LABEL_2;
                  }
                }
              }

              break;
            case 3u:
              if (v8 == 26)
              {
                goto LABEL_65;
              }

LABEL_38:
              if (!v8 || (v8 & 7) == 4)
              {
                goto LABEL_129;
              }

              goto LABEL_40;
            default:
LABEL_6:
              if (v8)
              {
                v9 = (v8 & 7) == 4;
              }

              else
              {
                v9 = 1;
              }

              if (v9)
              {
LABEL_129:
                v58 = 1;
                goto LABEL_130;
              }

LABEL_40:
              TagFallback = google::protobuf::internal::WireFormatLite::SkipField(a2, v8, v60, v5);
              if ((TagFallback & 1) == 0)
              {
                goto LABEL_128;
              }

              break;
          }
        }

        if (v8 >> 3 > 5)
        {
          break;
        }

        if (v10 == 4)
        {
          if (v8 == 34)
          {
            goto LABEL_83;
          }

          goto LABEL_38;
        }

        if (v10 != 5)
        {
          goto LABEL_6;
        }

        if (v8 != 42)
        {
          goto LABEL_38;
        }

        while (1)
        {
          v43 = *(this + 29);
          v44 = *(this + 28);
          if (v44 >= v43)
          {
            if (v43 == *(this + 30))
            {
              TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 13, v43 + 1);
            }

            google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
          }

          v45 = *(this + 13);
          *(this + 28) = v44 + 1;
          TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v45 + 8 * v44));
          if (!TagFallback)
          {
            goto LABEL_128;
          }

          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2))
          {
            break;
          }

          v46 = *v27;
          if (v46 != 42)
          {
            if (v46 == 50)
            {
              goto LABEL_102;
            }

            goto LABEL_2;
          }

LABEL_92:
          *(a2 + 1) = v27 + 1;
        }
      }

      if (v10 != 6)
      {
        break;
      }

      if (v8 != 50)
      {
        goto LABEL_38;
      }

      while (2)
      {
        v47 = *(this + 35);
        v48 = *(this + 34);
        if (v48 >= v47)
        {
          if (v47 == *(this + 36))
          {
            TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 16, v47 + 1);
          }

          google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
        }

        v49 = *(this + 16);
        *(this + 34) = v48 + 1;
        TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v49 + 8 * v48));
        if (!TagFallback)
        {
          goto LABEL_128;
        }

        v27 = *(a2 + 1);
        if (v27 < *(a2 + 2))
        {
          v50 = *v27;
          if (v50 == 50)
          {
LABEL_102:
            *(a2 + 1) = v27 + 1;
            continue;
          }

          if (v50 == 58)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_113;
          }
        }

        break;
      }
    }

    if (v10 != 7)
    {
      goto LABEL_6;
    }

    if (v8 != 58)
    {
      goto LABEL_38;
    }

LABEL_113:
    *(this + 8) |= 0x40u;
    v51 = *(this + 19);
    if (!v51)
    {
      operator new();
    }

    v62 = 0;
    v52 = *(a2 + 1);
    if (v52 >= *(a2 + 2) || *v52 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
      {
        goto LABEL_128;
      }
    }

    else
    {
      v62 = *v52;
      *(a2 + 1) = v52 + 1;
    }

    v53 = *(a2 + 14);
    v54 = *(a2 + 15);
    *(a2 + 14) = v53 + 1;
    if (v53 >= v54 || (v55 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62), !topotext::VectorTimestamp::MergePartialFromCodedStream(v51, a2)) || *(a2 + 36) != 1)
    {
LABEL_128:
      v58 = 0;
      goto LABEL_130;
    }

    TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v55);
    v56 = *(a2 + 14);
    v17 = __OFSUB__(v56, 1);
    v57 = v56 - 1;
    if (v57 < 0 == v17)
    {
      *(a2 + 14) = v57;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v58 = 1;
  *(a2 + 36) = 1;
LABEL_130:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v60);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v61);
  return v58;
}

void sub_19A207734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x1093C4020A6E6BFLL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Document::SerializeWithCachedSizes(CRDT::Document *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::Document::default_instance_ + 40);
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
      v6 = *(CRDT::Document::default_instance_ + 48);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  if (*(v3 + 16) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(v3 + 56, v7);
      this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2);
      ++v7;
    }

    while (v7 < *(v3 + 16));
  }

  if (*(v3 + 22) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3 + 80, v9);
      this = google::protobuf::internal::WireFormatLite::WriteString(4, v10, a2);
      ++v9;
    }

    while (v9 < *(v3 + 22));
  }

  if (*(v3 + 28) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3 + 104, v11);
      this = google::protobuf::internal::WireFormatLite::WriteString(5, v12, a2);
      ++v11;
    }

    while (v11 < *(v3 + 28));
  }

  if (*(v3 + 34) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3 + 128, v13);
      this = google::protobuf::internal::WireFormatLite::WriteBytes(6, v14, a2);
      ++v13;
    }

    while (v13 < *(v3 + 34));
  }

  if ((*(v3 + 32) & 0x40) != 0)
  {
    v15 = *(v3 + 19);
    if (!v15)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v15 = *(CRDT::Document::default_instance_ + 152);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(7, v15, a2);
  }

  v16 = *(v3 + 31);
  if (v16 < 0)
  {
    v17 = *(v3 + 1);
    v16 = *(v3 + 2);
  }

  else
  {
    v17 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v17, v16);
}

uint64_t CRDT::Document::ByteSize(CRDT::Document *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v4 = *(this + 5);
    if (!v4)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v4 = *(CRDT::Document::default_instance_ + 40);
    }

    v5 = CRDT::VectorTimestamp::ByteSize(v4);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 6);
    if (!v8)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v8 = *(CRDT::Document::default_instance_ + 48);
    }

    v9 = CRDT::VectorTimestamp::ByteSize(v8);
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
  if ((v2 & 0x40) != 0)
  {
    v12 = *(this + 19);
    if (!v12)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v12 = *(CRDT::Document::default_instance_ + 152);
    }

    v13 = topotext::VectorTimestamp::ByteSize(v12);
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
  }

LABEL_25:
  v16 = *(this + 16);
  v17 = v16 + v3;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(this + 56, v18);
      v20 = CRDT::Document_DocObject::ByteSize(v19);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v17 += v21 + v22;
      ++v18;
    }

    while (v18 < *(this + 16));
  }

  v23 = *(this + 22);
  v24 = v23 + v17;
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, v25);
      v27 = *(v26 + 23);
      v28 = v27;
      v29 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v30 = *(v26 + 23);
      }

      else
      {
        v30 = v29;
      }

      if (v30 >= 0x80)
      {
        v31 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(v26 + 23);
        v29 = *(v26 + 8);
        v28 = *(v26 + 23);
      }

      else
      {
        v31 = 1;
      }

      if (v28 < 0)
      {
        v27 = v29;
      }

      v24 += v31 + v27;
      ++v25;
    }

    while (v25 < *(this + 22));
  }

  v32 = *(this + 28);
  v33 = v32 + v24;
  if (v32 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, v34);
      v36 = *(v35 + 23);
      v37 = v36;
      v38 = *(v35 + 8);
      if ((v36 & 0x80u) == 0)
      {
        v39 = *(v35 + 23);
      }

      else
      {
        v39 = v38;
      }

      if (v39 >= 0x80)
      {
        v40 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
        v36 = *(v35 + 23);
        v38 = *(v35 + 8);
        v37 = *(v35 + 23);
      }

      else
      {
        v40 = 1;
      }

      if (v37 < 0)
      {
        v36 = v38;
      }

      v33 += v40 + v36;
      ++v34;
    }

    while (v34 < *(this + 28));
  }

  v41 = *(this + 34);
  v42 = v41 + v33;
  if (v41 >= 1)
  {
    v43 = 0;
    do
    {
      v44 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, v43);
      v45 = *(v44 + 23);
      v46 = v45;
      v47 = *(v44 + 8);
      if ((v45 & 0x80u) == 0)
      {
        v48 = *(v44 + 23);
      }

      else
      {
        v48 = v47;
      }

      if (v48 >= 0x80)
      {
        v49 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
        v45 = *(v44 + 23);
        v47 = *(v44 + 8);
        v46 = *(v44 + 23);
      }

      else
      {
        v49 = 1;
      }

      if (v46 < 0)
      {
        v45 = v47;
      }

      v42 += v49 + v45;
      ++v43;
    }

    while (v43 < *(this + 34));
  }

  v50 = *(this + 31);
  if (v50 < 0)
  {
    v50 = *(this + 2);
  }

  result = (v42 + v50);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document::CheckTypeAndMergeFrom(CRDT::Document *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return CRDT::Document::MergeFrom(this, lpsrc);
}

BOOL google::protobuf::internal::AllAreInitialized<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>>(uint64_t a1)
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

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(a1, v2);
  }

  while (((*(*v5 + 40))(v5) & 1) != 0);
  return v3 < 1;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_19A207EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_19A207F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_19A208070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_19A20814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(uint64_t a1, int a2)
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

void sub_19A20828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A208368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A208444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::VectorTimestamp_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A2085DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::Dictionary_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A20876C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::Index_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A2088F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::OneOf_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A208A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = CRDT::StringArray_ArrayAttachment::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A208BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(a2, v6);
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
      result = CRDT::Document_CustomObject_MapEntry::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A208D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(a2, v6);
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
      result = CRDT::Document_DocObject::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A208EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::DeleteEmptyString(google::protobuf::internal *this)
{
  if (google::protobuf::internal::empty_string_)
  {
    if (*(google::protobuf::internal::empty_string_ + 23) < 0)
    {
      operator delete(*google::protobuf::internal::empty_string_);
    }

    JUMPOUT(0x19A8FD070);
  }
}

BOOL google::protobuf::internal::WireFormatLite::SkipField(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedInputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = a2;
  LittleEndian64Fallback = 0;
  v8 = a2 & 7;
  if (v8 <= 1)
  {
    if ((a2 & 7) == 0)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      v17 = *(this + 1);
      if (v17 >= *(this + 2) || (*v17 & 0x8000000000000000) != 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &__p))
        {
          return 0;
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = *v17;
        *(this + 1) = v17 + 1;
      }

      google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
      google::protobuf::io::CodedOutputStream::WriteVarint64(a3, __p.__r_.__value_.__r.__words[0]);
      return 1;
    }

    if (v8 == 1)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      LittleEndian64Fallback = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p);
      if (LittleEndian64Fallback)
      {
        google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
        google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, __p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 == 5)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          LittleEndian64Fallback = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &__p);
          if (LittleEndian64Fallback)
          {
            google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
            google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, __p.__r_.__value_.__l.__data_);
          }
        }

        return LittleEndian64Fallback;
      }

      google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 < v13 && google::protobuf::internal::WireFormatLite::SkipMessage(this, a3, v10, v11))
      {
        v14 = *(this + 14);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v16 < 0 == v15)
        {
          *(this + 14) = v16;
        }

        return *(this + 8) == (v5 & 0xFFFFFFF8 | 4);
      }

      return 0;
    }

    LODWORD(__n) = 0;
    v9 = *(this + 1);
    if (v9 >= *(this + 2) || *v9 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__n))
      {
        return 0;
      }
    }

    else
    {
      LODWORD(__n) = *v9;
      *(this + 1) = v9 + 1;
    }

    google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
    google::protobuf::io::CodedOutputStream::WriteVarint32(a3, __n);
    memset(&__p, 0, sizeof(__p));
    LittleEndian64Fallback = google::protobuf::io::CodedInputStream::ReadString(this, &__p, __n);
    if (LittleEndian64Fallback)
    {
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
        v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[1];
      }

      google::protobuf::io::CodedOutputStream::WriteRaw(a3, p_p, v19);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return LittleEndian64Fallback;
}

void sub_19A2091F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::SkipMessage(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedInputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  do
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
    }

    v8 = TagFallback == 0;
    if (!TagFallback)
    {
      break;
    }

    if ((TagFallback & 7) == 4)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32(a2, TagFallback);
      return 1;
    }
  }

  while ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a2, a4) & 1) != 0);
  return v8;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteInt32(google::protobuf::internal::WireFormatLite *this, signed int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);
  if (a2 < 0)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
  }

  else
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
  }
}

uint64_t google::protobuf::internal::WireFormatLite::WriteInt64(google::protobuf::internal::WireFormatLite *this, unint64_t a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteUInt32(google::protobuf::internal::WireFormatLite *this, unsigned int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteSInt64(google::protobuf::internal::WireFormatLite *this, uint64_t a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return google::protobuf::io::CodedOutputStream::WriteVarint64(a3, (2 * a2) ^ (a2 >> 63));
}

uint64_t google::protobuf::internal::WireFormatLite::WriteFloat(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedOutputStream *a2, float a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 5);

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a2, SLODWORD(a3));
}

uint64_t google::protobuf::internal::WireFormatLite::WriteDouble(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedOutputStream *a2, double a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 1);

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *&a3);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteString(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/wire_format_lite.cc", 377);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_19A20956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/wire_format_lite.cc", 386);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (*(this + 25) == 1)
  {
    return google::protobuf::io::CodedOutputStream::WriteAliasedRaw(this, v9, v10);
  }

  else
  {
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
  }
}

void sub_19A209668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBytes(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/wire_format_lite.cc", 393);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_19A209750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/wire_format_lite.cc", 401);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (*(this + 25) == 1)
  {
    return google::protobuf::io::CodedOutputStream::WriteAliasedRaw(this, v9, v10);
  }

  else
  {
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
  }
}

void sub_19A20984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteMessage(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = (*(*a2 + 96))(a2);
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v5);
  v6 = *(*a2 + 80);

  return v6(a2, this);
}

BOOL google::protobuf::internal::WireFormatLite::ReadString(google::protobuf::io::CodedInputStream *this, std::string *a2)
{
  v10 = 0;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 < v4)
  {
    v6 = *v5;
    if ((v6 & 0x80000000) == 0)
    {
      v10 = *v5;
      v7 = v5 + 1;
      *(this + 1) = v7;
      goto LABEL_7;
    }
  }

  v8 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
  result = 0;
  if (v8)
  {
    v6 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v7 = *(this + 1);
      v4 = *(this + 2);
LABEL_7:
      if (v6 > v4 - v7)
      {
        return google::protobuf::io::CodedInputStream::ReadStringFallback(this, a2, v6);
      }

      std::string::resize(a2, v6, 0);
      if (!v6)
      {
        return 1;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        if (!a2->__r_.__value_.__l.__size_)
        {
LABEL_15:
          a2 = 0;
          goto LABEL_16;
        }

        a2 = a2->__r_.__value_.__r.__words[0];
      }

      else if (!*(&a2->__r_.__value_.__s + 23))
      {
        goto LABEL_15;
      }

LABEL_16:
      memcpy(a2, *(this + 1), v6);
      *(this + 1) += v6;
      return 1;
    }
  }

  return result;
}

void REMWeekdayFromICSWeekday_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Encountered an unknown ICSWeekday: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void REMCheckedDynamicCast_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = +[REMLog utility];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = a2;
    _os_log_fault_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_FAULT, "rem_log_fault_if (src != nil && result == nil) -- Unexpected object type in checked dynamic cast %@ expects %@", &v7, 0x16u);
  }

  *a3 = 0;
  v6 = *MEMORY[0x1E69E9840];
}

void REMCheckedProtocolCast_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[REMLog utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!protocol) -- Protocol is nil {src: %@}", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void NSStringFromREMAccountType_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void NSStringFromREMAccountType_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}