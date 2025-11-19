void sub_26D40EA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40ED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetBool(int **this, int a2, char a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
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

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 7)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      a3 = *v5;
    }
  }

  return a3 & 1;
}

void sub_26D40EEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40F0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedBool(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<BOOL>::Get(*v4, a3);
}

void sub_26D40F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedBool(int **this, int a2, int a3, char a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::Set(*v5, a3, &v13);
}

void sub_26D40F3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D40F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const void *google::protobuf::internal::ExtensionSet::GetRawRepeatedField(int **this, int a2, const void *a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    return *v4;
  }

  return a3;
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

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 435);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Extension not found.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  return *v2;
}

void sub_26D40FAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetEnum(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 450);
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

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 8)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 450);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D40FC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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

void sub_26D40FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedEnum(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 471);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 472);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 472);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<int>::Get(*v4, a3);
}

void sub_26D40FFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedEnum(int **this, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 478);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 479);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 479);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::Set(*v5, a3, &v13);
}

void sub_26D41016C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D41046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetString(int **a1, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 510);
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

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 9)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 510);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26D4105D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D410834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedString(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 533);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 534);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 534);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*v4, a3);
}

void sub_26D4109DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRepeatedString(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 540);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 541);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 541);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*v4, a3);
}

void sub_26D410B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    google::protobuf::RepeatedPtrField<std::string>::Reserve(v18, v21 + 1);
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

void sub_26D410EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::MessageLite *google::protobuf::internal::ExtensionSet::GetMessage(int **this, int a2, const google::protobuf::MessageLite *a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 571);
      v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    v7 = *(v5 + 8);
    if ((v7 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 571);
      v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    v10 = *v5;
    if ((*(v5 + 10) & 0x10) != 0)
    {
      return (*(*v10 + 24))(v10, a3);
    }

    return v10;
  }

  return a3;
}

void sub_26D411050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4112D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetAllocatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v9 = a5[1];
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v11 = v10;
    v10[2] = a4;
    if (v12)
    {
      *(v10 + 8) = a3;
      if ((a3 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v13 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 624);
        v14 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v14->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      v11[9] = 0;
      v11[10] &= 0xFu;
      if (v9 != *this)
      {
        if (v9)
        {
LABEL_11:
          v15 = (*(*a5 + 32))(a5);
          *v11 = v15;
          (*(*v15 + 64))(v15, a5);
LABEL_32:
          v11[10] &= 0xF0u;
          return;
        }

LABEL_30:
        *v11 = a5;
        google::protobuf::Arena::Own<google::protobuf::MessageLite>(*this, a5);
        goto LABEL_32;
      }
    }

    else
    {
      if (*(v10 + 9))
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 637);
        v17 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v17->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      v18 = v11[8];
      if ((v18 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v19 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v19->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v18] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 637);
        v20 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v20->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      if ((v11[10] & 0x10) != 0)
      {
        (*(**v11 + 40))(*v11, a5);
        goto LABEL_32;
      }

      v21 = *this;
      if (!*this)
      {
        if (*v11)
        {
          (*(**v11 + 8))(*v11);
          v21 = *this;
        }

        else
        {
          v21 = 0;
        }
      }

      if (v9 != v21)
      {
        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }
    }

    *v11 = a5;
    goto LABEL_32;
  }

  v16 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v16)
  {

    google::protobuf::internal::ExtensionSet::Extension::Clear(v16);
  }
}

void sub_26D41164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

atomic_ullong *google::protobuf::Arena::Own<google::protobuf::MessageLite>(atomic_ullong *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>);
  }

  return result;
}

void google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v10 = v9;
    v9[2] = a4;
    if (v11)
    {
      *(v9 + 8) = a3;
      if ((a3 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 668);
        v13 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      v10[9] = 0;
      v10[10] &= 0xFu;
    }

    else
    {
      if (*(v9 + 9))
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 673);
        v15 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v15->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      v16 = v10[8];
      if ((v16 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v16] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 673);
        v18 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v18->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      if ((v10[10] & 0x10) != 0)
      {
        (*(**v10 + 48))(*v10, a5);
        goto LABEL_24;
      }

      if (!*this && *v10)
      {
        (*(**v10 + 8))(*v10);
      }
    }

    *v10 = a5;
LABEL_24:
    v10[10] &= 0xF0u;
    return;
  }

  v14 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v14)
  {

    google::protobuf::internal::ExtensionSet::Extension::Clear(v14);
  }
}

void sub_26D41193C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ReleaseMessage(int **this, int a2, const google::protobuf::MessageLite *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6[9])
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 693);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = v7[8];
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 693);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((v7[10] & 0x10) != 0)
  {
    v12 = (*(**v7 + 56))(*v7, a3);
    if (!*this && *v7)
    {
      (*(**v7 + 8))(*v7);
    }
  }

  else
  {
    v12 = *v7;
    if (*this)
    {
      v12 = (*(*v12 + 24))(*v7);
      (*(*v12 + 64))(v12, *v7);
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, a2);
  return v12;
}

void sub_26D411B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::Erase(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v12 = a2;
  v3 = *(this + 4);
  result = *(this + 2);
  if (v3 >= 0x101)
  {
    return std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(result, &v12);
  }

  v5 = *(this + 5);
  v6 = &result[32 * v5];
  if (*(this + 5))
  {
    v7 = *(this + 5);
    do
    {
      v8 = v7 >> 1;
      v9 = &result[32 * (v7 >> 1)];
      v11 = *v9;
      v10 = (v9 + 8);
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        result = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  if (result != v6 && *result == a2)
  {
    if (v6 != result + 32)
    {
      result = memmove(result, result + 32, v6 - (result + 32));
      LOWORD(v5) = *(this + 5);
    }

    *(this + 5) = v5 - 1;
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage(int **this, int a2, const google::protobuf::MessageLite *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (*(v6 + 9))
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 722);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = v7[8];
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 722);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v12 = *v7;
  if ((v7[10] & 0x10) != 0)
  {
    v12 = (*(*v12 + 64))(*v7, a3);
    if (!*this)
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, a2);
  return v12;
}

void sub_26D411E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedMessage(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 744);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 745);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 745);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v4, a3);
}

void sub_26D411FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRepeatedMessage(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 751);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 752);
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

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 752);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v4, a3);
}

void sub_26D41214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D412434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::RemoveLast(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 791);
    v3 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  if ((*(v2 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 792);
    v5 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: extension->is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  v6 = *(v2 + 8);
  if ((v6 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v7 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  v8 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v6];
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          return;
        }

        v9 = *v2;
        v10 = *v9;
        if (*v9 > 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v9 = *v2;
      v10 = *v9;
      if (*v9 > 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v8 == 3)
      {
        v9 = *v2;
        v10 = *v9;
        if (*v9 <= 0)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v8 != 4)
      {
        v9 = *v2;
        v10 = *v9;
        if (*v9 <= 0)
        {
          goto LABEL_36;
        }

LABEL_37:
        *v9 = v10 - 1;
        return;
      }

      v9 = *v2;
      v10 = *v9;
      if (*v9 > 0)
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v16 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v16->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
    v10 = *v9;
    goto LABEL_37;
  }

  if (v8 <= 7)
  {
    if (v8 == 6)
    {
      v9 = *v2;
      v10 = *v9;
      if (*v9 <= 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v9 = *v2;
      v10 = *v9;
      if (*v9 <= 0)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  switch(v8)
  {
    case 8:
      v9 = *v2;
      v10 = *v9;
      if (*v9 <= 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    case 9:
      v17 = *v2;
      v18 = *(v17 + 8);
      if (v18 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
        v19 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (current_size_) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v23, &v19->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
        v18 = *(v17 + 8);
      }

      v20 = v18 - 1;
      v21 = *(v17 + 16) + 8 * v20;
      *(v17 + 8) = v20;
      v22 = *(v21 + 8);
      if (*(v22 + 23) < 0)
      {
        **v22 = 0;
        *(v22 + 8) = 0;
      }

      else
      {
        *v22 = 0;
        *(v22 + 23) = 0;
      }

      break;
    case 10:
      v11 = *v2;
      v12 = *(v11 + 8);
      if (v12 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
        v13 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (current_size_) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v23, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
        v12 = *(v11 + 8);
      }

      v14 = v12 - 1;
      v15 = *(v11 + 16) + 8 * v14;
      *(v11 + 8) = v14;
      (*(**(v15 + 8) + 40))(*(v15 + 8));
      break;
  }
}

void sub_26D412954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ReleaseLast(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 830);
    v3 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if ((*(v2 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 831);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: extension->is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v6 = *(v2 + 8);
  if ((v6 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v6] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 832);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: cpp_type(extension->type) == WireFormatLite::CPPTYPE_MESSAGE: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::ReleaseLastInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v2);
}

void sub_26D412B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SwapElements(int **this, int a2, int a3, int a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 838);
    v7 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 839);
    v9 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: extension->is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v10 = *(v6 + 8);
  if ((v10 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v10];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        google::protobuf::RepeatedField<unsigned int>::SwapElements(*v6, a3, a4);
      }

      else if (v12 == 4)
      {
        google::protobuf::RepeatedField<unsigned long long>::SwapElements(*v6, a3, a4);
      }

      else
      {
        google::protobuf::RepeatedField<double>::SwapElements(*v6, a3, a4);
      }

      return;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        google::protobuf::RepeatedField<long long>::SwapElements(*v6, a3, a4);
      }

      return;
    }

LABEL_22:
    google::protobuf::RepeatedField<int>::SwapElements(*v6, a3, a4);
    return;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      google::protobuf::RepeatedField<float>::SwapElements(*v6, a3, a4);
    }

    else
    {
      google::protobuf::RepeatedField<BOOL>::SwapElements(*v6, a3, a4);
    }

    return;
  }

  if (v12 == 8)
  {
    goto LABEL_22;
  }

  if (v12 == 9 || v12 == 10)
  {
    v13 = *(*v6 + 16) + 8;
    v14 = *(v13 + 8 * a3);
    *(v13 + 8 * a3) = *(v13 + 8 * a4);
    *(v13 + 8 * a4) = v14;
  }
}

void sub_26D412D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
      this = MEMORY[0x26D6BF010](v5, 0x1062C802AB6010CLL);
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

void sub_26D413E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SwapExtension(int **this, int **a2, int a3)
{
  if (this != a2)
  {
    v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a3);
    v7 = google::protobuf::internal::ExtensionSet::FindOrNull(a2, a3);
    if (v6 | v7)
    {
      v8 = v7;
      if (v6 && v7)
      {
        if (*this == *a2)
        {
          v10 = *(v6 + 16);
          v11 = *v6;
          v12 = *(v7 + 16);
          *v6 = *v7;
          *(v6 + 16) = v12;
          *v7 = v11;
          *(v7 + 16) = v10;
        }

        else
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(&v18, a3, v7);
          v9 = google::protobuf::internal::ExtensionSet::FindOrNull(&v18, a3);
          google::protobuf::internal::ExtensionSet::Extension::Clear(v8);
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(a2, a3, v6);
          google::protobuf::internal::ExtensionSet::Extension::Clear(v6);
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, a3, v9);
          google::protobuf::internal::ExtensionSet::~ExtensionSet(&v18);
        }
      }

      else
      {
        if (v6)
        {
          if (v7)
          {
            return;
          }

          if (*this == *a2)
          {
            v16 = google::protobuf::internal::ExtensionSet::Insert(a2, a3);
            v17 = *(v6 + 16);
            *v16 = *v6;
            v16[2] = v17;
          }

          else
          {
            google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(a2, a3, v6);
          }

          v15 = this;
        }

        else
        {
          if (*this == *a2)
          {
            v13 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
            v14 = *(v8 + 2);
            *v13 = *v8;
            v13[2] = v14;
          }

          else
          {
            google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, a3, v7);
          }

          v15 = a2;
        }

        google::protobuf::internal::ExtensionSet::Erase(v15, a3);
      }
    }
  }
}

void sub_26D413FE0(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_26D41434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::FindExtensionInfoFromTag(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, unsigned __int8 *a5, _BYTE *a6)
{
  v7 = a2 >> 3;
  *a4 = v7;
  return google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(a1, a2 & 7, v7, a3, a5, a6);
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

void sub_26D4144B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, google::protobuf::internal::ExtensionFinder *a4, google::protobuf::internal::FieldSkipper *a5)
{
  LOBYTE(v12) = 0;
  v9 = a2 >> 3;
  if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(this, a2 & 7, v9, a4, v11, &v12))
  {
    return google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(this, v9, v12, v11, a3, a5);
  }

  else
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(google::protobuf::internal::ExtensionSet *a1, uint64_t a2, int a3, uint64_t a4, google::protobuf::io::CodedInputStream *this, uint64_t a6)
{
  if (a3)
  {
    v11 = *this;
    if (*this >= *(this + 1))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
      if ((*v11 & 0x80000000) == 0)
      {
        *this = v11 + 1;
        goto LABEL_110;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v12);
    v12 = Varint32Fallback;
    if ((Varint32Fallback & 0x8000000000000000) == 0)
    {
LABEL_110:
      v106 = google::protobuf::io::CodedInputStream::PushLimit(this, v12);
      switch(*a4)
      {
        case 1:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v132 = *this;
            if ((*(this + 2) - *this) >= 8)
            {
              v133 = *v132;
              *this = v132 + 1;
              goto LABEL_179;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
            if (result)
            {
              v133 = *&v149[0].__r_.__value_.__l.__data_;
LABEL_179:
              google::protobuf::internal::ExtensionSet::AddDouble(a1, a2, 1, *(a4 + 2), *(a4 + 24), v133);
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 2:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v134 = *this;
            if ((*(this + 2) - *this) >= 4)
            {
              v135 = *v134;
              *this = v134 + 1;
              goto LABEL_186;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
            if (result)
            {
              v135 = *&v149[0].__r_.__value_.__l.__data_;
LABEL_186:
              google::protobuf::internal::ExtensionSet::AddFloat(a1, a2, 2, *(a4 + 2), *(a4 + 24), v135);
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 3:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v119 = *this;
            if (*this >= *(this + 1) || (v120 = *v119, v120 < 0))
            {
              Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v122 & 1) == 0)
              {
                return 0;
              }

              v120 = Varint64Fallback;
            }

            else
            {
              *this = v119 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 3, *(a4 + 2), v120, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_112;
        case 4:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v125 = *this;
            if (*this >= *(this + 1) || (v126 = *v125, v126 < 0))
            {
              v127 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v128 & 1) == 0)
              {
                return 0;
              }

              v126 = v127;
            }

            else
            {
              *this = v125 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddUInt64(a1, a2, 4, *(a4 + 2), v126, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_112;
        case 5:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v113 = *this;
            if (*this >= *(this + 1))
            {
              break;
            }

            v114 = *v113;
            if (*v113 < 0)
            {
              goto LABEL_135;
            }

            *this = v113 + 1;
LABEL_136:
            google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 5, *(a4 + 2), v114, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_112;
            }
          }

          v114 = 0;
LABEL_135:
          v115 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v114);
          v114 = v115;
          if (v115 < 0)
          {
            return 0;
          }

          goto LABEL_136;
        case 6:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v141 = *this;
            if ((*(this + 2) - *this) >= 8)
            {
              v142 = *v141;
              v149[0].__r_.__value_.__r.__words[0] = *v141;
              *this = v141 + 1;
              goto LABEL_211;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
            if (result)
            {
              v142 = v149[0].__r_.__value_.__r.__words[0];
LABEL_211:
              google::protobuf::internal::ExtensionSet::AddUInt64(a1, a2, 6, *(a4 + 2), v142, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 7:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v143 = *this;
            if ((*(this + 2) - *this) >= 4)
            {
              data = *v143;
              LODWORD(v149[0].__r_.__value_.__l.__data_) = *v143;
              *this = v143 + 1;
              goto LABEL_218;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
            if (result)
            {
              data = v149[0].__r_.__value_.__l.__data_;
LABEL_218:
              google::protobuf::internal::ExtensionSet::AddUInt32(a1, a2, 7, *(a4 + 2), data, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 8:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v129 = *this;
            if (*this >= *(this + 1) || (v130 = *v129, (v130 & 0x8000000000000000) != 0))
            {
              v130 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v131 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *this = v129 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddBool(a1, a2, 8, *(a4 + 2), v130 != 0, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_112;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v149, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1277);
          v107 = google::protobuf::internal::LogMessage::operator<<(v149, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v148, &v107->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v149[0].__r_.__value_.__l.__data_);
          goto LABEL_112;
        case 0xD:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v116 = *this;
            if (*this >= *(this + 1))
            {
              break;
            }

            v117 = *v116;
            if (*v116 < 0)
            {
              goto LABEL_143;
            }

            *this = v116 + 1;
LABEL_144:
            google::protobuf::internal::ExtensionSet::AddUInt32(a1, a2, 13, *(a4 + 2), v117, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_112;
            }
          }

          v117 = 0;
LABEL_143:
          v118 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v117);
          v117 = v118;
          if (v118 < 0)
          {
            return 0;
          }

          goto LABEL_144;
        case 0xE:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v139 = *this;
            if (*this >= *(this + 1))
            {
              break;
            }

            v140 = *v139;
            if (*v139 < 0)
            {
              goto LABEL_202;
            }

            *this = v139 + 1;
LABEL_203:
            if ((*(a4 + 8))(*(a4 + 16), v140))
            {
              google::protobuf::internal::ExtensionSet::AddEnum(a1, a2, 14, *(a4 + 2), v140, *(a4 + 24));
            }

            else
            {
              (*(*a6 + 32))(a6, a2, v140);
            }

            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_112;
            }
          }

          LODWORD(v140) = 0;
LABEL_202:
          v140 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v140);
          if (v140 < 0)
          {
            return 0;
          }

          goto LABEL_203;
        case 0xF:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v111 = *this;
            if ((*(this + 2) - *this) >= 4)
            {
              v112 = *v111;
              *this = v111 + 1;
              goto LABEL_126;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
            if (result)
            {
              v112 = v149[0].__r_.__value_.__l.__data_;
LABEL_126:
              google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 15, *(a4 + 2), v112, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 0x10:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v123 = *this;
            if ((*(this + 2) - *this) >= 8)
            {
              v124 = *v123;
              *this = v123 + 1;
              goto LABEL_157;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
            if (result)
            {
              v124 = v149[0].__r_.__value_.__r.__words[0];
LABEL_157:
              google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 16, *(a4 + 2), v124, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 0x11:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          break;
        case 0x12:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v136 = *this;
            if (*this >= *(this + 1) || (v137 = *v136, (v137 & 0x8000000000000000) != 0))
            {
              v137 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v138 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *this = v136 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 18, *(a4 + 2), -(v137 & 1) ^ (v137 >> 1), *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
LABEL_112:
          google::protobuf::io::CodedInputStream::PopLimit(this, v106);
          return 1;
        default:
          goto LABEL_112;
      }

      while (1)
      {
        v108 = *this;
        if (*this >= *(this + 1))
        {
          break;
        }

        v109 = *v108;
        if (*v108 < 0)
        {
          goto LABEL_120;
        }

        *this = v108 + 1;
LABEL_121:
        google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 17, *(a4 + 2), -(v109 & 1) ^ (v109 >> 1), *(a4 + 24));
        if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
        {
          goto LABEL_112;
        }
      }

      v109 = 0;
LABEL_120:
      v110 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v109);
      v109 = v110;
      if (v110 < 0)
      {
        return 0;
      }

      goto LABEL_121;
    }

    return 0;
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v13 = *this;
        if ((*(this + 2) - *this) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v14 = *&v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v14 = *v13;
          *this = v13 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(a1, a2, 1, *(a4 + 2), *(a4 + 24), v14);
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetDouble(a1, a2, 1, *(a4 + 24), v14);
        }

        return 1;
      case 2:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v47 = *this;
        if ((*(this + 2) - *this) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v48 = *&v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v48 = *v47;
          *this = v47 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(a1, a2, 2, *(a4 + 2), *(a4 + 24), v48);
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetFloat(a1, a2, 2, *(a4 + 24), v48);
        }

        return 1;
      case 3:
        v35 = *this;
        if (*this >= *(this + 1) || (v36 = *v35, v36 < 0))
        {
          v97 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v98 & 1) == 0)
          {
            return 0;
          }

          v36 = v97;
        }

        else
        {
          *this = v35 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 3;
          goto LABEL_100;
        }

        v83 = *(a4 + 24);
        v84 = a1;
        v85 = a2;
        v86 = 3;
        goto LABEL_102;
      case 4:
        v43 = *this;
        if (*this >= *(this + 1) || (v44 = *v43, (v44 & 0x8000000000000000) != 0))
        {
          v99 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v100 & 1) == 0)
          {
            return 0;
          }

          v44 = v99;
        }

        else
        {
          *this = v43 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v52 = *(a4 + 2);
          v54 = *(a4 + 24);
          v55 = a1;
          v56 = a2;
          v57 = 4;
          v53 = v44;
          goto LABEL_90;
        }

        v88 = *(a4 + 24);
        v89 = a1;
        v90 = a2;
        v91 = 4;
        v87 = v44;
        goto LABEL_92;
      case 5:
        v27 = *this;
        if (*this >= *(this + 1))
        {
          LODWORD(v28) = 0;
        }

        else
        {
          LODWORD(v28) = *v27;
          if ((*v27 & 0x80000000) == 0)
          {
            *this = v27 + 1;
            goto LABEL_233;
          }
        }

        v28 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
        if (v28 < 0)
        {
          return 0;
        }

LABEL_233:
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 5;
          v146 = v28;
          goto LABEL_235;
        }

        v79 = *(a4 + 24);
        v80 = a1;
        v81 = a2;
        v82 = 5;
        v147 = v28;
        goto LABEL_237;
      case 6:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v51 = *this;
        if ((*(this + 2) - *this) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v149[0].__r_.__value_.__r.__words[0] = *v51;
          *this = v51 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v52 = *(a4 + 2);
          v53 = v149[0].__r_.__value_.__r.__words[0];
          v54 = *(a4 + 24);
          v55 = a1;
          v56 = a2;
          v57 = 6;
LABEL_90:
          google::protobuf::internal::ExtensionSet::AddUInt64(v55, v56, v57, v52, v53, v54);
        }

        else
        {
          v87 = v149[0].__r_.__value_.__r.__words[0];
          v88 = *(a4 + 24);
          v89 = a1;
          v90 = a2;
          v91 = 6;
LABEL_92:
          google::protobuf::internal::ExtensionSet::SetUInt64(v89, v90, v91, v87, v88);
        }

        return 1;
      case 7:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v60 = *this;
        if ((*(this + 2) - *this) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          LODWORD(v149[0].__r_.__value_.__l.__data_) = *v60;
          *this = v60 + 4;
        }

        if (*(a4 + 1) == 1)
        {
          v61 = *(a4 + 2);
          v62 = v149[0].__r_.__value_.__l.__data_;
          v63 = *(a4 + 24);
          v64 = a1;
          v65 = a2;
          v66 = 7;
          goto LABEL_242;
        }

        v92 = v149[0].__r_.__value_.__l.__data_;
        v93 = *(a4 + 24);
        v94 = a1;
        v95 = a2;
        v96 = 7;
        goto LABEL_244;
      case 8:
        v45 = *this;
        if (*this >= *(this + 1) || (v46 = *v45, (v46 & 0x8000000000000000) != 0))
        {
          v46 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v101 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v45 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddBool(a1, a2, 8, *(a4 + 2), v46 != 0, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetBool(a1, a2, 8, v46 != 0, *(a4 + 24));
        }

        return 1;
      case 9:
        v24 = *(a4 + 1);
        v25 = *(a4 + 24);
        v26 = 9;
        goto LABEL_60;
      case 0xA:
        v31 = *(a4 + 1);
        v32 = *(a4 + 8);
        v33 = *(a4 + 24);
        if (v31 == 1)
        {
          v34 = google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 10, v32, v33);
        }

        else
        {
          v34 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 10, v32, v33);
        }

        v72 = *(this + 13);
        v73 = __OFSUB__(v72--, 1);
        *(this + 13) = v72;
        if (v72 < 0 != v73)
        {
          return 0;
        }

        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v34, this);
        if (!result)
        {
          return result;
        }

        v75 = *(this + 13);
        if (v75 >= *(this + 14))
        {
          google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo();
        }

        *(this + 13) = v75 + 1;
        return *(this + 8) == ((8 * a2) | 4);
      case 0xB:
        v67 = *(a4 + 1);
        v68 = *(a4 + 8);
        v69 = *(a4 + 24);
        if (v67 == 1)
        {
          v70 = google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 11, v68, v69);
        }

        else
        {
          v70 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 11, v68, v69);
        }

        v76 = v70;
        v77 = *this;
        if (*this >= *(this + 1) || (VarintSizeAsIntFallback = *v77, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(this);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v77 + 1;
        }

        v103 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(this, VarintSizeAsIntFallback);
        if ((v103 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v104 = v103;
        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v76, this);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(this, v104);
        if (!result)
        {
          return result;
        }

        return 1;
      case 0xC:
        v24 = *(a4 + 1);
        v25 = *(a4 + 24);
        v26 = 12;
LABEL_60:
        if (v24 == 1)
        {
          v71 = google::protobuf::internal::ExtensionSet::AddString(a1, a2, v26, v25);
        }

        else
        {
          v71 = google::protobuf::internal::ExtensionSet::MutableString(a1, a2, v26, v25);
        }

        return google::protobuf::internal::WireFormatLite::ReadBytes(this, v71);
      case 0xD:
        v29 = *this;
        if (*this >= *(this + 1))
        {
          LODWORD(v30) = 0;
        }

        else
        {
          LODWORD(v30) = *v29;
          if ((*v29 & 0x80000000) == 0)
          {
            *this = v29 + 1;
            goto LABEL_240;
          }
        }

        v30 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
        if (v30 < 0)
        {
          return 0;
        }

LABEL_240:
        if (*(a4 + 1) == 1)
        {
          v61 = *(a4 + 2);
          v63 = *(a4 + 24);
          v64 = a1;
          v65 = a2;
          v66 = 13;
          v62 = v30;
LABEL_242:
          google::protobuf::internal::ExtensionSet::AddUInt32(v64, v65, v66, v61, v62, v63);
        }

        else
        {
          v93 = *(a4 + 24);
          v94 = a1;
          v95 = a2;
          v96 = 13;
          v92 = v30;
LABEL_244:
          google::protobuf::internal::ExtensionSet::SetUInt32(v94, v95, v96, v92, v93);
        }

        return 1;
      case 0xE:
        v58 = *this;
        if (*this >= *(this + 1))
        {
          LODWORD(v59) = 0;
        }

        else
        {
          v59 = *v58;
          if ((*v58 & 0x80000000) == 0)
          {
            *this = v58 + 1;
            goto LABEL_255;
          }
        }

        v59 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59);
        if (v59 < 0)
        {
          return 0;
        }

LABEL_255:
        if ((*(a4 + 8))(*(a4 + 16), v59))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(a1, a2, 14, *(a4 + 2), v59, *(a4 + 24));
          }

          else
          {
            google::protobuf::internal::ExtensionSet::SetEnum(a1, a2, 14, v59, *(a4 + 24));
          }
        }

        else
        {
          (*(*a6 + 32))(a6, a2, v59);
        }

        return 1;
      case 0xF:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v17 = *this;
        if ((*(this + 2) - *this) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v18 = v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v18 = *v17;
          *this = v17 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 15;
          goto LABEL_226;
        }

        v79 = *(a4 + 24);
        v80 = a1;
        v81 = a2;
        v82 = 15;
        goto LABEL_228;
      case 0x10:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v37 = *this;
        if ((*(this + 2) - *this) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v36 = v149[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          v36 = *v37;
          *this = v37 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 16;
          goto LABEL_100;
        }

        v83 = *(a4 + 24);
        v84 = a1;
        v85 = a2;
        v86 = 16;
        goto LABEL_102;
      case 0x11:
        v15 = *this;
        if (*this >= *(this + 1))
        {
          v16 = 0;
        }

        else
        {
          v16 = *v15;
          if ((*v15 & 0x80000000) == 0)
          {
            *this = v15 + 1;
            goto LABEL_224;
          }
        }

        v145 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
        v16 = v145;
        if (v145 < 0)
        {
          return 0;
        }

LABEL_224:
        v18 = -(v16 & 1) ^ (v16 >> 1);
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 17;
LABEL_226:
          v146 = v18;
LABEL_235:
          google::protobuf::internal::ExtensionSet::AddInt32(v21, v22, v23, v19, v146, v20);
        }

        else
        {
          v79 = *(a4 + 24);
          v80 = a1;
          v81 = a2;
          v82 = 17;
LABEL_228:
          v147 = v18;
LABEL_237:
          google::protobuf::internal::ExtensionSet::SetInt32(v80, v81, v82, v147, v79);
        }

        return 1;
      case 0x12:
        v49 = *this;
        if (*this >= *(this + 1) || (v50 = *v49, (v50 & 0x8000000000000000) != 0))
        {
          v50 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v102 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v49 + 1;
        }

        v36 = -(v50 & 1) ^ (v50 >> 1);
        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 18;
LABEL_100:
          google::protobuf::internal::ExtensionSet::AddInt64(v40, v41, v42, v38, v36, v39);
        }

        else
        {
          v83 = *(a4 + 24);
          v84 = a1;
          v85 = a2;
          v86 = 18;
LABEL_102:
          google::protobuf::internal::ExtensionSet::SetInt64(v84, v85, v86, v36, v83);
        }

        break;
      default:
        return 1;
    }

    return 1;
  }
}

void sub_26D4155D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *a1, unint64_t a2, google::protobuf::internal *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_287EBC9F0;
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

void sub_26D416414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *google::protobuf::internal::ExtensionSet::ParseMessageSetItemTmpl<google::protobuf::MessageLite,std::string>(google::protobuf::internal::ExtensionSet *a1, google::protobuf::internal *a2, uint64_t a3, unint64_t *a4, google::protobuf::internal::EpsCopyInputStream *this)
{
  v9 = 0;
  LODWORD(v10) = 0;
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0;
  String = a2;
  __p[0] = 0;
  __p[1] = 0;
LABEL_2:
  while (2)
  {
    v11 = v9;
    while (1)
    {
      v12 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &String, *(this + 23));
      v13 = String;
      if (v12)
      {
        TagFallback = String;
        goto LABEL_53;
      }

      TagFallback = (String + 1);
      String = (String + 1);
      LODWORD(v15) = *v13;
      if (v15 != 26)
      {
        break;
      }

      if (!v10)
      {
        v28 = *TagFallback;
        if (*TagFallback < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback((v13 + 1), *TagFallback);
          String = SizeFallback;
          if (!SizeFallback)
          {
            goto LABEL_51;
          }

          v28 = v30;
        }

        else
        {
          SizeFallback = v13 + 2;
          String = (v13 + 2);
        }

        LODWORD(v10) = 0;
        String = google::protobuf::internal::EpsCopyInputStream::ReadString(this, SizeFallback, v28, __p);
        v9 = 1;
        if (!String)
        {
          goto LABEL_51;
        }

        goto LABEL_2;
      }

      v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, (8 * v10) | 2, TagFallback, a3, a4, this);
      LODWORD(v10) = 0;
LABEL_15:
      String = v17;
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    if (v15 == 16)
    {
      v18 = *TagFallback;
      v19 = v18 + v18;
      v20 = v19 & (2 * v18);
      v10 = v20 >> 1;
      if ((v20 & 0x8000) != 0)
      {
        TagFallback = (v13 + 3);
        v31 = 13;
        while (1)
        {
          v32 = *TagFallback;
          v33 = v32 + v32;
          v10 += ((v33 & (2 * v32)) - 2) << v31;
          if ((v33 & (2 * v32) & 0x8000) == 0)
          {
            break;
          }

          v31 += 14;
          TagFallback = (TagFallback + 2);
          if (v31 == 69)
          {
            TagFallback = 0;
            String = 0;
            goto LABEL_53;
          }
        }

        v21 = v33 >= v32;
      }

      else
      {
        v21 = v19 >= v18;
      }

      v22 = !v21;
      v9 = 0;
      if (v22)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      String = (TagFallback + v23);
      if (v11)
      {
        v44 = &unk_287EBC9F0;
        v45 = a3;
        if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(v13, 2, v10, &v44, v38, &v37))
        {
          if (v38[1] == 1)
          {
            v25 = google::protobuf::internal::ExtensionSet::AddMessage(a1, v10, 11, v39, v40);
          }

          else
          {
            v25 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, v10, 11, v39, v40);
          }

          v27 = v25;
          v36 = 0;
          google::protobuf::internal::ParseContext::ParseContext<std::string &>(&v44, *(this + 22), 0, &v36, __p);
          v47 = *(this + 6);
          if (!(*(*v27 + 88))(v27, v36, &v44) || v46)
          {
LABEL_51:
            TagFallback = 0;
            goto LABEL_53;
          }
        }

        else
        {
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v44, __p, v24);
          if (*a4)
          {
            v26 = ((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v26 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a4);
          }

          google::protobuf::internal::WriteLengthDelimited(v10, v44, v45, v26);
        }

        LODWORD(v10) = 0;
        v9 = 1;
        continue;
      }

      continue;
    }

    break;
  }

  if ((v15 & 0x80) != 0)
  {
    v15 = (v15 + (*TagFallback << 7) - 128);
    if (*TagFallback < 0)
    {
      TagFallback = google::protobuf::internal::ReadTagFallback(v13, v15);
    }

    else
    {
      TagFallback = (v13 + 2);
    }
  }

  String = TagFallback;
  if (v15)
  {
    v16 = (v15 & 7) == 4;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, v15, TagFallback, a3, a4, this);
    goto LABEL_15;
  }

  *(this + 20) = v15 - 1;
LABEL_53:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = *MEMORY[0x277D85DE8];
  return TagFallback;
}

void sub_26D41685C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4)
{
  v6 = &unk_287EBCD68;
  v5[0] = &unk_287EBC9F0;
  v5[1] = a4;
  return google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v5, &v6);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4, google::protobuf::io::CodedOutputStream *a5)
{
  v7[0] = &unk_287EBCDB0;
  v7[1] = a5;
  v6[0] = &unk_287EBC9F0;
  v6[1] = a4;
  return google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v6, v7);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSetLite(google::protobuf::internal::ExtensionSet *this, char **a2, google::protobuf::internal::ExtensionFinder *a3, google::protobuf::internal::FieldSkipper *a4, __n128 a5)
{
  while (1)
  {
    while (1)
    {
      v9 = *a2;
      if (*a2 >= a2[1])
      {
        LODWORD(TagFallback) = 0;
      }

      else
      {
        TagFallback = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          *a2 = v9 + 1;
          goto LABEL_6;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, TagFallback);
LABEL_6:
      *(a2 + 8) = TagFallback;
      if (TagFallback != 11)
      {
        break;
      }

      if ((google::protobuf::internal::ExtensionSet::ParseMessageSetItemLite(this, a2, a3, a4, a5) & 1) == 0)
      {
        return 0;
      }
    }

    if (!TagFallback)
    {
      return 1;
    }

    if ((google::protobuf::internal::ExtensionSet::ParseField(this, TagFallback, a2, a3, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSetItemLite(google::protobuf::internal::ExtensionSet *this, char **a2, google::protobuf::internal::ExtensionFinder *a3, google::protobuf::internal::FieldSkipper *a4, __n128 a5)
{
  v9 = 0;
  memset(&v41, 0, sizeof(v41));
  a5.n128_u64[0] = 0xFFFFFFFF00000000;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v10 = *a2;
          if (*a2 >= a2[1])
          {
            TagFallback = 0;
          }

          else
          {
            TagFallback = *v10;
            if ((*v10 & 0x80000000) == 0)
            {
              *a2 = v10 + 1;
              goto LABEL_7;
            }
          }

          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, TagFallback);
LABEL_7:
          if (TagFallback <= 25)
          {
            break;
          }

          if (TagFallback != 26)
          {
            goto LABEL_14;
          }

          if (v9)
          {
            v12 = google::protobuf::internal::ExtensionSet::ParseField(this, (8 * v9) | 2u, a2, a3, a4);
LABEL_15:
            if ((v12 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v14 = *a2;
            if (*a2 >= a2[1])
            {
              v15 = 0;
LABEL_36:
              Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
              v15 = Varint32Fallback;
              if ((Varint32Fallback & 0x8000000080000000) != 0)
              {
                goto LABEL_56;
              }

              goto LABEL_37;
            }

            v15 = *v14;
            if (*v14 < 0)
            {
              goto LABEL_36;
            }

            *a2 = v14 + 1;
LABEL_37:
            std::string::resize(&v41, v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6), 0);
            v20 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
            v21 = v41.__r_.__value_.__r.__words[0];
            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v41;
            }

            else
            {
              v22 = v41.__r_.__value_.__r.__words[0];
            }

            if (v15 > 0x7F)
            {
              v22->__r_.__value_.__s.__data_[0] = v15 | 0x80;
              v25 = v15 >> 7;
              if (v20 >= 0)
              {
                v21 = &v41;
              }

              if (v15 >> 14)
              {
                v24 = &v21->__r_.__value_.__s.__data_[2];
                do
                {
                  *(v24 - 1) = v25 | 0x80;
                  v26 = v25 >> 7;
                  ++v24;
                  v27 = v25 >> 14;
                  v25 >>= 7;
                }

                while (v27);
                *(v24 - 1) = v26;
              }

              else
              {
                v21->__r_.__value_.__s.__data_[1] = v25;
                v24 = &v21->__r_.__value_.__s.__data_[2];
              }
            }

            else
            {
              v22->__r_.__value_.__s.__data_[0] = v15;
              if (v20 >= 0)
              {
                v23 = &v41;
              }

              else
              {
                v23 = v21;
              }

              v24 = &v23->__r_.__value_.__s.__data_[1];
            }

            Raw = google::protobuf::io::CodedInputStream::ReadRaw(a2, v24, v15);
            v9 = 0;
            if (!Raw)
            {
              goto LABEL_56;
            }
          }
        }

        if (!TagFallback)
        {
          goto LABEL_56;
        }

        if (TagFallback == 12)
        {
          v29 = 1;
          goto LABEL_57;
        }

        if (TagFallback != 16)
        {
LABEL_14:
          v12 = (*(*a4 + 16))(a4, a2, a5);
          goto LABEL_15;
        }

        v13 = *a2;
        if (*a2 >= a2[1])
        {
          v9 = 0;
        }

        else
        {
          v9 = *v13;
          if ((*v13 & 0x80000000) == 0)
          {
            *a2 = v13 + 1;
            goto LABEL_25;
          }
        }

        v16 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
        v9 = v16;
        if (v16 < 0)
        {
          goto LABEL_56;
        }

LABEL_25:
        v17 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (*(&v41.__r_.__value_.__s + 23))
        {
          v18 = &v41;
          goto LABEL_30;
        }
      }

      v17 = v41.__r_.__value_.__r.__words[1];
    }

    while (!v41.__r_.__value_.__l.__size_);
    v18 = v41.__r_.__value_.__r.__words[0];
LABEL_30:
    v31[0] = v18;
    v31[1] = v18 + v17;
    v31[2] = 0;
    v33 = 0;
    v34 = 0;
    v32 = v17;
    v35 = v17;
    v36 = -NAN;
    v39 = 0;
    v40 = 0;
    v37 = *(a2 + 13);
    v38 = v37;
    if ((google::protobuf::internal::ExtensionSet::ParseField(this, (8 * v9) | 2u, v31, a3, a4) & 1) == 0)
    {
      break;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      *v41.__r_.__value_.__l.__data_ = 0;
      v41.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v41.__r_.__value_.__s.__data_[0] = 0;
      *(&v41.__r_.__value_.__s + 23) = 0;
    }

    google::protobuf::io::CodedInputStream::~CodedInputStream(v31);
  }

  google::protobuf::io::CodedInputStream::~CodedInputStream(v31);
LABEL_56:
  v29 = 0;
LABEL_57:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_26D416D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSet(google::protobuf::internal::ExtensionSet *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  google::protobuf::io::StringOutputStream::StringOutputStream(v13, a4);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v14, v13, 1);
  v12[0] = &unk_287EBCDB0;
  v12[1] = v14;
  v11[0] = &unk_287EBC9F0;
  v11[1] = a3;
  v8 = google::protobuf::internal::ExtensionSet::ParseMessageSetLite(a1, a2, v11, v12, v7);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v14);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_26D416E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
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

void sub_26D419A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::InternalSerializeMessageSetWithCachedSizesToArray(google::protobuf::internal::ExtensionSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v10 = a2;
  v5 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::InternalSerializeMessageSetWithCachedSizesToArray(unsigned char *,google::protobuf::io::EpsCopyOutputStream *)::$_0>(*v5, v5 + 1, &v10, a3);
    return v10;
  }

  else if (*(this + 5))
  {
    v6 = &v5[8 * *(this + 5)];
    v7 = *(this + 2);
    do
    {
      v8 = *v7;
      v7 += 8;
      v4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray((v5 + 2), v8, v4, a3);
      v5 = v7;
    }

    while (v7 != v6);
  }

  return v4;
}

uint64_t google::protobuf::internal::ExtensionSet::ByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::ByteSize(void)::$_0>(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(this + 5))
  {
    v2 = 0;
    v3 = &v1[8 * *(this + 5)];
    v4 = *(this + 2);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(int **this, int a2)
{
  if (*(this + 9) == 1)
  {
    v4 = *(this + 8);
    v5 = v4 - 19;
    if (*(this + 11) == 1)
    {
      if (v5 <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v6 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v102, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
      }

      switch(v4)
      {
        case 1:
        case 6:
        case 16:
          v22 = 8 * **this;
          goto LABEL_71;
        case 2:
        case 7:
        case 15:
          v22 = 4 * **this;
          goto LABEL_71;
        case 3:
          v45 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v46 = 0;
          do
          {
            v22 += (9 * (__clz(*google::protobuf::RepeatedField<long long>::Get(v45, v46++) | 1) ^ 0x3F) + 73) >> 6;
            v45 = *this;
          }

          while (v46 < **this);
          goto LABEL_71;
        case 4:
          v47 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v48 = 0;
          do
          {
            v22 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned long long>::Get(v47, v48++) | 1) ^ 0x3F) + 73) >> 6;
            v47 = *this;
          }

          while (v48 < **this);
          goto LABEL_71;
        case 5:
          v37 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v38 = 0;
          do
          {
            v39 = google::protobuf::RepeatedField<int>::Get(v37, v38);
            v40 = (9 * (__clz(*v39 | 1) ^ 0x1F) + 73) >> 6;
            if (*v39 >= 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 10;
            }

            v22 += v41;
            ++v38;
            v37 = *this;
          }

          while (v38 < **this);
          goto LABEL_71;
        case 8:
          v22 = **this;
          goto LABEL_71;
        case 9:
        case 10:
        case 11:
        case 12:
          google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1599);
          v7 = google::protobuf::internal::LogMessage::operator<<(v103, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v102, &v7->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
          goto LABEL_7;
        case 13:
          v30 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v31 = 0;
          do
          {
            v22 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned int>::Get(v30, v31++) | 1) ^ 0x1F) + 73) >> 6;
            v30 = *this;
          }

          while (v31 < **this);
          goto LABEL_71;
        case 14:
          v32 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v33 = 0;
          do
          {
            v34 = google::protobuf::RepeatedField<int>::Get(v32, v33);
            v35 = (9 * (__clz(*v34 | 1) ^ 0x1F) + 73) >> 6;
            if (*v34 >= 0)
            {
              v36 = v35;
            }

            else
            {
              v36 = 10;
            }

            v22 += v36;
            ++v33;
            v32 = *this;
          }

          while (v33 < **this);
          goto LABEL_71;
        case 17:
          v27 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v28 = 0;
          do
          {
            v29 = google::protobuf::RepeatedField<int>::Get(v27, v28);
            v22 += (9 * (__clz((2 * *v29) ^ (*v29 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            ++v28;
            v27 = *this;
          }

          while (v28 < **this);
          goto LABEL_71;
        case 18:
          v42 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v43 = 0;
          do
          {
            v44 = google::protobuf::RepeatedField<long long>::Get(v42, v43);
            v22 += (9 * (__clz((2 * *v44) ^ (*v44 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            ++v43;
            v42 = *this;
          }

          while (v43 < **this);
LABEL_71:
          *(this + 3) = v22;
          v49 = v22 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
          if (v22)
          {
            v8 = v49;
          }

          else
          {
            v8 = 0;
          }

          break;
        default:
LABEL_7:
          v8 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      if (v5 > 0xFFFFFFED)
      {
        v11 = 0;
        v10 = *(this + 8);
      }

      else
      {
        google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v9 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v102, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
        v10 = *(this + 8);
        v11 = (v10 - 19) < 0xFFFFFFEE;
      }

      v16 = v4 == 10;
      if (v11)
      {
        google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v102, &v17->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
      }

      v18 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v16;
      switch(v10)
      {
        case 1:
        case 6:
        case 16:
          v19 = v18 + 8;
          goto LABEL_27;
        case 2:
        case 7:
        case 15:
          v19 = v18 + 4;
LABEL_27:
          v8 = v19 * **this;
          break;
        case 3:
          v85 = *this;
          v86 = **this;
          v8 = v18 * v86;
          if (v86 >= 1)
          {
            v87 = 0;
            do
            {
              v8 += (9 * (__clz(*google::protobuf::RepeatedField<long long>::Get(v85, v87++) | 1) ^ 0x3F) + 73) >> 6;
              v85 = *this;
            }

            while (v87 < **this);
          }

          break;
        case 4:
          v88 = *this;
          v89 = **this;
          v8 = v18 * v89;
          if (v89 >= 1)
          {
            v90 = 0;
            do
            {
              v8 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned long long>::Get(v88, v90++) | 1) ^ 0x3F) + 73) >> 6;
              v88 = *this;
            }

            while (v90 < **this);
          }

          break;
        case 5:
          v75 = *this;
          v76 = **this;
          v8 = v18 * v76;
          if (v76 >= 1)
          {
            v77 = 0;
            do
            {
              v78 = google::protobuf::RepeatedField<int>::Get(v75, v77);
              v79 = (9 * (__clz(*v78 | 1) ^ 0x1F) + 73) >> 6;
              if (*v78 >= 0)
              {
                v80 = v79;
              }

              else
              {
                v80 = 10;
              }

              v8 += v80;
              ++v77;
              v75 = *this;
            }

            while (v77 < **this);
          }

          break;
        case 8:
          v8 = **this + **this * v18;
          break;
        case 9:
          v96 = *this;
          v97 = (*this)[2];
          v8 = v18 * v97;
          if (v97 >= 1)
          {
            v98 = 0;
            do
            {
              v99 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v96, v98);
              v100 = *(v99 + 23);
              if ((v100 & 0x80u) != 0)
              {
                v100 = *(v99 + 8);
              }

              v8 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
              ++v98;
              v96 = *this;
            }

            while (v98 < (*this)[2]);
          }

          break;
        case 10:
          v58 = *this;
          v59 = (*this)[2];
          v8 = v18 * v59;
          if (v59 >= 1)
          {
            v60 = 0;
            do
            {
              v61 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v58, v60);
              v8 += (*(*v61 + 72))(v61);
              ++v60;
              v58 = *this;
            }

            while (v60 < (*this)[2]);
          }

          break;
        case 11:
          v64 = *this;
          v65 = (*this)[2];
          v8 = v18 * v65;
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v67 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v64, v66);
              v68 = (*(*v67 + 72))(v67);
              v8 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
              ++v66;
              v64 = *this;
            }

            while (v66 < (*this)[2]);
          }

          break;
        case 12:
          v91 = *this;
          v92 = (*this)[2];
          v8 = v18 * v92;
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v91, v93);
              v95 = *(v94 + 23);
              if ((v95 & 0x80u) != 0)
              {
                v95 = *(v94 + 8);
              }

              v8 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6);
              ++v93;
              v91 = *this;
            }

            while (v93 < (*this)[2]);
          }

          break;
        case 13:
          v55 = *this;
          v56 = **this;
          v8 = v18 * v56;
          if (v56 >= 1)
          {
            v57 = 0;
            do
            {
              v8 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned int>::Get(v55, v57++) | 1) ^ 0x1F) + 73) >> 6;
              v55 = *this;
            }

            while (v57 < **this);
          }

          break;
        case 14:
          v69 = *this;
          v70 = **this;
          v8 = v18 * v70;
          if (v70 >= 1)
          {
            v71 = 0;
            do
            {
              v72 = google::protobuf::RepeatedField<int>::Get(v69, v71);
              v73 = (9 * (__clz(*v72 | 1) ^ 0x1F) + 73) >> 6;
              if (*v72 >= 0)
              {
                v74 = v73;
              }

              else
              {
                v74 = 10;
              }

              v8 += v74;
              ++v71;
              v69 = *this;
            }

            while (v71 < **this);
          }

          break;
        case 17:
          v50 = *this;
          v51 = **this;
          v8 = v18 * v51;
          if (v51 >= 1)
          {
            v52 = 0;
            do
            {
              v53 = google::protobuf::RepeatedField<int>::Get(v50, v52);
              v8 += (9 * (__clz((2 * *v53) ^ (*v53 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              ++v52;
              v50 = *this;
            }

            while (v52 < **this);
          }

          break;
        case 18:
          v81 = *this;
          v82 = **this;
          v8 = v18 * v82;
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = google::protobuf::RepeatedField<long long>::Get(v81, v83);
              v8 += (9 * (__clz((2 * *v84) ^ (*v84 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              ++v83;
              v81 = *this;
            }

            while (v83 < **this);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(this + 10))
  {
    return 0;
  }

  else
  {
    v12 = *(this + 8);
    if ((v12 - 19) > 0xFFFFFFED)
    {
      v15 = 0;
      v14 = *(this + 8);
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v13 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v102, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
      v14 = *(this + 8);
      v15 = (v14 - 19) < 0xFFFFFFEE;
    }

    v20 = v12 == 10;
    if (v15)
    {
      google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v21 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v102, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
    }

    v8 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v20;
    switch(v14)
    {
      case 1:
      case 6:
      case 16:
        v8 += 8;
        return v8;
      case 2:
      case 7:
      case 15:
        v8 += 4;
        return v8;
      case 3:
      case 4:
        v23 = *this;
        goto LABEL_116;
      case 5:
      case 14:
        v24 = (9 * (__clz(*this | 1) ^ 0x1F) + 73) >> 6;
        if (*this >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 10;
        }

        v8 += v25;
        return v8;
      case 8:
        return ++v8;
      case 9:
      case 12:
        v26 = *(*this + 1);
        if (*(*this + 23) >= 0)
        {
          v26 = *(*this + 23);
        }

        v8 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 10:
        v8 += (*(**this + 72))();
        return v8;
      case 11:
        v62 = **this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v63 = (*(v62 + 88))();
        }

        else
        {
          v63 = (*(v62 + 72))();
        }

        v8 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 13:
        v54 = *this;
        goto LABEL_103;
      case 17:
        v54 = (2 * *this) ^ (*this >> 31);
LABEL_103:
        v8 += (9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 18:
        v23 = (2 * *this) ^ (*this >> 63);
LABEL_116:
        v8 += (9 * (__clz(v23 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v8;
    }
  }

  return v8;
}