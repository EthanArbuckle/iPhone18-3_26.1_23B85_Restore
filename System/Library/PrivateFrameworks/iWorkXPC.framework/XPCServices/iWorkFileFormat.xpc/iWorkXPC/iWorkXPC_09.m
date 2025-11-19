void sub_1000D6204(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1000D6268(uint64_t a1, int **a2)
{
  v2 = *sub_1000D609C(a1, &v4, a2);
  if (!v2)
  {
    sub_1000D6310();
  }

  return v2;
}

uint64_t sub_1000D63A4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000D5F48(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1000D63F0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000D30A0(v6, v10);
    }

    sub_100070E64();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1000D651C(void *a1)
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
          google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(*v3);
          operator delete();
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

void *sub_1000D65A0(uint64_t a1, int **a2)
{
  v3 = (a1 + 8);
  result = sub_1000D6620(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 != result)
  {
    v6 = result[4];
    v5 = result[5];
    if (v6 == v5)
    {
      return result;
    }

    v7 = *a2;
    v8 = v6 + 4;
    while (v7 != a2[1])
    {
      v9 = *v7;
      v10 = *(v8 - 4);
      if (*v7 < v10)
      {
        break;
      }

      ++v7;
      v11 = v10 < v9 || v8 == v5;
      v8 += 4;
      if (v11)
      {
        return result;
      }
    }
  }

  return v3;
}

void *sub_1000D6620(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = a4;
  if (a3)
  {
    v5 = a2[1];
    do
    {
      if (*a2 == v5)
      {
LABEL_12:
        result = a3;
      }

      else
      {
        v6 = a3[4];
        v7 = *a2 + 4;
        while (v6 != a3[5])
        {
          v8 = *v6;
          v9 = *(v7 - 4);
          if (*v6 < v9)
          {
            break;
          }

          ++v6;
          v10 = v9 < v8 || v7 == v5;
          v7 += 4;
          if (v10)
          {
            goto LABEL_12;
          }
        }

        ++a3;
      }

      a3 = *a3;
    }

    while (a3);
  }

  return result;
}

std::string *sub_1000D6684(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_1000D6734(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v18);
      result = sub_1000D6734(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

float google::protobuf::io::SafeDoubleToFloat(google::protobuf::io *this, double a2)
{
  if (a2 <= 3.40282347e38)
  {
    if (a2 >= -3.40282347e38)
    {
      return a2;
    }

    if (a2 >= -3.40282357e38)
    {
      return -3.4028e38;
    }

    else
    {
      return -INFINITY;
    }
  }

  else if (a2 <= 3.40282357e38)
  {
    return 3.4028e38;
  }

  else
  {
    return INFINITY;
  }
}

void sub_1000D67E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::DescriptorProto::DescriptorProto(google::protobuf::_DescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_DescriptorProto_default_instance_, v4);
}

void sub_1000D6854(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  *&v5 = 0;
  unk_1001ECAD8 = v5;
  google::protobuf::_DescriptorProto_ExtensionRange_default_instance_[0] = off_1001CF660;
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  qword_1001ECAE8 = 0;
  unk_1001ECAF0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_DescriptorProto_ExtensionRange_default_instance_, v4);
}

void sub_1000D6904(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  qword_1001ECB00 = 0;
  unk_1001ECB08 = 0;
  google::protobuf::_DescriptorProto_ReservedRange_default_instance_ = off_1001CF710;
  qword_1001ECB10 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_DescriptorProto_ReservedRange_default_instance_, v4);
}

void sub_1000D6980(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumDescriptorProto::EnumDescriptorProto(google::protobuf::_EnumDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_EnumDescriptorProto_default_instance_, v4);
}

void sub_1000D69F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  qword_1001ECCD8 = 0;
  unk_1001ECCE0 = 0;
  google::protobuf::_EnumDescriptorProto_EnumReservedRange_default_instance_ = off_1001CFA80;
  qword_1001ECCE8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumDescriptorProto_EnumReservedRange_default_instance_, v4);
}

void sub_1000D6A6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumOptions::EnumOptions(&google::protobuf::_EnumOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumOptions_default_instance_, v4);
}

void sub_1000D6ADC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(&google::protobuf::_EnumValueDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumValueDescriptorProto_default_instance_, v4);
}

void sub_1000D6B4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumValueOptions::EnumValueOptions(&google::protobuf::_EnumValueOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumValueOptions_default_instance_, v4);
}

void sub_1000D6BBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(&google::protobuf::_ExtensionRangeOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_ExtensionRangeOptions_default_instance_, v4);
}

void sub_1000D6C2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FieldDescriptorProto::FieldDescriptorProto(&google::protobuf::_FieldDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FieldDescriptorProto_default_instance_, v4);
}

void sub_1000D6C9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FieldOptions::FieldOptions(&google::protobuf::_FieldOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FieldOptions_default_instance_, v4);
}

void sub_1000D6D0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FileDescriptorProto::FileDescriptorProto(google::protobuf::_FileDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_FileDescriptorProto_default_instance_, v4);
}

void sub_1000D6D7C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FileDescriptorSet::FileDescriptorSet(&google::protobuf::_FileDescriptorSet_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FileDescriptorSet_default_instance_, v4);
}

void sub_1000D6DEC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FileOptions::FileOptions(&google::protobuf::_FileOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FileOptions_default_instance_, v4);
}

void sub_1000D6E5C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(&google::protobuf::_GeneratedCodeInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_GeneratedCodeInfo_default_instance_, v4);
}

void sub_1000D6ECC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(google::protobuf::_GeneratedCodeInfo_Annotation_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_GeneratedCodeInfo_Annotation_default_instance_, v4);
}

void sub_1000D6F3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::MessageOptions::MessageOptions(&google::protobuf::_MessageOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_MessageOptions_default_instance_, v4);
}

void sub_1000D6FAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::MethodDescriptorProto::MethodDescriptorProto(&google::protobuf::_MethodDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_MethodDescriptorProto_default_instance_, v4);
}

void sub_1000D701C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::MethodOptions::MethodOptions(google::protobuf::_MethodOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_MethodOptions_default_instance_, v4);
}

void sub_1000D708C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::OneofDescriptorProto::OneofDescriptorProto(google::protobuf::_OneofDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_OneofDescriptorProto_default_instance_, v4);
}

void sub_1000D70FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::OneofOptions::OneofOptions(&google::protobuf::_OneofOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_OneofOptions_default_instance_, v4);
}

void sub_1000D716C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(google::protobuf::_ServiceDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_ServiceDescriptorProto_default_instance_, v4);
}

void sub_1000D71DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::ServiceOptions::ServiceOptions(&google::protobuf::_ServiceOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_ServiceOptions_default_instance_, v4);
}

void sub_1000D724C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::SourceCodeInfo::SourceCodeInfo(&google::protobuf::_SourceCodeInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_SourceCodeInfo_default_instance_, v4);
}

void sub_1000D72BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(&google::protobuf::_SourceCodeInfo_Location_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_SourceCodeInfo_Location_default_instance_, v4);
}

void sub_1000D732C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::UninterpretedOption::UninterpretedOption(google::protobuf::_UninterpretedOption_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_UninterpretedOption_default_instance_, v4);
}

void sub_1000D739C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(&google::protobuf::_UninterpretedOption_NamePart_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_UninterpretedOption_NamePart_default_instance_, v4);
}

uint64_t google::protobuf::FileDescriptorSet::FileDescriptorSet(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CF500;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_FileDescriptorSet_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileDescriptorSet_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return a1;
}

void google::protobuf::FileDescriptorSet::~FileDescriptorSet(google::protobuf::FileDescriptorSet *this)
{
  sub_10002F4C4(this + 1);
  sub_1000ED4F8(this + 2);
}

{
  google::protobuf::FileDescriptorSet::~FileDescriptorSet(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorSet::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = google::protobuf::FileDescriptorProto::Clear(v6);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *google::protobuf::FileDescriptorSet::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (v22 + 1);
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileDescriptorProto>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100161F88(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

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
        a3[10].i32[0] = v7 - 1;
        return v22;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1000313B0(a3, &v22, a3[11].i32[1]))
      {
        return v22;
      }
    }

    v6 = (v22 + 2);
LABEL_5:
    v22 = v6;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorSet::_InternalSerialize(google::protobuf::FileDescriptorSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
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
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = google::protobuf::FileDescriptorProto::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::FileDescriptorSet::ByteSizeLong(google::protobuf::FileDescriptorSet *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::FileDescriptorProto::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void google::protobuf::FileDescriptorSet::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FileDescriptorSet::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FileDescriptorSet::MergeFrom(google::protobuf::Arena **this, const google::protobuf::FileDescriptorSet *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 2), v6);
    sub_1000ED57C(this + 2, v8, v7 + 8, v6, *this[4] - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = this[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }
}

void google::protobuf::FileDescriptorSet::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::FileDescriptorSet::Clear(this, a2, a3);

    google::protobuf::FileDescriptorSet::MergeFrom(this, a2);
  }
}

BOOL google::protobuf::FileDescriptorSet::IsInitialized(google::protobuf::FileDescriptorSet *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = google::protobuf::FileDescriptorProto::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

uint64_t google::protobuf::FileDescriptorSet::GetMetadata(google::protobuf::FileDescriptorSet *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = *off_1001EA190;
  v2 = off_1001EA190[1];
  return result;
}

void *google::protobuf::FileDescriptorProto::FileDescriptorProto(void *a1, uint64_t a2)
{
  *a1 = off_1001CF5B0;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = a2;
  a1[9] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a2;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = a2;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[21] = a2;
  a1[19] = a2;
  a1[20] = 0;
  if (atomic_load_explicit(scc_info_FileDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[22] = &google::protobuf::internal::fixed_address_empty_string;
  a1[23] = &google::protobuf::internal::fixed_address_empty_string;
  a1[25] = 0;
  a1[26] = 0;
  a1[24] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void sub_1000D7C80(_Unwind_Exception *a1)
{
  if (*(v4 + 164) >= 1)
  {
    sub_100156CF0(v8);
  }

  sub_100156EC0(v9, v7);
  sub_1000ED864(v6);
  sub_1000ED7E0(v5);
  sub_1000ED75C(v3);
  sub_1000ED6D8(v2);
  sub_1000ED63C(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::FileDescriptorProto::~FileDescriptorProto(google::protobuf::FileDescriptorProto *this)
{
  sub_1000D7D94(this);
  sub_10002F4C4(this + 1);
  if (*(this + 41) >= 1)
  {
    v2 = *(this + 21);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 37) >= 1)
  {
    v5 = *(this + 19);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_1000ED864(this + 15);
  sub_1000ED7E0(this + 12);
  sub_1000ED75C(this + 9);
  sub_1000ED6D8(this + 6);
  sub_1000ED63C(this + 3);
}

{
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(this);

  operator delete();
}

google::protobuf::SourceCodeInfo *sub_1000D7D94(google::protobuf::SourceCodeInfo *result)
{
  v1 = result;
  v2 = *(result + 22);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(result + 23);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = *(result + 24);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  if (result != google::protobuf::_FileDescriptorProto_default_instance_)
  {
    v5 = *(result + 25);
    if (v5)
    {
      google::protobuf::FileOptions::~FileOptions(v5);
      operator delete();
    }

    result = *(v1 + 26);
    if (result)
    {
      google::protobuf::SourceCodeInfo::~SourceCodeInfo(result);

      operator delete();
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorProto::Clear(google::protobuf::FileDescriptorProto *this)
{
  result = sub_1000ED4AC(this + 24);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::DescriptorProto::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  v8 = *(this + 20);
  if (v8 >= 1)
  {
    v9 = (*(this + 11) + 8);
    do
    {
      v10 = *v9++;
      result = google::protobuf::EnumDescriptorProto::Clear(v10, v3, v4);
      --v8;
    }

    while (v8);
    *(this + 20) = 0;
  }

  v11 = *(this + 26);
  if (v11 >= 1)
  {
    v12 = (*(this + 14) + 8);
    do
    {
      v13 = *v12++;
      result = google::protobuf::ServiceDescriptorProto::Clear(v13, v3, v4);
      --v11;
    }

    while (v11);
    *(this + 26) = 0;
  }

  v14 = *(this + 32);
  if (v14 >= 1)
  {
    v15 = (*(this + 17) + 8);
    do
    {
      v16 = *v15++;
      result = google::protobuf::FieldDescriptorProto::Clear(v16, v3, v4);
      --v14;
    }

    while (v14);
    *(this + 32) = 0;
  }

  *(this + 36) = 0;
  *(this + 40) = 0;
  v17 = *(this + 4);
  if ((v17 & 0x1F) == 0)
  {
    goto LABEL_24;
  }

  if ((v17 & 1) == 0)
  {
    if ((v17 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_32:
    v21 = *(this + 23) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v21 + 23) < 0)
    {
      **v21 = 0;
      *(v21 + 8) = 0;
      if ((v17 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v21 = 0;
      *(v21 + 23) = 0;
      if ((v17 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_21:
    if ((v17 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v20 = *(this + 22) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v20 + 23) < 0)
  {
    **v20 = 0;
    *(v20 + 8) = 0;
    if ((v17 & 2) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v20 = 0;
    *(v20 + 23) = 0;
    if ((v17 & 2) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_20:
  if ((v17 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_36:
  v22 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v22 + 23) < 0)
  {
    **v22 = 0;
    *(v22 + 8) = 0;
    if ((v17 & 8) != 0)
    {
      goto LABEL_40;
    }

LABEL_22:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  *v22 = 0;
  *(v22 + 23) = 0;
  if ((v17 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_40:
  result = google::protobuf::FileOptions::Clear(*(this + 25));
  if ((v17 & 0x10) != 0)
  {
LABEL_23:
    result = google::protobuf::SourceCodeInfo::Clear(*(this + 26), v3, v4);
  }

LABEL_24:
  v19 = *(this + 8);
  v18 = this + 8;
  *(v18 + 2) = 0;
  if (v19)
  {

    return sub_1000315EC(v18, v3, v4);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::FileOptions::Clear(google::protobuf::FileOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  v8 = *(this + 10);
  if (v8)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v10 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v8 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v8 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_9:
      if ((v8 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_27:
      v12 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v12 + 23) < 0)
      {
        **v12 = 0;
        *(v12 + 8) = 0;
        if ((v8 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v12 = 0;
        *(v12 + 23) = 0;
        if ((v8 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

LABEL_11:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_35:
      v14 = *(this + 14) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v14 + 23) < 0)
      {
        **v14 = 0;
        *(v14 + 8) = 0;
        if ((v8 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v14 = 0;
        *(v14 + 23) = 0;
        if ((v8 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_13:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v16 = *(this + 16) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_46;
    }

    v9 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v8 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v11 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v8 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v8 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_10:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    v13 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v8 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v8 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_12:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    v15 = *(this + 15) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

LABEL_46:
  if ((v8 & 0x300) == 0)
  {
    goto LABEL_56;
  }

  if ((v8 & 0x100) != 0)
  {
    v17 = *(this + 17) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v17 + 23) < 0)
    {
      **v17 = 0;
      *(v17 + 8) = 0;
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }

    *v17 = 0;
    *(v17 + 23) = 0;
  }

  if ((v8 & 0x200) == 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  v18 = *(this + 18) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v18 + 23) < 0)
  {
    **v18 = 0;
    *(v18 + 8) = 0;
  }

  else
  {
    *v18 = 0;
    *(v18 + 23) = 0;
  }

LABEL_56:
  if ((v8 & 0xFC00) != 0)
  {
    *(this + 78) = 0;
    *(this + 38) = 0;
  }

  if ((v8 & 0xF0000) != 0)
  {
    *(this + 79) = 0;
    *(this + 40) = 1;
    *(this + 164) = 1;
  }

  v20 = *(this + 8);
  v19 = this + 8;
  *(v19 + 8) = 0;
  if (v20)
  {

    return sub_1000315EC(v19, v3, v4);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = google::protobuf::SourceCodeInfo_Location::Clear(v6);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *google::protobuf::FileDescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v78 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_1000313B0(a3, &v78, i))
    {
      return v78;
    }

    v7 = (v78 + 1);
    v8 = *v78;
    if ((*v78 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v78 + 2);
LABEL_6:
      v78 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v78, (v9 - 128));
    v78 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      break;
    }

    if (v8 >> 3 > 9)
    {
      if (v10 == 10)
      {
        if (v8 == 80)
        {
          v50 = v7 - 1;
          while (1)
          {
            v78 = (v50 + 1);
            v51 = v50[1];
            if (v51 < 0)
            {
              v52 = (v50[2] << 7) + v51;
              LODWORD(v51) = v52 - 128;
              if (v50[2] < 0)
              {
                v50 = google::protobuf::internal::VarintParseSlow64((v50 + 1), (v52 - 128));
                LODWORD(v51) = v53;
              }

              else
              {
                v50 += 3;
              }
            }

            else
            {
              v50 += 2;
            }

            v78 = v50;
            v54 = *(a1 + 144);
            if (v54 == *(a1 + 148))
            {
              v55 = v54 + 1;
              google::protobuf::RepeatedField<int>::Reserve((a1 + 144), v54 + 1);
              *(*(a1 + 152) + 4 * v54) = v51;
              v50 = v78;
            }

            else
            {
              *(*(a1 + 152) + 4 * v54) = v51;
              v55 = v54 + 1;
            }

            *(a1 + 144) = v55;
            if (!v50)
            {
              return 0;
            }

            if (*a3 <= v50 || *v50 != 80)
            {
              goto LABEL_162;
            }
          }
        }

        if (v8 != 82)
        {
          goto LABEL_154;
        }

        v73 = (a1 + 144);
      }

      else
      {
        if (v10 != 11)
        {
          if (v10 == 12 && v8 == 98)
          {
            *(a1 + 16) |= 4u;
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v32 = (a1 + 192);
            goto LABEL_114;
          }

          goto LABEL_154;
        }

        if (v8 == 88)
        {
          v67 = v7 - 1;
          while (1)
          {
            v78 = (v67 + 1);
            v68 = v67[1];
            if (v68 < 0)
            {
              v69 = (v67[2] << 7) + v68;
              LODWORD(v68) = v69 - 128;
              if (v67[2] < 0)
              {
                v67 = google::protobuf::internal::VarintParseSlow64((v67 + 1), (v69 - 128));
                LODWORD(v68) = v70;
              }

              else
              {
                v67 += 3;
              }
            }

            else
            {
              v67 += 2;
            }

            v78 = v67;
            v71 = *(a1 + 160);
            if (v71 == *(a1 + 164))
            {
              v72 = v71 + 1;
              google::protobuf::RepeatedField<int>::Reserve((a1 + 160), v71 + 1);
              *(*(a1 + 168) + 4 * v71) = v68;
              v67 = v78;
            }

            else
            {
              *(*(a1 + 168) + 4 * v71) = v68;
              v72 = v71 + 1;
            }

            *(a1 + 160) = v72;
            if (!v67)
            {
              return 0;
            }

            if (*a3 <= v67 || *v67 != 88)
            {
              goto LABEL_162;
            }
          }
        }

        if (v8 != 90)
        {
          goto LABEL_154;
        }

        v73 = (a1 + 160);
      }

      v22 = google::protobuf::internal::PackedInt32Parser(v73, v7, a3);
      goto LABEL_161;
    }

    if (v10 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_154;
      }

      v34 = (v7 - 1);
LABEL_70:
      v35 = (v34 + 1);
      v78 = (v34 + 1);
      v36 = *(a1 + 136);
      if (!v36)
      {
        v37 = *(a1 + 132);
        goto LABEL_72;
      }

      v41 = *(a1 + 128);
      v37 = *v36;
      if (v41 >= *v36)
      {
        if (v37 == *(a1 + 132))
        {
LABEL_72:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v37 + 1);
          v36 = *(a1 + 136);
          v37 = *v36;
        }

        *v36 = v37 + 1;
        v38 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(a1 + 120));
        v39 = *(a1 + 128);
        v40 = *(a1 + 136) + 8 * v39;
        *(a1 + 128) = v39 + 1;
        *(v40 + 8) = v38;
        v35 = v78;
      }

      else
      {
        *(a1 + 128) = v41 + 1;
        v38 = *&v36[2 * v41 + 2];
      }

      v34 = sub_1001622C8(a3, v38, v35);
      v78 = v34;
      if (!v34)
      {
        return 0;
      }

      if (*a3 <= v34 || *v34 != 58)
      {
        continue;
      }

      goto LABEL_70;
    }

    if (v10 == 8)
    {
      if (v8 != 66)
      {
        goto LABEL_154;
      }

      *(a1 + 16) |= 8u;
      v57 = *(a1 + 200);
      if (!v57)
      {
        v58 = *(a1 + 8);
        if (v58)
        {
          v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
        }

        v57 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileOptions>(v58);
        *(a1 + 200) = v57;
        v7 = v78;
      }

      v22 = sub_100162398(a3, v57, v7);
    }

    else
    {
      if (v10 != 9 || v8 != 74)
      {
        goto LABEL_154;
      }

      *(a1 + 16) |= 0x10u;
      v20 = *(a1 + 208);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo>(v21);
        *(a1 + 208) = v20;
        v7 = v78;
      }

      v22 = sub_100162468(a3, v20, v7);
    }

LABEL_161:
    v78 = v22;
    if (!v22)
    {
      return 0;
    }

LABEL_162:
    ;
  }

  if (v8 >> 3 > 3)
  {
    if (v10 != 4)
    {
      if (v10 != 5)
      {
        if (v10 != 6 || v8 != 50)
        {
          goto LABEL_154;
        }

        v23 = (v7 - 1);
        while (1)
        {
          v24 = (v23 + 1);
          v78 = (v23 + 1);
          v25 = *(a1 + 112);
          if (!v25)
          {
            break;
          }

          v30 = *(a1 + 104);
          v26 = *v25;
          if (v30 < *v25)
          {
            *(a1 + 104) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
            goto LABEL_49;
          }

          if (v26 == *(a1 + 108))
          {
            goto LABEL_45;
          }

LABEL_46:
          *v25 = v26 + 1;
          v27 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceDescriptorProto>(*(a1 + 96));
          v28 = *(a1 + 104);
          v29 = *(a1 + 112) + 8 * v28;
          *(a1 + 104) = v28 + 1;
          *(v29 + 8) = v27;
          v24 = v78;
LABEL_49:
          v23 = sub_1001621F8(a3, v27, v24);
          v78 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 50)
          {
            goto LABEL_162;
          }
        }

        v26 = *(a1 + 108);
LABEL_45:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v26 + 1);
        v25 = *(a1 + 112);
        v26 = *v25;
        goto LABEL_46;
      }

      if (v8 != 42)
      {
        goto LABEL_154;
      }

      v59 = (v7 - 1);
      while (1)
      {
        v60 = (v59 + 1);
        v78 = (v59 + 1);
        v61 = *(a1 + 88);
        if (!v61)
        {
          break;
        }

        v66 = *(a1 + 80);
        v62 = *v61;
        if (v66 < *v61)
        {
          *(a1 + 80) = v66 + 1;
          v63 = *&v61[2 * v66 + 2];
          goto LABEL_129;
        }

        if (v62 == *(a1 + 84))
        {
          goto LABEL_125;
        }

LABEL_126:
        *v61 = v62 + 1;
        v63 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(*(a1 + 72));
        v64 = *(a1 + 80);
        v65 = *(a1 + 88) + 8 * v64;
        *(a1 + 80) = v64 + 1;
        *(v65 + 8) = v63;
        v60 = v78;
LABEL_129:
        v59 = sub_100162128(a3, v63, v60);
        v78 = v59;
        if (!v59)
        {
          return 0;
        }

        if (*a3 <= v59 || *v59 != 42)
        {
          goto LABEL_162;
        }
      }

      v62 = *(a1 + 84);
LABEL_125:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v62 + 1);
      v61 = *(a1 + 88);
      v62 = *v61;
      goto LABEL_126;
    }

    if (v8 != 34)
    {
      goto LABEL_154;
    }

    v42 = (v7 - 1);
    while (1)
    {
      v43 = (v42 + 1);
      v78 = (v42 + 1);
      v44 = *(a1 + 64);
      if (!v44)
      {
        break;
      }

      v49 = *(a1 + 56);
      v45 = *v44;
      if (v49 < *v44)
      {
        *(a1 + 56) = v49 + 1;
        v46 = *&v44[2 * v49 + 2];
        goto LABEL_90;
      }

      if (v45 == *(a1 + 60))
      {
        goto LABEL_86;
      }

LABEL_87:
      *v44 = v45 + 1;
      v46 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(*(a1 + 48));
      v47 = *(a1 + 56);
      v48 = *(a1 + 64) + 8 * v47;
      *(a1 + 56) = v47 + 1;
      *(v48 + 8) = v46;
      v43 = v78;
LABEL_90:
      v42 = sub_100162058(a3, v46, v43);
      v78 = v42;
      if (!v42)
      {
        return 0;
      }

      if (*a3 <= v42 || *v42 != 34)
      {
        goto LABEL_162;
      }
    }

    v45 = *(a1 + 60);
LABEL_86:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v45 + 1);
    v44 = *(a1 + 64);
    v45 = *v44;
    goto LABEL_87;
  }

  if (v10 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v31 = *(a1 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = (a1 + 176);
      goto LABEL_114;
    }
  }

  else
  {
    if (v10 != 2)
    {
      if (v10 != 3 || v8 != 26)
      {
        goto LABEL_154;
      }

      v12 = v7 - 1;
      while (1)
      {
        v13 = v12 + 1;
        v78 = (v12 + 1);
        v14 = *(a1 + 40);
        if (!v14)
        {
          break;
        }

        v15 = *(a1 + 32);
        v16 = *v14;
        if (v15 >= *v14)
        {
          if (v16 == *(a1 + 36))
          {
LABEL_22:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v16 + 1);
            v14 = *(a1 + 40);
            v16 = *v14;
          }

          *v14 = v16 + 1;
          v17 = sub_1000B3534(*(a1 + 24));
          v18 = *(a1 + 32);
          v19 = *(a1 + 40) + 8 * v18;
          *(a1 + 32) = v18 + 1;
          *(v19 + 8) = v17;
          v13 = v78;
          goto LABEL_24;
        }

        *(a1 + 32) = v15 + 1;
        v17 = *&v14[2 * v15 + 2];
LABEL_24:
        v12 = google::protobuf::internal::InlineGreedyStringParser(v17, v13, a3);
        v78 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 26)
        {
          goto LABEL_162;
        }
      }

      v16 = *(a1 + 36);
      goto LABEL_22;
    }

    if (v8 == 18)
    {
      *(a1 + 16) |= 2u;
      v31 = *(a1 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = (a1 + 184);
LABEL_114:
      v56 = google::protobuf::internal::ArenaStringPtr::Mutable(v32, v31);
      v22 = google::protobuf::internal::InlineGreedyStringParser(v56, v78, a3);
      goto LABEL_161;
    }
  }

LABEL_154:
  if (v8)
  {
    v74 = (v8 & 7) == 4;
  }

  else
  {
    v74 = 1;
  }

  if (!v74)
  {
    v75 = *(a1 + 8);
    if (v75)
    {
      v76 = ((v75 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v76 = sub_100031428((a1 + 8), v6, v7);
      v7 = v78;
    }

    v22 = google::protobuf::internal::UnknownFieldParse(v8, v76, v7);
    goto LABEL_161;
  }

  a3[10].i32[0] = v8 - 1;
  return v78;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorProto::_InternalSerialize(google::protobuf::FileDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 22) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_100030384(a3, 2, (*(this + 23) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(this + 8);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v4 = sub_1000D92B8(a3, 3, *(*(this + 5) + v8), v4);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v9 = *(this + 14);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *(*(this + 8) + 8 * i + 8);
      *v4 = 34;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        v4[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = v4 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          v4[2] = v14;
          v13 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v12;
        v13 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 20);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(this + 11) + 8 * j + 8);
      *v4 = 42;
      v20 = *(v19 + 5);
      if (v20 > 0x7F)
      {
        v4[1] = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = v4 + 3;
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++v21;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(v21 - 1) = v23;
        }

        else
        {
          v4[2] = v22;
          v21 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v20;
        v21 = v4 + 2;
      }

      v4 = google::protobuf::EnumDescriptorProto::_InternalSerialize(v19, v21, a3);
    }
  }

  v25 = *(this + 26);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v27 = *(*(this + 14) + 8 * k + 8);
      *v4 = 50;
      v28 = *(v27 + 5);
      if (v28 > 0x7F)
      {
        v4[1] = v28 | 0x80;
        v30 = v28 >> 7;
        if (v28 >> 14)
        {
          v29 = v4 + 3;
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
          v4[2] = v30;
          v29 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v28;
        v29 = v4 + 2;
      }

      v4 = google::protobuf::ServiceDescriptorProto::_InternalSerialize(v27, v29, a3);
    }
  }

  v33 = *(this + 32);
  if (v33)
  {
    for (m = 0; m != v33; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v35 = *(*(this + 17) + 8 * m + 8);
      *v4 = 58;
      v36 = *(v35 + 5);
      if (v36 > 0x7F)
      {
        v4[1] = v36 | 0x80;
        v38 = v36 >> 7;
        if (v36 >> 14)
        {
          v37 = v4 + 3;
          do
          {
            *(v37 - 1) = v38 | 0x80;
            v39 = v38 >> 7;
            ++v37;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
          *(v37 - 1) = v39;
        }

        else
        {
          v4[2] = v38;
          v37 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v36;
        v37 = v4 + 2;
      }

      v4 = google::protobuf::FieldDescriptorProto::_InternalSerialize(v35, v37, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(this + 25);
    *v4 = 66;
    v42 = *(v41 + 11);
    if (v42 > 0x7F)
    {
      v4[1] = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v43 = v4 + 3;
        do
        {
          *(v43 - 1) = v44 | 0x80;
          v45 = v44 >> 7;
          ++v43;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
        *(v43 - 1) = v45;
      }

      else
      {
        v4[2] = v44;
        v43 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v42;
      v43 = v4 + 2;
    }

    v4 = google::protobuf::FileOptions::_InternalSerialize(v41, v43, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v47 = *(this + 26);
    *v4 = 74;
    v48 = *(v47 + 10);
    if (v48 > 0x7F)
    {
      v4[1] = v48 | 0x80;
      v50 = v48 >> 7;
      if (v48 >> 14)
      {
        v49 = v4 + 3;
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
        v4[2] = v50;
        v49 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v48;
      v49 = v4 + 2;
    }

    v4 = google::protobuf::SourceCodeInfo::_InternalSerialize(v47, v49, a3, v4);
  }

  v53 = *(this + 36);
  if (v53 >= 1)
  {
    for (n = 0; n != v53; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v55 = *(*(this + 19) + 4 * n);
      *v4 = 80;
      if (v55 > 0x7F)
      {
        v4[1] = v55 | 0x80;
        v56 = v55 >> 7;
        if (v55 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v56 | 0x80;
            v57 = v56 >> 7;
            ++v4;
            v58 = v56 >> 14;
            v56 >>= 7;
          }

          while (v58);
          *(v4 - 1) = v57;
        }

        else
        {
          v4[2] = v56;
          v4 += 3;
        }
      }

      else
      {
        v4[1] = v55;
        v4 += 2;
      }
    }
  }

  v59 = *(this + 40);
  if (v59 >= 1)
  {
    for (ii = 0; ii != v59; ++ii)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v61 = *(*(this + 21) + 4 * ii);
      *v4 = 88;
      if (v61 > 0x7F)
      {
        v4[1] = v61 | 0x80;
        v62 = v61 >> 7;
        if (v61 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v62 | 0x80;
            v63 = v62 >> 7;
            ++v4;
            v64 = v62 >> 14;
            v62 >>= 7;
          }

          while (v64);
          *(v4 - 1) = v63;
        }

        else
        {
          v4[2] = v62;
          v4 += 3;
        }
      }

      else
      {
        v4[1] = v61;
        v4 += 2;
      }
    }
  }

  if ((v6 & 4) != 0)
  {
    v4 = sub_100030384(a3, 12, (*(this + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v65 = *(this + 1);
  if ((v65 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v65 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

unsigned __int8 *sub_1000D92B8(google::protobuf::io::EpsCopyOutputStream *a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = *(a3 + 8), v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a1, a2, a3, a4);
}

char *google::protobuf::FileDescriptorProto::ByteSizeLong(google::protobuf::FileDescriptorProto *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = (*(this + 5) + 8);
    v4 = *(this + 8);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(this + 14);
  v9 = v4 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = google::protobuf::DescriptorProto::ByteSizeLong(v13);
      v9 += &v14[(9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6];
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::EnumDescriptorProto::ByteSizeLong(v20);
      v16 += &v21[(9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6];
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = google::protobuf::ServiceDescriptorProto::ByteSizeLong(v27);
      v23 += &v28[(9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6];
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 32);
  v30 = v23 + v29;
  v31 = *(this + 17);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v34);
      v30 += &v35[(9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6];
      v33 -= 8;
    }

    while (v33);
  }

  v36 = google::protobuf::internal::WireFormatLite::Int32Size(this + 36);
  v37 = *(this + 36);
  v38 = (v36 + v37 + google::protobuf::internal::WireFormatLite::Int32Size(this + 40) + *(this + 40) + v30);
  v39 = *(this + 4);
  if ((v39 & 0x1F) == 0)
  {
    goto LABEL_39;
  }

  if (v39)
  {
    v42 = *(this + 22) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v42 + 23);
    v44 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v44 = v43;
    }

    v38 = (v38 + v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v39 & 2) == 0)
    {
LABEL_35:
      if ((v39 & 4) == 0)
      {
        goto LABEL_36;
      }

LABEL_47:
      v48 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
      v49 = *(v48 + 23);
      v50 = *(v48 + 8);
      if ((v49 & 0x80u) == 0)
      {
        v50 = v49;
      }

      v38 = (v38 + v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1);
      if ((v39 & 8) == 0)
      {
LABEL_37:
        if ((v39 & 0x10) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      goto LABEL_50;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_35;
  }

  v45 = *(this + 23) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(v45 + 23);
  v47 = *(v45 + 8);
  if ((v46 & 0x80u) == 0)
  {
    v47 = v46;
  }

  v38 = (v38 + v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v39 & 4) != 0)
  {
    goto LABEL_47;
  }

LABEL_36:
  if ((v39 & 8) == 0)
  {
    goto LABEL_37;
  }

LABEL_50:
  v51 = google::protobuf::FileOptions::ByteSizeLong(*(this + 25));
  v38 = &v51[((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1 + v38];
  if ((v39 & 0x10) != 0)
  {
LABEL_38:
    v40 = google::protobuf::SourceCodeInfo::ByteSizeLong(*(this + 26));
    v38 = &v40[((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1 + v38];
  }

LABEL_39:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v38, this + 5);
  }

  else
  {
    *(this + 5) = v38;
    return v38;
  }
}

void google::protobuf::FileDescriptorProto::MergeFrom(google::protobuf::FileDescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FileDescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FileDescriptorProto::MergeFrom(google::protobuf::FileDescriptorProto *this, const google::protobuf::FileDescriptorProto *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_1000ED8E8(this + 1, v8, (v7 + 8), v6, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v6;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_1000ED994(this + 6, v13, v12 + 8, v11, **(this + 8) - *(this + 14));
    v14 = *(this + 14) + v11;
    *(this + 14) = v14;
    v15 = *(this + 8);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 20);
  if (v16)
  {
    v17 = *(a2 + 11);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_1000EDA54(this + 9, v18, v17 + 8, v16, **(this + 11) - *(this + 20));
    v19 = *(this + 20) + v16;
    *(this + 20) = v19;
    v20 = *(this + 11);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 26);
  if (v21)
  {
    v22 = *(a2 + 14);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96), *(a2 + 26));
    sub_1000EDB14(this + 12, v23, v22 + 8, v21, **(this + 14) - *(this + 26));
    v24 = *(this + 26) + v21;
    *(this + 26) = v24;
    v25 = *(this + 14);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 32);
  if (v26)
  {
    v27 = *(a2 + 17);
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120), *(a2 + 32));
    sub_1000EDBD4(this + 15, v28, v27 + 8, v26, **(this + 17) - *(this + 32));
    v29 = *(this + 32) + v26;
    *(this + 32) = v29;
    v30 = *(this + 17);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 36);
  if (v31)
  {
    v32 = *(this + 36);
    google::protobuf::RepeatedField<int>::Reserve(this + 36, v32 + v31);
    v33 = *(this + 19);
    *(this + 36) += *(a2 + 36);
    memcpy((v33 + 4 * v32), *(a2 + 19), 4 * *(a2 + 36));
  }

  v34 = *(a2 + 40);
  if (v34)
  {
    v35 = *(this + 40);
    google::protobuf::RepeatedField<int>::Reserve(this + 40, v35 + v34);
    v36 = *(this + 21);
    *(this + 40) += *(a2 + 40);
    memcpy((v36 + 4 * v35), *(a2 + 21), 4 * *(a2 + 40));
  }

  v37 = *(a2 + 4);
  if ((v37 & 0x1F) == 0)
  {
    return;
  }

  if (v37)
  {
    v38 = *(a2 + 22);
    *(this + 4) |= 1u;
    v39 = *(this + 1);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 22, v38 & 0xFFFFFFFFFFFFFFFELL, v39);
    if ((v37 & 2) == 0)
    {
LABEL_25:
      if ((v37 & 4) == 0)
      {
        goto LABEL_26;
      }

LABEL_35:
      v42 = *(a2 + 24);
      *(this + 4) |= 4u;
      v43 = *(this + 1);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 24, v42 & 0xFFFFFFFFFFFFFFFELL, v43);
      if ((v37 & 8) == 0)
      {
LABEL_27:
        if ((v37 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_46;
      }

      goto LABEL_38;
    }
  }

  else if ((v37 & 2) == 0)
  {
    goto LABEL_25;
  }

  v40 = *(a2 + 23);
  *(this + 4) |= 2u;
  v41 = *(this + 1);
  if (v41)
  {
    v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 23, v40 & 0xFFFFFFFFFFFFFFFELL, v41);
  if ((v37 & 4) != 0)
  {
    goto LABEL_35;
  }

LABEL_26:
  if ((v37 & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_38:
  *(this + 4) |= 8u;
  v44 = *(this + 25);
  if (!v44)
  {
    v45 = *(this + 1);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileOptions>(v45);
    *(this + 25) = v44;
  }

  if (*(a2 + 25))
  {
    v46 = *(a2 + 25);
  }

  else
  {
    v46 = &google::protobuf::_FileOptions_default_instance_;
  }

  google::protobuf::FileOptions::MergeFrom(v44, v46);
  if ((v37 & 0x10) != 0)
  {
LABEL_46:
    *(this + 4) |= 0x10u;
    v47 = *(this + 26);
    if (!v47)
    {
      v48 = *(this + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo>(v48);
      *(this + 26) = v47;
    }

    if (*(a2 + 26))
    {
      v49 = *(a2 + 26);
    }

    else
    {
      v49 = &google::protobuf::_SourceCodeInfo_default_instance_;
    }

    google::protobuf::SourceCodeInfo::MergeFrom(v47, v49, a3);
  }
}

void google::protobuf::FileOptions::MergeFrom(google::protobuf::FileOptions *this, const google::protobuf::FileOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_1000EE060(this + 2, v8, v7 + 8, v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 10);
  if (!v11)
  {
    goto LABEL_40;
  }

  if (v11)
  {
    v12 = *(a2 + 9);
    *(this + 10) |= 1u;
    v13 = *(this + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 9, v12 & 0xFFFFFFFFFFFFFFFELL, v13);
    if ((v11 & 2) == 0)
    {
LABEL_9:
      if ((v11 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(a2 + 10);
  *(this + 10) |= 2u;
  v15 = *(this + 1);
  if (v15)
  {
    v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 10, v14 & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v11 & 4) == 0)
  {
LABEL_10:
    if ((v11 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_22:
  v16 = *(a2 + 11);
  *(this + 10) |= 4u;
  v17 = *(this + 1);
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 11, v16 & 0xFFFFFFFFFFFFFFFELL, v17);
  if ((v11 & 8) == 0)
  {
LABEL_11:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_25:
  v18 = *(a2 + 12);
  *(this + 10) |= 8u;
  v19 = *(this + 1);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 12, v18 & 0xFFFFFFFFFFFFFFFELL, v19);
  if ((v11 & 0x10) == 0)
  {
LABEL_12:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    v22 = *(a2 + 14);
    *(this + 10) |= 0x20u;
    v23 = *(this + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 14, v22 & 0xFFFFFFFFFFFFFFFELL, v23);
    if ((v11 & 0x40) == 0)
    {
LABEL_14:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_28:
  v20 = *(a2 + 13);
  *(this + 10) |= 0x10u;
  v21 = *(this + 1);
  if (v21)
  {
    v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 13, v20 & 0xFFFFFFFFFFFFFFFELL, v21);
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_34:
  v24 = *(a2 + 15);
  *(this + 10) |= 0x40u;
  v25 = *(this + 1);
  if (v25)
  {
    v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 15, v24 & 0xFFFFFFFFFFFFFFFELL, v25);
  if ((v11 & 0x80) != 0)
  {
LABEL_37:
    v26 = *(a2 + 16);
    *(this + 10) |= 0x80u;
    v27 = *(this + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 16, v26 & 0xFFFFFFFFFFFFFFFELL, v27);
  }

LABEL_40:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v11 & 0x100) != 0)
  {
    v28 = *(a2 + 17);
    *(this + 10) |= 0x100u;
    v29 = *(this + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 17, v28 & 0xFFFFFFFFFFFFFFFELL, v29);
    if ((v11 & 0x200) == 0)
    {
LABEL_43:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_65;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_43;
  }

  v30 = *(a2 + 18);
  *(this + 10) |= 0x200u;
  v31 = *(this + 1);
  if (v31)
  {
    v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 18, v30 & 0xFFFFFFFFFFFFFFFELL, v31);
  if ((v11 & 0x400) == 0)
  {
LABEL_44:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(this + 152) = *(a2 + 152);
  if ((v11 & 0x800) == 0)
  {
LABEL_45:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(this + 153) = *(a2 + 153);
  if ((v11 & 0x1000) == 0)
  {
LABEL_46:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(this + 154) = *(a2 + 154);
  if ((v11 & 0x2000) == 0)
  {
LABEL_47:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

LABEL_69:
    *(this + 156) = *(a2 + 156);
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_68:
  *(this + 155) = *(a2 + 155);
  if ((v11 & 0x4000) != 0)
  {
    goto LABEL_69;
  }

LABEL_48:
  if ((v11 & 0x8000) != 0)
  {
LABEL_49:
    *(this + 157) = *(a2 + 157);
  }

LABEL_50:
  *(this + 10) |= v11;
LABEL_51:
  if ((v11 & 0xF0000) == 0)
  {
    return;
  }

  if ((v11 & 0x10000) != 0)
  {
    *(this + 158) = *(a2 + 158);
    if ((v11 & 0x20000) == 0)
    {
LABEL_54:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_55;
      }

LABEL_73:
      *(this + 40) = *(a2 + 40);
      if ((v11 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

  *(this + 159) = *(a2 + 159);
  if ((v11 & 0x40000) != 0)
  {
    goto LABEL_73;
  }

LABEL_55:
  if ((v11 & 0x80000) != 0)
  {
LABEL_56:
    *(this + 164) = *(a2 + 164);
  }

LABEL_57:
  *(this + 10) |= v11;
}

std::string *google::protobuf::SourceCodeInfo::MergeFrom(std::string *this, const google::protobuf::SourceCodeInfo *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], v6);
    this = sub_1000D6684(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  return this;
}

void google::protobuf::FileDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FileDescriptorProto::Clear(this);

    google::protobuf::FileDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::FileDescriptorProto::IsInitialized(google::protobuf::FileDescriptorProto *this)
{
  v2 = *(this + 14);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = google::protobuf::DescriptorProto::IsInitialized(*(*(this + 8) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 20);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = google::protobuf::EnumDescriptorProto::IsInitialized(*(*(this + 11) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 26);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = google::protobuf::ServiceDescriptorProto::IsInitialized(*(*(this + 14) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(this + 32);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = google::protobuf::FieldDescriptorProto::IsInitialized(*(*(this + 17) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 8) == 0)
  {
    return 1;
  }

  v15 = *(this + 25);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v15 + 16));
  if (result)
  {
    result = sub_1000DD810(v15 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1000DA198(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = google::protobuf::DescriptorProto::IsInitialized(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

uint64_t google::protobuf::FileOptions::IsInitialized(google::protobuf::FileOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 48);
  }

  return result;
}

uint64_t google::protobuf::FileDescriptorProto::GetMetadata(google::protobuf::FileDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[2];
  v2 = off_1001EA190[3];
  return result;
}

void google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  if (this != google::protobuf::_DescriptorProto_ExtensionRange_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ExtensionRange::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if (v4)
  {
    this = google::protobuf::ExtensionRangeOptions::Clear(*(this + 3));
  }

  if ((v4 & 6) != 0)
  {
    *(v3 + 32) = 0;
  }

  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1000315EC(v5, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions::Clear(google::protobuf::ExtensionRangeOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 12);
  if (v5 >= 1)
  {
    v6 = (*(this + 7) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 12) = 0;
  }

  v9 = *(this + 8);
  v8 = (this + 8);
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::DescriptorProto_ExtensionRange::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v30, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      v9 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v10 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_47;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 == 26)
        {
          *(a1 + 16) |= 1u;
          v20 = *(a1 + 24);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ExtensionRangeOptions>(v21);
            *(a1 + 24) = v20;
            v8 = v30;
          }

          v16 = sub_100162538(a3, v20, v8);
        }

        else
        {
LABEL_13:
          if (v9)
          {
            v13 = (v9 & 7) == 4;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_100031428((a1 + 8), v5, v8);
            v8 = v30;
          }

          v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
        }

        v30 = v16;
        if (!v16)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v18 = (v8 + 1);
        LODWORD(v17) = *v8;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v19 = *v18;
        v17 = v17 + (v19 << 7) - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v8 + 2);
LABEL_24:
          v30 = v18;
          *(a1 + 36) = v17;
          goto LABEL_37;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v8, v17);
        v30 = v26;
        *(a1 + 36) = v27;
        if (!v26)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v23 = (v8 + 1);
        LODWORD(v22) = *v8;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        v24 = *v23;
        v22 = v22 + (v24 << 7) - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_36:
          v30 = v23;
          *(a1 + 32) = v22;
          goto LABEL_37;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v30 = v28;
        *(a1 + 32) = v29;
        if (!v28)
        {
LABEL_47:
          v30 = 0;
          goto LABEL_2;
        }
      }

LABEL_37:
      if (sub_1000313B0(a3, &v30, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ExtensionRange::_InternalSerialize(google::protobuf::DescriptorProto_ExtensionRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 8);
    *a2 = 8;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v12 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v12 | 0x80;
          v17 = v12 >> 7;
          ++a2;
          v18 = v12 >> 14;
          v12 >>= 7;
        }

        while (v18);
        *(a2 - 1) = v17;
        if ((v6 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v12;
        a2 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

  if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 9);
  *a2 = 16;
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v20 = v19 >> 7;
    if (v19 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++a2;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(a2 - 1) = v21;
      if ((v6 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v20;
      a2 += 3;
      if ((v6 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v19;
    a2 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 3);
  *a2 = 26;
  v8 = *(v7 + 16);
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v11 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = a2 + 3;
      do
      {
        *(v9 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v9;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v9 - 1) = v13;
    }

    else
    {
      a2[2] = v11;
      v9 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  a2 = google::protobuf::ExtensionRangeOptions::_InternalSerialize(v7, v9, a3);
LABEL_22:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::DescriptorProto_ExtensionRange::ByteSizeLong(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = google::protobuf::ExtensionRangeOptions::ByteSizeLong(*(this + 3));
    v3 = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 = (v3 + v6);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 9);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 = (v3 + v8);
  }

LABEL_16:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(google::protobuf::Arena **this, const google::protobuf::DescriptorProto_ExtensionRange *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      *(this + 4) |= 1u;
      v7 = this[3];
      if (!v7)
      {
        v8 = this[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ExtensionRangeOptions>(v8);
        this[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &google::protobuf::_ExtensionRangeOptions_default_instance_;
      }

      google::protobuf::ExtensionRangeOptions::MergeFrom(v7, v9);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v6;
          return;
        }

LABEL_7:
        *(this + 9) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) = *(a2 + 8);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void google::protobuf::ExtensionRangeOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::ExtensionRangeOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *(a2 + 7);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 5), v6);
    sub_1000EE060((this + 5), v8, v7 + 8, v6, *this[7] - *(this + 12));
    v9 = *(this + 12) + v6;
    *(this + 12) = v9;
    v10 = this[7];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }
}

void google::protobuf::DescriptorProto_ExtensionRange::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto_ExtensionRange::Clear(this, a2, a3);

    google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::DescriptorProto_ExtensionRange::IsInitialized(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(this + 3);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_1000DD810(v2 + 40);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::ExtensionRangeOptions::IsInitialized(google::protobuf::ExtensionRangeOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 40);
  }

  return result;
}

uint64_t google::protobuf::DescriptorProto_ExtensionRange::GetMetadata(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[4];
  v2 = off_1001EA190[5];
  return result;
}

void google::protobuf::DescriptorProto_ReservedRange::~DescriptorProto_ReservedRange(google::protobuf::DescriptorProto_ReservedRange *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ReservedRange::Clear(google::protobuf::DescriptorProto_ReservedRange *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::DescriptorProto_ReservedRange::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v26, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        LODWORD(v15) = *v8;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = v15 + (v17 << 7) - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v26 = v16;
          *(a1 + 28) = v15;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v26 = v22;
        *(a1 + 28) = v23;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v26;
          }

          v26 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v26)
          {
LABEL_39:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v19 = (v8 + 1);
        LODWORD(v18) = *v8;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = v18 + (v20 << 7) - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_28:
          v26 = v19;
          *(a1 + 24) = v18;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_1000313B0(a3, &v26, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ReservedRange::_InternalSerialize(google::protobuf::DescriptorProto_ReservedRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 7);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::DescriptorProto_ReservedRange::ByteSizeLong(google::protobuf::DescriptorProto_ReservedRange *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(this + 6);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(this + 7);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void google::protobuf::DescriptorProto_ReservedRange::MergeFrom(google::protobuf::DescriptorProto_ReservedRange *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::DescriptorProto_ReservedRange::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::DescriptorProto_ReservedRange::MergeFrom(void *this, const google::protobuf::DescriptorProto_ReservedRange *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v4[6] = *(a2 + 6);
    }

    if ((v6 & 2) != 0)
    {
      v4[7] = *(a2 + 7);
    }

    v4[4] |= v6;
  }

  return this;
}

void google::protobuf::DescriptorProto_ReservedRange::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto_ReservedRange::Clear(this, a2, a3);

    google::protobuf::DescriptorProto_ReservedRange::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::DescriptorProto_ReservedRange::GetMetadata(google::protobuf::DescriptorProto_ReservedRange *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[6];
  v2 = off_1001EA190[7];
  return result;
}

void *google::protobuf::DescriptorProto::DescriptorProto(void *a1, uint64_t a2)
{
  *a1 = off_1001CF7C0;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[6] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a2;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = a2;
  a1[16] = 0;
  a1[17] = 0;
  a1[24] = a2;
  a1[18] = a2;
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = a2;
  a1[22] = 0;
  a1[23] = 0;
  a1[25] = 0;
  a1[26] = 0;
  if (atomic_load_explicit(scc_info_DescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[27] = &google::protobuf::internal::fixed_address_empty_string;
  a1[28] = 0;
  return a1;
}

void sub_1000DB3DC(_Unwind_Exception *a1)
{
  sub_1000ED63C(v8);
  sub_10006A1CC(v7);
  sub_1000EDD18(v6);
  sub_1000ED864(v5);
  sub_1000EDC94(v4);
  sub_1000ED75C(v3);
  sub_1000ED6D8(v2);
  sub_1000ED864(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorProto::~DescriptorProto(google::protobuf::DescriptorProto *this)
{
  v2 = *(this + 27);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != google::protobuf::_DescriptorProto_default_instance_)
  {
    v3 = *(this + 28);
    if (v3)
    {
      google::protobuf::MessageOptions::~MessageOptions(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_1000ED63C(this + 24);
  sub_10006A1CC(this + 21);
  sub_1000EDD18(this + 18);
  sub_1000ED864(this + 15);
  sub_1000EDC94(this + 12);
  sub_1000ED75C(this + 9);
  sub_1000ED6D8(this + 48);
  sub_1000ED864(this + 3);
}

{
  google::protobuf::DescriptorProto::~DescriptorProto(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto::Clear(google::protobuf::DescriptorProto *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      google::protobuf::FieldDescriptorProto::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(this + 8) = 0;
  }

  v7 = *(this + 14);
  if (v7 >= 1)
  {
    v8 = (*(this + 8) + 8);
    do
    {
      v9 = *v8++;
      google::protobuf::DescriptorProto::Clear(v9);
      --v7;
    }

    while (v7);
    *(this + 14) = 0;
  }

  v10 = *(this + 20);
  if (v10 >= 1)
  {
    v11 = (*(this + 11) + 8);
    do
    {
      v12 = *v11++;
      google::protobuf::EnumDescriptorProto::Clear(v12, a2, a3);
      --v10;
    }

    while (v10);
    *(this + 20) = 0;
  }

  v13 = *(this + 26);
  if (v13 >= 1)
  {
    v14 = (*(this + 14) + 8);
    do
    {
      v15 = *v14++;
      google::protobuf::DescriptorProto_ExtensionRange::Clear(v15, a2, a3);
      --v13;
    }

    while (v13);
    *(this + 26) = 0;
  }

  v16 = *(this + 32);
  if (v16 >= 1)
  {
    v17 = (*(this + 17) + 8);
    do
    {
      v18 = *v17++;
      google::protobuf::FieldDescriptorProto::Clear(v18, a2, a3);
      --v16;
    }

    while (v16);
    *(this + 32) = 0;
  }

  v19 = *(this + 38);
  if (v19 >= 1)
  {
    v20 = (*(this + 20) + 8);
    do
    {
      v21 = *v20++;
      google::protobuf::OneofDescriptorProto::Clear(v21, a2, a3);
      --v19;
    }

    while (v19);
    *(this + 38) = 0;
  }

  v22 = *(this + 44);
  if (v22 >= 1)
  {
    v23 = (*(this + 23) + 8);
    do
    {
      v24 = *v23++;
      google::protobuf::DescriptorProto_ReservedRange::Clear(v24, a2, a3);
      --v22;
    }

    while (v22);
    *(this + 44) = 0;
  }

  result = sub_1000ED4AC(this + 192);
  v28 = *(this + 4);
  if ((v28 & 3) != 0)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_33;
    }

    v29 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v29 + 23) & 0x80000000) == 0)
    {
      *v29 = 0;
      *(v29 + 23) = 0;
LABEL_33:
      if ((v28 & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    **v29 = 0;
    *(v29 + 8) = 0;
    if ((v28 & 2) != 0)
    {
LABEL_34:
      result = google::protobuf::MessageOptions::Clear(*(this + 28));
    }
  }

LABEL_35:
  v31 = *(this + 8);
  v30 = this + 8;
  *(v30 + 2) = 0;
  if (v31)
  {

    return sub_1000315EC(v30, v26, v27);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::MessageOptions::Clear(google::protobuf::MessageOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 16) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::DescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v87 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_1000313B0(a3, &v87, i))
    {
      return v87;
    }

    v7 = (v87 + 1);
    v8 = *v87;
    if ((*v87 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v87 + 2);
LABEL_6:
      v87 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v87, (v9 - 128));
    v87 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 7)
    {
      if (v10 != 8)
      {
        if (v10 != 9)
        {
          if (v10 != 10 || v8 != 82)
          {
            goto LABEL_146;
          }

          v19 = v7 - 1;
LABEL_32:
          v20 = v19 + 1;
          v87 = (v19 + 1);
          v21 = *(a1 + 208);
          if (v21)
          {
            v22 = *(a1 + 200);
            v23 = *v21;
            if (v22 < *v21)
            {
              *(a1 + 200) = v22 + 1;
              v24 = *&v21[2 * v22 + 2];
              goto LABEL_39;
            }

            if (v23 == *(a1 + 204))
            {
LABEL_37:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192), v23 + 1);
              v21 = *(a1 + 208);
              v23 = *v21;
            }

            *v21 = v23 + 1;
            v24 = sub_1000B3534(*(a1 + 192));
            v25 = *(a1 + 200);
            v26 = *(a1 + 208) + 8 * v25;
            *(a1 + 200) = v25 + 1;
            *(v26 + 8) = v24;
            v20 = v87;
LABEL_39:
            v19 = google::protobuf::internal::InlineGreedyStringParser(v24, v20, a3);
            v87 = v19;
            if (!v19)
            {
              return 0;
            }

            if (*a3 <= v19 || *v19 != 82)
            {
              continue;
            }

            goto LABEL_32;
          }

          v23 = *(a1 + 204);
          goto LABEL_37;
        }

        if (v8 != 74)
        {
          goto LABEL_146;
        }

        v75 = (v7 - 1);
LABEL_134:
        v76 = (v75 + 1);
        v87 = (v75 + 1);
        v77 = *(a1 + 184);
        if (!v77)
        {
          v78 = *(a1 + 180);
          goto LABEL_136;
        }

        v82 = *(a1 + 176);
        v78 = *v77;
        if (v82 >= *v77)
        {
          if (v78 == *(a1 + 180))
          {
LABEL_136:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168), v78 + 1);
            v77 = *(a1 + 184);
            v78 = *v77;
          }

          *v77 = v78 + 1;
          v79 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ReservedRange>(*(a1 + 168));
          v80 = *(a1 + 176);
          v81 = *(a1 + 184) + 8 * v80;
          *(a1 + 176) = v80 + 1;
          *(v81 + 8) = v79;
          v76 = v87;
        }

        else
        {
          *(a1 + 176) = v82 + 1;
          v79 = *&v77[2 * v82 + 2];
        }

        v75 = sub_100162878(a3, v79, v76);
        v87 = v75;
        if (!v75)
        {
          return 0;
        }

        if (*a3 <= v75 || *v75 != 74)
        {
          continue;
        }

        goto LABEL_134;
      }

      if (v8 != 66)
      {
        goto LABEL_146;
      }

      v59 = (v7 - 1);
LABEL_106:
      v60 = (v59 + 1);
      v87 = (v59 + 1);
      v61 = *(a1 + 160);
      if (!v61)
      {
        v62 = *(a1 + 156);
        goto LABEL_108;
      }

      v66 = *(a1 + 152);
      v62 = *v61;
      if (v66 >= *v61)
      {
        if (v62 == *(a1 + 156))
        {
LABEL_108:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v62 + 1);
          v61 = *(a1 + 160);
          v62 = *v61;
        }

        *v61 = v62 + 1;
        v63 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofDescriptorProto>(*(a1 + 144));
        v64 = *(a1 + 152);
        v65 = *(a1 + 160) + 8 * v64;
        *(a1 + 152) = v64 + 1;
        *(v65 + 8) = v63;
        v60 = v87;
      }

      else
      {
        *(a1 + 152) = v66 + 1;
        v63 = *&v61[2 * v66 + 2];
      }

      v59 = sub_1001627A8(a3, v63, v60);
      v87 = v59;
      if (!v59)
      {
        return 0;
      }

      if (*a3 <= v59 || *v59 != 66)
      {
        continue;
      }

      goto LABEL_106;
    }

    if (v10 == 6)
    {
      if (v8 != 50)
      {
        goto LABEL_146;
      }

      v42 = (v7 - 1);
LABEL_78:
      v43 = (v42 + 1);
      v87 = (v42 + 1);
      v44 = *(a1 + 136);
      if (!v44)
      {
        v45 = *(a1 + 132);
        goto LABEL_80;
      }

      v49 = *(a1 + 128);
      v45 = *v44;
      if (v49 >= *v44)
      {
        if (v45 == *(a1 + 132))
        {
LABEL_80:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v45 + 1);
          v44 = *(a1 + 136);
          v45 = *v44;
        }

        *v44 = v45 + 1;
        v46 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(a1 + 120));
        v47 = *(a1 + 128);
        v48 = *(a1 + 136) + 8 * v47;
        *(a1 + 128) = v47 + 1;
        *(v48 + 8) = v46;
        v43 = v87;
      }

      else
      {
        *(a1 + 128) = v49 + 1;
        v46 = *&v44[2 * v49 + 2];
      }

      v42 = sub_1001622C8(a3, v46, v43);
      v87 = v42;
      if (!v42)
      {
        return 0;
      }

      if (*a3 <= v42 || *v42 != 50)
      {
        continue;
      }

      goto LABEL_78;
    }

    if (v10 != 7 || v8 != 58)
    {
      goto LABEL_146;
    }

    *(a1 + 16) |= 2u;
    v36 = *(a1 + 224);
    if (!v36)
    {
      v37 = *(a1 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MessageOptions>(v37);
      *(a1 + 224) = v36;
      v7 = v87;
    }

    v38 = sub_1001626D8(a3, v36, v7);
LABEL_153:
    v87 = v38;
    if (!v38)
    {
      return 0;
    }

LABEL_154:
    ;
  }

  if (v8 >> 3 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 != 2 || v8 != 18)
      {
        goto LABEL_146;
      }

      v28 = (v7 - 1);
      while (2)
      {
        v29 = (v28 + 1);
        v87 = (v28 + 1);
        v30 = *(a1 + 40);
        if (!v30)
        {
          v31 = *(a1 + 36);
          goto LABEL_52;
        }

        v35 = *(a1 + 32);
        v31 = *v30;
        if (v35 >= *v30)
        {
          if (v31 == *(a1 + 36))
          {
LABEL_52:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v31 + 1);
            v30 = *(a1 + 40);
            v31 = *v30;
          }

          *v30 = v31 + 1;
          v32 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(a1 + 24));
          v33 = *(a1 + 32);
          v34 = *(a1 + 40) + 8 * v33;
          *(a1 + 32) = v33 + 1;
          *(v34 + 8) = v32;
          v29 = v87;
        }

        else
        {
          *(a1 + 32) = v35 + 1;
          v32 = *&v30[2 * v35 + 2];
        }

        v28 = sub_1001622C8(a3, v32, v29);
        v87 = v28;
        if (!v28)
        {
          return 0;
        }

        if (*a3 <= v28 || *v28 != 18)
        {
          goto LABEL_154;
        }

        continue;
      }
    }

    if (v8 != 10)
    {
      goto LABEL_146;
    }

    *(a1 + 16) |= 1u;
    v40 = *(a1 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 216), v40);
    v38 = google::protobuf::internal::InlineGreedyStringParser(v41, v87, a3);
    goto LABEL_153;
  }

  if (v10 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_146;
    }

    v50 = v7 - 1;
    while (1)
    {
      v51 = (v50 + 1);
      v87 = (v50 + 1);
      v52 = *(a1 + 64);
      if (!v52)
      {
        break;
      }

      v58 = *(a1 + 56);
      v53 = *v52;
      if (v58 < *v52)
      {
        *(a1 + 56) = v58 + 1;
        v55 = *&v52[2 * v58 + 2];
        goto LABEL_98;
      }

      if (v53 == *(a1 + 60))
      {
        goto LABEL_94;
      }

LABEL_95:
      *v52 = v53 + 1;
      v54 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(*(a1 + 48));
      LODWORD(v55) = v54;
      v56 = *(a1 + 56);
      v57 = *(a1 + 64) + 8 * v56;
      *(a1 + 56) = v56 + 1;
      *(v57 + 8) = v54;
      v51 = v87;
LABEL_98:
      v50 = sub_100162058(a3, v55, v51);
      v87 = v50;
      if (!v50)
      {
        return 0;
      }

      if (*a3 <= v50 || *v50 != 26)
      {
        goto LABEL_154;
      }
    }

    v53 = *(a1 + 60);
LABEL_94:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v53 + 1);
    v52 = *(a1 + 64);
    v53 = *v52;
    goto LABEL_95;
  }

  if (v10 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_146;
    }

    v67 = (v7 - 1);
    while (1)
    {
      v68 = (v67 + 1);
      v87 = (v67 + 1);
      v69 = *(a1 + 88);
      if (!v69)
      {
        break;
      }

      v74 = *(a1 + 80);
      v70 = *v69;
      if (v74 < *v69)
      {
        *(a1 + 80) = v74 + 1;
        v71 = *&v69[2 * v74 + 2];
        goto LABEL_126;
      }

      if (v70 == *(a1 + 84))
      {
        goto LABEL_122;
      }

LABEL_123:
      *v69 = v70 + 1;
      v71 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(*(a1 + 72));
      v72 = *(a1 + 80);
      v73 = *(a1 + 88) + 8 * v72;
      *(a1 + 80) = v72 + 1;
      *(v73 + 8) = v71;
      v68 = v87;
LABEL_126:
      v67 = sub_100162128(a3, v71, v68);
      v87 = v67;
      if (!v67)
      {
        return 0;
      }

      if (*a3 <= v67 || *v67 != 34)
      {
        goto LABEL_154;
      }
    }

    v70 = *(a1 + 84);
LABEL_122:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v70 + 1);
    v69 = *(a1 + 88);
    v70 = *v69;
    goto LABEL_123;
  }

  if (v10 == 5 && v8 == 42)
  {
    v11 = (v7 - 1);
    while (1)
    {
      v12 = (v11 + 1);
      v87 = (v11 + 1);
      v13 = *(a1 + 112);
      if (!v13)
      {
        break;
      }

      v18 = *(a1 + 104);
      v14 = *v13;
      if (v18 < *v13)
      {
        *(a1 + 104) = v18 + 1;
        v15 = *&v13[2 * v18 + 2];
        goto LABEL_20;
      }

      if (v14 == *(a1 + 108))
      {
        goto LABEL_16;
      }

LABEL_17:
      *v13 = v14 + 1;
      v15 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ExtensionRange>(*(a1 + 96));
      v16 = *(a1 + 104);
      v17 = *(a1 + 112) + 8 * v16;
      *(a1 + 104) = v16 + 1;
      *(v17 + 8) = v15;
      v12 = v87;
LABEL_20:
      v11 = sub_100162608(a3, v15, v12);
      v87 = v11;
      if (!v11)
      {
        return 0;
      }

      if (*a3 <= v11 || *v11 != 42)
      {
        goto LABEL_154;
      }
    }

    v14 = *(a1 + 108);
LABEL_16:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v14 + 1);
    v13 = *(a1 + 112);
    v14 = *v13;
    goto LABEL_17;
  }

LABEL_146:
  if (v8)
  {
    v83 = (v8 & 7) == 4;
  }

  else
  {
    v83 = 1;
  }

  if (!v83)
  {
    v84 = *(a1 + 8);
    if (v84)
    {
      v85 = ((v84 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v85 = sub_100031428((a1 + 8), v6, v7);
      v7 = v87;
    }

    v38 = google::protobuf::internal::UnknownFieldParse(v8, v85, v7);
    goto LABEL_153;
  }

  a3[10].i32[0] = v8 - 1;
  return v87;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto::_InternalSerialize(google::protobuf::DescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 27) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
      *v4 = 18;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = google::protobuf::FieldDescriptorProto::_InternalSerialize(v9, v11, a3);
    }
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v17 = *(*(this + 8) + 8 * j + 8);
      *v4 = 26;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = v4 + 3;
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          v4[2] = v20;
          v19 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v18;
        v19 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto::_InternalSerialize(v17, v19, a3);
    }
  }

  v23 = *(this + 20);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v25 = *(*(this + 11) + 8 * k + 8);
      *v4 = 34;
      v26 = *(v25 + 5);
      if (v26 > 0x7F)
      {
        v4[1] = v26 | 0x80;
        v28 = v26 >> 7;
        if (v26 >> 14)
        {
          v27 = v4 + 3;
          do
          {
            *(v27 - 1) = v28 | 0x80;
            v29 = v28 >> 7;
            ++v27;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
          *(v27 - 1) = v29;
        }

        else
        {
          v4[2] = v28;
          v27 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v26;
        v27 = v4 + 2;
      }

      v4 = google::protobuf::EnumDescriptorProto::_InternalSerialize(v25, v27, a3);
    }
  }

  v31 = *(this + 26);
  if (v31)
  {
    for (m = 0; m != v31; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v33 = *(*(this + 14) + 8 * m + 8);
      *v4 = 42;
      v34 = *(v33 + 5);
      if (v34 > 0x7F)
      {
        v4[1] = v34 | 0x80;
        v36 = v34 >> 7;
        if (v34 >> 14)
        {
          v35 = v4 + 3;
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
          v4[2] = v36;
          v35 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v34;
        v35 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto_ExtensionRange::_InternalSerialize(v33, v35, a3, v4);
    }
  }

  v39 = *(this + 32);
  if (v39)
  {
    for (n = 0; n != v39; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v41 = *(*(this + 17) + 8 * n + 8);
      *v4 = 50;
      v42 = *(v41 + 5);
      if (v42 > 0x7F)
      {
        v4[1] = v42 | 0x80;
        v44 = v42 >> 7;
        if (v42 >> 14)
        {
          v43 = v4 + 3;
          do
          {
            *(v43 - 1) = v44 | 0x80;
            v45 = v44 >> 7;
            ++v43;
            v46 = v44 >> 14;
            v44 >>= 7;
          }

          while (v46);
          *(v43 - 1) = v45;
        }

        else
        {
          v4[2] = v44;
          v43 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v42;
        v43 = v4 + 2;
      }

      v4 = google::protobuf::FieldDescriptorProto::_InternalSerialize(v41, v43, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v47 = *(this + 28);
    *v4 = 58;
    v48 = *(v47 + 11);
    if (v48 > 0x7F)
    {
      v4[1] = v48 | 0x80;
      v50 = v48 >> 7;
      if (v48 >> 14)
      {
        v49 = v4 + 3;
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
        v4[2] = v50;
        v49 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v48;
      v49 = v4 + 2;
    }

    v4 = google::protobuf::MessageOptions::_InternalSerialize(v47, v49, a3);
  }

  v53 = *(this + 38);
  if (v53)
  {
    for (ii = 0; ii != v53; ++ii)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v55 = *(*(this + 20) + 8 * ii + 8);
      *v4 = 66;
      v56 = *(v55 + 5);
      if (v56 > 0x7F)
      {
        v4[1] = v56 | 0x80;
        v58 = v56 >> 7;
        if (v56 >> 14)
        {
          v57 = v4 + 3;
          do
          {
            *(v57 - 1) = v58 | 0x80;
            v59 = v58 >> 7;
            ++v57;
            v60 = v58 >> 14;
            v58 >>= 7;
          }

          while (v60);
          *(v57 - 1) = v59;
        }

        else
        {
          v4[2] = v58;
          v57 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v56;
        v57 = v4 + 2;
      }

      v4 = google::protobuf::OneofDescriptorProto::_InternalSerialize(v55, v57, a3);
    }
  }

  v61 = *(this + 44);
  if (v61)
  {
    for (jj = 0; jj != v61; ++jj)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v63 = *(*(this + 23) + 8 * jj + 8);
      *v4 = 74;
      v64 = *(v63 + 5);
      if (v64 > 0x7F)
      {
        v4[1] = v64 | 0x80;
        v66 = v64 >> 7;
        if (v64 >> 14)
        {
          v65 = v4 + 3;
          do
          {
            *(v65 - 1) = v66 | 0x80;
            v67 = v66 >> 7;
            ++v65;
            v68 = v66 >> 14;
            v66 >>= 7;
          }

          while (v68);
          *(v65 - 1) = v67;
        }

        else
        {
          v4[2] = v66;
          v65 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v64;
        v65 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto_ReservedRange::_InternalSerialize(v63, v65, a3, v4);
    }
  }

  v69 = *(this + 50);
  if (v69 >= 1)
  {
    v70 = 8;
    do
    {
      v4 = sub_1000D92B8(a3, 10, *(*(this + 26) + v70), v4);
      v70 += 8;
      --v69;
    }

    while (v69);
  }

  v71 = *(this + 1);
  if ((v71 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v71 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::DescriptorProto::ByteSizeLong(google::protobuf::DescriptorProto *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = google::protobuf::DescriptorProto::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::EnumDescriptorProto::ByteSizeLong(v20);
      v16 += &v21[(9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6];
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = google::protobuf::DescriptorProto_ExtensionRange::ByteSizeLong(v27);
      v23 += &v28[(9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6];
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 32);
  v30 = v23 + v29;
  v31 = *(this + 17);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v34);
      v30 += &v35[(9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6];
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 38);
  v37 = v30 + v36;
  v38 = *(this + 20);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = google::protobuf::OneofDescriptorProto::ByteSizeLong(v41);
      v37 += &v42[(9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6];
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(this + 44);
  v44 = v37 + v43;
  v45 = *(this + 23);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = google::protobuf::DescriptorProto_ReservedRange::ByteSizeLong(v48);
      v44 += &v49[(9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6];
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(this + 50);
  v51 = (v44 + v50);
  if (v50 >= 1)
  {
    v52 = (*(this + 26) + 8);
    do
    {
      v53 = *v52++;
      v54 = *(v53 + 23);
      v55 = *(v53 + 8);
      if ((v54 & 0x80u) == 0)
      {
        v55 = v54;
      }

      v51 = (v51 + v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6));
      --v50;
    }

    while (v50);
  }

  v56 = *(this + 4);
  if ((v56 & 3) != 0)
  {
    if (v56)
    {
      v57 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
      v58 = *(v57 + 23);
      v59 = *(v57 + 8);
      if ((v58 & 0x80u) == 0)
      {
        v59 = v58;
      }

      v51 = (v51 + v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v56 & 2) != 0)
    {
      v60 = google::protobuf::MessageOptions::ByteSizeLong(*(this + 28));
      v51 = &v60[((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1 + v51];
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v51, this + 5);
  }

  else
  {
    *(this + 5) = v51;
    return v51;
  }
}

void google::protobuf::DescriptorProto::MergeFrom(google::protobuf::DescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::DescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::DescriptorProto::MergeFrom(google::protobuf::DescriptorProto *this, const google::protobuf::DescriptorProto *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_1000EDBD4(this + 3, v8, v7 + 8, v6, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v6;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_1000ED994(this + 48, v13, v12 + 8, v11, (**(this + 8) - *(this + 14)));
    v14 = *(this + 14) + v11;
    *(this + 14) = v14;
    v15 = *(this + 8);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 20);
  if (v16)
  {
    v17 = *(a2 + 11);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_1000EDA54(this + 9, v18, v17 + 8, v16, **(this + 11) - *(this + 20));
    v19 = *(this + 20) + v16;
    *(this + 20) = v19;
    v20 = *(this + 11);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 26);
  if (v21)
  {
    v22 = *(a2 + 14);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96), *(a2 + 26));
    sub_1000EDD9C(this + 12, v23, v22 + 8, v21, **(this + 14) - *(this + 26));
    v24 = *(this + 26) + v21;
    *(this + 26) = v24;
    v25 = *(this + 14);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 32);
  if (v26)
  {
    v27 = *(a2 + 17);
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120), *(a2 + 32));
    sub_1000EDBD4(this + 15, v28, v27 + 8, v26, **(this + 17) - *(this + 32));
    v29 = *(this + 32) + v26;
    *(this + 32) = v29;
    v30 = *(this + 17);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 38);
  if (v31)
  {
    v32 = *(a2 + 20);
    v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144), *(a2 + 38));
    sub_1000EDE5C(this + 18, v33, v32 + 8, v31, **(this + 20) - *(this + 38));
    v34 = *(this + 38) + v31;
    *(this + 38) = v34;
    v35 = *(this + 20);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  v36 = *(a2 + 44);
  if (v36)
  {
    v37 = *(a2 + 23);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 168), *(a2 + 44));
    sub_1000EDF1C(this + 21, v38, v37 + 8, v36, **(this + 23) - *(this + 44));
    v39 = *(this + 44) + v36;
    *(this + 44) = v39;
    v40 = *(this + 23);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 50);
  if (v41)
  {
    v42 = *(a2 + 26);
    v43 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 192), *(a2 + 50));
    sub_1000ED8E8(this + 8, v43, (v42 + 8), v41, **(this + 26) - *(this + 50));
    v44 = *(this + 50) + v41;
    *(this + 50) = v44;
    v45 = *(this + 26);
    if (*v45 < v44)
    {
      *v45 = v44;
    }
  }

  v46 = *(a2 + 4);
  if ((v46 & 3) != 0)
  {
    if (v46)
    {
      v47 = *(a2 + 27);
      *(this + 4) |= 1u;
      v48 = *(this + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 27, v47 & 0xFFFFFFFFFFFFFFFELL, v48);
    }

    if ((v46 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v49 = *(this + 28);
      if (!v49)
      {
        v50 = *(this + 1);
        if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
        }

        v49 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MessageOptions>(v50);
        *(this + 28) = v49;
      }

      if (*(a2 + 28))
      {
        v51 = *(a2 + 28);
      }

      else
      {
        v51 = &google::protobuf::_MessageOptions_default_instance_;
      }

      google::protobuf::MessageOptions::MergeFrom(v49, v51);
    }
  }
}

void google::protobuf::MessageOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::MessageOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_1000EE060(this + 2, v8, v7 + 8, v6, *this[8] - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = this[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 10);
  if ((v11 & 0xF) != 0)
  {
    if (v11)
    {
      *(this + 72) = *(a2 + 72);
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(this + 73) = *(a2 + 73);
    if ((v11 & 4) == 0)
    {
LABEL_10:
      if ((v11 & 8) == 0)
      {
LABEL_12:
        *(this + 10) |= v11;
        return;
      }

LABEL_11:
      *(this + 75) = *(a2 + 75);
      goto LABEL_12;
    }

LABEL_16:
    *(this + 74) = *(a2 + 74);
    if ((v11 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void google::protobuf::DescriptorProto::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto::Clear(this, a2, a3);

    google::protobuf::DescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::DescriptorProto::IsInitialized(google::protobuf::DescriptorProto *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = google::protobuf::FieldDescriptorProto::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1000DA198(this + 48);
  if (result)
  {
    v6 = *(this + 20);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = google::protobuf::EnumDescriptorProto::IsInitialized(*(*(this + 11) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(this + 26);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = google::protobuf::DescriptorProto_ExtensionRange::IsInitialized(*(*(this + 14) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(this + 32);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = google::protobuf::FieldDescriptorProto::IsInitialized(*(*(this + 17) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(this + 38);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = google::protobuf::OneofDescriptorProto::IsInitialized(*(*(this + 20) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    v18 = *(this + 28);
    result = google::protobuf::internal::ExtensionSet::IsInitialized((v18 + 16));
    if (result)
    {
      result = sub_1000DD810(v18 + 48);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t google::protobuf::MessageOptions::IsInitialized(google::protobuf::MessageOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 48);
  }

  return result;
}

uint64_t google::protobuf::DescriptorProto::GetMetadata(google::protobuf::DescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[8];
  v2 = off_1001EA190[9];
  return result;
}

uint64_t google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CF870;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return a1;
}

void sub_1000DD1D8(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(google::protobuf::ExtensionRangeOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 5);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(this);

  operator delete();
}

void *google::protobuf::ExtensionRangeOptions::default_instance(google::protobuf::ExtensionRangeOptions *this)
{
  if (atomic_load_explicit(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_ExtensionRangeOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::ExtensionRangeOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = (v22 + 1);
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v6 = v6 + (*v5 << 7) - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, v6);
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
LABEL_6:
      if (v6 == 7994)
      {
        v10 = (v5 - 2);
        while (1)
        {
          v11 = (v10 + 2);
          v22 = (v10 + 2);
          v12 = *(a1 + 56);
          if (!v12)
          {
            break;
          }

          v17 = *(a1 + 48);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(a1 + 48) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_20;
          }

          if (v13 == *(a1 + 52))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v12 = v13 + 1;
          v14 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 40));
          v15 = *(a1 + 48);
          v16 = *(a1 + 56) + 8 * v15;
          *(a1 + 48) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v22;
LABEL_20:
          v10 = sub_100162948(a3, v14, v11);
          v22 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 16058)
          {
            goto LABEL_30;
          }
        }

        v13 = *(a1 + 52);
LABEL_16:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v13 + 1);
        v12 = *(a1 + 56);
        v13 = *v12;
        goto LABEL_17;
      }

      if (v6)
      {
        v7 = (v6 & 7) == 4;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        a3[10].i32[0] = v6 - 1;
        return v22;
      }

      v8 = v6;
      if (v6 >> 6 < 0x7D)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v19 = ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v19 = sub_100031428((a1 + 8), v6, v5);
          v5 = v22;
        }

        v9 = google::protobuf::internal::UnknownFieldParse(v8, v19, v5);
      }

      else
      {
        v9 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v6, v5, &google::protobuf::_ExtensionRangeOptions_default_instance_, (a1 + 8), a3);
      }

      v22 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (sub_1000313B0(a3, &v22, a3[11].i32[1]))
      {
        return v22;
      }
    }

    v5 = (v22 + 2);
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions::_InternalSerialize(google::protobuf::ExtensionRangeOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 12);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 7) + 8 * i + 8);
      *a2 = 16058;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[2] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 4;
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
          a2[3] = v11;
          v10 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v9;
        v10 = a2 + 3;
      }

      a2 = google::protobuf::UninterpretedOption::_InternalSerialize(v8, v10, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, a2, a3);
  v16 = *(this + 1);
  if (v16)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v15);
  }

  return result;
}

char *google::protobuf::ExtensionRangeOptions::ByteSizeLong(google::protobuf::ExtensionRangeOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 12);
  v4 = (v2 + 2 * v3);
  v5 = *(this + 7);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 16);
  }

  else
  {
    *(this + 16) = v4;
    return v4;
  }
}

void google::protobuf::ExtensionRangeOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::ExtensionRangeOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::ExtensionRangeOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::ExtensionRangeOptions::Clear(this);

    google::protobuf::ExtensionRangeOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::ExtensionRangeOptions::CopyFrom(google::protobuf::ExtensionRangeOptions *this, const google::protobuf::ExtensionRangeOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::ExtensionRangeOptions::Clear(this);

    google::protobuf::ExtensionRangeOptions::MergeFrom(this, a2);
  }
}

uint64_t sub_1000DD810(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((~*(v6 + 16) & 3) != 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

uint64_t google::protobuf::ExtensionRangeOptions::GetMetadata(google::protobuf::ExtensionRangeOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[10];
  v2 = off_1001EA190[11];
  return result;
}

uint64_t google::protobuf::FieldDescriptorProto::FieldDescriptorProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CF920;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(scc_info_FieldDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x100000001;
  return a1;
}

void google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(google::protobuf::FieldDescriptorProto *this)
{
  sub_1000DD968(this);
  sub_10002F4C4(this + 1);
}

{
  google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(this);

  operator delete();
}

google::protobuf::FieldOptions *sub_1000DD968(google::protobuf::FieldOptions *result)
{
  v1 = *(result + 3);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v2 = *(result + 4);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(result + 5);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = *(result + 6);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  v5 = *(result + 7);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  if (result != &google::protobuf::_FieldDescriptorProto_default_instance_)
  {
    result = *(result + 8);
    if (result)
    {
      google::protobuf::FieldOptions::~FieldOptions(result);

      operator delete();
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v4)
  {
    v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_25:
    v9 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v4 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v4 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v4 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v4 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_29:
  v10 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_33:
  v11 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    this = google::protobuf::FieldOptions::Clear(*(this + 8));
    goto LABEL_9;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v4 & 0xC0) != 0)
  {
    *(v3 + 72) = 0;
  }

  if ((v4 & 0x700) != 0)
  {
    *(v3 + 80) = 0;
    *(v3 + 84) = 0x100000001;
  }

  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1000315EC(v5, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions::Clear(google::protobuf::FieldOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  if ((*(this + 40) & 0x3F) != 0)
  {
    *(this + 20) = 0;
    *(this + 9) = 0;
  }

  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::FieldDescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v44 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v44, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v44 + 1);
      v9 = *v44;
      if ((*v44 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v10 - 128));
      v44 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_106;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 5)
      {
        if (v9 >> 3 <= 2)
        {
          if (v11 == 1)
          {
            if (v9 != 10)
            {
              goto LABEL_85;
            }

            *(a1 + 16) |= 1u;
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = (a1 + 24);
          }

          else
          {
            if (v11 != 2 || v9 != 18)
            {
              goto LABEL_85;
            }

            *(a1 + 16) |= 2u;
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = (a1 + 32);
          }

LABEL_76:
          v31 = google::protobuf::internal::ArenaStringPtr::Mutable(v23, v22);
          v14 = google::protobuf::internal::InlineGreedyStringParser(v31, v44, a3);
          goto LABEL_77;
        }

        if (v11 != 3)
        {
          if (v11 == 4)
          {
            if (v9 == 32)
            {
              v26 = (v8 + 1);
              v25 = *v8;
              if ((v25 & 0x8000000000000000) == 0)
              {
                goto LABEL_56;
              }

              v27 = *v26;
              v25 = (v27 << 7) + v25 - 128;
              if (v27 < 0)
              {
                v44 = google::protobuf::internal::VarintParseSlow64(v8, v25);
                if (!v44)
                {
                  goto LABEL_106;
                }
              }

              else
              {
                v26 = (v8 + 2);
LABEL_56:
                v44 = v26;
              }

              if ((v25 - 1) > 2)
              {
                sub_100156F58((a1 + 8));
              }

              else
              {
                *(a1 + 16) |= 0x200u;
                *(a1 + 84) = v25;
              }

              goto LABEL_78;
            }
          }

          else if (v11 == 5 && v9 == 40)
          {
            v16 = (v8 + 1);
            v15 = *v8;
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              v44 = google::protobuf::internal::VarintParseSlow64(v8, v15);
              if (!v44)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v16 = (v8 + 2);
LABEL_26:
              v44 = v16;
            }

            if ((v15 - 1) > 0x11)
            {
              sub_1001633D8((a1 + 8));
            }

            else
            {
              *(a1 + 16) |= 0x400u;
              *(a1 + 88) = v15;
            }

            goto LABEL_78;
          }

          goto LABEL_85;
        }

        if (v9 != 24)
        {
          goto LABEL_85;
        }

        v6 |= 0x40u;
        v29 = (v8 + 1);
        LODWORD(v28) = *v8;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_71;
        }

        v30 = *v29;
        v28 = v28 + (v30 << 7) - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = (v8 + 2);
LABEL_71:
          v44 = v29;
          *(a1 + 72) = v28;
          goto LABEL_78;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(v8, v28);
        v44 = v38;
        *(a1 + 72) = v39;
        if (!v38)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v9 >> 3 <= 8)
        {
          if (v11 == 6)
          {
            if (v9 == 50)
            {
              *(a1 + 16) |= 4u;
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = (a1 + 40);
              goto LABEL_76;
            }

            goto LABEL_85;
          }

          if (v11 == 7)
          {
            if (v9 == 58)
            {
              *(a1 + 16) |= 8u;
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = (a1 + 48);
              goto LABEL_76;
            }

            goto LABEL_85;
          }

          if (v11 != 8 || v9 != 66)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 0x20u;
          v12 = *(a1 + 64);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldOptions>(v13);
            *(a1 + 64) = v12;
            v8 = v44;
          }

          v14 = sub_100162A18(a3, v12, v8);
LABEL_77:
          v44 = v14;
          if (!v14)
          {
            goto LABEL_106;
          }

          goto LABEL_78;
        }

        if (v11 == 9)
        {
          if (v9 != 72)
          {
            goto LABEL_85;
          }

          v6 |= 0x80u;
          v33 = (v8 + 1);
          LODWORD(v32) = *v8;
          if ((v32 & 0x80) == 0)
          {
            goto LABEL_84;
          }

          v34 = *v33;
          v32 = v32 + (v34 << 7) - 128;
          if ((v34 & 0x80000000) == 0)
          {
            v33 = (v8 + 2);
LABEL_84:
            v44 = v33;
            *(a1 + 76) = v32;
            goto LABEL_78;
          }

          v42 = google::protobuf::internal::VarintParseSlow64(v8, v32);
          v44 = v42;
          *(a1 + 76) = v43;
          if (!v42)
          {
LABEL_106:
            v44 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v11 == 10)
          {
            if (v9 == 82)
            {
              *(a1 + 16) |= 0x10u;
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = (a1 + 56);
              goto LABEL_76;
            }

LABEL_85:
            if (v9)
            {
              v35 = (v9 & 7) == 4;
            }

            else
            {
              v35 = 1;
            }

            if (v35)
            {
              a3[10].i32[0] = v9 - 1;
              goto LABEL_2;
            }

            v36 = *(a1 + 8);
            if (v36)
            {
              v37 = ((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v37 = sub_100031428((a1 + 8), v5, v8);
              v8 = v44;
            }

            v14 = google::protobuf::internal::UnknownFieldParse(v9, v37, v8);
            goto LABEL_77;
          }

          if (v11 != 17 || v9 != 136)
          {
            goto LABEL_85;
          }

          v6 |= 0x100u;
          v19 = (v8 + 1);
          v18 = *v8;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_36;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v8 + 2);
LABEL_36:
            v44 = v19;
            *(a1 + 80) = v18 != 0;
            goto LABEL_78;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v8, v18);
          v44 = v40;
          *(a1 + 80) = v41 != 0;
          if (!v40)
          {
            goto LABEL_106;
          }
        }
      }

LABEL_78:
      if (sub_1000313B0(a3, &v44, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v44 + 2);
LABEL_6:
    v44 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v44;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldDescriptorProto::_InternalSerialize(google::protobuf::FieldDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v7 = *(this + 18);
      *v4 = 24;
      if (v7 > 0x7F)
      {
        v4[1] = v7 | 0x80;
        v8 = v7 >> 7;
        if (v7 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v8 | 0x80;
            v9 = v8 >> 7;
            ++v4;
            v10 = v8 >> 14;
            v8 >>= 7;
          }

          while (v10);
          *(v4 - 1) = v9;
          if ((v6 & 0x200) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v4[2] = v8;
          v4 += 3;
          if ((v6 & 0x200) != 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v4[1] = v7;
        v4 += 2;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_26;
        }
      }

LABEL_5:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_6;
      }

LABEL_37:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(this + 22);
      *v4 = 40;
      if (v15 > 0x7F)
      {
        v4[1] = v15 | 0x80;
        v16 = v15 >> 7;
        if (v15 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v4;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v4 - 1) = v17;
          if ((v6 & 4) != 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v4[2] = v16;
          v4 += 3;
          if ((v6 & 4) != 0)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v4[1] = v15;
        v4 += 2;
        if ((v6 & 4) != 0)
        {
          goto LABEL_48;
        }
      }

LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_100030384(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_5;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 21);
  *v4 = 32;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    if (v11 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v4;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_6:
  if ((v6 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_48:
  v4 = sub_100030384(a3, 6, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4 = sub_100030384(a3, 7, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_60:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 19);
    *v4 = 72;
    if (v25 > 0x7F)
    {
      v4[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v4;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v4 - 1) = v27;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 8);
  *v4 = 66;
  v20 = *(v19 + 11);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = v4 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v20;
    v21 = v4 + 2;
  }

  v4 = google::protobuf::FieldOptions::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_60;
  }

LABEL_10:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_71:
  v4 = sub_100030384(a3, 10, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_75;
  }

LABEL_72:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 80);
  *v4 = 392;
  v4[2] = v29;
  v4 += 3;
LABEL_75:
  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v30 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::FieldDescriptorProto::ByteSizeLong(google::protobuf::FieldDescriptorProto *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_37;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = (v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 = (v3 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v3 = (v3 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v3 = (v3 + v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_25:
  v16 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v3 = (v3 + v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v19 = google::protobuf::FieldOptions::ByteSizeLong(*(this + 8));
  v3 = &v19[v3 + 1 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6)];
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v20 = *(this + 18);
  if (v20 < 0)
  {
    v21 = 11;
  }

  else
  {
    v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 = (v3 + v21);
  if ((v2 & 0x80) != 0)
  {
LABEL_33:
    v22 = *(this + 19);
    if (v22 < 0)
    {
      v23 = 11;
    }

    else
    {
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 = (v3 + v23);
  }

LABEL_37:
  if ((v2 & 0x700) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 = (v3 + 3);
    }

    if ((v2 & 0x200) != 0)
    {
      v24 = *(this + 21);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 11;
      }

      v3 = (v3 + v26);
    }

    if ((v2 & 0x400) != 0)
    {
      v27 = *(this + 22);
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v27 >= 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 11;
      }

      v3 = (v3 + v29);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void google::protobuf::FieldDescriptorProto::MergeFrom(google::protobuf::FieldDescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FieldDescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FieldDescriptorProto::MergeFrom(google::protobuf::FieldDescriptorProto *this, const google::protobuf::FieldDescriptorProto *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      *(this + 4) |= 1u;
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, v7 & 0xFFFFFFFFFFFFFFFELL, v8);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 4);
    *(this + 4) |= 2u;
    v10 = *(this + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 4, v9 & 0xFFFFFFFFFFFFFFFELL, v10);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_27:
    v11 = *(a2 + 5);
    *(this + 4) |= 4u;
    v12 = *(this + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 5, v11 & 0xFFFFFFFFFFFFFFFELL, v12);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_30:
    v13 = *(a2 + 6);
    *(this + 4) |= 8u;
    v14 = *(this + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, v13 & 0xFFFFFFFFFFFFFFFELL, v14);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_36;
    }

LABEL_33:
    v15 = *(a2 + 7);
    *(this + 4) |= 0x10u;
    v16 = *(this + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 7, v15 & 0xFFFFFFFFFFFFFFFELL, v16);
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }

LABEL_36:
    *(this + 4) |= 0x20u;
    v17 = *(this + 8);
    if (!v17)
    {
      v18 = *(this + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldOptions>(v18);
      *(this + 8) = v17;
    }

    if (*(a2 + 8))
    {
      v19 = *(a2 + 8);
    }

    else
    {
      v19 = &google::protobuf::_FieldOptions_default_instance_;
    }

    google::protobuf::FieldOptions::MergeFrom(v17, v19);
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x80) == 0)
      {
LABEL_13:
        *(this + 4) |= v6;
        goto LABEL_14;
      }

LABEL_12:
      *(this + 19) = *(a2 + 19);
      goto LABEL_13;
    }

LABEL_44:
    *(this + 18) = *(a2 + 18);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v6 & 0x700) == 0)
  {
    return;
  }

  if ((v6 & 0x100) == 0)
  {
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_47:
    *(this + 21) = *(a2 + 21);
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(this + 80) = *(a2 + 80);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_47;
  }

LABEL_17:
  if ((v6 & 0x400) != 0)
  {
LABEL_18:
    *(this + 22) = *(a2 + 22);
  }

LABEL_19:
  *(this + 4) |= v6;
}

void google::protobuf::FieldOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::FieldOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_1000EE060(this + 2, v8, v7 + 8, v6, *this[8] - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = this[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 10);
  if ((v11 & 0x3F) != 0)
  {
    if (v11)
    {
      *(this + 18) = *(a2 + 18);
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(this + 76) = *(a2 + 76);
    if ((v11 & 4) == 0)
    {
LABEL_10:
      if ((v11 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(this + 77) = *(a2 + 77);
    if ((v11 & 8) == 0)
    {
LABEL_11:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(this + 78) = *(a2 + 78);
    if ((v11 & 0x10) == 0)
    {
LABEL_12:
      if ((v11 & 0x20) == 0)
      {
LABEL_14:
        *(this + 10) |= v11;
        return;
      }

LABEL_13:
      *(this + 20) = *(a2 + 20);
      goto LABEL_14;
    }

LABEL_20:
    *(this + 79) = *(a2 + 79);
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }
}

void google::protobuf::FieldDescriptorProto::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::FieldDescriptorProto::Clear(this, a2, a3);

    google::protobuf::FieldDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::FieldDescriptorProto::IsInitialized(google::protobuf::FieldDescriptorProto *this)
{
  if ((*(this + 16) & 0x20) == 0)
  {
    return 1;
  }

  v2 = *(this + 8);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_1000DD810(v2 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::FieldOptions::IsInitialized(google::protobuf::FieldOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 48);
  }

  return result;
}

uint64_t google::protobuf::FieldDescriptorProto::GetMetadata(google::protobuf::FieldDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[12];
  v2 = off_1001EA190[13];
  return result;
}

void *google::protobuf::OneofDescriptorProto::OneofDescriptorProto(void *a1, uint64_t a2)
{
  *a1 = off_1001CF9D0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(scc_info_OneofDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_OneofDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  a1[4] = 0;
  return a1;
}

void google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(google::protobuf::OneofDescriptorProto *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != google::protobuf::_OneofDescriptorProto_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      google::protobuf::OneofOptions::~OneofOptions(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::OneofDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 3) != 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      *v5 = 0;
      *(v5 + 23) = 0;
LABEL_5:
      if ((v4 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v4 & 2) != 0)
    {
LABEL_6:
      this = google::protobuf::OneofOptions::Clear(*(this + 4));
    }
  }

LABEL_7:
  v7 = *(v3 + 8);
  v6 = v3 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1000315EC(v6, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::OneofOptions::Clear(google::protobuf::OneofOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 12);
  if (v5 >= 1)
  {
    v6 = (*(this + 7) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 12) = 0;
  }

  v9 = *(this + 8);
  v8 = (this + 8);
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::OneofDescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].i32[1]; (sub_1000313B0(a3, &v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v7 = (v21 + 1);
    v8 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v21 + 2);
LABEL_6:
      v21 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v9 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofOptions>(v16);
          *(a1 + 32) = v15;
          v7 = v21;
        }

        v14 = sub_100162AE8(a3, v15, v7);
        goto LABEL_28;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v17);
      v14 = google::protobuf::internal::InlineGreedyStringParser(v18, v21, a3);
      goto LABEL_28;
    }

    if (v8)
    {
      v11 = (v8 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      a3[10].i32[0] = v8 - 1;
      return v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v21;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
LABEL_28:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
}

const google::protobuf::UnknownFieldSet *google::protobuf::OneofDescriptorProto::_InternalSerialize(google::protobuf::OneofDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 4);
    *v4 = 18;
    v8 = *(v7 + 16);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
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
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = google::protobuf::OneofOptions::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::OneofDescriptorProto::ByteSizeLong(google::protobuf::OneofDescriptorProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = google::protobuf::OneofOptions::ByteSizeLong(*(this + 4));
    v3 = &v7[v3 + 1 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6)];
    goto LABEL_10;
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = (v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void google::protobuf::OneofDescriptorProto::MergeFrom(google::protobuf::OneofDescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::OneofDescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::OneofDescriptorProto::MergeFrom(google::protobuf::OneofDescriptorProto *this, const google::protobuf::OneofDescriptorProto *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      *(this + 4) |= 1u;
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, v7 & 0xFFFFFFFFFFFFFFFELL, v8);
    }

    if ((v6 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v9 = *(this + 4);
      if (!v9)
      {
        v10 = *(this + 1);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofOptions>(v10);
        *(this + 4) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &google::protobuf::_OneofOptions_default_instance_;
      }

      google::protobuf::OneofOptions::MergeFrom(v9, v11);
    }
  }
}

void google::protobuf::OneofOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::OneofOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *(a2 + 7);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 5), v6);
    sub_1000EE060((this + 5), v8, v7 + 8, v6, *this[7] - *(this + 12));
    v9 = *(this + 12) + v6;
    *(this + 12) = v9;
    v10 = this[7];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }
}

void google::protobuf::OneofDescriptorProto::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::OneofDescriptorProto::Clear(this, a2, a3);

    google::protobuf::OneofDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::OneofDescriptorProto::IsInitialized(google::protobuf::OneofDescriptorProto *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(this + 4);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_1000DD810(v2 + 40);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::OneofOptions::IsInitialized(google::protobuf::OneofOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 40);
  }

  return result;
}

uint64_t google::protobuf::OneofDescriptorProto::GetMetadata(google::protobuf::OneofDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[14];
  v2 = off_1001EA190[15];
  return result;
}

void google::protobuf::EnumDescriptorProto_EnumReservedRange::~EnumDescriptorProto_EnumReservedRange(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::EnumDescriptorProto_EnumReservedRange::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v26, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        LODWORD(v15) = *v8;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = v15 + (v17 << 7) - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v26 = v16;
          *(a1 + 28) = v15;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v26 = v22;
        *(a1 + 28) = v23;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v26;
          }

          v26 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v26)
          {
LABEL_39:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v19 = (v8 + 1);
        LODWORD(v18) = *v8;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = v18 + (v20 << 7) - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_28:
          v26 = v19;
          *(a1 + 24) = v18;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_1000313B0(a3, &v26, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto_EnumReservedRange::_InternalSerialize(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 7);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::EnumDescriptorProto_EnumReservedRange::ByteSizeLong(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(this + 6);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(this + 7);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(void *this, const google::protobuf::EnumDescriptorProto_EnumReservedRange *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v4[6] = *(a2 + 6);
    }

    if ((v6 & 2) != 0)
    {
      v4[7] = *(a2 + 7);
    }

    v4[4] |= v6;
  }

  return this;
}

void google::protobuf::EnumDescriptorProto_EnumReservedRange::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(this, a2, a3);

    google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::EnumDescriptorProto_EnumReservedRange::GetMetadata(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[16];
  v2 = off_1001EA190[17];
  return result;
}

void *google::protobuf::EnumDescriptorProto::EnumDescriptorProto(void *a1, uint64_t a2)
{
  *a1 = off_1001CFB30;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = a2;
  a1[9] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[10] = 0;
  a1[11] = 0;
  if (atomic_load_explicit(scc_info_EnumDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[12] = &google::protobuf::internal::fixed_address_empty_string;
  a1[13] = 0;
  return a1;
}