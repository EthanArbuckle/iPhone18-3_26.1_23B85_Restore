uint64_t _GLOBAL__sub_I_descriptor_cc()
{
  qword_2A18982C8 = 0;
  qword_2A18982D0 = 0;
  qword_2A18982B8 = 0;
  wireless_diagnostics::google::protobuf::FileDescriptorTables::kEmpty = 0u;
  unk_2A18983B8 = 0u;
  dword_2A18983C8 = 1065353216;
  unk_2A18983D0 = 0u;
  unk_2A18983E0 = 0u;
  dword_2A18983F0 = 1065353216;
  xmmword_2A18983F8 = 0u;
  unk_2A1898408 = 0u;
  dword_2A1898418 = 1065353216;
  *&algn_2A189841C[4] = 0u;
  *&algn_2A189841C[20] = 0u;
  dword_2A1898440 = 1065353216;
  xmmword_2A1898448 = 0u;
  unk_2A1898458 = 0u;
  dword_2A1898468 = 1065353216;

  return __cxa_atexit(wireless_diagnostics::google::protobuf::FileDescriptorTables::~FileDescriptorTables, &wireless_diagnostics::google::protobuf::FileDescriptorTables::kEmpty, &dword_299840000);
}

void wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(wireless_diagnostics::google::protobuf *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(void)::already_here & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/descriptor.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_29989E3F4, 0x1027);
    operator new();
  }
}

void wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(wireless_diagnostics::google::protobuf::DescriptorPool *this, const void *a2)
{
  v2 = a2;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v5[0] = MEMORY[0x29EDC9780] + 16;
    v6 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }
}

void sub_299840F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *wireless_diagnostics::google::protobuf::EncodedDescriptorDatabase::EncodedDescriptorDatabase(void *this)
{
  this[2] = 0;
  *this = &unk_2A1F91C28;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[9] = 0;
  this[10] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[12] = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::EncodedDescriptorDatabase::Add(wireless_diagnostics::google::protobuf::EncodedDescriptorDatabase *this, const void *a2, unsigned int a3)
{
  wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(v10);
  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v10, a2))
  {
    v6 = std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::find<std::string>(this + 8, v11);
    if ((this + 16) != v6 && *(v6 + 56))
    {
      if (*(v6 + 64) == a3 && !memcmp(*(v6 + 56), a2, a3))
      {
        v7 = 1;
        goto LABEL_9;
      }

      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    }

    v7 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddFile(this + 8, v10, a2, a3);
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    v7 = 0;
  }

LABEL_9:
  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(v10);
  return v7;
}

void sub_29984131C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(va1);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::FileDescriptorProto *wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  *this = &unk_2A1F91E48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v2;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  return this;
}

void *wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorProto::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v7 = *(a2 + 1);
          if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v8 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v8;
            *(a2 + 1) = v7 + 1;
            if (!v8)
            {
              return 1;
            }
          }

          v9 = v8 >> 3;
          v10 = v8 & 7;
          if (v8 >> 3 <= 5)
          {
            break;
          }

          if (v8 >> 3 > 8)
          {
            if (v9 == 9)
            {
              if (v10 != 2)
              {
                goto LABEL_57;
              }

LABEL_159:
              *(v5 + 204) |= 0x400u;
              v82 = *(v5 + 192);
              if (!v82)
              {
                operator new();
              }

              v110 = 0;
              v83 = *(a2 + 1);
              if (v83 >= *(a2 + 2) || *v83 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110))
                {
                  return 0;
                }
              }

              else
              {
                v110 = *v83;
                *(a2 + 1) = v83 + 1;
              }

              v84 = *(a2 + 14);
              v85 = *(a2 + 15);
              *(a2 + 14) = v84 + 1;
              if (v84 >= v85)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::SourceCodeInfo::MergePartialFromCodedStream(v82, a2, v86, v87) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v88 = *(a2 + 14);
              v34 = __OFSUB__(v88, 1);
              v89 = v88 - 1;
              if (v89 < 0 == v34)
              {
                *(a2 + 14) = v89;
              }

              v90 = *(a2 + 1);
              v13 = *(a2 + 2);
              if (v90 < v13)
              {
                v91 = *v90;
                goto LABEL_172;
              }
            }

            else
            {
              if (v9 != 10)
              {
                if (v9 == 11)
                {
                  if ((v8 & 7) == 0)
                  {
                    v15 = *(a2 + 1);
                    v13 = *(a2 + 2);
                    goto LABEL_194;
                  }

                  if (v10 == 2)
                  {
                    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, v5 + 72);
                    if (!this)
                    {
                      return this;
                    }

                    goto LABEL_211;
                  }
                }

                goto LABEL_57;
              }

              if ((v8 & 7) != 0)
              {
                if (v10 == 2)
                {
                  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, v5 + 56);
                  if (!this)
                  {
                    return this;
                  }

                  goto LABEL_191;
                }

                goto LABEL_57;
              }

              v14 = *(a2 + 1);
              v13 = *(a2 + 2);
              while (1)
              {
                v110 = 0;
                if (v14 >= v13 || (v92 = *v14, (v92 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110);
                  if (!this)
                  {
                    return this;
                  }

                  v92 = v110;
                }

                else
                {
                  *(a2 + 1) = v14 + 1;
                }

                v93 = *(v5 + 64);
                if (v93 == *(v5 + 68))
                {
                  this = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve((v5 + 56), v93 + 1);
                  v93 = *(v5 + 64);
                }

                v94 = *(v5 + 56);
                *(v5 + 64) = v93 + 1;
                *(v94 + 4 * v93) = v92;
                v95 = *(v5 + 68) - *(v5 + 64);
                if (v95 >= 1)
                {
                  v96 = v95 + 1;
                  do
                  {
                    v97 = *(a2 + 1);
                    v98 = *(a2 + 2);
                    if (v97 >= v98 || *v97 != 80)
                    {
                      break;
                    }

                    *(a2 + 1) = v97 + 1;
                    v110 = 0;
                    if ((v97 + 1) >= v98 || (v99 = v97[1], (v99 & 0x80000000) != 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110);
                      if (!this)
                      {
                        return this;
                      }

                      v99 = v110;
                      v94 = *(v5 + 56);
                    }

                    else
                    {
                      *(a2 + 1) = v97 + 2;
                    }

                    v100 = *(v5 + 64);
                    *(v5 + 64) = v100 + 1;
                    *(v94 + 4 * v100) = v99;
                    --v96;
                  }

                  while (v96 > 1);
                }

LABEL_191:
                v90 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v90 >= v13)
                {
                  break;
                }

                v91 = *v90;
                if (v91 == 88)
                {
                  do
                  {
                    v15 = v90 + 1;
                    *(a2 + 1) = v15;
LABEL_194:
                    v110 = 0;
                    if (v15 >= v13 || (v101 = *v15, (v101 & 0x80000000) != 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110);
                      if (!this)
                      {
                        return this;
                      }

                      v101 = v110;
                    }

                    else
                    {
                      *(a2 + 1) = v15 + 1;
                    }

                    v102 = *(v5 + 80);
                    if (v102 == *(v5 + 84))
                    {
                      this = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve((v5 + 72), v102 + 1);
                      v102 = *(v5 + 80);
                    }

                    v103 = *(v5 + 72);
                    *(v5 + 80) = v102 + 1;
                    *(v103 + 4 * v102) = v101;
                    v104 = *(v5 + 84) - *(v5 + 80);
                    if (v104 >= 1)
                    {
                      v105 = v104 + 1;
                      do
                      {
                        v106 = *(a2 + 1);
                        v107 = *(a2 + 2);
                        if (v106 >= v107 || *v106 != 88)
                        {
                          break;
                        }

                        *(a2 + 1) = v106 + 1;
                        v110 = 0;
                        if ((v106 + 1) >= v107 || (v108 = v106[1], (v108 & 0x80000000) != 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110);
                          if (!this)
                          {
                            return this;
                          }

                          v108 = v110;
                          v103 = *(v5 + 72);
                        }

                        else
                        {
                          *(a2 + 1) = v106 + 2;
                        }

                        v109 = *(v5 + 80);
                        *(v5 + 80) = v109 + 1;
                        *(v103 + 4 * v109) = v108;
                        --v105;
                      }

                      while (v105 > 1);
                    }

LABEL_211:
                    v90 = *(a2 + 1);
                    v13 = *(a2 + 2);
                  }

                  while (v90 < v13 && *v90 == 88);
                  if (v90 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    this = 1;
                    *(a2 + 36) = 1;
                    return this;
                  }

                  goto LABEL_2;
                }

LABEL_172:
                if (v91 != 80)
                {
                  goto LABEL_2;
                }

                v14 = v90 + 1;
                *(a2 + 1) = v14;
              }
            }
          }

          else if (v9 == 6)
          {
            if (v10 != 2)
            {
              goto LABEL_57;
            }

            while (1)
            {
              v49 = *(v5 + 148);
              v50 = *(v5 + 144);
              if (v50 >= v49)
              {
                if (v49 == *(v5 + 152))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 136));
                  v49 = *(v5 + 148);
                }

                *(v5 + 148) = v49 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::ServiceDescriptorProto>::New();
              }

              v51 = *(v5 + 136);
              *(v5 + 144) = v50 + 1;
              v52 = *(v51 + 8 * v50);
              v110 = 0;
              v53 = *(a2 + 1);
              if (v53 >= *(a2 + 2) || *v53 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110))
                {
                  return 0;
                }
              }

              else
              {
                v110 = *v53;
                *(a2 + 1) = v53 + 1;
              }

              v54 = *(a2 + 14);
              v55 = *(a2 + 15);
              *(a2 + 14) = v54 + 1;
              if (v54 >= v55)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::ServiceDescriptorProto::MergePartialFromCodedStream(v52, a2, v56, v57) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v58 = *(a2 + 14);
              v34 = __OFSUB__(v58, 1);
              v59 = v58 - 1;
              if (v59 < 0 == v34)
              {
                *(a2 + 14) = v59;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v60 = *v12;
              if (v60 != 50)
              {
                if (v60 != 58)
                {
                  goto LABEL_2;
                }

                goto LABEL_126;
              }

LABEL_108:
              *(a2 + 1) = v12 + 1;
            }
          }

          else
          {
            if (v9 != 7)
            {
              if (v9 == 8 && v10 == 2)
              {
                goto LABEL_145;
              }

              goto LABEL_57;
            }

            if (v10 != 2)
            {
              goto LABEL_57;
            }

            while (1)
            {
              v61 = *(v5 + 172);
              v62 = *(v5 + 168);
              if (v62 >= v61)
              {
                if (v61 == *(v5 + 176))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 160));
                  v61 = *(v5 + 172);
                }

                *(v5 + 172) = v61 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
              }

              v63 = *(v5 + 160);
              *(v5 + 168) = v62 + 1;
              v64 = *(v63 + 8 * v62);
              v110 = 0;
              v65 = *(a2 + 1);
              if (v65 >= *(a2 + 2) || *v65 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110))
                {
                  return 0;
                }
              }

              else
              {
                v110 = *v65;
                *(a2 + 1) = v65 + 1;
              }

              v66 = *(a2 + 14);
              v67 = *(a2 + 15);
              *(a2 + 14) = v66 + 1;
              if (v66 >= v67)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v64, a2, v68, v69) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v70 = *(a2 + 14);
              v34 = __OFSUB__(v70, 1);
              v71 = v70 - 1;
              if (v71 < 0 == v34)
              {
                *(a2 + 14) = v71;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v72 = *v12;
              if (v72 != 58)
              {
                if (v72 == 66)
                {
                  *(a2 + 1) = v12 + 1;
LABEL_145:
                  *(v5 + 204) |= 0x200u;
                  v73 = *(v5 + 184);
                  if (!v73)
                  {
                    operator new();
                  }

                  v110 = 0;
                  v74 = *(a2 + 1);
                  if (v74 >= *(a2 + 2) || *v74 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v110 = *v74;
                    *(a2 + 1) = v74 + 1;
                  }

                  v75 = *(a2 + 14);
                  v76 = *(a2 + 15);
                  *(a2 + 14) = v75 + 1;
                  if (v75 >= v76)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!wireless_diagnostics::google::protobuf::FileOptions::MergePartialFromCodedStream(v73, a2, v77, v78) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v79 = *(a2 + 14);
                  v34 = __OFSUB__(v79, 1);
                  v80 = v79 - 1;
                  if (v80 < 0 == v34)
                  {
                    *(a2 + 14) = v80;
                  }

                  v81 = *(a2 + 1);
                  if (v81 < *(a2 + 2) && *v81 == 74)
                  {
                    *(a2 + 1) = v81 + 1;
                    goto LABEL_159;
                  }
                }

                goto LABEL_2;
              }

LABEL_126:
              *(a2 + 1) = v12 + 1;
            }
          }
        }

        if (v8 >> 3 > 2)
        {
          break;
        }

        if (v9 == 1)
        {
          if (v10 != 2)
          {
            goto LABEL_57;
          }

          *(v5 + 204) |= 1u;
          if (*(v5 + 16) == v6)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 18)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v9 != 2 || v10 != 2)
          {
            goto LABEL_57;
          }

LABEL_38:
          *(v5 + 204) |= 2u;
          if (*(v5 + 24) == v6)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 26)
          {
            while (1)
            {
              *(a2 + 1) = v12 + 1;
LABEL_63:
              v16 = *(v5 + 44);
              v17 = *(v5 + 40);
              if (v17 >= v16)
              {
                if (v16 == *(v5 + 48))
                {
                  this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 32));
                  v16 = *(v5 + 44);
                }

                *(v5 + 44) = v16 + 1;
                v20 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                v21 = *(v5 + 32);
                v22 = *(v5 + 40);
                *(v5 + 40) = v22 + 1;
                *(v21 + 8 * v22) = v20;
              }

              else
              {
                v18 = *(v5 + 32);
                *(v5 + 40) = v17 + 1;
                v19 = *(v18 + 8 * v17);
              }

              this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!this)
              {
                return this;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v23 = *v12;
              if (v23 != 26)
              {
                if (v23 == 34)
                {
                  while (1)
                  {
                    *(a2 + 1) = v12 + 1;
LABEL_73:
                    v24 = *(v5 + 100);
                    v25 = *(v5 + 96);
                    if (v25 >= v24)
                    {
                      if (v24 == *(v5 + 104))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 88));
                        v24 = *(v5 + 100);
                      }

                      *(v5 + 100) = v24 + 1;
                      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto>::New();
                    }

                    v26 = *(v5 + 88);
                    *(v5 + 96) = v25 + 1;
                    v27 = *(v26 + 8 * v25);
                    v110 = 0;
                    v28 = *(a2 + 1);
                    if (v28 >= *(a2 + 2) || *v28 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v110 = *v28;
                      *(a2 + 1) = v28 + 1;
                    }

                    v29 = *(a2 + 14);
                    v30 = *(a2 + 15);
                    *(a2 + 14) = v29 + 1;
                    if (v29 >= v30)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!wireless_diagnostics::google::protobuf::DescriptorProto::MergePartialFromCodedStream(v27, a2, v31, v32) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v33 = *(a2 + 14);
                    v34 = __OFSUB__(v33, 1);
                    v35 = v33 - 1;
                    if (v35 < 0 == v34)
                    {
                      *(a2 + 14) = v35;
                    }

                    v12 = *(a2 + 1);
                    if (v12 >= *(a2 + 2))
                    {
                      break;
                    }

                    v36 = *v12;
                    if (v36 != 34)
                    {
                      if (v36 != 42)
                      {
                        goto LABEL_2;
                      }

                      goto LABEL_90;
                    }
                  }
                }

                goto LABEL_2;
              }
            }
          }
        }
      }

      if (v9 == 3)
      {
        if (v10 != 2)
        {
          break;
        }

        goto LABEL_63;
      }

      if (v9 == 4)
      {
        if (v10 != 2)
        {
          break;
        }

        goto LABEL_73;
      }

      if (v9 != 5 || v10 != 2)
      {
        break;
      }

      while (1)
      {
        v37 = *(v5 + 124);
        v38 = *(v5 + 120);
        if (v38 >= v37)
        {
          if (v37 == *(v5 + 128))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 112));
            v37 = *(v5 + 124);
          }

          *(v5 + 124) = v37 + 1;
          wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumDescriptorProto>::New();
        }

        v39 = *(v5 + 112);
        *(v5 + 120) = v38 + 1;
        v40 = *(v39 + 8 * v38);
        v110 = 0;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v110))
          {
            return 0;
          }
        }

        else
        {
          v110 = *v41;
          *(a2 + 1) = v41 + 1;
        }

        v42 = *(a2 + 14);
        v43 = *(a2 + 15);
        *(a2 + 14) = v42 + 1;
        if (v42 >= v43)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!wireless_diagnostics::google::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(v40, a2, v44, v45) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v46 = *(a2 + 14);
        v34 = __OFSUB__(v46, 1);
        v47 = v46 - 1;
        if (v47 < 0 == v34)
        {
          *(a2 + 14) = v47;
        }

        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v48 = *v12;
        if (v48 != 42)
        {
          if (v48 != 50)
          {
            goto LABEL_2;
          }

          goto LABEL_108;
        }

LABEL_90:
        *(a2 + 1) = v12 + 1;
      }
    }

LABEL_57:
    if (v10 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, v8, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::FileDescriptorProto::Clear(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  if (*(this + 204))
  {
    v2 = MEMORY[0x29EDC9758];
    if (*(this + 204))
    {
      v3 = *(this + 2);
      if (v3 != MEMORY[0x29EDC9758])
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

    if ((*(this + 204) & 2) != 0)
    {
      v4 = *(this + 3);
      if (v4 != v2)
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
  }

  v5 = *(this + 51);
  if ((v5 & 0x1FE00) != 0)
  {
    if ((v5 & 0x200) != 0)
    {
      v6 = *(this + 23);
      if (v6)
      {
        wireless_diagnostics::google::protobuf::FileOptions::Clear(v6);
        v5 = *(this + 51);
      }
    }

    if ((v5 & 0x400) != 0)
    {
      v7 = *(this + 24);
      if (v7)
      {
        wireless_diagnostics::google::protobuf::SourceCodeInfo::Clear(v7);
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 32);
  *(this + 16) = 0;
  *(this + 20) = 0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 88);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 112);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 136);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 160);
  v10 = *(this + 1);
  v9 = (this + 8);
  *(v9 + 49) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
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

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

wireless_diagnostics::google::protobuf::DescriptorProto *wireless_diagnostics::google::protobuf::DescriptorProto::DescriptorProto(wireless_diagnostics::google::protobuf::DescriptorProto *this)
{
  *this = &unk_2A1F91FA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *&v2 = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 34) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 9) = v2;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorProto::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::DescriptorProto *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v7 = *(a2 + 1);
          if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v7 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v9 = TagFallback >> 3;
          v10 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (TagFallback >> 3 > 5)
          {
            if (v9 == 6)
            {
              if (v10 != 2)
              {
                goto LABEL_34;
              }

              while (2)
              {
                v60 = *(this + 15);
                v61 = *(this + 14);
                if (v61 >= v60)
                {
                  if (v60 == *(this + 16))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
                    v60 = *(this + 15);
                  }

                  *(this + 15) = v60 + 1;
                  wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
                }

                v62 = *(this + 6);
                *(this + 14) = v61 + 1;
                v63 = *(v62 + 8 * v61);
                v80 = 0;
                v64 = *(a2 + 1);
                if (v64 >= *(a2 + 2) || *v64 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
                  {
                    return 0;
                  }
                }

                else
                {
                  v80 = *v64;
                  *(a2 + 1) = v64 + 1;
                }

                v65 = *(a2 + 14);
                v66 = *(a2 + 15);
                *(a2 + 14) = v65 + 1;
                if (v65 >= v66)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v63, a2, v67, v68) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v69 = *(a2 + 14);
                v23 = __OFSUB__(v69, 1);
                v70 = v69 - 1;
                if (v70 < 0 == v23)
                {
                  *(a2 + 14) = v70;
                }

                v12 = *(a2 + 1);
                if (v12 < *(a2 + 2))
                {
                  v71 = *v12;
                  if (v71 == 50)
                  {
LABEL_109:
                    *(a2 + 1) = v12 + 1;
                    continue;
                  }

                  if (v71 == 58)
                  {
                    *(a2 + 1) = v12 + 1;
                    goto LABEL_128;
                  }
                }

                break;
              }
            }

            else
            {
              if (v9 != 7 || v10 != 2)
              {
                goto LABEL_34;
              }

LABEL_128:
              *(this + 39) |= 0x40u;
              v72 = *(this + 18);
              if (!v72)
              {
                operator new();
              }

              v80 = 0;
              v73 = *(a2 + 1);
              if (v73 >= *(a2 + 2) || *v73 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
                {
                  return 0;
                }
              }

              else
              {
                v80 = *v73;
                *(a2 + 1) = v73 + 1;
              }

              v74 = *(a2 + 14);
              v75 = *(a2 + 15);
              *(a2 + 14) = v74 + 1;
              if (v74 >= v75)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::MessageOptions::MergePartialFromCodedStream(v72, a2, v76, v77) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v78 = *(a2 + 14);
              v23 = __OFSUB__(v78, 1);
              v79 = v78 - 1;
              if (v79 < 0 == v23)
              {
                *(a2 + 14) = v79;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }

          else
          {
            if (v9 == 4)
            {
              if (v10 != 2)
              {
                goto LABEL_34;
              }

              goto LABEL_74;
            }

            if (v9 != 5 || v10 != 2)
            {
              goto LABEL_34;
            }

            while (1)
            {
              v48 = *(this + 33);
              v49 = *(this + 32);
              if (v49 >= v48)
              {
                if (v48 == *(this + 34))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
                  v48 = *(this + 33);
                }

                *(this + 33) = v48 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange>::New();
              }

              v50 = *(this + 15);
              *(this + 32) = v49 + 1;
              v51 = *(v50 + 8 * v49);
              v80 = 0;
              v52 = *(a2 + 1);
              if (v52 >= *(a2 + 2) || *v52 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
                {
                  return 0;
                }
              }

              else
              {
                v80 = *v52;
                *(a2 + 1) = v52 + 1;
              }

              v53 = *(a2 + 14);
              v54 = *(a2 + 15);
              *(a2 + 14) = v53 + 1;
              if (v53 >= v54)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::MergePartialFromCodedStream(v51, a2, v55, v56) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v57 = *(a2 + 14);
              v23 = __OFSUB__(v57, 1);
              v58 = v57 - 1;
              if (v58 < 0 == v23)
              {
                *(a2 + 14) = v58;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v59 = *v12;
              if (v59 != 42)
              {
                if (v59 == 50)
                {
                  goto LABEL_109;
                }

                goto LABEL_2;
              }

LABEL_91:
              *(a2 + 1) = v12 + 1;
            }
          }
        }

        if (v9 != 1)
        {
          break;
        }

        if (v10 != 2)
        {
          goto LABEL_34;
        }

        *(this + 39) |= 1u;
        if (*(this + 2) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v12 + 1;
LABEL_38:
            v13 = *(this + 9);
            v14 = *(this + 8);
            if (v14 >= v13)
            {
              if (v13 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v13 = *(this + 9);
              }

              *(this + 9) = v13 + 1;
              wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
            }

            v15 = *(this + 3);
            *(this + 8) = v14 + 1;
            v16 = *(v15 + 8 * v14);
            v80 = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
              {
                return 0;
              }
            }

            else
            {
              v80 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(a2 + 14);
            v19 = *(a2 + 15);
            *(a2 + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v16, a2, v20, v21) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v22 = *(a2 + 14);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 == v23)
            {
              *(a2 + 14) = v24;
            }

            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2))
            {
              break;
            }

            v25 = *v12;
            if (v25 != 18)
            {
              if (v25 != 26)
              {
                goto LABEL_2;
              }

              goto LABEL_55;
            }
          }
        }
      }

      if (v9 == 2)
      {
        if (v10 != 2)
        {
          break;
        }

        goto LABEL_38;
      }

      if (v9 != 3 || v10 != 2)
      {
        break;
      }

      while (1)
      {
        v26 = *(this + 21);
        v27 = *(this + 20);
        if (v27 >= v26)
        {
          if (v26 == *(this + 22))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
            v26 = *(this + 21);
          }

          *(this + 21) = v26 + 1;
          wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto>::New();
        }

        v28 = *(this + 9);
        *(this + 20) = v27 + 1;
        v29 = *(v28 + 8 * v27);
        v80 = 0;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
          {
            return 0;
          }
        }

        else
        {
          v80 = *v30;
          *(a2 + 1) = v30 + 1;
        }

        v31 = *(a2 + 14);
        v32 = *(a2 + 15);
        *(a2 + 14) = v31 + 1;
        if (v31 >= v32)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!wireless_diagnostics::google::protobuf::DescriptorProto::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v33 = *(a2 + 14);
        v23 = __OFSUB__(v33, 1);
        v34 = v33 - 1;
        if (v34 < 0 == v23)
        {
          *(a2 + 14) = v34;
        }

        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v35 = *v12;
        if (v35 != 26)
        {
          if (v35 == 34)
          {
            while (1)
            {
              *(a2 + 1) = v12 + 1;
LABEL_74:
              v36 = *(this + 27);
              v37 = *(this + 26);
              if (v37 >= v36)
              {
                if (v36 == *(this + 28))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
                  v36 = *(this + 27);
                }

                *(this + 27) = v36 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumDescriptorProto>::New();
              }

              v38 = *(this + 12);
              *(this + 26) = v37 + 1;
              v39 = *(v38 + 8 * v37);
              v80 = 0;
              v40 = *(a2 + 1);
              if (v40 >= *(a2 + 2) || *v40 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
                {
                  return 0;
                }
              }

              else
              {
                v80 = *v40;
                *(a2 + 1) = v40 + 1;
              }

              v41 = *(a2 + 14);
              v42 = *(a2 + 15);
              *(a2 + 14) = v41 + 1;
              if (v41 >= v42)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(v39, a2, v43, v44) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v45 = *(a2 + 14);
              v23 = __OFSUB__(v45, 1);
              v46 = v45 - 1;
              if (v46 < 0 == v23)
              {
                *(a2 + 14) = v46;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v47 = *v12;
              if (v47 != 34)
              {
                if (v47 == 42)
                {
                  goto LABEL_91;
                }

                goto LABEL_2;
              }
            }
          }

          goto LABEL_2;
        }

LABEL_55:
        *(a2 + 1) = v12 + 1;
      }
    }

LABEL_34:
    if (v10 == 4)
    {
      return 1;
    }

    if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v7 = *(a2 + 1);
        if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v7 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v9 = TagFallback >> 3;
        v10 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v9 != 3)
          {
            if (v9 == 4 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_55;
            }

            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v16 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_43:
          v36 = 0;
          if (v16 >= v11 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
            if (!result)
            {
              return result;
            }

            v19 = v36;
            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            v20 = v16 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 6) = v19;
          *(this + 18) |= 2u;
          if (v20 < v11 && *v20 == 32)
          {
            v12 = v20 + 1;
            *(a2 + 1) = v12;
LABEL_55:
            v36 = 0;
            if (v12 >= v11 || (v21 = *v12, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v21 = v36;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if ((v21 - 1) > 2)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 8), 4, v21);
            }

            else
            {
              *(this + 18) |= 4u;
              *(this + 7) = v21;
            }

            v22 = *(a2 + 1);
            v17 = *(a2 + 2);
            if (v22 < v17 && *v22 == 40)
            {
              v18 = v22 + 1;
              *(a2 + 1) = v18;
LABEL_66:
              v36 = 0;
              if (v18 >= v17 || (v23 = *v18, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                if (!result)
                {
                  return result;
                }

                v23 = v36;
              }

              else
              {
                *(a2 + 1) = v18 + 1;
              }

              if ((v23 - 1) > 0x11)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 8), 5, v23);
              }

              else
              {
                *(this + 18) |= 8u;
                *(this + 16) = v23;
              }

              v24 = *(a2 + 1);
              if (v24 < *(a2 + 2) && *v24 == 50)
              {
                *(a2 + 1) = v24 + 1;
LABEL_77:
                *(this + 18) |= 0x10u;
                if (*(this + 4) == v6)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                if (v25 < *(a2 + 2) && *v25 == 58)
                {
                  *(a2 + 1) = v25 + 1;
                  goto LABEL_83;
                }
              }
            }
          }
        }

        else if (v9 == 1)
        {
          if (v10 != 2)
          {
            goto LABEL_47;
          }

          *(this + 18) |= 1u;
          if (*(this + 2) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 18)
          {
            *(a2 + 1) = v14 + 1;
LABEL_33:
            *(this + 18) |= 0x20u;
            if (*(this + 5) == v6)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v15 < v11 && *v15 == 24)
            {
              v16 = v15 + 1;
              *(a2 + 1) = v16;
              goto LABEL_43;
            }
          }
        }

        else
        {
          if (v9 == 2 && v10 == 2)
          {
            goto LABEL_33;
          }

LABEL_47:
          if (v10 == 4)
          {
            return 1;
          }

          if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
          {
            return 0;
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        if (v9 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v17 = *(a2 + 2);
            goto LABEL_66;
          }
        }

        else if (v9 == 6 && v10 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_47;
      }

      if (v9 != 7)
      {
        break;
      }

      if (v10 != 2)
      {
        goto LABEL_47;
      }

LABEL_83:
      *(this + 18) |= 0x40u;
      if (*(this + 6) == v6)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      if (v26 < *(a2 + 2) && *v26 == 66)
      {
        *(a2 + 1) = v26 + 1;
        goto LABEL_89;
      }
    }

    if (v9 != 8 || v10 != 2)
    {
      goto LABEL_47;
    }

LABEL_89:
    *(this + 18) |= 0x80u;
    v27 = *(this + 7);
    if (!v27)
    {
      operator new();
    }

    v36 = 0;
    v28 = *(a2 + 1);
    if (v28 >= *(a2 + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v28;
      *(a2 + 1) = v28 + 1;
    }

    v29 = *(a2 + 14);
    v30 = *(a2 + 15);
    *(a2 + 14) = v29 + 1;
    if (v29 >= v30)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::FieldOptions::MergePartialFromCodedStream(v27, a2, v31, v32) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v33 = *(a2 + 14);
    v34 = __OFSUB__(v33, 1);
    v35 = v33 - 1;
    if (v35 < 0 == v34)
    {
      *(a2 + 14) = v35;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

wireless_diagnostics::google::protobuf::FieldDescriptorProto *wireless_diagnostics::google::protobuf::FieldDescriptorProto::FieldDescriptorProto(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this)
{
  *this = &unk_2A1F92058;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  v2 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0x100000000;
  *(this + 8) = 1;
  *(this + 4) = v2;
  *(this + 5) = v2;
  *(this + 6) = v2;
  *(this + 7) = 0;
  *(this + 18) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::EnumDescriptorProto *wireless_diagnostics::google::protobuf::EnumDescriptorProto::EnumDescriptorProto(wireless_diagnostics::google::protobuf::EnumDescriptorProto *this)
{
  *this = &unk_2A1F92108;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 10) = 0;
  *&v2 = 0;
  *(this + 24) = 0u;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v2;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::EnumDescriptorProto *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v7 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v9 = TagFallback >> 3;
      v10 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v10 != 2)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = *(this + 9);
        v14 = *(this + 8);
        if (v14 >= v13)
        {
          if (v13 == *(this + 10))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
            v13 = *(this + 9);
          }

          *(this + 9) = v13 + 1;
          wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumValueDescriptorProto>::New();
        }

        v15 = *(this + 3);
        *(this + 8) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v34 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
          {
            return 0;
          }
        }

        else
        {
          v34 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::MergePartialFromCodedStream(v16, a2, v20, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2))
        {
          v25 = *v12;
          if (v25 == 18)
          {
            goto LABEL_46;
          }

          if (v25 == 26)
          {
            *(a2 + 1) = v12 + 1;
LABEL_41:
            *(this + 15) |= 4u;
            v26 = *(this + 6);
            if (!v26)
            {
              operator new();
            }

            v35 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
              {
                return 0;
              }
            }

            else
            {
              v35 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!wireless_diagnostics::google::protobuf::EnumOptions::MergePartialFromCodedStream(v26, a2, v30, v31) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v32 = *(a2 + 14);
            v23 = __OFSUB__(v32, 1);
            v33 = v32 - 1;
            if (v33 < 0 == v23)
            {
              *(a2 + 14) = v33;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }

      else
      {
        if (v9 != 1 || v10 != 2)
        {
          goto LABEL_20;
        }

        *(this + 15) |= 1u;
        if (*(this + 2) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
LABEL_46:
          *(a2 + 1) = v12 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v10 == 2)
    {
      goto LABEL_41;
    }

LABEL_20:
    if (v10 == 4)
    {
      return 1;
    }

    if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this)
{
  *this = &unk_2A1F921B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *&v2 = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = v2;
  *(this + 10) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v7 = *(a2 + 1);
        if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v7 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v9 = TagFallback >> 3;
        v10 = TagFallback & 7;
        if (TagFallback >> 3 == 3)
        {
          if (v10 == 2)
          {
            v17 = *(this + 10);
            goto LABEL_32;
          }

          goto LABEL_23;
        }

        if (v9 != 2)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v14 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_19;
        }

LABEL_23:
        if (v10 == 4)
        {
          return 1;
        }

        if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
        {
          return 0;
        }
      }

      if (v9 != 1 || v10 != 2)
      {
        goto LABEL_23;
      }

      *(this + 10) |= 1u;
      if (*(this + 2) == v6)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v13 < v12 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(a2 + 1) = v14;
LABEL_19:
        v27 = 0;
        if (v14 >= v12 || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v15 = v27;
          v16 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 8) = v15;
        v17 = *(this + 10) | 2;
        *(this + 10) = v17;
        if (v16 < v12 && *v16 == 26)
        {
          break;
        }
      }
    }

    *(a2 + 1) = v16 + 1;
LABEL_32:
    *(this + 10) = v17 | 4;
    v18 = *(this + 3);
    if (!v18)
    {
      operator new();
    }

    v28 = 0;
    v19 = *(a2 + 1);
    if (v19 >= *(a2 + 2) || *v19 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
      {
        return 0;
      }
    }

    else
    {
      v28 = *v19;
      *(a2 + 1) = v19 + 1;
    }

    v20 = *(a2 + 14);
    v21 = *(a2 + 15);
    *(a2 + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::EnumValueOptions::MergePartialFromCodedStream(v18, a2, v22, v23) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::DescriptorProto_ExtensionRange(wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *this)
{
  *this = &unk_2A1F91EF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v17 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
        if (!result)
        {
          return result;
        }

        v10 = v17;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 4) = v10;
      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_22:
        v16 = 0;
        if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v13 = v16;
          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 5) = v13;
        *(this + 7) |= 2u;
        if (v14 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

wireless_diagnostics::google::protobuf::FieldOptions *wireless_diagnostics::google::protobuf::FieldOptions::FieldOptions(wireless_diagnostics::google::protobuf::FieldOptions *this)
{
  *this = &unk_2A1F92528;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 10) = 0;
  *(this + 43) = 0;
  *(this + 6) = MEMORY[0x29EDC9758];
  *(this + 7) = 0;
  *(this + 47) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::FieldOptions::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::FieldOptions *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = *(a2 + 1);
          if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v7 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v9 = TagFallback >> 3;
          v10 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (v9 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v44 = 0;
            v14 = *(a2 + 1);
            if (v14 >= *(a2 + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v15 = v44;
            }

            else
            {
              *(a2 + 1) = v14 + 1;
            }

            if (v15 > 2)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 32), 1, v15);
            }

            else
            {
              *(this + 21) |= 1u;
              *(this + 10) = v15;
            }

            v21 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v21 < v12 && *v21 == 16)
            {
              v19 = v21 + 1;
              *(a2 + 1) = v19;
LABEL_46:
              v44 = 0;
              if (v19 >= v12 || (v22 = *v19, (v22 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
                if (!result)
                {
                  return result;
                }

                v22 = v44;
                v23 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                v23 = v19 + 1;
                *(a2 + 1) = v23;
              }

              *(this + 44) = v22 != 0;
              *(this + 21) |= 2u;
              if (v23 < v12 && *v23 == 24)
              {
                v13 = v23 + 1;
                *(a2 + 1) = v13;
                goto LABEL_54;
              }
            }
          }

          else
          {
            if (v9 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_31;
              }

              v19 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_46;
            }

            if (v9 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
LABEL_54:
            v44 = 0;
            if (v13 >= v12 || (v24 = *v13, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v24 = v44;
              v25 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v25 = v13 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 46) = v24 != 0;
            *(this + 21) |= 8u;
            if (v25 < v12 && *v25 == 40)
            {
              v16 = v25 + 1;
              *(a2 + 1) = v16;
              goto LABEL_62;
            }
          }
        }

        if (TagFallback >> 3 > 9)
        {
          break;
        }

        if (v9 == 5)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v16 = *(a2 + 1);
          v12 = *(a2 + 2);
LABEL_62:
          v44 = 0;
          if (v16 >= v12 || (v26 = *v16, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
            if (!result)
            {
              return result;
            }

            v26 = v44;
            v27 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 45) = v26 != 0;
          v11 = *(this + 21) | 4;
          *(this + 21) = v11;
          if (v27 < v12 && *v27 == 74)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v9 != 9 || v10 != 2)
          {
            goto LABEL_31;
          }

          v11 = *(this + 21);
LABEL_70:
          *(this + 21) = v11 | 0x10;
          if (*(this + 6) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v28 < v17 && *v28 == 80)
          {
            v18 = v28 + 1;
            *(a2 + 1) = v18;
LABEL_76:
            v44 = 0;
            if (v18 >= v17 || (v29 = *v18, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v29 = v44;
              v30 = *(a2 + 1);
              v17 = *(a2 + 2);
            }

            else
            {
              v30 = (v18 + 1);
              *(a2 + 1) = v30;
            }

            *(this + 47) = v29 != 0;
            *(this + 21) |= 0x20u;
            if (v17 - v30 >= 2 && *v30 == 186 && v30[1] == 62)
            {
LABEL_84:
              *(a2 + 1) = v30 + 2;
              goto LABEL_85;
            }
          }
        }
      }

      if (v9 != 10)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_76;
      }

LABEL_31:
      if (v10 == 4)
      {
        return 1;
      }

      if (TagFallback >> 6 < 0x7D)
      {
        if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 32), a4))
        {
          return 0;
        }
      }

      else if ((wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((this + 8), TagFallback, a2, wireless_diagnostics::google::protobuf::FieldOptions::default_instance_, (this + 32)) & 1) == 0)
      {
        return 0;
      }
    }

    if (v9 != 999 || v10 != 2)
    {
      goto LABEL_31;
    }

LABEL_85:
    v31 = *(this + 17);
    v32 = *(this + 16);
    if (v32 >= v31)
    {
      if (v31 == *(this + 18))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
        v31 = *(this + 17);
      }

      *(this + 17) = v31 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::UninterpretedOption>::New();
    }

    v33 = *(this + 7);
    *(this + 16) = v32 + 1;
    v34 = *(v33 + 8 * v32);
    v44 = 0;
    v35 = *(a2 + 1);
    if (v35 >= *(a2 + 2) || *v35 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
      {
        return 0;
      }
    }

    else
    {
      v44 = *v35;
      *(a2 + 1) = v35 + 1;
    }

    v36 = *(a2 + 14);
    v37 = *(a2 + 15);
    *(a2 + 14) = v36 + 1;
    if (v36 >= v37)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::UninterpretedOption::MergePartialFromCodedStream(v34, a2, v38, v39) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v40 = *(a2 + 14);
    v41 = __OFSUB__(v40, 1);
    v42 = v40 - 1;
    if (v42 < 0 == v41)
    {
      *(a2 + 14) = v42;
    }

    v30 = *(a2 + 1);
    v43 = *(a2 + 2);
    if (v43 - v30 > 1 && *v30 == 186 && v30[1] == 62)
    {
      goto LABEL_84;
    }

    if (v30 == v43 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::FileOptions::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::FileOptions *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v7 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v9 = TagFallback >> 3;
      v10 = TagFallback & 7;
      if (TagFallback >> 3 > 0xF)
      {
        break;
      }

      if (TagFallback >> 3 <= 8)
      {
        if (v9 == 1)
        {
          if (v10 != 2)
          {
            goto LABEL_53;
          }

          *(this + 26) |= 1u;
          if (*(this + 5) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 66)
          {
            *(a2 + 1) = v15 + 1;
LABEL_35:
            *(this + 26) |= 2u;
            if (*(this + 6) == v6)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v16 = *(a2 + 2);
            if (v17 < v16 && *v17 == 72)
            {
              v18 = v17 + 1;
              *(a2 + 1) = v18;
LABEL_45:
              v50 = 0;
              if (v18 >= v16 || (v20 = *v18, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                if (!result)
                {
                  return result;
                }

                v20 = v50;
              }

              else
              {
                *(a2 + 1) = v18 + 1;
              }

              if ((v20 - 1) > 2)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 32), 9, v20);
              }

              else
              {
                *(this + 26) |= 0x10u;
                *(this + 14) = v20;
              }

              v25 = *(a2 + 1);
              v22 = *(a2 + 2);
              if (v25 < v22 && *v25 == 80)
              {
                v23 = v25 + 1;
                *(a2 + 1) = v23;
                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          if (v9 == 8 && v10 == 2)
          {
            goto LABEL_35;
          }

LABEL_53:
          if (v10 == 4)
          {
            return 1;
          }

          if (TagFallback >> 6 < 0x7D)
          {
            if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 32), a4))
            {
              return 0;
            }
          }

          else if ((wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((this + 8), TagFallback, a2, wireless_diagnostics::google::protobuf::FileOptions::default_instance_, (this + 32)) & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v9 == 9)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_53;
          }

          v18 = *(a2 + 1);
          v16 = *(a2 + 2);
          goto LABEL_45;
        }

        if (v9 == 10)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_53;
          }

          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
LABEL_68:
          v50 = 0;
          if (v23 >= v22 || (v26 = *v23, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
            if (!result)
            {
              return result;
            }

            v26 = v50;
            v27 = *(a2 + 1);
            v22 = *(a2 + 2);
          }

          else
          {
            v27 = v23 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 60) = v26 != 0;
          v11 = *(this + 26) | 4;
          *(this + 26) = v11;
          if (v27 < v22 && *v27 == 90)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_76;
          }
        }

        else
        {
          if (v9 != 11 || v10 != 2)
          {
            goto LABEL_53;
          }

          v11 = *(this + 26);
LABEL_76:
          *(this + 26) = v11 | 0x20;
          if (*(this + 8) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v12 - v28 >= 2 && *v28 == 128 && v28[1] == 1)
          {
            v19 = (v28 + 2);
            *(a2 + 1) = v19;
LABEL_83:
            v50 = 0;
            if (v19 >= v12 || (v29 = *v19, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
              if (!result)
              {
                return result;
              }

              v29 = v50;
              v30 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v30 = (v19 + 1);
              *(a2 + 1) = v30;
            }

            *(this + 62) = v29 != 0;
            *(this + 26) |= 0x40u;
            if (v12 - v30 >= 2 && *v30 == 136 && v30[1] == 1)
            {
              v13 = (v30 + 2);
              *(a2 + 1) = v13;
LABEL_92:
              v50 = 0;
              if (v13 >= v12 || (v31 = *v13, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                if (!result)
                {
                  return result;
                }

                v31 = v50;
                v32 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                v32 = (v13 + 1);
                *(a2 + 1) = v32;
              }

              *(this + 63) = v31 != 0;
              *(this + 26) |= 0x80u;
              if (v12 - v32 >= 2 && *v32 == 144 && v32[1] == 1)
              {
                v21 = (v32 + 2);
                *(a2 + 1) = v21;
LABEL_101:
                v50 = 0;
                if (v21 >= v12 || (v33 = *v21, (v33 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = v50;
                  v34 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  v34 = (v21 + 1);
                  *(a2 + 1) = v34;
                }

                *(this + 96) = v33 != 0;
                *(this + 26) |= 0x100u;
                if (v12 - v34 >= 2 && *v34 == 160 && v34[1] == 1)
                {
                  v24 = (v34 + 2);
                  *(a2 + 1) = v24;
LABEL_110:
                  v50 = 0;
                  if (v24 >= v12 || (v35 = *v24, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v50;
                    v36 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    v36 = (v24 + 1);
                    *(a2 + 1) = v36;
                  }

                  *(this + 61) = v35 != 0;
                  *(this + 26) |= 8u;
                  if (v12 - v36 >= 2 && *v36 == 186 && v36[1] == 62)
                  {
LABEL_118:
                    *(a2 + 1) = v36 + 2;
                    goto LABEL_119;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (TagFallback >> 3 <= 0x11)
    {
      if (v9 == 16)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_83;
        }
      }

      else if (v9 == 17 && (TagFallback & 7) == 0)
      {
        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    if (v9 == 18)
    {
      if ((TagFallback & 7) == 0)
      {
        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_101;
      }

      goto LABEL_53;
    }

    if (v9 == 20)
    {
      if ((TagFallback & 7) == 0)
      {
        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_110;
      }

      goto LABEL_53;
    }

    if (v9 != 999 || v10 != 2)
    {
      goto LABEL_53;
    }

LABEL_119:
    v37 = *(this + 21);
    v38 = *(this + 20);
    if (v38 >= v37)
    {
      if (v37 == *(this + 22))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
        v37 = *(this + 21);
      }

      *(this + 21) = v37 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::UninterpretedOption>::New();
    }

    v39 = *(this + 9);
    *(this + 20) = v38 + 1;
    v40 = *(v39 + 8 * v38);
    v50 = 0;
    v41 = *(a2 + 1);
    if (v41 >= *(a2 + 2) || *v41 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
      {
        return 0;
      }
    }

    else
    {
      v50 = *v41;
      *(a2 + 1) = v41 + 1;
    }

    v42 = *(a2 + 14);
    v43 = *(a2 + 15);
    *(a2 + 14) = v42 + 1;
    if (v42 >= v43)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::UninterpretedOption::MergePartialFromCodedStream(v40, a2, v44, v45) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v46 = *(a2 + 14);
    v47 = __OFSUB__(v46, 1);
    v48 = v46 - 1;
    if (v48 < 0 == v47)
    {
      *(a2 + 14) = v48;
    }

    v36 = *(a2 + 1);
    v49 = *(a2 + 2);
    if (v49 - v36 > 1 && *v36 == 186 && v36[1] == 62)
    {
      goto LABEL_118;
    }

    if (v36 == v49 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

wireless_diagnostics::google::protobuf::FileOptions *wireless_diagnostics::google::protobuf::FileOptions::FileOptions(wireless_diagnostics::google::protobuf::FileOptions *this)
{
  *this = &unk_2A1F923C8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 100) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = MEMORY[0x29EDC9758];
  *(this + 6) = v2;
  *(this + 7) = 1;
  *(this + 8) = v2;
  *(this + 96) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 11) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v2 < *(this + 24));
  }

  if (*(this + 30) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 14) + 8 * v4);
      if (((*(*v5 + 40))(v5) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v4 < *(this + 30));
  }

  if (*(this + 36) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 17) + 8 * v6);
      if (((*(*v7 + 40))(v7) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v6 < *(this + 36));
  }

  if (*(this + 42) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 20) + 8 * v8);
      if (((*(*v9 + 40))(v9) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v8 < *(this + 42));
  }

  if ((*(this + 205) & 2) == 0)
  {
    return 1;
  }

  v10 = *(this + 23);
  if (!v10)
  {
    v10 = *(wireless_diagnostics::google::protobuf::FileDescriptorProto::default_instance_ + 184);
  }

  result = (*(*v10 + 40))(v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::DescriptorProto *this)
{
  if (*(this + 8) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 3) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v2 < *(this + 8));
  }

  if (*(this + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 6) + 8 * v4);
      if (((*(*v5 + 40))(v5) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v4 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 9) + 8 * v6);
      if (((*(*v7 + 40))(v7) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v6 < *(this + 20));
  }

  if (*(this + 26) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 12) + 8 * v8);
      if (((*(*v9 + 40))(v9) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v8 < *(this + 26));
  }

  if ((*(this + 156) & 0x40) == 0)
  {
    return 1;
  }

  v10 = *(this + 18);
  if (!v10)
  {
    v10 = *(wireless_diagnostics::google::protobuf::DescriptorProto::default_instance_ + 144);
  }

  result = (*(*v10 + 40))(v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::FieldDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this)
{
  if ((*(this + 72) & 0x80) == 0)
  {
    return 1;
  }

  v1 = *(this + 7);
  if (!v1)
  {
    v1 = *(wireless_diagnostics::google::protobuf::FieldDescriptorProto::default_instance_ + 56);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::EnumDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::EnumDescriptorProto *this)
{
  if (*(this + 8) < 1)
  {
LABEL_5:
    if ((*(this + 60) & 4) == 0)
    {
      return 1;
    }

    v4 = *(this + 6);
    if (!v4)
    {
      v4 = *(wireless_diagnostics::google::protobuf::EnumDescriptorProto::default_instance_ + 48);
    }

    result = (*(*v4 + 40))(v4);
    if (result)
    {
      return 1;
    }
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(this + 3) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 8))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    return 1;
  }

  v1 = *(this + 3);
  if (!v1)
  {
    v1 = *(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::default_instance_ + 24);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::FieldOptions::IsInitialized(wireless_diagnostics::google::protobuf::FieldOptions *this)
{
  if (*(this + 16) < 1)
  {
LABEL_5:

    return MEMORY[0x2A1C716F0](this + 8);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(this + 7) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 16))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t wireless_diagnostics::google::protobuf::FileOptions::IsInitialized(wireless_diagnostics::google::protobuf::FileOptions *this)
{
  if (*(this + 20) < 1)
  {
LABEL_5:

    return MEMORY[0x2A1C716F0](this + 8);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(this + 9) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 20))
      {
        goto LABEL_5;
      }
    }
  }
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

uint64_t wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v22 = a3;
  *(&v22 + 1) = a4;
  if ((wireless_diagnostics::google::protobuf::InsertIfNotPresent<std::map<std::string,std::pair<void const*,int>>,std::string,std::pair<void const*,int>>(a1, *(a2 + 16), &v22) & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    v6 = *(a2 + 16);
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v21);
    return 0;
  }

  if ((*(a2 + 204) & 2) != 0)
  {
    v8 = *(a2 + 24);
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      v21.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v21.__r_.__value_.__l.__data_ = v9;
    }
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(&v21, 46);
  }

  if (*(a2 + 96) < 1)
  {
LABEL_19:
    if (*(a2 + 120) < 1)
    {
LABEL_25:
      if (*(a2 + 168) < 1)
      {
LABEL_32:
        if (*(a2 + 144) < 1)
        {
          v7 = 1;
        }

        else
        {
          v17 = 0;
          do
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21.__r_.__value_.__l.__data_, *(*(*(a2 + 136) + 8 * v17) + 16), __p);
            v7 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v22, *(&v22 + 1));
            if (v20 < 0)
            {
              operator delete(__p[0]);
            }

            if ((v7 & 1) == 0)
            {
              break;
            }

            ++v17;
          }

          while (v17 < *(a2 + 144));
        }

        goto LABEL_40;
      }

      v15 = 0;
      while (1)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21.__r_.__value_.__l.__data_, *(*(*(a2 + 160) + 8 * v15) + 16), __p);
        v16 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v22, *(&v22 + 1));
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v16 & 1) == 0 || (wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddExtension(a1, *(*(a2 + 160) + 8 * v15), v22, *(&v22 + 1)) & 1) == 0)
        {
          break;
        }

        if (++v15 >= *(a2 + 168))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v13 = 0;
      while (1)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21.__r_.__value_.__l.__data_, *(*(*(a2 + 112) + 8 * v13) + 16), __p);
        v14 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v22, *(&v22 + 1));
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v14 & 1) == 0)
        {
          break;
        }

        if (++v13 >= *(a2 + 120))
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v11 = 0;
    while (1)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21.__r_.__value_.__l.__data_, *(*(*(a2 + 88) + 8 * v11) + 16), __p);
      v12 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v22, *(&v22 + 1));
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v12 & 1) == 0 || (wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(a1, *(*(a2 + 88) + 8 * v11), v22, *(&v22 + 1)) & 1) == 0)
      {
        break;
      }

      if (++v11 >= *(a2 + 96))
      {
        goto LABEL_19;
      }
    }
  }

  v7 = 0;
LABEL_40:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_299845470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::InsertIfNotPresent<std::map<std::string,std::pair<void const*,int>>,std::string,std::pair<void const*,int>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = *a3;
  std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(a1, &__p.__r_.__value_.__l.__data_);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6 & 1;
}

void sub_299845564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__construct_node<std::pair<std::string const,std::pair<void const*,int>>>();
  }

  return result;
}

void sub_29984569C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::ValidateSymbolName(a1, a2))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    goto LABEL_6;
  }

  LastLessOrEqual = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::FindLastLessOrEqual(a1, a2);
  if ((a1 + 32) == LastLessOrEqual)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
    }

    else
    {
      v14 = *a2;
    }

    v15 = a3;
    v16 = a4;
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(a1 + 24, &v14.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  v9 = LastLessOrEqual;
  if (wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::IsSubSymbol(a1, LastLessOrEqual + 4, a2))
  {
    goto LABEL_4;
  }

  v11 = v9[1];
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
      v12 = v9[2];
      v13 = *v12 == v9;
      v9 = v12;
    }

    while (!v13);
  }

  if (v12 != a1 + 32 && wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::IsSubSymbol(a1, a2, (v12 + 32)))
  {
LABEL_4:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
LABEL_6:
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v14);
    return 0;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
  }

  else
  {
    v14 = *a2;
  }

  v15 = a3;
  v16 = a4;
  std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>((a1 + 24), v12, &v14.__r_.__value_.__l.__data_);
LABEL_22:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return 1;
}

BOOL wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::ValidateSymbolName(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  v3 = *(a2 + 1);
  if (v2 >= 0)
  {
    v3 = a2[23];
  }

  if (v3)
  {
    v4 = 0;
    if (v2 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    v7 = v3;
    do
    {
      v8 = *v5;
      if (v8 != 46 && v8 != 95 && (v8 - 58) <= 0xFFFFFFF5 && *v5 - 91 <= 0xFFFFFFE5 && *v5 - 123 < 0xFFFFFFE6)
      {
        break;
      }

      v4 = v3 <= v6;
      ++v5;
      ++v6;
      --v7;
    }

    while (v7);
  }

  else
  {
    return 1;
  }

  return v4;
}

void *wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::FindLastLessOrEqual(uint64_t a1, const void **a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  for (i = (a1 + 24); v3; v3 = *(v3 + v7))
  {
    v6 = std::less<std::string>::operator()[abi:ne200100](i, a2, (v3 + 32));
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }

    if (v6)
    {
      v2 = v3;
    }
  }

  if (v2 == *i)
  {
    return v2;
  }

  v8 = *v2;
  if (*v2)
  {
    do
    {
      result = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    do
    {
      result = v2[2];
      v10 = *result == v2;
      v2 = result;
    }

    while (v10);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 80) < 1)
  {
LABEL_5:
    if (*(a2 + 56) < 1)
    {
      return 1;
    }

    else
    {
      v9 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddExtension(a1, *(*(a2 + 48) + 8 * v9), a3, a4);
        if ((result & 1) == 0)
        {
          break;
        }

        ++v9;
      }

      while (v9 < *(a2 + 56));
    }
  }

  else
  {
    v8 = 0;
    while ((wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(a1, *(*(a2 + 72) + 8 * v8), a3, a4) & 1) != 0)
    {
      if (++v8 >= *(a2 + 80))
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

BOOL wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::IsSubSymbol(uint64_t a1, const void **a2, const void **a3)
{
  v5 = *(a2 + 23);
  v6 = a2[1];
  if ((v5 & 0x80u) == 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = *(a3 + 23);
  v9 = a3[1];
  if ((v8 & 0x80u) == 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v7 == v10)
  {
    v11 = (v5 & 0x80u) == 0 ? a2 : *a2;
    v12 = (v8 & 0x80u) == 0 ? a3 : *a3;
    if (!memcmp(v11, v12, v7))
    {
      return 1;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (v10 < v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = v5;
    if (v10 < v5)
    {
      return 0;
    }
  }

  v14 = *a2;
  if ((v8 & 0x80) != 0)
  {
    if (v6 != -1)
    {
      if (v9 >= v6)
      {
        v9 = v6;
      }

      v15 = *a3;
      goto LABEL_30;
    }

LABEL_40:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v6 == -1)
  {
    goto LABEL_40;
  }

  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v15 = a3;
LABEL_30:
  if ((v5 & 0x80u) == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = memcmp(v15, v16, v9);
  result = 0;
  if (v9 == v6 && !v17)
  {
    if ((v8 & 0x80u) == 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    return *(v18 + v7) == 46;
  }

  return result;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__construct_node<std::pair<std::string const,std::pair<void const*,int>>>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(a1, a3, a5);
}

void *wireless_diagnostics::google::protobuf::FileDescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C2A2070](v5, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::FileDescriptorProto::default_instance_ != v1)
  {
    v7 = v1[23];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    this = v1[24];
    if (this)
    {
      v8 = *(*this + 8);

      return v8();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  *this = &unk_2A1F91E48;
  v2 = (this + 160);
  wireless_diagnostics::google::protobuf::FileDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 17);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 11);
  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x29C2A2050](v3, 0x1000C8052888210);
  }

  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x29C2A2050](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void wireless_diagnostics::google::protobuf::FileOptions::~FileOptions(wireless_diagnostics::google::protobuf::FileOptions *this)
{
  wireless_diagnostics::google::protobuf::FileOptions::~FileOptions(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F923C8;
  v2 = (this + 72);
  wireless_diagnostics::google::protobuf::FileOptions::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  MEMORY[0x29C2A1AD0](this + 8);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

uint64_t wireless_diagnostics::google::protobuf::FileOptions::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 48);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C2A2070](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 64);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C2A2070);
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C2A2050);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  if (*this)
  {
    wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
    v2 = *this;
    if (*this)
    {
      v3 = *v2;
      if (*v2)
      {
        *(v2 + 8) = v3;
        operator delete(v3);
      }

      MEMORY[0x29C2A2070](v2, 0x20C40960023A9);
    }
  }
}

void wireless_diagnostics::google::protobuf::DescriptorProto::~DescriptorProto(wireless_diagnostics::google::protobuf::DescriptorProto *this)
{
  wireless_diagnostics::google::protobuf::DescriptorProto::~DescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F91FA8;
  v2 = (this + 120);
  wireless_diagnostics::google::protobuf::DescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 9);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void *wireless_diagnostics::google::protobuf::DescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::DescriptorProto::default_instance_ != v1)
  {
    this = v1[18];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void *wireless_diagnostics::google::protobuf::FieldDescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C2A2070](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C2A2070](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C2A2070](v9, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptorProto::default_instance_ != v1)
  {
    this = v1[7];
    if (this)
    {
      v11 = *(*this + 8);

      return v11();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this)
{
  wireless_diagnostics::google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F92058;
  v2 = (this + 8);
  wireless_diagnostics::google::protobuf::FieldDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void wireless_diagnostics::google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(wireless_diagnostics::google::protobuf::EnumDescriptorProto *this)
{
  wireless_diagnostics::google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F92108;
  v2 = (this + 24);
  wireless_diagnostics::google::protobuf::EnumDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void *wireless_diagnostics::google::protobuf::EnumDescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::EnumDescriptorProto::default_instance_ != v1)
  {
    this = v1[6];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this)
{
  *this = &unk_2A1F921B8;
  v2 = (this + 8);
  wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

{
  wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

void *wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::default_instance_ != v1)
  {
    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *this)
{
  *this = &unk_2A1F91EF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(this);

  JUMPOUT(0x29C2A2070);
}

void wireless_diagnostics::google::protobuf::FieldOptions::~FieldOptions(wireless_diagnostics::google::protobuf::FieldOptions *this)
{
  *this = &unk_2A1F92528;
  v2 = (this + 56);
  wireless_diagnostics::google::protobuf::FieldOptions::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  MEMORY[0x29C2A1AD0](this + 8);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

{
  wireless_diagnostics::google::protobuf::FieldOptions::~FieldOptions(this);

  JUMPOUT(0x29C2A2070);
}

uint64_t wireless_diagnostics::google::protobuf::FieldOptions::SharedDtor(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C2A2070);
  }

  return this;
}

void sub_29984700C(_Unwind_Exception *a1)
{
  std::__hash_table<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::hash<wireless_diagnostics::google::protobuf::Descriptor const*>,std::equal_to<wireless_diagnostics::google::protobuf::Descriptor const*>,std::allocator<wireless_diagnostics::google::protobuf::Descriptor const*>>::~__hash_table(v3);
  MEMORY[0x29C2A2070](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C2A2050);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(void *a1, void (*a2)(wireless_diagnostics::google::protobuf::_anonymous_namespace_ *this))
{
  __dmb(0xBu);
  if (v4 != 2)
  {
    __p = (MEMORY[0x29EDC9780] + 16);
    v8 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(&__p);
  }

  __p = a1;
  v7 = a2;
  if ((v5 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a1);
    a2(&__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29984717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,void (*)(std::string const&)>>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v12[2], v2))
  {
    goto LABEL_22;
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

wireless_diagnostics::google::protobuf::FileDescriptorSet *wireless_diagnostics::google::protobuf::FileDescriptorSet::FileDescriptorSet(wireless_diagnostics::google::protobuf::FileDescriptorSet *this)
{
  *this = &unk_2A1F91D98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::ServiceDescriptorProto *wireless_diagnostics::google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(wireless_diagnostics::google::protobuf::ServiceDescriptorProto *this)
{
  *this = &unk_2A1F92268;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 10) = 0;
  *&v2 = 0;
  *(this + 24) = 0u;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v2;
  return this;
}

wireless_diagnostics::google::protobuf::MethodDescriptorProto *wireless_diagnostics::google::protobuf::MethodDescriptorProto::MethodDescriptorProto(wireless_diagnostics::google::protobuf::MethodDescriptorProto *this)
{
  *this = &unk_2A1F92318;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *&v2 = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 40) = v2;
  return this;
}

wireless_diagnostics::google::protobuf::MessageOptions *wireless_diagnostics::google::protobuf::MessageOptions::MessageOptions(wireless_diagnostics::google::protobuf::MessageOptions *this)
{
  *this = &unk_2A1F92478;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 32) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::EnumOptions *wireless_diagnostics::google::protobuf::EnumOptions::EnumOptions(wireless_diagnostics::google::protobuf::EnumOptions *this)
{
  *this = &unk_2A1F925D8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 64) = 1;
  return this;
}

wireless_diagnostics::google::protobuf::EnumValueOptions *wireless_diagnostics::google::protobuf::EnumValueOptions::EnumValueOptions(wireless_diagnostics::google::protobuf::EnumValueOptions *this)
{
  *this = &unk_2A1F92688;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::ServiceOptions *wireless_diagnostics::google::protobuf::ServiceOptions::ServiceOptions(wireless_diagnostics::google::protobuf::ServiceOptions *this)
{
  *this = &unk_2A1F92738;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::MethodOptions *wireless_diagnostics::google::protobuf::MethodOptions::MethodOptions(wireless_diagnostics::google::protobuf::MethodOptions *this)
{
  *this = &unk_2A1F927E8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::UninterpretedOption *wireless_diagnostics::google::protobuf::UninterpretedOption::UninterpretedOption(wireless_diagnostics::google::protobuf::UninterpretedOption *this)
{
  *this = &unk_2A1F92948;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = v2;
  *(this + 10) = v2;
  *(this + 11) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::UninterpretedOption_NamePart *wireless_diagnostics::google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(wireless_diagnostics::google::protobuf::UninterpretedOption_NamePart *this)
{
  *this = &unk_2A1F92898;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 28) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::SourceCodeInfo_Location *wireless_diagnostics::google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(wireless_diagnostics::google::protobuf::SourceCodeInfo_Location *this)
{
  *this = &unk_2A1F929F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 1) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = v2;
  *(this + 9) = v2;
  *(this + 10) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::SourceCodeInfo *wireless_diagnostics::google::protobuf::SourceCodeInfo::SourceCodeInfo(wireless_diagnostics::google::protobuf::SourceCodeInfo *this)
{
  *this = &unk_2A1F92AA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom(wireless_diagnostics::google::protobuf::UnknownFieldSet *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = this;
  v4 = 0;
  for (i = 0; ; ++i)
  {
    v6 = *a2;
    v7 = *a2 ? ((v6[1] - *v6) >> 4) : 0;
    if (i >= v7)
    {
      break;
    }

    this = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddField(v3, (*v6 + v4));
    v4 += 16;
  }

  return this;
}

void wireless_diagnostics::google::protobuf::FileDescriptorTables::~FileDescriptorTables(wireless_diagnostics::google::protobuf::FileDescriptorTables *this)
{
  v2 = *(this + 22);
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

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *this;
  *this = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

BOOL wireless_diagnostics::google::protobuf::internal::IsStructurallyValidUTF8(wireless_diagnostics::google::protobuf::internal *this, const char *a2)
{
  v2 = a2;
  v4 = 0;
  wireless_diagnostics::google::protobuf::internal::UTF8GenericScanFastAscii(wireless_diagnostics::google::protobuf::internal::utf8acceptnonsurrogates_obj, this, a2, &v4);
  return v4 == v2;
}

unsigned __int8 *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, unsigned __int8 *a4)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (v4)
  {
    v7 = this + 8;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v7 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 + 8);
        if (v8 >= a3)
        {
          break;
        }

        a4 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizesToArray((v7 + 40), v8, a4, a4);
        v9 = *(v7 + 1);
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
            v10 = *(v7 + 2);
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v5);
    }
  }

  return a4;
}

void wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback(wireless_diagnostics::google::protobuf::internal *a1, const char *a2)
{
  if (!wireless_diagnostics::google::protobuf::internal::IsStructurallyValidUTF8(a1, a2))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v2);
  }
}

void sub_299847F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::UTF8GenericScanFastAscii(unsigned int *a1, unint64_t a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v8 = a2 + a3;
  v14 = 0;
  v9 = a2;
  do
  {
    v10 = v9 & 7;
    if ((v9 & 7) != 0 && v9 < v8)
    {
      v11 = v9 + 1;
      while ((*v9 & 0x80000000) == 0)
      {
        ++v9;
        v10 = v11 & 7;
        if ((v11 & 7) != 0)
        {
          ++v11;
          if (v9 < v8)
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    else
    {
LABEL_9:
      if (!v10)
      {
        while (v9 < v8 - 7 && ((*(v9 + 4) | *v9) & 0x80808080) == 0)
        {
          v9 += 8;
        }
      }
    }

    if (v9 < v8)
    {
      v12 = v8 - v9;
      while ((*v9 & 0x80000000) == 0)
      {
        ++v9;
        if (!--v12)
        {
          v9 = v8;
          break;
        }
      }
    }

    result = wireless_diagnostics::google::protobuf::internal::UTF8GenericScan(a1, (a2 + v9 - a2), a3 - (v9 - a2), &v14);
    v9 += v14;
  }

  while (result == 253);
  *a4 = v9 - a2;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::UTF8GenericScan(unsigned int *a1, _BYTE *a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v4 = &a2[a3];
  v5 = v4 - 7;
  v6 = *(a1 + 4) + *a1;
  v7 = *(a1 + 7);
  v8 = a2;
  while (2)
  {
    v9 = v8 & 7;
    if ((v8 & 7) != 0 && v8 < v4)
    {
      v10 = v8 + 1;
      while (!*(v7 + *v8))
      {
        ++v8;
        v9 = v10 & 7;
        if ((v10 & 7) != 0)
        {
          ++v10;
          if (v8 < v4)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

LABEL_17:
      v11 = v8;
      goto LABEL_18;
    }

LABEL_9:
    if (v9 || v8 >= v5)
    {
      goto LABEL_17;
    }

    v11 = v8 + 4;
    while (1)
    {
      v12 = *(v11 - 1);
      if ((((v12 - a1[6]) | (v12 + a1[7]) | (*v11 - a1[6]) | (*v11 + a1[7])) & 0x80808080) != 0)
      {
        break;
      }

LABEL_15:
      v13 = v11 + 2;
      v14 = v11 + 1;
      v11 += 2;
      if (v14 >= v5)
      {
        v11 = v13 - 1;
        goto LABEL_18;
      }
    }

    if (!(*(v7 + BYTE1(v12)) | *(v7 + v12) | *(v7 + BYTE2(v12)) | *(v7 + (v12 >> 24))))
    {
      if (*(v7 + BYTE1(*v11)) | *(v7 + *v11) | *(v7 + BYTE2(*v11)) | *(v7 + (*v11 >> 24)))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    --v11;
LABEL_18:
    if (v11 < v4)
    {
      v15 = v4 - v11;
      v16 = v11 - 1;
      v17 = *(a1 + 4) + *a1;
      v8 = v11;
      while (1)
      {
        v18 = *(v17 + *v8);
        if (v18 > 0xEF)
        {
          break;
        }

        ++v8;
        v17 = v6 + (v18 << a1[4]);
        ++v16;
        if (!--v15)
        {
          LODWORD(v8) = v4;
          goto LABEL_29;
        }
      }

      if (a1[1] <= v17 - v6)
      {
        do
        {
          v8 = v16;
          if (v16 <= a2)
          {
            break;
          }

          --v16;
        }

        while ((*v8 & 0xC0) == 0x80);
      }

      if (v18 != 253)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  LODWORD(v8) = v11;
  LODWORD(v17) = a1[8] + *a1;
LABEL_29:
  if (a1[1] <= v17 - v6)
  {
    if (v11 <= v4)
    {
      v19 = v4;
    }

    else
    {
      v19 = v11;
    }

    v20 = v19 - 1;
    do
    {
      v8 = v20;
      if (v20 <= a2)
      {
        break;
      }

      --v20;
    }

    while ((*v8 & 0xC0) == 0x80);
    v18 = 240;
  }

  else
  {
    v18 = 241;
  }

LABEL_39:
  *a4 = v8 - a2;
  return v18;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,wireless_diagnostics::google::protobuf::FileDescriptor const*>>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v12[2], v2))
  {
    goto LABEL_22;
  }

  return v12;
}

void wireless_diagnostics::google::protobuf::strings::Substitute(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, std::string *a9@<X8>, __int128 a10, uint64_t a11)
{
  a9->__r_.__value_.__r.__words[0] = 0;
  a9->__r_.__value_.__l.__size_ = 0;
  a9->__r_.__value_.__r.__words[2] = 0;
  *(&v11 + 1) = a10;
  *&v11 = a8;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a9, a1, a2, a3, a4, a5, a6, a7, v11, *(&a10 + 1), a11);
}

void sub_29984878C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(std::string *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v36 = *MEMORY[0x29EDCA608];
  v30 = a3;
  v31[0] = a4;
  v31[1] = a5;
  v31[2] = a6;
  v31[3] = a7;
  v31[4] = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = 0;
  v11 = *a2;
  if (!*a2)
  {
    goto LABEL_35;
  }

  v12 = a3;
  v14 = this;
  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    if (v11 != 36)
    {
      goto LABEL_8;
    }

    v16 = v16 + 1;
    v17 = a2[v16];
    if ((v17 - 48) > 9)
    {
      if (v17 != 36)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        std::string::basic_string[abi:ne200100]<0>(v29, a2);
        wireless_diagnostics::google::protobuf::CEscape(v29);
      }

LABEL_8:
      ++v15;
      goto LABEL_9;
    }

    v18 = *(v31[(v17 - 48) - 1] + 8);
    if (v18 == -1)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      v20 = 0;
      do
      {
        if (*(v12 + 8) == -1)
        {
          break;
        }

        v12 = v31[v20++];
      }

      while (v12);
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      std::string::basic_string[abi:ne200100]<0>(v29, a2);
      wireless_diagnostics::google::protobuf::CEscape(v29);
    }

    v15 += v18;
LABEL_9:
    v16 = v16 + 1;
    v11 = a2[v16];
  }

  while (a2[v16]);
  if (v15)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::string::resize(this, v15 + size, 0);
    if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v14->__r_.__value_.__l.__size_)
      {
        goto LABEL_23;
      }

      v14 = v14->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v14->__r_.__value_.__s + 23))
    {
LABEL_23:
      v14 = 0;
    }

    v21 = 0;
    v22 = v14 + size;
    while (2)
    {
      v23 = a2[v21];
      if (v23 == 36)
      {
        v24 = v21 + 1;
        v25 = a2[v24];
        if ((v25 - 48) > 9)
        {
          if (v25 != 36)
          {
            goto LABEL_28;
          }

          *v22++ = 36;
        }

        else
        {
          v26 = &v31[v25 - 49];
          v27 = *v26;
          memcpy(v22, **v26, *(*v26 + 2));
          v22 += *(v27 + 2);
        }
      }

      else
      {
        if (!a2[v21])
        {
          break;
        }

        *v22++ = v23;
LABEL_28:
        LODWORD(v24) = v21;
      }

      v21 = v24 + 1;
      continue;
    }
  }

LABEL_35:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_299848ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&a23);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF6EB70, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

BOOL wireless_diagnostics::google::protobuf::Message::DebugString@<W0>(wireless_diagnostics::google::protobuf::Message *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(v3, this, a2);
}

void sub_299848CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::PrintToString(const wireless_diagnostics::google::protobuf::Message *a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(v3, a1, a2);
}

void wireless_diagnostics::google::protobuf::Message::ShortDebugString(wireless_diagnostics::google::protobuf::Message *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = 0;
  v6 = 0;
  v7 = 1;
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(&v6, this, a2);
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = *(a2 + 8);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    if (!*(a2 + 23))
    {
      return;
    }

    v4 = *(a2 + 23);
  }

  v5 = v4 - 1;
  if ((v3 & 0x80000000) != 0)
  {
    if (*(*a2 + v5) != 32)
    {
      return;
    }

    v3 = *(a2 + 8);
    goto LABEL_10;
  }

  if (*(a2 + v5) == 32)
  {
LABEL_10:
    std::string::resize(a2, v3 - 1, 0);
  }
}

void sub_299848DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *wireless_diagnostics::google::protobuf::TextFormat::Printer::Printer(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  return this;
}

{
  *(this + 3) = 0;
  *this = 0;
  return this;
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(int *a1, const wireless_diagnostics::google::protobuf::Message *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::io::StringOutputStream::StringOutputStream();
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(a1, a2, v7);
  MEMORY[0x29C2A17B0](v7);
  return v5;
}

BOOL wireless_diagnostics::google::protobuf::Message::Utf8DebugString@<W0>(wireless_diagnostics::google::protobuf::Message *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *(v3 + 3) = 0x1000000;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(v3, this, a2);
}

void sub_299848EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::Message::PrintDebugString(wireless_diagnostics::google::protobuf::Message *this)
{
  wireless_diagnostics::google::protobuf::Message::DebugString(this, __p);
  if (v3 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  printf("%s", v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void *wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::ParseInfoTree(void *this)
{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

void wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::~ParseInfoTree(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *this)
{
  v2 = this + 24;
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree **>>(*(v3 + 5), *(v3 + 6));
      *(v3 + 6) = *(v3 + 5);
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::destroy(v2, *(this + 4));
  std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::destroy(this, *(this + 1));
}

void wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::RecordLocation(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19[0] = a2;
  v19[2] = v19;
  v4 = std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::piecewise_construct_t const&,std::tuple<wireless_diagnostics::google::protobuf::FieldDescriptor const* const&>,std::tuple<>>(a1, v19);
  v5 = v4;
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v9 = v4[5];
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>((v4 + 5), v13);
    }

    v14 = (8 * v10);
    *v14 = a3;
    v8 = 8 * v10 + 8;
    v15 = v4[5];
    v16 = v4[6] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[5];
    v5[5] = v17;
    v5[6] = v8;
    v5[7] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = a3;
    v8 = (v7 + 1);
  }

  v5[6] = v8;
}

void wireless_diagnostics::google::protobuf::CheckFieldIndex(wireless_diagnostics::google::protobuf *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2)
{
  if (this)
  {
    if ((v3 = *(this + 12), a2 == -1) && v3 == 3 || a2 != -1 && v3 != 3)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      v4 = *this;
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
    }
  }
}

void sub_29984934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::GetLocation(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::FieldDescriptor *a3)
{
  v3 = a3;
  wireless_diagnostics::google::protobuf::CheckFieldIndex(a2, a3);
  v8 = *(this + 1);
  v7 = this + 8;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 4);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 4) > a2 || (v3 != -1 ? (v13 = v3) : (v13 = 0), v15 = v9 + 40, v14 = *(v9 + 5), v13 >= ((*(v15 + 1) - v14) >> 3)))
  {
LABEL_14:
    v16 = 0xFFFFFFFF00000000;
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = *(v14 + 8 * v13);
    v16 = v17 & 0xFFFFFFFF00000000;
    v17 = v17;
  }

  return v16 | v17;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::GetTreeForNested(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::FieldDescriptor *a3)
{
  v3 = a3;
  wireless_diagnostics::google::protobuf::CheckFieldIndex(a2, a3);
  v8 = *(this + 4);
  v7 = this + 32;
  v6 = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 4);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 4) > a2)
  {
    return 0;
  }

  v13 = v3 == -1 ? 0 : v3;
  v15 = v9 + 40;
  v14 = *(v9 + 5);
  if (v13 >= ((*(v15 + 1) - v14) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v14 + 8 * v13);
  }
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::Parser(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::Parse(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  (*(*a3 + 32))(a3);
  v6 = (*(*a3 + 152))(a3);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(v10, v6, a2, *a1, *(a1 + 8), *(a1 + 16), 1, *(a1 + 25));
  v8 = wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeUsingImpl(a1, v7, a3, v10);
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer(&v12);
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(&v11);
  return v8;
}

void sub_2998495C4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeUsingImpl(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Message *a3, uint64_t a4)
{
  while (*(a4 + 40) != 1)
  {
    if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(a4, a3) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a4 + 229))
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0 && ((*(*a3 + 40))(a3) & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    wireless_diagnostics::google::protobuf::Message::FindInitializationErrors(a3, v13);
    memset(&v10, 0, sizeof(v10));
    wireless_diagnostics::google::protobuf::JoinStrings(v13, ", ", &v10);
    v8 = std::string::insert(&v10, 0, "Message missing required fields: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a4, -1);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    __p[0] = v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    return 0;
  }

  return 1;
}

void sub_299849724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFromString(uint64_t a1, _DWORD *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  v5 = a2[2];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v8, a2);
  v6 = wireless_diagnostics::google::protobuf::TextFormat::Parser::Parse(a1, v8, a3);
  MEMORY[0x29C2A15E0](v8);
  return v6;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::Merge(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  v6 = (*(*a3 + 152))(a3);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(v10, v6, a2, *a1, *(a1 + 8), *(a1 + 16), 0, *(a1 + 25));
  v8 = wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeUsingImpl(a1, v7, a3, v10);
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer(&v12);
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(&v11);
  return v8;
}

void sub_2998498B0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeFromString(uint64_t a1, _DWORD *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  v5 = a2[2];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v8, a2);
  v6 = wireless_diagnostics::google::protobuf::TextFormat::Parser::Merge(a1, v8, a3);
  MEMORY[0x29C2A15E0](v8);
  return v6;
}

void wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(uint64_t *a1, int a2)
{
  *(a1 + 229) = 1;
  v4 = *a1;
  if (v4)
  {
    v5 = *(*v4 + 16);

    v5();
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    v6 = *(a1[27] + 8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    if ((a2 & 0x80000000) == 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }
}

void sub_299849AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFieldValueFromString(uint64_t a1, _DWORD *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, wireless_diagnostics::google::protobuf::Message *a4)
{
  v7 = a2[2];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v14, a2);
  v8 = (*(*a4 + 152))(a4);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(v11, v8, v14, *a1, *(a1 + 8), *(a1 + 16), 0, *(a1 + 25));
  v9 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParseField(v11, a3, a4);
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer(&v13);
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(&v12);
  MEMORY[0x29C2A15E0](v14);
  return v9;
}

void sub_299849BBC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  MEMORY[0x29C2A15E0](v2 - 64);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParseField(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree **this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  v6 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 11)];
  v7 = (*(*a3 + 144))(a3);
  if (v6 == 10)
  {
    if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(this, a3, v7, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a3, v7, a2);
    if (!result)
    {
      return result;
    }
  }

  return *(this + 10) == 1;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parse(uint64_t a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::Parse(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Merge(uint64_t a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::Merge(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseFromString(_DWORD *a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFromString(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::MergeFromString(_DWORD *a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeFromString(v3, a1, a2);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(int *a1, const wireless_diagnostics::google::protobuf::Message *a2, uint64_t a3)
{
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v6, a3, *a1);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(a1, a2, v6);
  LOBYTE(a2) = v6[0].__r_.__value_.__s.__data_[21];
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v6);
  return (a2 & 1) == 0;
}

void sub_299849DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(va);
  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFieldsToString(int *a1, uint64_t **a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::io::StringOutputStream::StringOutputStream();
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, a2, v7);
  MEMORY[0x29C2A17B0](v7);
  return v5;
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(int *a1, uint64_t **a2, uint64_t a3)
{
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v6, a3, *a1);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, a2, v6);
  LOBYTE(a2) = v6[0].__r_.__value_.__s.__data_[21];
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v6);
  return (a2 & 1) == 0;
}

void sub_299849EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, std::string *a3)
{
  v6 = (*(*a2 + 144))(a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  (*(*v6 + 96))(v6, a2, &__p);
  v7 = __p;
  if (v11 != __p)
  {
    v8 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintField(this, a2, v6, v7[v8++], a3);
      v7 = __p;
    }

    while (v8 < (v11 - __p) >> 3);
  }

  v9 = (*(*v6 + 16))(v6, a2);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(this, v9, a3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_29984A020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, uint64_t **a2, std::string *a3)
{
  v6 = 0;
  v7 = 0;
  v47 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v8 = *a2;
    v9 = *a2 ? ((v8[1] - *v8) >> 4) : 0;
    if (v7 >= v9)
    {
      break;
    }

    v10 = *v8;
    wireless_diagnostics::google::protobuf::SimpleItoa((*(*v8 + v6) & 0x1FFFFFFF), a3, &v41);
    v11 = *(v10 + v6) >> 29;
    if (v11 <= 1)
    {
      if (v11)
      {
        if ((v43 & 0x80u) == 0)
        {
          v14 = &v41;
        }

        else
        {
          v14 = v41;
        }

        if ((v43 & 0x80u) == 0)
        {
          v15 = v43;
        }

        else
        {
          v15 = v42;
        }

        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v14, v15);
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": 0x", 4);
        v17 = wireless_diagnostics::google::protobuf::FastHex32ToBuffer(*(v10 + v6 + 8), &__p, v16);
        v18 = strlen(v17);
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v17, v18);
        if (*(this + 4))
        {
          v19 = " ";
        }

        else
        {
          v19 = "\n";
        }

        goto LABEL_28;
      }

      if ((v43 & 0x80u) == 0)
      {
        v29 = &v41;
      }

      else
      {
        v29 = v41;
      }

      if ((v43 & 0x80u) == 0)
      {
        v30 = v43;
      }

      else
      {
        v30 = v42;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v29, v30);
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": ", 2);
      wireless_diagnostics::google::protobuf::SimpleItoa(*(v10 + v6 + 8), v31, &__p);
      if ((v46 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v46 & 0x80u) == 0)
      {
        v33 = v46;
      }

      else
      {
        v33 = v45;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, p_p, v33);
      if (v46 < 0)
      {
        operator delete(__p);
      }

      if (*(this + 4))
      {
        v34 = " ";
      }

      else
      {
        v34 = "\n";
      }

      v35 = 1;
      goto LABEL_69;
    }

    if (v11 == 2)
    {
      if ((v43 & 0x80u) == 0)
      {
        v20 = &v41;
      }

      else
      {
        v20 = v41;
      }

      if ((v43 & 0x80u) == 0)
      {
        v21 = v43;
      }

      else
      {
        v21 = v42;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v20, v21);
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": 0x", 4);
      v23 = wireless_diagnostics::google::protobuf::FastHex64ToBuffer(*(v10 + v6 + 8), &__p, v22);
      v24 = strlen(v23);
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v23, v24);
      if (*(this + 4))
      {
        v19 = " ";
      }

      else
      {
        v19 = "\n";
      }

LABEL_28:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v19, 1);
      goto LABEL_79;
    }

    if (v11 != 3)
    {
      if (v11 != 4)
      {
        goto LABEL_79;
      }

      if ((v43 & 0x80u) == 0)
      {
        v12 = &v41;
      }

      else
      {
        v12 = v41;
      }

      if ((v43 & 0x80u) == 0)
      {
        v13 = v43;
      }

      else
      {
        v13 = v42;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v12, v13);
      if (*(this + 4) == 1)
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " { ", 3);
      }

      else
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " {\n", 3);
        std::string::append(a3 + 1, "  ");
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(this, *(v10 + v6 + 8), a3);
      if (*(this + 4))
      {
        v35 = 2;
        v34 = "} ";
      }

      else
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(a3);
        v35 = 2;
        v34 = "}\n";
      }

LABEL_69:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v34, v35);
      goto LABEL_79;
    }

    if ((v43 & 0x80u) == 0)
    {
      v25 = &v41;
    }

    else
    {
      v25 = v41;
    }

    if ((v43 & 0x80u) == 0)
    {
      v26 = v43;
    }

    else
    {
      v26 = v42;
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v25, v26);
    v27 = *(v10 + v6 + 8);
    wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(&v40);
    v28 = *(v27 + 23);
    if (v28 < 0)
    {
      if (!*(v27 + 8))
      {
        goto LABEL_77;
      }
    }

    else if (!*(v27 + 23))
    {
      goto LABEL_77;
    }

    v36 = *(v27 + 8);
    if (v28 >= 0)
    {
      v37 = v27;
    }

    else
    {
      v37 = *v27;
    }

    if (!wireless_diagnostics::google::protobuf::UnknownFieldSet::ParseFromArray(&v40, v37))
    {
LABEL_77:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": ", 3);
      wireless_diagnostics::google::protobuf::CEscape(v27);
    }

    if (*(this + 4) == 1)
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " { ", 3);
    }

    else
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " {\n", 3);
      std::string::append(a3 + 1, "  ");
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(this, &v40, a3);
    if (*(this + 4))
    {
      v38 = "} ";
    }

    else
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(a3);
      v38 = "}\n";
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v38, 2);
    wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(&v40);
LABEL_79:
    if (v43 < 0)
    {
      operator delete(v41);
    }

    ++v7;
    v6 += 16;
  }

  v39 = *MEMORY[0x29EDCA608];
}

void sub_29984A528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::TextFormat::Printer *wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintField(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, std::string *a5)
{
  v10 = *(a4 + 12);
  if (*(this + 5) != 1)
  {
    if (v10 == 3)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = (*(*a3 + 40))(a3, a2, a4);
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    goto LABEL_9;
  }

  if ((wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)] - 9) < 2)
  {
LABEL_8:
    result = (*(*a3 + 48))(a3, a2, a4);
LABEL_10:
    v14 = result;
    if (result < 1)
    {
      return result;
    }

    v15 = 0;
    while (1)
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldName(result, v12, v13, a4, a5);
      if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)] == 10)
      {
        v16 = a5;
        if (*(this + 4) != 1)
        {
          wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, " {\n", 3);
          std::string::append(a5 + 1, "  ");
          goto LABEL_18;
        }

        v17 = " { ";
        v18 = 3;
      }

      else
      {
        v16 = a5;
        v17 = ": ";
        v18 = 2;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(v16, v17, v18);
LABEL_18:
      if (*(a4 + 12) == 3)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xFFFFFFFFLL;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(this, a2, a3, a4, v19, a5);
      v20 = *(this + 4);
      v21 = a5;
      if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)] == 10)
      {
        if (*(this + 4))
        {
          v22 = "} ";
        }

        else
        {
          wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(a5);
          v21 = a5;
          v22 = "}\n";
        }

        v23 = 2;
      }

      else
      {
        if (*(this + 4))
        {
          v22 = " ";
        }

        else
        {
          v22 = "\n";
        }

        v23 = 1;
      }

      result = wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(v21, v22, v23);
      if (v14 == ++v15)
      {
        return result;
      }
    }
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintShortRepeatedField(this, a2, a3, a4, a5);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValueToString(int *a1, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::io::StringOutputStream::StringOutputStream();
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v11, v12, *a1);
  v9 = (*(*a2 + 144))(a2);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, v9, a3, a4, v11);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v11);
  return MEMORY[0x29C2A17B0](v12);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, uint64_t a5, wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *a6)
{
  v7 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)];
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v19 = *a3;
        if (*(a4 + 12) == 3)
        {
          v20 = (*(v19 + 280))(a3, a2, a4, a5);
        }

        else
        {
          v20 = (*(v19 + 104))(a3, a2, a4);
        }

        wireless_diagnostics::google::protobuf::SimpleItoa(v20, v21, &v41);
        if (v43 >= 0)
        {
          v35 = &v41;
        }

        else
        {
          v35 = v41;
        }

        if (v43 >= 0)
        {
          v36 = HIBYTE(v43);
        }

        else
        {
          v36 = v42;
        }
      }

      else
      {
        if (v7 != 2)
        {
          return;
        }

        v14 = *a3;
        if (*(a4 + 12) == 3)
        {
          v15 = (*(v14 + 288))(a3, a2, a4, a5);
        }

        else
        {
          v15 = (*(v14 + 112))(a3, a2, a4);
        }

        wireless_diagnostics::google::protobuf::SimpleItoa(v15, v16, &v41);
        if (v43 >= 0)
        {
          v35 = &v41;
        }

        else
        {
          v35 = v41;
        }

        if (v43 >= 0)
        {
          v36 = HIBYTE(v43);
        }

        else
        {
          v36 = v42;
        }
      }
    }

    else if (v7 == 3)
    {
      v25 = *a3;
      if (*(a4 + 12) == 3)
      {
        v26 = (*(v25 + 296))(a3, a2, a4, a5);
      }

      else
      {
        v26 = (*(v25 + 120))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleItoa(v26, v27, &v41);
      if (v43 >= 0)
      {
        v35 = &v41;
      }

      else
      {
        v35 = v41;
      }

      if (v43 >= 0)
      {
        v36 = HIBYTE(v43);
      }

      else
      {
        v36 = v42;
      }
    }

    else if (v7 == 4)
    {
      v30 = *a3;
      if (*(a4 + 12) == 3)
      {
        v31 = (*(v30 + 304))(a3, a2, a4, a5);
      }

      else
      {
        v31 = (*(v30 + 128))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleItoa(v31, v32, &v41);
      if (v43 >= 0)
      {
        v35 = &v41;
      }

      else
      {
        v35 = v41;
      }

      if (v43 >= 0)
      {
        v36 = HIBYTE(v43);
      }

      else
      {
        v36 = v42;
      }
    }

    else
    {
      v8 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v8 + 320))(a3, a2, a4, a5);
      }

      else
      {
        v10 = (*(v8 + 144))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleDtoa(v10, v9, &v41);
      if (v43 >= 0)
      {
        v35 = &v41;
      }

      else
      {
        v35 = v41;
      }

      if (v43 >= 0)
      {
        v36 = HIBYTE(v43);
      }

      else
      {
        v36 = v42;
      }
    }

    goto LABEL_95;
  }

  if (v7 <= 7)
  {
    if (v7 == 6)
    {
      v22 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v22 + 312))(a3, a2, a4, a5);
      }

      else
      {
        v24 = (*(v22 + 136))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleFtoa(v24, v23, &v41);
      if (v43 >= 0)
      {
        v35 = &v41;
      }

      else
      {
        v35 = v41;
      }

      if (v43 >= 0)
      {
        v36 = HIBYTE(v43);
      }

      else
      {
        v36 = v42;
      }

LABEL_95:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a6, v35, v36);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v41);
      }

      return;
    }

    v17 = *a3;
    if (*(a4 + 12) == 3)
    {
      v18 = (*(v17 + 328))(a3, a2, a4, a5);
    }

    else
    {
      v18 = (*(v17 + 152))(a3, a2, a4);
    }

    if (v18)
    {
      v37 = "true";
    }

    else
    {
      v37 = "false";
    }

    if (v18)
    {
      v38 = 4;
    }

    else
    {
      v38 = 5;
    }
  }

  else
  {
    if (v7 != 8)
    {
      if (v7 == 9)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v33 = *a3;
        if (*(a4 + 12) == 3)
        {
          v34 = (*(v33 + 360))(a3, a2, a4, a5, &v41);
        }

        else
        {
          v34 = (*(v33 + 184))(a3, a2, a4, &v41);
        }

        v40 = v34;
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a6, "", 1);
        if (*(this + 6) == 1)
        {
          wireless_diagnostics::google::protobuf::strings::Utf8SafeCEscape(v40);
        }

        wireless_diagnostics::google::protobuf::CEscape(v40);
      }

      if (v7 == 10)
      {
        v12 = *a3;
        if (*(a4 + 12) == 3)
        {
          v13 = (*(v12 + 352))(a3, a2, a4, a5);
        }

        else
        {
          v13 = (*(v12 + 176))(a3, a2, a4, 0);
        }

        wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(this, v13, a6);
      }

      return;
    }

    v28 = *a3;
    if (*(a4 + 12) == 3)
    {
      v29 = (*(v28 + 344))(a3, a2, a4, a5);
    }

    else
    {
      v29 = (*(v28 + 168))(a3, a2, a4);
    }

    v39 = *(*v29 + 23);
    if (v39 >= 0)
    {
      v37 = *v29;
    }

    else
    {
      v37 = **v29;
    }

    if (v39 >= 0)
    {
      v38 = *(*v29 + 23);
    }

    else
    {
      v38 = *(*v29 + 2);
    }
  }

  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a6, v37, v38);
}

void sub_29984B0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintShortRepeatedField(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *a5)
{
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldName(this, a2, a3, a4, a5);
  v10 = (*(*a3 + 48))(a3, a2, a4);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, ": [", 3);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11)
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, ", ", 2);
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(this, a2, a3, a4, v11, a5);
      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }

  if (*(this + 4))
  {
    v12 = "] ";
  }

  else
  {
    v12 = "]\n";
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, v12, 2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldName(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *a5)
{
  v6 = a4;
  if (*(a4 + 52) == 1)
  {
    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, "[", 1);
    if (*(*(*(v6 + 7) + 32) + 64) == 1 && *(v6 + 11) == 11 && *(v6 + 12) == 1 && *(v6 + 8) == *(v6 + 9))
    {
      v6 = *(v6 + 9);
    }

    v7 = *(v6 + 1);
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 1);
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, v9, v10);
    v11 = "]";
    v12 = a5;
    v13 = 1;
  }

  else
  {
    if (*(a4 + 11) == 10)
    {
      v14 = **(a4 + 9);
    }

    else
    {
      v14 = *a4;
    }

    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = *v14;
    }

    if (v15 >= 0)
    {
      v13 = *(v14 + 23);
    }

    else
    {
      v13 = *(v14 + 2);
    }

    v12 = a5;
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(v12, v11, v13);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *this)
{
  v1 = *(this + 47);
  if ((v1 & 0x80000000) == 0)
  {
    if (*(this + 47) && v1 >= 2 * *(this + 12))
    {
      v2 = *(this + 47);
      goto LABEL_8;
    }

LABEL_7:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
    return;
  }

  v2 = *(this + 4);
  if (!v2 || v2 < 2 * *(this + 12))
  {
    goto LABEL_7;
  }

LABEL_8:
  v3 = (this + 24);

  std::string::resize(v3, v2 - 2, 0);
}

void sub_29984B3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Print(const wireless_diagnostics::google::protobuf::Message *a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(v3, a1, a2);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::PrintUnknownFields(uint64_t **a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(v3, a1, a2);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::PrintUnknownFieldsToString(uint64_t **a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFieldsToString(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::PrintFieldValueToString(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 3) = 0;
  v5[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValueToString(v5, a1, a2, a3, a4);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseFieldValueFromString(_DWORD *a1, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFieldValueFromString(v4, a1, a2, a3);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = &unk_2A1F916F8;
  *(a1 + 32) = a1;
  wireless_diagnostics::google::protobuf::io::Tokenizer::Tokenizer(a1 + 40, a3, a1 + 24);
  *(a1 + 216) = a2;
  *(a1 + 224) = a7;
  *(a1 + 228) = a8;
  *(a1 + 229) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = 1;
  wireless_diagnostics::google::protobuf::io::Tokenizer::Next((a1 + 40));
  return a1;
}

void sub_29984B5A4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v2 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(v1);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserErrorCollector::~ParserErrorCollector(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserErrorCollector *this)
{
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(this);

  JUMPOUT(0x29C2A2070);
}

void wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(uint64_t *a1, int a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(*v4 + 24);

    v5();
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    v6 = *(a1[27] + 8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    if ((a2 & 0x80000000) == 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }
}

void sub_29984B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this, wireless_diagnostics::google::protobuf::Message *a2)
{
  v4 = (*(*a2 + 144))(a2);
  v5 = (*(*a2 + 152))(a2);
  memset(&v75, 0, sizeof(v75));
  v6 = *(this + 9);
  std::string::basic_string[abi:ne200100]<0>(__p, "[");
  v7 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v8 = v7;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
LABEL_3:
    if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v75))
    {
      goto LABEL_138;
    }

    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ".");
      v9 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (!v9)
      {
        break;
      }

      memset(__p, 0, 24);
      if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, __p))
      {
        if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_138;
        }

        v15 = __p[0].__r_.__value_.__r.__words[0];
        goto LABEL_103;
      }

      std::string::append(&v75, ".");
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(&v75, v10, size);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "]");
    v13 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
    v14 = v13;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if ((v14 & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_138;
    }

    v16 = *(this + 1);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16, a2, &v75);
    }

    else
    {
      v17 = (*(*v4 + 528))(v4, &v75);
    }

    FieldByName = v17;
    if (v17)
    {
LABEL_96:
      if (*(this + 56) == 1 && *(FieldByName + 48) != 3 && (*(*v4 + 40))(v4, a2, FieldByName))
      {
        std::operator+<char>();
        v49 = std::string::append(&v74, " is specified multiple times.");
        v50 = *&v49->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        v51 = *(this + 19);
        wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_138;
        }

        v15 = v74.__r_.__value_.__r.__words[0];
        goto LABEL_103;
      }

      if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 44)] == 10)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, ":");
        wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(this, a2, v4, FieldByName) & 1) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_125;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, ":");
      v52 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v52)
      {
        if (*(FieldByName + 48) == 3)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "[");
          v53 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (v53)
          {
            while ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a2, v4, FieldByName) & 1) != 0)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "]");
              v54 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (v54)
              {
                goto LABEL_125;
              }

              std::string::basic_string[abi:ne200100]<0>(__p, ",");
              v55 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v56 = 0;
              if ((v55 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            goto LABEL_138;
          }
        }

        if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a2, v4, FieldByName))
        {
LABEL_125:
          std::string::basic_string[abi:ne200100]<0>(__p, ";");
          if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v74, ",");
            wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &v74);
            if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v74.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (*(*(FieldByName + 96) + 46) == 1)
          {
            std::operator+<char>();
            v57 = std::string::append(&v74, "");
            v58 = *&v57->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v58;
            v57->__r_.__value_.__l.__size_ = 0;
            v57->__r_.__value_.__r.__words[2] = 0;
            v57->__r_.__value_.__r.__words[0] = 0;
            v59 = *(this + 19);
            wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(this, *(this + 18));
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v74.__r_.__value_.__l.__data_);
            }
          }

          v60 = *(this + 2);
          if (v60)
          {
            wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::RecordLocation(v60, FieldByName, v6);
          }

          v56 = 1;
          goto LABEL_139;
        }
      }

LABEL_138:
      v56 = 0;
      goto LABEL_139;
    }

    if (*(this + 228))
    {
      std::operator+<char>();
      v62 = std::string::append(&v72, " is not defined or is not an extension of ");
      v63 = *&v62->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      v64 = *(v5 + 8);
      v65 = *(v64 + 23);
      if (v65 >= 0)
      {
        v31 = *(v5 + 8);
      }

      else
      {
        v31 = *v64;
      }

      if (v65 >= 0)
      {
        v32 = *(v64 + 23);
      }

      else
      {
        v32 = *(v64 + 8);
      }

      goto LABEL_66;
    }

    std::operator+<char>();
    v67 = std::string::append(&v72, " is not defined or is not an extension of ");
    v68 = *&v67->__r_.__value_.__l.__data_;
    v73.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
    *&v73.__r_.__value_.__l.__data_ = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    v69 = *(v5 + 8);
    v70 = *(v69 + 23);
    if (v70 >= 0)
    {
      v42 = *(v5 + 8);
    }

    else
    {
      v42 = *v69;
    }

    if (v70 >= 0)
    {
      v43 = *(v69 + 23);
    }

    else
    {
      v43 = *(v69 + 8);
    }

LABEL_85:
    v44 = std::string::append(&v73, v42, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v74, ".");
    v47 = *&v46->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = *(this + 19);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_138;
    }

    v15 = v72.__r_.__value_.__r.__words[0];
LABEL_103:
    operator delete(v15);
    goto LABEL_138;
  }

  if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v75))
  {
    goto LABEL_138;
  }

  FieldByName = wireless_diagnostics::google::protobuf::Descriptor::FindFieldByName(v5, &v75);
  if (FieldByName)
  {
    goto LABEL_167;
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    __p[0] = v75;
  }

  v18 = (__p + HIBYTE(__p[0].__r_.__value_.__r.__words[2]));
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = __p;
  }

  else
  {
    v18 = (__p[0].__r_.__value_.__r.__words[0] + __p[0].__r_.__value_.__l.__size_);
    v19 = __p[0].__r_.__value_.__r.__words[0];
  }

  while (v19 != v18)
  {
    v20 = v19->__r_.__value_.__s.__data_[0];
    if ((v20 - 65) <= 0x19)
    {
      v19->__r_.__value_.__s.__data_[0] = v20 | 0x20;
    }

    v19 = (v19 + 1);
  }

  v21 = wireless_diagnostics::google::protobuf::Descriptor::FindFieldByName(v5, __p);
  if (v21)
  {
    if (*(v21 + 44) == 10)
    {
      FieldByName = v21;
    }

    else
    {
      FieldByName = 0;
    }
  }

  else
  {
    FieldByName = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (FieldByName)
  {
LABEL_167:
    if (*(FieldByName + 44) != 10)
    {
      goto LABEL_96;
    }

    v22 = **(FieldByName + 72);
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = *(v22 + 23);
    }

    else
    {
      v24 = *(v22 + 8);
    }

    v25 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v75.__r_.__value_.__l.__size_;
    }

    if (v24 == v25)
    {
      v26 = v23 >= 0 ? **(FieldByName + 72) : *v22;
      v27 = (v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v75 : v75.__r_.__value_.__r.__words[0];
      if (!memcmp(v26, v27, v24))
      {
        goto LABEL_96;
      }
    }
  }

  if ((*(this + 228) & 1) == 0)
  {
    v39 = *(v5 + 8);
    std::operator+<char>();
    v40 = std::string::append(&v72, " has no field named ");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v73.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v73.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v75;
    }

    else
    {
      v42 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v75.__r_.__value_.__l.__size_;
    }

    goto LABEL_85;
  }

  v28 = *(v5 + 8);
  std::operator+<char>();
  v29 = std::string::append(&v72, " has no field named ");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v73.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v73.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v75;
  }

  else
  {
    v31 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v75.__r_.__value_.__l.__size_;
  }

LABEL_66:
  v33 = std::string::append(&v73, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v74, ".");
  v36 = *&v35->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = *(this + 19);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(this, *(this + 18));
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if ((*(this + 228) & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ":");
  if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v74, "{");
    if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, &v74))
    {
      v38 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v73, "<");
      v38 = !wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, &v73);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v38 = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    v66 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(this);
  }

  else
  {
    v66 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(this);
  }

  v56 = v66;
LABEL_139:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  return v56;
}

void sub_29984C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 48);
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v7, a2, v3))
  {
    return 0;
  }

  wireless_diagnostics::google::protobuf::io::Tokenizer::Next((a1 + 40));
  return 1;
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(uint64_t a1, std::string *this)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 == 2)
  {
    std::string::operator=(this, (a1 + 48));
    wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Expected identifier.");
    v5 = *(a1 + 76);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72));
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  return v4 == 2;
}

void sub_29984C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(uint64_t a1, void *a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    goto LABEL_13;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 48);
  }

  else
  {
    v8 = *v3;
  }

  v9 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(v8, a2, v5))
  {
    wireless_diagnostics::google::protobuf::io::Tokenizer::Next((a1 + 40));
    return 1;
  }

  else
  {
LABEL_13:
    std::operator+<char>();
    v10 = std::string::append(&v21, ", found ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(a1 + 71);
    if (v12 >= 0)
    {
      v13 = v3;
    }

    else
    {
      v13 = *(a1 + 48);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 71);
    }

    else
    {
      v14 = *(a1 + 56);
    }

    v15 = std::string::append(&v22, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v23, ".");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25 = v17->__r_.__value_.__r.__words[2];
    v24 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = *(a1 + 76);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72));
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    return 0;
  }
}

void sub_29984C72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v6 = (a1 + 48);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v9 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) == 0;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this)
{
  v1 = (this + 40);
  if (*(this + 10) == 5)
  {
    do
    {
      wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v1);
    }

    while (*v1 == 5);
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "-");
  v3 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*v1 - 3) < 2)
  {
LABEL_7:
    wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v1);
    return 1;
  }

  if (*v1 == 2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    if (*(this + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
    }

    else
    {
      __p = *(this + 2);
    }

    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    v7 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      v7 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
    }

    if (p_p != v7)
    {
      do
      {
        v8 = p_p->__r_.__value_.__s.__data_[0];
        if ((v8 - 65) <= 0x19)
        {
          p_p->__r_.__value_.__s.__data_[0] = v8 | 0x20;
        }

        p_p = (p_p + 1);
      }

      while (p_p != v7);
      v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v5 < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 3 && *__p.__r_.__value_.__l.__data_ == 28265 && *(__p.__r_.__value_.__r.__words[0] + 2) == 102)
      {
        goto LABEL_50;
      }

      if (__p.__r_.__value_.__l.__size_ == 8 && *__p.__r_.__value_.__l.__data_ == 0x7974696E69666E69)
      {
        goto LABEL_50;
      }

      if (__p.__r_.__value_.__l.__size_ != 3)
      {
LABEL_45:
        std::operator+<char>();
        v15 = *(this + 19);
        wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
        if (v17 < 0)
        {
          operator delete(v16);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      v10 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v5 != 3)
      {
        if (v5 == 8 && __p.__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
        {
          goto LABEL_7;
        }

        goto LABEL_45;
      }

      if (LOWORD(__p.__r_.__value_.__l.__data_) == 28265 && __p.__r_.__value_.__s.__data_[2] == 102)
      {
        goto LABEL_7;
      }

      v10 = &__p;
    }

    data_low = LOWORD(v10->__r_.__value_.__l.__data_);
    v13 = v10->__r_.__value_.__s.__data_[2];
    if (data_low != 24942 || v13 != 110)
    {
      goto LABEL_45;
    }

LABEL_50:
    if (v5 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_7;
  }

  return 0;
}

void sub_29984CA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "<");
  v2 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v3 = v2;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    v4 = ">";
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "{");
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
  v6 = v5;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 1) == 0)
    {
LABEL_20:
      v9 = 0;
      goto LABEL_22;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v4 = "}";
LABEL_10:
  MEMORY[0x29C2A1FA0](v15, v4);
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ">");
    if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, __p))
    {
      v7 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "}");
      v8 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, v11);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

      v7 = !v8;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v7)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipField(this) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, v15);
LABEL_22:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v9;
}

void sub_29984CC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree **this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4)
{
  if (this[2])
  {
    wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::CreateNested(this[2], a4);
  }

  memset(&v24, 0, sizeof(v24));
  std::string::basic_string[abi:ne200100]<0>(__p, "<");
  v8 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v9 = v8;
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
LABEL_5:
    v10 = ">";
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "{");
  v11 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
  v12 = v11;
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v10 = "}";
LABEL_12:
  MEMORY[0x29C2A1FA0](&v24, v10);
  v13 = *a3;
  if (*(a4 + 12) == 3)
  {
    v14 = (*(v13 + 520))(a3, a2, a4, 0);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = v24;
    }

    v16 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(this, v14, &v21);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v21.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else
  {
    v15 = (*(v13 + 264))(a3, a2, a4, 0);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      v20 = v24;
    }

    v16 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(this, v15, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
LABEL_25:
      operator delete(v17);
      if ((v16 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      this[2] = 0;
      v18 = 1;
      goto LABEL_27;
    }
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_26:
  v18 = 0;
LABEL_27:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v18;
}