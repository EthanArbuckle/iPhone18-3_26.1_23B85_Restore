void sub_2334A4818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::SerializeToZeroCopyStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream *a2)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v5, a2);
  v3 = wireless_diagnostics::google::protobuf::MessageLite::SerializePartialToCodedStream(this, v5);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v5);
  return v3;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::SerializePartialToZeroCopyStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream *a2)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v5, a2);
  v3 = wireless_diagnostics::google::protobuf::MessageLite::SerializePartialToCodedStream(this, v5);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v5);
  return v3;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::SerializePartialToString(uint64_t a1, uint64_t a2)
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

  wireless_diagnostics::google::protobuf::MessageLite::AppendPartialToString(a1, a2);
  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::SerializeAsString@<X0>(wireless_diagnostics::google::protobuf::MessageLite *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return wireless_diagnostics::google::protobuf::MessageLite::AppendPartialToString(this, a2);
}

void sub_2334A4988(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::SerializePartialAsString@<X0>(wireless_diagnostics::google::protobuf::MessageLite *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return wireless_diagnostics::google::protobuf::MessageLite::AppendPartialToString(this, a2);
}

void sub_2334A49D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::io::ArrayInputStream::~ArrayInputStream(wireless_diagnostics::google::protobuf::io::ArrayInputStream *this)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(this);

  JUMPOUT(0x23839FAC0);
}

BOOL wireless_diagnostics::google::protobuf::io::ArrayInputStream::Skip(wireless_diagnostics::google::protobuf::io::ArrayInputStream *this, int a2)
{
  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 89);
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v4);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 4);
  v6 = *(this + 6);
  v7 = v5 - v6;
  result = v5 - v6 >= a2;
  v9 = v6 + a2;
  if (v7 >= a2)
  {
    v5 = v9;
  }

  *(this + 6) = v5;
  *(this + 7) = 0;
  return result;
}

void sub_2334A4AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(wireless_diagnostics::google::protobuf::io::ArrayOutputStream *this)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);

  JUMPOUT(0x23839FAC0);
}

void wireless_diagnostics::google::protobuf::io::ArrayOutputStream::BackUp(wireless_diagnostics::google::protobuf::io::ArrayOutputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 133);
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 135);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v7);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 136);
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_2334A4C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *wireless_diagnostics::google::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_2848CF810;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2848CF810;
  result[1] = a2;
  return result;
}

void wireless_diagnostics::google::protobuf::io::StringOutputStream::~StringOutputStream(wireless_diagnostics::google::protobuf::io::StringOutputStream *this)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);

  JUMPOUT(0x23839FAC0);
}

uint64_t wireless_diagnostics::google::protobuf::io::StringOutputStream::Next(wireless_diagnostics::google::protobuf::io::StringOutputStream *this, void **a2, int *a3)
{
  v6 = *(this + 1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
    v9 = v7;
    v8 = (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v7 < v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v7 < 0x16)
    {
      v8 = 22;
      v9 = *(v6 + 23);
      goto LABEL_10;
    }

    v9 = *(v6 + 23);
  }

  if (2 * v7 <= 16)
  {
    v8 = 16;
  }

  else
  {
    v8 = (2 * v7);
  }

LABEL_10:
  std::string::resize(v6, v8, 0);
  v10 = *(this + 1);
  if (*(v10 + 23) < 0)
  {
    if (v10[1])
    {
      v10 = *v10;
      goto LABEL_16;
    }
  }

  else if (*(v10 + 23))
  {
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:
  *a2 = v10 + v9;
  v11 = *(this + 1);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  *a3 = v12 - v7;
  return 1;
}

void wireless_diagnostics::google::protobuf::io::StringOutputStream::BackUp(wireless_diagnostics::google::protobuf::io::StringOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 177);
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v4);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v7 = *(v5 + 23);
  }

  if (v7 < a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 178);
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (target_->size()): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v5 = *(this + 1);
    LOBYTE(v6) = *(v5 + 23);
  }

  if ((v6 & 0x80) != 0)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = v6;
  }

  std::string::resize(v5, v6 - a2, 0);
}

void sub_2334A4F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::StringOutputStream::ByteCount(wireless_diagnostics::google::protobuf::io::StringOutputStream *this)
{
  v1 = *(this + 1);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingInputStream::Skip(wireless_diagnostics::google::protobuf::io::CopyingInputStream *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4 = v1;
  v5 = 0;
  v14 = *MEMORY[0x277D85DE8];
  do
  {
    v6 = v5;
    v7 = __OFSUB__(v3, v5);
    v8 = v3 - v5;
    if ((v8 < 0) ^ v7 | (v8 == 0))
    {
      break;
    }

    v9 = v8 >= 4096 ? 4096 : v8;
    v10 = (*(*v4 + 16))(v4, v13, v9);
    v5 = (v10 + v6);
  }

  while (v10 > 0);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(uint64_t this, wireless_diagnostics::google::protobuf::io::CopyingInputStream *a2, int a3)
{
  *this = &unk_2848CF848;
  *(this + 8) = a2;
  *(this + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 40) = v3;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  if (*(this + 12))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 302);
    v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (backup_bytes_) == (0): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v4, v2);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  *(this + 11) = 0;
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x23839FAA0](result, 0x1000C8077774924);
    *(this + 4) = 0;
  }

  return result;
}

void sub_2334A5124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::Skip(wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 269);
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v4);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 17))
  {
    return 0;
  }

  v6 = *(this + 12);
  if (v6 >= a2)
  {
    *(this + 12) = v6 - a2;
    return 1;
  }

  else
  {
    v7 = (a2 - v6);
    *(this + 12) = 0;
    v8 = (*(**(this + 1) + 24))(*(this + 1), v7);
    *(this + 3) += v8;
    return v8 == v7;
  }
}

void sub_2334A5218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(uint64_t this, wireless_diagnostics::google::protobuf::io::CopyingOutputStream *a2, int a3)
{
  *this = &unk_2848CF888;
  *(this + 8) = a2;
  *(this + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = v3;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_2848CF888;
  *(this + 8) = a2;
  *(this + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = v3;
  *(this + 44) = 0;
  return this;
}

void wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *this = &unk_2848CF888;
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x23839FAA0](v3, 0x1000C8077774924);
  }

  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);

  JUMPOUT(0x23839FAC0);
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 1;
  }

  if ((*(**(this + 1) + 16))(*(this + 1), *(this + 4)))
  {
    *(this + 3) += *(this + 11);
    *(this + 11) = 0;
    return 1;
  }

  *(this + 17) = 1;
  *(this + 11) = 0;
  result = *(this + 4);
  if (result)
  {
    MEMORY[0x23839FAA0](result, 0x1000C8077774924);
    result = 0;
    *(this + 4) = 0;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::Next(wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor *this, void **a2, int *a3)
{
  if (*(this + 11) != *(this + 10) || (result = wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this), result))
  {
    wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::AllocateBufferIfNeeded(this);
    v7 = *(this + 10);
    v8 = *(this + 11);
    *a2 = (*(this + 4) + v8);
    *a3 = v7 - v8;
    *(this + 11) = *(this + 10);
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::AllocateBufferIfNeeded(uint64_t this)
{
  if (!*(this + 32))
  {
    v1 = *(this + 40);
    operator new[]();
  }

  return this;
}

void wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::BackUp(wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 346);
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v4);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 11);
  if (v5 != *(this + 10))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 347);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (buffer_used_) == (buffer_size_): ");
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, " BackUp() can only be called after Next().");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v7);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 11);
  }

  if (v5 < a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 349);
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v8, " Can't back up over more bytes than were returned by the last call to Next().");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v9);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 11);
  }

  *(this + 11) = v5 - a2;
}

void sub_2334A565C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::FreeBuffer(wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *(this + 11) = 0;
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x23839FAA0](result, 0x1000C8077774924);
    *(this + 4) = 0;
  }

  return result;
}

std::string *wireless_diagnostics::google::protobuf::StringAppendV(std::string *a1, char *__format, va_list a3)
{
  v7 = *MEMORY[0x277D85DE8];
  result = vsnprintf(__str, 0x400uLL, __format, a3);
  if (result > 1023)
  {
    operator new[]();
  }

  if ((result & 0x80000000) == 0)
  {
    result = std::string::append(a1, __str, result);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *wireless_diagnostics::google::protobuf::StringPrintf@<X0>(wireless_diagnostics::google::protobuf *this@<X0>, std::string *a2@<X8>, ...)
{
  va_start(va, a2);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return wireless_diagnostics::google::protobuf::StringAppendV(a2, this, va);
}

void sub_2334A5828(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::SStringPrintf(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::StringAppendV(a1, a2, &a9);
  return a1;
}

std::string *wireless_diagnostics::google::protobuf::StringPrintfVector@<X0>(wireless_diagnostics::google::protobuf *this@<X0>, uint64_t **a2@<X1>, std::string *a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  if (v7 >= 0x21)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(&v20, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/stubs/stringprintf.cc", 142);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(&v20, "CHECK failed: (v.size()) <= (kStringPrintfVectorMaxArgs): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "StringPrintfVector currently only supports up to ");
    v11 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, 32);
    v12 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, " arguments. ");
    v13 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "Feel free to add support for more if you need it.");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v19, v13);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v20);
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (v6 != v5)
  {
    if (v7 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7;
    }

    v15 = &v20;
    do
    {
      v16 = v5;
      if (*(v5 + 23) < 0)
      {
        v16 = *v5;
      }

      *v15 = v16;
      v15 = (v15 + 8);
      v5 += 3;
      --v14;
    }

    while (v14);
  }

  if ((v7 & 0xFFFFFFE0) == 0)
  {
    memset_pattern16(&v20 + ((8 * v7) & 0xF8), &off_2789D8270, ((-8 - 8 * v7) & 0xF8) + 8);
  }

  result = wireless_diagnostics::google::protobuf::StringPrintf(this, a3, v20, v21, v22, v23, v24, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1));
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::SetTotalBytesLimit(uint64_t this, int a2, int a3)
{
  v3 = *(this + 24);
  v4 = *(this + 16);
  v5 = *(this + 40);
  v6 = *(this + 44);
  v7 = v3 - v6 + *(this + 8) - v4;
  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (a3 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = a3;
  }

  *(this + 48) = v7;
  *(this + 52) = v8;
  v9 = v4 + v6;
  *(this + 16) = v9;
  if (v7 >= v5)
  {
    v7 = v5;
  }

  v10 = __OFSUB__(v3, v7);
  v11 = v3 - v7;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    v11 = 0;
  }

  else
  {
    *(this + 16) = v9 - v11;
  }

  *(this + 44) = v11;
  return this;
}

void wireless_diagnostics::google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/coded_stream.cc", 172);
  v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, "A protocol message was rejected because it was too big (more than ");
  v3 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v2, *(this + 12));
  v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v5, v4);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
}

void sub_2334A5BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Slow(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v4 = 0;
  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v4);
  if (result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::Skip(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(this + 4);
    v4 = a2 - v3;
    if (a2 <= v3)
    {
      break;
    }

    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::Refresh(this);
    a2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  *(this + 1) += a2;
  *(this + 4) = v3 - a2;
  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::GetDirectBufferPointer(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, void **a2, int *a3)
{
  v6 = *(this + 4);
  if (!v6)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  *a2 = *(this + 1);
  *a3 = v6;
  return 1;
}

_BYTE *wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = this | 0x80;
  if (this < 0x80)
  {
    *a2 = this;
    v3 = 1;
  }

  else
  {
    a2[1] = (this >> 7) | 0x80;
    if (this < 0x4000)
    {
      a2[1] = this >> 7;
      v3 = 2;
    }

    else
    {
      a2[2] = (this >> 14) | 0x80;
      if (this < 0x200000)
      {
        a2[2] = this >> 14;
        v3 = 3;
      }

      else
      {
        a2[3] = (this >> 21) | 0x80;
        if (this >> 28)
        {
          a2[4] = this >> 28;
          v3 = 5;
        }

        else
        {
          a2[3] = this >> 21;
          v3 = 4;
        }
      }
    }
  }

  return &a2[v3];
}

uint64_t wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::CopyingFileInputStream(uint64_t this, int a2)
{
  *this = &unk_2848CFA88;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_2848CFA88;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  return this;
}

BOOL wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  if (*(this + 13) == 1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 124);
    v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !is_closed_: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v5, v2);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v3)
  {
    *(this + 4) = *__error();
  }

  return v3 == 0;
}

void sub_2334A5E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::anonymous namespace::close_no_eintr(wireless_diagnostics::google::protobuf::io::_anonymous_namespace_ *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while ((v2 & 0x80000000) != 0 && *__error() == 4);
  return v2;
}

uint64_t wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::Skip(wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream *this, uint64_t a2)
{
  if (*(this + 13) == 1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 155);
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: !is_closed_: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v6, v4);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  if ((*(this + 20) & 1) != 0 || lseek(*(this + 2), a2, 1) == -1)
  {
    *(this + 20) = 1;
    return wireless_diagnostics::google::protobuf::io::CopyingInputStream::Skip(this);
  }

  return a2;
}

void sub_2334A5FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::FileOutputStream *wireless_diagnostics::google::protobuf::io::FileOutputStream::FileOutputStream(wireless_diagnostics::google::protobuf::io::FileOutputStream *this, int a2, int a3)
{
  *this = &unk_2848CFAB8;
  *(this + 1) = &unk_2848CFAF0;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(this + 32, (this + 8), a3);
  return this;
}

void sub_2334A6090(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::CopyingFileOutputStream(uint64_t this, int a2)
{
  *this = &unk_2848CFAF0;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_2848CFAF0;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  return this;
}

void wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(wireless_diagnostics::google::protobuf::io::FileOutputStream *this)
{
  *this = &unk_2848CFAB8;
  v2 = (this + 32);
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 32));
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(v2);
  wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 8));

  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(this);

  JUMPOUT(0x23839FAC0);
}

BOOL wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  if (*(this + 13) == 1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 222);
    v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !is_closed_: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v5, v2);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v3)
  {
    *(this + 4) = *__error();
  }

  return v3 == 0;
}

void sub_2334A6260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  *this = &unk_2848CFAF0;
  if (*(this + 12) == 1 && !wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(this))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 216);
    v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v2, v3);
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v5, v4);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(this);

  JUMPOUT(0x23839FAC0);
}

BOOL wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Write(wireless_diagnostics::google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this, char *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 238);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: !is_closed_: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v13, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a3 < 1)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    while (1)
    {
      v8 = write(*(this + 2), &a2[v7], a3 - v7);
      v9 = v8;
      if (v8 < 0)
      {
        break;
      }

      result = v8 != 0;
      v7 += v9;
      if (v9)
      {
        v10 = v7 < a3;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        return result;
      }
    }
  }

  while (*__error() == 4);
  v11 = __error();
  result = 0;
  *(this + 4) = *v11;
  return result;
}

void sub_2334A64B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *wireless_diagnostics::google::protobuf::io::IstreamInputStream::IstreamInputStream(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_2848CFB18;
  a1[1] = &unk_2848CFB58;
  a1[2] = a2;
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void sub_2334A6544(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(v1);
  _Unwind_Resume(a1);
}

void *wireless_diagnostics::google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::CopyingIstreamInputStream(void *result, uint64_t a2)
{
  *result = &unk_2848CFB58;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2848CFB58;
  result[1] = a2;
  return result;
}

void wireless_diagnostics::google::protobuf::io::IstreamInputStream::~IstreamInputStream(wireless_diagnostics::google::protobuf::io::IstreamInputStream *this)
{
  *this = &unk_2848CFB18;
  v2 = (this + 8);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 24));
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v2);

  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::IstreamInputStream::~IstreamInputStream(this);

  JUMPOUT(0x23839FAC0);
}

void wireless_diagnostics::google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::~CopyingIstreamInputStream(wireless_diagnostics::google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream *this)
{
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(this);

  JUMPOUT(0x23839FAC0);
}

uint64_t wireless_diagnostics::google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::Read(wireless_diagnostics::google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream *this, void *a2)
{
  v3 = *(this + 1);
  std::istream::read();
  v4 = *(this + 1);
  result = *(v4 + 8);
  if (!result)
  {
    v6 = *(v4 + *(*v4 - 24) + 32);
    v7 = v6 & 5;
    v8 = v6 & 2;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *wireless_diagnostics::google::protobuf::io::OstreamOutputStream::OstreamOutputStream(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_2848CFB88;
  a1[1] = &unk_2848CFBC0;
  a1[2] = a2;
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void sub_2334A6788(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void *wireless_diagnostics::google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::CopyingOstreamOutputStream(void *result, uint64_t a2)
{
  *result = &unk_2848CFBC0;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2848CFBC0;
  result[1] = a2;
  return result;
}

void wireless_diagnostics::google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(wireless_diagnostics::google::protobuf::io::OstreamOutputStream *this)
{
  *this = &unk_2848CFB88;
  v2 = (this + 24);
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 24));
  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(v2);
  wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream((this + 8));

  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(this);

  JUMPOUT(0x23839FAC0);
}

void wireless_diagnostics::google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::~CopyingOstreamOutputStream(wireless_diagnostics::google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream *this)
{
  wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(this);

  JUMPOUT(0x23839FAC0);
}

BOOL wireless_diagnostics::google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::Write(wireless_diagnostics::google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream *this, const void *a2)
{
  v3 = *(this + 1);
  std::ostream::write();
  return *(*(this + 1) + *(**(this + 1) - 24) + 32) == 0;
}

uint64_t wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream::ConcatenatingInputStream(uint64_t this, wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream *const *a2, int a3)
{
  *this = &unk_2848CFBE8;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2848CFBE8;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 24) = 0;
  return this;
}

void wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream::~ConcatenatingInputStream(wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream *this)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(this);

  JUMPOUT(0x23839FAC0);
}

uint64_t wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream::Next(wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream *this, const void **a2, int *a3)
{
  if (*(this + 4) < 1)
  {
    return 0;
  }

  v6 = *(this + 1);
  do
  {
    v7 = (*(**v6 + 16))(*v6, a2, a3);
    if (v7)
    {
      break;
    }

    *(this + 3) += (*(***(this + 1) + 40))(**(this + 1));
    v6 = (*(this + 1) + 8);
    *(this + 1) = v6;
    v8 = *(this + 4);
    v9 = __OFSUB__(v8--, 1);
    *(this + 4) = v8;
  }

  while (!((v8 < 0) ^ v9 | (v8 == 0)));
  return v7;
}

void wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream::BackUp(wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream *this)
{
  if (*(this + 4) < 1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v4, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 378);
    v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v4, "Can't BackUp() after failed Next().");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v3, v2);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  }

  else
  {
    v1 = *(***(this + 1) + 24);

    v1();
  }
}

void sub_2334A6B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream::Skip(wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream *this, uint64_t a2)
{
  if (*(this + 4) < 1)
  {
    return 0;
  }

  v4 = *(this + 1);
  do
  {
    v5 = (*(**v4 + 40))();
    v6 = (*(***(this + 1) + 32))(**(this + 1), a2);
    if (v6)
    {
      break;
    }

    v7 = (*(***(this + 1) + 40))(**(this + 1));
    a2 = (v5 + a2 - v7);
    *(this + 3) += v7;
    v4 = *(this + 1) + 8;
    *(this + 1) = v4;
    v8 = *(this + 4);
    v9 = __OFSUB__(v8--, 1);
    *(this + 4) = v8;
  }

  while (!((v8 < 0) ^ v9 | (v8 == 0)));
  return v6;
}

uint64_t wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream::ByteCount(wireless_diagnostics::google::protobuf::io::ConcatenatingInputStream *this)
{
  v1 = *(this + 3);
  if (*(this + 4))
  {
    v1 += (*(***(this + 1) + 40))(**(this + 1));
  }

  return v1;
}

void *wireless_diagnostics::google::protobuf::io::LimitingInputStream::LimitingInputStream(void *this, wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream *a2, uint64_t a3)
{
  *this = &unk_2848CFC28;
  this[1] = a2;
  this[2] = a3;
  return this;
}

{
  *this = &unk_2848CFC28;
  this[1] = a2;
  this[2] = a3;
  return this;
}

void wireless_diagnostics::google::protobuf::io::LimitingInputStream::~LimitingInputStream(wireless_diagnostics::google::protobuf::io::LimitingInputStream *this)
{
  *this = &unk_2848CFC28;
  if ((*(this + 2) & 0x8000000000000000) != 0)
  {
    (*(**(this + 1) + 24))(*(this + 1), -*(this + 4));
  }

  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::LimitingInputStream::~LimitingInputStream(this);

  JUMPOUT(0x23839FAC0);
}

uint64_t wireless_diagnostics::google::protobuf::io::LimitingInputStream::Next(wireless_diagnostics::google::protobuf::io::LimitingInputStream *this, const void **a2, int *a3)
{
  if (*(this + 2) < 1)
  {
    return 0;
  }

  result = (*(**(this + 1) + 16))(*(this + 1), a2);
  if (result)
  {
    v6 = *a3;
    v7 = *(this + 2) - v6;
    *(this + 2) = v7;
    if (v7 < 0)
    {
      *a3 = v6 + v7;
    }

    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::LimitingInputStream::BackUp(wireless_diagnostics::google::protobuf::io::LimitingInputStream *this, uint64_t a2)
{
  v2 = a2;
  v6 = this + 8;
  v4 = *(this + 1);
  v5 = *(v6 + 1);
  if (v5 < 0)
  {
    v8 = a2;
    result = (*(*v4 + 24))(v4, (a2 - v5));
  }

  else
  {
    result = (*(*v4 + 24))(v4, a2);
    v8 = *(this + 2) + v2;
  }

  *(this + 2) = v8;
  return result;
}

BOOL wireless_diagnostics::google::protobuf::io::LimitingInputStream::Skip(wireless_diagnostics::google::protobuf::io::LimitingInputStream *this, uint64_t a2)
{
  v4 = *(this + 2);
  v5 = v4 >= a2;
  if (v4 < a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      (*(**(this + 1) + 32))(*(this + 1));
      v6 = 0;
      goto LABEL_6;
    }

    return 0;
  }

  if (!(*(**(this + 1) + 32))(*(this + 1), a2))
  {
    return 0;
  }

  v6 = *(this + 2) - a2;
LABEL_6:
  *(this + 2) = v6;
  return v5;
}

uint64_t wireless_diagnostics::google::protobuf::io::LimitingInputStream::ByteCount(wireless_diagnostics::google::protobuf::io::LimitingInputStream *this)
{
  v2 = *(this + 2);
  result = (*(**(this + 1) + 40))(*(this + 1));
  if (v2 < 0)
  {
    result += *(this + 2);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  result = 0;
  v5 = a2 & 7;
  if (v5 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      if (v5 == 1)
      {
        *v15 = 0;
        return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v15);
      }
    }

    else
    {
      *v15 = 0;
      v14 = *(this + 1);
      if (v14 >= *(this + 2) || *v14 < 0)
      {
        return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v15);
      }

      else
      {
        *(this + 1) = v14 + 1;
        return 1;
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 2u:
        v15[0] = 0;
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v15);
          if (!result)
          {
            return result;
          }

          v7 = v15[0];
        }

        else
        {
          v15[0] = *v6;
          *(this + 1) = v6 + 1;
        }

        return wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, v7);
      case 3u:
        v8 = *(this + 14);
        v9 = *(this + 15);
        *(this + 14) = v8 + 1;
        if (v8 >= v9)
        {
          return 0;
        }

        else
        {
          v10 = a2;
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipMessage(this, a2, a3);
          if (result)
          {
            v11 = *(this + 14);
            v12 = __OFSUB__(v11, 1);
            v13 = v11 - 1;
            if (v13 < 0 == v12)
            {
              *(this + 14) = v13;
            }

            return *(this + 8) == (v10 & 0xFFFFFFF8 | 4);
          }
        }

        break;
      case 5u:
        v15[0] = 0;
        return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v15);
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipMessage(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    v4 = *(this + 1);
    if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v4 + 1;
    }

    if (TagFallback)
    {
      v6 = (TagFallback & 7) == 4;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
  }

  while (!v6 && (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return v7;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int (*a2)(uint64_t), uint64_t a3)
{
  v14 = 0;
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
    if (!result)
    {
      return result;
    }

    v7 = v14;
  }

  else
  {
    v14 = *v6;
    *(this + 1) = v6 + 1;
  }

  v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v7);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v15 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v11 = v15;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (a2(v11))
      {
        v12 = *(a3 + 8);
        if (v12 == *(a3 + 12))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(a3, v12 + 1);
          v12 = *(a3 + 8);
        }

        v13 = *a3;
        *(a3 + 8) = v12 + 1;
        *(v13 + 4 * v12) = v11;
      }
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v9);
  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt64(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, (2 * a2) ^ (a2 >> 63));
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 5);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, a2);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSFixed32(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 5);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, a2);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSFixed64(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 1);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, a2);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteGroup(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, uint64_t a2, const wireless_diagnostics::google::protobuf::MessageLite *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v6 = this;
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 3);
  (*(*a2 + 80))(a2, a3);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * v6) | 4u);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteGroupMaybeToArray(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, uint64_t a2, const wireless_diagnostics::google::protobuf::MessageLite *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 3);
  v7 = (*(*a2 + 96))(a2);
  v8 = *(a3 + 4);
  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v10 < 0 != v9 || (v11 = *(a3 + 1), *(a3 + 1) = v11 + v7, *(a3 + 4) = v10, !v11))
  {
    (*(*a2 + 80))(a2, a3);
  }

  else
  {
    (*(*a2 + 88))(a2);
  }

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v6 | 4u);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, uint64_t a2, const wireless_diagnostics::google::protobuf::MessageLite *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 2);
  v6 = (*(*a2 + 96))(a2);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v6);
  v7 = *(a3 + 4);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if (v9 < 0 != v8 || (v10 = *(a3 + 1), *(a3 + 1) = v10 + v6, *(a3 + 4) = v9, !v10))
  {
    v13 = *(*a2 + 80);

    return v13(a2, a3);
  }

  else
  {
    v11 = *(*a2 + 88);

    return v11(a2);
  }
}

double wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = *a1;
    v3 = *(a1 + 4);
    *a1 = *a2;
    result = *(a2 + 1);
    *a2 = v2;
    v5 = a1[1];
    *(a1 + 1) = result;
    *(a1 + 4) = *(a2 + 4);
    a2[1] = v5;
    *(a2 + 4) = v3;
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::VerifyVersion(wireless_diagnostics::google::protobuf::internal *this, wireless_diagnostics::google::protobuf::internal *a2, const std::string::value_type *a3, const char *a4)
{
  if (a2 > 2005000)
  {
    v21 = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/stubs/common.cc";
    v23 = 62;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    wireless_diagnostics::google::protobuf::internal::VersionString(a2, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v7 = &v18;
    }

    else
    {
      v7 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v8 = v20;
    }

    else
    {
      v8 = v19;
    }

    std::string::append(&v24, v7, v8);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    wireless_diagnostics::google::protobuf::internal::VersionString(0x1E9808, &__p);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v10 = v17;
    }

    else
    {
      v10 = v16;
    }

    std::string::append(&v24, p_p, v10);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    wireless_diagnostics::google::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (this < 2005000)
  {
    v21 = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/stubs/common.cc";
    v23 = 73;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    wireless_diagnostics::google::protobuf::internal::VersionString(this, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v11 = &v18;
    }

    else
    {
      v11 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v12 = v20;
    }

    else
    {
      v12 = v19;
    }

    std::string::append(&v24, v11, v12);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    wireless_diagnostics::google::protobuf::internal::VersionString(0x1E9808, &__p);
    if ((v17 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v16;
    }

    std::string::append(&v24, v13, v14);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    wireless_diagnostics::google::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2334A79AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

std::string *wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(std::string *a1, const std::string::value_type *a2)
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

unint64_t wireless_diagnostics::google::protobuf::internal::VersionString@<X0>(wireless_diagnostics::google::protobuf::internal *this@<X0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", this / 1000000, this / 1000 % 1000, this % 1000);
  __str[127] = 0;
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::DefaultLogHandler(int a1, const char *a2, int a3, uint64_t a4)
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

  fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", (&wireless_diagnostics::google::protobuf::internal::DefaultLogHandler(wireless_diagnostics::google::protobuf::LogLevel,char const*,int,std::string const&)::level_names)[a1], a2, a3, v5);
  v6 = *v4;

  return fflush(v6);
}

uint64_t wireless_diagnostics::google::protobuf::internal::DeleteLogSilencerCount(wireless_diagnostics::google::protobuf::internal *this)
{
  result = wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_;
  if (wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::~Mutex(wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_);
    result = MEMORY[0x23839FAC0]();
  }

  wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_ = 0;
  return result;
}

atomic_ullong *wireless_diagnostics::google::protobuf::internal::InitLogSilencerCountOnce(wireless_diagnostics::google::protobuf::internal *this)
{
  v3 = wireless_diagnostics::google::protobuf::internal::log_silencer_count_init_;
  __dmb(0xBu);
  if (v3 != 2)
  {
    v7 = v1;
    v8 = v2;
    v5[0] = &unk_2848CFE18;
    v5[1] = wireless_diagnostics::google::protobuf::internal::InitLogSilencerCount;
    v6 = 0;
    return wireless_diagnostics::google::protobuf::GoogleOnceInitImpl(&wireless_diagnostics::google::protobuf::internal::log_silencer_count_init_, v5);
  }

  return result;
}

std::string *wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(std::string *a1, std::string::value_type a2)
{
  v6 = *MEMORY[0x277D85DE8];
  __s[0] = a2;
  __s[1] = 0;
  __s[127] = 0;
  std::string::append(a1 + 1, __s);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(std::string *a1, int a2)
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

std::string *wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(std::string *a1, uint64_t a2)
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

std::string *wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(std::string *a1, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%g", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void wireless_diagnostics::google::protobuf::internal::LogMessage::Finish(wireless_diagnostics::google::protobuf::internal::LogMessage *this)
{
  if (*this == 3)
  {
    v2 = 3;
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::InitLogSilencerCountOnce(this);
    v3 = wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_;
    wireless_diagnostics::google::protobuf::internal::Mutex::Lock(wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_);
    v4 = wireless_diagnostics::google::protobuf::internal::log_silencer_count_;
    wireless_diagnostics::google::protobuf::internal::Mutex::Unlock(v3);
    if (v4 > 0)
    {
      goto LABEL_6;
    }

    v2 = *this;
  }

  wireless_diagnostics::google::protobuf::internal::log_handler_(v2, *(this + 1), *(this + 4), this + 24);
LABEL_6:
  if (*this == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    wireless_diagnostics::google::protobuf::FatalException::FatalException(exception, *(this + 1), *(this + 4), this + 24);
  }
}

uint64_t (*wireless_diagnostics::google::protobuf::SetLogHandler(uint64_t (*a1)()))()
{
  v1 = wireless_diagnostics::google::protobuf::internal::log_handler_;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = wireless_diagnostics::google::protobuf::internal::NullLogHandler;
  }

  wireless_diagnostics::google::protobuf::internal::log_handler_ = v2;
  if (v1 == wireless_diagnostics::google::protobuf::internal::NullLogHandler)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

wireless_diagnostics::google::protobuf::LogSilencer *wireless_diagnostics::google::protobuf::LogSilencer::LogSilencer(wireless_diagnostics::google::protobuf::LogSilencer *this)
{
  wireless_diagnostics::google::protobuf::internal::InitLogSilencerCountOnce(this);
  v2 = wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_;
  wireless_diagnostics::google::protobuf::internal::Mutex::Lock(wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_);
  ++wireless_diagnostics::google::protobuf::internal::log_silencer_count_;
  wireless_diagnostics::google::protobuf::internal::Mutex::Unlock(v2);
  return this;
}

void wireless_diagnostics::google::protobuf::LogSilencer::~LogSilencer(wireless_diagnostics::google::protobuf::LogSilencer *this)
{
  wireless_diagnostics::google::protobuf::internal::InitLogSilencerCountOnce(this);
  v1 = wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_;
  wireless_diagnostics::google::protobuf::internal::Mutex::Lock(wireless_diagnostics::google::protobuf::internal::log_silencer_count_mutex_);
  --wireless_diagnostics::google::protobuf::internal::log_silencer_count_;
  wireless_diagnostics::google::protobuf::internal::Mutex::Unlock(v1);
}

void wireless_diagnostics::google::protobuf::internal::Mutex::~Mutex(pthread_mutex_t **this)
{
  pthread_mutex_destroy(*this);
  if (*this)
  {
    MEMORY[0x23839FAC0](*this, 0x1000C40FA0F61DDLL);
  }
}

void wireless_diagnostics::google::protobuf::ShutdownProtobufLibrary(wireless_diagnostics::google::protobuf *this)
{
  v1 = wireless_diagnostics::google::protobuf::internal::shutdown_functions_init;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v5[0] = &unk_2848CFE18;
    v5[1] = wireless_diagnostics::google::protobuf::internal::InitShutdownFunctions;
    v6 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl(&wireless_diagnostics::google::protobuf::internal::shutdown_functions_init, v5);
  }

  v2 = wireless_diagnostics::google::protobuf::internal::shutdown_functions;
  if (wireless_diagnostics::google::protobuf::internal::shutdown_functions)
  {
    v3 = *wireless_diagnostics::google::protobuf::internal::shutdown_functions;
    if (*(wireless_diagnostics::google::protobuf::internal::shutdown_functions + 8) != *wireless_diagnostics::google::protobuf::internal::shutdown_functions)
    {
      v4 = 0;
      do
      {
        v3[v4++]();
        v2 = wireless_diagnostics::google::protobuf::internal::shutdown_functions;
        v3 = *wireless_diagnostics::google::protobuf::internal::shutdown_functions;
      }

      while (v4 < (v2[1] - *v2) >> 3);
    }

    if (v3)
    {
      v2[1] = v3;
      operator delete(v3);
    }

    MEMORY[0x23839FAC0](v2, 0x80C40D6874129);
    wireless_diagnostics::google::protobuf::internal::shutdown_functions = 0;
    if (wireless_diagnostics::google::protobuf::internal::shutdown_functions_mutex)
    {
      wireless_diagnostics::google::protobuf::internal::Mutex::~Mutex(wireless_diagnostics::google::protobuf::internal::shutdown_functions_mutex);
      MEMORY[0x23839FAC0]();
    }

    wireless_diagnostics::google::protobuf::internal::shutdown_functions_mutex = 0;
  }
}

void wireless_diagnostics::google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_2848CFDB8;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  wireless_diagnostics::google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x23839FAC0);
}

uint64_t wireless_diagnostics::google::protobuf::FatalException::what(wireless_diagnostics::google::protobuf::FatalException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_2848CFDB8;
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2789D8268, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
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

void operator new()
{
    ;
  }
}