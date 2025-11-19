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

void sub_26D3FFF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::StringPiece::StringPiece<std::allocator<char>>(void *a1, uint64_t *a2, const char *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *a1 = v4;
  a1[1] = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if ((v5 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v5, "size_t to int conversion", a3);
    }
  }

  a1[1] = v5;
  return a1;
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

void sub_26D400050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D400128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4001E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D400290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D400630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  *a1 = &unk_287EBC610;
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
    MEMORY[0x26D6BEFC0](&v20);
  }

  return a1;
}

void sub_26D400F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
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

  JUMPOUT(0x26D6BF040);
}

{
  *this = &unk_287EBC610;
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
      v6 = MEMORY[0x26D6BEE80](v5, 55);
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
  MEMORY[0x26D6BEDC0](&v11, a1, 1);
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

void sub_26D401420(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x26D4013E0);
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

  MEMORY[0x26D6BECE0](a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26D401514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_26D401660(void *a1)
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

void *sentencepiece::filesystem::PosixWritableFile::PosixWritableFile(void *a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_287EBC670;
  v6 = a1 + 1;
  sentencepiece::util::Status::Status(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v7 = MEMORY[0x277D82678];
  a1[2] = MEMORY[0x277D82678];
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    v15 = 7;
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
    MEMORY[0x26D6BEFC0](&v20);
  }

  return a1;
}

void sub_26D4019A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
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

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x26D6BED90](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26D401BA4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D6BEFC0](v1);
  _Unwind_Resume(a1);
}

void sentencepiece::filesystem::PosixWritableFile::~PosixWritableFile(sentencepiece::filesystem::PosixWritableFile *this)
{
  sentencepiece::filesystem::PosixWritableFile::~PosixWritableFile(this);

  JUMPOUT(0x26D6BF040);
}

{
  *this = &unk_287EBC670;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82678] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sentencepiece::util::Status::~Status((this + 8));
}

BOOL sentencepiece::filesystem::PosixWritableFile::Write(uint64_t a1)
{
  v2 = *(a1 + 16);
  std::ostream::write();
  return *(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) == 0;
}

uint64_t sentencepiece::filesystem::PosixWritableFile::WriteLine(uint64_t a1)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v3 = *(*a1 + 24);

    return v3(a1, "\n", 1);
  }

  return result;
}

uint64_t sentencepiece::SetRandomGeneratorSeed(uint64_t this)
{
  if (this != -1)
  {
  }

  return this;
}

uint64_t sentencepiece::GetRandomGeneratorSeed(sentencepiece *this)
{
  if (v1 != -1)
  {
  }

  std::random_device::random_device[abi:ne200100](&v4);
  v2 = MEMORY[0x26D6BEEE0](&v4);
  std::random_device::~random_device(&v4);
  return v2;
}

void sub_26D401E04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_begin_catch(a1);
  atomic_load(v12);
  __cxa_end_catch();
  JUMPOUT(0x26D401DF0);
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

void sub_26D401E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t sentencepiece::string_util::IsStructurallyValid(sentencepiece::string_util *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *v9 = 0;
  if (a2 < 1)
  {
    return 1;
  }

  v4 = this;
  v5 = this + a2;
  while (1)
  {
    v6 = sentencepiece::string_util::DecodeUTF8(v4, v5, v9, a4);
    v7 = v6 != 65533 || *v9 == 3;
    if (!v7 || v6 >> 11 >= 0x1B && (v6 - 57344) >> 13 > 0x80)
    {
      break;
    }

    v4 = (v4 + *v9);
    if (v4 >= v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sentencepiece::string_util::EncodeUTF8(sentencepiece::string_util *this, _BYTE *a2, char *a3)
{
  if (this > 0x7F)
  {
    if (this > 0x7FF)
    {
      if (this >> 16 <= 0x10)
      {
        v4 = this;
      }

      else
      {
        v4 = 65533;
      }

      v5 = v4 & 0x3F | 0x80;
      v6 = (v4 >> 6) & 0x3F | 0xFFFFFF80;
      if (HIWORD(v4))
      {
        a2[3] = v5;
        a2[2] = v6;
        a2[1] = (v4 >> 12) & 0x3F | 0x80;
        LODWORD(this) = (v4 >> 18) | 0xFFFFFFF0;
        v3 = 4;
      }

      else
      {
        a2[2] = v5;
        a2[1] = v6;
        LODWORD(this) = (v4 >> 12) | 0xFFFFFFE0;
        v3 = 3;
      }
    }

    else
    {
      a2[1] = this & 0x3F | 0x80;
      LODWORD(this) = (this >> 6) | 0xFFFFFFC0;
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  *a2 = this;
  return v3;
}

void sentencepiece::string_util::UnicodeCharToUTF8(sentencepiece::string_util *this@<X0>, std::string *a2@<X8>)
{
  v4 = this;
  memset(&__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v4, &__p, 1uLL);
  sentencepiece::string_util::UnicodeTextToUTF8(&__p, v3, a2);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26D4021B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sentencepiece::string_util::UnicodeTextToUTF8@<X0>(std::string *result@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  while (v4 != size)
  {
    v6 = sentencepiece::string_util::EncodeUTF8(*v4, v8, a2);
    result = std::string::append(a3, v8, v6);
    ++v4;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D402260(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::string_util::UTF8ToUnicodeText(sentencepiece::string_util *this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2 >= 1)
  {
    v4 = this;
    v6 = 0;
    v7 = this + a2;
    do
    {
      *v17 = 0;
      v8 = sentencepiece::string_util::DecodeUTF8(v4, v7, v17, a3);
      v9 = a4[2];
      if (v6 >= v9)
      {
        v10 = *a4;
        v11 = v6 - *a4;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v15);
        }

        *(4 * v12) = v8;
        v6 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a4;
        *a4 = 0;
        a4[1] = v6;
        a4[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 4;
      }

      a4[1] = v6;
      v4 = (v4 + *v17);
    }

    while (v4 < v7);
  }
}

void sub_26D4023B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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
  MEMORY[0x26D6BEE80](v4, this);
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
  result = MEMORY[0x26D6BEFC0](&v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sentencepiece::util::StrSplitAsCSV(void *__src@<X0>, size_t __len@<X1>, uint64_t a3@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v33 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = v33;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (__len)
  {
    v7 = p_dst + __len;
    do
    {
      if (*p_dst == 34)
      {
        p_dst = (p_dst + 1);
        v8 = p_dst;
        v9 = p_dst;
        if (p_dst < v7)
        {
          v8 = p_dst;
          v9 = p_dst;
          do
          {
            v10 = *v9;
            if (v10 == 34)
            {
              v11 = *(v9 + 1);
              v9 = (v9 + 1);
              if (v11 != 34)
              {
                break;
              }
            }

            *v8++ = v10;
            v9 = (v9 + 1);
          }

          while (v9 < v7);
        }

        v12 = memchr(v9, 44, v7 - v9);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v7;
        }
      }

      else
      {
        v14 = memchr(p_dst, 44, v7 - p_dst);
        if (v14)
        {
          v13 = v14;
        }

        else
        {
          v13 = v7;
        }

        v8 = v13;
      }

      *v8 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, p_dst);
      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        v34.__end_cap_.__value_ = a3;
        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v21);
        }

        v22 = 24 * v18;
        v23 = *__p;
        *(v22 + 16) = v31;
        *v22 = v23;
        __p[1] = 0;
        v31 = 0;
        __p[0] = 0;
        v24 = 24 * v18 + 24;
        v25 = *(a3 + 8) - *a3;
        v26 = 24 * v18 - v25;
        memcpy((v22 - v25), *a3, v25);
        v27 = *a3;
        *a3 = v26;
        *(a3 + 8) = v24;
        v28 = *(a3 + 16);
        *(a3 + 16) = 0;
        v34.__end_ = v27;
        v34.__end_cap_.__value_ = v28;
        v34.__first_ = v27;
        v34.__begin_ = v27;
        std::__split_buffer<std::string>::~__split_buffer(&v34);
        v29 = SHIBYTE(v31);
        *(a3 + 8) = v24;
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = *__p;
        *(v16 + 16) = v31;
        *v16 = v17;
        *(a3 + 8) = v16 + 24;
      }

      p_dst = (v13 + 1);
    }

    while ((v13 + 1) < v7);
    v5 = v33;
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26D4028A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
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
    MEMORY[0x26D6BEE80](&v10, 287);
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
    return MEMORY[0x26D6BEFC0](&v14);
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D402BE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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
  *v4 = &unk_287EBC6D0;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  return this;
}

void *sentencepiece::bpe::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sentencepiece::ModelInterface::ModelInterface(a1, a2, a3, a4);
  *result = &unk_287EBC6D0;
  return result;
}

void sentencepiece::bpe::Model::~Model(sentencepiece::bpe::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x26D6BF040);
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
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
  *&v57[0] = &unk_287EBC7E8;
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
        std::vector<int>::__throw_length_error[abi:ne200100]();
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

      *(v53 + 2) = &unk_26D454396;
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

void sub_26D403454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
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
  *a1 = &unk_287EBC7E8;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x26D6BF010](*v2, 0x1000C801E56706BLL);
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

  JUMPOUT(0x26D6BF040);
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
  *a2 = &unk_287EBC818;
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
        std::vector<int>::__throw_length_error[abi:ne200100]();
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

void sub_26D4043AC(_Unwind_Exception *a1, int a2)
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

sentencepiece *sentencepiece::error::Exit(sentencepiece *this)
{
  if (!sentencepiece::error::gTestCounter)
  {
    v1 = this;
    sentencepiece::ShutdownLibrary(this);
    exit(v1);
  }

  sentencepiece::error::gTestCounter = 2;
  return this;
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

void sub_26D4046A8(_Unwind_Exception *exception_object)
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

void *sentencepiece::util::Status::error_message(sentencepiece::util::Status *this)
{
  v1 = *this;
  if (!*this)
  {
    return &unk_26D454396;
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sentencepiece::util::Status::set_error_message(sentencepiece::util::Status *this, const char *a2)
{
  if (!*this)
  {
    operator new();
  }

  JUMPOUT(0x26D6BECD0);
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
      MEMORY[0x26D6BECD0](a2, off_279D9C970[v5]);
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

void sub_26D4049EC(_Unwind_Exception *exception_object)
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

    JUMPOUT(0x26D6BF040);
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

void sub_26D404B18(_Unwind_Exception *a1)
{
  MEMORY[0x26D6BF040](v1, 0x1000C4000313F17);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Get(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_26D449230;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::ArenaImpl(google::protobuf::internal::ArenaImpl *a1, uint64_t a2)
{
  *(a1 + 4) = 0;
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = v4();
    v6 = v5;
    if (v5)
    {
      v7 = (*(*v5 + 32))(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v8 & 7) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 97);
    v10 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (reinterpret_cast<uintptr_t>(mem) & 7) == (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  if (!v8 || v9 <= 0x87)
  {
    if (*a2 <= 0x88uLL)
    {
      v9 = 136;
    }

    else
    {
      v9 = *a2;
    }

    v8 = (*(a2 + 32))(v9);
  }

  v11 = 3;
  if (v8 != *(a2 + 16))
  {
    v11 = 1;
  }

  *v8 = v11;
  *(v8 + 8) = 24;
  *(v8 + 16) = v9;
  v12 = google::protobuf::internal::SerialArena::Block::Pointer(v8, 0x18uLL);
  *(a1 + 4) = v12;
  v13 = *(a2 + 32);
  *v12 = *a2;
  *(v12 + 16) = v13;
  *(v12 + 32) = v6;
  *(v8 + 8) += 40;
  google::protobuf::internal::ArenaImpl::Init(a1, v7);
  google::protobuf::internal::ArenaImpl::SetInitialBlock(a1, v8);
  return a1;
}

void sub_26D404D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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

void sub_26D404DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t *google::protobuf::internal::ArenaImpl::Init(google::protobuf::internal::ArenaImpl *this, unsigned int a2)
{
  result = google::protobuf::internal::ArenaImpl::thread_cache(this);
  add_explicit = *result;
  if ((*result & 0x1FF) == 0)
  {
    add_explicit = atomic_fetch_add_explicit(google::protobuf::internal::ArenaImpl::lifecycle_id_generator_, 0x200uLL, memory_order_relaxed);
  }

  *result = add_explicit + 2;
  *(this + 3) = add_explicit | a2;
  *(this + 1) = 0;
  *this = 0;
  *(this + 2) = 0;
  return result;
}

void *google::protobuf::internal::ArenaImpl::SetInitialBlock(google::protobuf::internal::ArenaImpl *this, google::protobuf::internal::SerialArena::Block *a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  v6 = google::protobuf::internal::SerialArena::New(a2, v4, this, v5);
  *(v6 + 4) = 0;
  *this = v6;
  *(this + 2) = *(a2 + 2);
  v7 = google::protobuf::internal::ArenaImpl::thread_cache(v6);
  *(v7 + 2) = v6;
  v8 = *(this + 3);
  result = google::protobuf::internal::ArenaImpl::thread_cache(v7);
  result[1] = v8;
  atomic_store(v6, this + 1);
  return result;
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

void sub_26D404F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ArenaImpl::~ArenaImpl(google::protobuf::internal::ArenaImpl *this)
{
  for (i = *this; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      google::protobuf::internal::SerialArena::CleanupListFallback(i);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
  }

  else
  {
    v5 = google::protobuf::internal::ArenaFree;
    v4 = 0;
  }

  v6 = *this;
  while (v6)
  {
    v7 = *(v6 + 16);
    v6 = *(v6 + 32);
    if (v7)
    {
      do
      {
        v8 = *v7;
        if ((*v7 & 2) == 0)
        {
          (v5)(v7, v7[2]);
        }

        v7 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      }

      while ((v8 & 0xFFFFFFFFFFFFFFFCLL) != 0);
    }
  }

  if (v4)
  {
    (*(*v4 + 16))(v4, *(this + 2));
  }
}

uint64_t *google::protobuf::internal::ArenaImpl::CleanupList(uint64_t *this)
{
  for (i = *this; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      this = google::protobuf::internal::SerialArena::CleanupListFallback(i);
    }
  }

  return this;
}

uint64_t google::protobuf::internal::ArenaImpl::Reset(google::protobuf::internal::ArenaImpl *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      (*(*v3 + 24))(v3, *(this + 2));
    }
  }

  for (i = *this; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      google::protobuf::internal::SerialArena::CleanupListFallback(i);
    }
  }

  v5 = *(this + 4);
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = google::protobuf::internal::ArenaFree;
  }

  v7 = *this;
  if (*this)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 16);
      v7 = *(v7 + 32);
      if (v10)
      {
        do
        {
          v11 = *v10;
          v12 = *(v10 + 2);
          if (*v10)
          {
            if (v9)
            {
              google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 217);
              v13 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: special_block == nullptr: ");
              google::protobuf::internal::LogFinisher::operator=(&v18, &v13->__r_.__value_.__l.__data_);
              google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
            }

            v9 = v10;
          }

          else
          {
            (v6)(v10, *(v10 + 2));
          }

          v8 += v12;
          v10 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        }

        while ((v11 & 0xFFFFFFFFFFFFFFFCLL) != 0);
      }
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  google::protobuf::internal::ArenaImpl::Init(this, *(this + 6) & 1);
  if (v9)
  {
    v14 = *v9;
    if (*v9 >= 4uLL)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 226);
      v15 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (special_block->next()) == (nullptr): ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      v14 = *v9;
    }

    *v9 = v14 & 3;
    v16 = 64;
    if (!*(this + 4))
    {
      v16 = 24;
    }

    *(v9 + 1) = v16;
    google::protobuf::internal::ArenaImpl::SetInitialBlock(this, v9);
  }

  return v8;
}

void sub_26D4052C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4053CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4055C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::AddCleanup(atomic_ullong *this, void *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*(v6 + 1) == this[3])
  {
    result = *(v6 + 2);
    goto LABEL_3;
  }

  v10 = google::protobuf::internal::ArenaImpl::thread_cache(v6);
  result = atomic_load_explicit(this + 1, memory_order_acquire);
  if (result && *(result + 1) == v10)
  {
LABEL_3:
    v9 = *(result + 7);
    if (v9 == *(result + 8))
    {

      return google::protobuf::internal::SerialArena::AddCleanupFallback(result, a2, a3, v7);
    }

    else
    {
      *v9 = a2;
      v9[1] = a3;
      *(result + 7) = v9 + 2;
    }

    return result;
  }

  return google::protobuf::internal::ArenaImpl::AddCleanupFallback(this, a2, a3);
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::AddCleanupFallback(google::protobuf::internal::ArenaImpl *this, void *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  result = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v6);
  v9 = *(result + 7);
  if (v9 == *(result + 8))
  {

    return google::protobuf::internal::SerialArena::AddCleanupFallback(result, a2, a3, v8);
  }

  else
  {
    *v9 = a2;
    v9[1] = a3;
    *(result + 7) = v9 + 2;
  }

  return result;
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
    *v5 = xmmword_26D449240;
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

uint64_t google::protobuf::internal::ArenaImpl::SpaceUsed(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    v3 = 0;
    do
    {
      v3 += google::protobuf::internal::SerialArena::SpaceUsed(explicit);
      explicit = *(explicit + 4);
    }

    while (explicit);
  }

  else
  {
    v3 = 0;
  }

  if (this[4])
  {
    return v3 - 40;
  }

  else
  {
    return v3;
  }
}

uint64_t google::protobuf::internal::SerialArena::SpaceUsed(google::protobuf::internal::SerialArena *this)
{
  v2 = *(this + 5);
  v3 = v2 - google::protobuf::internal::SerialArena::Block::Pointer(*(this + 2), 0x18uLL);
  v4 = **(this + 2);
  while (1)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v4 = *v5;
    v3 = v3 + v6[1] - 24;
  }

  return v3 - 72;
}

uint64_t google::protobuf::internal::SerialArena::CleanupList(uint64_t this)
{
  if (*(this + 24))
  {
    return google::protobuf::internal::SerialArena::CleanupListFallback(this);
  }

  return this;
}

uint64_t google::protobuf::internal::SerialArena::CleanupListFallback(uint64_t this)
{
  v1 = *(this + 24);
  v2 = (*(this + 56) - v1 - 16) >> 4;
  if (v2)
  {
LABEL_2:
    v3 = &v1[2 * v2 + 1];
    do
    {
      this = (*v3)(*(v3 - 1));
      v3 -= 2;
      --v2;
    }

    while (v2);
  }

  while (1)
  {
    v1 = v1[1];
    if (!v1)
    {
      return this;
    }

    v2 = *v1;
    if (*v1)
    {
      goto LABEL_2;
    }
  }
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

void sub_26D405C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x26D6BF030);
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

    JUMPOUT(0x26D6BECE0);
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

void sub_26D40612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void *google::protobuf::internal::ArenaStringPtr::MutableNoCopy(google::protobuf::internal::ArenaStringPtr *this, uint64_t a2, google::protobuf::internal::ArenaImpl *a3)
{
  if (*this == a2)
  {
    if (!a3)
    {
      operator new();
    }

    if (*(a3 + 24))
    {
      v5 = a3;
      google::protobuf::internal::ArenaStringPtr::Set(a3);
      a3 = v5;
    }

    result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a3, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *this = result;
  }

  else
  {

    return google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
  }

  return result;
}

uint64_t google::protobuf::internal::ArenaStringPtr::Release(google::protobuf::internal::ArenaStringPtr *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2)
  {
    return 0;
  }

  else
  {
    return google::protobuf::internal::ArenaStringPtr::ReleaseNonDefault(a1, a2, a3);
  }
}

uint64_t google::protobuf::internal::ArenaStringPtr::ReleaseNonDefault(google::protobuf::internal::ArenaStringPtr *this, uint64_t a2, uint64_t a3)
{
  if (*this == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 165);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !IsDefault(default_value): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    if (a3)
    {
LABEL_3:
      operator new();
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  v7 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
  *this = a2;
  return v7;
}

void sub_26D406474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::ArenaStringPtr *google::protobuf::internal::ArenaStringPtr::SetAllocated(google::protobuf::internal::ArenaStringPtr *this, std::string *a2, __int128 *a3, google::protobuf::internal::ArenaImpl *a4)
{
  v5 = a2;
  v6 = this;
  if (a4)
  {
    if (a3)
    {
      if (*(a4 + 24))
      {
        google::protobuf::internal::ArenaStringPtr::Set(a4);
      }

      AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a4, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
      v5 = AlignedAndAddCleanup;
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(AlignedAndAddCleanup, *a3, *(a3 + 1));
      }

      else
      {
        v9 = *a3;
        AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = *(a3 + 2);
        *&AlignedAndAddCleanup->__r_.__value_.__l.__data_ = v9;
      }

      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      this = MEMORY[0x26D6BF040](a3, 0x1012C40EC159624);
    }
  }

  else
  {
    if (*this != a2)
    {
      v10 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
      v11 = v10;
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      this = MEMORY[0x26D6BF040](v11, 0x1012C40EC159624);
    }

    if (a3)
    {
      operator new();
    }
  }

  *v6 = v5;
  return this;
}

google::protobuf::internal::ArenaStringPtr *google::protobuf::internal::ArenaStringPtr::Destroy(google::protobuf::internal::ArenaStringPtr *result, uint64_t a2, uint64_t a3)
{
  if (!a3 && *result != a2)
  {
    v4 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    JUMPOUT(0x26D6BF040);
  }

  return result;
}

google::protobuf::internal::ArenaStringPtr *google::protobuf::internal::ArenaStringPtr::Destroy(google::protobuf::internal::ArenaStringPtr *a1, uint64_t a2)
{
  return google::protobuf::internal::ArenaStringPtr::Destroy(a1, &google::protobuf::internal::fixed_address_empty_string, a2);
}

{
  return google::protobuf::internal::ArenaStringPtr::Destroy(a1, 0, a2);
}

void *google::protobuf::internal::ArenaStringPtr::ClearToEmpty(void *this)
{
  if (*this != &google::protobuf::internal::fixed_address_empty_string)
  {
    v1 = *this & 0xFFFFFFFFFFFFFFFELL;
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

  return this;
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
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::LazyString::Init(void)const::mu, &dword_26D3C1000);
  }
}

void google::protobuf::io::CodedInputStream::~CodedInputStream(google::protobuf::io::CodedInputStream *this)
{
  if (*(this + 2))
  {
    google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(this);
  }
}

uint64_t google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(uint64_t this)
{
  if (*(this + 28) + *(this + 44) + *(this + 8) - *this >= 1)
  {
    v1 = this;
    this = (*(**(this + 16) + 24))(*(this + 16));
    v2 = *(v1 + 24) - *(v1 + 44) + *v1 - *(v1 + 8);
    *(v1 + 8) = *v1;
    *(v1 + 44) = 0;
    *(v1 + 24) = v2;
  }

  return this;
}

uint64_t google::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 8) + *(this + 44);
  *(this + 8) = v3;
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
    *(this + 8) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

uint64_t google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(google::protobuf::io::CodedInputStream *this, int a2)
{
  v3 = *(this + 36);
  *(this + 10) = a2;
  v4 = *(this + 12);
  v5 = *(this + 1) + *(this + 11);
  *(this + 1) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 6);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 1) = v5 - v9;
  }

  *(this + 11) = v9;
  *(this + 36) = 0;
  v10 = *(this + 13);
  if (v10 >= *(this + 14))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 161);
    v11 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (recursion_budget_) < (recursion_limit_): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v10 = *(this + 13);
  }

  *(this + 13) = v10 + 1;
  return v3;
}

void sub_26D4069FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::CheckEntireMessageConsumedAndPopLimit(google::protobuf::io::CodedInputStream *this, int a2)
{
  result = *(this + 36);
  *(this + 10) = a2;
  v4 = *(this + 12);
  v5 = *(this + 1) + *(this + 11);
  *(this + 1) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 6);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 1) = v5 - v9;
  }

  *(this + 11) = v9;
  *(this + 36) = 0;
  return result;
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
    return (v1 - *(this + 6) + *(this + 11) + *(this + 2) - *this);
  }
}

uint64_t google::protobuf::io::CodedInputStream::SetTotalBytesLimit(uint64_t this, int a2)
{
  v2 = *(this + 24);
  v3 = *(this + 8);
  v4 = *(this + 40);
  v5 = *(this + 44);
  v6 = v2 - v5 + *this - v3;
  if (v6 <= a2)
  {
    v6 = a2;
  }

  *(this + 48) = v6;
  v7 = v3 + v5;
  *(this + 8) = v7;
  if (v6 >= v4)
  {
    v6 = v4;
  }

  v8 = __OFSUB__(v2, v6);
  v9 = v2 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 8) = v7 - v9;
  }

  *(this + 44) = v9;
  return this;
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilTotalBytesLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 12);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 2) - *this);
  }
}

void google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(google::protobuf::io::CodedInputStream *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 193);
  v2 = google::protobuf::internal::LogMessage::operator<<(v6, "A protocol message was rejected because it was too big (more than ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, *(this + 12));
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in third_party/protobuf/src/google/protobuf/io/coded_stream.h.");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
}

void sub_26D406BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::SkipFallback(google::protobuf::io::CodedInputStream *this, int a2, int a3)
{
  if (*(this + 11) < 1)
  {
    v5 = (a2 - a3);
    *this = 0;
    *(this + 1) = 0;
    v6 = *(this + 12);
    if (v6 >= *(this + 10))
    {
      v6 = *(this + 10);
    }

    v7 = v6 - *(this + 6);
    if (v7 >= v5)
    {
      if ((*(**(this + 2) + 32))(*(this + 2), v5))
      {
        *(this + 6) += v5;
        return 1;
      }

      else
      {
        v8 = (*(**(this + 2) + 40))(*(this + 2));
        result = 0;
        *(this + 6) = v8;
      }
    }

    else
    {
      if (v7 >= 1)
      {
        *(this + 6) = v6;
        (*(**(this + 2) + 32))(*(this + 2));
      }

      return 0;
    }
  }

  else
  {
    result = 0;
    *this += a3;
  }

  return result;
}

uint64_t google::protobuf::io::CodedInputStream::GetDirectBufferPointer(google::protobuf::io::CodedInputStream *this, const void **a2, int *a3)
{
  v6 = *this;
  if (*(this + 2) == *this)
  {
    result = google::protobuf::io::CodedInputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    v6 = *this;
  }

  *a2 = v6;
  *a3 = *(this + 2) - *this;
  return 1;
}

uint64_t google::protobuf::io::CodedInputStream::Refresh(google::protobuf::io::CodedInputStream *this)
{
  if (*(this + 2) != *this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 617);
    v2 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (0) == (BufferSize()): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  v3 = *(this + 11);
  if (v3 > 0 || *(this + 7) > 0 || *(this + 6) == *(this + 10))
  {
    v4 = *(this + 6) - v3;
    v5 = *(this + 12);
    if (v4 >= v5 && v5 != *(this + 10))
    {
      google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(this);
    }

    return 0;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v8 = *(this + 2);
    do
    {
      v6 = (*(*v8 + 16))(v8, &v23, &v22);
      if (!v6)
      {
        *this = 0;
        *(this + 1) = 0;
        return v6;
      }

      v9 = v22;
    }

    while (!v22);
    v10 = v23 + v22;
    *this = v23;
    *(this + 1) = v10;
    if (v9 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 638);
      v11 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (buffer_size) >= (0): ");
      google::protobuf::internal::LogFinisher::operator=(&v21, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
      v9 = v22;
    }

    v12 = *(this + 6);
    v13 = v12 - (v9 ^ 0x7FFFFFFF);
    if (v12 <= (v9 ^ 0x7FFFFFFF))
    {
      v15 = v9 + v12;
      v14 = *(this + 1);
    }

    else
    {
      *(this + 7) = v13;
      v14 = *(this + 1) - v13;
      *(this + 1) = v14;
      v15 = 0x7FFFFFFF;
    }

    *(this + 6) = v15;
    v16 = *(this + 10);
    v17 = v14 + *(this + 11);
    *(this + 1) = v17;
    v18 = *(this + 12);
    if (v18 >= v16)
    {
      v18 = v16;
    }

    v19 = __OFSUB__(v15, v18);
    v20 = v15 - v18;
    if ((v20 < 0) ^ v19 | (v20 == 0))
    {
      v20 = 0;
    }

    else
    {
      *(this + 1) = v17 - v20;
    }

    *(this + 11) = v20;
  }

  return v6;
}

void sub_26D406F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    v7 = *this;
    v8 = *(this + 1) - *this;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *this += v8;
    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *this += v6;
  return v6 <= v8;
}

BOOL google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = this;
  if (*(a1 + 8) - *a1 >= __n)
  {
    v6 = __n;
    std::string::resize(this, __n, 0);
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = v3->__r_.__value_.__r.__words[0];
      if (!v3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 267);
        v7 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: z.first != NULL: ");
        google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
        v3 = 0;
      }
    }

    memcpy(v3, *a1, v6);
    *a1 += v6;
    return 1;
  }

  else
  {

    return google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, __n);
  }
}

void sub_26D4070F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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
    v7 = v6 - a1[6] + a1[11] + a1[2] - *a1;
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(this, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *a1;
    v12 = *(a1 + 1) - *a1;
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
      v11 = *a1;
    }

    else
    {
      v14 = 0;
    }

    *a1 = &v11[v14];
    if ((google::protobuf::io::CodedInputStream::Refresh(a1) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(this, v11, v10);
  *a1 += v10;
  return v10 <= v12;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(unsigned int **this, unsigned int *a2)
{
  v3 = *this;
  if (((*(this + 2) - *this) & 0xFFFFFFFC) != 0)
  {
    *this = v3 + 1;
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

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(unint64_t **this, unint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (((*(this + 2) - *this) & 0xFFFFFFF8) != 0)
  {
    *this = v3 + 1;
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
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarint64Fallback(char **this)
{
  v3 = *this;
  v2 = this[1];
  if ((v2 - *this) <= 9 && (v2 <= v3 || *(v2 - 1) < 0))
  {
    v38[0].__r_.__value_.__r.__words[0] = 0;
    google::protobuf::io::CodedInputStream::ReadVarint64Slow(this, v38);
    return v38[0].__r_.__value_.__r.__words[0];
  }

  if ((*v3 & 0x80000000) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v38, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 417);
    v4 = google::protobuf::internal::LogMessage::operator<<(v38, "CHECK failed: (buffer[0]) >= (128): ");
    google::protobuf::internal::LogFinisher::operator=(&v37, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v38[0].__r_.__value_.__l.__data_);
  }

  v5 = v3[1];
  if ((v5 & 0x8000000000000000) == 0)
  {
    result = *v3 + (v5 << 7) - 128;
    v7 = 2;
LABEL_38:
    *this = &v3[v7];
    return result;
  }

  v8 = v3[2];
  if ((v8 & 0x8000000000000000) == 0)
  {
    result = (v3[1] << 7) + (v8 << 14) + *v3 - 16512;
    v7 = 3;
    goto LABEL_38;
  }

  v9 = v3[3];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    result = v9 << 21;
    v7 = 4;
    v11 = v3;
    do
    {
      v12 = *v11++;
      result += (v12 - 128) << v10;
      v10 += 7;
    }

    while (v10 != 21);
    goto LABEL_38;
  }

  v13 = v3[4];
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    result = v13 << 28;
    v7 = 5;
    v15 = v3;
    do
    {
      v16 = *v15++;
      result += (v16 - 128) << v14;
      v14 += 7;
    }

    while (v14 != 28);
    goto LABEL_38;
  }

  v17 = v3[5];
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    result = v17 << 35;
    v7 = 6;
    v19 = v3;
    do
    {
      v20 = *v19++;
      result += (v20 - 128) << v18;
      v18 += 7;
    }

    while (v18 != 35);
    goto LABEL_38;
  }

  v21 = v3[6];
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    result = v21 << 42;
    v7 = 7;
    v23 = v3;
    do
    {
      v24 = *v23++;
      result += (v24 - 128) << v22;
      v22 += 7;
    }

    while (v22 != 42);
    goto LABEL_38;
  }

  v25 = v3[7];
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    result = v25 << 49;
    v7 = 8;
    v27 = v3;
    do
    {
      v28 = *v27++;
      result += (v28 - 128) << v26;
      v26 += 7;
    }

    while (v26 != 49);
    goto LABEL_38;
  }

  v29 = v3[8];
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    result = v29 << 56;
    v7 = 9;
    v31 = v3;
    do
    {
      v32 = *v31++;
      result += (v32 - 128) << v30;
      v30 += 7;
    }

    while (v30 != 56);
    goto LABEL_38;
  }

  v33 = v3[9];
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    result = v33 << 63;
    v7 = 10;
    v35 = v3;
    do
    {
      v36 = *v35++;
      result += (v36 - 128) << v34;
      v34 += 7;
    }

    while (v34 != 63);
    goto LABEL_38;
  }

  return 0;
}

void sub_26D4075EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint32Fallback(google::protobuf::io::CodedInputStream *this, int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  if ((v4 - *this) <= 9 && (v4 <= v5 || *(v4 - 1) < 0))
  {
    LODWORD(result) = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
    if (v14)
    {
      return result;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    if (!a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 462);
      v6 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (first_byte_or_zero) != (0): ");
      v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Caller should provide us with *buffer_ when buffer is non-empty");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
      v5 = *this;
    }

    if (*v5 != a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 373);
      v8 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (*buffer) == (first_byte): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if ((a2 & 0x80) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 374);
      v9 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (first_byte & 0x80) == (0x80): ");
      v10 = google::protobuf::internal::LogMessage::operator<<(v9, a2);
      google::protobuf::internal::LogFinisher::operator=(&v17, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v11 = a2 + (v5[1] << 7) - 128;
    if (v5[1] < 0)
    {
      v11 = v11 + (v5[2] << 14) - 0x4000;
      if (v5[2] < 0)
      {
        v11 = v11 + (v5[3] << 21) - 0x200000;
        if (v5[3] < 0)
        {
          v15 = v5[4];
          v11 = v11 + (v15 << 28) - 0x10000000;
          if (v15 < 0)
          {
            v12 = v5 + 6;
            v16 = 5;
            result = -1;
            while (*(v12 - 1) < 0)
            {
              ++v12;
              if (!--v16)
              {
                return result;
              }
            }
          }

          else
          {
            v12 = v5 + 5;
          }
        }

        else
        {
          v12 = v5 + 4;
        }
      }

      else
      {
        v12 = v5 + 3;
      }
    }

    else
    {
      v12 = v5 + 2;
    }

    result = v11;
    *this = v12;
  }

  return result;
}

void sub_26D4077E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntSlow(char **this)
{
  result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
  if ((v2 & (result >> 31 == 0)) != 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(char **this)
{
  v3 = *this;
  v2 = this[1];
  if ((v2 - *this) > 9 || v2 > v3 && (*(v2 - 1) & 0x80000000) == 0)
  {
    if ((*v3 & 0x80000000) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v39, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 417);
      v4 = google::protobuf::internal::LogMessage::operator<<(v39, "CHECK failed: (buffer[0]) >= (128): ");
      google::protobuf::internal::LogFinisher::operator=(&v38, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v39[0].__r_.__value_.__l.__data_);
    }

    v5 = v3[1];
    if (v5 < 0)
    {
      v9 = v3[2];
      if (v9 < 0)
      {
        v10 = v3[3];
        if (v10 < 0)
        {
          v14 = v3[4];
          if (v14 < 0)
          {
            v18 = v3[5];
            if (v18 < 0)
            {
              v22 = v3[6];
              if (v22 < 0)
              {
                v26 = v3[7];
                if (v26 < 0)
                {
                  v30 = v3[8];
                  if (v30 < 0)
                  {
                    v34 = v3[9];
                    if (v34 < 0)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v35 = 0;
                    result = v34 << 63;
                    v7 = 10;
                    v36 = v3;
                    do
                    {
                      v37 = *v36++;
                      result += (v37 - 128) << v35;
                      v35 += 7;
                    }

                    while (v35 != 63);
                  }

                  else
                  {
                    v31 = 0;
                    result = v30 << 56;
                    v7 = 9;
                    v32 = v3;
                    do
                    {
                      v33 = *v32++;
                      result += (v33 - 128) << v31;
                      v31 += 7;
                    }

                    while (v31 != 56);
                  }
                }

                else
                {
                  v27 = 0;
                  result = v26 << 49;
                  v7 = 8;
                  v28 = v3;
                  do
                  {
                    v29 = *v28++;
                    result += (v29 - 128) << v27;
                    v27 += 7;
                  }

                  while (v27 != 49);
                }
              }

              else
              {
                v23 = 0;
                result = v22 << 42;
                v7 = 7;
                v24 = v3;
                do
                {
                  v25 = *v24++;
                  result += (v25 - 128) << v23;
                  v23 += 7;
                }

                while (v23 != 42);
              }
            }

            else
            {
              v19 = 0;
              result = v18 << 35;
              v7 = 6;
              v20 = v3;
              do
              {
                v21 = *v20++;
                result += (v21 - 128) << v19;
                v19 += 7;
              }

              while (v19 != 35);
            }
          }

          else
          {
            v15 = 0;
            result = v14 << 28;
            v7 = 5;
            v16 = v3;
            do
            {
              v17 = *v16++;
              result += (v17 - 128) << v15;
              v15 += 7;
            }

            while (v15 != 28);
          }
        }

        else
        {
          v11 = 0;
          result = v10 << 21;
          v7 = 4;
          v12 = v3;
          do
          {
            v13 = *v12++;
            result += (v13 - 128) << v11;
            v11 += 7;
          }

          while (v11 != 21);
        }
      }

      else
      {
        result = (v3[1] << 7) + (v9 << 14) + *v3 - 16512;
        v7 = 3;
      }
    }

    else
    {
      result = *v3 + (v5 << 7) - 128;
      v7 = 2;
    }

    if (!(result >> 31))
    {
      *this = &v3[v7];
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
  if ((v8 & (result >> 31 == 0)) != 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_26D407ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagSlow(google::protobuf::io::CodedInputStream *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
LABEL_4:
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *this = v2 + 1;
    }

    return result;
  }

  if (google::protobuf::io::CodedInputStream::Refresh(this))
  {
    v2 = *this;
    v3 = *(this + 1);
    goto LABEL_4;
  }

  v6 = *(this + 12);
  result = 0;
  v7 = *(this + 6) - *(this + 11) < v6 || *(this + 10) == v6;
  *(this + 36) = v7;
  return result;
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagFallback(google::protobuf::io::CodedInputStream *this, int a2)
{
  v4 = *(this + 1);
  v5 = v4 - *this;
  if (v5 <= 9)
  {
    if (v5 < 1)
    {
      if (!v5)
      {
        v14 = *(this + 11);
        v15 = *(this + 6);
        if ((v14 > 0 || v15 == *(this + 10)) && v15 - v14 < *(this + 12))
        {
          result = 0;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    else if ((*(v4 - 1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

LABEL_4:
  if (**this != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 537);
    v6 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (first_byte_or_zero) == (buffer_[0]): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  v7 = *this;
  if (a2)
  {
    if (*v7 != a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 373);
      v8 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (*buffer) == (first_byte): ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    if ((a2 & 0x80) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 374);
      v9 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (first_byte & 0x80) == (0x80): ");
      v10 = google::protobuf::internal::LogMessage::operator<<(v9, a2);
      google::protobuf::internal::LogFinisher::operator=(&v18, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    v11 = a2 + (v7[1] << 7) - 128;
    if (v7[1] < 0)
    {
      v11 = v11 + (v7[2] << 14) - 0x4000;
      if (v7[2] < 0)
      {
        v11 = v11 + (v7[3] << 21) - 0x200000;
        if (v7[3] < 0)
        {
          v16 = v7[4];
          v11 = (v11 + (v16 << 28) - 0x10000000);
          if (v16 < 0)
          {
            v12 = v7 + 6;
            v17 = 5;
            result = 0;
            while (*(v12 - 1) < 0)
            {
              ++v12;
              if (!--v17)
              {
                return result;
              }
            }
          }

          else
          {
            v12 = v7 + 5;
          }
        }

        else
        {
          v12 = v7 + 4;
        }
      }

      else
      {
        v12 = v7 + 3;
      }
    }

    else
    {
      v12 = v7 + 2;
    }

    *this = v12;
    return v11;
  }

  else
  {
    result = 0;
    *this = v7 + 1;
  }

  return result;
}

void sub_26D407DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadVarint64Slow(char **this, unint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v4 != 10;
    if (v4 == 10)
    {
      break;
    }

    while (1)
    {
      v7 = *this;
      if (*this != this[1])
      {
        break;
      }

      if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_7;
      }
    }

    v8 = *v7;
    v5 |= (*v7 & 0x7F) << (7 * v4);
    *this = v7 + 1;
    ++v4;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a2 = v5;
  return v6;
}

uint64_t google::protobuf::io::EpsCopyOutputStream::EnableAliasing(google::protobuf::io::EpsCopyOutputStream *this, int a2)
{
  if (a2)
  {
    result = (*(**(this + 6) + 48))(*(this + 6));
  }

  else
  {
    result = 0;
  }

  *(this + 57) = result;
  return result;
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

void sub_26D4080C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D408284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t google::protobuf::io::EpsCopyOutputStream::FlushAndResetBuffer(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  if (*(this + 56) == 1)
  {
    return this + 16;
  }

  v3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, a2);
  if (*(this + 56) == 1)
  {
    return this + 16;
  }

  v5 = (*(this + 1) + v3 - 16);
  if (v3 > 16)
  {
    v6 = 0;
  }

  else
  {
    v5 = this + v3 + 16;
    v6 = *(this + 1);
  }

  if (v3 <= 16)
  {
    result = this + 16;
  }

  else
  {
    result = *(this + 1);
  }

  *this = v5;
  *(this + 1) = v6;
  return result;
}

BOOL google::protobuf::io::EpsCopyOutputStream::Skip(google::protobuf::io::EpsCopyOutputStream *this, int a2, char **a3)
{
  if (a2 < 0)
  {
    return 0;
  }

  if (*(this + 56) == 1 || (v5 = a2, v13 = google::protobuf::io::EpsCopyOutputStream::Flush(this, *a3), *(this + 56) == 1))
  {
    v6 = 0;
    v7 = this + 16;
  }

  else
  {
    v12 = *(this + 1);
    while (1)
    {
      v6 = v5 <= v13;
      if (v5 <= v13)
      {
        break;
      }

      v5 -= v13;
      if (((*(**(this + 6) + 16))(*(this + 6), &v12, &v13) & 1) == 0)
      {
        *(this + 56) = 1;
        v7 = this + 16;
        *this = this + 32;
        goto LABEL_5;
      }
    }

    v9 = v13 - v5;
    v10 = (v12 + v5 + v9 - 16);
    if (v9 > 16)
    {
      v11 = 0;
    }

    else
    {
      v10 = this + v9 + 16;
      v11 = v12 + v5;
    }

    if (v9 <= 16)
    {
      v7 = this + 16;
    }

    else
    {
      v7 = (v12 + v5);
    }

    *this = v10;
    *(this + 1) = v11;
  }

LABEL_5:
  *a3 = v7;
  return v6;
}

uint64_t google::protobuf::io::EpsCopyOutputStream::GetDirectBufferPointer(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 **a2, unsigned int *a3, char **a4)
{
  if (*(this + 56) == 1 || (*a3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, *a4), *(this + 56) == 1))
  {
    result = 0;
    v9 = this + 16;
  }

  else
  {
    *a2 = *(this + 1);
    while (1)
    {
      v10 = *a3;
      if (v10)
      {
        break;
      }

      if (((*(**(this + 6) + 16))(*(this + 6), a2, a3) & 1) == 0)
      {
        result = 0;
        *(this + 56) = 1;
        v9 = this + 16;
        *this = this + 32;
        goto LABEL_4;
      }
    }

    v11 = &(*a2)[v10 - 16];
    if (v10 > 16)
    {
      v12 = 0;
    }

    else
    {
      v11 = this + v10 + 16;
      v12 = *a2;
    }

    if (v10 <= 16)
    {
      v9 = this + 16;
    }

    else
    {
      v9 = *a2;
    }

    *this = v11;
    *(this + 1) = v12;
    result = 1;
  }

LABEL_4:
  *a4 = v9;
  return result;
}

uint64_t google::protobuf::io::EpsCopyOutputStream::GetDirectBufferForNBytesAndAdvance(google::protobuf::io::EpsCopyOutputStream *this, int a2, char **a3)
{
  if (*(this + 56) == 1 || (v6 = google::protobuf::io::EpsCopyOutputStream::Flush(this, *a3), *(this + 56) == 1))
  {
    result = 0;
    v8 = this + 16;
  }

  else
  {
    v9 = v6;
    result = *(this + 1);
    if (v9 >= a2)
    {
      v12 = v9 - a2;
      v13 = (result + a2 + v12 - 16);
      if (v12 > 16)
      {
        v14 = 0;
      }

      else
      {
        v13 = this + v12 + 16;
        v14 = result + a2;
      }

      if (v12 <= 16)
      {
        v8 = this + 16;
      }

      else
      {
        v8 = (result + a2);
      }

      *this = v13;
      *(this + 1) = v14;
    }

    else
    {
      v10 = (result + v9 - 16);
      if (v9 > 16)
      {
        v11 = 0;
      }

      else
      {
        v10 = this + v9 + 16;
        v11 = *(this + 1);
      }

      if (v9 <= 16)
      {
        v8 = this + 16;
      }

      else
      {
        v8 = *(this + 1);
      }

      *this = v10;
      *(this + 1) = v11;
      result = 0;
    }
  }

  *a3 = v8;
  return result;
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

void sub_26D408758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4088A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D408B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D408D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedOutputStream::CodedOutputStream(uint64_t a1, uint64_t a2, int a3)
{
  v6 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  v7 = a1 + 16;
  *a1 = a1 + 16;
  *(a1 + 8) = a1 + 16;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 58) = v6;
  *(a1 + 64) = a1 + 16;
  *(a1 + 72) = (*(*a2 + 32))(a2);
  if (a3)
  {
    v14 = 0;
    v13 = 0;
    if ((*(*a2 + 16))(a2, &v14, &v13) && v13 != 0)
    {
      v9 = v14;
      if (v13 <= 16)
      {
        v10 = v7 + v13;
      }

      else
      {
        v10 = v14 + v13 - 16;
      }

      if (v13 <= 16)
      {
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }

      if (v13 <= 16)
      {
        v9 = v7;
      }

      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 64) = v9;
    }
  }

  return a1;
}

char *google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0 && *(a1 + 12))
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 949);
    v5 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (str.size()) <= (kuint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    LOBYTE(v4) = *(v3 + 23);
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 2);
  }

  if (v6 > 0x7F)
  {
    *a2 = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      v7 = a2 + 2;
      do
      {
        *(v7 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v7 - 1) = v9;
    }

    else
    {
      a2[1] = v8;
      v7 = a2 + 2;
    }
  }

  else
  {
    *a2 = v6;
    v7 = a2 + 1;
  }

  v11 = *(v3 + 23);
  if (v11 >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = *v3;
  }

  if (v11 >= 0)
  {
    LODWORD(v3) = *(v3 + 23);
  }

  else
  {
    v3 = v3[1];
  }

  memcpy(v7, v12, v3);
  return &v7[v3];
}

void sub_26D408FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4092DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, google::protobuf::StringPiece *this)
{
  google::protobuf::StringPiece::ToString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(a1 + 1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_26D4095CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *google::protobuf::StringPiece::ToString@<X0>(_BYTE *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = *(this + 1);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    a2[v4] = 0;
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, &unk_26D454396);
  }

  return this;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, google::protobuf::util::Status *this)
{
  google::protobuf::util::Status::ToString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(a1 + 1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_26D409724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, __int128 *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  google::protobuf::operator<<(&v9, a2);
  std::stringbuf::str();
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1 + 1, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x26D6BEFC0](&v13);
  return a1;
}

void sub_26D4098D0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
  MEMORY[0x26D6BEFC0](va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, std::string::value_type a2)
{
  v6 = *MEMORY[0x277D85DE8];
  __s[0] = a2;
  __s[1] = 0;
  __s[127] = 0;
  std::string::append(a1 + 1, __s);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
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

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%u", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%ld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%llu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%g", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%p", a2);
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
    v3 = atomic_load(google::protobuf::internal::log_silencer_count_);
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

uint64_t (*google::protobuf::SetLogHandler(uint64_t (*a1)()))()
{
  v1 = google::protobuf::internal::log_handler_;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = google::protobuf::internal::NullLogHandler;
  }

  google::protobuf::internal::log_handler_ = v2;
  if (v1 == google::protobuf::internal::NullLogHandler)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_287EBC918;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x26D6BF040);
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
  *a1 = &unk_287EBC918;
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

void google::protobuf::internal::ExtensionSet::RegisterExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5)
{
  v7 = a3;
  v8 = a2;
  switch(a3)
  {
    case 14:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 140);
      v10 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
LABEL_7:
      google::protobuf::internal::LogMessage::~LogMessage(&v14.__r_.__value_.__l.__data_);
      break;
    case 11:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 141);
      v11 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v11->__r_.__value_.__l.__data_);
      goto LABEL_7;
    case 10:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 142);
      v12 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_GROUP): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
      goto LABEL_7;
  }

  v14.__r_.__value_.__s.__data_[0] = v7;
  v14.__r_.__value_.__s.__data_[1] = a4;
  v14.__r_.__value_.__s.__data_[2] = a5;
  v15 = 0;
}

void sub_26D40A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::anonymous namespace::Register(unint64_t a1, int a2, _OWORD *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  v6 = a3[1];
  v26[0] = *a3;
  v26[1] = v6;
  v7 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v7 >> 47) ^ v7);
  v9 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
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

  google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 108);
  v18 = google::protobuf::internal::LogMessage::operator<<(v26, "Multiple extension registrations for type ");
  (*(*a1 + 16))(__p, a1);
  v19 = google::protobuf::internal::LogMessage::operator<<(v18, __p);
  v20 = google::protobuf::internal::LogMessage::operator<<(v19, ", field number ");
  v21 = google::protobuf::internal::LogMessage::operator<<(v20, a2);
  v22 = google::protobuf::internal::LogMessage::operator<<(v21, ".");
  google::protobuf::internal::LogFinisher::operator=(&v23, &v22->__r_.__value_.__l.__data_);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  google::protobuf::internal::LogMessage::~LogMessage(v26);
  v17 = *MEMORY[0x277D85DE8];
}

void google::protobuf::internal::ExtensionSet::RegisterEnumExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, BOOL (*a7)(int))
{
  v10 = a3;
  v11 = a2;
  if (a3 != 14)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 164);
    v13 = google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: (type) == (WireFormatLite::TYPE_ENUM): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = v10;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = google::protobuf::internal::CallNoArgValidityFunc;
  v15.__r_.__value_.__r.__words[2] = a6;
  v16 = 0;
}

void sub_26D40A9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::RegisterMessageExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, const google::protobuf::MessageLite *a7)
{
  v11 = a2;
  if ((a3 & 0xFE) != 0xA)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 177);
    v13 = google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = a3;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = a6;
  v16 = 0;
}

void sub_26D40AA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
      MEMORY[0x26D6BF010](*(this + 2), 0x1062C802AB6010CLL);
    }
  }
}

uint64_t google::protobuf::internal::ExtensionSet::DeleteFlatMap(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x26D6BF010);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Has(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 9) == 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 231);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !ext->is_repeated: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    v5 = *(v3 + 10) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_26D40AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::internal::ExtensionSet::FindOrNull(int **this, int a2)
{
  if (*(this + 4) >= 0x101u)
  {
    return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
  }

  v2 = this[2];
  v3 = *(this + 5);
  v4 = &v2[8 * v3];
  while (v3)
  {
    v5 = v3 >> 1;
    v6 = &v2[8 * (v3 >> 1)];
    v8 = *v6;
    v7 = v6 + 8;
    v3 += ~(v3 >> 1);
    v10 = __OFSUB__(v8, a2);
    v9 = v8 - a2 < 0;
    if (v8 >= a2)
    {
      v3 = v5;
    }

    if (v9 != v10)
    {
      v2 = v7;
    }
  }

  if (v2 == v4)
  {
    return 0;
  }

  v12 = *v2;
  v11 = v2 + 2;
  if (v12 == a2)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

{
  if (*(this + 4) >= 0x101u)
  {
    return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
  }

  v2 = this[2];
  v3 = *(this + 5);
  v4 = &v2[8 * v3];
  while (v3)
  {
    v5 = v3 >> 1;
    v6 = &v2[8 * (v3 >> 1)];
    v8 = *v6;
    v7 = v6 + 8;
    v3 += ~(v3 >> 1);
    v10 = __OFSUB__(v8, a2);
    v9 = v8 - a2 < 0;
    if (v8 >= a2)
    {
      v3 = v5;
    }

    if (v9 != v10)
    {
      v2 = v7;
    }
  }

  if (v2 == v4)
  {
    return 0;
  }

  v12 = *v2;
  v11 = v2 + 2;
  if (v12 == a2)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::ExtensionSet::NumExtensions(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::NumExtensions(void)::$_0>(*v1, (v1 + 8), &v7);
    return v7;
  }

  else
  {
    v2 = *(this + 5);
    if (*(this + 5))
    {
      LODWORD(result) = 0;
      v4 = 32 * v2;
      v5 = (v1 + 18);
      do
      {
        v6 = *v5;
        v5 += 32;
        result = result + ((v6 & 1) == 0);
        v4 -= 32;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::internal::ExtensionSet::ExtensionSize(int **this, int a2)
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
  if ((*(this + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1700);
    v2 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v3 = *(this + 8);
  if ((v3 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v3];
  if (v5 > 5)
  {
    if (v5 <= 8)
    {
      return **this;
    }

    if (v5 == 9 || v5 == 10)
    {
      return *(*this + 8);
    }
  }

  else if (v5 > 2 || v5 == 1 || v5 == 2)
  {
    return **this;
  }

  google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1719);
  v7 = google::protobuf::internal::LogMessage::operator<<(v9, "Can't get here.");
  google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_26D40AED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionType(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 10))
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 257);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "Don't lookup extension types if they aren't present (2). ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    return *(v3 + 8);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 253);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "Don't lookup extension types if they aren't present (1). ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    return 0;
  }
}

void sub_26D40AFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::ClearExtension(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {

    google::protobuf::internal::ExtensionSet::Extension::Clear(v2);
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

void sub_26D40B294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt32(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 1)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D40B3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MaybeNewExtension(google::protobuf::internal::ExtensionSet *a1, int a2, uint64_t a3, uint64_t **a4)
{
  v6 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  *a4 = v6;
  v6[2] = a3;
  return v7 & 1;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt32(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<int>::Get(*v4, a3);
}

void sub_26D40B7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedInt32(int **this, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::Set(*v5, a3, &v13);
}

void sub_26D40B964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40BC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt64(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 2)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D40BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt64(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<long long>::Get(*v4, a3);
}

void sub_26D40C178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedInt64(int **this, int a2, int a3, uint64_t a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::Set(*v5, a3, &v13);
}

void sub_26D40C320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40C620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt32(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D40C784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40C988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt32(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<unsigned int>::Get(*v4, a3);
}

void sub_26D40CB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedUInt32(int **this, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::Set(*v5, a3, &v13);
}

void sub_26D40CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40CFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt64(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D40D140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40D344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt64(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<unsigned long long>::Get(*v4, a3);
}

void sub_26D40D4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedUInt64(int **this, int a2, int a3, uint64_t a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::Set(*v5, a3, &v13);
}

void sub_26D40D698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40D998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float google::protobuf::internal::ExtensionSet::GetFloat(int **this, int a2, float a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 6)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D40DB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40DD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float google::protobuf::internal::ExtensionSet::GetRepeatedFloat(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<float>::Get(*v4, a3);
}

void sub_26D40DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedFloat(int **this, int a2, int a3, float a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::Set(*v5, a3, &v13);
}

void sub_26D40E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40E36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double google::protobuf::internal::ExtensionSet::GetDouble(int **this, int a2, double a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D40E4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40E6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double google::protobuf::internal::ExtensionSet::GetRepeatedDouble(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<double>::Get(*v4, a3);
}

void sub_26D40E890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedDouble(int **this, int a2, int a3, double a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::Set(*v5, a3, &v13);
}