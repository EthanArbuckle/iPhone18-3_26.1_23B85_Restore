void sub_29984CE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const std::string::value_type ***a4)
{
  v8 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)];
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        __p[0].__r_.__value_.__r.__words[0] = 0;
        result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(this, __p, 0x7FFFFFFFLL);
        if (!result)
        {
          return result;
        }

        v14 = *a3;
        if (*(a4 + 12) == 3)
        {
          (*(v14 + 448))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
        }

        else
        {
          (*(v14 + 192))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
        }
      }

      else if (v8 == 2)
      {
        __p[0].__r_.__value_.__r.__words[0] = 0;
        result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(this, __p, 0x7FFFFFFFFFFFFFFFLL);
        if (!result)
        {
          return result;
        }

        v12 = *a3;
        if (*(a4 + 12) == 3)
        {
          (*(v12 + 456))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
        }

        else
        {
          (*(v12 + 200))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
        }
      }
    }

    else if (v8 == 3)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(this, __p, 0xFFFFFFFFuLL);
      if (!result)
      {
        return result;
      }

      v17 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v17 + 464))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
      }

      else
      {
        (*(v17 + 208))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
      }
    }

    else if (v8 == 4)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(this, __p, 0xFFFFFFFFFFFFFFFFLL);
      if (!result)
      {
        return result;
      }

      v20 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v20 + 472))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
      }

      else
      {
        (*(v20 + 216))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
      }
    }

    else
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeDouble(this, __p);
      if (!result)
      {
        return result;
      }

      v10.n128_u64[0] = __p[0].__r_.__value_.__r.__words[0];
      v11 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v11 + 488))(a3, a2, a4, v10);
      }

      else
      {
        (*(v11 + 232))(a3, a2, a4, v10);
      }
    }

    return 1;
  }

  if (v8 <= 7)
  {
    if (v8 == 6)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeDouble(this, __p);
      if (!result)
      {
        return result;
      }

      v15.n128_u32[1] = HIDWORD(__p[0].__r_.__value_.__r.__words[0]);
      v15.n128_f32[0] = *&__p[0].__r_.__value_.__l.__data_;
      v16 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v16 + 480))(a3, a2, a4, v15);
      }

      else
      {
        (*(v16 + 224))(a3, a2, a4, v15);
      }

      return 1;
    }

    if (*(this + 10) == 3)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(this, __p, 1uLL);
      if (!result)
      {
        return result;
      }

      v13 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v13 + 496))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0] != 0);
      }

      else
      {
        (*(v13 + 240))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0] != 0);
      }

      return 1;
    }

    memset(__p, 0, 24);
    if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, __p))
    {
      goto LABEL_126;
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p[0].__r_.__value_.__l.__size_ == 4)
      {
        v24 = __p[0].__r_.__value_.__r.__words[0];
LABEL_99:
        if (LODWORD(v24->__r_.__value_.__l.__data_) == 1702195828)
        {
LABEL_101:
          v42 = *a3;
          if (*(a4 + 12) == 3)
          {
            v43 = (v42 + 496);
          }

          else
          {
            v43 = (v42 + 240);
          }

          v44 = 1;
LABEL_111:
          (*v43)(a3, a2, a4, v44);
          v46 = 1;
          goto LABEL_127;
        }
      }
    }

    else if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) == 4)
    {
      v24 = __p;
      goto LABEL_99;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "t"))
    {
      goto LABEL_101;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "false") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "f"))
    {
      v45 = *a3;
      if (*(a4 + 12) == 3)
      {
        v43 = (v45 + 496);
      }

      else
      {
        v43 = (v45 + 240);
      }

      v44 = 0;
      goto LABEL_111;
    }

    v47 = *a4;
    std::operator+<char>();
    v48 = std::string::append(&v58, ". Value: ");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = __p;
    }

    else
    {
      v50 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v59, v50, size);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v60, ".");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    v56 = *(this + 19);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

LABEL_126:
    v46 = 0;
LABEL_127:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    return (v46 & 1) != 0;
  }

  if (v8 != 8)
  {
    if (v8 != 9)
    {
      if (v8 == 10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
      }

      return 1;
    }

    memset(__p, 0, 24);
    v21 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeString(this, __p, a3, a4);
    if (v21)
    {
      v22 = *a3;
      if (*(a4 + 12) == 3)
      {
        v23 = (v22 + 504);
      }

      else
      {
        v23 = (v22 + 248);
      }

      *(a4 + 12);
      (*v23)(a3, a2, a4, __p);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v21)
      {
        return 1;
      }
    }

    else if (v21)
    {
      return 1;
    }

    return 0;
  }

  memset(__p, 0, 24);
  v18 = a4[10];
  if (*(this + 10) == 2)
  {
    if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, __p))
    {
      ValueByName = wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByName(v18, __p);
      goto LABEL_68;
    }

LABEL_91:
    v29 = 1;
    goto LABEL_92;
  }

  std::string::basic_string[abi:ne200100]<0>(&v61, "-");
  if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, &v61))
  {
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v25 = *(this + 10);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (v25 != 3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v61, "Expected integer or identifier.");
      v41 = *(this + 19);
      wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        v40 = v61.__r_.__value_.__r.__words[0];
LABEL_90:
        operator delete(v40);
        goto LABEL_91;
      }

      goto LABEL_91;
    }
  }

  v60.__r_.__value_.__r.__words[0] = 0;
  if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(this, &v60, 0x7FFFFFFFLL) & 1) == 0)
  {
    goto LABEL_91;
  }

  wireless_diagnostics::google::protobuf::SimpleItoa(v60.__r_.__value_.__l.__data_, v26, &v61);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  __p[0] = v61;
  ValueByName = wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByNumber(v18, v60.__r_.__value_.__l.__data_);
LABEL_68:
  if (!ValueByName)
  {
    std::operator+<char>();
    v30 = std::string::append(&v58, " for field ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = *(*a4 + 23);
    if (v32 >= 0)
    {
      v33 = *a4;
    }

    else
    {
      v33 = **a4;
    }

    if (v32 >= 0)
    {
      v34 = *(*a4 + 23);
    }

    else
    {
      v34 = (*a4)[1];
    }

    v35 = std::string::append(&v59, v33, v34);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&v60, ".");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = *(this + 19);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    v40 = v58.__r_.__value_.__r.__words[0];
    goto LABEL_90;
  }

  v27 = *a3;
  if (*(a4 + 12) == 3)
  {
    v28 = (v27 + 512);
  }

  else
  {
    v28 = (v27 + 256);
  }

  *(a4 + 12);
  (*v28)(a3, a2, a4, ValueByName);
  v29 = 0;
LABEL_92:
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v29)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  return 1;
}

void sub_29984D994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF6EB78, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipField(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this)
{
  memset(&v16, 0, sizeof(v16));
  std::string::basic_string[abi:ne200100]<0>(&__p, "[");
  v2 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v16))
    {
      goto LABEL_35;
    }

    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, ".");
      v4 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v4)
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &__p))
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_35;
      }

      std::string::append(&v16, ".");
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

      std::string::append(&v16, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "]");
    v7 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v16))
  {
    goto LABEL_35;
  }

LABEL_22:
  std::string::basic_string[abi:ne200100]<0>(&__p, ":");
  if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "{");
    if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, v13))
    {
      v8 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "<");
      v8 = !wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, v11);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_34;
    }

LABEL_40:
    if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(this))
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(this) & 1) == 0)
  {
LABEL_35:
    v9 = 0;
    goto LABEL_36;
  }

LABEL_41:
  std::string::basic_string[abi:ne200100]<0>(&__p, ";");
  if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, ",");
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, v13);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = 1;
LABEL_36:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_29984DE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *a1, wireless_diagnostics::google::protobuf::Message *a2, void *a3)
{
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, ">");
    if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(a1, v11))
    {
      v6 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "}");
      v7 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(a1, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = !v7;
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (!v6)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(a1, a3);
}

void sub_29984DFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this, uint64_t *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "-");
  v6 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(this, __p, a3 + v6);
  if (result)
  {
    v8 = __p[0];
    if (v6)
    {
      v8 = -__p[0];
    }

    *a2 = v8;
  }

  return result;
}

void sub_29984E07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this, unint64_t *a2, unint64_t a3)
{
  v4 = (this + 40);
  if (*(this + 10) == 3)
  {
    if (wireless_diagnostics::google::protobuf::io::Tokenizer::ParseInteger(this + 48, a3, a2))
    {
      wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v4);
      return 1;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Integer out of range.");
    v7 = *(this + 19);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Expected integer.");
    v6 = *(this + 19);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_29984E150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeDouble(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this, double *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "-");
  v6 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *(this + 10);
  switch(v7)
  {
    case 2:
      if (*(this + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
      }

      else
      {
        __p = *(this + 2);
      }

      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = __p.__r_.__value_.__r.__words[0];
      v12 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        v12 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
      }

      if (p_p != v12)
      {
        do
        {
          v13 = p_p->__r_.__value_.__s.__data_[0];
          if ((v13 - 65) <= 0x19)
          {
            p_p->__r_.__value_.__s.__data_[0] = v13 | 0x20;
          }

          p_p = (p_p + 1);
        }

        while (p_p != v12);
        v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v10 < 0)
      {
        if (__p.__r_.__value_.__l.__size_ == 3 && *__p.__r_.__value_.__l.__data_ == 28265 && *(__p.__r_.__value_.__r.__words[0] + 2) == 102)
        {
          goto LABEL_49;
        }

        if (__p.__r_.__value_.__l.__size_ == 8 && *__p.__r_.__value_.__l.__data_ == 0x7974696E69666E69)
        {
          goto LABEL_49;
        }

        if (__p.__r_.__value_.__l.__size_ != 3)
        {
          goto LABEL_44;
        }

        v15 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v10 != 3)
        {
          if (v10 == 8 && __p.__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
          {
LABEL_49:
            v21 = 0x7FF0000000000000;
            goto LABEL_51;
          }

LABEL_44:
          std::string::basic_string[abi:ne200100]<0>(&v22, "Expected double.");
          v20 = *(this + 19);
          wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
          if (v23 < 0)
          {
            operator delete(v22);
          }

          goto LABEL_46;
        }

        if (LOWORD(__p.__r_.__value_.__l.__data_) == 28265 && __p.__r_.__value_.__s.__data_[2] == 102)
        {
          goto LABEL_49;
        }

        v15 = &__p;
      }

      data_low = LOWORD(v15->__r_.__value_.__l.__data_);
      v18 = v15->__r_.__value_.__s.__data_[2];
      if (data_low == 24942 && v18 == 110)
      {
        v21 = 0x7FF8000000000000;
LABEL_51:
        *a2 = v21;
        wireless_diagnostics::google::protobuf::io::Tokenizer::Next((this + 40));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_53;
      }

      goto LABEL_44;
    case 3:
      __p.__r_.__value_.__r.__words[0] = 0;
      result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(this, &__p, 0xFFFFFFFFFFFFFFFFLL);
      if (!result)
      {
        return result;
      }

      *a2 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_53;
    case 4:
      *a2 = wireless_diagnostics::google::protobuf::io::Tokenizer::ParseFloat(this + 48, v4, v5);
      wireless_diagnostics::google::protobuf::io::Tokenizer::Next((this + 40));
LABEL_53:
      if (v6)
      {
        *a2 = -*a2;
      }

      return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Expected double.");
  v9 = *(this + 19);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18));
LABEL_46:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29984E438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeString(uint64_t a1, std::string *this, uint64_t a3, unsigned int *a4)
{
  v5 = (a1 + 40);
  v6 = *(a1 + 40);
  if (v6 == 5)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    while (*v5 == 5)
    {
      wireless_diagnostics::google::protobuf::io::Tokenizer::ParseStringAppend(a1 + 48, this, a3, a4);
      wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v5);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Expected string.");
    v8 = *(a1 + 76);
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72));
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  return v6 == 5;
}

void sub_29984E53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = a3;
  std::string::resize((a1 + 24), 2 * a3, 32);
  return a1;
}

void sub_29984E5B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *this)
{
  if ((*(this + 21) & 1) == 0 && *(this + 4) >= 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *this, const char *a2, int a3)
{
  if (a3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (a2[v6] == 10)
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Write(this, &a2[v7], v6++ - v7 + 1);
        *(this + 20) = 1;
        v7 = v6;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 != a3);
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Write(this, &a2[v7], a3 - v7);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Write(uint64_t this, const char *a2, int a3)
{
  if (a3)
  {
    v3 = this;
    if ((*(this + 21) & 1) == 0)
    {
      v4 = a3;
      if (*(this + 20) != 1 || ((*(this + 20) = 0, v6 = *(this + 47), v6 < 0) ? (v7 = *(this + 24), v6 = *(this + 32)) : (v7 = (this + 24)), this = wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Write(this, v7, v6), (*(v3 + 21) & 1) == 0))
      {
        v8 = *(v3 + 4);
        v9 = v3[1];
        if (v8 >= v4)
        {
LABEL_11:
          this = memcpy(v9, a2, v4);
          v3[1] += v4;
          *(v3 + 4) -= v4;
        }

        else
        {
          while (1)
          {
            memcpy(v9, a2, v8);
            v10 = *(v3 + 4);
            __dst = 0;
            this = (*(**v3 + 16))(*v3, &__dst, v3 + 2);
            *(v3 + 21) = this ^ 1;
            if ((this & 1) == 0)
            {
              break;
            }

            v4 -= v10;
            a2 += v10;
            v9 = __dst;
            v3[1] = __dst;
            v8 = *(v3 + 4);
            if (v4 <= v8)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  return this;
}

void std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree **>>(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *result, wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *v3;
      v3 = (v3 + 8);
      result = v4;
      if (v4)
      {
        wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::~ParseInfoTree(result);
        result = MEMORY[0x29C2A2070]();
      }
    }

    while (v3 != a2);
  }

  return result;
}

void *std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::piecewise_construct_t const&,std::tuple<wireless_diagnostics::google::protobuf::FieldDescriptor const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *>>>>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::piecewise_construct_t const&,std::tuple<wireless_diagnostics::google::protobuf::FieldDescriptor const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t wireless_diagnostics::google::protobuf::internal::StringSpaceUsedExcludingSelf(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 > a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) - 1);
  }

  else
  {
    return 0;
  }
}

BOOL wireless_diagnostics::google::protobuf::internal::ParseNamedEnum(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  ValueByName = wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByName(a1, a2);
  if (ValueByName)
  {
    *a3 = *(ValueByName + 16);
  }

  return ValueByName != 0;
}

uint64_t wireless_diagnostics::google::protobuf::internal::NameOfEnum(wireless_diagnostics::google::protobuf::internal *this, const wireless_diagnostics::google::protobuf::EnumDescriptor *a2)
{
  ValueByNumber = wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByNumber(this, a2);
  if (ValueByNumber)
  {
    return *ValueByNumber;
  }

  else
  {
    return MEMORY[0x29EDC9758];
  }
}

wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GeneratedMessageReflection(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Descriptor *a2, const wireless_diagnostics::google::protobuf::Message *a3, const int *a4, int a5, int a6, int a7, const wireless_diagnostics::google::protobuf::DescriptorPool *a8, wireless_diagnostics::google::protobuf::MessageFactory *a9, int a10)
{
  *this = &unk_2A1F91740;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 8) = a5;
  *(this + 9) = a6;
  *(this + 10) = a7;
  *(this + 11) = a10;
  if (!a8)
  {
    a8 = wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(this);
  }

  *(this + 6) = a8;
  *(this + 7) = a9;
  return this;
}

{
  return wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GeneratedMessageReflection(this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::~GeneratedMessageReflection(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this)
{
  wireless_diagnostics::google::protobuf::Reflection::~Reflection(this);

  JUMPOUT(0x29C2A2070);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SpaceUsed(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2)
{
  v4 = *(this + 11);
  v5 = (*(*this + 16))(this);
  v6 = wireless_diagnostics::google::protobuf::UnknownFieldSet::SpaceUsedExcludingSelf(v5) + v4;
  v7 = *(this + 10);
  if (v7 != -1)
  {
    v6 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelf((a2 + v7)) + v6;
  }

  v8 = *(this + 1);
  if (*(v8 + 44) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v8 + 48) + 120 * v9;
      v11 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + 44)];
      if (*(v10 + 48) != 3)
      {
        break;
      }

      if (v11 > 5)
      {
        if (v11 <= 7)
        {
          if (v11 != 6)
          {
            if (*(v10 + 52))
            {
              v20 = *(v10 + 64);
              if (v20)
              {
                v21 = (v20 + 112);
              }

              else
              {
                v21 = (*(v10 + 32) + 128);
              }
            }

            else
            {
              v21 = (*(v10 + 56) + 48);
            }

            v35 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v21) >> 3)) >> 30));
            if (*v35)
            {
              v29 = *(v35 + 3);
              goto LABEL_76;
            }

            goto LABEL_75;
          }
        }

        else if (v11 != 8)
        {
          if (v11 == 9)
          {
            if (*(v10 + 52))
            {
              v26 = *(v10 + 64);
              if (v26)
              {
                v27 = (v26 + 112);
              }

              else
              {
                v27 = (*(v10 + 32) + 128);
              }
            }

            else
            {
              v27 = (*(v10 + 56) + 48);
            }

            v39 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v27) >> 3)) >> 30));
            v40 = *v39;
            if (*v39)
            {
              v41 = 8 * *(v39 + 4);
            }

            else
            {
              v41 = 0;
            }

            v42 = *(v39 + 3);
            if (v42 >= 1)
            {
              do
              {
                v43 = *v40;
                if (*(*v40 + 23) < 0 && (*v43 >= v43 ? (v44 = *v43 > v43 + 24) : (v44 = 1), v44))
                {
                  v45 = *(v43 + 16) + 23;
                }

                else
                {
                  v45 = 24;
                }

                v41 += v45;
                ++v40;
                --v42;
              }

              while (v42);
            }

            v6 = (v41 + v6);
          }

          else if (v11 == 10)
          {
            if (*(v10 + 52))
            {
              v14 = *(v10 + 64);
              if (v14)
              {
                v15 = (v14 + 112);
              }

              else
              {
                v15 = (*(v10 + 32) + 128);
              }
            }

            else
            {
              v15 = (*(v10 + 56) + 48);
            }

            v36 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v15) >> 3)) >> 30));
            if (*v36)
            {
              v37 = 8 * *(v36 + 4);
            }

            else
            {
              v37 = 0;
            }

            if (*(v36 + 3) >= 1)
            {
              v38 = 0;
              do
              {
                v37 += (*(**(*v36 + 8 * v38) + 128))(*(*v36 + 8 * v38));
                ++v38;
              }

              while (v38 < *(v36 + 3));
            }

            v6 = (v37 + v6);
          }

          goto LABEL_77;
        }

        goto LABEL_36;
      }

      if (v11 > 2)
      {
        if (v11 != 3)
        {
LABEL_29:
          if (*(v10 + 52))
          {
            v18 = *(v10 + 64);
            if (v18)
            {
              v19 = (v18 + 112);
            }

            else
            {
              v19 = (*(v10 + 32) + 128);
            }
          }

          else
          {
            v19 = (*(v10 + 56) + 48);
          }

          v33 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v19) >> 3)) >> 30));
          if (*v33)
          {
            v29 = 8 * *(v33 + 3);
            goto LABEL_76;
          }

          goto LABEL_75;
        }

LABEL_36:
        if (*(v10 + 52))
        {
          v22 = *(v10 + 64);
          if (v22)
          {
            v23 = (v22 + 112);
          }

          else
          {
            v23 = (*(v10 + 32) + 128);
          }
        }

        else
        {
          v23 = (*(v10 + 56) + 48);
        }

        v28 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v23) >> 3)) >> 30));
        if (*v28)
        {
          v29 = 4 * *(v28 + 3);
LABEL_76:
          v6 = (v29 + v6);
          goto LABEL_77;
        }

LABEL_75:
        v29 = 0;
        goto LABEL_76;
      }

      if (v11 == 1)
      {
        goto LABEL_36;
      }

      if (v11 == 2)
      {
        goto LABEL_29;
      }

LABEL_77:
      ++v9;
      v8 = *(this + 1);
      if (v9 >= *(v8 + 44))
      {
        return v6;
      }
    }

    if (v11 == 10)
    {
      if (*(this + 2) != a2)
      {
        if (*(v10 + 52))
        {
          v16 = *(v10 + 64);
          v17 = (v16 ? v16 + 112 : *(v10 + 32) + 128);
        }

        else
        {
          v17 = (*(v10 + 56) + 48);
        }

        v34 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((v10 - *v17) >> 3)) >> 30)));
        if (v34)
        {
          v6 = (*(*v34 + 128))(v34) + v6;
        }
      }

      goto LABEL_77;
    }

    if (v11 != 9)
    {
      goto LABEL_77;
    }

    if (*(v10 + 52))
    {
      v12 = *(v10 + 64);
      if (v12)
      {
        v13 = (v12 + 112);
        if ((*(v10 + 52) & 1) == 0)
        {
          goto LABEL_52;
        }

LABEL_41:
        v24 = *(v10 + 64);
        if (v24)
        {
          v25 = (v24 + 112);
        }

        else
        {
          v25 = (*(v10 + 32) + 128);
        }

LABEL_54:
        v30 = *(this + 3);
        v31 = *(a2 + *(v30 + ((0xEEEEEEEF00000000 * ((v10 - *v13) >> 3)) >> 30)));
        if (v31 != *(*(this + 2) + *(v30 + ((0xEEEEEEEF00000000 * ((v10 - *v25) >> 3)) >> 30))))
        {
          if (*(v31 + 23) < 0 && (*v31 >= v31 ? (v32 = *v31 > v31 + 24) : (v32 = 1), v32))
          {
            v29 = *(v31 + 16) + 23;
          }

          else
          {
            v29 = 24;
          }

          goto LABEL_76;
        }

        goto LABEL_77;
      }

      v13 = (*(v10 + 32) + 128);
      if (*(v10 + 52))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = (*(v10 + 56) + 48);
    }

LABEL_52:
    v25 = (*(v10 + 56) + 48);
    goto LABEL_54;
  }

  return v6;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::Swap(uint64_t *this, wireless_diagnostics::google::protobuf::Message *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  if (a2 != a3)
  {
    v5 = this;
    if ((*(*a2 + 144))(a2) != this)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      v6 = *((*(*a2 + 152))(a2) + 8);
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      v7 = *(*(v5 + 8) + 8);
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v64);
    }

    if ((*(*a3 + 144))(a3) != v5)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      v8 = *((*(*a3 + 152))(a3) + 8);
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      v9 = *(*(v5 + 8) + 8);
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v64);
    }

    v10 = *(v5 + 8);
    v11 = *(v10 + 44);
    if (v11 >= 1)
    {
      v12 = *(v5 + 32);
      v13 = (a2 + v12);
      v14 = (a3 + v12);
      v15 = (v11 + 31) >> 5;
      do
      {
        v16 = *v13;
        *v13++ = *v14;
        *v14++ = v16;
        --v15;
      }

      while (v15);
      if (*(v10 + 44) >= 1)
      {
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v19 = *(v10 + 48);
          v20 = v19 + v17;
          v21 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v19 + v17 + 44)];
          if (*(v19 + v17 + 48) == 3)
          {
            if (v21 > 5)
            {
              if (v21 <= 8)
              {
                goto LABEL_31;
              }

              if ((v21 - 9) < 2)
              {
                v34 = v19 + v17;
                if (*(v19 + v17 + 52) == 1)
                {
                  v35 = *(v34 + 64);
                  if (v35)
                  {
                    v36 = (v35 + 112);
                  }

                  else
                  {
                    v36 = (*(v19 + v17 + 32) + 128);
                  }
                }

                else
                {
                  v36 = (*(v34 + 56) + 48);
                }

                v54 = *(*(v5 + 24) + ((0xEEEEEEEF00000000 * ((v17 + v19 - *v36) >> 3)) >> 30));
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
                goto LABEL_76;
              }
            }

            else if (v21 > 2 || v21 == 1 || v21 == 2)
            {
LABEL_31:
              v25 = v19 + v17;
              if (*(v19 + v17 + 52) == 1)
              {
                v26 = *(v25 + 64);
                if (v26)
                {
                  v27 = (v26 + 112);
                }

                else
                {
                  v27 = (*(v19 + v17 + 32) + 128);
                }
              }

              else
              {
                v27 = (*(v25 + 56) + 48);
              }

              if (a2 != a3)
              {
                v40 = *(*(v5 + 24) + ((0xEEEEEEEF00000000 * ((v17 + v19 - *v27) >> 3)) >> 30));
                v41 = (a2 + v40);
                v42 = (a3 + v40);
                v43 = *v41;
                *v41 = *v42;
                v44 = v42[1];
                *v42 = v43;
                v45 = v41[1];
                v41[1] = v44;
                v42[1] = v45;
              }

              goto LABEL_76;
            }

            goto LABEL_60;
          }

          if (v21 > 5)
          {
            break;
          }

          if (v21 <= 2)
          {
            if (v21 == 1)
            {
              goto LABEL_40;
            }

            if (v21 == 2)
            {
              goto LABEL_37;
            }

LABEL_60:
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            v49 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 44)];
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v64);
            goto LABEL_76;
          }

          if (v21 == 3)
          {
            goto LABEL_40;
          }

          if (v21 == 4)
          {
            goto LABEL_37;
          }

          v22 = v19 + v17;
          if (*(v19 + v17 + 52) == 1)
          {
            v23 = *(v22 + 64);
            if (v23)
            {
              v24 = (v23 + 112);
            }

            else
            {
              v24 = (*(v19 + v17 + 32) + 128);
            }
          }

          else
          {
            v24 = (*(v22 + 56) + 48);
          }

          v59 = *(*(v5 + 24) + ((0xEEEEEEEF00000000 * ((v17 + v19 - *v24) >> 3)) >> 30));
          v60 = *(a2 + v59);
          *(a2 + v59) = *(a3 + v59);
          *(a3 + v59) = v60;
LABEL_76:
          ++v18;
          v10 = *(v5 + 8);
          v17 += 120;
          if (v18 >= *(v10 + 44))
          {
            goto LABEL_77;
          }
        }

        if (v21 <= 7)
        {
          if (v21 == 6)
          {
            v46 = v19 + v17;
            if (*(v19 + v17 + 52) == 1)
            {
              v47 = *(v46 + 64);
              if (v47)
              {
                v48 = (v47 + 112);
              }

              else
              {
                v48 = (*(v19 + v17 + 32) + 128);
              }
            }

            else
            {
              v48 = (*(v46 + 56) + 48);
            }

            v57 = *(*(v5 + 24) + ((0xEEEEEEEF00000000 * ((v17 + v19 - *v48) >> 3)) >> 30));
            v58 = *(a2 + v57);
            *(a2 + v57) = *(a3 + v57);
            *(a3 + v57) = v58;
          }

          else
          {
            v37 = v19 + v17;
            if (*(v19 + v17 + 52) == 1)
            {
              v38 = *(v37 + 64);
              if (v38)
              {
                v39 = (v38 + 112);
              }

              else
              {
                v39 = (*(v19 + v17 + 32) + 128);
              }
            }

            else
            {
              v39 = (*(v37 + 56) + 48);
            }

            v55 = *(*(v5 + 24) + ((0xEEEEEEEF00000000 * ((v17 + v19 - *v39) >> 3)) >> 30));
            v56 = *(a2 + v55);
            *(a2 + v55) = *(a3 + v55);
            *(a3 + v55) = v56;
          }

          goto LABEL_76;
        }

        if (v21 == 8)
        {
LABEL_40:
          v31 = v19 + v17;
          if (*(v19 + v17 + 52) == 1)
          {
            v32 = *(v31 + 64);
            if (v32)
            {
              v33 = (v32 + 112);
            }

            else
            {
              v33 = (*(v19 + v17 + 32) + 128);
            }
          }

          else
          {
            v33 = (*(v31 + 56) + 48);
          }

          v52 = *(*(v5 + 24) + ((0xEEEEEEEF00000000 * ((v17 + v19 - *v33) >> 3)) >> 30));
          v53 = *(a2 + v52);
          *(a2 + v52) = *(a3 + v52);
          *(a3 + v52) = v53;
          goto LABEL_76;
        }

        if (v21 == 9 || v21 == 10)
        {
LABEL_37:
          v28 = v19 + v17;
          if (*(v19 + v17 + 52) == 1)
          {
            v29 = *(v28 + 64);
            if (v29)
            {
              v30 = (v29 + 112);
            }

            else
            {
              v30 = (*(v19 + v17 + 32) + 128);
            }
          }

          else
          {
            v30 = (*(v28 + 56) + 48);
          }

          v50 = *(*(v5 + 24) + ((0xEEEEEEEF00000000 * ((v17 + v19 - *v30) >> 3)) >> 30));
          v51 = *(a2 + v50);
          *(a2 + v50) = *(a3 + v50);
          *(a3 + v50) = v51;
          goto LABEL_76;
        }

        goto LABEL_60;
      }
    }

LABEL_77:
    v61 = *(v5 + 40);
    if (v61 != -1)
    {
      MEMORY[0x29C2A1980](a2 + v61, a3 + v61);
    }

    v62 = (*(*v5 + 24))(v5, a2);
    this = (*(*v5 + 24))(v5, a3);
    v63 = *v62;
    *v62 = *this;
    *this = v63;
  }

  return this;
}

void sub_29984FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::HasField(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v9 = *(a3 + 10);
    v10 = a2 + *(this + 10);

    return MEMORY[0x2A1C71750](v10, v9);
  }

  else
  {
    v11 = -286331153 * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    return (*(a2 + 4 * (v11 / 32) + *(this + 8)) >> v11) & 1;
  }
}

void wireless_diagnostics::google::protobuf::internal::anonymous namespace::ReportReflectionUsageError(wireless_diagnostics::google::protobuf::internal::_anonymous_namespace_ *this, const wireless_diagnostics::google::protobuf::Descriptor *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, const char *a4, const char *a5)
{
  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v7 = *(this + 1);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v8 = *(a2 + 1);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
}

void sub_29984FC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::FieldSize(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (*(a3 + 52) != 1)
  {
    v11 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)];
    if (v11 > 5)
    {
      if (v11 > 8 && (v11 - 9) >= 2)
      {
        goto LABEL_16;
      }
    }

    else if (v11 <= 2 && v11 != 1 && v11 != 2)
    {
LABEL_16:
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      return 0;
    }

    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)) + 8);
  }

  v9 = *(a3 + 10);
  v10 = a2 + *(this + 10);

  return MEMORY[0x2A1C716E8](v10, v9);
}

void sub_29984FDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::ClearField(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const std::string **a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (a3[7] != v8)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v9 = *(a3 + 10);
    v10 = a2 + *(this + 10);

    MEMORY[0x2A1C71480](v10, v9);
    return;
  }

  if (*(a3 + 12) != 3)
  {
    v12 = a2 + *(this + 8);
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a3[7][2].__r_.__value_.__r.__words[0]) >> 3);
    v14 = v13 + 31;
    if ((v13 & 0x80000000) == 0)
    {
      v14 = -286331153 * ((a3 - a3[7][2].__r_.__value_.__r.__words[0]) >> 3);
    }

    v15 = *&v12[4 * (v14 >> 5)];
    if (((1 << v13) & v15) == 0)
    {
      return;
    }

    *&v12[4 * (v14 >> 5)] = v15 & ~(1 << v13);
    v16 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)];
    if (v16 > 5)
    {
      if (v16 <= 7)
      {
        if (v16 == 6)
        {
          *(a2 + *(*(this + 3) + 4 * v13)) = *(a3 + 28);
        }

        else
        {
          *(a2 + *(*(this + 3) + 4 * v13)) = *(a3 + 112);
        }

        return;
      }

      if (v16 != 8)
      {
        if (v16 == 9)
        {
          v21 = *(*(this + 3) + 4 * v13);
          v22 = *(a2 + v21);
          if (v22 != *(*(this + 2) + v21))
          {
            if (*(a3 + 104) == 1)
            {
              v23 = a3[14];

              std::string::operator=(v22, v23);
            }

            else if (*(v22 + 23) < 0)
            {
              **v22 = 0;
              *(v22 + 8) = 0;
            }

            else
            {
              *v22 = 0;
              *(v22 + 23) = 0;
            }
          }
        }

        else if (v16 == 10)
        {
          v18 = *(**(a2 + *(*(this + 3) + 4 * v13)) + 32);

          v18();
        }

        return;
      }

      v19 = a3[14]->__r_.__value_.__r.__words[2];
    }

    else
    {
      if (v16 <= 2)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            return;
          }

LABEL_38:
          *(a2 + *(*(this + 3) + 4 * v13)) = a3[14];
          return;
        }
      }

      else if (v16 != 3)
      {
        if (v16 != 4)
        {
          *(a2 + *(*(this + 3) + 4 * v13)) = a3[14];
          return;
        }

        goto LABEL_38;
      }

      v19 = *(a3 + 28);
    }

    *(a2 + *(*(this + 3) + 4 * v13)) = v19;
    return;
  }

  v11 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)];
  if (v11 <= 5)
  {
    if (v11 <= 2 && v11 != 1 && v11 != 2)
    {
      return;
    }

LABEL_34:
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - a3[7][2].__r_.__value_.__r.__words[0]) >> 3)) >> 30)) + 8) = 0;
    return;
  }

  if (v11 <= 8)
  {
    goto LABEL_34;
  }

  if (v11 == 9)
  {
    v20 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - a3[7][2].__r_.__value_.__r.__words[0]) >> 3)) >> 30));

    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v20);
  }

  else if (v11 == 10)
  {
    v17 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - a3[7][2].__r_.__value_.__r.__words[0]) >> 3)) >> 30));

    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(v17);
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::RemoveLast(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v9 = *(a3 + 10);
    v10 = a2 + *(this + 10);

    MEMORY[0x2A1C71460](v10, v9);
    return;
  }

  v11 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)];
  if (v11 <= 5)
  {
    if (v11 <= 2 && v11 != 1 && v11 != 2)
    {
      return;
    }

LABEL_20:
    v16 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    --*(v16 + 2);
    return;
  }

  if (v11 <= 8)
  {
    goto LABEL_20;
  }

  if (v11 == 9)
  {
    v17 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v18 = *v17;
    v19 = *(v17 + 2) - 1;
    *(v17 + 2) = v19;
    v20 = *(v18 + 8 * v19);
    if (*(v20 + 23) < 0)
    {
      **v20 = 0;
      *(v20 + 8) = 0;
    }

    else
    {
      *v20 = 0;
      *(v20 + 23) = 0;
    }
  }

  else if (v11 == 10)
  {
    v12 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v13 = *(v12 + 2) - 1;
    v14 = *(*v12 + 8 * v13);
    *(v12 + 2) = v13;
    v15 = *(*v14 + 32);

    v15();
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::ReleaseLast(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 10)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v9 = *(a3 + 10);
    v10 = a2 + *(this + 10);

    return MEMORY[0x2A1C71468](v10, v9);
  }

  else
  {
    v11 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v12 = *v11;
    v13 = *(v11 + 3);
    v14 = *(v11 + 2);
    result = *(*v11 + 8 * (v14 - 1));
    *(v11 + 2) = v14 - 1;
    *(v11 + 3) = v13 - 1;
    if (v14 < v13)
    {
      *(v12 + 8 * (v14 - 1)) = *(v12 + 8 * (v13 - 1));
    }
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::anonymous namespace::ReportReflectionUsageTypeError(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v7 = *(a1 + 8);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v8 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
}

void sub_299850664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SwapElements(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (*(a3 + 52) != 1)
  {
    v13 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)];
    if (v13 > 5)
    {
      if (v13 > 8)
      {
        if ((v13 - 9) >= 2)
        {
          return;
        }

        goto LABEL_23;
      }

      if (v13 == 6)
      {
        v20 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
        v21 = *(v20 + 4 * a4);
        *(v20 + 4 * a4) = *(v20 + 4 * a5);
        *(v20 + 4 * a5) = v21;
        return;
      }

      if (v13 == 7)
      {
        v22 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
        v23 = *(v22 + a4);
        *(v22 + a4) = *(v22 + a5);
        *(v22 + a5) = v23;
        return;
      }
    }

    else if (v13 <= 2)
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          return;
        }

        goto LABEL_23;
      }
    }

    else if (v13 != 3)
    {
      if (v13 != 4)
      {
        v14 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
        v15 = *(v14 + 8 * a4);
        *(v14 + 8 * a4) = *(v14 + 8 * a5);
        *(v14 + 8 * a5) = v15;
        return;
      }

LABEL_23:
      v18 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
      v19 = *(v18 + 8 * a4);
      *(v18 + 8 * a4) = *(v18 + 8 * a5);
      *(v18 + 8 * a5) = v19;
      return;
    }

    v16 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
    v17 = *(v16 + 4 * a4);
    *(v16 + 4 * a4) = *(v16 + 4 * a5);
    *(v16 + 4 * a5) = v17;
    return;
  }

  v11 = *(a3 + 10);
  v12 = a2 + *(this + 10);

  MEMORY[0x2A1C71470](v12, v11, a4, a5);
}

unint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::ListFields(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (*(result + 16) != a2)
  {
    v19[7] = v3;
    v19[8] = v4;
    v7 = result;
    v8 = *(result + 8);
    if (*(v8 + 44) >= 1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(v8 + 48);
        v19[0] = v11 + v9;
        if (*(v11 + v9 + 48) == 3)
        {
          if ((*(*v7 + 48))(v7, a2) <= 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (*(v11 + v9 + 52) == 1)
          {
            v12 = *(v11 + v9 + 64);
            if (v12)
            {
              v13 = (v12 + 112);
            }

            else
            {
              v13 = (*(v11 + v9 + 32) + 128);
            }
          }

          else
          {
            v13 = (*(v11 + v9 + 56) + 48);
          }

          v14 = -286331153 * ((v9 + v11 - *v13) >> 3);
          if (((*(a2 + *(v7 + 32) + 4 * (v14 / 32)) >> v14) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        std::vector<wireless_diagnostics::google::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](a3, v19);
LABEL_14:
        ++v10;
        v8 = *(v7 + 8);
        v9 += 120;
      }

      while (v10 < *(v8 + 44));
    }

    v15 = *(v7 + 40);
    if (v15 != -1)
    {
      wireless_diagnostics::google::protobuf::internal::ExtensionSet::AppendToList((a2 + v15), v8, *(v7 + 48), a3);
    }

    v16 = *(a3 + 8);
    v17 = 126 - 2 * __clz((v16 - *a3) >> 3);
    if (v16 == *a3)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }
  }

  return result;
}

void std::vector<wireless_diagnostics::google::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wireless_diagnostics::google::protobuf::FieldDescriptor const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 1)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }

  v9 = *(a3 + 10);
  v10 = *(a3 + 28);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71778](v11, v9, v10);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 1)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C71538](v12, v10, v11, a4, a3);
  }

  else
  {
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v13 / 32) + *(this + 8)) |= 1 << v13;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 1)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 4 * a4);
  }

  v10 = *(a3 + 10);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71710](v11, v10, a4);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 1)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C714A0](v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 4 * a4) = a5;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 1)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = *(*(a3 + 12) + 44);
    v13 = a2 + *(this + 10);

    MEMORY[0x2A1C71520](v13, v10, v11, v12, a4, a3);
  }

  else
  {
    v14 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v15 = *(v14 + 2);
    if (v15 == *(v14 + 3))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v14, v15 + 1);
      v15 = *(v14 + 2);
    }

    v16 = *v14;
    *(v14 + 2) = v15 + 1;
    *(v16 + 4 * v15) = a4;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 2)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }

  v9 = *(a3 + 10);
  v10 = *(a3 + 14);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71780](v11, v9, v10);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 2)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C71540](v12, v10, v11, a4, a3);
  }

  else
  {
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v13 / 32) + *(this + 8)) |= 1 << v13;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 2)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v10 = *(a3 + 10);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71718](v11, v10, a4);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 2)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C714A8](v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4) = a5;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 2)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = *(*(a3 + 12) + 44);
    v13 = a2 + *(this + 10);

    MEMORY[0x2A1C71528](v13, v10, v11, v12, a4, a3);
  }

  else
  {
    v14 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v15 = *(v14 + 2);
    if (v15 == *(v14 + 3))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(v14, v15 + 1);
      v15 = *(v14 + 2);
    }

    v16 = *v14;
    *(v14 + 2) = v15 + 1;
    *(v16 + 8 * v15) = a4;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetUInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 3)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }

  v9 = *(a3 + 10);
  v10 = *(a3 + 28);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C717B0](v11, v9, v10);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetUInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 3)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C71578](v12, v10, v11, a4, a3);
  }

  else
  {
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v13 / 32) + *(this + 8)) |= 1 << v13;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedUInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 3)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 4 * a4);
  }

  v10 = *(a3 + 10);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71730](v11, v10, a4);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedUInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 3)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C714C0](v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 4 * a4) = a5;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddUInt32(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 3)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = *(*(a3 + 12) + 44);
    v13 = a2 + *(this + 10);

    MEMORY[0x2A1C71558](v13, v10, v11, v12, a4, a3);
  }

  else
  {
    v14 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v15 = *(v14 + 2);
    if (v15 == *(v14 + 3))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v14, v15 + 1);
      v15 = *(v14 + 2);
    }

    v16 = *v14;
    *(v14 + 2) = v15 + 1;
    *(v16 + 4 * v15) = a4;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetUInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 4)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }

  v9 = *(a3 + 10);
  v10 = *(a3 + 14);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C717B8](v11, v9, v10);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetUInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 4)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C71580](v12, v10, v11, a4, a3);
  }

  else
  {
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) = a4;
    *(a2 + 4 * (v13 / 32) + *(this + 8)) |= 1 << v13;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedUInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 4)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v10 = *(a3 + 10);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71738](v11, v10, a4);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedUInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 4)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C714C8](v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4) = a5;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddUInt64(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 4)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = *(*(a3 + 12) + 44);
    v13 = a2 + *(this + 10);

    MEMORY[0x2A1C71560](v13, v10, v11, v12, a4, a3);
  }

  else
  {
    v14 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v15 = *(v14 + 2);
    if (v15 == *(v14 + 3))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(v14, v15 + 1);
      v15 = *(v14 + 2);
    }

    v16 = *v14;
    *(v14 + 2) = v15 + 1;
    *(v16 + 8 * v15) = a4;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetFloat(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, __n128 a4, uint64_t a5, const char *a6)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 6)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    a4.n128_u32[0] = *(a3 + 28);
    v11 = a2 + *(this + 10);

    MEMORY[0x2A1C71770](v11, v10, a4);
  }

  else
  {
    v12 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetFloat(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, __n128 a4, uint64_t a5, const char *a6)
{
  v6 = a4.n128_u32[0];
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 6)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = *(a3 + 44);
    v13 = a2 + *(this + 10);
    a4.n128_u32[0] = v6;

    MEMORY[0x2A1C71530](v13, v11, v12, a3, a4);
  }

  else
  {
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) = v6;
    *(a2 + 4 * (v14 / 32) + *(this + 8)) |= 1 << v14;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedFloat(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 6)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = a2 + *(this + 10);

    MEMORY[0x2A1C71708](v11, v10, a4);
  }

  else
  {
    v12 = *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 4 * a4);
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedFloat(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, __n128 a5, const char *a6)
{
  v6 = a5.n128_u32[0];
  v11 = *(this + 1);
  if (*(a3 + 7) != v11)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 6)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v12 = *(a3 + 10);
    v13 = a2 + *(this + 10);
    a5.n128_u32[0] = v6;

    MEMORY[0x2A1C71498](v13, v12, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 4 * a4) = v6;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddFloat(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, __n128 a4, uint64_t a5, const char *a6)
{
  v6 = a4.n128_u32[0];
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 6)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = *(a3 + 44);
    v13 = *(*(a3 + 12) + 44);
    v14 = a2 + *(this + 10);
    a4.n128_u32[0] = v6;

    MEMORY[0x2A1C71518](v14, v11, v12, v13, a3, a4);
  }

  else
  {
    v15 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v16 = *(v15 + 2);
    if (v16 == *(v15 + 3))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v15, v16 + 1);
      v16 = *(v15 + 2);
    }

    v17 = *v15;
    *(v15 + 2) = v16 + 1;
    *(v17 + 4 * v16) = v6;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetDouble(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, __n128 a4, uint64_t a5, const char *a6)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 5)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    a4.n128_u64[0] = *(a3 + 14);
    v11 = a2 + *(this + 10);

    MEMORY[0x2A1C717A0](v11, v10, a4);
  }

  else
  {
    v12 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetDouble(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, __n128 a4, uint64_t a5, const char *a6)
{
  v6 = a4.n128_u64[0];
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 5)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = *(a3 + 44);
    v13 = a2 + *(this + 10);
    a4.n128_u64[0] = v6;

    MEMORY[0x2A1C71570](v13, v11, v12, a3, a4);
  }

  else
  {
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) = v6;
    *(a2 + 4 * (v14 / 32) + *(this + 8)) |= 1 << v14;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedDouble(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 5)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = a2 + *(this + 10);

    MEMORY[0x2A1C71720](v11, v10, a4);
  }

  else
  {
    v12 = *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedDouble(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, __n128 a5, const char *a6)
{
  v6 = a5.n128_u64[0];
  v11 = *(this + 1);
  if (*(a3 + 7) != v11)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 5)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v12 = *(a3 + 10);
    v13 = a2 + *(this + 10);
    a5.n128_u64[0] = v6;

    MEMORY[0x2A1C714B8](v13, v12, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4) = v6;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddDouble(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, __n128 a4, uint64_t a5, const char *a6)
{
  v6 = a4.n128_u64[0];
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 5)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = *(a3 + 44);
    v13 = *(*(a3 + 12) + 44);
    v14 = a2 + *(this + 10);
    a4.n128_u64[0] = v6;

    MEMORY[0x2A1C71548](v14, v11, v12, v13, a3, a4);
  }

  else
  {
    v15 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v16 = *(v15 + 2);
    if (v16 == *(v15 + 3))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(v15, v16 + 1);
      v16 = *(v15 + 2);
    }

    v17 = *v15;
    *(v15 + 2) = v16 + 1;
    *(v17 + 8 * v16) = v6;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetBool(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 7)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }

  v9 = *(a3 + 10);
  v10 = *(a3 + 112);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71758](v11, v9, v10);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetBool(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 7)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C71508](v12, v10, v11, a4, a3);
  }

  else
  {
    v13 = *(a3 + 7);
    v15 = *(v13 + 48);
    v14 = (v13 + 48);
    *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - v15) >> 3)) >> 30))) = a4;
    if (*(a3 + 52) == 1)
    {
      v16 = *(a3 + 8);
      if (v16)
      {
        v14 = (v16 + 112);
      }

      else
      {
        v14 = (*(a3 + 4) + 128);
      }
    }

    v17 = -286331153 * ((a3 - *v14) >> 3);
    *(a2 + 4 * (v17 / 32) + *(this + 8)) |= 1 << v17;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedBool(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 7)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + a4);
  }

  v10 = *(a3 + 10);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C716F8](v11, v10, a4);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedBool(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v10 = *(this + 1);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 7)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = a2 + *(this + 10);

    MEMORY[0x2A1C71488](v12, v11, a4, a5);
  }

  else
  {
    *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + a4) = a5;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddBool(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 7)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = *(*(a3 + 12) + 44);
    v13 = a2 + *(this + 10);

    MEMORY[0x2A1C714F8](v13, v10, v11, v12, a4, a3);
  }

  else
  {
    v14 = a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v15 = *(v14 + 2);
    if (v15 == *(v14 + 3))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(v14, v15 + 1);
      v15 = *(v14 + 2);
    }

    v16 = *v14;
    *(v14 + 2) = v15 + 1;
    *(v16 + v15) = a4;
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetString(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this@<X0>, const wireless_diagnostics::google::protobuf::Message *a2@<X1>, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3@<X2>, const char *a4@<X4>, std::string *a5@<X8>)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 9)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 10);
    v12 = *(a3 + 14);
    String = wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetString();
    if ((*(String + 23) & 0x80000000) == 0)
    {
      v14 = *String;
      v15 = *(String + 16);
LABEL_12:
      a5->__r_.__value_.__r.__words[2] = v15;
      *&a5->__r_.__value_.__l.__data_ = v14;
      return;
    }

    v17 = *String;
    v18 = *(String + 8);
  }

  else
  {
    v16 = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
    if ((*(v16 + 23) & 0x80000000) == 0)
    {
      v14 = *v16;
      v15 = *(v16 + 2);
      goto LABEL_12;
    }

    v17 = *v16;
    v18 = *(v16 + 1);
  }

  std::string::__init_copy_ctor_external(a5, v17, v18);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetStringReference(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(a1 + 8);
  if (*(a3 + 7) != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 9)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
  }

  v9 = *(a3 + 10);
  v10 = *(a3 + 14);
  v11 = a2 + *(a1 + 40);

  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetString();
}

std::string *wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetString(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, const std::string *a4, const char *a5)
{
  v9 = *(a1 + 8);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 9)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableString((a2 + *(a1 + 40)), *(a3 + 10), *(a3 + 44), a3);
  }

  else
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(a1 + 32) + 4 * (v11 / 32)) |= 1 << v11;
    v12 = *(*(a1 + 24) + 4 * v11);
    v10 = *(a2 + v12);
    if (v10 == *(*(a1 + 16) + v12))
    {
      operator new();
    }
  }

  return std::string::operator=(v10, a4);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedString(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this@<X0>, const wireless_diagnostics::google::protobuf::Message *a2@<X1>, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3@<X2>, int a4@<W3>, const char *a5@<X4>, std::string *a6@<X8>)
{
  v11 = *(this + 1);
  if (*(a3 + 7) != v11)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 9)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v12 = *(a3 + 10);
    RepeatedString = wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedString((a2 + *(this + 10)));
    if ((*(RepeatedString + 23) & 0x80000000) == 0)
    {
      v14 = *RepeatedString;
      v15 = *(RepeatedString + 16);
LABEL_12:
      a6->__r_.__value_.__r.__words[2] = v15;
      *&a6->__r_.__value_.__l.__data_ = v14;
      return;
    }

    v17 = *RepeatedString;
    v18 = *(RepeatedString + 8);
  }

  else
  {
    v16 = *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
    if ((*(v16 + 23) & 0x80000000) == 0)
    {
      v14 = *v16;
      v15 = *(v16 + 2);
      goto LABEL_12;
    }

    v17 = *v16;
    v18 = *(v16 + 1);
  }

  std::string::__init_copy_ctor_external(a6, v17, v18);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedStringReference(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  v9 = *(a1 + 8);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 9)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v10 = *(a3 + 10);
  v11 = (a2 + *(a1 + 40));

  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedString(v11);
}

std::string *wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedString(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, int a4, const std::string *a5)
{
  v10 = *(a1 + 8);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 9)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableRepeatedString((a2 + *(a1 + 40)));
  }

  else
  {
    v12 = *(*(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  return std::string::operator=(v12, a5);
}

std::string *wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddString(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, const std::string *a4, const char *a5)
{
  v9 = *(a1 + 8);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 9)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddString((a2 + *(a1 + 40)), *(a3 + 10), *(a3 + 44), a3);
  }

  else
  {
    v11 = (a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
    v12 = v11[3];
    v13 = v11[2];
    if (v13 >= v12)
    {
      if (v12 == v11[4])
      {
        v9 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v11);
        v12 = v11[3];
      }

      v11[3] = v12 + 1;
      v10 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v9);
      v15 = *v11;
      v16 = v11[2];
      v11[2] = v16 + 1;
      *(v15 + 8 * v16) = v10;
    }

    else
    {
      v14 = *v11;
      v11[2] = v13 + 1;
      v10 = *(v14 + 8 * v13);
    }
  }

  return std::string::operator=(v10, a4);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetEnum(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, wireless_diagnostics::google::protobuf::EnumDescriptor **a3, uint64_t a4, const char *a5)
{
  v8 = *(this + 1);
  if (a3[7] != v8)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 8)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v9 = *(a3 + 10);
    v10 = *(a3[14] + 4);
    Enum = wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetEnum((a2 + *(this + 10)));
  }

  else
  {
    Enum = *(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(a3[7] + 6)) >> 3)) >> 30)));
  }

  ValueByNumber = wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByNumber(a3[10], Enum);
  if (!ValueByNumber)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    v13 = a3[1];
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    v14 = *(a3[10] + 1);
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  return ValueByNumber;
}

void sub_2998541A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetEnum(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(a1 + 8);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 8)
  {
  }

  if (*(a4 + 24) != *(a3 + 10))
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = *(a4 + 16);
    v13 = a2 + *(a1 + 40);

    MEMORY[0x2A1C71510](v13, v10, v11, v12, a3);
  }

  else
  {
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) = *(a4 + 16);
    *(a2 + *(a1 + 32) + 4 * (v14 / 32)) |= 1 << v14;
  }
}

void wireless_diagnostics::google::protobuf::internal::anonymous namespace::ReportReflectionUsageEnumTypeError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v7 = *(a1 + 8);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v8 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v9 = *(*(a2 + 80) + 8);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  v10 = *(a4 + 8);
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
}

void sub_299854408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedEnum(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, wireless_diagnostics::google::protobuf::EnumDescriptor **a3, int a4, const char *a5)
{
  v9 = *(this + 1);
  if (a3[7] != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 8)
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    RepeatedEnum = wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedEnum((a2 + *(this + 10)));
  }

  else
  {
    RepeatedEnum = *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(a3[7] + 6)) >> 3)) >> 30))) + 4 * a4);
  }

  ValueByNumber = wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByNumber(a3[10], RepeatedEnum);
  if (!ValueByNumber)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    v13 = a3[1];
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    v14 = *(a3[10] + 1);
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  return ValueByNumber;
}

void sub_2998545D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::SetRepeatedEnum(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 8);
  if (*(a3 + 7) != v10)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 8)
  {
  }

  if (*(a5 + 24) != *(a3 + 10))
  {
  }

  if (*(a3 + 52) == 1)
  {
    v11 = *(a3 + 10);
    v12 = *(a5 + 16);
    v13 = a2 + *(a1 + 40);

    MEMORY[0x2A1C71490](v13, v11, a4, v12);
  }

  else
  {
    *(*(a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 4 * a4) = *(a5 + 16);
  }
}

void wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddEnum(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(a1 + 8);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 8)
  {
  }

  if (*(a4 + 24) != *(a3 + 10))
  {
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 44);
    v12 = *(*(a3 + 12) + 44);
    v13 = *(a4 + 16);
    v14 = a2 + *(a1 + 40);

    MEMORY[0x2A1C71500](v14, v10, v11, v12, v13, a3);
  }

  else
  {
    v15 = *(a4 + 16);
    v16 = a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    v17 = *(v16 + 8);
    if (v17 == *(v16 + 12))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v16, v17 + 1);
      v17 = *(v16 + 8);
    }

    v18 = *v16;
    *(v16 + 8) = v17 + 1;
    *(v18 + 4 * v17) = v15;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetMessage(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, wireless_diagnostics::google::protobuf::MessageFactory *a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 10)
  {
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (*(a3 + 52) == 1)
  {
    v10 = *(a3 + 10);
    v11 = *(a3 + 9);
    v12 = (a2 + *(this + 10));

    return wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetMessage(v12, v10, v11, a4);
  }

  else
  {
    v14 = *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
    result = *(a2 + v14);
    if (!result)
    {
      return *(*(this + 2) + v14);
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::MutableMessage(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, wireless_diagnostics::google::protobuf::MessageFactory *a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 10)
  {
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (*(a3 + 52) == 1)
  {
    v10 = (a2 + *(this + 10));

    return wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableMessage(v10, a3, a4);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + 4 * (v12 / 32) + *(this + 8)) |= 1 << v12;
    v13 = *(*(this + 3) + 4 * v12);
    result = *(a2 + v13);
    if (!result)
    {
      result = (*(**(*(this + 2) + v13) + 24))(*(*(this + 2) + v13));
      *(a2 + v13) = result;
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::ReleaseMessage(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, wireless_diagnostics::google::protobuf::MessageFactory *a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) == 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 10)
  {
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (*(a3 + 52) == 1)
  {
    v10 = (a2 + *(this + 10));

    return wireless_diagnostics::google::protobuf::internal::ExtensionSet::ReleaseMessage(v10, a3, a4);
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - *(*(a3 + 7) + 48)) >> 3);
    *(a2 + 4 * (v12 / 32) + *(this + 8)) &= ~(1 << v12);
    v13 = *(*(this + 3) + 4 * v12);
    result = *(a2 + v13);
    *(a2 + v13) = 0;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::GetRepeatedMessage(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 10)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v10 = *(a3 + 10);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C71740](v11, v10, a4);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::MutableRepeatedMessage(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 10)
  {
  }

  if (*(a3 + 52) != 1)
  {
    return *(*(a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30))) + 8 * a4);
  }

  v10 = *(a3 + 10);
  v11 = a2 + *(this + 10);

  return MEMORY[0x2A1C714D8](v11, v10, a4);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::AddMessage(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, wireless_diagnostics::google::protobuf::MessageFactory *a4, const char *a5)
{
  v9 = *(this + 1);
  if (*(a3 + 7) != v9)
  {
  }

  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != 10)
  {
  }

  if (!a4)
  {
    a4 = *(this + 7);
  }

  if (*(a3 + 52) != 1)
  {
    v12 = (a2 + *(*(this + 3) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30)));
    v13 = v12[2];
    if (v13 < v12[3])
    {
      v14 = *v12;
      v12[2] = v13 + 1;
      v15 = v14[v13];
      if (v15)
      {
        return v15;
      }

      ++v13;
    }

    if (v13)
    {
      v16 = **v12;
    }

    else
    {
      v16 = (*(*a4 + 16))(a4, *(a3 + 9));
    }

    v15 = (*(*v16 + 24))(v16);
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(v12, v15);
    return v15;
  }

  v10 = (a2 + *(this + 10));

  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddMessage(v10, a3, a4);
}

int *wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(int *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  v5 = this[4];
  if (v4 == v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this);
    v6 = v3[3] + 1;
LABEL_9:
    v3[3] = v6;
    goto LABEL_10;
  }

  v7 = this[3];
  if (v7 != v5)
  {
    if (v4 < v7)
    {
      *(*this + 8 * v7) = *(*this + 8 * v4);
    }

    v6 = v7 + 1;
    goto LABEL_9;
  }

  this = *(*this + 8 * v4);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_10:
  v8 = *v3;
  v9 = v3[2];
  v3[2] = v9 + 1;
  *(v8 + 8 * v9) = a2;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::MutableRawRepeatedField(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Descriptor *a3, int a4, const char *a5, uint64_t a6)
{
  v7 = a5;
  if (*(a3 + 12) != 3)
  {
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 11)] != a4)
  {
  }

  if ((v7 & 0x80000000) == 0 && *(*(a3 + 12) + 40) != v7)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  if (a6 && *(a3 + 9) != a6)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  if (*(a3 + 52) != 1)
  {
    return a2 + *(*(a1 + 24) + ((0xEEEEEEEF00000000 * ((a3 - *(*(a3 + 7) + 48)) >> 3)) >> 30));
  }

  v12 = *(a3 + 10);
  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableRawRepeatedField((a2 + *(a1 + 40)));
}

void sub_299855338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::FindKnownExtensionByName(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == -1)
  {
    return 0;
  }

  result = wireless_diagnostics::google::protobuf::DescriptorPool::FindExtensionByName(*(a1 + 48), a2);
  if (result)
  {
    v5 = *(a1 + 8);
    if (*(result + 56) == v5)
    {
      return result;
    }
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (*(*(v5 + 32) + 64) != 1)
  {
    return 0;
  }

  result = wireless_diagnostics::google::protobuf::DescriptorPool::FindMessageTypeByName(*(a1 + 48), a2);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 104);
  if (v7 < 1)
  {
    return 0;
  }

  for (result = *(result + 112); *(result + 56) != *(a1 + 8) || *(result + 44) != 11 || *(result + 48) != 1 || *(result + 72) != v6; result += 120)
  {
    if (!--v7)
    {
      return 0;
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection::FindKnownExtensionByNumber(wireless_diagnostics::google::protobuf::internal::GeneratedMessageReflection *this, uint64_t a2)
{
  if (*(this + 10) == -1)
  {
    return 0;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::DescriptorPool::FindExtensionByNumber(*(this + 6), *(this + 1), a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<wireless_diagnostics::google::protobuf::FieldDescriptor const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,wireless_diagnostics::google::protobuf::internal::anonymous namespace::FieldNumberSorter &,wireless_diagnostics::google::protobuf::FieldDescriptor const**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 40) < *(*v8 + 40))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 10);
      v90 = *(*v8 + 40);
      v91 = *(v87 + 40);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v140 = *(a2 - 1);
      if (*(v140 + 40) < *(v85 + 10))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 40);
        if (v143 < *(v142 + 40))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 40))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 40);
            if (v101 < *(v100 + 40))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *(v100 + 40))
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_130;
                }
              }

              v103 = v8;
LABEL_130:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v137 = *v7;
          v136 = v7[1];
          v7 = v94;
          v138 = *(v136 + 40);
          if (v138 < *(v137 + 40))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 < *(v137 + 40));
            *v139 = v136;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 < v9 && *(v109 + 40) < *(v108[1] + 40))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 40);
            if (*(v109 + 40) >= v111)
            {
              do
              {
                v112 = v108;
                *result = v109;
                if (v104 < v107)
                {
                  break;
                }

                v113 = (2 * v107) | 1;
                v108 = &v8[v113];
                v114 = 2 * v107 + 2;
                v109 = *v108;
                if (v114 < v9 && *(v109 + 40) < *(v108[1] + 40))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 40) >= v111);
              *v112 = v110;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v115 = 0;
          v116 = *v8;
          v117 = v8;
          do
          {
            v118 = &v117[v115];
            v119 = v118 + 1;
            v120 = v118[1];
            v121 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v9)
            {
              v115 = v121;
            }

            else
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              result = *(v120 + 40);
              if (result >= *(v124 + 40))
              {
                v115 = v121;
              }

              else
              {
                v120 = v123;
                v119 = v122;
              }
            }

            *v117 = v120;
            v117 = v119;
          }

          while (v115 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v116;
          }

          else
          {
            *v119 = *a2;
            *a2 = v116;
            v125 = (v119 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v119;
              v132 = *(*v119 + 40);
              if (*(*v129 + 40) < v132)
              {
                do
                {
                  v133 = v129;
                  *v119 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v119 = v133;
                }

                while (*(*v129 + 40) < v132);
                *v133 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 40);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 40);
      v17 = *(*v8 + 40);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 40) < *(*v8 + 40))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 40) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 40);
      v29 = *(v27 + 40);
      v30 = *(a2 - 2);
      v31 = *(v30 + 40);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 40) < *(v32 + 40))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 40) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 40);
      v40 = *(v38 + 40);
      v41 = *(a2 - 3);
      v42 = *(v41 + 40);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 40) < *(v43 + 40))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 40) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 40);
      v48 = *(*v25 + 40);
      v49 = *v35;
      v50 = *(*v35 + 40);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 40);
    v21 = *(*v11 + 40);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 40) < *(*v11 + 40))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 40) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 40);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 40) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 40) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 40) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 40) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 40) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v8 = v65 + 1;
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 40);
      if (*(*(v8 - 1) + 40) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 40))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= *(*v8 + 40));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 40));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 40));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 40));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 40));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 40);
  v81 = *(*v8 + 40);
  v82 = *(a2 - 1);
  v83 = *(v82 + 40);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 40) < *(*v8 + 40))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 40) >= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,wireless_diagnostics::google::protobuf::internal::anonymous namespace::FieldNumberSorter &,wireless_diagnostics::google::protobuf::FieldDescriptor const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 40);
  v8 = *(*result + 40);
  v9 = *a3;
  v10 = *(*a3 + 40);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 40) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v5 + 40))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 40) < *(*a4 + 40))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 40) < *(*a3 + 40))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 40) < *(*a2 + 40))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 40) < *(*result + 40))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,wireless_diagnostics::google::protobuf::internal::anonymous namespace::FieldNumberSorter &,wireless_diagnostics::google::protobuf::FieldDescriptor const**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 40);
      v8 = *(*a1 + 40);
      v9 = *(a2 - 1);
      v10 = *(v9 + 40);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 40) < *(*a1 + 40))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 40) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 40);
    v26 = *(*a1 + 40);
    v27 = *(v23 + 40);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 40) < *(v21 + 40))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 40);
          if (v45 < *(v44 + 40))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 40))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 40) < *(*a1 + 40))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 40);
  v16 = *(*a1 + 40);
  v17 = *(v11 + 40);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 40);
    if (v38 < *(v37 + 40))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 40))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = result;
    v4 = *result;
    v5 = 2 * v2;
    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    *(v3 + 3) = v6;
    operator new[]();
  }

  return result;
}

double wireless_diagnostics::google::protobuf::DescriptorPool::Tables::Tables(wireless_diagnostics::google::protobuf::DescriptorPool::Tables *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 14) = 1065353216;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 1065353216;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = this + 288;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  return result;
}

{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 14) = 1065353216;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 1065353216;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = this + 288;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  return result;
}

void wireless_diagnostics::google::protobuf::DescriptorPool::Tables::~Tables(wireless_diagnostics::google::protobuf::DescriptorPool::Tables *this)
{
  wireless_diagnostics::google::protobuf::STLDeleteElements<std::vector<wireless_diagnostics::google::protobuf::Message *>>(this + 16);
  v2 = *(this + 22);
  if (*(this + 23) != v2)
  {
    v3 = 0;
    do
    {
      operator delete(*(v2 + 8 * v3++));
      v2 = *(this + 22);
    }

    while (v3 < (*(this + 23) - v2) >> 3);
  }

  wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<std::string **>>(*(this + 13), *(this + 14));
  *(this + 14) = *(this + 13);
  wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<wireless_diagnostics::google::protobuf::FileDescriptorTables **>>(*(this + 19), *(this + 20));
  *(this + 20) = *(this + 19);
  v4 = *(this + 47);
  if (v4)
  {
    *(this + 48) = v4;
    operator delete(v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 41);
  if (v6)
  {
    *(this + 42) = v6;
    operator delete(v6);
  }

  v7 = *(this + 38);
  if (v7)
  {
    *(this + 39) = v7;
    operator delete(v7);
  }

  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(this + 280, *(this + 36));
  std::__hash_table<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::hash<wireless_diagnostics::google::protobuf::Descriptor const*>,std::equal_to<wireless_diagnostics::google::protobuf::Descriptor const*>,std::allocator<wireless_diagnostics::google::protobuf::Descriptor const*>>::~__hash_table(this + 240);
  v8 = *(this + 27);
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

  v10 = *(this + 25);
  *(this + 25) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 22);
  if (v11)
  {
    *(this + 23) = v11;
    operator delete(v11);
  }

  v12 = *(this + 19);
  if (v12)
  {
    *(this + 20) = v12;
    operator delete(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  v14 = *(this + 13);
  if (v14)
  {
    *(this + 14) = v14;
    operator delete(v14);
  }

  std::__hash_table<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::hash<wireless_diagnostics::google::protobuf::Descriptor const*>,std::equal_to<wireless_diagnostics::google::protobuf::Descriptor const*>,std::allocator<wireless_diagnostics::google::protobuf::Descriptor const*>>::~__hash_table(this + 64);
  std::__hash_table<std::string,wireless_diagnostics::google::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 24);
  v15 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void *wireless_diagnostics::google::protobuf::STLDeleteElements<std::vector<wireless_diagnostics::google::protobuf::Message *>>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = result[1];
    if (*result != v3)
    {
      do
      {
        v4 = *v2++;
        result = v4;
        if (v4)
        {
          result = (*(*result + 8))(result);
        }
      }

      while (v2 != v3);
      v2 = *v1;
    }

    v1[1] = v2;
  }

  return result;
}

double wireless_diagnostics::google::protobuf::FileDescriptorTables::FileDescriptorTables(wireless_diagnostics::google::protobuf::FileDescriptorTables *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  return result;
}

void wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddCheckpoint(wireless_diagnostics::google::protobuf::DescriptorPool::Tables *this)
{
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::CheckPoint::CheckPoint(v17, this);
  v3 = *(this + 39);
  v2 = *(this + 40);
  if (v3 >= v2)
  {
    v6 = *(this + 38);
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v6) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wireless_diagnostics::google::protobuf::DescriptorPool::Tables::CheckPoint>>(this + 304, v10);
    }

    v11 = 28 * v7;
    v12 = *v17;
    *(v11 + 12) = *&v17[12];
    *v11 = v12;
    v5 = 28 * v7 + 28;
    v13 = *(this + 38);
    v14 = *(this + 39) - v13;
    v15 = 28 * v7 - v14;
    memcpy((v11 - v14), v13, v14);
    v16 = *(this + 38);
    *(this + 38) = v15;
    *(this + 39) = v5;
    *(this + 40) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v4 = *v17;
    *(v3 + 12) = *&v17[12];
    *v3 = v4;
    v5 = v3 + 28;
  }

  *(this + 39) = v5;
}

void *wireless_diagnostics::google::protobuf::DescriptorPool::Tables::ClearLastCheckpoint(void *this)
{
  v1 = this[38];
  v2 = this[39] - 28;
  this[39] = v2;
  if (v1 == v2)
  {
    this[42] = this[41];
    this[45] = this[44];
    this[48] = this[47];
  }

  return this;
}

void wireless_diagnostics::google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(wireless_diagnostics::google::protobuf::DescriptorPool::Tables *this)
{
  v39 = *(this + 39);
  v2 = *(v39 - 12);
  v3 = *(this + 41);
  v4 = *(this + 42);
  if (v2 >= (v4 - v3) >> 3)
  {
    goto LABEL_55;
  }

  v37 = this + 216;
  do
  {
    v5 = *(v3 + 8 * v2);
    v6 = *v5;
    if (*v5)
    {
      v7 = 0;
      v8 = (v5 + 1);
      do
      {
        v7 = 5 * v7 + v6;
        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    v10 = *(this + 208);
    if (!*&v10)
    {
      goto LABEL_54;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v7;
      if (v7 >= *&v10)
      {
        v13 = v7 % *&v10;
      }
    }

    else
    {
      v13 = (*&v10 - 1) & v7;
    }

    v14 = *(*(this + 25) + 8 * v13);
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_54;
    }

    v38 = *(this + 25);
    v40 = *&v10 - 1;
    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v7)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v10)
        {
          v16 %= *&v10;
        }
      }

      else
      {
        v16 &= v40;
      }

      if (v16 != v13)
      {
        goto LABEL_54;
      }

LABEL_24:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_54;
      }
    }

    if (strcmp(*(v15 + 2), v5))
    {
      goto LABEL_24;
    }

    if (v12 > 1)
    {
      v17 = v38;
      if (v7 >= *&v10)
      {
        v7 %= *&v10;
      }
    }

    else
    {
      v7 &= v40;
      v17 = v38;
    }

    v18 = *v15;
    v19 = *(v17 + 8 * v7);
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19 != v15);
    if (v20 == v37)
    {
      goto LABEL_43;
    }

    v21 = *(v20 + 1);
    if (v12 > 1)
    {
      if (v21 >= *&v10)
      {
        v21 %= *&v10;
      }
    }

    else
    {
      v21 &= v40;
    }

    if (v21 == v7)
    {
LABEL_45:
      if (v18)
      {
        v22 = *(v18 + 1);
        goto LABEL_47;
      }
    }

    else
    {
LABEL_43:
      if (!v18)
      {
        goto LABEL_44;
      }

      v22 = *(v18 + 1);
      if (v12 > 1)
      {
        v23 = *(v18 + 1);
        if (v22 >= *&v10)
        {
          v23 = v22 % *&v10;
        }
      }

      else
      {
        v23 = v22 & v40;
      }

      if (v23 != v7)
      {
LABEL_44:
        *(v17 + 8 * v7) = 0;
        v18 = *v15;
        goto LABEL_45;
      }

LABEL_47:
      if (v12 > 1)
      {
        if (v22 >= *&v10)
        {
          v22 %= *&v10;
        }
      }

      else
      {
        v22 &= v40;
      }

      if (v22 != v7)
      {
        *(*(this + 25) + 8 * v22) = v20;
        v18 = *v15;
      }
    }

    *v20 = v18;
    *v15 = 0;
    --*(this + 28);
    operator delete(v15);
    v3 = *(this + 41);
    v4 = *(this + 42);
LABEL_54:
    ++v2;
  }

  while (v2 < (v4 - v3) >> 3);
LABEL_55:
  v24 = *(v39 - 8);
  v25 = *(this + 44);
  if (v24 < (*(this + 45) - v25) >> 3)
  {
    v26 = 8 * v24;
    do
    {
      std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__erase_unique<char const*>(this + 30, (v25 + v26));
      ++v24;
      v25 = *(this + 44);
      v26 += 8;
    }

    while (v24 < (*(this + 45) - v25) >> 3);
  }

  v27 = *(v39 - 4);
  v28 = *(this + 47);
  if (v27 < (*(this + 48) - v28) >> 4)
  {
    v29 = 16 * v27;
    do
    {
      std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::__erase_unique<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>(this + 35, (v28 + v29));
      ++v27;
      v28 = *(this + 47);
      v29 += 16;
    }

    while (v27 < (*(this + 48) - v28) >> 4);
  }

  std::vector<char const*>::resize(this + 41, *(v39 - 12));
  std::vector<char const*>::resize(this + 44, *(v39 - 8));
  std::vector<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>::resize(this + 47, *(v39 - 4));
  wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<std::string **>>(*(this + 13) + 8 * *(v39 - 28), *(this + 14));
  v30 = *(this + 17);
  for (i = (*(this + 16) + 8 * *(v39 - 24)); i != v30; ++i)
  {
    v33 = *i;
    v32 = v33;
    if (v33)
    {
      (*(*v32 + 8))(v32);
    }
  }

  wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<wireless_diagnostics::google::protobuf::FileDescriptorTables **>>((*(this + 19) + 8 * *(v39 - 20)), *(this + 20));
  v34 = *(v39 - 16);
  v35 = *(this + 22);
  for (j = *(this + 23); v34 < (j - v35) >> 3; j = *(this + 23))
  {
    operator delete(*(v35 + 8 * v34++));
    v35 = *(this + 22);
  }

  std::vector<std::string *>::resize(this + 13, *(v39 - 28));
  std::vector<std::string *>::resize(this + 16, *(v39 - 24));
  std::vector<std::string *>::resize(this + 19, *(v39 - 20));
  std::vector<void *>::resize(this + 22, *(v39 - 16));
  *(this + 39) -= 28;
}

void std::vector<char const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<char const*>::__append(a1, a2 - v2);
  }
}

void std::vector<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>::__append(a1, a2 - v2);
  }
}

uint64_t wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<std::string **>>(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v5 = *v3++;
      v4 = v5;
      if (v5)
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        result = MEMORY[0x29C2A2070](v4, 0x1012C40EC159624);
      }
    }

    while (v3 != a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::FileDescriptorTables *wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<wireless_diagnostics::google::protobuf::FileDescriptorTables **>>(wireless_diagnostics::google::protobuf::FileDescriptorTables *result, wireless_diagnostics::google::protobuf::FileDescriptorTables *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *v3;
      v3 = (v3 + 8);
      result = v4;
      if (v4)
      {
        wireless_diagnostics::google::protobuf::FileDescriptorTables::~FileDescriptorTables(result);
        result = MEMORY[0x29C2A2070]();
      }
    }

    while (v3 != a2);
  }

  return result;
}

void std::vector<std::string *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<std::string *>::__append(a1, a2 - v2);
  }
}

void std::vector<void *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void *>::__append(a1, a2 - v2);
  }
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddFile(uint64_t a1, const char *a2)
{
  v4 = *a2;
  if (*(*a2 + 23) < 0)
  {
    v4 = *v4;
  }

  v9[0] = v4;
  v9[1] = a2;
  std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,wireless_diagnostics::google::protobuf::FileDescriptor const*>>((a1 + 240), v9);
  v6 = v5;
  if (v5)
  {
    v7 = *a2;
    if (*(*a2 + 23) < 0)
    {
      v7 = *v7;
    }

    v9[0] = v7;
    std::vector<char const*>::push_back[abi:ne200100](a1 + 352, v9);
  }

  return v6 & 1;
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorTables::AddFieldByStylizedNames(wireless_diagnostics::google::protobuf::FileDescriptorTables *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2)
{
  v11 = a2;
  if (*(a2 + 52) == 1)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = 32;
  }

  else
  {
    v5 = 56;
  }

  v4 = *(a2 + v5);
LABEL_6:
  v6 = *(a2 + 2);
  if (*(v6 + 23) < 0)
  {
    v6 = *v6;
  }

  v10[0] = v4;
  v10[1] = v6;
  v7 = *(a2 + 3);
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  v9[0] = v4;
  v9[1] = v7;
}

uint64_t wireless_diagnostics::google::protobuf::InsertIfNotPresent<wireless_diagnostics::google::protobuf::hash_map<std::pair<void const*,char const*>,wireless_diagnostics::google::protobuf::FieldDescriptor const*,wireless_diagnostics::google::protobuf::anonymous namespace::PointerStringPairHash,wireless_diagnostics::google::protobuf::anonymous namespace::PointerStringPairEqual>,std::pair<void const*,char const*>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *v3;
  if (*v3)
  {
    v6 = 0;
    v7 = (v3 + 1);
    do
    {
      v6 = 5 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = *a3;
  v10 = v6 - v4;
  v11 = v10 + (v4 << 16);
  v12 = a1[1];
  if (!*&v12)
  {
    goto LABEL_24;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v10 + (v4 << 16);
    if (v11 >= *&v12)
    {
      v15 = v11 % *&v12;
    }
  }

  else
  {
    v15 = (*&v12 - 1) & v11;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_24;
    }

LABEL_23:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  if (v17[2] != v4)
  {
    goto LABEL_23;
  }

  result = strcmp(v17[3], v3);
  if (result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorTables::AddFieldByNumber(int8x8_t *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2)
{
  v2 = *(a2 + 7);
  v3 = *(a2 + 10);
  v4 = v3 - v2 + (v2 << 16);
  v5 = this[16];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 - v2 + (v2 << 16);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*&this[15] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != v2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorTables::AddEnumValueByNumber(int8x8_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 16);
  v4 = v3 - v2 + (v2 << 16);
  v5 = a1[21];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 - v2 + (v2 << 16);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*&a1[20] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != v2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddExtension(wireless_diagnostics::google::protobuf::DescriptorPool::Tables *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2)
{
  v3 = *(a2 + 7);
  v4 = *(a2 + 10);
  v21 = v3;
  v22 = v4;
  v23 = a2;
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::__emplace_unique_key_args<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::pair<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int> const,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>(this + 280, &v21);
  v6 = v5;
  if (v5)
  {
    v8 = *(this + 48);
    v7 = *(this + 49);
    if (v8 >= v7)
    {
      v10 = *(this + 47);
      v11 = (v8 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>>(this + 376, v14);
      }

      v15 = 16 * v11;
      *v15 = v3;
      *(v15 + 8) = v4;
      v9 = 16 * v11 + 16;
      v16 = *(this + 47);
      v17 = *(this + 48) - v16;
      v18 = (16 * v11 - v17);
      memcpy(v18, v16, v17);
      v19 = *(this + 47);
      *(this + 47) = v18;
      *(this + 48) = v9;
      *(this + 49) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = v3;
      *(v8 + 8) = v4;
      v9 = v8 + 16;
    }

    *(this + 48) = v9;
  }

  return v6 & 1;
}

void *wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateBytes(wireless_diagnostics::google::protobuf::DescriptorPool::Tables *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = operator new(a2);
  v4 = v3;
  v6 = *(this + 23);
  v5 = *(this + 24);
  if (v6 >= v5)
  {
    v8 = *(this + 22);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v8;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(this + 176, v12);
    }

    *(8 * v9) = v3;
    v7 = 8 * v9 + 8;
    v13 = *(this + 22);
    v14 = *(this + 23) - v13;
    v15 = (8 * v9 - v14);
    memcpy(v15, v13, v14);
    v16 = *(this + 22);
    *(this + 22) = v15;
    *(this + 23) = v7;
    *(this + 24) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v6 = v3;
    v7 = (v6 + 1);
  }

  *(this + 23) = v7;
  return v4;
}

void wireless_diagnostics::google::protobuf::DescriptorPool::DescriptorPool(wireless_diagnostics::google::protobuf::DescriptorPool *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void wireless_diagnostics::google::protobuf::DescriptorPool::DescriptorPool(wireless_diagnostics::google::protobuf::DescriptorPool *this, const wireless_diagnostics::google::protobuf::DescriptorPool *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  operator new();
}

void wireless_diagnostics::google::protobuf::DescriptorPool::~DescriptorPool(wireless_diagnostics::google::protobuf::DescriptorPool::Tables **this)
{
  if (*this)
  {
    v2 = MEMORY[0x29C2A1CE0]();
    MEMORY[0x29C2A2070](v2, 0x20C4093837F09);
  }

  wireless_diagnostics::google::protobuf::internal::scoped_ptr<wireless_diagnostics::google::protobuf::DescriptorPool::Tables>::~scoped_ptr(this + 4);
}

BOOL wireless_diagnostics::google::protobuf::DescriptorPool::InternalIsFileLoaded(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v10 = v4;
  if (v4)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::Lock(v4);
  }

  v5 = *(a1 + 32);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v11 = v6;
  v7 = std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>((v5 + 240), &v11);
  if (v7)
  {
    v8 = v7[3] != 0;
  }

  else
  {
    v8 = 0;
  }

  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v10);
  return v8;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(wireless_diagnostics::google::protobuf::DescriptorPool *this)
{
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = MEMORY[0x29EDC9780] + 16;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }
}

void sub_2998584E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::internal_generated_pool(wireless_diagnostics::google::protobuf::DescriptorPool *this)
{
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = MEMORY[0x29EDC9780] + 16;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }
}

void sub_299858584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName(wireless_diagnostics::google::protobuf::internal::Mutex **a1, char *a2)
{
  v4 = *a1;
  v14 = v4;
  if (v4)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::Lock(v4);
  }

  v5 = a1[4];
  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v15 = v6;
  v7 = std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>(v5 + 30, &v15);
  if (!v7 || (FileByName = v7[3]) == 0)
  {
    v9 = a1[3];
    if (!v9 || (FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName(v9, a2)) == 0)
    {
      if (!wireless_diagnostics::google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(a1, a2) || ((v10 = a1[4], a2[23] >= 0) ? (v11 = a2) : (v11 = *a2), (v15 = v11, (v12 = std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>(v10 + 30, &v15)) == 0) || (FileByName = v12[3]) == 0))
      {
        FileByName = 0;
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v14);
  return FileByName;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(wireless_diagnostics::google::protobuf::DescriptorPool *a1, _BYTE *a2)
{
  if (!*(a1 + 1) || std::__hash_table<std::string,wireless_diagnostics::google::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((*(a1 + 4) + 24), a2))
  {
    return 0;
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(v6);
  if ((*(**(a1 + 1) + 16))(*(a1 + 1), a2, v6) && wireless_diagnostics::google::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v6))
  {
    v4 = 1;
  }

  else
  {
    std::__hash_table<std::string,wireless_diagnostics::google::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((*(a1 + 4) + 24), a2);
    v4 = 0;
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(v6);
  return v4;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindFileContainingSymbol(wireless_diagnostics::google::protobuf::internal::Mutex **a1, uint64_t a2)
{
  v4 = *a1;
  v37 = v4;
  if (v4)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::Lock(v4);
  }

  v5 = a1[4];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = 0;
    v9 = (v6 + 1);
    do
    {
      v8 = 5 * v8 + v7;
      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = v5[26];
  if (!*&v11)
  {
    goto LABEL_28;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v8;
    if (v8 >= *&v11)
    {
      v14 = v8 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v8;
  }

  v15 = *(*&v5[25] + 8 * v14);
  if (!v15)
  {
    goto LABEL_32;
  }

  v16 = *v15;
  if (!*v15)
  {
LABEL_28:
    v15 = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = *(v16 + 8);
    if (v8 == v17)
    {
      if (!strcmp(*(v16 + 16), v6))
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      break;
    }

LABEL_26:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  v16 = 0;
LABEL_30:
  v15 = (v16 + 24);
  if (!v16)
  {
    v15 = 0;
  }

LABEL_32:
  if (!v15)
  {
  }

  v18 = v15[1];
  v35 = *v15;
  v36 = v18;
  if (v35)
  {
    goto LABEL_35;
  }

  v21 = a1[3];
  if (!v21 || (File = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileContainingSymbol(v21, a2)) == 0)
  {
    if (!wireless_diagnostics::google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a1, a2))
    {
      goto LABEL_71;
    }

    v22 = a1[4];
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v23 = *a2;
    if (*a2)
    {
      v24 = 0;
      v25 = (a2 + 1);
      do
      {
        v24 = 5 * v24 + v23;
        v26 = *v25++;
        v23 = v26;
      }

      while (v26);
    }

    else
    {
      v24 = 0;
    }

    v27 = v22[26];
    if (!*&v27)
    {
      goto LABEL_64;
    }

    v28 = vcnt_s8(v27);
    v28.i16[0] = vaddlv_u8(v28);
    v29 = v28.u32[0];
    if (v28.u32[0] > 1uLL)
    {
      v30 = v24;
      if (v24 >= *&v27)
      {
        v30 = v24 % *&v27;
      }
    }

    else
    {
      v30 = (*&v27 - 1) & v24;
    }

    v31 = *(*&v22[25] + 8 * v30);
    if (!v31)
    {
      goto LABEL_68;
    }

    v32 = *v31;
    if (!*v31)
    {
LABEL_64:
      v31 = 0;
      goto LABEL_68;
    }

    while (1)
    {
      v33 = *(v32 + 8);
      if (v24 == v33)
      {
        if (!strcmp(*(v32 + 16), a2))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v29 > 1)
        {
          if (v33 >= *&v27)
          {
            v33 %= *&v27;
          }
        }

        else
        {
          v33 &= *&v27 - 1;
        }

        if (v33 != v30)
        {
          v32 = 0;
LABEL_66:
          v31 = (v32 + 24);
          if (!v32)
          {
            v31 = 0;
          }

LABEL_68:
          if (!v31)
          {
          }

          v34 = v31[1];
          v35 = *v31;
          v36 = v34;
          if (!v35)
          {
LABEL_71:
            File = 0;
            break;
          }

LABEL_35:
          break;
        }
      }

      v32 = *v32;
      if (!v32)
      {
        goto LABEL_66;
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v37);
  return File;
}

void sub_299858A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::anonymous namespace::Symbol::GetFile(wireless_diagnostics::google::protobuf::_anonymous_namespace_::Symbol *this)
{
  v1 = 0;
  v2 = *this;
  if (*this <= 3)
  {
    switch(v2)
    {
      case 1:
        goto LABEL_9;
      case 2:
        v4 = (*(this + 1) + 32);
        return *v4;
      case 3:
        goto LABEL_9;
    }
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v3 = *(*(this + 1) + 24);
        goto LABEL_15;
      }

      if (v2 != 5)
      {
        return v1;
      }

LABEL_9:
      v3 = *(this + 1);
LABEL_15:
      v4 = (v3 + 16);
      return *v4;
    }

    if (v2 == 6)
    {
      v3 = *(*(this + 1) + 16);
      goto LABEL_15;
    }

    if (v2 == 7)
    {
      v4 = this + 8;
      return *v4;
    }
  }

  return v1;
}

BOOL wireless_diagnostics::google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(wireless_diagnostics::google::protobuf::DescriptorPool *a1, uint64_t a2)
{
  if (!*(a1 + 1) || (wireless_diagnostics::google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(a1, a2) & 1) != 0)
  {
    return 0;
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(v9);
  if (((*(**(a1 + 1) + 24))(*(a1 + 1), a2, v9) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 4);
  v6 = v10;
  if (*(v10 + 23) < 0)
  {
    v6 = *v10;
  }

  v11 = v6;
  v7 = std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>((v5 + 240), &v11);
  if (v7 && v7[3])
  {
LABEL_9:
    v4 = 0;
  }

  else
  {
    v4 = wireless_diagnostics::google::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v9) != 0;
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(v9);
  return v4;
}

void sub_299858BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindMessageTypeByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 32), a1, a2) == 1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(int8x8_t *a1, wireless_diagnostics::google::protobuf::internal::Mutex **a2, uint64_t a3)
{
  v6 = *a2;
  v37 = v6;
  if (v6)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::Lock(v6);
  }

  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = (v7 + 1);
    do
    {
      v9 = 5 * v9 + v8;
      v11 = *v10++;
      v8 = v11;
    }

    while (v11);
  }

  else
  {
    v9 = 0;
  }

  v12 = a1[26];
  if (!*&v12)
  {
    goto LABEL_28;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v9;
    if (v9 >= *&v12)
    {
      v15 = v9 % *&v12;
    }
  }

  else
  {
    v15 = (*&v12 - 1) & v9;
  }

  v16 = *(*&a1[25] + 8 * v15);
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = *v16;
  if (!*v16)
  {
LABEL_28:
    v16 = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v18 = *(v17 + 8);
    if (v9 == v18)
    {
      if (!strcmp(*(v17 + 16), v7))
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    if (v14 > 1)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v15)
    {
      break;
    }

LABEL_26:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_30;
    }
  }

  v17 = 0;
LABEL_30:
  v16 = (v17 + 24);
  if (!v17)
  {
    v16 = 0;
  }

LABEL_32:
  if (!v16)
  {
  }

  v20 = *v16;
  v19 = v16[1];
  v21 = HIDWORD(*v16);
  if (*v16)
  {
    goto LABEL_35;
  }

  v23 = a2[3];
  if (v23)
  {
    v24 = wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(v23 + 4), v23, a3);
    LODWORD(v20) = v24;
    v21 = HIDWORD(v24);
    if (v24)
    {
      goto LABEL_35;
    }
  }

  if (!wireless_diagnostics::google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, a3))
  {
    LODWORD(v20) = 0;
    goto LABEL_35;
  }

  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v25 = *a3;
  if (*a3)
  {
    v26 = 0;
    v27 = (a3 + 1);
    do
    {
      v26 = 5 * v26 + v25;
      v28 = *v27++;
      v25 = v28;
    }

    while (v28);
  }

  else
  {
    v26 = 0;
  }

  v29 = a1[26];
  if (!*&v29)
  {
    goto LABEL_64;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  v31 = v30.u32[0];
  if (v30.u32[0] > 1uLL)
  {
    v32 = v26;
    if (v26 >= *&v29)
    {
      v32 = v26 % *&v29;
    }
  }

  else
  {
    v32 = (*&v29 - 1) & v26;
  }

  v33 = *(*&a1[25] + 8 * v32);
  if (!v33)
  {
    goto LABEL_68;
  }

  v34 = *v33;
  if (!*v33)
  {
LABEL_64:
    v33 = 0;
    goto LABEL_68;
  }

  while (2)
  {
    v35 = *(v34 + 8);
    if (v26 == v35)
    {
      if (!strcmp(*(v34 + 16), a3))
      {
        goto LABEL_66;
      }

LABEL_62:
      v34 = *v34;
      if (!v34)
      {
        goto LABEL_66;
      }

      continue;
    }

    break;
  }

  if (v31 > 1)
  {
    if (v35 >= *&v29)
    {
      v35 %= *&v29;
    }
  }

  else
  {
    v35 &= *&v29 - 1;
  }

  if (v35 == v32)
  {
    goto LABEL_62;
  }

  v34 = 0;
LABEL_66:
  v33 = (v34 + 24);
  if (!v34)
  {
    v33 = 0;
  }

LABEL_68:
  if (!v33)
  {
  }

  v20 = *v33;
  v36 = v33[1];
  v21 = HIDWORD(*v33);
LABEL_35:
  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v37);
  return v20 | (v21 << 32);
}

void sub_299858EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindFieldByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 32), a1, a2) != 2)
  {
    return 0;
  }

  result = v2;
  if (*(v2 + 52) == 1)
  {
    return 0;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindExtensionByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 32), a1, a2) != 2)
  {
    return 0;
  }

  result = v2;
  if ((*(v2 + 52) & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindEnumTypeByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 32), a1, a2) == 3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindEnumValueByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 32), a1, a2) == 4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindServiceByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 32), a1, a2) == 5)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindMethodByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 32), a1, a2) == 6)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::FindExtensionByNumber(wireless_diagnostics::google::protobuf::internal::Mutex **this, const wireless_diagnostics::google::protobuf::Descriptor *a2, uint64_t a3)
{
  v6 = *this;
  v14 = v6;
  if (v6)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::Lock(v6);
  }

  v7 = this[4];
  v15 = a2;
  v16 = a3;
  v8 = std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::find<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>(v7 + 280, &v15);
  if ((v7 + 288) == v8 || (ExtensionByNumber = v8[6]) == 0)
  {
    v10 = this[3];
    if (!v10 || (ExtensionByNumber = wireless_diagnostics::google::protobuf::DescriptorPool::FindExtensionByNumber(v10, a2, a3)) == 0)
    {
      if (!wireless_diagnostics::google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(this, a2, a3) || (v11 = this[4], v15 = a2, v16 = a3, v12 = std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::find<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>(v11 + 280, &v15), (v11 + 288) == v12) || (ExtensionByNumber = v12[6]) == 0)
      {
        ExtensionByNumber = 0;
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v14);
  return ExtensionByNumber;
}

void sub_299859108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(wireless_diagnostics::google::protobuf::DescriptorPool *this, const wireless_diagnostics::google::protobuf::Descriptor *a2, uint64_t a3)
{
  if (!*(this + 1))
  {
    return 0;
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(v11);
  if (((*(**(this + 1) + 32))(*(this + 1), *(a2 + 1), a3, v11) & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(this + 4);
  v7 = v12;
  if (*(v12 + 23) < 0)
  {
    v7 = *v12;
  }

  v13 = v7;
  v8 = std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>((v6 + 240), &v13);
  if (v8 && v8[3])
  {
LABEL_7:
    v9 = 0;
  }

  else
  {
    v9 = wireless_diagnostics::google::protobuf::DescriptorPool::BuildFileFromDatabase(this, v11) != 0;
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(v11);
  return v9;
}

void sub_299859200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::DescriptorPool::FindAllExtensions(uint64_t a1, wireless_diagnostics::google::protobuf::Descriptor *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  v26 = v6;
  v27 = a2;
  if (v6)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::Lock(v6);
  }

  if (*(a1 + 8))
  {
    v7 = std::__hash_table<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::hash<wireless_diagnostics::google::protobuf::Descriptor const*>,std::equal_to<wireless_diagnostics::google::protobuf::Descriptor const*>,std::allocator<wireless_diagnostics::google::protobuf::Descriptor const*>>::find<wireless_diagnostics::google::protobuf::Descriptor const*>((*(a1 + 32) + 64), &v27);
    v4 = v27;
    if (!v7)
    {
      v24 = 0;
      v25 = 0;
      __p = 0;
      if ((*(**(a1 + 8) + 40))(*(a1 + 8), *(v27 + 1), &__p))
      {
        v8 = __p;
        if (v24 != __p)
        {
          v9 = 0;
          do
          {
            v10 = v8[v9];
            v11 = *(a1 + 32);
            v28 = v27;
            v29 = v10;
            v12 = std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::find<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>(v11 + 280, &v28);
            if ((v11 + 288) == v12 || !v12[6])
            {
              wireless_diagnostics::google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(a1, v27, v10);
            }

            ++v9;
            v8 = __p;
          }

          while (v9 < (v24 - __p) >> 2);
        }

        std::__hash_table<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::hash<wireless_diagnostics::google::protobuf::Descriptor const*>,std::equal_to<wireless_diagnostics::google::protobuf::Descriptor const*>,std::allocator<wireless_diagnostics::google::protobuf::Descriptor const*>>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::Descriptor const* const&>((*(a1 + 32) + 64), &v27);
      }

      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      v4 = v27;
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 288);
  if (v14)
  {
    v15 = (v13 + 288);
    v16 = (v13 + 288);
    do
    {
      v17 = v14[4];
      if (v17 >= v4)
      {
        if (v17 <= v4)
        {
          v18 = *(v14 + 10);
          if (v18 >= 0)
          {
            v16 = v14;
          }

          v14 = (v14 + ((v18 >> 28) & 8));
        }

        else
        {
          v16 = v14;
        }
      }

      else
      {
        ++v14;
      }

      v14 = *v14;
    }

    while (v14);
    if (v16 != v15)
    {
      do
      {
        if (v16[4] != v4)
        {
          break;
        }

        std::vector<wireless_diagnostics::google::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](a3, v16 + 6);
        v19 = v16[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v16[2];
            v21 = *v20 == v16;
            v16 = v20;
          }

          while (!v21);
        }

        v16 = v20;
      }

      while (v20 != v15);
    }
  }

  v22 = *(a1 + 24);
  if (v22)
  {
    wireless_diagnostics::google::protobuf::DescriptorPool::FindAllExtensions(v22, v27, a3);
  }

  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v26);
}

void sub_299859418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, wireless_diagnostics::google::protobuf::internal::Mutex *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&a13);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::Descriptor::FindFieldByNumber(wireless_diagnostics::google::protobuf::Descriptor *this, int a2)
{
  v2 = *(*(this + 2) + 144);
  v3 = v2[16];
  if (!*&v3)
  {
    return 0;
  }

  v4 = 0xFFFFLL * this + a2;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = 0xFFFFLL * this + a2;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = (*&v3 - 1) & v4;
  }

  v7 = *(*&v2[15] + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = v8[1];
    if (v4 == v9)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v6)
    {
      return 0;
    }

LABEL_20:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v8[2] != this || *(v8 + 6) != a2)
  {
    goto LABEL_20;
  }

  v12 = v8[4];
  if (!v12)
  {
    return 0;
  }

  if (*(v12 + 52))
  {
    return 0;
  }

  else
  {
    return v8[4];
  }
}

uint64_t *wireless_diagnostics::google::protobuf::Descriptor::FindFieldByLowercaseName(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 16) + 144);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5[0] = a1;
  v5[1] = v3;
  if (result)
  {
    if (*(result + 52))
    {
      return 0;
    }
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::Descriptor::FindFieldByCamelcaseName(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 16) + 144);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5[0] = a1;
  v5[1] = v3;
  if (result)
  {
    if (*(result + 52))
    {
      return 0;
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::Descriptor::FindFieldByName(uint64_t a1, uint64_t a2)
{
  if (!wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(a1 + 16) + 144), a1, a2, 2))
  {
    return 0;
  }

  if (*(v2 + 52))
  {
    return 0;
  }

  return v2;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = 0;
    v9 = (v6 + 1);
    do
    {
      v8 = 5 * v8 + v7;
      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_27;
  }

  v12 = v8 - a2 + (a2 << 16);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v8 - a2 + (a2 << 16);
    if (v12 >= *&v11)
    {
      v15 = v12 % *&v11;
    }
  }

  else
  {
    v15 = (*&v11 - 1) & v12;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = *v16;
  if (!*v16)
  {
LABEL_27:
    v16 = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v18 = *(v17 + 8);
    if (v12 != v18)
    {
      break;
    }

    if (*(v17 + 16) == a2 && !strcmp(*(v17 + 24), v6))
    {
      goto LABEL_29;
    }

LABEL_25:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_29;
    }
  }

  if (v14 > 1)
  {
    if (v18 >= *&v11)
    {
      v18 %= *&v11;
    }
  }

  else
  {
    v18 &= *&v11 - 1;
  }

  if (v18 == v15)
  {
    goto LABEL_25;
  }

  v17 = 0;
LABEL_29:
  v16 = (v17 + 32);
  if (!v17)
  {
    v16 = 0;
  }

LABEL_31:
  if (!v16)
  {
  }

  v21 = *v16;
  v19 = v16 + 1;
  v20 = v21;
  if (v21 == a4)
  {
    result = v20;
  }

  else
  {
  }

  if (v20 != a4)
  {
    v19 = &qword_2A18982B8;
  }

  v23 = *v19;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::Descriptor::FindExtensionByName(uint64_t a1, uint64_t a2)
{
  if (!wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(a1 + 16) + 144), a1, a2, 2))
  {
    return 0;
  }

  if (*(v2 + 52))
  {
    return v2;
  }

  return 0;
}

uint64_t *wireless_diagnostics::google::protobuf::Descriptor::FindExtensionByLowercaseName(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 16) + 144);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5[0] = a1;
  v5[1] = v3;
  if (result)
  {
    if (!*(result + 52))
    {
      return 0;
    }
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::Descriptor::FindExtensionByCamelcaseName(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 16) + 144);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5[0] = a1;
  v5[1] = v3;
  if (result)
  {
    if (!*(result + 52))
    {
      return 0;
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::Descriptor::FindNestedTypeByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(a1 + 16) + 144), a1, a2, 1))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::Descriptor::FindEnumTypeByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(a1 + 16) + 144), a1, a2, 3))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::Descriptor::FindEnumValueByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(a1 + 16) + 144), a1, a2, 4))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(a1 + 16) + 144), a1, a2, 4))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::EnumDescriptor::FindValueByNumber(wireless_diagnostics::google::protobuf::EnumDescriptor *this, int a2)
{
  v2 = *(*(this + 2) + 144);
  v3 = v2[21];
  if (v3)
  {
    v4 = 0xFFFFLL * this + a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = 0xFFFFLL * this + a2;
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(*&v2[20] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (i[2] == this && *(i + 6) == a2)
          {
            return i[4];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t wireless_diagnostics::google::protobuf::ServiceDescriptor::FindMethodByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(a1 + 16) + 144), a1, a2, 6))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptor::FindMessageTypeByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(a1 + 144), a1, a2, 1))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptor::FindEnumTypeByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(a1 + 144), a1, a2, 3))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptor::FindEnumValueByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(a1 + 144), a1, a2, 4))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptor::FindServiceByName(uint64_t a1, uint64_t a2)
{
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(a1 + 144), a1, a2, 5))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptor::FindExtensionByName(uint64_t a1, uint64_t a2)
{
  if (!wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(a1 + 144), a1, a2, 2))
  {
    return 0;
  }

  if (*(v2 + 52))
  {
    return v2;
  }

  return 0;
}

uint64_t *wireless_diagnostics::google::protobuf::FileDescriptor::FindExtensionByLowercaseName(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5[0] = a1;
  v5[1] = v3;
  if (result)
  {
    if (!*(result + 52))
    {
      return 0;
    }
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::FileDescriptor::FindExtensionByCamelcaseName(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5[0] = a1;
  v5[1] = v3;
  if (result)
  {
    if (!*(result + 52))
    {
      return 0;
    }
  }

  return result;
}

BOOL wireless_diagnostics::google::protobuf::Descriptor::IsExtensionNumber(wireless_diagnostics::google::protobuf::Descriptor *this, int a2)
{
  v2 = *(this + 22);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v3 = (*(this + 12) + 4);
    v4 = 1;
    v5 = 1;
    do
    {
      if (*(v3 - 1) <= a2 && *v3 > a2)
      {
        break;
      }

      v5 = v4 < v2;
      v3 += 2;
      ++v4;
    }

    while (v4 - v2 != 1);
  }

  return v5;
}

wireless_diagnostics::google::protobuf::FileDescriptor *wireless_diagnostics::google::protobuf::DescriptorPool::BuildFileFromDatabase(wireless_diagnostics::google::protobuf::internal::Mutex **this, const std::string **a2)
{
  wireless_diagnostics::google::protobuf::internal::Mutex::AssertHeld(*this);
  v4 = this[4];
  v5 = this[2];
  v8[0] = this;
  v8[1] = v4;
  v10 = 0;
  v11 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v8[2] = v5;
  memset(&v8[3], 0, 24);
  v9 = 0;
  v12 = 0;
  v13 = v14;
  v15 = 0u;
  v16 = 0u;
  v6 = wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildFile(v8, a2);
  wireless_diagnostics::google::protobuf::DescriptorBuilder::~DescriptorBuilder(v8);
  return v6;
}

void sub_299859CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::DescriptorBuilder::~DescriptorBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  v3 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1)
  {
    goto LABEL_45;
  }

  for (i = v3; i != -1; i = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::string::basic_string(&v24, &__str, 0, i, &v26);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v24;
    v5 = *(a1 + 32);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = v24.__r_.__value_.__r.__words[0];
    }

    v7 = p_str->__r_.__value_.__s.__data_[0];
    if (p_str->__r_.__value_.__s.__data_[0])
    {
      v8 = 0;
      v9 = &p_str->__r_.__value_.__s.__data_[1];
      do
      {
        v8 = 5 * v8 + v7;
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    else
    {
      v8 = 0;
    }

    v11 = v5[26];
    if (!*&v11)
    {
      goto LABEL_33;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v8;
      if (v8 >= *&v11)
      {
        v14 = v8 % *&v11;
      }
    }

    else
    {
      v14 = (*&v11 - 1) & v8;
    }

    v15 = *(*&v5[25] + 8 * v14);
    if (!v15)
    {
      goto LABEL_37;
    }

    v16 = *v15;
    if (!*v15)
    {
LABEL_33:
      v15 = 0;
      goto LABEL_37;
    }

    while (1)
    {
      v17 = *(v16 + 8);
      if (v8 == v17)
      {
        if (!strcmp(*(v16 + 16), p_str))
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      if (v13 > 1)
      {
        if (v17 >= *&v11)
        {
          v17 %= *&v11;
        }
      }

      else
      {
        v17 &= *&v11 - 1;
      }

      if (v17 != v14)
      {
        break;
      }

LABEL_31:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    v16 = 0;
LABEL_35:
    v15 = (v16 + 24);
    if (!v16)
    {
      v15 = 0;
    }

LABEL_37:
    if (!v15)
    {
    }

    v18 = *v15;
    if (v18)
    {
      v19 = v18 == 7;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      IsSubSymbolOfBuiltType = 1;
      goto LABEL_48;
    }
  }

LABEL_45:
  v20 = *(a1 + 24);
  if (v20)
  {
    IsSubSymbolOfBuiltType = wireless_diagnostics::google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(v20, a2);
  }

  else
  {
    IsSubSymbolOfBuiltType = 0;
  }

LABEL_48:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return IsSubSymbolOfBuiltType;
}

void sub_299859F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::FieldDescriptor::DefaultValueAsString(wireless_diagnostics::google::protobuf::FieldDescriptor *this@<X0>, char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v4 = a2;
  if ((*(this + 104) & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v16);
  }

  v7 = *(this + 11);
  v8 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7];
  if (v8 > 5)
  {
    if (v8 <= 7)
    {
      if (v8 == 6)
      {
        wireless_diagnostics::google::protobuf::SimpleFtoa(*(this + 28), a2, a4);
        return;
      }

      if (*(this + 112))
      {
        v9 = "true";
      }

      else
      {
        v9 = "false";
      }

LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(a4, v9);
      return;
    }

    if (v8 == 8)
    {
      v10 = **(this + 14);
      if ((*(v10 + 23) & 0x80000000) == 0)
      {
        v11 = *v10;
        v12 = *(v10 + 2);
LABEL_27:
        a4->__r_.__value_.__r.__words[2] = v12;
        *&a4->__r_.__value_.__l.__data_ = v11;
        return;
      }

      v14 = *v10;
      v15 = *(v10 + 1);
    }

    else
    {
      if (v8 != 9)
      {
        if (v8 == 10)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v16);
        }

LABEL_20:
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v16);
        v9 = "";
        goto LABEL_21;
      }

      if (v4)
      {
        wireless_diagnostics::google::protobuf::CEscape(*(this + 14));
      }

      v13 = *(this + 14);
      if (v7 == 12)
      {
        wireless_diagnostics::google::protobuf::CEscape(v13);
      }

      if ((*(v13 + 23) & 0x80000000) == 0)
      {
        v11 = *v13;
        v12 = *(v13 + 16);
        goto LABEL_27;
      }

      v14 = *v13;
      v15 = *(v13 + 8);
    }

    std::string::__init_copy_ctor_external(a4, v14, v15);
    return;
  }

  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      wireless_diagnostics::google::protobuf::SimpleItoa(*(this + 28), a3, a4);
      return;
    }

    if (v8 == 2)
    {
      wireless_diagnostics::google::protobuf::SimpleItoa(*(this + 14), a3, a4);
      return;
    }

    goto LABEL_20;
  }

  if (v8 == 3)
  {
    wireless_diagnostics::google::protobuf::SimpleItoa(*(this + 28), a3, a4);
  }

  else if (v8 == 4)
  {
    wireless_diagnostics::google::protobuf::SimpleItoa(*(this + 14), a3, a4);
  }

  else
  {
    wireless_diagnostics::google::protobuf::SimpleDtoa(*(this + 14), a2, a4);
  }
}

void sub_29985A24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::FileDescriptor::CopyTo(wireless_diagnostics::google::protobuf::FileDescriptor *this, wireless_diagnostics::google::protobuf::FileDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 51) |= 1u;
  v5 = *(a2 + 2);
  v6 = MEMORY[0x29EDC9758];
  if (v5 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  v7 = std::string::operator=(v5, v4);
  v11 = *(this + 1);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    *(a2 + 51) |= 2u;
    v13 = *(a2 + 3);
    if (v13 == v6)
    {
      operator new();
    }

    v7 = std::string::operator=(v13, v11);
  }

  if (*(this + 6) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = **(*(this + 4) + 8 * v14);
      v16 = *(a2 + 11);
      v17 = *(a2 + 10);
      if (v17 >= v16)
      {
        if (v16 == *(a2 + 12))
        {
          v7 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32));
          v16 = *(a2 + 11);
        }

        *(a2 + 11) = v16 + 1;
        v19 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v7);
        v20 = *(a2 + 4);
        v21 = *(a2 + 10);
        *(a2 + 10) = v21 + 1;
        *(v20 + 8 * v21) = v19;
      }

      else
      {
        v18 = *(a2 + 4);
        *(a2 + 10) = v17 + 1;
        v19 = *(v18 + 8 * v17);
      }

      v7 = std::string::operator=(v19, v15);
      ++v14;
    }

    while (v14 < *(this + 6));
  }

  if (*(this + 10) >= 1)
  {
    v22 = 0;
    do
    {
      v23 = *(*(this + 6) + 4 * v22);
      v24 = *(a2 + 16);
      if (v24 == *(a2 + 17))
      {
        v7 = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(a2 + 7, v24 + 1);
        v24 = *(a2 + 16);
      }

      v25 = *(a2 + 7);
      *(a2 + 16) = v24 + 1;
      *(v25 + 4 * v24) = v23;
      ++v22;
    }

    while (v22 < *(this + 10));
  }

  if (*(this + 14) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = *(*(this + 8) + 4 * v26);
      v28 = *(a2 + 20);
      if (v28 == *(a2 + 21))
      {
        v7 = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(a2 + 9, v28 + 1);
        v28 = *(a2 + 20);
      }

      v29 = *(a2 + 9);
      *(a2 + 20) = v28 + 1;
      *(v29 + 4 * v28) = v27;
      ++v26;
    }

    while (v26 < *(this + 14));
  }

  if (*(this + 18) >= 1)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(this + 10);
      v33 = *(a2 + 25);
      v34 = *(a2 + 24);
      if (v34 >= v33)
      {
        if (v33 == *(a2 + 26))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 88));
          v33 = *(a2 + 25);
        }

        *(a2 + 25) = v33 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto>::New();
      }

      v35 = *(a2 + 11);
      *(a2 + 24) = v34 + 1;
      v7 = wireless_diagnostics::google::protobuf::Descriptor::CopyTo((v32 + v30), *(v35 + 8 * v34));
      ++v31;
      v30 += 120;
    }

    while (v31 < *(this + 18));
  }

  if (*(this + 22) >= 1)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(this + 12);
      v39 = *(a2 + 31);
      v40 = *(a2 + 30);
      if (v40 >= v39)
      {
        if (v39 == *(a2 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 112));
          v39 = *(a2 + 31);
        }

        *(a2 + 31) = v39 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumDescriptorProto>::New();
      }

      v41 = *(a2 + 14);
      *(a2 + 30) = v40 + 1;
      v7 = wireless_diagnostics::google::protobuf::EnumDescriptor::CopyTo((v38 + v36), *(v41 + 8 * v40));
      ++v37;
      v36 += 56;
    }

    while (v37 < *(this + 22));
  }

  if (*(this + 26) >= 1)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = *(this + 14);
      v45 = *(a2 + 37);
      v46 = *(a2 + 36);
      if (v46 >= v45)
      {
        if (v45 == *(a2 + 38))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 136));
          v45 = *(a2 + 37);
        }

        *(a2 + 37) = v45 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::ServiceDescriptorProto>::New();
      }

      v47 = *(a2 + 17);
      *(a2 + 36) = v46 + 1;
      v7 = wireless_diagnostics::google::protobuf::ServiceDescriptor::CopyTo((v44 + v42), *(v47 + 8 * v46));
      ++v43;
      v42 += 48;
    }

    while (v43 < *(this + 26));
  }

  if (*(this + 30) >= 1)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = *(this + 16);
      v51 = *(a2 + 43);
      v52 = *(a2 + 42);
      if (v52 >= v51)
      {
        if (v51 == *(a2 + 44))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 160));
          v51 = *(a2 + 43);
        }

        *(a2 + 43) = v51 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
      }

      v53 = *(a2 + 20);
      *(a2 + 42) = v52 + 1;
      v7 = wireless_diagnostics::google::protobuf::FieldDescriptor::CopyTo((v50 + v48), *(v53 + 8 * v52));
      ++v49;
      v48 += 120;
    }

    while (v49 < *(this + 30));
  }

  v54 = *(this + 17);
  result = wireless_diagnostics::google::protobuf::FileOptions::default_instance(v7, v8, v9, v10);
  if (v54 != result)
  {
    *(a2 + 51) |= 0x200u;
    if (!*(a2 + 23))
    {
      operator new();
    }

    v56 = *(this + 17);
    v57 = *(a2 + 23);

    return wireless_diagnostics::google::protobuf::FileOptions::CopyFrom(v57, v56);
  }

  return result;
}