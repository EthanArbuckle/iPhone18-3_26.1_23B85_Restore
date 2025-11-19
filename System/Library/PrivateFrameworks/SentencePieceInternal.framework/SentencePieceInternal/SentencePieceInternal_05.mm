void sub_265687A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *a1, unint64_t a2, google::protobuf::internal *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_287704AB0;
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

void sub_2656887C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
        v44 = &unk_287704AB0;
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

void sub_265688B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4)
{
  v6 = &unk_287704E28;
  v5[0] = &unk_287704AB0;
  v5[1] = a4;
  return google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v5, &v6);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4, google::protobuf::io::CodedOutputStream *a5)
{
  v7[0] = &unk_287704E70;
  v7[1] = a5;
  v6[0] = &unk_287704AB0;
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

void sub_265689054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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
  v12[0] = &unk_287704E70;
  v12[1] = v14;
  v11[0] = &unk_287704AB0;
  v11[1] = a3;
  v8 = google::protobuf::internal::ExtensionSet::ParseMessageSetLite(a1, a2, v11, v12, v7);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v14);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_265689178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

void sub_26568BD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26568CAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

        v6 = google::protobuf::RepeatedField<float>::~RepeatedField(*this);
      }

      else
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedField<BOOL>::~RepeatedField(*this);
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

    v6 = google::protobuf::RepeatedField<int>::~RepeatedField(*this);
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

      v6 = google::protobuf::RepeatedField<unsigned int>::~RepeatedField(*this);
    }

    else if (v5 == 4)
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(*this);
    }

    else
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<double>::~RepeatedField(*this);
    }

    goto LABEL_44;
  }

  if (v5 == 1)
  {
    goto LABEL_34;
  }

  if (v5 == 2 && *this)
  {
    v6 = google::protobuf::RepeatedField<long long>::~RepeatedField(*this);
LABEL_44:
    v10 = 0x1080C4057E67DB5;
LABEL_45:
    MEMORY[0x26675B300](v6, v10);
  }
}

void sub_26568CDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(google::protobuf::internal::ExtensionSet *this, int a2)
{
  if (*(this + 4) <= 0x100u)
  {
    google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap();
  }

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
  if (*(this + 4) <= 0x100u)
  {
    google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap();
  }

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
  {
    operator new();
  }

  return google::protobuf::internal::RepeatedPrimitiveDefaults::default_instance(void)::instance;
}

uint64_t google::protobuf::internal::RepeatedStringTypeTraits::GetDefaultRepeatedField(google::protobuf::internal::RepeatedStringTypeTraits *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::RepeatedStringTypeTraits::GetDefaultRepeatedField(void)::instance;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray(google::protobuf::internal::ExtensionSet::Extension *this, uint64_t a2, char *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
      return (v21 + 1);
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 2076);
    v8 = google::protobuf::internal::LogMessage::operator<<(v23, "Invalid message set extension.");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    return google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(this, a2, v5, a4);
  }

  return v5;
}

void sub_26568D280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MessageSetByteSize(void)::$_0>(*v1, v1 + 1, &v7);
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

unint64_t google::protobuf::internal::ExtensionSet::LazyMessageExtension::ByteSize(google::protobuf::internal::ExtensionSet::LazyMessageExtension *this)
{
  v1 = (*(*this + 88))(this);
  if (v1 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_26568D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::OnShutdownDelete<std::unordered_map<std::pair<google::protobuf::MessageLite const*,int>,google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,std::equal_to<std::pair<google::protobuf::MessageLite const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::MessageLite const*,int> const,google::protobuf::internal::ExtensionInfo>>>>(std::unordered_map<std::pair<google::protobuf::MessageLite const*,int>,google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,std::equal_to<std::pair<google::protobuf::MessageLite const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::MessageLite const*,int> const,google::protobuf::internal::ExtensionInfo>>> *)::{lambda(void const*)#1}::__invoke(uint64_t result)
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

    JUMPOUT(0x26675B300);
  }

  return result;
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

_DWORD *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::NumExtensions(void)::$_0>(void *a1, void *a2, _DWORD *a3)
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

void google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26568D734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
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

void sub_26568D840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26568D920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    result = google::protobuf::RepeatedPtrField<std::string>::Reserve(result, v5 + 1);
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

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::ReleaseLastInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2030);
    v2 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: GetArena() == NULL: ");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "ReleaseLast() called on a RepeatedPtrField that is on an arena, ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "with a type that does not implement MergeFrom. This is unsafe; ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "please implement MergeFrom for your type.");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  if (v6 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2040);
    v7 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    v6 = *(a1 + 8);
  }

  v8 = *(a1 + 16);
  v9 = *v8;
  v10 = *v8 - 1;
  *v8 = v10;
  v11 = v8 + 2;
  v12 = v6 - 1;
  *(a1 + 8) = v12;
  result = *&v11[2 * v12];
  if (v6 < v9)
  {
    *&v11[2 * v12] = *&v11[2 * v10];
  }

  return result;
}

void sub_26568DB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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
    MEMORY[0x26675AFD0](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

google::protobuf::internal *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v25 = *MEMORY[0x277D85DE8];
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
  v18 = *MEMORY[0x277D85DE8];
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

uint64_t google::protobuf::internal::ParseContext::ParseContext<std::string &>(uint64_t a1, int a2, const char *a3, char **a4, uint64_t *a5)
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
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v8, a5, a3);
  *a4 = google::protobuf::internal::EpsCopyInputStream::InitFrom(a1, v8[0], v8[1]);
  return a1;
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

unsigned __int8 **google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::InternalSerializeMessageSetWithCachedSizesToArray(unsigned char *,google::protobuf::io::EpsCopyOutputStream *)::$_0>(void *a1, void *a2, unsigned __int8 **a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

void sub_26568E380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(uint64_t a1, int *a2)
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

  std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::internal::RepeatedPrimitiveDefaults>(google::protobuf::internal::RepeatedPrimitiveDefaults *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    google::protobuf::RepeatedField<BOOL>::~RepeatedField(result + 96);
    google::protobuf::RepeatedField<float>::~RepeatedField(v1 + 80);
    google::protobuf::RepeatedField<double>::~RepeatedField(v1 + 64);
    google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(v1 + 48);
    google::protobuf::RepeatedField<unsigned int>::~RepeatedField(v1 + 32);
    google::protobuf::RepeatedField<long long>::~RepeatedField(v1 + 16);
    google::protobuf::RepeatedField<int>::~RepeatedField(v1);

    JUMPOUT(0x26675B300);
  }

  return result;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::RepeatedPtrField<std::string>>(google::protobuf::RepeatedPtrField<std::string> *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField();

    JUMPOUT(0x26675B300);
  }

  return result;
}

void *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MessageSetByteSize(void)::$_0>(void *a1, void *a2, void *a3)
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

uint64_t google::protobuf::internal::ExtensionSet::~ExtensionSet(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x26675B300);
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

void google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap()
{
  __assert_rtn("FindOrNullInLargeMap", "extension_set.cc", 1805, "is_large()");
}

{
  __assert_rtn("FindOrNullInLargeMap", "extension_set.cc", 1827, "is_large()");
}

uint64_t google::protobuf::internal::LookUpEnumValue(uint64_t a1, unint64_t a2, void *__s2, int64_t __n, _DWORD *a5)
{
  v8 = a1;
  v9 = a1 + 24 * a2;
  if (a2)
  {
    v10 = a2;
    do
    {
      v11 = v10 >> 1;
      v12 = v8 + 24 * (v10 >> 1);
      v13 = *(v12 + 8);
      if (v13 >= __n)
      {
        v14 = __n;
      }

      else
      {
        v14 = *(v12 + 8);
      }

      v15 = memcmp(*v12, __s2, v14);
      if (v15 < 0 || (!v15 ? (v16 = v13 < __n) : (v16 = 0), v16))
      {
        v11 = v10 + ~v11;
        v8 = v12 + 24;
      }

      v10 = v11;
    }

    while (v11);
  }

  if (v8 == v9 || *(v8 + 8) != __n || __n >= 1 && *v8 != __s2 && memcmp(*v8, __s2, __n))
  {
    return 0;
  }

  *a5 = *(v8 + 16);
  return 1;
}

uint64_t google::protobuf::internal::LookUpEnumName(uint64_t a1, int *a2, unint64_t a3, int a4)
{
  v4 = &a2[a3];
  v5 = a2;
  if (a3)
  {
    v5 = a2;
    do
    {
      v6 = &v5[a3 >> 1];
      v7 = a4;
      if (*v6 != -1)
      {
        v7 = *(a1 + 24 * *v6 + 16);
      }

      v8 = v6 + 1;
      if (v7 >= a4)
      {
        a3 >>= 1;
      }

      else
      {
        a3 += ~(a3 >> 1);
      }

      if (v7 < a4)
      {
        v5 = v8;
      }
    }

    while (a3);
  }

  if (v5 == v4 || *(a1 + 24 * *v5 + 16) != a4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v5 - a2) >> 2;
  }
}

uint64_t google::protobuf::internal::InitializeEnumStrings(uint64_t a1, int *a2, uint64_t a3, void (*a4)(const void *))
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = *a2++;
      google::protobuf::StringPiece::ToString((a1 + 24 * v8), a4);
      google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, a4, v9);
      a4 = (a4 + 24);
      --v5;
    }

    while (v5);
  }

  return 1;
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
    unk_28001ADD0 = 0;
    qword_28001ADD8 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
    atomic_store(1u, google::protobuf::internal::init_protobuf_defaults_state);
  }
}

uint64_t google::protobuf::internal::StringSpaceUsedExcludingSelfLong(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 >= a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::SerializeMessageNoTable(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 96))(a1, *(a2 + 64), a2);
  *(a2 + 64) = result;
  return result;
}

void google::protobuf::internal::SerializeMessageNoTable(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v6, *a2, 0x7FFFFFFF, -1);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v7, v6, 1);
  v7[58] = *(a2 + 8);
  v8 = (*(*a1 + 96))(a1, v8, v7);
  v4 = google::protobuf::io::EpsCopyOutputStream::ByteCount(v7, v8);
  *a2 += v4 - v9;
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v7);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_26568F6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SerializeInternal(uint64_t a1, unsigned int *a2, int a3, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a3 >= 1)
  {
    v24 = v4;
    v25 = v5;
    v9 = a3;
    do
    {
      v10 = a2[3];
      v11 = *a2;
      v12 = (a1 + v11);
      switch(v10)
      {
        case 0:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 1:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 2:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_124;
          }

          break;
        case 3:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_80;
          }

          break;
        case 4:
        case 13:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_14;
          }

          break;
        case 5:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 6:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 7:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_71;
          }

          break;
        case 8:
        case 11:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_12;
          }

          break;
        case 9:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_90;
          }

          break;
        case 10:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_103;
          }

          break;
        case 12:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_75;
          }

          break;
        case 14:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 15:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 16:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_119;
          }

          break;
        case 17:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_128;
          }

          break;
        case 20:
          if (*v12 != 0.0)
          {
            goto LABEL_108;
          }

          break;
        case 21:
          if (*v12 != 0.0)
          {
            goto LABEL_134;
          }

          break;
        case 22:
          if (*v12)
          {
LABEL_124:
            v21 = a2[1];
            goto LABEL_81;
          }

          break;
        case 23:
          if (*v12)
          {
LABEL_80:
            v21 = a2[1];
            goto LABEL_81;
          }

          break;
        case 24:
        case 33:
          if (*v12)
          {
LABEL_14:
            v16 = a2[1];
            goto LABEL_19;
          }

          break;
        case 25:
          if (*v12)
          {
            goto LABEL_108;
          }

          break;
        case 26:
          if (*v12)
          {
            goto LABEL_134;
          }

          break;
        case 27:
          if (*v12)
          {
            goto LABEL_71;
          }

          break;
        case 28:
        case 31:
          v13 = *v12 & 0xFFFFFFFFFFFFFFFELL;
          v14 = *(v13 + 23);
          if (v14 < 0)
          {
            v14 = *(v13 + 8);
          }

          if (v14)
          {
LABEL_12:
            v15 = a2[1];
            goto LABEL_17;
          }

          break;
        case 29:
          if (*v12)
          {
            goto LABEL_90;
          }

          break;
        case 30:
          if (*v12)
          {
LABEL_103:
            google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 32:
          if (*v12)
          {
LABEL_75:
            v17 = a2[1];
            goto LABEL_76;
          }

          break;
        case 34:
          if (*v12)
          {
            goto LABEL_134;
          }

          break;
        case 35:
          if (*v12)
          {
            goto LABEL_108;
          }

          break;
        case 36:
          if (*v12)
          {
LABEL_119:
            v20 = a2[1];
            goto LABEL_120;
          }

          break;
        case 37:
          if (*v12)
          {
LABEL_128:
            v22 = a2[1];
            goto LABEL_129;
          }

          break;
        case 40:
          google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 41:
          google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 42:
          google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 43:
          google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 44:
        case 53:
          google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 45:
          google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 46:
          google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 47:
          google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 48:
        case 51:
          google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 49:
          google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 50:
          google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>(a1 + v11, a2, this);
          break;
        case 52:
          google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 54:
          google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 55:
          google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 56:
          google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 57:
          google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 60:
          google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 61:
          google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 62:
          google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 63:
          google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 64:
        case 73:
          google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 65:
          google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 66:
          google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 67:
          google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 68:
        case 69:
        case 70:
        case 71:
          google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>(a1 + v11, a2);
          break;
        case 72:
          google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 74:
          google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 75:
          google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 76:
          google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 77:
          google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 80:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_108;
          }

          break;
        case 81:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_134;
          }

          break;
        case 82:
          v21 = a2[1];
          if (*(a1 + a2[2]) == v21 >> 3)
          {
            goto LABEL_81;
          }

          break;
        case 83:
          v21 = a2[1];
          if (*(a1 + a2[2]) == v21 >> 3)
          {
LABEL_81:
            v23 = v21;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 84:
        case 93:
          v16 = a2[1];
          if (*(a1 + a2[2]) == v16 >> 3)
          {
LABEL_19:
            v23 = v16;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(v12, this);
          }

          break;
        case 85:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_108;
          }

          break;
        case 86:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_134;
          }

          break;
        case 87:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_71:
            google::protobuf::internal::SingularFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 88:
        case 91:
          v15 = a2[1];
          if (*(a1 + a2[2]) == v15 >> 3)
          {
LABEL_17:
            v23 = v15;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::PrimitiveTypeHelper<9>::Serialize((*v12 & 0xFFFFFFFFFFFFFFFELL), this);
          }

          break;
        case 89:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_90:
            google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 90:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            v23 = a2[1];
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(*v12, *(a2 + 2), this);
          }

          break;
        case 92:
          v17 = a2[1];
          if (*(a1 + a2[2]) == v17 >> 3)
          {
LABEL_76:
            v23 = v17;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 94:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_134:
            google::protobuf::internal::SingularFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 95:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_108:
            google::protobuf::internal::SingularFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 96:
          v20 = a2[1];
          if (*(a1 + a2[2]) == v20 >> 3)
          {
LABEL_120:
            v23 = v20;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 97:
          v22 = a2[1];
          if (*(a1 + a2[2]) == v22 >> 3)
          {
LABEL_129:
            v23 = v22;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 100:
          v18 = a2[1];
          v19 = a2[2];
          (*(a2 + 2))(a1);
          break;
        default:
          google::protobuf::internal::SerializeNotImplemented(v10);
          break;
      }

      a2 += 6;
      --v9;
    }

    while (v9);
  }
}

void *google::protobuf::internal::SerializeMessageDispatch(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = google::protobuf::internal::SerializeInternalToArray(a1, a2, a3, *(a5 + 8), *a5);
  *a5 = result;
  return result;
}

void *google::protobuf::internal::SerializeInternalToArray(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4, void *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v55[0] = a5;
  v55[1] = a4;
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = (a2 + 24 * v8);
      v11 = (a1 + *v10);
      switch(v10[3])
      {
        case 0u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v17 = v14 >> 14;
                v14 >>= 7;
              }

              while (v17);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 1u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v43 = v29 >> 14;
                v29 >>= 7;
              }

              while (v43);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 2u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_202;
          }

          break;
        case 3u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_202;
          }

          break;
        case 4u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_219;
          }

          break;
        case 5u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v41 = v14 >> 14;
                v14 >>= 7;
              }

              while (v41);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 6u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v42 = v29 >> 14;
                v29 >>= 7;
              }

              while (v42);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 7u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v18 = v10[1];
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_113;
            }

            *v55[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v48 = v20 >> 14;
                v20 >>= 7;
              }

              while (v48);
              goto LABEL_233;
            }

            goto LABEL_226;
          }

          break;
        case 8u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_224;
          }

          break;
        case 9u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_206;
          }

          break;
        case 0xAu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_174;
          }

          break;
        case 0xBu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_224;
          }

          break;
        case 0xCu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_179;
          }

          break;
        case 0xDu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_219;
          }

          break;
        case 0xEu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v47 = v29 >> 14;
                v29 >>= 7;
              }

              while (v47);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0xFu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v50 = v14 >> 14;
                v14 >>= 7;
              }

              while (v50);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x10u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_197;
          }

          break;
        case 0x11u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_209;
          }

          break;
        case 0x14u:
          if (*v11 != 0.0)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v35 = v14 >> 14;
                v14 >>= 7;
              }

              while (v35);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x15u:
          if (*v11 != 0.0)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v45 = v29 >> 14;
                v29 >>= 7;
              }

              while (v45);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x16u:
          if (*v11)
          {
            goto LABEL_202;
          }

          break;
        case 0x17u:
          if (*v11)
          {
            goto LABEL_202;
          }

          break;
        case 0x18u:
          if (*v11)
          {
            goto LABEL_219;
          }

          break;
        case 0x19u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v40 = v14 >> 14;
                v14 >>= 7;
              }

              while (v40);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x1Au:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v46 = v29 >> 14;
                v29 >>= 7;
              }

              while (v46);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x1Bu:
          if (*v11)
          {
            v18 = v10[1];
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_113;
            }

            *v55[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v39 = v20 >> 14;
                v20 >>= 7;
              }

              while (v39);
              goto LABEL_233;
            }

            goto LABEL_226;
          }

          break;
        case 0x1Cu:
          v33 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v33 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v33 + 8))
            {
              goto LABEL_224;
            }
          }

          else if (*(v33 + 23))
          {
            goto LABEL_224;
          }

          break;
        case 0x1Du:
          if (*v11)
          {
            goto LABEL_206;
          }

          break;
        case 0x1Eu:
          if (*v11)
          {
            goto LABEL_174;
          }

          break;
        case 0x1Fu:
          v44 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v44 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v44 + 8))
            {
              goto LABEL_224;
            }
          }

          else if (*(v44 + 23))
          {
            goto LABEL_224;
          }

          break;
        case 0x20u:
          if (*v11)
          {
            goto LABEL_179;
          }

          break;
        case 0x21u:
          if (*v11)
          {
            goto LABEL_219;
          }

          break;
        case 0x22u:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v32 = v29 >> 14;
                v29 >>= 7;
              }

              while (v32);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x23u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v38 = v14 >> 14;
                v14 >>= 7;
              }

              while (v38);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x24u:
          if (*v11)
          {
            goto LABEL_197;
          }

          break;
        case 0x25u:
          if (*v11)
          {
            goto LABEL_209;
          }

          break;
        case 0x28u:
          google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x29u:
          google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Au:
          google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Bu:
          google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Cu:
        case 0x35u:
          google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Du:
          google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Eu:
          google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Fu:
          google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x30u:
        case 0x33u:
          google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x31u:
          google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x32u:
          google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x34u:
          google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x36u:
          google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x37u:
          google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x38u:
          google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x39u:
          google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Cu:
          google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Du:
          google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Eu:
          google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Fu:
          google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x40u:
        case 0x49u:
          google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x41u:
          google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x42u:
          google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x43u:
          google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
          google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8);
          break;
        case 0x48u:
          google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Au:
          google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Bu:
          google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Cu:
          google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Du:
          google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x50u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v26 = v14 >> 14;
                v14 >>= 7;
              }

              while (v26);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x51u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v34 = v29 >> 14;
                v29 >>= 7;
              }

              while (v34);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x52u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_202;
          }

          break;
        case 0x53u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_202:
            google::protobuf::internal::SingularFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x54u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_219;
          }

          break;
        case 0x55u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v25 = v14 >> 14;
                v14 >>= 7;
              }

              while (v25);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x56u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v37 = v29 >> 14;
                v29 >>= 7;
              }

              while (v37);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x57u:
          v18 = v10[1];
          if (*(a1 + v10[2]) == v18 >> 3)
          {
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
LABEL_113:
              *v19 = v18;
              v21 = v19 + 1;
            }

            else
            {
              *v55[0] = v18 | 0x80;
              v20 = v18 >> 7;
              if (v18 >> 14)
              {
                v21 = v19 + 2;
                do
                {
                  *(v21 - 1) = v20 | 0x80;
                  v22 = v20 >> 7;
                  ++v21;
                  v23 = v20 >> 14;
                  v20 >>= 7;
                }

                while (v23);
LABEL_233:
                *(v21 - 1) = v22;
              }

              else
              {
LABEL_226:
                v19[1] = v20;
                v21 = v19 + 2;
              }
            }

            *v21 = *v11;
            v49 = v21 + 1;
            goto LABEL_243;
          }

          break;
        case 0x58u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_224;
          }

          break;
        case 0x59u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_206:
            google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Au:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_174:
            google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Bu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_224:
            google::protobuf::internal::SingularFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Cu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_179:
            google::protobuf::internal::SingularFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Du:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_219:
            google::protobuf::internal::SingularFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Eu:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 > 0x7F)
            {
              *v55[0] = v27 | 0x80;
              v29 = v27 >> 7;
              if (v27 >> 14)
              {
                v30 = (v28 + 2);
                do
                {
                  *(v30 - 1) = v29 | 0x80;
                  v31 = v29 >> 7;
                  v30 = (v30 + 1);
                  v51 = v29 >> 14;
                  v29 >>= 7;
                }

                while (v51);
LABEL_241:
                *(v30 - 1) = v31;
              }

              else
              {
LABEL_230:
                v28[1] = v29;
                v30 = (v28 + 2);
              }
            }

            else
            {
LABEL_214:
              *v28 = v27;
              v30 = (v28 + 1);
            }

            *v30 = *v11;
            v49 = v30 + 1;
            goto LABEL_243;
          }

          break;
        case 0x5Fu:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
LABEL_188:
              *v13 = v12;
              v15 = v13 + 1;
            }

            else
            {
              *v55[0] = v12 | 0x80;
              v14 = v12 >> 7;
              if (v12 >> 14)
              {
                v15 = v13 + 2;
                do
                {
                  *(v15 - 1) = v14 | 0x80;
                  v16 = v14 >> 7;
                  v15 = (v15 + 1);
                  v36 = v14 >> 14;
                  v14 >>= 7;
                }

                while (v36);
LABEL_237:
                *(v15 - 1) = v16;
              }

              else
              {
LABEL_228:
                v13[1] = v14;
                v15 = v13 + 2;
              }
            }

            *v15 = *v11;
            v49 = v15 + 1;
LABEL_243:
            v55[0] = v49;
          }

          break;
        case 0x60u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_197:
            google::protobuf::internal::SingularFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x61u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_209:
            google::protobuf::internal::SingularFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x64u:
          google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v54, v55[0], 0x7FFFFFFF, -1);
          google::protobuf::io::CodedOutputStream::CodedOutputStream(v56, v54, 1);
          v56[58] = a4;
          (*(v10 + 2))(a1, *v10, v10[1], v10[2], v56);
          v24 = google::protobuf::io::EpsCopyOutputStream::ByteCount(v56, v57);
          v55[0] = v55[0] + v24 - v58;
          google::protobuf::io::CodedOutputStream::~CodedOutputStream(v56);
          break;
        default:
          google::protobuf::internal::SerializeNotImplemented(v10[3]);
          break;
      }

      ++v8;
    }

    while (v8 != v9);
    a5 = v55[0];
  }

  v52 = *MEMORY[0x277D85DE8];
  return a5;
}

void sub_265690F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SerializeNotImplemented(google::protobuf::internal *this)
{
  v1 = this;
  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 534);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, "Not implemented field number ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, v1);
  google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_265690FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::internal::IsNull<9>(void *a1)
{
  v1 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    v2 = *(v1 + 8);
  }

  return v2 == 0;
}

char *google::protobuf::internal::SingularFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t *a1, uint64_t a2, char **this)
{
  v8 = *(a2 + 4);
  result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 8;
  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<double>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<double>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::SingularFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>(int *a1, uint64_t a2, char **this)
{
  v8 = *(a2 + 4);
  result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 4;
  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<float>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<float>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<long long>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<long long>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<unsigned long long>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<int>::Get(v7, v8);
      result = google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<int>::Get(v4, v5);
        result = google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<unsigned long long>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<unsigned int>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned int>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::SingularFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>(char *a1, uint64_t a2, char **this)
{
  v8 = *(a2 + 4);
  result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 1;
  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<BOOL>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 1;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<BOOL>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 1;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 2) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = google::protobuf::internal::PrimitiveTypeHelper<9>::Serialize(*(v10 + 8 * v8++), this);
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}

void google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t a1, uint64_t a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 509);
  v3 = google::protobuf::internal::LogMessage::operator<<(v8, "Not implemented field number ");
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, *(a2 + 4));
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, " with type ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a2 + 12));
  google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
}

void sub_265691D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t *a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v7 = *(a2 + 4);
  google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
  google::protobuf::internal::SerializeGroupTo<google::protobuf::io::CodedOutputStream>(*a1, *(a2 + 16), this);
  v8 = *(a2 + 4) + 1;
  return google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
}

char *google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 2) >= 1)
  {
    v13 = v3;
    v14 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      google::protobuf::internal::SerializeGroupTo<google::protobuf::io::CodedOutputStream>(*(v10 + 8 * v8), *(a2 + 16), this);
      v12 = *(a2 + 4) + 1;
      result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v12, this);
      ++v8;
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}