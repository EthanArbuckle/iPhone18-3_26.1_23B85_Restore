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

void sub_1A8FB628C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_1A8FB65F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_1A8FB6748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *a1, unint64_t a2, google::protobuf::internal *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_1F1CACD60;
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

char *google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo<std::string>(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, unint64_t *a5, google::protobuf::internal *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = this;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v54 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 1, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedDoubleParser(v54, v8, a7, v55);
        break;
      case 2:
        v56 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 2, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFloatParser(v56, v8, a7, v57);
        break;
      case 3:
        v40 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 3, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt64Parser(v40, v8, a7, v41);
        break;
      case 4:
        v48 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 4, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt64Parser(v48, v8, a7, v49);
        break;
      case 5:
        v30 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 5, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt32Parser(v30, v8, a7, v31);
        break;
      case 6:
        v64 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 6, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed64Parser(v64, v8, a7, v65);
        break;
      case 7:
        v73 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 7, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed32Parser(v73, v8, a7, v74);
        break;
      case 8:
        v51 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 8, *(a4 + 2), *(a4 + 24));

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
        v32 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 13, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt32Parser(v32, v8, a7, v33);
        break;
      case 0xE:
        v105.__r_.__value_.__r.__words[0] = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v105.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v106 = a5;
        v107 = v11;
        v8 = google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(a7, v8, &v105);
        goto LABEL_170;
      case 0xF:
        v20 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 15, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed32Parser(v20, v8, a7, v21);
        break;
      case 0x10:
        v43 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 16, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed64Parser(v43, v8, a7, v44);
        break;
      case 0x11:
        v16 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 17, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt32Parser(v16, v8, a7, v17);
        break;
      case 0x12:
        v60 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 18, *(a4 + 2), *(a4 + 24));

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
        v8 = (a6 + 8);
        v58 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v58, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetDouble(this, a2, 1, v58, *(a4 + 24));
        }

        goto LABEL_170;
      case 2:
        v8 = (a6 + 4);
        v59 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v59, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetFloat(this, a2, 2, v59, *(a4 + 24));
        }

        goto LABEL_170;
      case 3:
        v42 = *a6;
        if ((v42 & 0x8000000000000000) != 0)
        {
          v42 = (*(a6 + 1) << 7) + v42 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v42);
            if (!v8)
            {
              goto LABEL_170;
            }

            v42 = v100;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v47 = 3;
          goto LABEL_158;
        }

        v84 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v85 = 3;
        goto LABEL_160;
      case 4:
        v50 = *a6;
        if ((v50 & 0x8000000000000000) != 0)
        {
          v50 = (*(a6 + 1) << 7) + v50 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v50);
            if (!v8)
            {
              goto LABEL_170;
            }

            v50 = v101;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v66 = *(a4 + 2);
          v67 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v68 = 4;
          goto LABEL_148;
        }

        v86 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v87 = 4;
        goto LABEL_150;
      case 5:
        v35 = *a6;
        if ((v35 & 0x8000000000000000) != 0)
        {
          v35 = (*(a6 + 1) << 7) + v35 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v35);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v35) = v99;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v25 = 5;
          v96 = v35;
          goto LABEL_136;
        }

        v82 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v83 = 5;
        v97 = v35;
        goto LABEL_138;
      case 6:
        v8 = (a6 + 8);
        v50 = *a6;
        if (*(a4 + 1) == 1)
        {
          v66 = *(a4 + 2);
          v67 = *(a4 + 24);
          v68 = 6;
LABEL_148:
          google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, v68, v66, v50, v67);
        }

        else
        {
          v86 = *(a4 + 24);
          v87 = 6;
LABEL_150:
          google::protobuf::internal::ExtensionSet::SetUInt64(this, a2, v87, v50, v86);
        }

        goto LABEL_170;
      case 7:
        v8 = (a6 + 4);
        v75 = *a6;
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
        v94 = *a6;
        goto LABEL_131;
      case 8:
        v53 = *a6;
        if ((v53 & 0x8000000000000000) != 0)
        {
          v53 = (*(a6 + 1) << 7) + v53 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v53);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
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
          v36 = google::protobuf::internal::ExtensionSet::AddString(this, a2, 9, v15);
        }

        else
        {
          v36 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, 9, v15);
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
          v72 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v70, v71);
        }

        else
        {
          v72 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v70, v71);
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
          v29 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v27, v28);
        }

        else
        {
          v29 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v27, v28);
        }

        return google::protobuf::internal::ParseContext::ParseMessage(a7, v29, v8);
      case 0xD:
        v34 = *a6;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v34 = (*(a6 + 1) << 7) + v34 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v34);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v34) = v98;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v76 = *(a4 + 2);
          v77 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v78 = 13;
          v79 = v34;
LABEL_129:
          google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, v78, v76, v79, v77);
        }

        else
        {
          v92 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v93 = 13;
          v94 = v34;
LABEL_131:
          google::protobuf::internal::ExtensionSet::SetUInt32(this, a2, v93, v94, v92);
        }

        goto LABEL_170;
      case 0xE:
        v63 = *a6;
        if ((v63 & 0x8000000000000000) != 0)
        {
          v95 = (*(a6 + 1) << 7) + v63;
          v63 = (v95 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v95 - 128));
            if (!v8)
            {
              goto LABEL_170;
            }

            v63 = v102;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
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
        v8 = (a6 + 4);
        v22 = *a6;
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
        v8 = (a6 + 8);
        v42 = *a6;
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
        v19 = *a6;
        if ((v19 & 0x8000000000000000) != 0)
        {
          v19 = (*(a6 + 1) << 7) + v19 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v19);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        v22 = -(v19 & 1) ^ (v19 >> 1);
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v25 = 17;
LABEL_122:
          v96 = v22;
LABEL_136:
          google::protobuf::internal::ExtensionSet::AddInt32(this, a2, v25, v23, v96, v24);
        }

        else
        {
          v82 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v83 = 17;
LABEL_124:
          v97 = v22;
LABEL_138:
          google::protobuf::internal::ExtensionSet::SetInt32(this, a2, v83, v97, v82);
        }

        goto LABEL_170;
      case 0x12:
        v62 = *a6;
        if ((v62 & 0x8000000000000000) != 0)
        {
          v62 = (*(a6 + 1) << 7) + v62 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v62);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        v42 = -(v62 & 1) ^ (v62 >> 1);
        if (*(a4 + 1) == 1)
        {
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v47 = 18;
LABEL_158:
          google::protobuf::internal::ExtensionSet::AddInt64(this, a2, v47, v45, v42, v46);
        }

        else
        {
          v84 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v85 = 18;
LABEL_160:
          google::protobuf::internal::ExtensionSet::SetInt64(this, a2, v85, v42, v84);
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

void sub_1A8FB7500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_1A8FBA10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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

void sub_1A8FBADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::Extension::Free(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v2 = *(this + 8);
  v3 = v2 - 19;
  if (*(this + 9) != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
    if (v8 == 10)
    {
      v12 = *this;
      if ((*(this + 10) & 0x10) != 0)
      {
        if (!v12)
        {
          return;
        }
      }

      else if (!v12)
      {
        return;
      }

      (*(*v12 + 8))(v12);
      return;
    }

    if (v8 == 9)
    {
      v9 = *this;
      if (v9)
      {
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v10 = 0x1012C40EC159624;
        v6 = v9;
        goto LABEL_45;
      }
    }

    return;
  }

  if (v3 <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedField<float>::~RepeatedField();
      }

      else
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedField<BOOL>::~RepeatedField();
      }

      goto LABEL_44;
    }

    if (v5 != 8)
    {
      if (v5 == 9)
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField();
      }

      else
      {
        if (v5 != 10)
        {
          return;
        }

        v11 = *this;
        if (!v11)
        {
          return;
        }

        google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v11);
        google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v11);
      }

      v10 = 0x1020C4014030ADELL;
      goto LABEL_45;
    }

LABEL_34:
    if (!*this)
    {
      return;
    }

    v6 = google::protobuf::RepeatedField<int>::~RepeatedField();
    goto LABEL_44;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<unsigned int>::~RepeatedField();
    }

    else if (v5 == 4)
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<unsigned long long>::~RepeatedField();
    }

    else
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<double>::~RepeatedField();
    }

    goto LABEL_44;
  }

  if (v5 == 1)
  {
    goto LABEL_34;
  }

  if (v5 == 2 && *this)
  {
    v6 = google::protobuf::RepeatedField<long long>::~RepeatedField();
LABEL_44:
    v10 = 0x1080C4057E67DB5;
LABEL_45:
    MEMORY[0x1AC57D1A0](v6, v10);
  }
}

void sub_1A8FBB0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::~()::$_0>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Free((v3 + 5));
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1, int a2)
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

void sub_1A8FBB270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(result, a2);
  }

  v3 = *v2;
  if (v3 >= result[3])
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(result, a2);
  }

  v4 = v2 + 2;
  v5 = result[2];
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  result[2] = v5 + 1;
  ++**(result + 2);
  return result;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (!v4)
  {
    v5 = result[3];
    goto LABEL_11;
  }

  v5 = result[2];
  v6 = result[3];
  if (v5 == v6)
  {
LABEL_11:
    result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(result, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 2);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = v3[2];
  v3[2] = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return result;
}

void google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Clear((v3 + 5));
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet const&)::$_0>(void *a1, void *a2, google::protobuf::internal::ExtensionSet *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, *(v5 + 8), (v5 + 5));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadString(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x1AC57CEA0](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

google::protobuf::internal *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_20;
    }

    v5 = v7;
  }

  else
  {
    result = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v8 - result;
  if (v5 <= v8 - result)
  {
LABEL_15:
    v15 = result + v5;
    v16 = a3[1];
    v19 = *a3;
    v20 = v16;
    v21 = *(a3 + 4);
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(result, v15, &v19);
    if (v15 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      v10 = a3[1];
      v19 = *a3;
      v20 = v10;
      v21 = *(a3 + 4);
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(result, v8, &v19);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v19, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v19);
      }

      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        v24 = 0;
        v23 = 0;
        v22 = **(a1 + 8);
        v17 = a3[1];
        v19 = *a3;
        v20 = v17;
        v21 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>((&v22 + v11), &v22 + v13, &v19) != (&v22 + v13))
        {
LABEL_19:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v13);
        break;
      }

      v5 = v5 - v9 - v11;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = google::protobuf::internal::LogMessage::operator<<(&v19, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v14->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v19);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_19;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result = (result + v11);
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if ((v6 & 0x8000000000000000) != 0)
      {
        v7 = (v3[1] << 7) + v6;
        v6 = (v7 - 128);
        if (v3[1] < 0)
        {
          v3 = google::protobuf::internal::VarintParseSlow64(v3, (v7 - 128));
          if (!v3)
          {
            return v3;
          }

          v6 = v8;
        }

        else
        {
          v3 += 2;
        }
      }

      else
      {
        ++v3;
      }

      if ((a3[1])(a3[2], v6))
      {
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          v11 = v10 + 1;
          google::protobuf::RepeatedField<int>::Reserve(*a3, v10 + 1);
          *(google::protobuf::RepeatedField<int>::elements(v9) + 4 * v10) = v6;
        }

        else
        {
          *(google::protobuf::RepeatedField<int>::elements(*a3) + 4 * v10) = v6;
          v11 = v10 + 1;
        }

        *v9 = v11;
      }

      else
      {
        v12 = *(a3 + 8);
        v13 = a3[3];
        if (*v13)
        {
          v14 = ((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v14 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v13);
        }

        google::protobuf::internal::WriteVarint(v12, v6, v14);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

char *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

void *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::ByteSize(void)::$_0>(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1)
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
      (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_1A8FBBA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(void *a1)
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

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_hint_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t google::protobuf::internal::ExtensionSet::~ExtensionSet(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x1AC57D1A0);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GrowCapacity(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

void google::protobuf::internal::DestroyString(void **this, const void *a2)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void google::protobuf::internal::InitProtobufDefaultsSlow(google::protobuf::internal *this)
{
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    *algn_1EDA31B38 = 0;
    qword_1EDA31B40 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
    atomic_store(1u, google::protobuf::internal::init_protobuf_defaults_state);
  }
}

uint64_t google::protobuf::internal::GenericSwap(google::protobuf::internal *this, google::protobuf::MessageLite *a2, google::protobuf::MessageLite *a3)
{
  v5 = (*(*this + 24))(this, a2, a3);
  (*(*v5 + 64))(v5, this);
  (*(*this + 40))(this);
  (*(*this + 64))(this, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

void google::protobuf::internal::InitSCCImpl(_DWORD *a1)
{
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2 = pthread_self();
  v3 = v2;
  if (google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner == v2)
  {
    if (*a1 != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::internal::InitProtobufDefaultsSlow(v2);
    }

    std::mutex::lock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = v3;
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = 0;

    std::mutex::unlock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
  }
}

void sub_1A8FBC6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::internal::anonymous namespace::InitSCC_DFS(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

void google::protobuf::internal::InitSCCImpl()
{
  {
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu, &dword_1A8E85000);
  }
}

void google::protobuf::MessageLite::LogInitializationErrorMessage(google::protobuf::MessageLite *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, &__p);
  google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_1A8FBC8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(const std::string::value_type *this@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, this);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  std::string::append(a3, p_p, v8);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 56))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

  std::string::append(a3, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_1A8FBCA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::MessageLite::ParseFromArray(google::protobuf::MessageLite *this, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    google::protobuf::MessageLite::ParseFromArray();
  }

  google::protobuf::MessageLite::ParseFromArray(a3, a2, this);
  return v4;
}

BOOL google::protobuf::MessageLite::AppendToString(const char *a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

void sub_1A8FBCBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v17, __p);
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, v6);
    google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v17;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v17[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v18 = 0;
  v19 = 0;
  v20 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  if (v17[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    google::protobuf::internal::LogMessage::~LogMessage(&v9->__r_.__value_.__l.__data_);
  }

  result = v7 == 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendToString(this, a2);
  if (!result)
  {
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
  }

  return result;
}

void sub_1A8FBCE60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  v5 = google::protobuf::internal::ShutdownData::get(this);
  std::mutex::lock((v5 + 24));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - *v5;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(v5, v12);
    }

    v13 = (16 * v9);
    *v13 = this;
    v13[1] = a2;
    v8 = 16 * v9 + 16;
    v14 = *(v5 + 8) - *v5;
    v15 = (16 * v9 - v14);
    memcpy(v15, *v5, v14);
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
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  *(v5 + 8) = v8;

  std::mutex::unlock((v5 + 24));
}

uint64_t google::protobuf::internal::ShutdownData::get(google::protobuf::internal::ShutdownData *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::ShutdownData::get(void)::data;
}

google::protobuf::internal::ShutdownData *google::protobuf::ShutdownProtobufLibrary(google::protobuf::internal::ShutdownData *this)
{
  if ((google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown & 1) == 0)
  {
    this = google::protobuf::internal::ShutdownData::get(this);
    if (this)
    {
      google::protobuf::internal::ShutdownData::~ShutdownData(this);
      this = MEMORY[0x1AC57D1A0]();
    }

    google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown = 1;
  }

  return this;
}

void google::protobuf::internal::ShutdownData::~ShutdownData(google::protobuf::internal::ShutdownData *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = v3 - 2;
  if (*this != v3 && v4 > v2)
  {
    do
    {
      v6 = *v2;
      *v2 = *v4;
      *v4 = v6;
      v7 = v2[1];
      v2[1] = v4[1];
      v4[1] = v7;
      v2 += 2;
      v4 -= 2;
    }

    while (v2 < v4);
    v2 = *this;
    v3 = *(this + 1);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((this + 24));
  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t google::protobuf::MessageLite::ParseFromArray(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = google::protobuf::internal::MergeFromImpl<false>();
  *v3 = result;
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  if (*(this + 7) <= 16)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: limit_ > kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, 0, -1);
  v4 = *(this + 1);
  if (result)
  {
    v5 = *(this + 7) + result - v4;
    *(this + 7) = v5;
    v4 += v5 & (v5 >> 31);
  }

  else
  {
    *(this + 20) = 1;
  }

  *this = v4;
  return result;
}

void sub_1A8FBD328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::NextBuffer(google::protobuf::internal::EpsCopyInputStream *this, unsigned int a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v5 = (this + 40);
  if (v3 != (this + 40))
  {
    v6 = *(this + 6);
    if (v6 <= 16)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ > kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&__src, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
      v3 = *(this + 2);
      v6 = *(this + 6);
    }

    *(this + 1) = v3 + v6 - 16;
    *(this + 2) = v5;
    if (*(this + 9) == 1)
    {
      *(this + 9) = 2;
    }

    return v3;
  }

  *v5 = **(this + 1);
  if (*(this + 21) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun >= 0: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
LABEL_27:
    v16 = this + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            SizeFallback = google::protobuf::internal::ReadSizeFallback(v18, v22);
            if (!SizeFallback)
            {
              goto LABEL_16;
            }
          }

          else
          {
            SizeFallback = v18 + 1;
          }

          if (v16 - SizeFallback < v22)
          {
            goto LABEL_16;
          }

          v18 = &SizeFallback[v22];
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = google::protobuf::internal::VarintParse<unsigned long long>(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun <= kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
  {
LABEL_22:
    *(this + 21) = 0;
LABEL_23:
    if (*(this + 9) == 2)
    {
      *(this + 9) = *(this + 1) - v3;
    }

    *(this + 1) = this + 56;
    *(this + 2) = 0;
    *(this + 6) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(this + 6);
    *(this + 21) -= v12;
    if (v12 >= 17)
    {
      v28 = *(this + 9);
      v27 = (this + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ == 0: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(this + 6));
      google::protobuf::internal::LogFinisher::operator=(&v32, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    }

    if (((*(**(this + 4) + 16))(*(this + 4), &__src, this + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy(this + 56, __src, v12);
  v31 = *(this + 9);
  v27 = (this + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_1A8FBD73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneFallback(google::protobuf::internal::EpsCopyInputStream *this, signed int a2, int a3)
{
  v3 = *(this + 7);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun != limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun < limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (*this != *(this + 1) + (v3 & (v3 >> 31)))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  if (*this != *(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    if (v5 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    Buffer = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, v5, a3);
    if (!Buffer)
    {
      break;
    }

    v14 = *(this + 1);
    v15 = *(this + 7) + Buffer - v14;
    *(this + 7) = v15;
    result = Buffer + v5;
    v5 = result - v14;
    if (result - v14 < 0)
    {
      *this = v14 + (v15 & (v15 >> 31));
      return result;
    }
  }

  if (v5)
  {
    return 0;
  }

  if (*(this + 7) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  result = *(this + 1);
  *this = result;
  *(this + 20) = 1;
  return result;
}

void sub_1A8FBDA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v5 = *(this + 2) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    if (!*(this + 2) || *(this + 7) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!result)
    {
      return result;
    }

    v5 = *(this + 2) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

void sub_1A8FBDB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::WriteVarint(int a1, unint64_t a2, std::string *this)
{
  v5 = (8 * a1);
  if (v5 < 0x80)
  {
    LOBYTE(v6) = 8 * a1;
  }

  else
  {
    do
    {
      std::string::push_back(this, v5 | 0x80);
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  std::string::push_back(this, v6);
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      std::string::push_back(this, a2 | 0x80);
      v8 = a2 >> 7;
      v9 = a2 >> 14;
      a2 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
}

char *google::protobuf::internal::VarintParseSlow32(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 35)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = this + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::VarintParseSlow64(google::protobuf::internal *this, unint64_t a2)
{
  a2 = a2;
  result = this + 3;
  v4 = this + 2;
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::ReadTagFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = this + 2;
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    LODWORD(a2) = ((v6 - 1) << (v5 + 35)) + a2;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

char *google::protobuf::internal::InlineGreedyStringParser(uint64_t a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<float>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<double>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(a3, v6, v5, a1);
}

char *google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(google::protobuf::internal::UnknownFieldLiteParserHelper *a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v10 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v10, *(this + 23)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(this + 20) = v6 - 1;
  return v5;
}

google::protobuf::internal *google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(unint64_t a1, std::string *this, google::protobuf::internal *a3, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = google::protobuf::internal::LogMessage::operator<<(v12, "Can't happen");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = (a3 + 4);
        google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(this, v4, *a3);
      }

      return v5;
    }

    result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(this, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = google::protobuf::internal::VarintParse<unsigned long long>(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(this, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = (a3 + 8);
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(this, v4, *a3);
    return v5;
  }

  result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(this, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_1A8FBE328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::VarintParse<unsigned long long>(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8FBE5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8FBE878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8FBEB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8FBEE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8FBF0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8FBF3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8FBF6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<BOOL>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

void google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(std::string **this, int a2, unint64_t a3)
{
  v3 = *this;
  if (*this)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *this;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(std::string *this, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v10[0] = a3;
    this = std::string::append(*v5, v10, 8uLL);
  }

  v9 = *MEMORY[0x1E69E9840];
  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(std::string **this, int a2, std::string::value_type *a3, google::protobuf::internal::ParseContext *a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, *a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = *this;
  if (*this)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *this;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *this;

    return google::protobuf::internal::EpsCopyInputStream::AppendString(a4, v8, v7, v18);
  }

  else if (*(a4 + 1) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::SkipFallback(a4, v8, v7);
  }
}

char *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(std::string **this, int a2, char *a3, int32x2_t *a4)
{
  v7 = *this;
  v8 = 8 * a2;
  if (*this)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(this, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *this;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(std::string *this, int a2, int a3)
{
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendString(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return google::protobuf::internal::EpsCopyInputStream::AppendStringFallback();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void OUTLINED_FUNCTION_0_3(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return google::protobuf::internal::LogMessage::LogMessage(va, 3, v2, 323);
}

std::string *OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void google::protobuf::RepeatedField<BOOL>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  if (v6)
  {
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v3 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<BOOL>::elements(a1);
  if (*a1 >= 1)
  {
    v11 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1A8FC04F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1A8FC05B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_1A8FC0690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_1A8FC0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1A8FC0850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<BOOL>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<BOOL>::elements(a2);
    memcpy(v6, v8, *a2);
  }
}

void sub_1A8FC0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<int>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<int>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<int>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1A8FC0B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1A8FC0BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_1A8FC0CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_1A8FC0D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<int>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1A8FC0E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_1A8FC0FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<unsigned int>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1A8FC114C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1A8FC120C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

void sub_1A8FC12E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

void sub_1A8FC13C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1A8FC14A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<unsigned int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_1A8FC15CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<long long>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<long long>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<long long>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<long long>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1A8FC1778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1A8FC1838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

void sub_1A8FC1910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

void sub_1A8FC19F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<long long>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<long long>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1A8FC1AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<long long>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<long long>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_1A8FC1BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1A8FC1DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1A8FC1E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

void sub_1A8FC1F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

void sub_1A8FC201C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1A8FC20FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<unsigned long long>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_1A8FC2224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<float>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<float>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<float>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<float>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1A8FC23D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1A8FC2490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

void sub_1A8FC2568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

void sub_1A8FC2648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<float>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<float>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1A8FC2728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<float>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<float>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<float>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_1A8FC2850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<double>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<double>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<double>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<double>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1A8FC29FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1A8FC2ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

void sub_1A8FC2B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

void sub_1A8FC2C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<double>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<double>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1A8FC2D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<double>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<double>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<double>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_1A8FC2E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(void *a1)
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

          MEMORY[0x1AC57D1A0](v5, 0x1012C40EC159624);
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

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(unsigned int *this, int a2)
{
  v2 = this[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(*this);
      }

      AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      AlignedNoHook = operator new(v10 + 8);
    }

    *(this + 2) = AlignedNoHook;
    *(this + 3) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(AlignedNoHook + 2, v5 + 2, 8 * v13);
      AlignedNoHook = *(this + 2);
      *AlignedNoHook = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *AlignedNoHook = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        AlignedNoHook = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = AlignedNoHook;
  }

  return &v5[2 * v2 + 2];
}

uint64_t *OUTLINED_FUNCTION_0_4(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void sentencepiece::MemoryMappedModelProto::~MemoryMappedModelProto(sentencepiece::MemoryMappedModelProto *this)
{
  *this = &unk_1F1CACEE0;
  sentencepiece::util::Status::~Status((this + 88));
}

{
  *this = &unk_1F1CACEE0;
  sentencepiece::util::Status::~Status((this + 88));

  JUMPOUT(0x1AC57D1A0);
}

uint64_t sentencepiece::MemoryMappedModelProto::UnkSurface(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = **(this + 9);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::UnkPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::BosPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::EosPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::PadPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void sentencepiece::TrainerSpec::_InternalParse(sentencepiece::TrainerSpec *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v322 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v322, *(a3 + 23));
  v6 = v322;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = (v6 + 1);
    LODWORD(v8) = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = (v8 + (*v7 << 7) - 128);
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v6 + 2);
LABEL_6:
      v322 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v6, v8);
    v322 = TagFallback;
    if (!TagFallback)
    {
      return;
    }

    v7 = TagFallback;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v322 = (v9 + 1);
          v10 = *(this + 9);
          if (!v10)
          {
            v13 = *(this + 17);
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 14, v13 + 1);
            v12 = *(this + 9);
            v20 = *v12;
            goto LABEL_17;
          }

          v11 = *(this + 16);
          OUTLINED_FUNCTION_15(v10);
          if (v14 != v15)
          {
            OUTLINED_FUNCTION_13();
            *(this + 16) = v17;
            v19 = *(v18 + 8);
            goto LABEL_22;
          }

          if (v13 == *(this + 17))
          {
            goto LABEL_16;
          }

LABEL_17:
          OUTLINED_FUNCTION_20(v12);
          v21 = *(this + 7);
          if (!v21)
          {
            OUTLINED_FUNCTION_21();
          }

          if (*(v21 + 24))
          {
            v29 = OUTLINED_FUNCTION_8();
          }

          v22 = OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_17(v22);
          v23 = *(this + 9);
          v24 = *(this + 16);
          OUTLINED_FUNCTION_16();
          *(this + 16) = v25;
          v19 = OUTLINED_FUNCTION_14(v26, v27);
LABEL_22:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v19, v16, a3);
          if (v322)
          {
            OUTLINED_FUNCTION_12();
            if (!(!v257 & v28) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 1);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v127, v56);
        }

        v57 = (this + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v186 = v7 + 1;
        v185 = *v7;
        if ((v185 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_0_0(v185, v186);
        if (v188 < 0)
        {
          v322 = google::protobuf::internal::VarintParseSlow64(v187, v185);
          if (!v322)
          {
            return;
          }
        }

        else
        {
          v186 = v187 + 2;
LABEL_183:
          v322 = v186;
        }

        if ((v185 - 1) > 3)
        {
          v316 = *(this + 1);
          if (v316)
          {
            v317 = ((v316 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v320 = v185;
            v321 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            v185 = v320;
            v317 = v321;
          }

          google::protobuf::internal::WriteVarint(3, v185, v317);
        }

        else
        {
          *(this + 10) |= 0x800000u;
          *(this + 68) = v185;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x1000000);
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_1(v123, v124);
        if (v126 < 0)
        {
          v284 = google::protobuf::internal::VarintParseSlow64(v125, v123);
          v322 = v284;
          *(this + 69) = v285;
          if (!v284)
          {
            return;
          }
        }

        else
        {
          v124 = v125 + 2;
LABEL_122:
          v322 = v124;
          *(this + 69) = v123;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v152 = v7 - 1;
        while (1)
        {
          v322 = (v152 + 1);
          v153 = *(this + 12);
          if (!v153)
          {
            break;
          }

          v154 = *(this + 22);
          OUTLINED_FUNCTION_15(v153);
          if (v14 == v15)
          {
            if (v156 == *(this + 23))
            {
LABEL_154:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 20, v156 + 1);
              v155 = *(this + 12);
              v161 = *v155;
            }

            OUTLINED_FUNCTION_20(v155);
            v162 = *(this + 10);
            if (!v162)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v162 + 24))
            {
              v169 = OUTLINED_FUNCTION_8();
            }

            v163 = OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_17(v163);
            v164 = *(this + 12);
            v165 = *(this + 22);
            OUTLINED_FUNCTION_16();
            *(this + 22) = v166;
            v160 = OUTLINED_FUNCTION_14(v167, v168);
            goto LABEL_160;
          }

          OUTLINED_FUNCTION_13();
          *(this + 22) = v158;
          v160 = *(v159 + 8);
LABEL_160:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v160, v157, a3);
          if (!v322)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v257 & v28) || *v152 != 42)
          {
            goto LABEL_267;
          }
        }

        v156 = *(this + 23);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x200);
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        OUTLINED_FUNCTION_1(v181, v182);
        if (v184 < 0)
        {
          v298 = google::protobuf::internal::VarintParseSlow64(v183, v181);
          v322 = v298;
          *(this + 56) = v299;
          if (!v298)
          {
            return;
          }
        }

        else
        {
          v182 = v183 + 2;
LABEL_178:
          v322 = v182;
          *(this + 56) = v181;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 2);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v219, v56);
        }

        v57 = (this + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x2000000u;
        v221 = *v7;
        v144 = (v7 + 4);
        *(this + 70) = v221;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x800);
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_0_0(v97, v98);
        if (v100 < 0)
        {
          v274 = google::protobuf::internal::VarintParseSlow64(v99, v97);
          v322 = v274;
          *(this + 29) = v275;
          if (!v274)
          {
            return;
          }
        }

        else
        {
          v98 = v99 + 2;
LABEL_100:
          v322 = v98;
          *(this + 29) = v97;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x400);
        if ((v222 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        OUTLINED_FUNCTION_1(v222, v223);
        if (v225 < 0)
        {
          v304 = google::protobuf::internal::VarintParseSlow64(v224, v222);
          v322 = v304;
          *(this + 57) = v305;
          if (!v304)
          {
            return;
          }
        }

        else
        {
          v223 = v224 + 2;
LABEL_234:
          v322 = v223;
          *(this + 57) = v222;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x1000);
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_1(v113, v114);
        if (v116 < 0)
        {
          v280 = google::protobuf::internal::VarintParseSlow64(v115, v113);
          v322 = v280;
          *(this + 60) = v281;
          if (!v280)
          {
            return;
          }
        }

        else
        {
          v114 = v115 + 2;
LABEL_113:
          v322 = v114;
          *(this + 60) = v113;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x4000000);
        if ((v171 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        OUTLINED_FUNCTION_1(v171, v172);
        if (v174 < 0)
        {
          v294 = google::protobuf::internal::VarintParseSlow64(v173, v171);
          v322 = v294;
          *(this + 71) = v295;
          if (!v294)
          {
            return;
          }
        }

        else
        {
          v172 = v173 + 2;
LABEL_169:
          v322 = v172;
          *(this + 71) = v171;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x8000000u;
        v145 = *v7;
        v144 = (v7 + 4);
        *(this + 72) = v145;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x10000000);
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_1(v74, v75);
        if (v77 < 0)
        {
          v272 = google::protobuf::internal::VarintParseSlow64(v76, v74);
          v322 = v272;
          *(this + 73) = v273;
          if (!v272)
          {
            return;
          }
        }

        else
        {
          v75 = v76 + 2;
LABEL_76:
          v322 = v75;
          *(this + 73) = v74;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x20000000);
        if ((v211 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        OUTLINED_FUNCTION_1(v211, v212);
        if (v214 < 0)
        {
          v300 = google::protobuf::internal::VarintParseSlow64(v213, v211);
          v322 = v300;
          *(this + 74) = v301;
          if (!v300)
          {
            return;
          }
        }

        else
        {
          v212 = v213 + 2;
LABEL_217:
          v322 = v212;
          *(this + 74) = v211;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x40000000);
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        OUTLINED_FUNCTION_1(v215, v216);
        if (v218 < 0)
        {
          v302 = google::protobuf::internal::VarintParseSlow64(v217, v215);
          v322 = v302;
          *(this + 75) = v303;
          if (!v302)
          {
            return;
          }
        }

        else
        {
          v216 = v217 + 2;
LABEL_222:
          v322 = v216;
          *(this + 75) = v215;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 1);
        if (v234 < 0 && (OUTLINED_FUNCTION_0_0(v234, v235), v238 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v237, v236);
          OUTLINED_FUNCTION_3();
          *(this + 308) = v310;
          if (!v311)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 308) = v239;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x80000000);
        if ((v230 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        OUTLINED_FUNCTION_1(v230, v231);
        if (v233 < 0)
        {
          v308 = google::protobuf::internal::VarintParseSlow64(v232, v230);
          v322 = v308;
          *(this + 76) = v309;
          if (!v308)
          {
            return;
          }
        }

        else
        {
          v231 = v232 + 2;
LABEL_244:
          v322 = v231;
          *(this + 76) = v230;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 2);
        if (v58 < 0 && (OUTLINED_FUNCTION_0_0(v58, v59), v62 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v61, v60);
          OUTLINED_FUNCTION_3();
          *(this + 309) = v266;
          if (!v267)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 309) = v63;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 8);
        if (v146 < 0 && (OUTLINED_FUNCTION_0_0(v146, v147), v150 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v149, v148);
          OUTLINED_FUNCTION_3();
          *(this + 311) = v292;
          if (!v293)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 311) = v151;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 4);
        if (v241 < 0 && (OUTLINED_FUNCTION_0_0(v241, v242), v245 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v244, v243);
          OUTLINED_FUNCTION_3();
          *(this + 310) = v312;
          if (!v313)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 310) = v246;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x4000);
        if (v68 < 0 && (OUTLINED_FUNCTION_0_0(v68, v69), v72 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v71, v70);
          OUTLINED_FUNCTION_3();
          *(this + 245) = v270;
          if (!v271)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 245) = v73;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x10000);
        if (v138 < 0 && (OUTLINED_FUNCTION_0_0(v138, v139), v142 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v141, v140);
          OUTLINED_FUNCTION_3();
          *(this + 247) = v290;
          if (!v291)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 247) = v143;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x8000);
        if (v101 < 0 && (OUTLINED_FUNCTION_0_0(v101, v102), v105 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v104, v103);
          OUTLINED_FUNCTION_3();
          *(this + 246) = v276;
          if (!v277)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 246) = v106;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v189 = (v7 - 2);
        while (1)
        {
          v322 = (v189 + 1);
          v190 = *(this + 15);
          if (!v190)
          {
            break;
          }

          v191 = *(this + 28);
          OUTLINED_FUNCTION_15(v190);
          if (v14 == v15)
          {
            if (v193 == *(this + 29))
            {
LABEL_194:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 26, v193 + 1);
              v192 = *(this + 15);
              v198 = *v192;
            }

            OUTLINED_FUNCTION_20(v192);
            v199 = *(this + 13);
            if (!v199)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v199 + 24))
            {
              v206 = OUTLINED_FUNCTION_8();
            }

            v200 = OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_17(v200);
            v201 = *(this + 15);
            v202 = *(this + 28);
            OUTLINED_FUNCTION_16();
            *(this + 28) = v203;
            v197 = OUTLINED_FUNCTION_14(v204, v205);
            goto LABEL_200;
          }

          OUTLINED_FUNCTION_13();
          *(this + 28) = v195;
          v197 = *(v196 + 8);
LABEL_200:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v197, v194, a3);
          if (!v322)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v257 & v28) || *v189 != 498)
          {
            goto LABEL_267;
          }
        }

        v193 = *(this + 29);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v78 = (v7 - 2);
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 0x10);
        if (v49 < 0 && (OUTLINED_FUNCTION_0_0(v49, v50), v53 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v52, v51);
          OUTLINED_FUNCTION_3();
          *(this + 312) = v264;
          if (!v265)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 312) = v54;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 0x20);
        if (v247 < 0 && (OUTLINED_FUNCTION_0_0(v247, v248), v251 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v250, v249);
          OUTLINED_FUNCTION_3();
          *(this + 313) = v314;
          if (!v315)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 313) = v252;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x40000);
        if (v117 < 0 && (OUTLINED_FUNCTION_0_0(v117, v118), v121 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v120, v119);
          OUTLINED_FUNCTION_3();
          *(this + 249) = v282;
          if (!v283)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 249) = v122;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x20000);
        if (v128 < 0 && (OUTLINED_FUNCTION_0_0(v128, v129), v132 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v131, v130);
          OUTLINED_FUNCTION_3();
          *(this + 248) = v286;
          if (!v287)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 248) = v133;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 4);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v210, v56);
        }

        v57 = (this + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x100000);
        if ((v134 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        OUTLINED_FUNCTION_1(v134, v135);
        if (v137 < 0)
        {
          v288 = google::protobuf::internal::VarintParseSlow64(v136, v134);
          v322 = v288;
          *(this + 63) = v289;
          if (!v288)
          {
            return;
          }
        }

        else
        {
          v135 = v136 + 2;
LABEL_135:
          v322 = v135;
          *(this + 63) = v134;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x40);
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_1(v36, v37);
        if (v39 < 0)
        {
          v262 = google::protobuf::internal::VarintParseSlow64(v38, v36);
          v322 = v262;
          *(this + 79) = v263;
          if (!v262)
          {
            return;
          }
        }

        else
        {
          v37 = v38 + 2;
LABEL_38:
          v322 = v37;
          *(this + 79) = v36;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x80);
        if ((v64 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_1(v64, v65);
        if (v67 < 0)
        {
          v268 = google::protobuf::internal::VarintParseSlow64(v66, v64);
          v322 = v268;
          *(this + 80) = v269;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          v65 = v66 + 2;
LABEL_67:
          v322 = v65;
          *(this + 80) = v64;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x100);
        if ((v226 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        OUTLINED_FUNCTION_1(v226, v227);
        if (v229 < 0)
        {
          v306 = google::protobuf::internal::VarintParseSlow64(v228, v226);
          v322 = v306;
          *(this + 81) = v307;
          if (!v306)
          {
            return;
          }
        }

        else
        {
          v227 = v228 + 2;
LABEL_239:
          v322 = v227;
          *(this + 81) = v226;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 8);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v253, v254, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_;
        v44 = (this + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x10);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v47, v48, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_;
        v44 = (this + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x20);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v208, v209, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_;
        v44 = (this + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x40);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v45, v46, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_;
        v44 = (this + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x80);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v40, v41, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_;
        v44 = (this + 208);
LABEL_264:
        v220 = google::protobuf::internal::ArenaStringPtr::Mutable(v44, v43, v42);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x80000);
        if (v107 < 0 && (OUTLINED_FUNCTION_0_0(v107, v108), v111 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v110, v109);
          OUTLINED_FUNCTION_3();
          *(this + 250) = v278;
          if (!v279)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 250) = v112;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x2000);
        if (v175 < 0 && (OUTLINED_FUNCTION_0_0(v175, v176), v179 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v178, v177);
          OUTLINED_FUNCTION_3();
          *(this + 244) = v296;
          if (!v297)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 244) = v180;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x200000u;
        v240 = *v7;
        v144 = (v7 + 4);
        *(this + 64) = v240;
LABEL_251:
        v322 = v144;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x400000);
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_0_0(v32, v33);
        if (v35 < 0)
        {
          v260 = google::protobuf::internal::VarintParseSlow64(v34, v32);
          v322 = v260;
          *(this + 33) = v261;
          if (!v260)
          {
            return;
          }
        }

        else
        {
          v33 = v34 + 2;
LABEL_33:
          v322 = v33;
          *(this + 33) = v32;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 0x100);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v55, v56);
        }

        v57 = (this + 216);
LABEL_227:
        v220 = google::protobuf::internal::ArenaStringPtr::Mutable(v57, v56);
LABEL_265:
        v255 = google::protobuf::internal::InlineGreedyStringParser(v220, v322, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v257 = (v8 & 7) == 4;
        }

        else
        {
          v257 = 1;
        }

        if (v257)
        {
          *(a3 + 20) = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v258 = *(this + 1);
          if (v258)
          {
            v259 = (v258 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v318 = v8;
            v319 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            LODWORD(v8) = v318;
            v259 = v319;
            v7 = v322;
          }

          v255 = google::protobuf::internal::UnknownFieldParse(v8, v259, v7, a3);
        }

        else
        {
          v255 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_TrainerSpec_default_instance_, this + 1, a3);
        }

LABEL_266:
        v322 = v255;
        if (!v255)
        {
          return;
        }

LABEL_267:
        v256 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v322, *(a3 + 23));
        v6 = v322;
        if (v256)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v322 = (v78 + 1);
    v79 = *(this + 18);
    if (!v79)
    {
      break;
    }

    v80 = *(this + 34);
    OUTLINED_FUNCTION_15(v79);
    if (v14 == v15)
    {
      if (v82 == *(this + 35))
      {
LABEL_85:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 32, v82 + 1);
        v81 = *(this + 18);
        v87 = *v81;
      }

      OUTLINED_FUNCTION_20(v81);
      v88 = *(this + 16);
      if (!v88)
      {
        OUTLINED_FUNCTION_21();
      }

      if (*(v88 + 24))
      {
        v95 = OUTLINED_FUNCTION_8();
      }

      v89 = OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_17(v89);
      v90 = *(this + 18);
      v91 = *(this + 34);
      OUTLINED_FUNCTION_16();
      *(this + 34) = v92;
      v86 = OUTLINED_FUNCTION_14(v93, v94);
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_13();
    *(this + 34) = v84;
    v86 = *(v85 + 8);
LABEL_91:
    v322 = google::protobuf::internal::InlineGreedyStringParser(v86, v83, a3);
    if (!v322)
    {
      return;
    }

    OUTLINED_FUNCTION_12();
    if (!(!v257 & v28) || *v78 != 506)
    {
      goto LABEL_267;
    }
  }

  v82 = *(this + 35);
  goto LABEL_85;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData_Sample>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData_Sample *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData_Sample::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::ModelProto_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::ModelProto_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::ModelProto_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::TrainerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::TrainerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    SizeFallback = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!SizeFallback)
    {
      return;
    }

    v8 = SizeFallback;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sentencepiece::TrainerSpec::_InternalParse(a2, v8, this);
    if (v15)
    {
      ++*(this + 22);
      if (!*(this + 20))
      {
        v16 = *(this + 7) + v14;
        *(this + 7) = v16;
        *this = *(this + 1) + (v16 & (v16 >> 31));
      }
    }
  }
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::NormalizerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::NormalizerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::NormalizerSpec::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet *this, const google::protobuf::internal::ExtensionSet *a2)
{
  if (*(this + 4) <= 0x100u)
  {
    v4 = *(a2 + 4);
    v5 = *(this + 2);
    v6 = &v5[32 * *(this + 5)];
    v7 = *(a2 + 2);
    if (v4 > 0x100)
    {
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 5);
      if (*(this + 5) && *(a2 + 5))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v12);
  }

  v13 = *(a2 + 2);
  if (*(a2 + 4) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet const&)::$_0>(v17, v18, this);
  }

  else if (*(a2 + 5))
  {
    v14 = &v13[8 * *(a2 + 5)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, v16, (v13 + 2));
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t google::protobuf::internal::MergeFromImpl<false>()
{
  OUTLINED_FUNCTION_4_0();
  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v2, v3, v4);
  OUTLINED_FUNCTION_3_0();
  v6 = *(v5 + 88);
  v7 = OUTLINED_FUNCTION_8_0();
  v9 = v8(v7);
  result = 0;
  if (v9)
  {
    if (v1 & 2) != 0 || (OUTLINED_FUNCTION_6_0(), ((*(v11 + 48))(v0)))
    {
      result = 1;
    }

    else
    {
      google::protobuf::MessageLite::LogInitializationErrorMessage(v0);
      result = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadStringFallback()
{
  OUTLINED_FUNCTION_2_1();
  if (*(v6 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v7 = *(v2 + 8);
  if (v7 - v3 + *(v2 + 28) >= v0)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_3(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_1(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    v4 = OUTLINED_FUNCTION_1_2(result);
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1A8FC4DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendStringFallback()
{
  OUTLINED_FUNCTION_2_1();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_3(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_1(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    v4 = OUTLINED_FUNCTION_1_2(result);
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1A8FC4ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ParseContext::ParseMessage<google::protobuf::MessageLite>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v15;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v10 = *(this + 22);
  v11 = __OFSUB__(v10--, 1);
  *(this + 22) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, this);
    if (!result)
    {
      return result;
    }

    ++*(this + 22);
    if (!*(this + 20))
    {
      v14 = *(this + 7) + v12;
      *(this + 7) = v14;
      *this = *(this + 1) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

char *google::protobuf::internal::ReadSizeFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 2;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 28)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(this + 4);
      v6 = this + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t Data._Representation.subscript.getter()
{
  return MEMORY[0x1EEDC4510]();
}

{
  return MEMORY[0x1EEDC4518]();
}

Swift::String_optional __swiftcall PromptTemplate.loadRawPromptTemplateFromFallbackPromptTemplateCatalog()()
{
  v0 = MEMORY[0x1EEE0B648]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t static CustomPromptBuilder.buildExpression(_:)()
{
  return MEMORY[0x1EEE2FFE8]();
}

{
  return MEMORY[0x1EEE30000]();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Prompt.render(tokenTable:bindingVariables:)(Swift::OpaquePointer tokenTable, Swift::OpaquePointer bindingVariables)
{
  v2 = MEMORY[0x1EEE30148](tokenTable._rawValue, bindingVariables._rawValue);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t dispatch thunk of BinaryFloatingPoint.init(_:)()
{
  return MEMORY[0x1EEE68720]();
}

{
  return MEMORY[0x1EEE68728]();
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x1EEE68F80](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x1EEE68F88](a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x1EEE68FC8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t String.init<A>(_:)()
{
  return MEMORY[0x1EEE690E8]();
}

{
  return MEMORY[0x1EEE690F0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AC50]();
}

{
  return MEMORY[0x1EEE6AC58]();
}

{
  return MEMORY[0x1EEE6AC60]();
}

{
  return MEMORY[0x1EEE6AC68]();
}

{
  return MEMORY[0x1EEE6AC70]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACD8]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

{
  return MEMORY[0x1EEE6AD20]();
}

{
  return MEMORY[0x1EEE6AD30]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AD90]();
}

{
  return MEMORY[0x1EEE6AD98]();
}

{
  return MEMORY[0x1EEE6ADA0]();
}

{
  return MEMORY[0x1EEE6ADA8]();
}

{
  return MEMORY[0x1EEE6ADB0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE10]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

{
  return MEMORY[0x1EEE6AE58]();
}

{
  return MEMORY[0x1EEE6AE68]();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return MEMORY[0x1EEE6B1F8]();
}

{
  return MEMORY[0x1EEE6B200]();
}

{
  return MEMORY[0x1EEE6B208]();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B288]();
}

{
  return MEMORY[0x1EEE6B290]();
}

{
  return MEMORY[0x1EEE6B298]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
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

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}