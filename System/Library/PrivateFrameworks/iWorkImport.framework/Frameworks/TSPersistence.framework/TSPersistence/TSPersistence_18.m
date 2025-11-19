void sub_276B5A388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void sub_276B5A45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SwapExtension(google::protobuf::internal::ExtensionSet *this, google::protobuf::internal::ExtensionSet *a2, int a3)
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

void sub_276B5A62C(_Unwind_Exception *a1, uint64_t a2, ...)
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
    return sub_276B6290C(v4, &v14) + 5;
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
  if (*(this + 4) < 0x101u)
  {
    if (*(this + 5))
    {
      v2 = *(this + 2);
      do
      {
        result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized((v2 + 8));
        if ((result & 1) == 0)
        {
          break;
        }

        v2 += 32;
      }

      while (v2 != *(this + 2) + 32 * *(this + 5));
      return result;
    }

    return 1;
  }

  v4 = *(this + 2);
  v7 = *v4;
  v5 = (v4 + 1);
  v6 = v7;
  if (v7 == v5)
  {
    return 1;
  }

  do
  {
    result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized(v6 + 5);
    if (!result)
    {
      break;
    }

    v8 = v6[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v6[2];
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
  }

  while (v9 != v5);
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::IsInitialized(uint64_t **this)
{
  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)] != 10)
  {
    return 1;
  }

  if (*(this + 9) == 1)
  {
    v2 = *this;
    if (*(*this + 2) >= 1)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(v2[2] + 8 * v3 + 8);
        if (((*(*v4 + 48))(v4) & 1) == 0)
        {
          break;
        }

        ++v3;
        v2 = *this;
        if (v3 >= *(*this + 2))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  v5 = *(this + 10);
  if (v5)
  {
    return 1;
  }

  v7 = *this;
  v8 = **this;
  if ((v5 & 0x10) != 0)
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
    v10 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[*a5];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v10 > 5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 82);
        v11 = google::protobuf::internal::LogMessage::operator<<(v13, "can't reach here.");
        google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      }

      else
      {
        result = 1;
        if (((1 << v10) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v10 == a2;
  }

  return result;
}

void sub_276B5AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(google::protobuf::internal::ExtensionSet *this, uint64_t a2, int a3, uint64_t a4, google::protobuf::io::CodedInputStream *a5, uint64_t a6)
{
  if (a3)
  {
    v11 = *a5;
    if (*a5 >= *(a5 + 1))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
      if ((*v11 & 0x80000000) == 0)
      {
        *a5 = v11 + 1;
        goto LABEL_127;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v12);
    v12 = Varint32Fallback;
    if ((Varint32Fallback & 0x8000000000000000) == 0)
    {
LABEL_127:
      v119 = google::protobuf::io::CodedInputStream::PushLimit(a5, v12);
      switch(*a4)
      {
        case 1:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            v170[0].__r_.__value_.__r.__words[0] = 0;
            v145 = *a5;
            if ((*(a5 + 2) - *a5) >= 8)
            {
              v146 = *v145;
              *a5 = v145 + 1;
              goto LABEL_196;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
            if (result)
            {
              v146 = *&v170[0].__r_.__value_.__l.__data_;
LABEL_196:
              google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v146, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 2:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
            v147 = *a5;
            if ((*(a5 + 2) - *a5) >= 4)
            {
              v148 = *v147;
              *a5 = v147 + 1;
              goto LABEL_203;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
            if (result)
            {
              v148 = *&v170[0].__r_.__value_.__l.__data_;
LABEL_203:
              google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v148, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 3:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v132 = *a5;
            if (*a5 >= *(a5 + 1) || (v133 = *v132, v133 < 0))
            {
              Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v135 & 1) == 0)
              {
                return 0;
              }

              v133 = Varint64Fallback;
            }

            else
            {
              *a5 = v132 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 3, *(a4 + 2), v133, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
          goto LABEL_129;
        case 4:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v138 = *a5;
            if (*a5 >= *(a5 + 1) || (v139 = *v138, v139 < 0))
            {
              v140 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v141 & 1) == 0)
              {
                return 0;
              }

              v139 = v140;
            }

            else
            {
              *a5 = v138 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, 4, *(a4 + 2), v139, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
          goto LABEL_129;
        case 5:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (1)
          {
            v126 = *a5;
            if (*a5 >= *(a5 + 1))
            {
              break;
            }

            v127 = *v126;
            if (*v126 < 0)
            {
              goto LABEL_152;
            }

            *a5 = v126 + 1;
LABEL_153:
            google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 5, *(a4 + 2), v127, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
            {
              goto LABEL_129;
            }
          }

          v127 = 0;
LABEL_152:
          v128 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v127);
          v127 = v128;
          if (v128 < 0)
          {
            return 0;
          }

          goto LABEL_153;
        case 6:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            v170[0].__r_.__value_.__r.__words[0] = 0;
            v154 = *a5;
            if ((*(a5 + 2) - *a5) >= 8)
            {
              v155 = *v154;
              v170[0].__r_.__value_.__r.__words[0] = *v154;
              *a5 = v154 + 1;
              goto LABEL_228;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
            if (result)
            {
              v155 = v170[0].__r_.__value_.__r.__words[0];
LABEL_228:
              google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, 6, *(a4 + 2), v155, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 7:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
            v156 = *a5;
            if ((*(a5 + 2) - *a5) >= 4)
            {
              data = *v156;
              LODWORD(v170[0].__r_.__value_.__l.__data_) = *v156;
              *a5 = v156 + 1;
              goto LABEL_235;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
            if (result)
            {
              data = v170[0].__r_.__value_.__l.__data_;
LABEL_235:
              google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, 7, *(a4 + 2), data, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 8:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v142 = *a5;
            if (*a5 >= *(a5 + 1) || (v143 = *v142, v143 < 0))
            {
              v143 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v144 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *a5 = v142 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddBool(this, a2, 8, *(a4 + 2), v143 != 0, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
          goto LABEL_129;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v170, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 1277);
          v120 = google::protobuf::internal::LogMessage::operator<<(v170, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v169, &v120->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v170[0].__r_.__value_.__l.__data_);
          goto LABEL_129;
        case 0xD:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (1)
          {
            v129 = *a5;
            if (*a5 >= *(a5 + 1))
            {
              break;
            }

            v130 = *v129;
            if (*v129 < 0)
            {
              goto LABEL_160;
            }

            *a5 = v129 + 1;
LABEL_161:
            google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, 13, *(a4 + 2), v130, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
            {
              goto LABEL_129;
            }
          }

          v130 = 0;
LABEL_160:
          v131 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v130);
          v130 = v131;
          if (v131 < 0)
          {
            return 0;
          }

          goto LABEL_161;
        case 0xE:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (1)
          {
            v152 = *a5;
            if (*a5 >= *(a5 + 1))
            {
              break;
            }

            v153 = *v152;
            if (*v152 < 0)
            {
              goto LABEL_219;
            }

            *a5 = v152 + 1;
LABEL_220:
            if ((*(a4 + 8))(*(a4 + 16), v153))
            {
              google::protobuf::internal::ExtensionSet::AddEnum(this, a2, 14, *(a4 + 2), v153, *(a4 + 24));
            }

            else
            {
              (*(*a6 + 32))(a6, a2, v153);
            }

            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
            {
              goto LABEL_129;
            }
          }

          LODWORD(v153) = 0;
LABEL_219:
          v153 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v153);
          if (v153 < 0)
          {
            return 0;
          }

          goto LABEL_220;
        case 0xF:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
            v124 = *a5;
            if ((*(a5 + 2) - *a5) >= 4)
            {
              v125 = *v124;
              *a5 = v124 + 1;
              goto LABEL_143;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
            if (result)
            {
              v125 = v170[0].__r_.__value_.__l.__data_;
LABEL_143:
              google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 15, *(a4 + 2), v125, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 0x10:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            v170[0].__r_.__value_.__r.__words[0] = 0;
            v136 = *a5;
            if ((*(a5 + 2) - *a5) >= 8)
            {
              v137 = *v136;
              *a5 = v136 + 1;
              goto LABEL_174;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
            if (result)
            {
              v137 = v170[0].__r_.__value_.__r.__words[0];
LABEL_174:
              google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 16, *(a4 + 2), v137, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 0x11:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          break;
        case 0x12:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v149 = *a5;
            if (*a5 >= *(a5 + 1) || (v150 = *v149, (v150 & 0x8000000000000000) != 0))
            {
              v150 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v151 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *a5 = v149 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 18, *(a4 + 2), -(v150 & 1) ^ (v150 >> 1), *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
LABEL_129:
          google::protobuf::io::CodedInputStream::PopLimit(a5, v119);
          return 1;
        default:
          goto LABEL_129;
      }

      while (1)
      {
        v121 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          break;
        }

        v122 = *v121;
        if (*v121 < 0)
        {
          goto LABEL_137;
        }

        *a5 = v121 + 1;
LABEL_138:
        google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 17, *(a4 + 2), -(v122 & 1) ^ (v122 >> 1), *(a4 + 24));
        if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
        {
          goto LABEL_129;
        }
      }

      v122 = 0;
LABEL_137:
      v123 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v122);
      v122 = v123;
      if (v123 < 0)
      {
        return 0;
      }

      goto LABEL_138;
    }

    return 0;
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v170[0].__r_.__value_.__r.__words[0] = 0;
        v13 = *a5;
        if ((*(a5 + 2) - *a5) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v14 = *&v170[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v14 = *v13;
          *a5 = v13 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v14, *(a4 + 24));
        }

        else
        {
          v83 = *(a4 + 24);
          v84 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v84[2] = v83;
          if (v85)
          {
            *(v84 + 4) = 1;
          }

          *(v84 + 10) &= 0xF0u;
          *v84 = v14;
        }

        return 1;
      case 2:
        LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
        v46 = *a5;
        if ((*(a5 + 2) - *a5) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v47 = *&v170[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v47 = *v46;
          *a5 = v46 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v47, *(a4 + 24));
        }

        else
        {
          v86 = *(a4 + 24);
          v87 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v87[2] = v86;
          if (v88)
          {
            *(v87 + 4) = 2;
          }

          *(v87 + 10) &= 0xF0u;
          *v87 = v47;
        }

        return 1;
      case 3:
        v35 = *a5;
        if (*a5 >= *(a5 + 1) || (v36 = *v35, (v36 & 0x8000000000000000) != 0))
        {
          v99 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v100 & 1) == 0)
          {
            return 0;
          }

          v36 = v99;
        }

        else
        {
          *a5 = v35 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = this;
          v41 = a2;
          v42 = 3;
          goto LABEL_93;
        }

        v102 = *(a4 + 24);
        v80 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v80[2] = v102;
        if ((v103 & 1) == 0)
        {
          goto LABEL_104;
        }

        v82 = 3;
        goto LABEL_103;
      case 4:
        v43 = *a5;
        if (*a5 >= *(a5 + 1) || (v36 = *v43, (v36 & 0x8000000000000000) != 0))
        {
          v104 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v105 & 1) == 0)
          {
            return 0;
          }

          v36 = v104;
        }

        else
        {
          *a5 = v43 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v51 = *(a4 + 2);
          v53 = *(a4 + 24);
          v54 = this;
          v55 = a2;
          v56 = 4;
          v52 = v36;
          goto LABEL_100;
        }

        v106 = *(a4 + 24);
        v80 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v80[2] = v106;
        if ((v107 & 1) == 0)
        {
          goto LABEL_104;
        }

        v82 = 4;
        goto LABEL_103;
      case 5:
        v28 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          LODWORD(v29) = 0;
        }

        else
        {
          LODWORD(v29) = *v28;
          if ((*v28 & 0x80000000) == 0)
          {
            *a5 = v28 + 1;
            goto LABEL_251;
          }
        }

        v29 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v29);
        if (v29 < 0)
        {
          return 0;
        }

LABEL_251:
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = this;
          v22 = a2;
          v23 = 5;
          v24 = v29;
          goto LABEL_253;
        }

        v161 = *(a4 + 24);
        v162 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v162[2] = v161;
        if ((v163 & 1) == 0)
        {
          goto LABEL_281;
        }

        v164 = 5;
        goto LABEL_280;
      case 6:
        v170[0].__r_.__value_.__r.__words[0] = 0;
        v50 = *a5;
        if ((*(a5 + 2) - *a5) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v170[0].__r_.__value_.__r.__words[0] = *v50;
          *a5 = v50 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v51 = *(a4 + 2);
          v52 = v170[0].__r_.__value_.__r.__words[0];
          v53 = *(a4 + 24);
          v54 = this;
          v55 = a2;
          v56 = 6;
LABEL_100:
          google::protobuf::internal::ExtensionSet::AddUInt64(v54, v55, v56, v51, v52, v53);
          return 1;
        }

        v89 = v170[0].__r_.__value_.__r.__words[0];
        v90 = *(a4 + 24);
        v91 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v91[2] = v90;
        if ((v92 & 1) == 0)
        {
          goto LABEL_119;
        }

        v93 = 6;
        goto LABEL_118;
      case 7:
        LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
        v58 = *a5;
        if ((*(a5 + 2) - *a5) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          LODWORD(v170[0].__r_.__value_.__l.__data_) = *v58;
          *a5 = v58 + 4;
        }

        if (*(a4 + 1) == 1)
        {
          v59 = *(a4 + 2);
          v60 = v170[0].__r_.__value_.__l.__data_;
          v61 = *(a4 + 24);
          v62 = this;
          v63 = a2;
          v64 = 7;
          goto LABEL_260;
        }

        v94 = v170[0].__r_.__value_.__l.__data_;
        v95 = *(a4 + 24);
        v96 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v96[2] = v95;
        if (v97)
        {
          v98 = 7;
          goto LABEL_245;
        }

        goto LABEL_246;
      case 8:
        v44 = *a5;
        if (*a5 >= *(a5 + 1) || (v45 = *v44, v45 < 0))
        {
          v108 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v109 & 1) == 0)
          {
            return 0;
          }

          v45 = v108;
        }

        else
        {
          *a5 = v44 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddBool(this, a2, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          v110 = *(a4 + 24);
          v111 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v111[2] = v110;
          if (v112)
          {
            *(v111 + 4) = 8;
          }

          *(v111 + 10) &= 0xF0u;
          *v111 = v45 != 0;
        }

        return 1;
      case 9:
        v25 = *(a4 + 1);
        v26 = *(a4 + 24);
        v27 = 9;
        goto LABEL_60;
      case 0xA:
        v31 = *(a4 + 1);
        v32 = *(a4 + 8);
        v33 = *(a4 + 24);
        if (v31 == 1)
        {
          v34 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v32, v33);
        }

        else
        {
          v34 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v32, v33);
        }

        v70 = *(a5 + 13);
        v71 = __OFSUB__(v70--, 1);
        *(a5 + 13) = v70;
        if (v70 < 0 != v71)
        {
          return 0;
        }

        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v34, a5);
        if (!result)
        {
          return result;
        }

        ++*(a5 + 13);
        return *(a5 + 8) == ((8 * a2) | 4);
      case 0xB:
        v65 = *(a4 + 1);
        v66 = *(a4 + 8);
        v67 = *(a4 + 24);
        if (v65 == 1)
        {
          v68 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v66, v67);
        }

        else
        {
          v68 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v66, v67);
        }

        v73 = v68;
        v74 = *a5;
        if (*a5 >= *(a5 + 1) || (VarintSizeAsIntFallback = *v74, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a5);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *a5 = v74 + 1;
        }

        v116 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a5, VarintSizeAsIntFallback);
        if ((v116 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v117 = v116;
        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v73, a5);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a5, v117);
        if (!result)
        {
          return result;
        }

        return 1;
      case 0xC:
        v25 = *(a4 + 1);
        v26 = *(a4 + 24);
        v27 = 12;
LABEL_60:
        if (v25 == 1)
        {
          v69 = google::protobuf::internal::ExtensionSet::AddString(this, a2, v27, v26);
        }

        else
        {
          v69 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, v27, v26);
        }

        return google::protobuf::internal::WireFormatLite::ReadBytes(a5, v69);
      case 0xD:
        v30 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          LODWORD(v29) = 0;
        }

        else
        {
          LODWORD(v29) = *v30;
          if ((*v30 & 0x80000000) == 0)
          {
            *a5 = v30 + 1;
            goto LABEL_258;
          }
        }

        v29 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v29);
        if (v29 < 0)
        {
          return 0;
        }

LABEL_258:
        if (*(a4 + 1) == 1)
        {
          v59 = *(a4 + 2);
          v61 = *(a4 + 24);
          v62 = this;
          v63 = a2;
          v64 = 13;
          v60 = v29;
LABEL_260:
          google::protobuf::internal::ExtensionSet::AddUInt32(v62, v63, v64, v59, v60, v61);
          return 1;
        }

        v165 = *(a4 + 24);
        v162 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v162[2] = v165;
        if ((v166 & 1) == 0)
        {
          goto LABEL_281;
        }

        v164 = 13;
        goto LABEL_280;
      case 0xE:
        v57 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          LODWORD(v29) = 0;
        }

        else
        {
          v29 = *v57;
          if ((*v57 & 0x80000000) == 0)
          {
            *a5 = v57 + 1;
            goto LABEL_273;
          }
        }

        v29 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v29);
        if (v29 < 0)
        {
          return 0;
        }

LABEL_273:
        if ((*(a4 + 8))(*(a4 + 16), v29))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(this, a2, 14, *(a4 + 2), v29, *(a4 + 24));
          }

          else
          {
            v167 = *(a4 + 24);
            v162 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
            v162[2] = v167;
            if (v168)
            {
              v164 = 14;
LABEL_280:
              *(v162 + 4) = v164;
            }

LABEL_281:
            *(v162 + 10) &= 0xF0u;
            *v162 = v29;
          }
        }

        else
        {
          (*(*a6 + 32))(a6, a2, v29);
        }

        return 1;
      case 0xF:
        LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
        v17 = *a5;
        if ((*(a5 + 2) - *a5) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v18 = v170[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v18 = *v17;
          *a5 = v17 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = this;
          v22 = a2;
          v23 = 15;
          v24 = v18;
          goto LABEL_253;
        }

        v76 = *(a4 + 24);
        v77 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v77[2] = v76;
        if (v78)
        {
          *(v77 + 4) = 15;
        }

        *(v77 + 10) &= 0xF0u;
        *v77 = v18;
        return 1;
      case 0x10:
        v170[0].__r_.__value_.__r.__words[0] = 0;
        v37 = *a5;
        if ((*(a5 + 2) - *a5) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v36 = v170[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          v36 = *v37;
          *a5 = v37 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = this;
          v41 = a2;
          v42 = 16;
LABEL_93:
          v101 = v36;
          goto LABEL_115;
        }

        v79 = *(a4 + 24);
        v80 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v80[2] = v79;
        if (v81)
        {
          v82 = 16;
LABEL_103:
          *(v80 + 4) = v82;
        }

LABEL_104:
        *(v80 + 10) &= 0xF0u;
        *v80 = v36;
        return 1;
      case 0x11:
        v15 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          v16 = 0;
        }

        else
        {
          v16 = *v15;
          if ((*v15 & 0x80000000) == 0)
          {
            *a5 = v15 + 1;
            goto LABEL_241;
          }
        }

        v158 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v16);
        v16 = v158;
        if (v158 < 0)
        {
          return 0;
        }

LABEL_241:
        v94 = -(v16 & 1) ^ (v16 >> 1);
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = this;
          v22 = a2;
          v23 = 17;
          v24 = v94;
LABEL_253:
          google::protobuf::internal::ExtensionSet::AddInt32(v21, v22, v23, v19, v24, v20);
        }

        else
        {
          v159 = *(a4 + 24);
          v96 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v96[2] = v159;
          if (v160)
          {
            v98 = 17;
LABEL_245:
            *(v96 + 4) = v98;
          }

LABEL_246:
          *(v96 + 10) &= 0xF0u;
          *v96 = v94;
        }

        return 1;
      case 0x12:
        v48 = *a5;
        if (*a5 >= *(a5 + 1) || (v49 = *v48, (v49 & 0x8000000000000000) != 0))
        {
          v49 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v113 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *a5 = v48 + 1;
        }

        v89 = -(v49 & 1) ^ (v49 >> 1);
        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = this;
          v41 = a2;
          v42 = 18;
          v101 = v89;
LABEL_115:
          google::protobuf::internal::ExtensionSet::AddInt64(v40, v41, v42, v38, v101, v39);
        }

        else
        {
          v114 = *(a4 + 24);
          v91 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v91[2] = v114;
          if (v115)
          {
            v93 = 18;
LABEL_118:
            *(v91 + 4) = v93;
          }

LABEL_119:
          *(v91 + 10) &= 0xF0u;
          *v91 = v89;
        }

        break;
      default:
        return 1;
    }

    return 1;
  }
}

void sub_276B5BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, unint64_t a2, google::protobuf::internal *a3, const google::protobuf::MessageLite *a4, InternalMetadata *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_2885C7980;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(this, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_276B5BDFC(this, v11, v15, v14, a5, a3, a6);
  }

  if (a5->ptr_)
  {
    v13 = ((a5->ptr_ & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v13 = sub_276B61560(a5);
  }

  return google::protobuf::internal::UnknownFieldParse(v9, v13, a3, a6);
}

char *sub_276B5BDFC(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, google::protobuf::Arena **a5, google::protobuf::internal *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = this;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v52 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 1, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedDoubleParser(v52, v8, a7, v53);
        break;
      case 2:
        v54 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 2, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFloatParser(v54, v8, a7, v55);
        break;
      case 3:
        v39 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 3, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt64Parser(v39, v8, a7, v40);
        break;
      case 4:
        v47 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 4, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt64Parser(v47, v8, a7, v48);
        break;
      case 5:
        v30 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 5, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt32Parser(v30, v8, a7, v31);
        break;
      case 6:
        v61 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 6, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed64Parser(v61, v8, a7, v62);
        break;
      case 7:
        v70 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 7, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed32Parser(v70, v8, a7, v71);
        break;
      case 8:
        v49 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 8, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedBoolParser(v49, v8, a7, v50);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        google::protobuf::internal::LogMessage::LogMessage(&v130, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/extension_set_inl.h", 79);
        v13 = google::protobuf::internal::LogMessage::operator<<(&v130, "Non-primitive types can't be packed.");
        google::protobuf::internal::LogFinisher::operator=(&v129, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v130.__r_.__value_.__l.__data_);
        goto LABEL_188;
      case 0xD:
        v32 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 13, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt32Parser(v32, v8, a7, v33);
        break;
      case 0xE:
        v130.__r_.__value_.__r.__words[0] = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v130.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v131 = a5;
        v132 = v11;
        v8 = sub_276B62420(a7, v8, &v130);
        goto LABEL_188;
      case 0xF:
        v20 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 15, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed32Parser(v20, v8, a7, v21);
        break;
      case 0x10:
        v42 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 16, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed64Parser(v42, v8, a7, v43);
        break;
      case 0x11:
        v16 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 17, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt32Parser(v16, v8, a7, v17);
        break;
      case 0x12:
        v58 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 18, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt64Parser(v58, v8, a7, v59);
        break;
      default:
        goto LABEL_188;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = (a6 + 8);
        v56 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v56, *(a4 + 24));
        }

        else
        {
          v86 = *(a4 + 24);
          v87 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v87[2] = v86;
          if (v88)
          {
            *(v87 + 4) = 1;
          }

          *(v87 + 10) &= 0xF0u;
          *v87 = v56;
        }

        goto LABEL_188;
      case 2:
        v8 = (a6 + 4);
        v57 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v57, *(a4 + 24));
        }

        else
        {
          v89 = *(a4 + 24);
          v90 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v90[2] = v89;
          if (v91)
          {
            *(v90 + 4) = 2;
          }

          *(v90 + 10) &= 0xF0u;
          *v90 = v57;
        }

        goto LABEL_188;
      case 3:
        v41 = *a6;
        if (v41 < 0)
        {
          v98 = (*(a6 + 1) << 7) + v41;
          v41 = (v98 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v98 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v41 = v113;
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
          v44 = *(a4 + 2);
          v45 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v46 = 3;
          goto LABEL_171;
        }

        v114 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        v83[2] = v114;
        if ((v115 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 3;
        goto LABEL_174;
      case 4:
        v41 = *a6;
        if (v41 < 0)
        {
          v99 = (*(a6 + 1) << 7) + v41;
          v41 = (v99 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v99 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v41 = v116;
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
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v65 = 4;
          goto LABEL_158;
        }

        v117 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        v83[2] = v117;
        if ((v118 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 4;
        goto LABEL_174;
      case 5:
        v34 = *a6;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v97 = (*(a6 + 1) << 7) + v34;
          LODWORD(v34) = v97 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v97 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            LODWORD(v34) = v110;
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
          v102 = v34;
          goto LABEL_145;
        }

        v111 = *(a4 + 24);
        v107 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        v107[2] = v111;
        if ((v112 & 1) == 0)
        {
          goto LABEL_187;
        }

        v109 = 5;
        goto LABEL_186;
      case 6:
        v8 = (a6 + 8);
        v41 = *a6;
        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          v65 = 6;
LABEL_158:
          google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, v65, v63, v41, v64);
          goto LABEL_188;
        }

        v92 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v83[2] = v92;
        if ((v93 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 6;
        goto LABEL_174;
      case 7:
        v8 = (a6 + 4);
        v22 = *a6;
        if (*(a4 + 1) == 1)
        {
          v72 = *(a4 + 2);
          v73 = *(a4 + 24);
          v74 = 7;
          v75 = v22;
          goto LABEL_138;
        }

        v94 = *(a4 + 24);
        v79 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v79[2] = v94;
        if ((v95 & 1) == 0)
        {
          goto LABEL_133;
        }

        v81 = 7;
        goto LABEL_132;
      case 8:
        v51 = *a6;
        if (v51 < 0)
        {
          v100 = (*(a6 + 1) << 7) + v51;
          v51 = (v100 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v100 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v51 = v119;
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
          google::protobuf::internal::ExtensionSet::AddBool(v12, v11, 8, *(a4 + 2), v51 != 0, *(a4 + 24));
        }

        else
        {
          v120 = *(a4 + 24);
          v121 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
          v121[2] = v120;
          if (v122)
          {
            *(v121 + 4) = 8;
          }

          *(v121 + 10) &= 0xF0u;
          *v121 = v51 != 0;
        }

        goto LABEL_188;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v35 = google::protobuf::internal::ExtensionSet::AddString(this, a2, 9, v15);
        }

        else
        {
          v35 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, 9, v15);
        }

        v36 = v35;
        v37 = *v8;
        if (*v8 < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback(v8, *v8);
          if (!SizeFallback)
          {
            v8 = 0;
            goto LABEL_188;
          }

          v38 = SizeFallback;
          v37 = v77;
        }

        else
        {
          v38 = v8 + 1;
        }

        return sub_276B62314(a7, v38, v37, v36);
      case 0xA:
        v66 = *(a4 + 1);
        v67 = *(a4 + 8);
        v68 = *(a4 + 24);
        if (v66 == 1)
        {
          v69 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v67, v68);
        }

        else
        {
          v69 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v67, v68);
        }

        return sub_276B62380(a7, v69, v8, (8 * v11) | 3u);
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
          v96 = (*(a6 + 1) << 7) + v34;
          LODWORD(v34) = v96 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v96 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            LODWORD(v34) = v105;
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
          v72 = *(a4 + 2);
          v73 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v74 = 13;
          v75 = v34;
LABEL_138:
          google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, v74, v72, v75, v73);
          goto LABEL_188;
        }

        v106 = *(a4 + 24);
        v107 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        v107[2] = v106;
        if ((v108 & 1) == 0)
        {
          goto LABEL_187;
        }

        v109 = 13;
        goto LABEL_186;
      case 0xE:
        v34 = *a6;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v101 = (*(a6 + 1) << 7) + v34;
          v34 = (v101 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v101 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v34 = v125;
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

        if ((*(a4 + 8))(*(a4 + 16), v34))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(v12, v11, 14, *(a4 + 2), v34, *(a4 + 24));
          }

          else
          {
            v127 = *(a4 + 24);
            v107 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
            v107[2] = v127;
            if (v128)
            {
              v109 = 14;
LABEL_186:
              *(v107 + 4) = v109;
            }

LABEL_187:
            *(v107 + 10) &= 0xF0u;
            *v107 = v34;
          }
        }

        else
        {
          if (*a5)
          {
            v126 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v126 = sub_276B61560(a5);
          }

          google::protobuf::internal::WriteVarint(v11, v34, v126);
        }

        goto LABEL_188;
      case 0xF:
        v8 = (a6 + 4);
        v22 = *a6;
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          v25 = 15;
          goto LABEL_129;
        }

        v78 = *(a4 + 24);
        v79 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v79[2] = v78;
        if ((v80 & 1) == 0)
        {
          goto LABEL_133;
        }

        v81 = 15;
        goto LABEL_132;
      case 0x10:
        v8 = (a6 + 8);
        v41 = *a6;
        if (*(a4 + 1) == 1)
        {
          v44 = *(a4 + 2);
          v45 = *(a4 + 24);
          v46 = 16;
          goto LABEL_171;
        }

        v82 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v83[2] = v82;
        if ((v84 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 16;
        goto LABEL_174;
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
              goto LABEL_188;
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
LABEL_129:
          v102 = v22;
LABEL_145:
          google::protobuf::internal::ExtensionSet::AddInt32(this, a2, v25, v23, v102, v24);
        }

        else
        {
          v103 = *(a4 + 24);
          v79 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
          v79[2] = v103;
          if (v104)
          {
            v81 = 17;
LABEL_132:
            *(v79 + 4) = v81;
          }

LABEL_133:
          *(v79 + 10) &= 0xF0u;
          *v79 = v22;
        }

        goto LABEL_188;
      case 0x12:
        v60 = *a6;
        if ((v60 & 0x8000000000000000) != 0)
        {
          v60 = (*(a6 + 1) << 7) + v60 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v60);
            if (!v8)
            {
              goto LABEL_188;
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

        v41 = -(v60 & 1) ^ (v60 >> 1);
        if (*(a4 + 1) == 1)
        {
          v44 = *(a4 + 2);
          v45 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v46 = 18;
LABEL_171:
          google::protobuf::internal::ExtensionSet::AddInt64(this, a2, v46, v44, v41, v45);
        }

        else
        {
          v123 = *(a4 + 24);
          v83 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
          v83[2] = v123;
          if (v124)
          {
            v85 = 18;
LABEL_174:
            *(v83 + 4) = v85;
          }

LABEL_175:
          *(v83 + 10) &= 0xF0u;
          *v83 = v41;
        }

LABEL_188:
        result = v8;
        break;
      default:
        goto LABEL_188;
    }
  }

  return result;
}

void sub_276B5CBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *sub_276B5CC60(google::protobuf::internal::ExtensionSet *a1, google::protobuf::internal *a2, const google::protobuf::MessageLite *a3, InternalMetadata *a4, uint64_t a5)
{
  v9 = 0;
  LODWORD(v10) = 0;
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = a2;
  __p[0] = 0;
  __p[1] = 0;
LABEL_2:
  while (2)
  {
    v11 = v9;
    while (1)
    {
      v12 = sub_2769F6104(a5, &v43, *(a5 + 92));
      v13 = v43;
      if (v12)
      {
        TagFallback = v43;
        goto LABEL_53;
      }

      TagFallback = (v43 + 1);
      v43 = (v43 + 1);
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
          v43 = SizeFallback;
          if (!SizeFallback)
          {
            goto LABEL_51;
          }

          v28 = v30;
        }

        else
        {
          SizeFallback = v13 + 2;
          v43 = (v13 + 2);
        }

        LODWORD(v10) = 0;
        v43 = sub_276B62314(a5, SizeFallback, v28, __p);
        v9 = 1;
        if (!v43)
        {
          goto LABEL_51;
        }

        goto LABEL_2;
      }

      v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, (8 * v10) | 2, TagFallback, a3, a4, a5);
      LODWORD(v10) = 0;
LABEL_15:
      v43 = v17;
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
            v43 = 0;
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

      v43 = (TagFallback + v23);
      if (v11)
      {
        v44 = &unk_2885C7980;
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
          sub_276B626C0(&v44, *(a5 + 88), 0, &v36, __p);
          v47 = *(a5 + 96);
          if (!(*(*v27 + 88))(v27, v36, &v44) || v46)
          {
LABEL_51:
            TagFallback = 0;
            goto LABEL_53;
          }
        }

        else
        {
          sub_276B280C4(&v44, __p, v24);
          if (a4->ptr_)
          {
            v26 = ((a4->ptr_ & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v26 = sub_276B61560(a4);
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

  v43 = TagFallback;
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
    v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, v15, TagFallback, a3, a4, a5);
    goto LABEL_15;
  }

  *(a5 + 80) = v15 - 1;
LABEL_53:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = *MEMORY[0x277D85DE8];
  return TagFallback;
}

void sub_276B5CFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4)
{
  v6 = &unk_2885C91E0;
  v5[0] = &unk_2885C7980;
  v5[1] = a4;
  return google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v5, &v6);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4, google::protobuf::io::CodedOutputStream *a5)
{
  v7[0] = &unk_2885C9228;
  v7[1] = a5;
  v6[0] = &unk_2885C7980;
  v6[1] = a4;
  return google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v6, v7);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSetLite(google::protobuf::internal::ExtensionSet *this, char **a2, google::protobuf::internal::ExtensionFinder *a3, google::protobuf::internal::FieldSkipper *a4)
{
  while (1)
  {
    while (1)
    {
      v8 = sub_276B5D188(a2);
      if (v8 != 11)
      {
        break;
      }

      if ((google::protobuf::internal::ExtensionSet::ParseMessageSetItemLite(this, a2, a3, a4, v9) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v8)
    {
      break;
    }

    if ((google::protobuf::internal::ExtensionSet::ParseField(this, v8, a2, a3, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_276B5D188(char **this)
{
  v2 = *this;
  if (*this >= this[1])
  {
    TagFallback = 0;
    goto LABEL_5;
  }

  TagFallback = *v2;
  if (*v2 < 0)
  {
LABEL_5:
    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
    goto LABEL_6;
  }

  *this = v2 + 1;
LABEL_6:
  *(this + 8) = TagFallback;
  return TagFallback;
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
            v11 = 0;
          }

          else
          {
            v11 = *v10;
            if ((*v10 & 0x80000000) == 0)
            {
              *a2 = v10 + 1;
              goto LABEL_7;
            }
          }

          LODWORD(v11) = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v11);
LABEL_7:
          if (v11 <= 25)
          {
            break;
          }

          if (v11 != 26)
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

        if (!v11)
        {
          goto LABEL_56;
        }

        if (v11 == 12)
        {
          v29 = 1;
          goto LABEL_57;
        }

        if (v11 != 16)
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

void sub_276B5D500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSet(google::protobuf::internal::ExtensionSet *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  google::protobuf::io::StringOutputStream::StringOutputStream(v12, a4);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v13, v12, 1);
  v11[0] = &unk_2885C9228;
  v11[1] = v13;
  v10[0] = &unk_2885C7980;
  v10[1] = a3;
  v7 = google::protobuf::internal::ExtensionSet::ParseMessageSetLite(a1, a2, v10, v11);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_276B5D624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::_InternalSerialize(google::protobuf::internal::ExtensionSet *this, int a2, signed int a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *a5)
{
  v7 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v17 = *(v7 + 1);
    v16 = v7 + 2;
    v15 = v17;
    if (v17)
    {
      v18 = v16;
      do
      {
        if (*(v15 + 32) >= a2)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 32) < a2));
      }

      while (v15);
      if (v18 != v16)
      {
        do
        {
          v19 = *(v18 + 8);
          if (v19 >= a3)
          {
            break;
          }

          a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v18 + 5, v19, a4, a5);
          v20 = v18[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v18[2];
              v22 = *v21 == v18;
              v18 = v21;
            }

            while (!v22);
          }

          v18 = v21;
        }

        while (v21 != v16);
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

    while (v7 != v9 && *v7 < a3)
    {
      a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v7 + 1, *v7, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(int **this, unsigned int a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
        if (8 * a2 > 0x7F)
        {
          *v5 = v8 | 0x82;
          v24 = v8 >> 7;
          if (v8 >> 14)
          {
            v9 = v5 + 2;
            do
            {
              *(v9 - 1) = v24 | 0x80;
              v25 = v24 >> 7;
              ++v9;
              v26 = v24 >> 14;
              v24 >>= 7;
            }

            while (v26);
            *(v9 - 1) = v25;
          }

          else
          {
            v5[1] = v24;
            v9 = v5 + 2;
          }
        }

        else
        {
          *v5 = v8 | 2;
          v9 = v5 + 1;
        }

        v27 = *(this + 3);
        if (v27 > 0x7F)
        {
          *v9 = v27 | 0x80;
          v28 = v27 >> 7;
          if (v27 >> 14)
          {
            v5 = v9 + 2;
            do
            {
              *(v5 - 1) = v28 | 0x80;
              v29 = v28 >> 7;
              ++v5;
              v30 = v28 >> 14;
              v28 >>= 7;
            }

            while (v30);
            *(v5 - 1) = v29;
          }

          else
          {
            v9[1] = v28;
            v5 = v9 + 2;
          }
        }

        else
        {
          *v9 = v27;
          v5 = v9 + 1;
        }

        switch(*(this + 8))
        {
          case 1:
            v290 = *this;
            if (**this >= 1)
            {
              v291 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v290 = *this;
                }

                *v5 = *(*(v290 + 1) + 8 * v291);
                v5 += 8;
                ++v291;
                v290 = *this;
              }

              while (v291 < **this);
            }

            break;
          case 2:
            v292 = *this;
            if (**this >= 1)
            {
              v293 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v292 = *this;
                }

                *v5 = *(*(v292 + 1) + 4 * v293);
                v5 += 4;
                ++v293;
                v292 = *this;
              }

              while (v293 < **this);
            }

            break;
          case 3:
            v274 = *this;
            if (**this >= 1)
            {
              v275 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v274 = *this;
                }

                v276 = *(*(v274 + 1) + 8 * v275);
                if (v276 > 0x7F)
                {
                  *v5 = v276 | 0x80;
                  v277 = v276 >> 7;
                  if (v276 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v277 | 0x80;
                      v278 = v277 >> 7;
                      ++v5;
                      v279 = v277 >> 14;
                      v277 >>= 7;
                    }

                    while (v279);
                    *(v5 - 1) = v278;
                  }

                  else
                  {
                    v5[1] = v277;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v276;
                }

                ++v275;
                v274 = *this;
              }

              while (v275 < **this);
            }

            break;
          case 4:
            v282 = *this;
            if (**this >= 1)
            {
              v283 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v282 = *this;
                }

                v284 = *(*(v282 + 1) + 8 * v283);
                if (v284 > 0x7F)
                {
                  *v5 = v284 | 0x80;
                  v285 = v284 >> 7;
                  if (v284 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v285 | 0x80;
                      v286 = v285 >> 7;
                      ++v5;
                      v287 = v285 >> 14;
                      v285 >>= 7;
                    }

                    while (v287);
                    *(v5 - 1) = v286;
                  }

                  else
                  {
                    v5[1] = v285;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v284;
                }

                ++v283;
                v282 = *this;
              }

              while (v283 < **this);
            }

            break;
          case 5:
            v262 = *this;
            if (**this >= 1)
            {
              v263 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v262 = *this;
                }

                v264 = *(*(v262 + 1) + 4 * v263);
                if (v264 > 0x7F)
                {
                  *v5 = v264 | 0x80;
                  v265 = v264 >> 7;
                  if (v264 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v265 | 0x80;
                      v266 = v265 >> 7;
                      ++v5;
                      v267 = v265 >> 14;
                      v265 >>= 7;
                    }

                    while (v267);
                    *(v5 - 1) = v266;
                  }

                  else
                  {
                    v5[1] = v265;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v264;
                }

                ++v263;
                v262 = *this;
              }

              while (v263 < **this);
            }

            break;
          case 6:
            v307 = *this;
            if (**this >= 1)
            {
              v308 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v307 = *this;
                }

                *v5 = *(*(v307 + 1) + 8 * v308);
                v5 += 8;
                ++v308;
                v307 = *this;
              }

              while (v308 < **this);
            }

            break;
          case 7:
            v309 = *this;
            if (**this >= 1)
            {
              v310 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v309 = *this;
                }

                *v5 = *(*(v309 + 1) + 4 * v310);
                v5 += 4;
                ++v310;
                v309 = *this;
              }

              while (v310 < **this);
            }

            break;
          case 8:
            v288 = *this;
            if (**this >= 1)
            {
              v289 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v288 = *this;
                }

                *v5++ = *(*(v288 + 1) + v289++);
                v288 = *this;
              }

              while (v289 < **this);
            }

            break;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            google::protobuf::internal::LogMessage::LogMessage(v315, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 1966);
            v31 = google::protobuf::internal::LogMessage::operator<<(v315, "Non-primitive types can't be packed.");
            google::protobuf::internal::LogFinisher::operator=(&v314, &v31->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v315[0].__r_.__value_.__l.__data_);
            break;
          case 0xD:
            v268 = *this;
            if (**this >= 1)
            {
              v269 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v268 = *this;
                }

                v270 = *(*(v268 + 1) + 4 * v269);
                if (v270 > 0x7F)
                {
                  *v5 = v270 | 0x80;
                  v271 = v270 >> 7;
                  if (v270 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v271 | 0x80;
                      v272 = v271 >> 7;
                      ++v5;
                      v273 = v271 >> 14;
                      v271 >>= 7;
                    }

                    while (v273);
                    *(v5 - 1) = v272;
                  }

                  else
                  {
                    v5[1] = v271;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v270;
                }

                ++v269;
                v268 = *this;
              }

              while (v269 < **this);
            }

            break;
          case 0xE:
            v301 = *this;
            if (**this >= 1)
            {
              v302 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v301 = *this;
                }

                v303 = *(*(v301 + 1) + 4 * v302);
                if (v303 > 0x7F)
                {
                  *v5 = v303 | 0x80;
                  v304 = v303 >> 7;
                  if (v303 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v304 | 0x80;
                      v305 = v304 >> 7;
                      ++v5;
                      v306 = v304 >> 14;
                      v304 >>= 7;
                    }

                    while (v306);
                    *(v5 - 1) = v305;
                  }

                  else
                  {
                    v5[1] = v304;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v303;
                }

                ++v302;
                v301 = *this;
              }

              while (v302 < **this);
            }

            break;
          case 0xF:
            v260 = *this;
            if (**this >= 1)
            {
              v261 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v260 = *this;
                }

                *v5 = *(*(v260 + 1) + 4 * v261);
                v5 += 4;
                ++v261;
                v260 = *this;
              }

              while (v261 < **this);
            }

            break;
          case 0x10:
            v280 = *this;
            if (**this >= 1)
            {
              v281 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v280 = *this;
                }

                *v5 = *(*(v280 + 1) + 8 * v281);
                v5 += 8;
                ++v281;
                v280 = *this;
              }

              while (v281 < **this);
            }

            break;
          case 0x11:
            v253 = *this;
            if (**this >= 1)
            {
              v254 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v253 = *this;
                }

                v255 = *(*(v253 + 1) + 4 * v254);
                v256 = (2 * v255) ^ (v255 >> 31);
                if (v256 > 0x7F)
                {
                  *v5 = v256 | 0x80;
                  v257 = v256 >> 7;
                  if (v256 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v257 | 0x80;
                      v258 = v257 >> 7;
                      ++v5;
                      v259 = v257 >> 14;
                      v257 >>= 7;
                    }

                    while (v259);
                    *(v5 - 1) = v258;
                  }

                  else
                  {
                    v5[1] = v257;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v256;
                }

                ++v254;
                v253 = *this;
              }

              while (v254 < **this);
            }

            break;
          case 0x12:
            v294 = *this;
            if (**this >= 1)
            {
              v295 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v294 = *this;
                }

                v296 = *(*(v294 + 1) + 8 * v295);
                v297 = (2 * v296) ^ (v296 >> 63);
                if (v297 > 0x7F)
                {
                  *v5 = v297 | 0x80;
                  v298 = v297 >> 7;
                  if (v297 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v298 | 0x80;
                      v299 = v298 >> 7;
                      ++v5;
                      v300 = v298 >> 14;
                      v298 >>= 7;
                    }

                    while (v300);
                    *(v5 - 1) = v299;
                  }

                  else
                  {
                    v5[1] = v298;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v297;
                }

                ++v295;
                v294 = *this;
              }

              while (v295 < **this);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      switch(*(this + 8))
      {
        case 1:
          v11 = *this;
          if (**this >= 1)
          {
            v12 = 0;
            v13 = 8 * a2;
            v14 = (8 * a2) | 0x81;
            v15 = (a2 >> 4) & 0x1FFFFFF;
            v16 = (8 * a2) | 1;
            v17 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v11 = *this;
              }

              v18 = *(*(v11 + 1) + 8 * v12);
              if (v13 > 0x7F)
              {
                *v5 = v14;
                if (v13 >= 0x4000)
                {
                  v19 = v5 + 2;
                  v20 = v15;
                  do
                  {
                    *(v19 - 1) = v20 | 0x80;
                    v21 = v20 >> 7;
                    v19 = (v19 + 1);
                    v22 = v20 >> 14;
                    v20 >>= 7;
                  }

                  while (v22);
                  *(v19 - 1) = v21;
                }

                else
                {
                  v5[1] = v17;
                  v19 = v5 + 2;
                }
              }

              else
              {
                *v5 = v16;
                v19 = v5 + 1;
              }

              *v19 = v18;
              v5 = (v19 + 1);
              ++v12;
              v11 = *this;
            }

            while (v12 < **this);
          }

          break;
        case 2:
          v167 = *this;
          if (**this >= 1)
          {
            v168 = 0;
            v169 = 8 * a2;
            v170 = (a2 >> 4) & 0x1FFFFFF;
            v171 = (8 * a2) | 5;
            v172 = (8 * a2) >> 7;
            v173 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v167 = *this;
              }

              v174 = *(*(v167 + 1) + 4 * v168);
              if (v169 > 0x7F)
              {
                *v5 = v173;
                if (v169 >= 0x4000)
                {
                  v175 = v5 + 2;
                  v176 = v170;
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
                  v5[1] = v172;
                  v175 = v5 + 2;
                }
              }

              else
              {
                *v5 = v171;
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
        case 3:
          v112 = *this;
          if (**this >= 1)
          {
            v113 = 0;
            v114 = 8 * a2;
            v115 = (8 * a2) | 0x80;
            v116 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v112 = *this;
              }

              v117 = *(*(v112 + 1) + 8 * v113);
              if (v114 > 0x7F)
              {
                *v5 = v115;
                if (v114 >= 0x4000)
                {
                  v118 = v5 + 2;
                  v119 = v116;
                  do
                  {
                    *(v118 - 1) = v119 | 0x80;
                    v120 = v119 >> 7;
                    ++v118;
                    v121 = v119 >> 14;
                    v119 >>= 7;
                  }

                  while (v121);
                  *(v118 - 1) = v120;
                }

                else
                {
                  v5[1] = v114 >> 7;
                  v118 = v5 + 2;
                }
              }

              else
              {
                v118 = v5 + 1;
                *v5 = v114;
              }

              if (v117 > 0x7F)
              {
                *v118 = v117 | 0x80;
                v122 = v117 >> 7;
                if (v117 >> 14)
                {
                  v5 = v118 + 2;
                  do
                  {
                    *(v5 - 1) = v122 | 0x80;
                    v123 = v122 >> 7;
                    ++v5;
                    v124 = v122 >> 14;
                    v122 >>= 7;
                  }

                  while (v124);
                  *(v5 - 1) = v123;
                }

                else
                {
                  v118[1] = v122;
                  v5 = v118 + 2;
                }
              }

              else
              {
                *v118 = v117;
                v5 = v118 + 1;
              }

              ++v113;
              v112 = *this;
            }

            while (v113 < **this);
          }

          break;
        case 4:
          v143 = *this;
          if (**this >= 1)
          {
            v144 = 0;
            v145 = 8 * a2;
            v146 = (8 * a2) | 0x80;
            v147 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v143 = *this;
              }

              v148 = *(*(v143 + 1) + 8 * v144);
              if (v145 > 0x7F)
              {
                *v5 = v146;
                if (v145 >= 0x4000)
                {
                  v149 = v5 + 2;
                  v150 = v147;
                  do
                  {
                    *(v149 - 1) = v150 | 0x80;
                    v151 = v150 >> 7;
                    ++v149;
                    v152 = v150 >> 14;
                    v150 >>= 7;
                  }

                  while (v152);
                  *(v149 - 1) = v151;
                }

                else
                {
                  v5[1] = v145 >> 7;
                  v149 = v5 + 2;
                }
              }

              else
              {
                v149 = v5 + 1;
                *v5 = v145;
              }

              if (v148 > 0x7F)
              {
                *v149 = v148 | 0x80;
                v153 = v148 >> 7;
                if (v148 >> 14)
                {
                  v5 = v149 + 2;
                  do
                  {
                    *(v5 - 1) = v153 | 0x80;
                    v154 = v153 >> 7;
                    ++v5;
                    v155 = v153 >> 14;
                    v153 >>= 7;
                  }

                  while (v155);
                  *(v5 - 1) = v154;
                }

                else
                {
                  v149[1] = v153;
                  v5 = v149 + 2;
                }
              }

              else
              {
                *v149 = v148;
                v5 = v149 + 1;
              }

              ++v144;
              v143 = *this;
            }

            while (v144 < **this);
          }

          break;
        case 5:
          v65 = *this;
          if (**this >= 1)
          {
            v66 = 0;
            v67 = 8 * a2;
            v68 = (8 * a2) | 0x80;
            v69 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v65 = *this;
              }

              v70 = *(*(v65 + 1) + 4 * v66);
              if (v67 > 0x7F)
              {
                *v5 = v68;
                if (v67 >= 0x4000)
                {
                  v71 = v5 + 2;
                  v72 = v69;
                  do
                  {
                    *(v71 - 1) = v72 | 0x80;
                    v73 = v72 >> 7;
                    ++v71;
                    v74 = v72 >> 14;
                    v72 >>= 7;
                  }

                  while (v74);
                  *(v71 - 1) = v73;
                }

                else
                {
                  v5[1] = v67 >> 7;
                  v71 = v5 + 2;
                }
              }

              else
              {
                v71 = v5 + 1;
                *v5 = v67;
              }

              if (v70 > 0x7F)
              {
                *v71 = v70 | 0x80;
                v75 = v70 >> 7;
                if (v70 >> 14)
                {
                  v5 = v71 + 2;
                  do
                  {
                    *(v5 - 1) = v75 | 0x80;
                    v76 = v75 >> 7;
                    ++v5;
                    v77 = v75 >> 14;
                    v75 >>= 7;
                  }

                  while (v77);
                  *(v5 - 1) = v76;
                }

                else
                {
                  v71[1] = v75;
                  v5 = v71 + 2;
                }
              }

              else
              {
                *v71 = v70;
                v5 = v71 + 1;
              }

              ++v66;
              v65 = *this;
            }

            while (v66 < **this);
          }

          break;
        case 6:
          v197 = *this;
          if (**this >= 1)
          {
            v198 = 0;
            v199 = 8 * a2;
            v200 = (8 * a2) | 0x81;
            v201 = (a2 >> 4) & 0x1FFFFFF;
            v202 = (8 * a2) | 1;
            v203 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v197 = *this;
              }

              v204 = *(*(v197 + 1) + 8 * v198);
              if (v199 > 0x7F)
              {
                *v5 = v200;
                if (v199 >= 0x4000)
                {
                  v205 = v5 + 2;
                  v206 = v201;
                  do
                  {
                    *(v205 - 1) = v206 | 0x80;
                    v207 = v206 >> 7;
                    v205 = (v205 + 1);
                    v208 = v206 >> 14;
                    v206 >>= 7;
                  }

                  while (v208);
                  *(v205 - 1) = v207;
                }

                else
                {
                  v5[1] = v203;
                  v205 = v5 + 2;
                }
              }

              else
              {
                *v5 = v202;
                v205 = v5 + 1;
              }

              *v205 = v204;
              v5 = (v205 + 1);
              ++v198;
              v197 = *this;
            }

            while (v198 < **this);
          }

          break;
        case 7:
          v222 = *this;
          if (**this >= 1)
          {
            v223 = 0;
            v224 = 8 * a2;
            v225 = (a2 >> 4) & 0x1FFFFFF;
            v226 = (8 * a2) | 5;
            v227 = (8 * a2) >> 7;
            v228 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v222 = *this;
              }

              v229 = *(*(v222 + 1) + 4 * v223);
              if (v224 > 0x7F)
              {
                *v5 = v228;
                if (v224 >= 0x4000)
                {
                  v230 = v5 + 2;
                  v231 = v225;
                  do
                  {
                    *(v230 - 1) = v231 | 0x80;
                    v232 = v231 >> 7;
                    v230 = (v230 + 1);
                    v233 = v231 >> 14;
                    v231 >>= 7;
                  }

                  while (v233);
                  *(v230 - 1) = v232;
                }

                else
                {
                  v5[1] = v227;
                  v230 = v5 + 2;
                }
              }

              else
              {
                *v5 = v226;
                v230 = v5 + 1;
              }

              *v230 = v229;
              v5 = (v230 + 1);
              ++v223;
              v222 = *this;
            }

            while (v223 < **this);
          }

          break;
        case 8:
          v156 = *this;
          if (**this >= 1)
          {
            v157 = 0;
            v158 = 8 * a2;
            v159 = (8 * a2) | 0x80;
            v160 = (a2 >> 4) & 0x1FFFFFF;
            v161 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v156 = *this;
              }

              v162 = *(*(v156 + 1) + v157);
              if (v158 > 0x7F)
              {
                *v5 = v159;
                if (v158 >= 0x4000)
                {
                  v163 = v5 + 2;
                  v164 = v160;
                  do
                  {
                    *(v163 - 1) = v164 | 0x80;
                    v165 = v164 >> 7;
                    ++v163;
                    v166 = v164 >> 14;
                    v164 >>= 7;
                  }

                  while (v166);
                  *(v163 - 1) = v165;
                }

                else
                {
                  v5[1] = v161;
                  v163 = v5 + 2;
                }
              }

              else
              {
                *v5 = v158;
                v163 = v5 + 1;
              }

              *v163 = v162;
              v5 = v163 + 1;
              ++v157;
              v156 = *this;
            }

            while (v157 < **this);
          }

          break;
        case 9:
          v251 = *this;
          if ((*this)[2] >= 1)
          {
            v252 = 0;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v251 = *this;
              }

              v5 = sub_276B32608(a4, a2, *(*(v251 + 2) + 8 * v252++ + 8), v5);
              v251 = *this;
            }

            while (v252 < (*this)[2]);
          }

          break;
        case 0xA:
          v95 = *this;
          if ((*this)[2] >= 1)
          {
            v96 = 0;
            v97 = 8 * a2;
            v313 = (8 * a2) | 0x83;
            v98 = (a2 >> 4) & 0x1FFFFFF;
            v99 = (8 * a2) | 3;
            v100 = (8 * a2) | 4;
            v101 = (8 * a2) >> 7;
            v102 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v95 = *this;
              }

              v103 = *(*(v95 + 2) + 8 * v96 + 8);
              if (v97 > 0x7F)
              {
                *v5 = v313;
                if (v97 >= 0x4000)
                {
                  v104 = v5 + 2;
                  v105 = v98;
                  do
                  {
                    *(v104 - 1) = v105 | 0x80;
                    v106 = v105 >> 7;
                    ++v104;
                    v107 = v105 >> 14;
                    v105 >>= 7;
                  }

                  while (v107);
                  *(v104 - 1) = v106;
                }

                else
                {
                  v5[1] = v101;
                  v104 = v5 + 2;
                }
              }

              else
              {
                v104 = v5 + 1;
                *v5 = v99;
              }

              v108 = (*(*v103 + 96))(v103, v104, a4);
              if (*a4 <= v108)
              {
                v108 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v108);
              }

              if (v97 > 0x7F)
              {
                *v108 = v102;
                if (v97 >= 0x4000)
                {
                  v5 = v108 + 2;
                  v109 = v98;
                  do
                  {
                    *(v5 - 1) = v109 | 0x80;
                    v110 = v109 >> 7;
                    ++v5;
                    v111 = v109 >> 14;
                    v109 >>= 7;
                  }

                  while (v111);
                  *(v5 - 1) = v110;
                }

                else
                {
                  v108[1] = v101;
                  v5 = v108 + 2;
                }
              }

              else
              {
                v5 = v108 + 1;
                *v108 = v100;
              }

              ++v96;
              v95 = *this;
            }

            while (v96 < (*this)[2]);
          }

          break;
        case 0xB:
          v234 = *this;
          if ((*this)[2] >= 1)
          {
            v235 = 0;
            v236 = 8 * a2;
            v237 = (a2 >> 4) & 0x1FFFFFF;
            v238 = (8 * a2) | 2;
            v239 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v234 = *this;
              }

              v240 = *(*(v234 + 2) + 8 * v235 + 8);
              if (v236 > 0x7F)
              {
                *v5 = v239;
                if (v236 >= 0x4000)
                {
                  v241 = v5 + 2;
                  v242 = v237;
                  do
                  {
                    *(v241 - 1) = v242 | 0x80;
                    v243 = v242 >> 7;
                    ++v241;
                    v244 = v242 >> 14;
                    v242 >>= 7;
                  }

                  while (v244);
                  *(v241 - 1) = v243;
                }

                else
                {
                  v5[1] = v236 >> 7;
                  v241 = v5 + 2;
                }
              }

              else
              {
                v241 = v5 + 1;
                *v5 = v238;
              }

              v245 = (*(*v240 + 80))(v240);
              if (v245 > 0x7F)
              {
                *v241 = v245 | 0x80;
                v247 = v245 >> 7;
                if (v245 >> 14)
                {
                  v246 = v241 + 2;
                  do
                  {
                    *(v246 - 1) = v247 | 0x80;
                    v248 = v247 >> 7;
                    ++v246;
                    v249 = v247 >> 14;
                    v247 >>= 7;
                  }

                  while (v249);
                  *(v246 - 1) = v248;
                }

                else
                {
                  v241[1] = v247;
                  v246 = v241 + 2;
                }
              }

              else
              {
                *v241 = v245;
                v246 = v241 + 1;
              }

              v5 = (*(*v240 + 96))(v240, v246, a4);
              ++v235;
              v234 = *this;
            }

            while (v235 < (*this)[2]);
          }

          break;
        case 0xC:
          v62 = *this;
          if ((*this)[2] >= 1)
          {
            v63 = 0;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v62 = *this;
              }

              v5 = sub_276B32608(a4, a2, *(*(v62 + 2) + 8 * v63++ + 8), v5);
              v62 = *this;
            }

            while (v63 < (*this)[2]);
          }

          break;
        case 0xD:
          v78 = *this;
          if (**this >= 1)
          {
            v79 = 0;
            v80 = 8 * a2;
            v81 = (8 * a2) | 0x80;
            v82 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v78 = *this;
              }

              v83 = *(*(v78 + 1) + 4 * v79);
              if (v80 > 0x7F)
              {
                *v5 = v81;
                if (v80 >= 0x4000)
                {
                  v84 = v5 + 2;
                  v85 = v82;
                  do
                  {
                    *(v84 - 1) = v85 | 0x80;
                    v86 = v85 >> 7;
                    ++v84;
                    v87 = v85 >> 14;
                    v85 >>= 7;
                  }

                  while (v87);
                  *(v84 - 1) = v86;
                }

                else
                {
                  v5[1] = v80 >> 7;
                  v84 = v5 + 2;
                }
              }

              else
              {
                v84 = v5 + 1;
                *v5 = v80;
              }

              if (v83 > 0x7F)
              {
                *v84 = v83 | 0x80;
                v88 = v83 >> 7;
                if (v83 >> 14)
                {
                  v5 = v84 + 2;
                  do
                  {
                    *(v5 - 1) = v88 | 0x80;
                    v89 = v88 >> 7;
                    ++v5;
                    v90 = v88 >> 14;
                    v88 >>= 7;
                  }

                  while (v90);
                  *(v5 - 1) = v89;
                }

                else
                {
                  v84[1] = v88;
                  v5 = v84 + 2;
                }
              }

              else
              {
                *v84 = v83;
                v5 = v84 + 1;
              }

              ++v79;
              v78 = *this;
            }

            while (v79 < **this);
          }

          break;
        case 0xE:
          v209 = *this;
          if (**this >= 1)
          {
            v210 = 0;
            v211 = 8 * a2;
            v212 = (8 * a2) | 0x80;
            v213 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v209 = *this;
              }

              v214 = *(*(v209 + 1) + 4 * v210);
              if (v211 > 0x7F)
              {
                *v5 = v212;
                if (v211 >= 0x4000)
                {
                  v215 = v5 + 2;
                  v216 = v213;
                  do
                  {
                    *(v215 - 1) = v216 | 0x80;
                    v217 = v216 >> 7;
                    ++v215;
                    v218 = v216 >> 14;
                    v216 >>= 7;
                  }

                  while (v218);
                  *(v215 - 1) = v217;
                }

                else
                {
                  v5[1] = v211 >> 7;
                  v215 = v5 + 2;
                }
              }

              else
              {
                v215 = v5 + 1;
                *v5 = v211;
              }

              if (v214 > 0x7F)
              {
                *v215 = v214 | 0x80;
                v219 = v214 >> 7;
                if (v214 >> 14)
                {
                  v5 = v215 + 2;
                  do
                  {
                    *(v5 - 1) = v219 | 0x80;
                    v220 = v219 >> 7;
                    ++v5;
                    v221 = v219 >> 14;
                    v219 >>= 7;
                  }

                  while (v221);
                  *(v5 - 1) = v220;
                }

                else
                {
                  v215[1] = v219;
                  v5 = v215 + 2;
                }
              }

              else
              {
                *v215 = v214;
                v5 = v215 + 1;
              }

              ++v210;
              v209 = *this;
            }

            while (v210 < **this);
          }

          break;
        case 0xF:
          v47 = *this;
          if (**this >= 1)
          {
            v48 = 0;
            v49 = 8 * a2;
            v50 = (a2 >> 4) & 0x1FFFFFF;
            v51 = (8 * a2) | 5;
            v52 = (8 * a2) >> 7;
            v53 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v47 = *this;
              }

              v54 = *(*(v47 + 1) + 4 * v48);
              if (v49 > 0x7F)
              {
                *v5 = v53;
                if (v49 >= 0x4000)
                {
                  v55 = v5 + 2;
                  v56 = v50;
                  do
                  {
                    *(v55 - 1) = v56 | 0x80;
                    v57 = v56 >> 7;
                    v55 = (v55 + 1);
                    v58 = v56 >> 14;
                    v56 >>= 7;
                  }

                  while (v58);
                  *(v55 - 1) = v57;
                }

                else
                {
                  v5[1] = v52;
                  v55 = v5 + 2;
                }
              }

              else
              {
                *v5 = v51;
                v55 = v5 + 1;
              }

              *v55 = v54;
              v5 = (v55 + 1);
              ++v48;
              v47 = *this;
            }

            while (v48 < **this);
          }

          break;
        case 0x10:
          v128 = *this;
          if (**this >= 1)
          {
            v129 = 0;
            v130 = 8 * a2;
            v131 = (8 * a2) | 0x81;
            v132 = (a2 >> 4) & 0x1FFFFFF;
            v133 = (8 * a2) | 1;
            v134 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v128 = *this;
              }

              v135 = *(*(v128 + 1) + 8 * v129);
              if (v130 > 0x7F)
              {
                *v5 = v131;
                if (v130 >= 0x4000)
                {
                  v136 = v5 + 2;
                  v137 = v132;
                  do
                  {
                    *(v136 - 1) = v137 | 0x80;
                    v138 = v137 >> 7;
                    v136 = (v136 + 1);
                    v139 = v137 >> 14;
                    v137 >>= 7;
                  }

                  while (v139);
                  *(v136 - 1) = v138;
                }

                else
                {
                  v5[1] = v134;
                  v136 = v5 + 2;
                }
              }

              else
              {
                *v5 = v133;
                v136 = v5 + 1;
              }

              *v136 = v135;
              v5 = (v136 + 1);
              ++v129;
              v128 = *this;
            }

            while (v129 < **this);
          }

          break;
        case 0x11:
          v32 = *this;
          if (**this >= 1)
          {
            v33 = 0;
            v34 = 8 * a2;
            v35 = (8 * a2) | 0x80;
            v36 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v32 = *this;
              }

              v37 = *(*(v32 + 1) + 4 * v33);
              if (v34 > 0x7F)
              {
                *v5 = v35;
                if (v34 >= 0x4000)
                {
                  v38 = v5 + 2;
                  v39 = v36;
                  do
                  {
                    *(v38 - 1) = v39 | 0x80;
                    v40 = v39 >> 7;
                    ++v38;
                    v41 = v39 >> 14;
                    v39 >>= 7;
                  }

                  while (v41);
                  *(v38 - 1) = v40;
                }

                else
                {
                  v5[1] = v34 >> 7;
                  v38 = v5 + 2;
                }
              }

              else
              {
                v38 = v5 + 1;
                *v5 = v34;
              }

              v42 = (2 * v37) ^ (v37 >> 31);
              if (v42 > 0x7F)
              {
                *v38 = v42 | 0x80;
                v43 = v42 >> 7;
                if (v42 >> 14)
                {
                  v5 = v38 + 2;
                  do
                  {
                    *(v5 - 1) = v43 | 0x80;
                    v44 = v43 >> 7;
                    ++v5;
                    v45 = v43 >> 14;
                    v43 >>= 7;
                  }

                  while (v45);
                  *(v5 - 1) = v44;
                }

                else
                {
                  v38[1] = v43;
                  v5 = v38 + 2;
                }
              }

              else
              {
                *v38 = v42;
                v5 = v38 + 1;
              }

              ++v33;
              v32 = *this;
            }

            while (v33 < **this);
          }

          break;
        case 0x12:
          v182 = *this;
          if (**this >= 1)
          {
            v183 = 0;
            v184 = 8 * a2;
            v185 = (8 * a2) | 0x80;
            v186 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v182 = *this;
              }

              v187 = *(*(v182 + 1) + 8 * v183);
              if (v184 > 0x7F)
              {
                *v5 = v185;
                if (v184 >= 0x4000)
                {
                  v188 = v5 + 2;
                  v189 = v186;
                  do
                  {
                    *(v188 - 1) = v189 | 0x80;
                    v190 = v189 >> 7;
                    ++v188;
                    v191 = v189 >> 14;
                    v189 >>= 7;
                  }

                  while (v191);
                  *(v188 - 1) = v190;
                }

                else
                {
                  v5[1] = v184 >> 7;
                  v188 = v5 + 2;
                }
              }

              else
              {
                v188 = v5 + 1;
                *v5 = v184;
              }

              v192 = (2 * v187) ^ (v187 >> 63);
              if (v192 > 0x7F)
              {
                *v188 = v192 | 0x80;
                v193 = v192 >> 7;
                if (v192 >> 14)
                {
                  v5 = v188 + 2;
                  do
                  {
                    *(v5 - 1) = v193 | 0x80;
                    v194 = v193 >> 7;
                    ++v5;
                    v195 = v193 >> 14;
                    v193 >>= 7;
                  }

                  while (v195);
                  *(v5 - 1) = v194;
                }

                else
                {
                  v188[1] = v193;
                  v5 = v188 + 2;
                }
              }

              else
              {
                *v188 = v192;
                v5 = v188 + 1;
              }

              ++v183;
              v182 = *this;
            }

            while (v183 < **this);
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

  switch(*(this + 8))
  {
    case 1:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v180 = *this;

      return sub_276B60D64(a2, v5, v180);
    case 2:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v181 = *this;

      return sub_276B60CF4(a2, v5, v181);
    case 3:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v125 = *this;
      v126 = a2;
      v127 = v5;

      return sub_276B6093C(v126, v125, v127);
    case 4:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v125 = *this;
      v126 = a2;
      v127 = v5;

      return sub_276B6093C(v126, v125, v127);
    case 5:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v92 = *this;
      v93 = a2;
      v94 = v5;

      goto LABEL_148;
    case 6:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v140 = *this;
      v141 = a2;
      v142 = v5;

      goto LABEL_213;
    case 7:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v59 = *this;
      v60 = a2;
      v61 = v5;

      goto LABEL_86;
    case 8:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v179 = *this;

      return sub_276B60DCC(a2, v179, v5);
    case 9:
    case 0xC:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v23 = *this;

      return sub_276B32608(a4, a2, v23, v5);
    case 0xA:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v250 = *this;

      return sub_276B60E30(a2, v250, v5, a4);
    case 0xB:
      if ((*(this + 10) & 0x10) != 0)
      {
        v311 = *this;
        v312 = *(**this + 136);

        return v312();
      }

      else
      {
        if (*a4 <= a3)
        {
          v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v64 = *this;

        return sub_276B60F60(a2, v64, v5, a4);
      }

    case 0xD:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v91 = *this;

      return sub_276B609F0(a2, v91, v5);
    case 0xE:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v92 = *this;
      v93 = a2;
      v94 = v5;

LABEL_148:
      result = sub_276B60884(v93, v92, v94);
      break;
    case 0xF:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v59 = *this;
      v60 = a2;
      v61 = v5;

LABEL_86:
      result = sub_276B60C1C(v60, v59, v61);
      break;
    case 0x10:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v140 = *this;
      v141 = a2;
      v142 = v5;

LABEL_213:
      result = sub_276B60C8C(v141, v140, v142);
      break;
    case 0x11:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v46 = *this;

      result = sub_276B60AA4(a2, v46, v5);
      break;
    case 0x12:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v196 = *this;

      result = sub_276B60B60(a2, v196, v5);
      break;
    default:
      return v5;
  }

  return result;
}

void sub_276B5F83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    sub_276B627E8(*v5, v5 + 1, &v10, a3);
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
    sub_276B62880(*v1, v1 + 1, &v7);
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

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(uint64_t **this, int a2)
{
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v8 = 8 * **this;
          goto LABEL_110;
        case 2:
        case 7:
        case 0xF:
          v8 = 4 * **this;
          goto LABEL_110;
        case 3:
          v71 = **this;
          if (v71 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v72 = (*this)[1];
          do
          {
            v73 = *v72++;
            v8 += (9 * (__clz(v73 | 1) ^ 0x3F) + 73) >> 6;
            --v71;
          }

          while (v71);
          goto LABEL_110;
        case 4:
          v74 = **this;
          if (v74 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v75 = (*this)[1];
          do
          {
            v76 = *v75++;
            v8 += (9 * (__clz(v76 | 1) ^ 0x3F) + 73) >> 6;
            --v74;
          }

          while (v74);
          goto LABEL_110;
        case 5:
          v54 = **this;
          if (v54 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v55 = (*this)[1];
          do
          {
            v57 = *v55++;
            v56 = v57;
            if (v57 < 0)
            {
              v58 = 10;
            }

            else
            {
              v58 = (9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6;
            }

            v8 += v58;
            --v54;
          }

          while (v54);
          goto LABEL_110;
        case 8:
          v8 = **this;
          goto LABEL_110;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v90, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 1599);
          v3 = google::protobuf::internal::LogMessage::operator<<(v90, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v89, &v3->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v90[0].__r_.__value_.__l.__data_);
          goto LABEL_5;
        case 0xD:
          v20 = **this;
          if (v20 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v21 = (*this)[1];
          do
          {
            v22 = *v21++;
            v8 += (9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6;
            --v20;
          }

          while (v20);
          goto LABEL_110;
        case 0xE:
          v39 = **this;
          if (v39 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v40 = (*this)[1];
          do
          {
            v42 = *v40++;
            v41 = v42;
            if (v42 < 0)
            {
              v43 = 10;
            }

            else
            {
              v43 = (9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6;
            }

            v8 += v43;
            --v39;
          }

          while (v39);
          goto LABEL_110;
        case 0x11:
          v13 = **this;
          if (v13 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v14 = (*this)[1];
          do
          {
            v15 = *v14++;
            v8 += (9 * (__clz((2 * v15) ^ (v15 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            --v13;
          }

          while (v13);
          goto LABEL_110;
        case 0x12:
          v59 = **this;
          if (v59 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v60 = (*this)[1];
          do
          {
            v61 = *v60++;
            v8 += (9 * (__clz((2 * v61) ^ (v61 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            --v59;
          }

          while (v59);
LABEL_110:
          *(this + 3) = v8;
          v77 = v8 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
          if (v8)
          {
            v4 = v77;
          }

          else
          {
            v4 = 0;
          }

          break;
        default:
LABEL_5:
          v4 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      v6 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v7 = v6 + 8;
          goto LABEL_13;
        case 2:
        case 7:
        case 0xF:
          v7 = v6 + 4;
LABEL_13:
          v4 = v7 * **this;
          break;
        case 3:
          v65 = **this;
          v4 = v6 * v65;
          if (v65 >= 1)
          {
            v66 = (*this)[1];
            do
            {
              v67 = *v66++;
              v4 += (9 * (__clz(v67 | 1) ^ 0x3F) + 73) >> 6;
              --v65;
            }

            while (v65);
          }

          break;
        case 4:
          v68 = **this;
          v4 = v6 * v68;
          if (v68 >= 1)
          {
            v69 = (*this)[1];
            do
            {
              v70 = *v69++;
              v4 += (9 * (__clz(v70 | 1) ^ 0x3F) + 73) >> 6;
              --v68;
            }

            while (v68);
          }

          break;
        case 5:
          v49 = **this;
          v4 = v6 * v49;
          if (v49 >= 1)
          {
            v50 = (*this)[1];
            do
            {
              v52 = *v50++;
              v51 = v52;
              if (v52 < 0)
              {
                v53 = 10;
              }

              else
              {
                v53 = (9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v53;
              --v49;
            }

            while (v49);
          }

          break;
        case 8:
          v4 = **this + **this * v6;
          break;
        case 9:
          v84 = *(*this + 2);
          v4 = v6 * v84;
          if (v84 >= 1)
          {
            v85 = ((*this)[2] + 8);
            do
            {
              v86 = *v85++;
              v87 = *(v86 + 23);
              v88 = *(v86 + 8);
              if ((v87 & 0x80u) == 0)
              {
                v88 = v87;
              }

              v4 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6);
              --v84;
            }

            while (v84);
          }

          break;
        case 0xA:
          v27 = *this;
          v28 = *(*this + 2);
          v4 = v6 * v28;
          if (v28 >= 1)
          {
            v29 = 0;
            do
            {
              v30 = *(*(v27 + 2) + 8 * v29 + 8);
              v4 += (*(*v30 + 72))(v30);
              ++v29;
              v27 = *this;
            }

            while (v29 < *(*this + 2));
          }

          break;
        case 0xB:
          v34 = *this;
          v35 = *(*this + 2);
          v4 = v6 * v35;
          if (v35 >= 1)
          {
            v36 = 0;
            do
            {
              v37 = *(*(v34 + 2) + 8 * v36 + 8);
              v38 = (*(*v37 + 72))(v37);
              v4 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
              ++v36;
              v34 = *this;
            }

            while (v36 < *(*this + 2));
          }

          break;
        case 0xC:
          v79 = *(*this + 2);
          v4 = v6 * v79;
          if (v79 >= 1)
          {
            v80 = ((*this)[2] + 8);
            do
            {
              v81 = *v80++;
              v82 = *(v81 + 23);
              v83 = *(v81 + 8);
              if ((v82 & 0x80u) == 0)
              {
                v83 = v82;
              }

              v4 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6);
              --v79;
            }

            while (v79);
          }

          break;
        case 0xD:
          v23 = **this;
          v4 = v6 * v23;
          if (v23 >= 1)
          {
            v24 = (*this)[1];
            do
            {
              v25 = *v24++;
              v4 += (9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6;
              --v23;
            }

            while (v23);
          }

          break;
        case 0xE:
          v44 = **this;
          v4 = v6 * v44;
          if (v44 >= 1)
          {
            v45 = (*this)[1];
            do
            {
              v47 = *v45++;
              v46 = v47;
              if (v47 < 0)
              {
                v48 = 10;
              }

              else
              {
                v48 = (9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v48;
              --v44;
            }

            while (v44);
          }

          break;
        case 0x11:
          v16 = **this;
          v4 = v6 * v16;
          if (v16 >= 1)
          {
            v17 = (*this)[1];
            do
            {
              v18 = *v17++;
              v4 += (9 * (__clz((2 * v18) ^ (v18 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              --v16;
            }

            while (v16);
          }

          break;
        case 0x12:
          v62 = **this;
          v4 = v6 * v62;
          if (v62 >= 1)
          {
            v63 = (*this)[1];
            do
            {
              v64 = *v63++;
              v4 += (9 * (__clz((2 * v64) ^ (v64 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              --v62;
            }

            while (v62);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else
  {
    v5 = *(this + 10);
    if (v5)
    {
      return 0;
    }

    else
    {
      v4 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v4 += 8;
          return v4;
        case 2:
        case 7:
        case 0xF:
          v4 += 4;
          return v4;
        case 3:
        case 4:
          v9 = *this;
          goto LABEL_94;
        case 5:
        case 0xE:
          v10 = (9 * (__clz(*this | 1) ^ 0x1F) + 73) >> 6;
          if (*this >= 0)
          {
            v11 = v10;
          }

          else
          {
            v11 = 10;
          }

          v4 += v11;
          return v4;
        case 8:
          return ++v4;
        case 9:
        case 0xC:
          v12 = (*this)[1];
          if (*(*this + 23) >= 0)
          {
            v12 = *(*this + 23);
          }

          v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
          return v4;
        case 0xA:
          v26 = *this;
          v4 += (*(**this + 72))();
          return v4;
        case 0xB:
          v31 = *this;
          v32 = **this;
          if ((v5 & 0x10) != 0)
          {
            v33 = (*(v32 + 88))();
          }

          else
          {
            v33 = (*(v32 + 72))();
          }

          v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
          return v4;
        case 0xD:
          v19 = *this;
          goto LABEL_70;
        case 0x11:
          v19 = (2 * *this) ^ (*this >> 31);
LABEL_70:
          v4 += (9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6;
          break;
        case 0x12:
          v9 = (2 * *this) ^ (*this >> 63);
LABEL_94:
          v4 += (9 * (__clz(v9 | 1) ^ 0x3F) + 73) >> 6;
          break;
        default:
          return v4;
      }
    }
  }

  return v4;
}

void sub_276B60394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *google::protobuf::internal::ExtensionSet::Extension::Free(_BYTE *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
  if (this[9] == 1)
  {
    if (v1 > 5)
    {
      if (v1 > 8)
      {
        if (v1 == 9)
        {
          if (*this)
          {
            sub_276B4A5CC(*this);
            goto LABEL_27;
          }
        }

        else if (v1 == 10 && *this)
        {
          sub_276B55D34(*this);
          goto LABEL_27;
        }

        return this;
      }
    }

    else if (v1 <= 2 && v1 != 1 && v1 != 2)
    {
      return this;
    }

    v5 = *this;
    if (*this)
    {
      if (*(v5 + 4) >= 1)
      {
        v6 = *(v5 + 8);
        v8 = *(v6 - 8);
        v7 = (v6 - 8);
        if (!v8)
        {
          operator delete(v7);
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v1 == 10)
    {
      v3 = this[10];
      this = *this;
      if ((v3 & 0x10) != 0)
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      else
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      return v4();
    }

    if (v1 == 9)
    {
      v2 = *this;
      if (*this)
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

LABEL_27:

        JUMPOUT(0x277C9F670);
      }
    }
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 2);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(this + 2);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::RepeatedPrimitiveDefaults::default_instance(google::protobuf::internal::RepeatedPrimitiveDefaults *this)
{
  if ((atomic_load_explicit(&qword_280A52F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A52F40))
  {
    operator new();
  }

  return qword_280A52F38;
}

uint64_t google::protobuf::internal::RepeatedStringTypeTraits::GetDefaultRepeatedField(google::protobuf::internal::RepeatedStringTypeTraits *this)
{
  if ((atomic_load_explicit(&qword_280A52F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A52F50))
  {
    operator new();
  }

  return qword_280A52F48;
}

_BYTE *sub_276B60884(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
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
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_276B6093C(int a1, unint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
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
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_276B609F0(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
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
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_276B60AA4(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
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
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_BYTE *sub_276B60B60(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 63);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
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
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_DWORD *sub_276B60C1C(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 5;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

void *sub_276B60C8C(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 1;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

float *sub_276B60CF4(int a1, _BYTE *a2, float a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 5;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

double *sub_276B60D64(int a1, _BYTE *a2, double a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 1;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

_BYTE *sub_276B60DCC(int a1, char a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

unsigned __int8 *sub_276B60E30(int a1, uint64_t a2, _BYTE *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = 8 * a1;
  v6 = (8 * a1) >> 7;
  v7 = (8 * a1) >> 14;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v5 | 0x83;
    if (v7)
    {
      v8 = a3 + 2;
      v9 = v5 >> 7;
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
      a3[1] = v6;
      v8 = a3 + 2;
    }
  }

  else
  {
    *a3 = v5 | 3;
    v8 = a3 + 1;
  }

  v12 = (*(*a2 + 96))(a2, v8, a4);
  if (*a4 <= v12)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v12);
  }

  if (v5 > 0x7F)
  {
    *v12 = v5 | 0x84;
    if (v7)
    {
      v13 = v12 + 2;
      do
      {
        *(v13 - 1) = v6 | 0x80;
        v14 = v6 >> 7;
        ++v13;
        v15 = v6 >> 14;
        v6 >>= 7;
      }

      while (v15);
      *(v13 - 1) = v14;
    }

    else
    {
      v12[1] = v6;
      return v12 + 2;
    }
  }

  else
  {
    *v12 = v5 | 4;
    return v12 + 1;
  }

  return v13;
}

uint64_t sub_276B60F60(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v6 | 0x82;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      v7 = a3 + 2;
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
      a3[1] = v8;
      v7 = a3 + 2;
    }
  }

  else
  {
    *a3 = v6 | 2;
    v7 = a3 + 1;
  }

  v11 = (*(*a2 + 80))(a2);
  if (v11 > 0x7F)
  {
    *v7 = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v7 + 2;
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
      v7[1] = v13;
      v12 = v7 + 2;
    }
  }

  else
  {
    *v7 = v11;
    v12 = v7 + 1;
  }

  v16 = *(*a2 + 96);

  return v16(a2, v12, a4);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray(google::protobuf::internal::ExtensionSet::Extension *this, unsigned int a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a3;
  if (*(this + 8) == 11 && *(this + 9) != 1)
  {
    if ((*(this + 10) & 1) == 0)
    {
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      *v5 = 4107;
      if (a2 > 0x7F)
      {
        v5[2] = a2 | 0x80;
        v11 = a2 >> 7;
        if (a2 >> 14)
        {
          v10 = v5 + 4;
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
          v5[3] = v11;
          v10 = v5 + 4;
        }
      }

      else
      {
        v5[2] = a2;
        v10 = v5 + 3;
      }

      v14 = *this;
      if ((*(this + 10) & 0x10) != 0)
      {
        v17 = (*(*v14 + 136))(*this, 3, v10, a4);
      }

      else
      {
        *v10 = 26;
        v15 = (*(*v14 + 80))(v14);
        if (v15 > 0x7F)
        {
          v10[1] = v15 | 0x80;
          v18 = v15 >> 7;
          if (v15 >> 14)
          {
            v16 = v10 + 3;
            do
            {
              *(v16 - 1) = v18 | 0x80;
              v19 = v18 >> 7;
              ++v16;
              v20 = v18 >> 14;
              v18 >>= 7;
            }

            while (v20);
            *(v16 - 1) = v19;
          }

          else
          {
            v10[2] = v18;
            v16 = v10 + 3;
          }
        }

        else
        {
          v10[1] = v15;
          v16 = v10 + 2;
        }

        v17 = (*(*v14 + 96))(v14, v16, a4);
      }

      v21 = v17;
      if (*a4 <= v17)
      {
        v21 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v17);
      }

      *v21 = 12;
      return v21 + 1;
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 2076);
    v8 = google::protobuf::internal::LogMessage::operator<<(v23, "Invalid message set extension.");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    return google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(this, a2, v5, a4);
  }

  return v5;
}

void sub_276B61304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(uint64_t **this, int a2)
{
  if (*(this + 8) == 11 && *(this + 9) != 1)
  {
    if (*(this + 10))
    {
      return 0;
    }

    else
    {
      v4 = ((9 * (__clz(a2 | 1) ^ 0x1F) + 73) >> 6) + 4;
      v5 = **this;
      if ((*(this + 10) & 0x10) != 0)
      {
        v6 = (*(v5 + 88))();
      }

      else
      {
        v6 = (*(v5 + 72))();
      }

      return v4 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
    }
  }

  else
  {

    return google::protobuf::internal::ExtensionSet::Extension::ByteSize(this, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::MessageSetByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    sub_276B62EFC(*v1, v1 + 1, &v7);
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
      v2 += google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(v1 + 1, v5);
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

uint64_t sub_276B614EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void *sub_276B61560(google::protobuf::Arena **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_276B615A8(v2);
  *a1 = (v3 | 1);
  *v3 = v2;
  return (v3 + 8);
}

double sub_276B615A8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_276B615EC(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

void *sub_276B615EC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8C38(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276B61674);
}

void sub_276B61674(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

uint64_t sub_276B61688(google::protobuf::Arena *this, unint64_t a2)
{
  if (a2 >> 59)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/arena.h", 558);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (num_elements) <= (std::numeric_limits<size_t>::max() / sizeof(T)): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Requested size is too large to fit into size_t.");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v6 = 32 * a2;
  if (*(this + 24))
  {
    sub_276BD8C74(this);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v6);
}

void sub_276B6172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_276B61744(_BYTE *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Free(v3 + 40);
      v4 = *(v3 + 1);
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
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

_DWORD *sub_276B617B4(void *a1, void *a2, _DWORD *a3)
{
  if (a1 != a2)
  {
    do
    {
      if ((*(a1 + 50) & 1) == 0)
      {
        ++*a3;
      }

      v3 = a1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = a1[2];
          v5 = *v4 == a1;
          a1 = v4;
        }

        while (!v5);
      }

      a1 = v4;
    }

    while (v4 != a2);
  }

  return a3;
}

void *sub_276B61810(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61860(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61860(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8CB4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B618E8);
}

void sub_276B618E8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61908(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61958(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61958(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8CE4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B619E0);
}

void sub_276B619E0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61A00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61A50(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61A50(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8D14(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61AD8);
}

void sub_276B61AD8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61AF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61B48(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61B48(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8D44(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61BD0);
}

void sub_276B61BD0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61BF0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61C40(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61C40(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8D74(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61CC8);
}

void sub_276B61CC8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61CE8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61D38(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61D38(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8DA4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61DC0);
}

void sub_276B61DC0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61DE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61E30(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61E30(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8DD4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61EB8);
}

void sub_276B61EB8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61ED8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61F34(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_276B61F34(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E04(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B61FBC);
}

void *sub_276B61FD8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B62034(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_276B62034(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E34(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B620BC);
}

uint64_t sub_276B620C0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unsigned int *sub_276B620EC(unsigned int *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return sub_276B62140(this, a2);
  }

  v3 = *v2;
  if (v3 >= this[3])
  {
    return sub_276B62140(this, a2);
  }

  v4 = v2 + 2;
  v5 = this[2];
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  this[2] = v5 + 1;
  ++**(this + 2);
  return this;
}

unsigned int *sub_276B62140(unsigned int *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = this[3];
    goto LABEL_11;
  }

  v5 = this[2];
  v6 = this[3];
  if (v5 == v6)
  {
LABEL_11:
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v5 + 1);
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

  this = *&v4[2 * v5 + 2];
  if (this)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    this = (*(*this + 8))(this);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = v3[2];
  v3[2] = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return this;
}

unsigned __int8 *sub_276B62220(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Clear(v3 + 40);
      v4 = *(v3 + 1);
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
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

google::protobuf::internal::ExtensionSet *sub_276B62290(void *a1, void *a2, google::protobuf::internal::ExtensionSet *this)
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

google::protobuf::internal::EpsCopyInputStream *sub_276B62314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x277C9F460](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

uint64_t sub_276B62380(int32x2_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1[11].i32[0];
  v5 = __OFSUB__(v4--, 1);
  a1[11].i32[0] = v4;
  if (v4 < 0 != v5)
  {
    return 0;
  }

  ++a1[11].i32[1];
  result = (*(*a2 + 88))(a2, a3, a1);
  a1[11] = vadd_s32(a1[11], 0xFFFFFFFF00000001);
  v9 = a1[10].i32[0];
  a1[10].i32[0] = 0;
  if (v9 != a4)
  {
    return 0;
  }

  return result;
}

google::protobuf::internal *sub_276B62420(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = (this + 1);
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v14 = result + v5;
        v15 = a3[1];
        v18 = *a3;
        v19 = v15;
        v20 = *(a3 + 4);
        result = sub_276B6259C(result, v14, &v18);
        if (v14 != result)
        {
          result = 0;
        }

        goto LABEL_16;
      }

      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      v20 = *(a3 + 4);
      result = sub_276B6259C(result, v8, &v18);
      if (!result)
      {
        goto LABEL_16;
      }

      v11 = *(a1 + 8);
      v12 = result - v11;
      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_15;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_16;
      }

      v5 = v5 - v9 - v12;
      result = (result + v12);
    }

    v23 = 0;
    v22 = 0;
    v21 = *v11;
    v16 = a3[1];
    v18 = *a3;
    v19 = v16;
    v20 = *(a3 + 4);
    if (sub_276B6259C((&v21 + v12), &v21 + v13, &v18) != (&v21 + v13))
    {
LABEL_15:
      result = 0;
      goto LABEL_16;
    }

    result = (*(a1 + 8) + v13);
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *sub_276B6259C(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
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
          v11 = *a3;
          google::protobuf::RepeatedField<int>::Reserve();
        }

        *(*(v9 + 8) + 4 * v10) = v6;
        *v9 = v10 + 1;
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
          v14 = sub_276B61560(v13);
        }

        google::protobuf::internal::WriteVarint(v12, v6, v14);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

uint64_t sub_276B626C0(uint64_t a1, int a2, const char *a3, char **a4, uint64_t *a5)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = -NAN;
  *(a1 + 88) = a2;
  *(a1 + 92) = 0x80000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_276B280C4(v8, a5, a3);
  *a4 = sub_276B62734(a1, v8[0], v8[1]);
  return a1;
}

char *sub_276B62734(uint64_t a1, char *__src, int64_t __n)
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

unsigned __int8 **sub_276B627E8(void *a1, void *a2, unsigned __int8 **a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    v8 = *a3;
    do
    {
      v8 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray((v7 + 5), *(v7 + 8), v8, a4);
      *a3 = v8;
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != a2);
  }

  return a3;
}

void *sub_276B62880(void *a1, void *a2, void *a3)
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

uint64_t *sub_276B6290C(uint64_t a1, int *a2)
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

void *sub_276B629D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B62A24(a1, 0);
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  return result;
}

void *sub_276B62A24(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E64(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B62AAC);
}

uint64_t sub_276B62AB4(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_276B62B4C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_276B62B4C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t sub_276B62CF4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_276A9A398(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::internal::RepeatedPrimitiveDefaults>(google::protobuf::internal::RepeatedPrimitiveDefaults *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    sub_276B62DB8(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276B62DB8(uint64_t a1)
{
  if (*(a1 + 100) >= 1)
  {
    v2 = *(a1 + 104);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(a1 + 84) >= 1)
  {
    v5 = *(a1 + 88);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(a1 + 68) >= 1)
  {
    v8 = *(a1 + 72);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(a1 + 52) >= 1)
  {
    v11 = *(a1 + 56);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(a1 + 36) >= 1)
  {
    v14 = *(a1 + 40);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  if (*(a1 + 20) >= 1)
  {
    v17 = *(a1 + 24);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  if (*(a1 + 4) >= 1)
  {
    v20 = *(a1 + 8);
    v22 = *(v20 - 8);
    v21 = (v20 - 8);
    if (!v22)
    {
      operator delete(v21);
    }
  }

  return a1;
}

void *google::protobuf::internal::OnShutdownDelete<google::protobuf::RepeatedPtrField<std::string>>(google::protobuf::RepeatedPtrField<std::string> *)::{lambda(void const*)#1}::__invoke(void *result)
{
  if (result)
  {
    sub_276B4A5CC(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void *sub_276B62EFC(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(v5 + 5, *(v5 + 8));
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

void google::protobuf::internal::MapFieldBase::~MapFieldBase(google::protobuf::internal::MapFieldBase *this)
{
  *this = &unk_2885C7B80;
  v2 = *(this + 2);
  if (v2 && !*(this + 1))
  {
    sub_276B55D34(*(this + 2));
    MEMORY[0x277C9F670](v2, 0x1020C4014030ADELL);
  }

  std::mutex::~mutex((this + 24));
}

void google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(google::protobuf::internal::MapFieldBase *this)
{
  explicit = atomic_load_explicit(this + 22, memory_order_acquire);
  if (explicit == 2)
  {
    v3 = (this + 24);
    std::mutex::lock((this + 24));
    if (*(this + 22) == 2)
    {
      if (!*(this + 2))
      {
        v4 = *(this + 1);
        if (!v4)
        {
          operator new();
        }

        *(this + 2) = sub_276B672BC(v4);
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (explicit)
    {
      return;
    }

    v3 = (this + 24);
    std::mutex::lock((this + 24));
    if (!*(this + 22))
    {
      (*(*this + 112))(this);
LABEL_11:
      atomic_store(2u, this + 22);
    }
  }

  std::mutex::unlock(v3);
}

uint64_t google::protobuf::internal::MapFieldBase::MutableRepeatedField(google::protobuf::internal::MapFieldBase *this)
{
  google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(this);
  *(this + 22) = 1;
  return *(this + 2);
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong(google::protobuf::internal::MapFieldBase *this)
{
  std::mutex::lock((this + 24));
  v2 = (*(*this + 104))(this);
  std::mutex::unlock((this + 24));
  return v2;
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfNoLock(google::protobuf::internal::MapFieldBase *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 8 * *(v1 + 12);
  v3 = *(v1 + 16);
  if (v3)
  {
    if (*v3 >= 1)
    {
      v4 = 0;
      do
      {
        v2 += (*(**&v3[2 * v4 + 2] + 136))(*&v3[2 * v4 + 2]);
        ++v4;
        v3 = *(v1 + 16);
      }

      while (v4 < *v3);
    }

    v2 += 8;
  }

  return v2;
}

void *google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMapNoLock(void *this)
{
  if (!this[2])
  {
    v1 = this;
    this = sub_276B672BC(this[1]);
    v1[2] = this;
  }

  return this;
}

void google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(google::protobuf::internal::MapFieldBase *this)
{
  if (atomic_load_explicit(this + 22, memory_order_acquire) == 1)
  {
    std::mutex::lock((this + 24));
    if (*(this + 22) == 1)
    {
      (*(*this + 120))(this);
      atomic_store(2u, this + 22);
    }

    std::mutex::unlock((this + 24));
  }
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(google::protobuf::internal::DynamicMapField *this, const Message *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *this = &unk_2885C7C30;
  result = 0.0;
  *(this + 6) = xmmword_276C19EB0;
  *(this + 7) = xmmword_276C19EB0;
  *(this + 16) = &google::protobuf::internal::kGlobalEmptyTable;
  *(this + 17) = 0;
  *(this + 18) = a2;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *this = &unk_2885C7C30;
  result = 0.0;
  *(this + 6) = xmmword_276C19EB0;
  *(this + 7) = xmmword_276C19EB0;
  *(this + 16) = &google::protobuf::internal::kGlobalEmptyTable;
  *(this + 17) = 0;
  *(this + 18) = a2;
  return result;
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(google::protobuf::internal::DynamicMapField *this, const google::protobuf::Message *a2, google::protobuf::Arena *a3)
{
  v5 = sub_276B6770C(this, a3);
  *v5 = &unk_2885C7C30;
  result = 0.0;
  *(v5 + 96) = xmmword_276C19EB0;
  *(v5 + 112) = xmmword_276C19EB0;
  *(v5 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v5 + 136) = a3;
  *(v5 + 144) = a2;
  return result;
}

{
  v5 = sub_276B6770C(this, a3);
  *v5 = &unk_2885C7C30;
  result = 0.0;
  *(v5 + 96) = xmmword_276C19EB0;
  *(v5 + 112) = xmmword_276C19EB0;
  *(v5 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v5 + 136) = a3;
  *(v5 + 144) = a2;
  return result;
}

void google::protobuf::internal::DynamicMapField::~DynamicMapField(google::protobuf::internal::DynamicMapField *this)
{
  *this = &unk_2885C7C30;
  v2 = this + 96;
  v3 = *(this + 15);
  v4 = *(this + 13);
  if (v4 > v3)
  {
    v5 = *(this + 16);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        goto LABEL_10;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
      v7 = v6;
      v8 = this + 96;
      v9 = v3;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = *(v5 + 8 * v3);
      v8 = this + 96;
      v9 = v3;
    }

    do
    {
      sub_276B635DC(v6 + 8);
      sub_276B67818(&v7);
      v6 = v7;
    }

    while (v7);
  }

LABEL_10:
  sub_276B67410(v2);
  sub_276B673BC(v2);
  google::protobuf::internal::MapFieldBase::~MapFieldBase(this);
}

{
  google::protobuf::internal::DynamicMapField::~DynamicMapField(this);

  JUMPOUT(0x277C9F670);
}

_DWORD *sub_276B635DC(_DWORD *result)
{
  v1 = result[2];
  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        goto LABEL_20;
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v1 == 8)
      {
        goto LABEL_20;
      }

      if (v1 != 9)
      {
        if (v1 == 10)
        {
          result = *result;
          if (result)
          {
            v2 = *(*result + 8);

            return v2();
          }
        }

        return result;
      }

      v3 = *result;
      if (!*result)
      {
        return result;
      }

      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }
    }

LABEL_21:

    JUMPOUT(0x277C9F670);
  }

  if (v1 <= 2)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_20:
    result = *result;
    if (result)
    {
      goto LABEL_21;
    }

    return result;
  }

  if (v1 == 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  result = *result;
  if (result)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t google::protobuf::internal::DynamicMapField::Clear(google::protobuf::internal::DynamicMapField *this)
{
  v2 = this + 96;
  if (!*(this + 1))
  {
    v3 = *(this + 15);
    v4 = *(this + 13);
    if (v4 > v3)
    {
      v5 = *(this + 16);
      while (1)
      {
        v6 = *(v5 + 8 * v3);
        if (v6)
        {
          break;
        }

        if (v4 == ++v3)
        {
          goto LABEL_11;
        }
      }

      if (v6 == *(v5 + 8 * (v3 ^ 1)))
      {
        v6 = *(*v6 + 40);
        v12 = v6;
        v13 = this + 96;
        v14 = v3;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = *(v5 + 8 * v3);
        v13 = this + 96;
        v14 = v3;
      }

      do
      {
        sub_276B635DC(v6 + 8);
        sub_276B67818(&v12);
        v6 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  result = sub_276B67410(v2);
  v8 = *(this + 2);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9 >= 1)
    {
      v10 = (*(v8 + 16) + 8);
      do
      {
        v11 = *v10++;
        result = (*(*v11 + 40))(v11);
        --v9;
      }

      while (v9);
      *(v8 + 8) = 0;
    }
  }

  *(this + 22) = 0;
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::ContainsMapKey(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 160))(a1);
  sub_276B6798C(v3, a2, 0, v5);
  return v5[0] != 0;
}

void google::protobuf::internal::DynamicMapField::AllocateMapValue(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 144) + 152))(*(a1 + 144));
  v5 = google::protobuf::Descriptor::map_value(v4);
  v6 = *(v5 + 48);
  if (v6)
  {
    v12 = v5;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v15 = &v13;
      v16 = &v12;
      v14 = &v15;
      std::__call_once(v6, &v14, sub_2769C149C);
    }

    v7 = *(v5 + 48);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
    if (v7)
    {
      v12 = v5;
      v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        v15 = &v13;
        v16 = &v12;
        v14 = &v15;
        std::__call_once(v7, &v14, sub_2769C149C);
      }

      v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    }
  }

  else
  {
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
  }

  if (v8 > 5)
  {
    if (v8 <= 7)
    {
      if (v8 == 6)
      {
        v9 = sub_276B684AC(*(a1 + 8));
      }

      else
      {
        v9 = sub_276B68578(*(a1 + 8));
      }

      goto LABEL_29;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        v9 = sub_2769C64F4(*(a1 + 8));
      }

      else
      {
        if (v8 != 10)
        {
          return;
        }

        (*(**(a1 + 144) + 152))(*(a1 + 144));
        Message = google::protobuf::Reflection::GetMessage(v10, *(a1 + 144), v5, 0);
        v9 = (*(*Message + 32))(Message, *(a1 + 8));
      }

      goto LABEL_29;
    }

LABEL_24:
    v9 = sub_276B680B0(*(a1 + 8));
    goto LABEL_29;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = sub_276B68248(*(a1 + 8));
    }

    else if (v8 == 4)
    {
      v9 = sub_276B68314(*(a1 + 8));
    }

    else
    {
      v9 = sub_276B683E0(*(a1 + 8));
    }

    goto LABEL_29;
  }

  if (v8 == 1)
  {
    goto LABEL_24;
  }

  if (v8 != 2)
  {
    return;
  }

  v9 = sub_276B6817C(*(a1 + 8));
LABEL_29:
  *a2 = v9;
}

BOOL google::protobuf::internal::DynamicMapField::InsertOrLookupMapValue(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v6 = (*(*a1 + 168))(a1);
  sub_276B6798C(v6, a2, 0, v10);
  v7 = v10[0];
  if (v10[0])
  {
    v8 = v10[0];
  }

  else
  {
    sub_276B68644(a1 + 12, a2, v10);
    v8 = v10[0];
    google::protobuf::internal::DynamicMapField::AllocateMapValue(a1, v10[0] + 32);
  }

  result = v7 == 0;
  *(a3 + 8) = *(v8 + 40);
  *a3 = *(v8 + 32);
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::LookupMapValue(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = (*(*a1 + 160))(a1);
  sub_276B6798C(v5, a2, 0, v8);
  v6 = v8[0];
  if (v8[0])
  {
    *(a3 + 8) = *(v8[0] + 40);
    *a3 = *(v6 + 32);
  }

  return v6 != 0;
}

BOOL google::protobuf::internal::DynamicMapField::DeleteMapValue(uint64_t a1, unsigned int *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  sub_276B6798C((a1 + 96), a2, 0, &v11);
  v4 = v11;
  v5 = v11;
  if (v11)
  {
    v6 = v12;
    *(a1 + 88) = 0;
    if (!*(a1 + 8))
    {
      v8 = v4;
      sub_276B635DC((v5 + 32));
      v4 = v8;
    }

    v9 = v4;
    v10 = v6;
    v11 = v4;
    v12 = v6;
    sub_276B67818(&v9);
    sub_276B69008((a1 + 96), &v11);
  }

  return v5 != 0;
}

uint64_t google::protobuf::internal::DynamicMapField::MutableMap(google::protobuf::internal::DynamicMapField *this)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this);
  *(this + 22) = 0;
  return this + 96;
}

void google::protobuf::internal::DynamicMapField::SetMapIteratorValue(uint64_t a1, const std::string ***a2)
{
  v2 = **a2;
  if (v2)
  {
    sub_276B63E04((a2 + 2), **a2);
    *(a2 + 14) = v2[1].__r_.__value_.__r.__words[2];
    a2[6] = v2[1].__r_.__value_.__l.__size_;
  }
}

void sub_276B63E04(uint64_t a1, const std::string *a2)
{
  v4 = sub_276B66E74(a2);
  sub_276B67260(a1, v4);
  v5 = *(a1 + 24);
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
LABEL_15:
        *a1 = a2->__r_.__value_.__r.__words[0];
        return;
      }

      if (v5 != 3)
      {
        return;
      }
    }

    *a1 = a2->__r_.__value_.__l.__data_;
    return;
  }

  if (v5 > 0xA)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0x560) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 213);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "Unsupported");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    return;
  }

  if (v5 == 7)
  {
    *a1 = a2->__r_.__value_.__s.__data_[0];
    return;
  }

  if (v5 != 9)
  {
LABEL_14:
    if (v5 != 4)
    {
      return;
    }

    goto LABEL_15;
  }

  std::string::operator=(a1, a2);
}

void sub_276B63F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::DynamicMapField::MergeFrom(google::protobuf::internal::DynamicMapField *this, const google::protobuf::internal::MapFieldBase *a2)
{
  result = (*(*this + 168))(this);
  v5 = *(a2 + 15);
  v6 = *(a2 + 13);
  if (v6 > v5)
  {
    v7 = result;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *(v8 + 8 * v5);
      if (v9)
      {
        break;
      }

      if (v6 == ++v5)
      {
        return result;
      }
    }

    if (v9 == *(v8 + 8 * (v5 ^ 1)))
    {
      v9 = *(*v9 + 40);
      v26 = v9;
      v27 = a2 + 96;
      v28 = v5;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      v26 = *(v8 + 8 * v5);
      v27 = a2 + 96;
      v28 = v5;
    }

    do
    {
      sub_276B6798C(v7, v9, 0, v29);
      if (v29[0])
      {
        v10 = (v29[0] + 32);
      }

      else
      {
        sub_276B68644(this + 12, v26, v29);
        v10 = (v29[0] + 32);
        google::protobuf::internal::DynamicMapField::AllocateMapValue(this, v29[0] + 32);
      }

      v11 = (*(**(this + 18) + 152))(*(this + 18));
      v12 = google::protobuf::Descriptor::map_value(v11);
      v13 = *(v12 + 48);
      if (v13)
      {
        v30 = v12;
        v31 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v13, memory_order_acquire) != -1)
        {
          v29[0] = &v31;
          v29[1] = &v30;
          v32 = v29;
          std::__call_once(v13, &v32, sub_2769C149C);
        }
      }

      v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + 56)];
      if (v14 > 5)
      {
        if (v14 <= 7)
        {
          if (v14 == 6)
          {
            v21 = sub_276B64B84((v26 + 8));
            sub_276B64A7C(v10, v21);
          }

          else
          {
            v19 = sub_276B64F84(v26 + 4);
            sub_276B64E84(v10, v19);
          }
        }

        else
        {
          switch(v14)
          {
            case 8:
              v23 = sub_276B6537C(v26 + 4);
              sub_276B6527C(v10, v23);
              break;
            case 9:
              v25 = sub_276B65184((v26 + 8));
              sub_276B65080(v10, v25);
              break;
            case 10:
              v16 = sub_276B65478(v10);
              v17 = sub_276B65570((v26 + 8));
              (*(*v16 + 112))(v16, v17);
              break;
          }
        }
      }

      else if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v20 = sub_276B6438C(v26 + 4);
          sub_276B6428C(v10, v20);
        }

        else if (v14 == 2)
        {
          v18 = sub_276B64588((v26 + 8));
          sub_276B64488(v10, v18);
        }
      }

      else if (v14 == 3)
      {
        v22 = sub_276B64784(v26 + 4);
        sub_276B64684(v10, v22);
      }

      else if (v14 == 4)
      {
        v24 = sub_276B64980((v26 + 8));
        sub_276B64880(v10, v24);
      }

      else
      {
        v15 = sub_276B64D88((v26 + 8));
        sub_276B64C80(v10, v15);
      }

      result = sub_276B67818(&v26);
      v9 = v26;
    }

    while (v26);
  }

  return result;
}

void sub_276B6428C(_DWORD **a1, int a2)
{
  if (sub_276B66F14(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 783);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B6438C(unsigned int **a1)
{
  if (sub_276B66F14(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 695);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64488(void **a1, uint64_t a2)
{
  if (sub_276B66F14(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 775);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64588(uint64_t a1)
{
  if (sub_276B66F14(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 685);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B6466C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64684(_DWORD **a1, int a2)
{
  if (sub_276B66F14(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 787);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B6476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64784(unsigned int **a1)
{
  if (sub_276B66F14(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 700);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64880(void **a1, uint64_t a2)
{
  if (sub_276B66F14(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 779);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64980(uint64_t a1)
{
  if (sub_276B66F14(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 690);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64A7C(float **a1, float a2)
{
  if (sub_276B66F14(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 804);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetFloatValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "float");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float sub_276B64B84(uint64_t a1)
{
  if (sub_276B66F14(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 718);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetFloatValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "float");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64C80(double **a1, double a2)
{
  if (sub_276B66F14(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 808);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetDoubleValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "double");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_276B64D88(uint64_t a1)
{
  if (sub_276B66F14(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 723);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetDoubleValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "double");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64E84(_BYTE **a1, char a2)
{
  if (sub_276B66F14(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 791);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetBoolValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "BOOL");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}