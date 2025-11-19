uint64_t topotext::ParagraphStyle::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 0x7F) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 56);
      if (this)
      {
        this = topotext::Todo::Clear(this);
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

uint64_t topotext::Font::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 7) != 0)
  {
    *(this + 48) = 0;
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 40);
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

uint64_t topotext::Color::Clear(uint64_t this)
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

uint64_t topotext::AttachmentInfo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 40);
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
      {
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

uint64_t topotext::HashtagInfo::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v1 = *(this + 40);
    if (v1 != google::protobuf::internal::empty_string_)
    {
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

uint64_t topotext::AttributeRun::MergePartialFromCodedStream(topotext::AttributeRun *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v83, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v82, v83);
  while (2)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 < *(a2 + 2))
      {
        v6 = *v5;
        if (v6 >= 1)
        {
          break;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) != 0)
      {
        goto LABEL_12;
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

      if (v9)
      {
LABEL_179:
        v80 = 1;
        goto LABEL_180;
      }

LABEL_42:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v82, v4))
      {
        goto LABEL_178;
      }
    }

    *(a2 + 8) = v6;
    *(a2 + 1) = v5 + 1;
    v7 = v6 | 0x100000000;
LABEL_12:
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_40;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12))
          {
            goto LABEL_178;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v21 = *(this + 8) | 1;
        *(this + 8) = v21;
        if (v13 >= v10 || *v13 != 18)
        {
          continue;
        }

        *(a2 + 1) = v13 + 1;
LABEL_49:
        *(this + 8) = v21 | 2;
        v26 = *(this + 5);
        if (!v26)
        {
          operator new();
        }

        v84 = 0;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
          {
            goto LABEL_178;
          }
        }

        else
        {
          v84 = *v27;
          *(a2 + 1) = v27 + 1;
        }

        v28 = *(a2 + 14);
        v29 = *(a2 + 15);
        *(a2 + 14) = v28 + 1;
        if (v28 >= v29)
        {
          goto LABEL_178;
        }

        v30 = google::protobuf::io::CodedInputStream::PushLimit(a2, v84);
        if (!topotext::ParagraphStyle::MergePartialFromCodedStream(v26, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_178;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v30);
        v31 = *(a2 + 14);
        v32 = __OFSUB__(v31, 1);
        v33 = v31 - 1;
        if (v33 < 0 == v32)
        {
          *(a2 + 14) = v33;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 26)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_63:
        *(this + 8) |= 4u;
        v35 = *(this + 7);
        if (!v35)
        {
          operator new();
        }

        v84 = 0;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
          {
            goto LABEL_178;
          }
        }

        else
        {
          v84 = *v36;
          *(a2 + 1) = v36 + 1;
        }

        v37 = *(a2 + 14);
        v38 = *(a2 + 15);
        *(a2 + 14) = v37 + 1;
        if (v37 >= v38)
        {
          goto LABEL_178;
        }

        v39 = google::protobuf::io::CodedInputStream::PushLimit(a2, v84);
        if (!topotext::Font::MergePartialFromCodedStream(v35, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_178;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v39);
        v40 = *(a2 + 14);
        v32 = __OFSUB__(v40, 1);
        v41 = v40 - 1;
        if (v41 < 0 == v32)
        {
          *(a2 + 14) = v41;
        }

        v42 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v42 >= v14 || *v42 != 40)
        {
          continue;
        }

        v20 = v42 + 1;
        *(a2 + 1) = v20;
LABEL_77:
        if (v20 >= v14 || (v43 = *v20, v43 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13))
          {
            goto LABEL_178;
          }

          v44 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v43;
          v44 = v20 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 8) |= 8u;
        if (v44 >= v14 || *v44 != 48)
        {
          continue;
        }

        v15 = v44 + 1;
        *(a2 + 1) = v15;
LABEL_85:
        if (v15 >= v14 || (v45 = *v15, v45 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16))
          {
            goto LABEL_178;
          }

          v46 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v45;
          v46 = v15 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 8) |= 0x10u;
        if (v46 >= v14 || *v46 != 56)
        {
          continue;
        }

        v17 = v46 + 1;
        *(a2 + 1) = v17;
LABEL_93:
        if (v17 >= v14 || (v47 = *v17, v47 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17))
          {
            goto LABEL_178;
          }

          v48 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v47;
          v48 = v17 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 8) |= 0x20u;
        if (v48 >= v14 || *v48 != 64)
        {
          continue;
        }

        v22 = v48 + 1;
        *(a2 + 1) = v22;
LABEL_101:
        v84 = 0;
        if (v22 >= v14 || (v49 = *v22, (v49 & 0x80000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
          {
            goto LABEL_178;
          }

          v49 = v84;
          v50 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v50 = v22 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 20) = v49;
        v23 = *(this + 8) | 0x40;
        *(this + 8) = v23;
        if (v50 >= v14 || *v50 != 74)
        {
          continue;
        }

        *(a2 + 1) = v50 + 1;
LABEL_109:
        *(this + 8) = v23 | 0x80;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v51 = *(this + 9);
        if (v51 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v51))
        {
          goto LABEL_178;
        }

        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 != 82)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_116:
        *(this + 8) |= 0x100u;
        v53 = *(this + 11);
        if (!v53)
        {
          operator new();
        }

        v84 = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
          {
            goto LABEL_178;
          }
        }

        else
        {
          v84 = *v54;
          *(a2 + 1) = v54 + 1;
        }

        v55 = *(a2 + 14);
        v56 = *(a2 + 15);
        *(a2 + 14) = v55 + 1;
        if (v55 >= v56)
        {
          goto LABEL_178;
        }

        v57 = google::protobuf::io::CodedInputStream::PushLimit(a2, v84);
        if (!topotext::Color::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_178;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v57);
        v58 = *(a2 + 14);
        v32 = __OFSUB__(v58, 1);
        v59 = v58 - 1;
        if (v59 < 0 == v32)
        {
          *(a2 + 14) = v59;
        }

        v60 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v60 >= v24 || *v60 != 88)
        {
          continue;
        }

        v25 = v60 + 1;
        *(a2 + 1) = v25;
LABEL_130:
        v84 = 0;
        if (v25 >= v24 || (v61 = *v25, (v61 & 0x80000000) != 0))
        {
          if ((google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84) & 1) == 0)
          {
            goto LABEL_178;
          }

          v61 = v84;
        }

        else
        {
          *(a2 + 1) = v25 + 1;
        }

        if (v61 > 4)
        {
          google::protobuf::io::CodedOutputStream::WriteVarint32(v82, v7);
          google::protobuf::io::CodedOutputStream::WriteVarint32(v82, v61);
        }

        else
        {
          *(this + 8) |= 0x200u;
          *(this + 21) = v61;
        }

        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 != 98)
        {
          continue;
        }

        *(a2 + 1) = v62 + 1;
LABEL_141:
        *(this + 8) |= 0x400u;
        v63 = *(this + 12);
        if (!v63)
        {
          operator new();
        }

        v84 = 0;
        v64 = *(a2 + 1);
        if (v64 >= *(a2 + 2) || *v64 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
          {
            goto LABEL_178;
          }
        }

        else
        {
          v84 = *v64;
          *(a2 + 1) = v64 + 1;
        }

        v65 = *(a2 + 14);
        v66 = *(a2 + 15);
        *(a2 + 14) = v65 + 1;
        if (v65 >= v66)
        {
          goto LABEL_178;
        }

        v67 = google::protobuf::io::CodedInputStream::PushLimit(a2, v84);
        if (!topotext::AttachmentInfo::MergePartialFromCodedStream(v63, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_178;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v67);
        v68 = *(a2 + 14);
        v32 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v32)
        {
          *(a2 + 14) = v69;
        }

        v70 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v70 >= v18 || *v70 != 104)
        {
          continue;
        }

        v19 = v70 + 1;
        *(a2 + 1) = v19;
LABEL_155:
        if (v19 >= v18 || (v71 = *v19, v71 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 13))
          {
            goto LABEL_178;
          }

          v72 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v71;
          v72 = v19 + 1;
          *(a2 + 1) = v72;
        }

        v16 = *(this + 8) | 0x800;
        *(this + 8) = v16;
        if (v72 >= v18 || *v72 != 114)
        {
          continue;
        }

        *(a2 + 1) = v72 + 1;
        goto LABEL_163;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_40;
        }

        v21 = *(this + 8);
        goto LABEL_49;
      case 3u:
        if (v7 == 26)
        {
          goto LABEL_63;
        }

        goto LABEL_40;
      case 5u:
        if (v7 != 40)
        {
          goto LABEL_40;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_77;
      case 6u:
        if (v7 != 48)
        {
          goto LABEL_40;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_85;
      case 7u:
        if (v7 != 56)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_93;
      case 8u:
        if (v7 != 64)
        {
          goto LABEL_40;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_101;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_40;
        }

        v23 = *(this + 8);
        goto LABEL_109;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_40;
        }

        goto LABEL_116;
      case 0xBu:
        if (v7 != 88)
        {
          goto LABEL_40;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_130;
      case 0xCu:
        if (v7 == 98)
        {
          goto LABEL_141;
        }

        goto LABEL_40;
      case 0xDu:
        if (v7 != 104)
        {
          goto LABEL_40;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_155;
      case 0xEu:
        if (v7 != 114)
        {
LABEL_40:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_179;
          }

          goto LABEL_42;
        }

        v16 = *(this + 8);
LABEL_163:
        *(this + 8) = v16 | 0x1000;
        v73 = *(this + 14);
        if (!v73)
        {
          operator new();
        }

        v84 = 0;
        v74 = *(a2 + 1);
        if (v74 >= *(a2 + 2) || *v74 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
          {
            goto LABEL_178;
          }
        }

        else
        {
          v84 = *v74;
          *(a2 + 1) = v74 + 1;
        }

        v75 = *(a2 + 14);
        v76 = *(a2 + 15);
        *(a2 + 14) = v75 + 1;
        if (v75 >= v76 || (v77 = google::protobuf::io::CodedInputStream::PushLimit(a2, v84), !topotext::HashtagInfo::MergePartialFromCodedStream(v73, a2)) || *(a2 + 36) != 1)
        {
LABEL_178:
          v80 = 0;
          goto LABEL_180;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v77);
        v78 = *(a2 + 14);
        v32 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v32)
        {
          *(a2 + 14) = v79;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        v80 = 1;
        *(a2 + 36) = 1;
LABEL_180:
        google::protobuf::io::CodedOutputStream::~CodedOutputStream(v82);
        google::protobuf::io::StringOutputStream::~StringOutputStream(v83);
        return v80;
      default:
        goto LABEL_6;
    }
  }
}

void sub_19A1EDB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x10B3C4020611389);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t topotext::AttributeRun::SerializeWithCachedSizes(topotext::AttributeRun *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 12), a2, a4);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 5);
  if (!v7)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v7 = *(topotext::AttributeRun::default_instance_ + 40);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_19:
  v8 = *(v5 + 7);
  if (!v8)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v8 = *(topotext::AttributeRun::default_instance_ + 56);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2);
  v6 = *(v5 + 8);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 13), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 16), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 17), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 20), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(9, *(v5 + 9), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_27:
  v9 = *(v5 + 11);
  if (!v9)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v9 = *(topotext::AttributeRun::default_instance_ + 88);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(10, v9, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 21), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_31:
  v10 = *(v5 + 12);
  if (!v10)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v10 = *(topotext::AttributeRun::default_instance_ + 96);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(12, v10, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = google::protobuf::internal::WireFormatLite::WriteInt64(0xD, *(v5 + 13), a2, a4);
  if ((*(v5 + 8) & 0x1000) == 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  v11 = *(v5 + 14);
  if (!v11)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v11 = *(topotext::AttributeRun::default_instance_ + 112);
  }

  google::protobuf::internal::WireFormatLite::WriteMessage(14, v11, a2);
LABEL_38:
  v12 = *(v5 + 31);
  if (v12 < 0)
  {
    v13 = *(v5 + 1);
    v12 = *(v5 + 2);
  }

  else
  {
    v13 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v13, v12);
}

uint64_t topotext::AttributeRun::ByteSize(topotext::AttributeRun *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_56;
  }

  if (v2)
  {
    v4 = *(this + 12);
    if (v4 >= 0x80)
    {
      v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 5);
  if (!v5)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v5 = *(topotext::AttributeRun::default_instance_ + 40);
  }

  v6 = topotext::ParagraphStyle::ByteSize(v5);
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
  v2 = *(this + 8);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 7);
    if (!v9)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v9 = *(topotext::AttributeRun::default_instance_ + 56);
    }

    v10 = topotext::Font::ByteSize(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v3 += v11 + v12 + 1;
    v2 = *(this + 8);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 13);
  if (v13 >= 0x80)
  {
    v14 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v14 = 2;
  }

  v3 += v14;
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_33:
  v15 = *(this + 16);
  if (v15 >= 0x80)
  {
    v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v16 = 2;
  }

  v3 += v16;
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

LABEL_41:
    v19 = *(this + 20);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v20 = 2;
    }

    v3 += v20;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_37:
  v17 = *(this + 17);
  if (v17 >= 0x80)
  {
    v18 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v18 = 2;
  }

  v3 += v18;
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_56;
  }

LABEL_47:
  v21 = *(this + 9);
  v22 = *(v21 + 23);
  v23 = v22;
  v24 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 0x80)
  {
    v26 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    v22 = *(v21 + 23);
    v24 = *(v21 + 8);
    v2 = *(this + 8);
    v23 = *(v21 + 23);
  }

  else
  {
    v26 = 1;
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  v3 += v26 + v22 + 1;
LABEL_56:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v2 & 0x100) != 0)
  {
    v27 = *(this + 11);
    if (!v27)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v27 = *(topotext::AttributeRun::default_instance_ + 88);
    }

    v28 = topotext::Color::ByteSize(v27);
    v29 = v28;
    if (v28 >= 0x80)
    {
      v30 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    }

    else
    {
      v30 = 1;
    }

    v3 += v29 + v30 + 1;
    v2 = *(this + 8);
    if ((v2 & 0x200) == 0)
    {
LABEL_59:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_75;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v31 = *(this + 21);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v32 = 2;
  }

  v3 += v32;
  if ((v2 & 0x400) == 0)
  {
LABEL_60:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_81;
  }

LABEL_75:
  v33 = *(this + 12);
  if (!v33)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v33 = *(topotext::AttributeRun::default_instance_ + 96);
  }

  v34 = topotext::AttachmentInfo::ByteSize(v33);
  v35 = v34;
  if (v34 >= 0x80)
  {
    v36 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
  }

  else
  {
    v36 = 1;
  }

  v3 += v35 + v36 + 1;
  v2 = *(this + 8);
  if ((v2 & 0x800) == 0)
  {
LABEL_61:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_82;
  }

LABEL_81:
  v3 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 13)) + 1;
  if ((*(this + 8) & 0x1000) == 0)
  {
    goto LABEL_88;
  }

LABEL_82:
  v37 = *(this + 14);
  if (!v37)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v37 = *(topotext::AttributeRun::default_instance_ + 112);
  }

  v38 = topotext::HashtagInfo::ByteSize(v37);
  v39 = v38;
  if (v38 >= 0x80)
  {
    v40 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
  }

  else
  {
    v40 = 1;
  }

  v3 += v39 + v40 + 1;
LABEL_88:
  v41 = *(this + 31);
  if (v41 < 0)
  {
    v41 = *(this + 2);
  }

  result = (v3 + v41);
  *(this + 9) = result;
  return result;
}

std::string *topotext::AttributeRun::CheckTypeAndMergeFrom(topotext::AttributeRun *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::AttributeRun::MergeFrom(this, lpsrc);
}

std::string *topotext::ParagraphStyle::MergeFrom(topotext::ParagraphStyle *this, const topotext::ParagraphStyle *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 3587);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 10);
      *(this + 8) |= 1u;
      *(this + 10) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 11);
      if (v7 >= 5)
      {
        [TTParagraphStyle(TTParagraphStylePersistenceAdditions) saveToArchive:];
      }

      *(this + 8) |= 2u;
      *(this + 11) = v7;
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      v8 = *(a2 + 12);
      if (v8 >= 5)
      {
        [TTParagraphStyle(TTParagraphStylePersistenceAdditions) saveToArchive:];
      }

      *(this + 8) |= 4u;
      *(this + 12) = v8;
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      v9 = *(a2 + 13);
      *(this + 8) |= 8u;
      *(this + 13) = v9;
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x10) != 0)
    {
      *(this + 8) |= 0x10u;
      v10 = *(this + 7);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 7);
      if (!v11)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v11 = *(topotext::ParagraphStyle::default_instance_ + 56);
      }

      topotext::Todo::MergeFrom(v10, v11);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x20) != 0)
    {
      v12 = *(a2 + 16);
      *(this + 8) |= 0x20u;
      *(this + 16) = v12;
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x40) != 0)
    {
      v13 = *(a2 + 17);
      *(this + 8) |= 0x40u;
      *(this + 17) = v13;
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

  return std::string::append((this + 8), v18, v19);
}

std::string *topotext::Font::MergeFrom(topotext::Font *this, const topotext::Font *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 3153);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 12);
      *(this + 8) |= 2u;
      *(this + 12) = v8;
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      v9 = *(a2 + 13);
      *(this + 8) |= 4u;
      *(this + 13) = v9;
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

  return std::string::append((this + 8), v14, v15);
}

void sub_19A1EE53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::Color::MergeFrom(topotext::Color *this, const topotext::Color *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 7065);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v15 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v15;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v14 = *(a2 + 10);
  *(this + 8) |= 1u;
  *(this + 10) = v14;
  v5 = *(a2 + 8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v16 = *(a2 + 12);
  *(this + 8) |= 4u;
  *(this + 12) = v16;
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_8:
    v6 = *(a2 + 13);
    *(this + 8) |= 8u;
    *(this + 13) = v6;
  }

LABEL_9:
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

void sub_19A1EE66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::AttachmentInfo::MergeFrom(topotext::AttachmentInfo *this, const topotext::AttachmentInfo *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 4045);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v9 = *(this + 6);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
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

  return std::string::append((this + 8), v14, v15);
}

void sub_19A1EE7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::HashtagInfo::MergeFrom(topotext::HashtagInfo *this, const topotext::HashtagInfo *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 3809);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    v5 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v6 = *(this + 5);
    if (v6 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }

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

void sub_19A1EE904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

topotext::Font *topotext::Font::Font(topotext::Font *this)
{
  *this = &unk_1F0D66AF8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Font::SharedCtor(this);
  return this;
}

void sub_19A1EE98C(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::Font::SharedCtor(topotext::Font *this)
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

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void sub_19A1EEA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::Font::~Font(void **this)
{
  *this = &unk_1F0D66AF8;
  topotext::VectorTimestamp_Clock::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Font::~Font(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::Font::MergePartialFromCodedStream(topotext::Font *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v21, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v20, v21);
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
          goto LABEL_17;
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
        if (v7 == 24)
        {
          v15 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_34;
        }

LABEL_29:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      if (v9 == 2)
      {
        if (v7 == 21)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      if (v9 == 1)
      {
        break;
      }

LABEL_17:
      if (v7)
      {
        v12 = (v7 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
LABEL_43:
        v18 = 1;
        goto LABEL_45;
      }

LABEL_31:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v20, v4))
      {
        goto LABEL_44;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_29;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v10 = *(this + 5);
    if (v10 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v10))
    {
      break;
    }

    v11 = *(a2 + 1);
    if (v11 < *(a2 + 2) && *v11 == 21)
    {
      *(a2 + 1) = v11 + 1;
LABEL_24:
      v22 = 0;
      if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22))
      {
        break;
      }

      *(this + 12) = v22;
      *(this + 8) |= 2u;
      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v14 < v13 && *v14 == 24)
      {
        v15 = v14 + 1;
        *(a2 + 1) = v15;
LABEL_34:
        if (v15 >= v13 || (v16 = *v15, v16 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13))
          {
            break;
          }

          v17 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 8) |= 4u;
        if (v17 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v18 = 1;
          *(a2 + 36) = 1;
          goto LABEL_45;
        }
      }
    }
  }

LABEL_44:
  v18 = 0;
LABEL_45:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v20);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v21);
  return v18;
}

void sub_19A1EEE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Font::SerializeWithCachedSizes(topotext::Font *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
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

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 12), a3);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(this + 13), a2, a4);
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

uint64_t topotext::Font::ByteSize(topotext::Font *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
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
        v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v10 = v11 + 1;
        v2 = *(this + 8);
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
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 4) != 0)
    {
      v12 = *(this + 13);
      if (v12 >= 0x80)
      {
        v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      }

      else
      {
        v13 = 2;
      }

      v4 += v13;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = *(this + 31);
  if (v14 < 0)
  {
    v14 = *(this + 2);
  }

  result = (v4 + v14);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Font::CheckTypeAndMergeFrom(topotext::Font *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Font::MergeFrom(this, lpsrc);
}

void topotext::ParagraphStyle::~ParagraphStyle(void **this)
{
  *this = &unk_1F0D66B70;
  topotext::ParagraphStyle::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::ParagraphStyle::~ParagraphStyle(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::ParagraphStyle::SharedDtor(topotext::ParagraphStyle *this)
{
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::ParagraphStyle::default_instance_ != this)
  {
    v2 = *(this + 7);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t topotext::Todo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 40);
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

    *(this + 48) = 0;
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

uint64_t topotext::ParagraphStyle::MergePartialFromCodedStream(topotext::ParagraphStyle *this, google::protobuf::io::CodedInputStream *a2)
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
              goto LABEL_36;
            }

            v17 = *(a2 + 1);
            v16 = *(a2 + 2);
            if (v17 >= v16 || (v18 = *v17, v18 < 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
              {
                goto LABEL_107;
              }

              v19 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v18;
              v19 = v17 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 8) |= 1u;
            if (v19 < v16 && *v19 == 16)
            {
              v23 = v19 + 1;
              *(a2 + 1) = v23;
LABEL_46:
              v47 = 0;
              if (v23 >= v16 || (v24 = *v23, (v24 & 0x80000000) != 0))
              {
                if ((google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47) & 1) == 0)
                {
                  goto LABEL_107;
                }

                v24 = v47;
              }

              else
              {
                *(a2 + 1) = v23 + 1;
              }

              if (v24 > 4)
              {
                google::protobuf::io::CodedOutputStream::WriteVarint32(v45, v7);
                google::protobuf::io::CodedOutputStream::WriteVarint32(v45, v24);
              }

              else
              {
                *(this + 8) |= 2u;
                *(this + 11) = v24;
              }

              v25 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v25 < v12 && *v25 == 24)
              {
                v13 = v25 + 1;
                *(a2 + 1) = v13;
LABEL_57:
                v47 = 0;
                if (v13 >= v12 || (v26 = *v13, (v26 & 0x80000000) != 0))
                {
                  if ((google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47) & 1) == 0)
                  {
                    goto LABEL_107;
                  }

                  v26 = v47;
                }

                else
                {
                  *(a2 + 1) = v13 + 1;
                }

                if (v26 > 4)
                {
                  google::protobuf::io::CodedOutputStream::WriteVarint32(v45, v7);
                  google::protobuf::io::CodedOutputStream::WriteVarint32(v45, v26);
                }

                else
                {
                  *(this + 8) |= 4u;
                  *(this + 12) = v26;
                }

                v27 = *(a2 + 1);
                v20 = *(a2 + 2);
                if (v27 < v20 && *v27 == 32)
                {
                  v21 = v27 + 1;
                  *(a2 + 1) = v21;
                  goto LABEL_68;
                }
              }
            }

            break;
          case 2u:
            if (v7 != 16)
            {
              goto LABEL_36;
            }

            v23 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_46;
          case 3u:
            if (v7 == 24)
            {
              v13 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_57;
            }

LABEL_36:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_108;
            }

LABEL_38:
            if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v45, v4))
            {
              goto LABEL_107;
            }

            break;
          default:
            goto LABEL_6;
        }
      }

      if (v7 >> 3 > 5)
      {
        break;
      }

      if (v10 == 4)
      {
        if (v7 != 32)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
LABEL_68:
        v47 = 0;
        if (v21 >= v20 || (v28 = *v21, (v28 & 0x80000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
          {
            goto LABEL_107;
          }

          v28 = v47;
          v29 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v29 = v21 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 13) = v28;
        v11 = *(this + 8) | 8;
        *(this + 8) = v11;
        if (v29 < v20 && *v29 == 42)
        {
          *(a2 + 1) = v29 + 1;
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_6;
        }

        if (v7 != 42)
        {
          goto LABEL_36;
        }

        v11 = *(this + 8);
LABEL_76:
        *(this + 8) = v11 | 0x10;
        v30 = *(this + 7);
        if (!v30)
        {
          operator new();
        }

        v47 = 0;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
          {
            goto LABEL_107;
          }
        }

        else
        {
          v47 = *v31;
          *(a2 + 1) = v31 + 1;
        }

        v32 = *(a2 + 14);
        v33 = *(a2 + 15);
        *(a2 + 14) = v32 + 1;
        if (v32 >= v33 || (v34 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47), !topotext::Todo::MergePartialFromCodedStream(v30, a2)) || *(a2 + 36) != 1)
        {
LABEL_107:
          v43 = 0;
          goto LABEL_109;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v34);
        v35 = *(a2 + 14);
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v37 < 0 == v36)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v38 < v14 && *v38 == 48)
        {
          v22 = v38 + 1;
          *(a2 + 1) = v22;
LABEL_90:
          if (v22 >= v14 || (v39 = *v22, v39 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16))
            {
              goto LABEL_107;
            }

            v40 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            *(this + 16) = v39;
            v40 = v22 + 1;
            *(a2 + 1) = v40;
          }

          *(this + 8) |= 0x20u;
          if (v40 < v14 && *v40 == 56)
          {
            v15 = v40 + 1;
            *(a2 + 1) = v15;
            goto LABEL_98;
          }
        }
      }
    }

    if (v10 == 6)
    {
      if (v7 == 48)
      {
        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_90;
      }

      goto LABEL_36;
    }

    if (v10 != 7)
    {
      break;
    }

    if (v7 != 56)
    {
      goto LABEL_36;
    }

    v15 = *(a2 + 1);
    v14 = *(a2 + 2);
LABEL_98:
    if (v15 >= v14 || (v41 = *v15, v41 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17))
      {
        goto LABEL_107;
      }

      v42 = *(a2 + 1);
      v14 = *(a2 + 2);
    }

    else
    {
      *(this + 17) = v41;
      v42 = v15 + 1;
      *(a2 + 1) = v42;
    }

    *(this + 8) |= 0x40u;
    if (v42 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v43 = 1;
      *(a2 + 36) = 1;
      goto LABEL_109;
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
    goto LABEL_38;
  }

LABEL_108:
  v43 = 1;
LABEL_109:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v45);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v46);
  return v43;
}

void sub_19A1EF78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x10B3C40417120EDLL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t topotext::ParagraphStyle::SerializeWithCachedSizes(topotext::ParagraphStyle *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(v5 + 8);
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

  this = google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 11), a2, a4);
  v6 = *(v5 + 8);
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
  this = google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 8);
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
  this = google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 13), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 7);
  if (!v9)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v9 = *(topotext::ParagraphStyle::default_instance_ + 56);
  }

  google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_18:
  google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 16), a2, a4);
  if ((*(v5 + 8) & 0x40) != 0)
  {
LABEL_8:
    google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 17), a2, a4);
  }

LABEL_9:
  v7 = *(v5 + 31);
  if (v7 < 0)
  {
    v8 = *(v5 + 1);
    v7 = *(v5 + 2);
  }

  else
  {
    v8 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::ParagraphStyle::ByteSize(topotext::ParagraphStyle *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_48;
  }

  if (*(this + 32))
  {
    v4 = *(this + 10);
    if (v4 >= 0x80)
    {
      v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 11);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 12);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(this + 13);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    v15 = *(this + 16);
    if (v15 >= 0x80)
    {
      v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v16 = 2;
    }

    v3 += v16;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_34:
  v11 = *(this + 7);
  if (!v11)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v11 = *(topotext::ParagraphStyle::default_instance_ + 56);
  }

  v12 = topotext::Todo::ByteSize(v11);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
  }

  else
  {
    v14 = 1;
  }

  v3 += v13 + v14 + 1;
  v2 = *(this + 8);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v2 & 0x40) != 0)
  {
LABEL_44:
    v17 = *(this + 17);
    if (v17 >= 0x80)
    {
      v18 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
  }

LABEL_48:
  v19 = *(this + 31);
  if (v19 < 0)
  {
    v19 = *(this + 2);
  }

  result = (v3 + v19);
  *(this + 9) = result;
  return result;
}

std::string *topotext::ParagraphStyle::CheckTypeAndMergeFrom(topotext::ParagraphStyle *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::ParagraphStyle::MergeFrom(this, lpsrc);
}

std::string *topotext::Todo::MergeFrom(topotext::Todo *this, const topotext::Todo *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 6777);
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
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 48);
      *(this + 8) |= 2u;
      *(this + 48) = v8;
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

void sub_19A1EFC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

topotext::HashtagInfo *topotext::HashtagInfo::HashtagInfo(topotext::HashtagInfo *this)
{
  *this = &unk_1F0D66BE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::HashtagInfo::SharedCtor(this);
  return this;
}

void sub_19A1EFCF4(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::HashtagInfo::SharedCtor(topotext::HashtagInfo *this)
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

  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_19A1EFDBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::HashtagInfo::~HashtagInfo(void **this)
{
  *this = &unk_1F0D66BE8;
  topotext::VectorTimestamp_Clock::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::HashtagInfo::~HashtagInfo(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::HashtagInfo::MergePartialFromCodedStream(topotext::HashtagInfo *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v14, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v13, v14);
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
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 == 10)
      {
        break;
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

      if (v10)
      {
        v11 = 1;
        goto LABEL_23;
      }

      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v13, v4))
      {
        goto LABEL_20;
      }
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
LABEL_20:
      v11 = 0;
      goto LABEL_23;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v11 = 1;
  *(a2 + 36) = 1;
LABEL_23:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v14);
  return v11;
}

void sub_19A1F0080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::HashtagInfo::SerializeWithCachedSizes(topotext::HashtagInfo *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
  }

  v4 = *(this + 31);
  if (v4 < 0)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  else
  {
    v5 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v5, v4);
}

uint64_t topotext::HashtagInfo::ByteSize(topotext::HashtagInfo *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
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
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    v2 = v8 + v4;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v10 = *(this + 2);
  }

  result = (v10 + v2);
  *(this + 9) = result;
  return result;
}

std::string *topotext::HashtagInfo::CheckTypeAndMergeFrom(topotext::HashtagInfo *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::HashtagInfo::MergeFrom(this, lpsrc);
}

topotext::AttachmentInfo *topotext::AttachmentInfo::AttachmentInfo(topotext::AttachmentInfo *this)
{
  *this = &unk_1F0D66C60;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::AttachmentInfo::SharedCtor(this);
  return this;
}

void sub_19A1F0294(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::AttachmentInfo::SharedCtor(topotext::AttachmentInfo *this)
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

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_19A1F0360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::AttachmentInfo::~AttachmentInfo(void **this)
{
  *this = &unk_1F0D66C60;
  topotext::AttachmentInfo::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::AttachmentInfo::~AttachmentInfo(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::AttachmentInfo::SharedDtor(topotext::AttachmentInfo *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x19A8FD070](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 6);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x19A8FD070](v3, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

uint64_t topotext::AttachmentInfo::MergePartialFromCodedStream(topotext::AttachmentInfo *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v16, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v15, v16);
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

      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_23;
      }

LABEL_26:
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
LABEL_37:
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v12 = *(this + 6);
      if (v12 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v12))
      {
LABEL_34:
        v13 = 0;
        goto LABEL_36;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v13 = 1;
        *(a2 + 36) = 1;
        goto LABEL_36;
      }
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_37;
      }

      v9 = *(this + 5);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
      {
        goto LABEL_34;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_23:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_35;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v15, v4))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_16:
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
    goto LABEL_20;
  }

LABEL_35:
  v13 = 1;
LABEL_36:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v15);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v16);
  return v13;
}

void sub_19A1F078C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::AttachmentInfo::SerializeWithCachedSizes(topotext::AttachmentInfo *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
    v4 = *(this + 8);
  }

  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 6), a2);
  }

  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t topotext::AttachmentInfo::ByteSize(topotext::AttachmentInfo *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

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
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
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
  }

LABEL_24:
  v17 = *(this + 31);
  if (v17 < 0)
  {
    v17 = *(this + 2);
  }

  result = (v3 + v17);
  *(this + 9) = result;
  return result;
}

std::string *topotext::AttachmentInfo::CheckTypeAndMergeFrom(topotext::AttachmentInfo *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::AttachmentInfo::MergeFrom(this, lpsrc);
}

topotext::Attachment *topotext::Attachment::Attachment(topotext::Attachment *this)
{
  *this = &unk_1F0D66CD8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  topotext::Attachment::SharedCtor(this);
  return this;
}

void sub_19A1F0A48(_Unwind_Exception *a1)
{
  v5 = v2;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v5);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v3);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v4);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

double topotext::Attachment::SharedCtor(topotext::Attachment *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v5[0] = &unk_1F0D671C0;
    v5[1] = google::protobuf::internal::InitEmptyString;
    v6 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v5);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  *(this + 6) = google::protobuf::internal::empty_string_;
  *(this + 7) = 0;
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 10) = v3;
  *(this + 11) = v3;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 39) = v3;
  *(this + 40) = 0;
  *(this + 21) = v3;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = v3;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  *(this + 37) = v3;
  *(this + 38) = v3;
  *(this + 4) = 0;
  *(this + 5) = v3;
  return result;
}

void sub_19A1F0B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *topotext::Attachment::MergeFrom(topotext::Attachment *this, const topotext::Attachment *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v62, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 5330);
    v4 = google::protobuf::internal::LogMessage::operator<<(v62, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v61, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v62[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>((this + 112), (a2 + 112));
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>((this + 200));
  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_39;
  }

  if (v6)
  {
    v7 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v8 = *(this + 5);
    if (v8 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v8, v7);
    v6 = *(a2 + 8);
  }

  if ((v6 & 2) != 0)
  {
    v9 = *(a2 + 6);
    *(this + 8) |= 2u;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v10 = *(this + 6);
    if (v10 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v10, v9);
    v6 = *(a2 + 8);
  }

  if ((v6 & 4) != 0)
  {
    v11 = *(a2 + 14);
    *(this + 8) |= 4u;
    *(this + 14) = v11;
    v6 = *(a2 + 8);
    if ((v6 & 8) == 0)
    {
LABEL_16:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(a2 + 15);
  *(this + 8) |= 8u;
  *(this + 15) = v12;
  v6 = *(a2 + 8);
  if ((v6 & 0x10) == 0)
  {
LABEL_17:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    v15 = *(a2 + 9);
    *(this + 8) |= 0x20u;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v16 = *(this + 9);
    if (v16 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v16, v15);
    v6 = *(a2 + 8);
    if ((v6 & 0x40) == 0)
    {
LABEL_19:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_23:
  v13 = *(a2 + 8);
  *(this + 8) |= 0x10u;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v14 = *(this + 8);
  if (v14 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  v5 = std::string::operator=(v14, v13);
  v6 = *(a2 + 8);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_31:
  v17 = *(a2 + 10);
  *(this + 8) |= 0x40u;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v18 = *(this + 10);
  if (v18 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  v5 = std::string::operator=(v18, v17);
  v6 = *(a2 + 8);
  if ((v6 & 0x80) != 0)
  {
LABEL_35:
    v19 = *(a2 + 11);
    *(this + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v20 = *(this + 11);
    if (v20 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v20, v19);
    v6 = *(a2 + 8);
  }

LABEL_39:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 8) |= 0x100u;
    v21 = *(this + 12);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 12);
    if (!v22)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(v5);
      v22 = *(topotext::Attachment::default_instance_ + 96);
    }

    v5 = topotext::Location::MergeFrom(v21, v22);
    v6 = *(a2 + 8);
  }

  if ((v6 & 0x200) != 0)
  {
    *(this + 8) |= 0x200u;
    v23 = *(this + 13);
    if (!v23)
    {
      operator new();
    }

    v24 = *(a2 + 13);
    if (!v24)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(v5);
      v24 = *(topotext::Attachment::default_instance_ + 104);
    }

    topotext::Media::MergeFrom(v23, v24);
    v6 = *(a2 + 8);
  }

  if ((v6 & 0x800) != 0)
  {
    v43 = *(a2 + 34);
    *(this + 8) |= 0x800u;
    *(this + 34) = v43;
    v6 = *(a2 + 8);
    if ((v6 & 0x1000) == 0)
    {
LABEL_54:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_105;
    }
  }

  else if ((v6 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

  v44 = *(a2 + 35);
  *(this + 8) |= 0x1000u;
  *(this + 35) = v44;
  v6 = *(a2 + 8);
  if ((v6 & 0x2000) == 0)
  {
LABEL_55:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_106;
  }

LABEL_105:
  v45 = *(a2 + 40);
  *(this + 8) |= 0x2000u;
  *(this + 40) = v45;
  v6 = *(a2 + 8);
  if ((v6 & 0x4000) == 0)
  {
LABEL_56:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_106:
  v46 = *(a2 + 18);
  *(this + 8) |= 0x4000u;
  *(this + 18) = v46;
  v6 = *(a2 + 8);
  if ((v6 & 0x8000) != 0)
  {
LABEL_57:
    v25 = *(a2 + 19);
    *(this + 8) |= 0x8000u;
    *(this + 19) = v25;
    v6 = *(a2 + 8);
  }

LABEL_58:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_71;
  }

  if ((v6 & 0x10000) != 0)
  {
    v26 = *(a2 + 21);
    *(this + 8) |= 0x10000u;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v27 = *(this + 21);
    if (v27 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v27, v26);
    v6 = *(a2 + 8);
  }

  if ((v6 & 0x20000) != 0)
  {
    v47 = *(a2 + 164);
    *(this + 8) |= 0x20000u;
    *(this + 164) = v47;
    v6 = *(a2 + 8);
    if ((v6 & 0x40000) == 0)
    {
LABEL_66:
      if ((v6 & 0x80000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_110;
    }
  }

  else if ((v6 & 0x40000) == 0)
  {
    goto LABEL_66;
  }

  v48 = *(a2 + 22);
  *(this + 8) |= 0x40000u;
  *(this + 22) = v48;
  v6 = *(a2 + 8);
  if ((v6 & 0x80000) == 0)
  {
LABEL_67:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_111;
  }

LABEL_110:
  v49 = *(a2 + 23);
  *(this + 8) |= 0x80000u;
  *(this + 23) = v49;
  v6 = *(a2 + 8);
  if ((v6 & 0x100000) == 0)
  {
LABEL_68:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_112;
  }

LABEL_111:
  v50 = *(a2 + 80);
  *(this + 8) |= 0x100000u;
  *(this + 80) = v50;
  v6 = *(a2 + 8);
  if ((v6 & 0x200000) == 0)
  {
LABEL_69:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_112:
  v51 = *(a2 + 24);
  *(this + 8) |= 0x200000u;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v52 = *(this + 24);
  if (v52 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v52, v51);
  v6 = *(a2 + 8);
  if ((v6 & 0x800000) != 0)
  {
LABEL_70:
    v28 = *(a2 + 28);
    *(this + 8) |= 0x800000u;
    *(this + 28) = v28;
    v6 = *(a2 + 8);
  }

LABEL_71:
  if (!HIBYTE(v6))
  {
    goto LABEL_80;
  }

  if ((v6 & 0x1000000) != 0)
  {
    v53 = *(a2 + 29);
    *(this + 8) |= 0x1000000u;
    *(this + 29) = v53;
    v6 = *(a2 + 8);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_74:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_119;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_74;
  }

  v54 = *(a2 + 30);
  *(this + 8) |= 0x2000000u;
  *(this + 30) = v54;
  v6 = *(a2 + 8);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_75:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_120;
  }

LABEL_119:
  v55 = *(a2 + 31);
  *(this + 8) |= 0x4000000u;
  *(this + 31) = v55;
  v6 = *(a2 + 8);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_76:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_121;
  }

LABEL_120:
  v56 = *(a2 + 32);
  *(this + 8) |= 0x8000000u;
  *(this + 32) = v56;
  v6 = *(a2 + 8);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_77:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_122;
  }

LABEL_121:
  v57 = *(a2 + 33);
  *(this + 8) |= 0x10000000u;
  *(this + 33) = v57;
  v6 = *(a2 + 8);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_78:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_123:
    v59 = *(a2 + 35);
    *(this + 8) |= 0x40000000u;
    *(this + 35) = v59;
    if ((*(a2 + 8) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_124;
  }

LABEL_122:
  v58 = *(a2 + 34);
  *(this + 8) |= 0x20000000u;
  *(this + 34) = v58;
  v6 = *(a2 + 8);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_123;
  }

LABEL_79:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_80;
  }

LABEL_124:
  v60 = *(a2 + 36);
  *(this + 8) |= 0x80000000;
  *(this + 36) = v60;
LABEL_80:
  LOBYTE(v29) = *(a2 + 36);
  if (v29)
  {
    if (*(a2 + 36))
    {
      v30 = *(a2 + 37);
      *(this + 9) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v31 = *(this + 37);
      if (v31 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v31, v30);
      v29 = *(a2 + 9);
    }

    if ((v29 & 2) != 0)
    {
      v32 = *(a2 + 38);
      *(this + 9) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v33 = *(this + 38);
      if (v33 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v33, v32);
      v29 = *(a2 + 9);
    }

    if ((v29 & 4) != 0)
    {
      v34 = *(a2 + 39);
      *(this + 9) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v35 = *(this + 39);
      if (v35 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v35, v34);
    }
  }

  v38 = *(a2 + 1);
  v37 = a2 + 8;
  v36 = v38;
  v39 = v37[23];
  if (v39 >= 0)
  {
    v40 = v37;
  }

  else
  {
    v40 = v36;
  }

  if (v39 >= 0)
  {
    v41 = v37[23];
  }

  else
  {
    v41 = *(v37 + 1);
  }

  return std::string::append((this + 8), v40, v41);
}

void topotext::Attachment::~Attachment(topotext::Attachment *this)
{
  *this = &unk_1F0D66CD8;
  topotext::Attachment::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 25);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 14);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Attachment::~Attachment(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::Attachment::SharedDtor(topotext::Attachment *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x19A8FD070](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 6);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x19A8FD070](v3, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
  }

  if (!v2)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v5 = *(v1 + 8);
  if (v5 != v2 && v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x19A8FD070](v5, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v6 = *(v1 + 9);
  if (v6 != v2 && v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x19A8FD070](v6, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v7 = *(v1 + 10);
  if (v7 != v2 && v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x19A8FD070](v7, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v8 = *(v1 + 11);
  if (v8 != v2 && v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    this = MEMORY[0x19A8FD070](v8, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v9 = *(v1 + 21);
  if (v9 != v2 && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x19A8FD070](v9, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v10 = *(v1 + 24);
  if (v10 != v2 && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    this = MEMORY[0x19A8FD070](v10, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v11 = *(v1 + 37);
  if (v11 != v2 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x19A8FD070](v11, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v12 = *(v1 + 38);
  if (v12 != v2 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x19A8FD070](v12, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v13 = *(v1 + 39);
  if (v13 && v13 != v2)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x19A8FD070](v13, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::Attachment::default_instance_ != v1)
  {
    v14 = *(v1 + 12);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = *(v1 + 13);
    if (v15)
    {
      v16 = *(*v15 + 8);

      v16();
    }
  }
}

uint64_t topotext::Attachment::Clear(topotext::Attachment *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 7) = 0;
    if (v2)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v3 = *(this + 5);
      if (v3 != google::protobuf::internal::empty_string_)
      {
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
    }

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v4 = *(this + 6);
      if (v4 != google::protobuf::internal::empty_string_)
      {
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
    }

    if ((*(this + 32) & 0x10) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v5 = *(this + 8);
      if (v5 != google::protobuf::internal::empty_string_)
      {
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
    }

    if ((*(this + 32) & 0x20) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v6 = *(this + 9);
      if (v6 != google::protobuf::internal::empty_string_)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    if ((*(this + 32) & 0x40) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v7 = *(this + 10);
      if (v7 != google::protobuf::internal::empty_string_)
      {
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
    }

    if ((*(this + 32) & 0x80) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v8 = *(this + 11);
      if (v8 != google::protobuf::internal::empty_string_)
      {
        if (*(v8 + 23) < 0)
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
    }
  }

  v9 = *(this + 8);
  if ((v9 & 0xFB00) != 0)
  {
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 40) = 0;
    *(this + 19) = 0;
    if ((v9 & 0x100) != 0)
    {
      v10 = *(this + 12);
      if (v10)
      {
        topotext::Location::Clear(v10);
        v9 = *(this + 8);
      }
    }

    if ((v9 & 0x200) != 0)
    {
      v11 = *(this + 13);
      if (v11)
      {
        topotext::Media::Clear(v11);
        v9 = *(this + 8);
      }
    }
  }

  if ((v9 & 0xBF0000) != 0)
  {
    *(this + 22) = 0;
    *(this + 23) = 0;
    if ((v9 & 0x10000) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v12 = *(this + 21);
      if (v12 != google::protobuf::internal::empty_string_)
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    *(this + 164) = 0;
    *(this + 80) = 0;
    if ((*(this + 34) & 0x20) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v13 = *(this + 24);
      if (v13 != google::protobuf::internal::empty_string_)
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    *(this + 28) = 0;
    v9 = *(this + 8);
  }

  if (HIBYTE(v9))
  {
    *(this + 232) = 0u;
    *(this + 264) = 0u;
    *(this + 280) = 0u;
    *(this + 248) = 0u;
  }

  v14 = *(this + 9);
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v15 = *(this + 37);
      if (v15 != google::protobuf::internal::empty_string_)
      {
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 8) = 0;
        }

        else
        {
          *v15 = 0;
          *(v15 + 23) = 0;
        }
      }
    }

    if ((*(this + 36) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v16 = *(this + 38);
      if (v16 != google::protobuf::internal::empty_string_)
      {
        if (*(v16 + 23) < 0)
        {
          **v16 = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          *v16 = 0;
          *(v16 + 23) = 0;
        }
      }
    }

    if ((*(this + 36) & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v17 = *(this + 39);
      if (v17 != google::protobuf::internal::empty_string_)
      {
        if (*(v17 + 23) < 0)
        {
          **v17 = 0;
          *(v17 + 8) = 0;
        }

        else
        {
          *v17 = 0;
          *(v17 + 23) = 0;
        }
      }
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 112);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 200);
  *(this + 4) = 0;
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

uint64_t topotext::Location::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0xF) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    if ((v1 & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 56);
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

    *(this + 64) = 0;
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

uint64_t topotext::Media::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0x1F) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 40);
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
      {
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
    }

    if ((*(this + 32) & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v4 = *(this + 56);
      if (v4 != google::protobuf::internal::empty_string_)
      {
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
    }

    if ((*(this + 32) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v5 = *(this + 64);
      if (v5 != google::protobuf::internal::empty_string_)
      {
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
    }

    *(this + 72) = 0;
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

uint64_t topotext::Attachment::MergePartialFromCodedStream(topotext::Attachment *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v113, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v112, v113);
LABEL_2:
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
LABEL_351:
        v110 = 1;
        goto LABEL_352;
      }

LABEL_138:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v10, v112, v4))
      {
        goto LABEL_350;
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
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_136;
        }

        *(this + 8) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v13 = *(this + 5);
        if (v13 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v13))
        {
          goto LABEL_350;
        }

        v14 = *(a2 + 1);
        if (v14 >= *(a2 + 2) || *v14 != 26)
        {
          continue;
        }

        *(a2 + 1) = v14 + 1;
LABEL_56:
        *(this + 8) |= 2u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v17 = *(this + 6);
        if (v17 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v17))
        {
          goto LABEL_350;
        }

        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 37)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_63:
        v114[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 14) = v114[0];
        *(this + 8) |= 4u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 45)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_67:
        v114[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 15) = v114[0];
        v16 = *(this + 8) | 8;
        *(this + 8) = v16;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 50)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_71:
        *(this + 8) = v16 | 0x10;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v21 = *(this + 8);
        if (v21 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v21))
        {
          goto LABEL_350;
        }

        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 58)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_85:
        *(this + 8) |= 0x20u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v27 = *(this + 9);
        if (v27 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v27))
        {
          goto LABEL_350;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 66)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_97:
        *(this + 8) |= 0x40u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v32 = *(this + 10);
        if (v32 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v32))
        {
          goto LABEL_350;
        }

        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 74)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_104:
        *(this + 8) |= 0x80u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v34 = *(this + 11);
        if (v34 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v34))
        {
          goto LABEL_350;
        }

        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 82)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_116:
        *(this + 8) |= 0x100u;
        v37 = *(this + 12);
        if (!v37)
        {
          operator new();
        }

        v114[0] = 0;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            goto LABEL_350;
          }
        }

        else
        {
          v114[0] = *v38;
          *(a2 + 1) = v38 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 >= v42)
        {
          goto LABEL_350;
        }

        v43 = google::protobuf::io::CodedInputStream::PushLimit(a2, v114[0]);
        if (!topotext::Location::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_350;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v43);
        v44 = *(a2 + 14);
        v45 = __OFSUB__(v44, 1);
        v46 = v44 - 1;
        if (v46 < 0 == v45)
        {
          *(a2 + 14) = v46;
        }

        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 != 90)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_149:
        *(this + 8) |= 0x200u;
        v48 = *(this + 13);
        if (!v48)
        {
          operator new();
        }

        v114[0] = 0;
        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            goto LABEL_350;
          }
        }

        else
        {
          v114[0] = *v49;
          *(a2 + 1) = v49 + 1;
        }

        v50 = *(a2 + 14);
        v51 = *(a2 + 15);
        *(a2 + 14) = v50 + 1;
        if (v50 >= v51)
        {
          goto LABEL_350;
        }

        v52 = google::protobuf::io::CodedInputStream::PushLimit(a2, v114[0]);
        if (!topotext::Media::MergePartialFromCodedStream(v48, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_350;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v52);
        v53 = *(a2 + 14);
        v45 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v45)
        {
          *(a2 + 14) = v54;
        }

        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 98)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v55 + 1;
LABEL_163:
          v56 = *(this + 31);
          v57 = *(this + 30);
          if (v57 >= v56)
          {
            if (v56 == *(this + 32))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 14, v56 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<topotext::PreviewImage>::New();
          }

          v58 = *(this + 14);
          *(this + 30) = v57 + 1;
          v59 = *(v58 + 8 * v57);
          v114[0] = 0;
          v60 = *(a2 + 1);
          if (v60 >= *(a2 + 2) || *v60 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
            {
              goto LABEL_350;
            }
          }

          else
          {
            v114[0] = *v60;
            *(a2 + 1) = v60 + 1;
          }

          v61 = *(a2 + 14);
          v62 = *(a2 + 15);
          *(a2 + 14) = v61 + 1;
          if (v61 >= v62)
          {
            goto LABEL_350;
          }

          v63 = google::protobuf::io::CodedInputStream::PushLimit(a2, v114[0]);
          if (!topotext::PreviewImage::MergePartialFromCodedStream(v59, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_350;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v63);
          v64 = *(a2 + 14);
          v45 = __OFSUB__(v64, 1);
          v65 = v64 - 1;
          if (v65 < 0 == v45)
          {
            *(a2 + 14) = v65;
          }

          v55 = *(a2 + 1);
          if (v55 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v66 = *v55;
        }

        while (v66 == 98);
        if (v66 != 109)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_181:
        v114[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 34) = v114[0];
        *(this + 8) |= 0x800u;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 != 117)
        {
          continue;
        }

        *(a2 + 1) = v67 + 1;
LABEL_185:
        v114[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 35) = v114[0];
        *(this + 8) |= 0x1000u;
        v68 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v68 >= v30 || *v68 != 120)
        {
          continue;
        }

        v31 = v68 + 1;
        *(a2 + 1) = v31;
LABEL_189:
        v114[0] = 0;
        if (v31 >= v30 || (v69 = *v31, (v69 & 0x80000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            goto LABEL_350;
          }

          v69 = v114[0];
          v70 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v70 = (v31 + 1);
          *(a2 + 1) = v70;
        }

        *(this + 40) = v69;
        *(this + 8) |= 0x2000u;
        if (v30 - v70 < 2 || *v70 != 129 || v70[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v70 + 2;
LABEL_198:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 18) = *v114;
        *(this + 8) |= 0x4000u;
        v71 = *(a2 + 1);
        if (*(a2 + 4) - v71 < 2 || *v71 != 137 || v71[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v71 + 2;
LABEL_203:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 19) = *v114;
        v15 = *(this + 8) | 0x8000;
        *(this + 8) = v15;
        v72 = *(a2 + 1);
        if (*(a2 + 4) - v72 < 2 || *v72 != 146 || v72[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v72 + 2;
LABEL_208:
        *(this + 8) = v15 | 0x10000;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v73 = *(this + 21);
        if (v73 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v73))
        {
          goto LABEL_350;
        }

        v74 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v23 - v74 < 2 || *v74 != 152 || v74[1] != 1)
        {
          continue;
        }

        v24 = (v74 + 2);
        *(a2 + 1) = v24;
LABEL_216:
        *v114 = 0;
        if (v24 >= v23 || (v75 = *v24, v75 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v114))
          {
            goto LABEL_350;
          }

          v75 = *v114;
          v76 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v76 = (v24 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 164) = v75 != 0;
        *(this + 8) |= 0x20000u;
        if (v23 - v76 < 2 || *v76 != 160 || v76[1] != 1)
        {
          continue;
        }

        v36 = (v76 + 2);
        *(a2 + 1) = v36;
LABEL_225:
        *v114 = 0;
        if (v36 >= v23 || (v77 = *v36, v77 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v114))
          {
            goto LABEL_350;
          }

          v77 = *v114;
          v78 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v78 = (v36 + 1);
          *(a2 + 1) = v78;
        }

        *(this + 22) = v77;
        *(this + 8) |= 0x40000u;
        if (v23 - v78 < 2 || *v78 != 169 || v78[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v78 + 2;
LABEL_234:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 23) = *v114;
        *(this + 8) |= 0x80000u;
        v79 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v25 - v79 < 2 || *v79 != 176 || v79[1] != 1)
        {
          continue;
        }

        v26 = (v79 + 2);
        *(a2 + 1) = v26;
LABEL_239:
        v114[0] = 0;
        if (v26 >= v25 || (v80 = *v26, (v80 & 0x80000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            goto LABEL_350;
          }

          v80 = v114[0];
          v81 = *(a2 + 1);
          v25 = *(a2 + 2);
        }

        else
        {
          v81 = (v26 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 80) = v80;
        v29 = *(this + 8) | 0x100000;
        *(this + 8) = v29;
        if (v25 - v81 < 2 || *v81 != 186 || v81[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v81 + 2;
LABEL_248:
        *(this + 8) = v29 | 0x200000;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v82 = *(this + 24);
        if (v82 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v82))
        {
          goto LABEL_350;
        }

        v83 = *(a2 + 1);
        if (*(a2 + 4) - v83 < 2 || *v83 != 194 || v83[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v83 + 2;
LABEL_256:
          v84 = *(this + 53);
          v85 = *(this + 52);
          if (v85 >= v84)
          {
            if (v84 == *(this + 54))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 25, v84 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
          }

          v86 = *(this + 25);
          *(this + 52) = v85 + 1;
          v87 = *(v86 + 8 * v85);
          v114[0] = 0;
          v88 = *(a2 + 1);
          if (v88 >= *(a2 + 2) || *v88 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
            {
              goto LABEL_350;
            }
          }

          else
          {
            v114[0] = *v88;
            *(a2 + 1) = v88 + 1;
          }

          v89 = *(a2 + 14);
          v90 = *(a2 + 15);
          *(a2 + 14) = v89 + 1;
          if (v89 >= v90)
          {
            goto LABEL_350;
          }

          v91 = google::protobuf::io::CodedInputStream::PushLimit(a2, v114[0]);
          if (!topotext::Attachment::MergePartialFromCodedStream(v87, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_350;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v91);
          v92 = *(a2 + 14);
          v45 = __OFSUB__(v92, 1);
          v93 = v92 - 1;
          if (v93 < 0 == v45)
          {
            *(a2 + 14) = v93;
          }

          v83 = *(a2 + 1);
          v39 = *(a2 + 2);
          if (v39 - v83 <= 1)
          {
            goto LABEL_2;
          }

          v94 = *v83;
          if (v94 == 200)
          {
            break;
          }

          if (v94 != 194 || v83[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v83[1] != 1)
        {
          continue;
        }

        v40 = (v83 + 2);
        *(a2 + 1) = v40;
LABEL_277:
        *v114 = 0;
        if (v40 >= v39 || (v95 = *v40, v95 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v114))
          {
            goto LABEL_350;
          }

          v95 = *v114;
          v96 = *(a2 + 1);
          v39 = *(a2 + 2);
        }

        else
        {
          v96 = (v40 + 1);
          *(a2 + 1) = v96;
        }

        *(this + 28) = v95;
        *(this + 8) |= 0x800000u;
        if (v39 - v96 < 2 || *v96 != 209 || v96[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v96 + 2;
LABEL_286:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 29) = *v114;
        *(this + 8) |= 0x1000000u;
        v97 = *(a2 + 1);
        if (*(a2 + 4) - v97 < 2 || *v97 != 217 || v97[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v97 + 2;
LABEL_291:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 30) = *v114;
        *(this + 8) |= 0x2000000u;
        v98 = *(a2 + 1);
        if (*(a2 + 4) - v98 < 2 || *v98 != 225 || v98[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v98 + 2;
LABEL_296:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 31) = *v114;
        *(this + 8) |= 0x4000000u;
        v99 = *(a2 + 1);
        if (*(a2 + 4) - v99 < 2 || *v99 != 233 || v99[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v99 + 2;
LABEL_301:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 32) = *v114;
        *(this + 8) |= 0x8000000u;
        v100 = *(a2 + 1);
        if (*(a2 + 4) - v100 < 2 || *v100 != 241 || v100[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v100 + 2;
LABEL_306:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 33) = *v114;
        *(this + 8) |= 0x10000000u;
        v101 = *(a2 + 1);
        if (*(a2 + 4) - v101 < 2 || *v101 != 249 || v101[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v101 + 2;
LABEL_311:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 34) = *v114;
        *(this + 8) |= 0x20000000u;
        v102 = *(a2 + 1);
        if (*(a2 + 4) - v102 < 2 || *v102 != 129 || v102[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v102 + 2;
LABEL_316:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 35) = *v114;
        *(this + 8) |= 0x40000000u;
        v103 = *(a2 + 1);
        if (*(a2 + 4) - v103 < 2 || *v103 != 137 || v103[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v103 + 2;
LABEL_321:
        *v114 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114))
        {
          goto LABEL_350;
        }

        *(this + 36) = *v114;
        *(this + 8) |= 0x80000000;
        v104 = *(a2 + 1);
        if (*(a2 + 4) - v104 < 2 || *v104 != 146 || v104[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v104 + 2;
LABEL_326:
        *(this + 9) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v105 = *(this + 37);
        if (v105 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v105))
        {
          goto LABEL_350;
        }

        v106 = *(a2 + 1);
        if (*(a2 + 4) - v106 < 2 || *v106 != 154 || v106[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v106 + 2;
LABEL_334:
        *(this + 9) |= 2u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_353;
        }

        v107 = *(this + 38);
        if (v107 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v107))
        {
          goto LABEL_350;
        }

        v108 = *(a2 + 1);
        if (*(a2 + 4) - v108 < 2 || *v108 != 162 || v108[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v108 + 2;
LABEL_342:
        *(this + 9) |= 4u;
        if (!google::protobuf::internal::empty_string_)
        {
LABEL_353:
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v109 = *(this + 39);
        if (v109 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v109))
        {
LABEL_350:
          v110 = 0;
          goto LABEL_352;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        v110 = 1;
        *(a2 + 36) = 1;
LABEL_352:
        google::protobuf::io::CodedOutputStream::~CodedOutputStream(v112);
        google::protobuf::io::StringOutputStream::~StringOutputStream(v113);
        return v110;
      case 3u:
        if (v10 == 26)
        {
          goto LABEL_56;
        }

        goto LABEL_136;
      case 4u:
        if (v10 == 37)
        {
          goto LABEL_63;
        }

        goto LABEL_136;
      case 5u:
        if (v10 == 45)
        {
          goto LABEL_67;
        }

        goto LABEL_136;
      case 6u:
        if (v10 != 50)
        {
          goto LABEL_136;
        }

        v16 = *(this + 8);
        goto LABEL_71;
      case 7u:
        if (v10 == 58)
        {
          goto LABEL_85;
        }

        goto LABEL_136;
      case 8u:
        if (v10 == 66)
        {
          goto LABEL_97;
        }

        goto LABEL_136;
      case 9u:
        if (v10 == 74)
        {
          goto LABEL_104;
        }

        goto LABEL_136;
      case 0xAu:
        if (v10 == 82)
        {
          goto LABEL_116;
        }

        goto LABEL_136;
      case 0xBu:
        if (v10 == 90)
        {
          goto LABEL_149;
        }

        goto LABEL_136;
      case 0xCu:
        if (v10 == 98)
        {
          goto LABEL_163;
        }

        goto LABEL_136;
      case 0xDu:
        if (v10 == 109)
        {
          goto LABEL_181;
        }

        goto LABEL_136;
      case 0xEu:
        if (v10 == 117)
        {
          goto LABEL_185;
        }

        goto LABEL_136;
      case 0xFu:
        if (v10 != 120)
        {
          goto LABEL_136;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_189;
      case 0x10u:
        if (v10 == 129)
        {
          goto LABEL_198;
        }

        goto LABEL_136;
      case 0x11u:
        if (v10 == 137)
        {
          goto LABEL_203;
        }

        goto LABEL_136;
      case 0x12u:
        if (v10 != 146)
        {
          goto LABEL_136;
        }

        v15 = *(this + 8);
        goto LABEL_208;
      case 0x13u:
        if (v10 != 152)
        {
          goto LABEL_136;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_216;
      case 0x14u:
        if (v10 != 160)
        {
          goto LABEL_136;
        }

        v36 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_225;
      case 0x15u:
        if (v10 == 169)
        {
          goto LABEL_234;
        }

        goto LABEL_136;
      case 0x16u:
        if (v10 != 176)
        {
          goto LABEL_136;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_239;
      case 0x17u:
        if (v10 != 186)
        {
          goto LABEL_136;
        }

        v29 = *(this + 8);
        goto LABEL_248;
      case 0x18u:
        if (v10 == 194)
        {
          goto LABEL_256;
        }

        goto LABEL_136;
      case 0x19u:
        if (v10 != 200)
        {
          goto LABEL_136;
        }

        v40 = *(a2 + 1);
        v39 = *(a2 + 2);
        goto LABEL_277;
      case 0x1Au:
        if (v10 == 209)
        {
          goto LABEL_286;
        }

        goto LABEL_136;
      case 0x1Bu:
        if (v10 == 217)
        {
          goto LABEL_291;
        }

        goto LABEL_136;
      case 0x1Cu:
        if (v10 != 225)
        {
          goto LABEL_136;
        }

        goto LABEL_296;
      case 0x1Du:
        if (v10 == 233)
        {
          goto LABEL_301;
        }

        goto LABEL_136;
      case 0x1Eu:
        if (v10 == 241)
        {
          goto LABEL_306;
        }

        goto LABEL_136;
      case 0x1Fu:
        if (v10 == 249)
        {
          goto LABEL_311;
        }

        goto LABEL_136;
      case 0x20u:
        if (v10 == 257)
        {
          goto LABEL_316;
        }

        goto LABEL_136;
      case 0x21u:
        if (v10 == 265)
        {
          goto LABEL_321;
        }

        goto LABEL_136;
      case 0x22u:
        if (v10 == 274)
        {
          goto LABEL_326;
        }

        goto LABEL_136;
      case 0x23u:
        if (v10 == 282)
        {
          goto LABEL_334;
        }

        goto LABEL_136;
      case 0x24u:
        if (v10 == 290)
        {
          goto LABEL_342;
        }

LABEL_136:
        if (v10 && (v10 & 7) != 4)
        {
          goto LABEL_138;
        }

        goto LABEL_351;
      default:
        goto LABEL_9;
    }
  }
}

void sub_19A1F3288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x19A8FD070](v2, 0x10B3C40DF275E33);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t topotext::Attachment::SerializeWithCachedSizes(topotext::Attachment *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 5), a2);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(v5 + 6), a2);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 14), a3);
  v6 = *(v5 + 8);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 15), a3);
  v6 = *(v5 + 8);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(6, *(v5 + 8), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(7, *(v5 + 9), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(8, *(v5 + 10), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(9, *(v5 + 11), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v7 = *(v5 + 12);
  if (!v7)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v7 = *(topotext::Attachment::default_instance_ + 96);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(10, v7, a2);
  if ((*(v5 + 8) & 0x200) != 0)
  {
LABEL_23:
    v8 = *(v5 + 13);
    if (!v8)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v8 = *(topotext::Attachment::default_instance_ + 104);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(11, v8, a2);
  }

LABEL_26:
  if (*(v5 + 30) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(v5 + 112, v9);
      google::protobuf::internal::WireFormatLite::WriteMessage(12, v10, a2);
      ++v9;
    }

    while (v9 < *(v5 + 30));
  }

  v11 = *(v5 + 8);
  if ((v11 & 0x800) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 34), a3);
    v11 = *(v5 + 8);
    if ((v11 & 0x1000) == 0)
    {
LABEL_31:
      if ((v11 & 0x2000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_61;
    }
  }

  else if ((v11 & 0x1000) == 0)
  {
    goto LABEL_31;
  }

  google::protobuf::internal::WireFormatLite::WriteFloat(0xE, a2, *(v5 + 35), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x2000) == 0)
  {
LABEL_32:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  google::protobuf::internal::WireFormatLite::WriteInt32(0xF, *(v5 + 40), a2, a4);
  v11 = *(v5 + 8);
  if ((v11 & 0x4000) == 0)
  {
LABEL_33:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 18), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x8000) == 0)
  {
LABEL_34:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 19), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x10000) == 0)
  {
LABEL_35:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(18, *(v5 + 21), a2);
  v11 = *(v5 + 8);
  if ((v11 & 0x20000) == 0)
  {
LABEL_36:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 164), a2, a4);
  v11 = *(v5 + 8);
  if ((v11 & 0x40000) == 0)
  {
LABEL_37:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  google::protobuf::internal::WireFormatLite::WriteInt64(0x14, *(v5 + 22), a2, a4);
  v11 = *(v5 + 8);
  if ((v11 & 0x80000) == 0)
  {
LABEL_38:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 23), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x100000) == 0)
  {
LABEL_39:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_68:
  google::protobuf::internal::WireFormatLite::WriteInt32(0x16, *(v5 + 80), a2, a4);
  if ((*(v5 + 8) & 0x200000) != 0)
  {
LABEL_40:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(23, *(v5 + 24), a2);
  }

LABEL_41:
  if (*(v5 + 52) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(v5 + 200, v12);
      google::protobuf::internal::WireFormatLite::WriteMessage(24, v13, a2);
      ++v12;
    }

    while (v12 < *(v5 + 52));
  }

  v14 = *(v5 + 8);
  if ((v14 & 0x800000) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(0x19, *(v5 + 28), a2, a4);
    v14 = *(v5 + 8);
    if ((v14 & 0x1000000) == 0)
    {
LABEL_46:
      if ((v14 & 0x2000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_72;
    }
  }

  else if ((v14 & 0x1000000) == 0)
  {
    goto LABEL_46;
  }

  google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 29), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x2000000) == 0)
  {
LABEL_47:
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_73;
  }

LABEL_72:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 30), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_48:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_74;
  }

LABEL_73:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 31), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_49:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_75;
  }

LABEL_74:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 32), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_50:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_76;
  }

LABEL_75:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 33), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x20000000) == 0)
  {
LABEL_51:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_77:
    google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, *(v5 + 35), a3);
    if ((*(v5 + 8) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_78;
  }

LABEL_76:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1F, a2, *(v5 + 34), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_52:
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

LABEL_78:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x21, a2, *(v5 + 36), a3);
LABEL_53:
  v15 = *(v5 + 9);
  if (v15)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(34, *(v5 + 37), a2);
    v15 = *(v5 + 9);
    if ((v15 & 2) == 0)
    {
LABEL_55:
      if ((v15 & 4) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_55;
  }

  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(35, *(v5 + 38), a2);
  if ((*(v5 + 9) & 4) != 0)
  {
LABEL_56:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(36, *(v5 + 39), a2);
  }

LABEL_57:
  v16 = *(v5 + 31);
  if (v16 < 0)
  {
    v17 = *(v5 + 1);
    v16 = *(v5 + 2);
  }

  else
  {
    v17 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v17, v16);
}

uint64_t topotext::Attachment::ByteSize(topotext::Attachment *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_70;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
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
    v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v2 = *(this + 8);
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
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v2 = *(this + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v3 += v17 + v13 + 1;
  }

LABEL_24:
  v18 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v18 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v4 = v18 + 5;
  }

  else
  {
    v4 = v18;
  }

  if ((v2 & 0x10) != 0)
  {
    v19 = *(this + 8);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v2 = *(this + 8);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 += v24 + v20 + 1;
    if ((v2 & 0x20) == 0)
    {
LABEL_31:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v25 = *(this + 9);
  v26 = *(v25 + 23);
  v27 = v26;
  v28 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v29 = *(v25 + 23);
  }

  else
  {
    v29 = v28;
  }

  if (v29 >= 0x80)
  {
    v30 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    v26 = *(v25 + 23);
    v28 = *(v25 + 8);
    v2 = *(this + 8);
    v27 = *(v25 + 23);
  }

  else
  {
    v30 = 1;
  }

  if (v27 < 0)
  {
    v26 = v28;
  }

  v4 += v30 + v26 + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_32:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

LABEL_52:
  v31 = *(this + 10);
  v32 = *(v31 + 23);
  v33 = v32;
  v34 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v35 = *(v31 + 23);
  }

  else
  {
    v35 = v34;
  }

  if (v35 >= 0x80)
  {
    v36 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
    v32 = *(v31 + 23);
    v34 = *(v31 + 8);
    v2 = *(this + 8);
    v33 = *(v31 + 23);
  }

  else
  {
    v36 = 1;
  }

  if (v33 < 0)
  {
    v32 = v34;
  }

  v4 += v36 + v32 + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_61:
    v37 = *(this + 11);
    v38 = *(v37 + 23);
    v39 = v38;
    v40 = *(v37 + 8);
    if ((v38 & 0x80u) == 0)
    {
      v41 = *(v37 + 23);
    }

    else
    {
      v41 = v40;
    }

    if (v41 >= 0x80)
    {
      v42 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
      v38 = *(v37 + 23);
      v40 = *(v37 + 8);
      v2 = *(this + 8);
      v39 = *(v37 + 23);
    }

    else
    {
      v42 = 1;
    }

    if (v39 < 0)
    {
      v38 = v40;
    }

    v4 += v42 + v38 + 1;
  }

LABEL_70:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v43 = *(this + 12);
      if (!v43)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(0);
        v43 = *(topotext::Attachment::default_instance_ + 96);
      }

      v44 = topotext::Location::ByteSize(v43);
      v45 = v44;
      if (v44 >= 0x80)
      {
        v46 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44);
      }

      else
      {
        v46 = 1;
      }

      v4 += v45 + v46 + 1;
      v2 = *(this + 8);
    }

    if ((v2 & 0x200) != 0)
    {
      v47 = *(this + 13);
      if (!v47)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(0);
        v47 = *(topotext::Attachment::default_instance_ + 104);
      }

      v48 = topotext::Media::ByteSize(v47);
      v49 = v48;
      if (v48 >= 0x80)
      {
        v50 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
      }

      else
      {
        v50 = 1;
      }

      v4 += v49 + v50 + 1;
      v2 = *(this + 8);
    }

    v51 = v4 + 5;
    if ((v2 & 0x800) == 0)
    {
      v51 = v4;
    }

    if ((v2 & 0x1000) != 0)
    {
      v52 = v51 + 5;
    }

    else
    {
      v52 = v51;
    }

    if ((v2 & 0x2000) != 0)
    {
      v53 = *(this + 40);
      if ((v53 & 0x80000000) != 0)
      {
        v54 = 11;
      }

      else if (v53 >= 0x80)
      {
        v54 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 1;
        v2 = *(this + 8);
      }

      else
      {
        v54 = 2;
      }

      v52 += v54;
    }

    v55 = v52 + 10;
    if ((v2 & 0x4000) == 0)
    {
      v55 = v52;
    }

    if ((v2 & 0x8000) != 0)
    {
      v4 = v55 + 10;
    }

    else
    {
      v4 = v55;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v56 = *(this + 21);
      v57 = *(v56 + 23);
      v58 = v57;
      v59 = *(v56 + 8);
      if ((v57 & 0x80u) == 0)
      {
        v60 = *(v56 + 23);
      }

      else
      {
        v60 = v59;
      }

      if (v60 >= 0x80)
      {
        v61 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
        v57 = *(v56 + 23);
        v59 = *(v56 + 8);
        v2 = *(this + 8);
        v58 = *(v56 + 23);
      }

      else
      {
        v61 = 1;
      }

      if (v58 < 0)
      {
        v57 = v59;
      }

      v4 += v61 + v57 + 2;
    }

    if ((v2 & 0x20000) != 0)
    {
      v62 = v4 + 3;
    }

    else
    {
      v62 = v4;
    }

    if ((v2 & 0x40000) != 0)
    {
      v62 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 22)) + 2;
      v2 = *(this + 8);
    }

    if ((v2 & 0x80000) != 0)
    {
      v4 = v62 + 10;
    }

    else
    {
      v4 = v62;
    }

    if ((v2 & 0x100000) != 0)
    {
      v65 = *(this + 80);
      if ((v65 & 0x80000000) != 0)
      {
        v66 = 12;
      }

      else if (v65 >= 0x80)
      {
        v66 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
        v2 = *(this + 8);
      }

      else
      {
        v66 = 3;
      }

      v4 += v66;
      if ((v2 & 0x200000) == 0)
      {
LABEL_123:
        if ((v2 & 0x800000) == 0)
        {
          goto LABEL_125;
        }

        goto LABEL_124;
      }
    }

    else if ((v2 & 0x200000) == 0)
    {
      goto LABEL_123;
    }

    v101 = *(this + 24);
    v102 = *(v101 + 23);
    v103 = v102;
    v104 = *(v101 + 8);
    if ((v102 & 0x80u) == 0)
    {
      v105 = *(v101 + 23);
    }

    else
    {
      v105 = v104;
    }

    if (v105 >= 0x80)
    {
      v106 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
      v102 = *(v101 + 23);
      v104 = *(v101 + 8);
      v2 = *(this + 8);
      v103 = *(v101 + 23);
    }

    else
    {
      v106 = 1;
    }

    if (v103 < 0)
    {
      v102 = v104;
    }

    v4 += v106 + v102 + 2;
    if ((v2 & 0x800000) != 0)
    {
LABEL_124:
      v4 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 28)) + 2;
      v2 = *(this + 8);
    }
  }

LABEL_125:
  if (HIBYTE(v2))
  {
    v63 = v4 + 10;
    if ((v2 & 0x1000000) == 0)
    {
      v63 = v4;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v63 += 10;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v63 += 10;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v63 += 10;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v63 += 10;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v63 += 10;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v63 += 10;
    }

    if (v2 >= 0)
    {
      v4 = v63;
    }

    else
    {
      v4 = v63 + 10;
    }
  }

  LOBYTE(v64) = *(this + 36);
  if (v64)
  {
    if (*(this + 36))
    {
      v67 = *(this + 37);
      v68 = *(v67 + 23);
      v69 = v68;
      v70 = *(v67 + 8);
      if ((v68 & 0x80u) == 0)
      {
        v71 = *(v67 + 23);
      }

      else
      {
        v71 = v70;
      }

      if (v71 >= 0x80)
      {
        v72 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71);
        v68 = *(v67 + 23);
        v70 = *(v67 + 8);
        v64 = *(this + 9);
        v69 = *(v67 + 23);
      }

      else
      {
        v72 = 1;
      }

      if (v69 < 0)
      {
        v68 = v70;
      }

      v4 += v72 + v68 + 2;
      if ((v64 & 2) == 0)
      {
LABEL_146:
        if ((v64 & 4) == 0)
        {
          goto LABEL_178;
        }

        goto LABEL_169;
      }
    }

    else if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_146;
    }

    v73 = *(this + 38);
    v74 = *(v73 + 23);
    v75 = v74;
    v76 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v77 = *(v73 + 23);
    }

    else
    {
      v77 = v76;
    }

    if (v77 >= 0x80)
    {
      v78 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
      v74 = *(v73 + 23);
      v76 = *(v73 + 8);
      v64 = *(this + 9);
      v75 = *(v73 + 23);
    }

    else
    {
      v78 = 1;
    }

    if (v75 < 0)
    {
      v74 = v76;
    }

    v4 += v78 + v74 + 2;
    if ((v64 & 4) != 0)
    {
LABEL_169:
      v79 = *(this + 39);
      v80 = *(v79 + 23);
      v81 = v80;
      v82 = *(v79 + 8);
      if ((v80 & 0x80u) == 0)
      {
        v83 = *(v79 + 23);
      }

      else
      {
        v83 = v82;
      }

      if (v83 >= 0x80)
      {
        v84 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83);
        v80 = *(v79 + 23);
        v82 = *(v79 + 8);
        v81 = *(v79 + 23);
      }

      else
      {
        v84 = 1;
      }

      if (v81 < 0)
      {
        v80 = v82;
      }

      v4 += v84 + v80 + 2;
    }
  }

LABEL_178:
  v85 = *(this + 30);
  v86 = v85 + v4;
  if (v85 >= 1)
  {
    v87 = 0;
    do
    {
      v88 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(this + 112, v87);
      v89 = topotext::PreviewImage::ByteSize(v88);
      v90 = v89;
      if (v89 >= 0x80)
      {
        v91 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
      }

      else
      {
        v91 = 1;
      }

      v86 += v90 + v91;
      ++v87;
    }

    while (v87 < *(this + 30));
  }

  v92 = *(this + 52);
  v93 = v86 + 2 * v92;
  if (v92 >= 1)
  {
    v94 = 0;
    do
    {
      v95 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(this + 200, v94);
      v96 = topotext::Attachment::ByteSize(v95);
      v97 = v96;
      if (v96 >= 0x80)
      {
        v98 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96);
      }

      else
      {
        v98 = 1;
      }

      v93 += v97 + v98;
      ++v94;
    }

    while (v94 < *(this + 52));
  }

  v99 = *(this + 31);
  if (v99 < 0)
  {
    v99 = *(this + 2);
  }

  result = (v93 + v99);
  *(this + 81) = result;
  return result;
}

std::string *topotext::Attachment::CheckTypeAndMergeFrom(topotext::Attachment *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Attachment::MergeFrom(this, lpsrc);
}

std::string *topotext::Location::MergeFrom(topotext::Location *this, const topotext::Location *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 5768);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v15 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v15;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v14 = *(a2 + 5);
  *(this + 8) |= 1u;
  *(this + 5) = v14;
  v5 = *(a2 + 8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v16 = *(a2 + 7);
  *(this + 8) |= 4u;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v17 = *(this + 7);
  if (v17 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_8:
    v6 = *(a2 + 64);
    *(this + 8) |= 8u;
    *(this + 64) = v6;
  }

LABEL_9:
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

void sub_19A1F406C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::Media::MergeFrom(topotext::Media *this, const topotext::Media *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 6118);
    v4 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v9 = *(this + 6);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      v10 = *(a2 + 7);
      *(this + 8) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v11 = *(this + 7);
      if (v11 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      v12 = *(a2 + 8);
      *(this + 8) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v13 = *(this + 8);
      if (v13 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x10) != 0)
    {
      v14 = *(a2 + 9);
      *(this + 8) |= 0x10u;
      *(this + 9) = v14;
    }
  }

  v17 = *(a2 + 1);
  v16 = a2 + 8;
  v15 = v17;
  v18 = v16[23];
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = v16[23];
  }

  else
  {
    v20 = *(v16 + 1);
  }

  return std::string::append((this + 8), v19, v20);
}

void sub_19A1F42D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

topotext::Location *topotext::Location::Location(topotext::Location *this)
{
  *this = &unk_1F0D66D50;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Location::SharedCtor(this);
  return this;
}

void sub_19A1F4358(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::Location::SharedCtor(topotext::Location *this)
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

  *(this + 44) = 0;
  *(this + 36) = 0;
  *(this + 13) = 0;
  *(this + 7) = v3;
  *(this + 64) = 0;
  *(this + 8) = 0;
}

void sub_19A1F4434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::Location::~Location(void **this)
{
  *this = &unk_1F0D66D50;
  topotext::Location::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Location::~Location(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::Location::SharedDtor(topotext::Location *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = *(this + 7);
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

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

uint64_t topotext::Location::MergePartialFromCodedStream(topotext::Location *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v22, v23);
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
        if (v7 != 9)
        {
          goto LABEL_31;
        }

        v24 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v24))
        {
          goto LABEL_52;
        }

        *(this + 5) = v24;
        *(this + 8) |= 1u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 17)
        {
          *(a2 + 1) = v13 + 1;
LABEL_26:
          v24 = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v24))
          {
            goto LABEL_52;
          }

          *(this + 6) = v24;
          v14 = *(this + 8) | 2;
          *(this + 8) = v14;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 26)
          {
            *(a2 + 1) = v15 + 1;
LABEL_36:
            *(this + 8) = v14 | 4;
            if (!google::protobuf::internal::empty_string_)
            {
              __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
            }

            v16 = *(this + 7);
            if (v16 == google::protobuf::internal::empty_string_)
            {
              operator new();
            }

            if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v16))
            {
LABEL_52:
              v20 = 0;
              goto LABEL_54;
            }

            v17 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v17 < v10 && *v17 == 32)
            {
              v11 = v17 + 1;
              *(a2 + 1) = v11;
              goto LABEL_43;
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

        if (v7 == 17)
        {
          goto LABEL_26;
        }

LABEL_31:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_53;
        }

LABEL_33:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v22, v4))
        {
          goto LABEL_52;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 26)
      {
        v14 = *(this + 8);
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 32)
    {
      goto LABEL_31;
    }

    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_43:
    v24 = 0;
    if (v11 >= v10 || (v18 = *v11, (v18 & 0x8000000000000000) != 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v24))
      {
        goto LABEL_52;
      }

      v18 = v24;
      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      v19 = v11 + 1;
      *(a2 + 1) = v19;
    }

    *(this + 64) = v18 != 0;
    *(this + 8) |= 8u;
    if (v19 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v20 = 1;
      *(a2 + 36) = 1;
      goto LABEL_54;
    }
  }

LABEL_15:
  if (v7)
  {
    v12 = (v7 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_53:
  v20 = 1;
LABEL_54:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v22);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v23);
  return v20;
}

void sub_19A1F48D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Location::SerializeWithCachedSizes(topotext::Location *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 5), a3);
    v6 = *(this + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(this + 6), a3);
  v6 = *(this + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 7), a2);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(this + 64), a2, a4);
  }

LABEL_6:
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

uint64_t topotext::Location::ByteSize(topotext::Location *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      v3 = (((v2 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v3 = ((v2 << 31) >> 31) & 9;
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(this + 7);
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
        v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        v5 = *(v4 + 23);
        v7 = *(v4 + 8);
        v2 = *(this + 8);
        v6 = *(v4 + 23);
      }

      else
      {
        v9 = 1;
      }

      if (v6 < 0)
      {
        v5 = v7;
      }

      v3 += v9 + v5 + 1;
    }

    v10 = ((v2 >> 2) & 2) + v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v10 + v11);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Location::CheckTypeAndMergeFrom(topotext::Location *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Location::MergeFrom(this, lpsrc);
}

topotext::Media *topotext::Media::Media(topotext::Media *this)
{
  *this = &unk_1F0D66DC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Media::SharedCtor(this);
  return this;
}

void sub_19A1F4B7C(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::Media::SharedCtor(topotext::Media *this)
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

  *(this + 6) = google::protobuf::internal::empty_string_;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_19A1F4C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::Media::~Media(void **this)
{
  *this = &unk_1F0D66DC8;
  topotext::Media::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Media::~Media(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::Media::SharedDtor(topotext::Media *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x19A8FD070](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 6);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x19A8FD070](v3, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
  }

  if (!v2)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v5 = *(v1 + 7);
  if (v5 != v2 && v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x19A8FD070](v5, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }
  }

  v6 = *(v1 + 8);
  if (v6 != v2 && v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x19A8FD070](v6, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

uint64_t topotext::Media::MergePartialFromCodedStream(topotext::Media *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
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
      if (v7 >> 3 <= 2)
      {
        break;
      }

      switch(v10)
      {
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_27;
          }

          goto LABEL_45;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_27;
          }

LABEL_52:
          *(this + 8) |= 8u;
          if (!google::protobuf::internal::empty_string_)
          {
LABEL_71:
            __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
          }

          v19 = *(this + 8);
          if (v19 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v19))
          {
LABEL_68:
            v23 = 0;
            goto LABEL_70;
          }

          v20 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v20 < v11 && *v20 == 40)
          {
            v12 = v20 + 1;
            *(a2 + 1) = v12;
            goto LABEL_59;
          }

          break;
        case 5u:
          if (v7 == 40)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_59:
            v27 = 0;
            if (v12 >= v11 || (v21 = *v12, (v21 & 0x8000000000000000) != 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v27))
              {
                goto LABEL_68;
              }

              v21 = v27;
              v22 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v22 = v12 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 9) = v21;
            *(this + 8) |= 0x10u;
            if (v22 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              v23 = 1;
              *(a2 + 36) = 1;
              goto LABEL_70;
            }
          }

          else
          {
LABEL_27:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_69;
            }

LABEL_29:
            if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4))
            {
              goto LABEL_68;
            }
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if (v7 != 10)
    {
      goto LABEL_27;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      goto LABEL_71;
    }

    v13 = *(this + 5);
    if (v13 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v13))
    {
      goto LABEL_68;
    }

    v14 = *(a2 + 1);
    if (v14 < *(a2 + 2) && *v14 == 18)
    {
      *(a2 + 1) = v14 + 1;
LABEL_38:
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_71;
      }

      v15 = *(this + 6);
      if (v15 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v15))
      {
        goto LABEL_68;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 26)
      {
        *(a2 + 1) = v16 + 1;
LABEL_45:
        *(this + 8) |= 4u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_71;
        }

        v17 = *(this + 7);
        if (v17 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v17))
        {
          goto LABEL_68;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 34)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_52;
        }
      }
    }
  }

  if (v10 == 2)
  {
    if (v7 != 18)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
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
    goto LABEL_29;
  }

LABEL_69:
  v23 = 1;
LABEL_70:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_19A1F5264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Media::SerializeWithCachedSizes(topotext::Media *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
    v6 = *(this + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 6), a2);
  v6 = *(this + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 7), a2);
  v6 = *(this + 8);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(4, *(this + 8), a2);
  if ((*(this + 8) & 0x10) != 0)
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::WriteInt64(5, *(this + 9), a2, a4);
  }

LABEL_7:
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

uint64_t topotext::Media::ByteSize(topotext::Media *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_28;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

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
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
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
  }

LABEL_24:
  if ((v2 & 4) != 0)
  {
    v19 = *(this + 7);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v2 = *(this + 8);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v3 += v24 + v20 + 1;
    if ((v2 & 8) == 0)
    {
LABEL_26:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_26;
  }

  v25 = *(this + 8);
  v26 = *(v25 + 23);
  v27 = v26;
  v28 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v29 = *(v25 + 23);
  }

  else
  {
    v29 = v28;
  }

  if (v29 >= 0x80)
  {
    v30 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    v26 = *(v25 + 23);
    v28 = *(v25 + 8);
    v2 = *(this + 8);
    v27 = *(v25 + 23);
  }

  else
  {
    v30 = 1;
  }

  if (v27 < 0)
  {
    v26 = v28;
  }

  v3 += v30 + v26 + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_27:
    v3 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 9)) + 1;
  }

LABEL_28:
  v17 = *(this + 31);
  if (v17 < 0)
  {
    v17 = *(this + 2);
  }

  result = (v3 + v17);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Media::CheckTypeAndMergeFrom(topotext::Media *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Media::MergeFrom(this, lpsrc);
}

topotext::PreviewImage *topotext::PreviewImage::PreviewImage(topotext::PreviewImage *this)
{
  *this = &unk_1F0D66E40;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::PreviewImage::SharedCtor(this);
  return this;
}

void sub_19A1F5630(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::PreviewImage::SharedCtor(topotext::PreviewImage *this)
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

  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 18) = 0;
  *(this + 7) = v3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_19A1F5708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *topotext::PreviewImage::MergeFrom(topotext::PreviewImage *this, const topotext::PreviewImage *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 6525);
    v4 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_12;
  }

  if (*(a2 + 32))
  {
    v14 = *(a2 + 12);
    *(this + 8) |= 1u;
    *(this + 12) = v14;
    v5 = *(a2 + 8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  v15 = *(a2 + 52);
  *(this + 8) |= 2u;
  *(this + 52) = v15;
  v5 = *(a2 + 8);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_21:
  v16 = *(a2 + 5);
  *(this + 8) |= 4u;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v17 = *(this + 5);
  if (v17 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v5 = *(a2 + 8);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v20 = *(a2 + 18);
    *(this + 8) |= 0x10u;
    *(this + 18) = v20;
    v5 = *(a2 + 8);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_25:
  v18 = *(a2 + 7);
  *(this + 8) |= 8u;
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v19 = *(this + 7);
  if (v19 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  v5 = *(a2 + 8);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_30:
  v21 = *(a2 + 53);
  *(this + 8) |= 0x20u;
  *(this + 53) = v21;
  if ((*(a2 + 8) & 0x40) != 0)
  {
LABEL_11:
    v6 = *(a2 + 8);
    *(this + 8) |= 0x40u;
    *(this + 8) = v6;
  }

LABEL_12:
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

void sub_19A1F592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::PreviewImage::~PreviewImage(void **this)
{
  *this = &unk_1F0D66E40;
  topotext::PreviewImage::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::PreviewImage::~PreviewImage(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::PreviewImage::SharedDtor(topotext::PreviewImage *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x19A8FD070](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 7);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x19A8FD070](v3, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

uint64_t topotext::PreviewImage::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0x7F) != 0)
  {
    *(this + 52) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    if ((v1 & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 40);
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

    if ((*(this + 32) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v3 = *(this + 56);
      if (v3 != google::protobuf::internal::empty_string_)
      {
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

uint64_t topotext::PreviewImage::MergePartialFromCodedStream(topotext::PreviewImage *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v34, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v33, v34);
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
            if (v7 != 13)
            {
              goto LABEL_37;
            }

            v35[0] = 0;
            if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v35))
            {
              goto LABEL_90;
            }

            *(this + 12) = v35[0];
            *(this + 8) |= 1u;
            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v16 < v15 && *v16 == 16)
            {
              v17 = v16 + 1;
              *(a2 + 1) = v17;
              goto LABEL_42;
            }

            break;
          case 2u:
            if (v7 != 16)
            {
              goto LABEL_37;
            }

            v17 = *(a2 + 1);
            v15 = *(a2 + 2);
LABEL_42:
            *v35 = 0;
            if (v17 >= v15 || (v19 = *v17, v19 < 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v35))
              {
                goto LABEL_90;
              }

              v19 = *v35;
              v20 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              v20 = v17 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 52) = v19 != 0;
            v13 = *(this + 8) | 2;
            *(this + 8) = v13;
            if (v20 < v15 && *v20 == 26)
            {
              *(a2 + 1) = v20 + 1;
LABEL_50:
              *(this + 8) = v13 | 4;
              if (!google::protobuf::internal::empty_string_)
              {
                goto LABEL_92;
              }

              v21 = *(this + 5);
              if (v21 == google::protobuf::internal::empty_string_)
              {
                operator new();
              }

              if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v21))
              {
                goto LABEL_90;
              }

              v22 = *(a2 + 1);
              if (v22 < *(a2 + 2) && *v22 == 34)
              {
                *(a2 + 1) = v22 + 1;
                goto LABEL_57;
              }
            }

            break;
          case 3u:
            if (v7 != 26)
            {
              goto LABEL_37;
            }

            v13 = *(this + 8);
            goto LABEL_50;
          default:
            goto LABEL_6;
        }
      }

      if (v7 >> 3 <= 5)
      {
        break;
      }

      if (v10 == 6)
      {
        if (v7 == 48)
        {
          v18 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_72;
        }

LABEL_37:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_89;
        }

        goto LABEL_39;
      }

      if (v10 == 7)
      {
        if (v7 != 56)
        {
          goto LABEL_37;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_80:
        *v35 = 0;
        if (v14 >= v11 || (v29 = *v14, v29 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v35))
          {
            goto LABEL_90;
          }

          v29 = *v35;
          v30 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v30 = v14 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 8) = v29;
        *(this + 8) |= 0x40u;
        if (v30 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v31 = 1;
          *(a2 + 36) = 1;
          goto LABEL_91;
        }
      }

      else
      {
LABEL_6:
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
LABEL_89:
          v31 = 1;
          goto LABEL_91;
        }

LABEL_39:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v33, v4))
        {
          goto LABEL_90;
        }
      }
    }

    if (v10 != 4)
    {
      if (v10 == 5)
      {
        if (v7 == 40)
        {
          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_64;
        }

        goto LABEL_37;
      }

      goto LABEL_6;
    }

    if (v7 != 34)
    {
      goto LABEL_37;
    }

LABEL_57:
    *(this + 8) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
LABEL_92:
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v23 = *(this + 7);
    if (v23 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v23))
    {
      break;
    }

    v24 = *(a2 + 1);
    v11 = *(a2 + 2);
    if (v24 < v11 && *v24 == 40)
    {
      v12 = v24 + 1;
      *(a2 + 1) = v12;
LABEL_64:
      v35[0] = 0;
      if (v12 >= v11 || (v25 = *v12, (v25 & 0x80000000) != 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35))
        {
          break;
        }

        v25 = v35[0];
        v26 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else
      {
        v26 = v12 + 1;
        *(a2 + 1) = v26;
      }

      *(this + 18) = v25;
      *(this + 8) |= 0x10u;
      if (v26 < v11 && *v26 == 48)
      {
        v18 = v26 + 1;
        *(a2 + 1) = v18;
LABEL_72:
        *v35 = 0;
        if (v18 >= v11 || (v27 = *v18, v27 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v35))
          {
            break;
          }

          v27 = *v35;
          v28 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v28 = v18 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 53) = v27 != 0;
        *(this + 8) |= 0x20u;
        if (v28 < v11 && *v28 == 56)
        {
          v14 = v28 + 1;
          *(a2 + 1) = v14;
          goto LABEL_80;
        }
      }
    }
  }

LABEL_90:
  v31 = 0;
LABEL_91:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v33);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v34);
  return v31;
}