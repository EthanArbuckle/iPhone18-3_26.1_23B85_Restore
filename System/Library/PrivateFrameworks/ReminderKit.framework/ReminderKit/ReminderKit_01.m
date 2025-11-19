void sub_19A1C7D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::ParagraphStyle::~ParagraphStyle(va);

  _Unwind_Resume(a1);
}

void sub_19A1C8070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::ParagraphStyle::~ParagraphStyle(va);
  _Unwind_Resume(a1);
}

CGColorSpaceRef ___Z22TSUDeviceRGBColorSpacev_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  TSUDeviceRGBColorSpace(void)::sDeviceRGBColorSpace = result;
  return result;
}

void sub_19A1C9E98(_Unwind_Exception *a1)
{
  MEMORY[0x19A8FD070](v7, 0x10B3C400074EEDFLL);

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1CA384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New()
{
  operator new();
}

{
  operator new();
}

void sub_19A1CAF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1CCE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1CD4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1CD5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1CD764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_19A1CD874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v12, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_19A1CE724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_19A1CE864(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_19A1CEC84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_19A1CEE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

void sub_19A1CF1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v11, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_19A1D0548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_19A1D16B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

void sub_19A1D1D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a11 = &a18;
  std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSDictionary * {__strong}>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    v5 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(v3 + 24) = v5;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {

    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSDictionary * {__strong}>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>>(a1, v6);
  }

  v9 = 32 * v5;
  v16 = 0;
  v17 = 32 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 2);
  *(v9 + 16) = *(a2 + 4);
  v11 = a2[3];
  a2[3] = 0;
  *(v9 + 24) = v11;
  v18 = (32 * v5 + 32);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(a1, v3, v4, 0);
  v12 = *a1;
  *a1 = 0;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(&v16);
  return v15;
}

void sub_19A1D2348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      *(a4 + 8) = *(v4 + 2);
      *(a4 + 16) = *(v4 + 4);
      v6 = v4[3];
      v4[3] = 0;
      *(a4 + 24) = v6;
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 32);
      v6 -= 32;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__assign_with_size[abi:ne200100]<std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    while (v6 != a3)
    {
      std::pair<TopoIDRange,NSDictionary * {__strong}>::operator=[abi:ne200100](v8, v6);
      v6 += 32;
      v8 += 32;
    }

    std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        std::pair<TopoIDRange,NSDictionary * {__strong}>::operator=[abi:ne200100](v8, v15);
        v15 += 32;
        v8 += 32;
        v14 -= 32;
      }

      while (v14);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(a1, v6 + v13, a3, v12);
  }
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>>(a1, a2);
  }

  std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v12;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      *(v4 + 16) = *(v6 + 16);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v7 += 32;
      v4 = v7;
    }

    while (v6 != a3);
    v12 = v7;
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v7;
}

uint64_t std::pair<TopoIDRange,NSDictionary * {__strong}>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  objc_storeStrong((a1 + 24), *(a2 + 24));
  return a1;
}

void sub_19A1D2B58(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);

  CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(va);
  _Unwind_Resume(a1);
}

void sub_19A1D2DD0(_Unwind_Exception *a1)
{
  MEMORY[0x19A8FD070](v2, 0x10B3C406C843DA2);

  _Unwind_Resume(a1);
}

void sub_19A1D3108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = v10;
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_19A1D3284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x10B3C40E3C8ABF7);

  _Unwind_Resume(a1);
}

void google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New()
{
  operator new();
}

{
  operator new();
}

uint64_t std::vector<TopoSubstring *>::__init_with_size[abi:ne200100]<TopoSubstring * const*,TopoSubstring * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TopoSubstring *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19A1D46D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void setPropertyIMP(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v5 = a3;
  v6 = [CRObject keyFromSelector:a2];
  v7 = [v11 fields];
  v8 = [v7 objectForKey:v6];

  if (objc_opt_respondsToSelector())
  {
    [v8 setContents:v5];
  }

  else
  {
    v9 = +[CRConstant constant];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      [v11 setFieldKey:v6 value:v5];
    }
  }
}

id propertyIMP(void *a1, const char *a2)
{
  v3 = [a1 fields];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 objectForKey:v4];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 contents];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

void sub_19A1D6BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_19A1D76FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_19A1D7B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::Font::~Font(va);

  _Unwind_Resume(a1);
}

void sub_19A1D7E0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::Font::~Font(va);
  _Unwind_Resume(a1);
}

void sub_19A1D8008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

void sub_19A1D8144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v11, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_19A1D8324(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_19A1D897C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  topotext::String::~String(&a9);

  _Unwind_Resume(a1);
}

void sub_19A1D9288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a23);

  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<TopoSubstring *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(result, a2);
    }

    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19A1D9B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x19A8FD070](v9, 0x1093C4020A6E6BFLL);

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_19A1D9FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va1);
  v10 = *(v8 - 112);
  if (v10)
  {
    *(v8 - 104) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_19A1DA108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  topotext::String::~String(&a9);

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1DA1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Get(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 664);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 665);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *a1 + 4 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 664);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 665);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *a1 + 4 * a2;
}

void sub_19A1DA2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::RepeatedField<unsigned int>::Reserve(uint64_t *result, int a2)
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

void sub_19A1DA53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x1093C405ACC521ELL);

  _Unwind_Resume(a1);
}

void sub_19A1DAEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

void sub_19A1DB038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v11, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_19A1DB218(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_19A1DB424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSAttributedString * {__strong}>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    v5 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(v3 + 24) = v5;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSAttributedString * {__strong}>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>>(a1, v6);
  }

  v9 = 32 * v5;
  v16 = 0;
  v17 = 32 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 2);
  *(v9 + 16) = *(a2 + 4);
  v11 = a2[3];
  a2[3] = 0;
  *(v9 + 24) = v11;
  v18 = (32 * v5 + 32);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>(a1, v3, v4, 0);
  v12 = *a1;
  *a1 = 0;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(&v16);
  return v15;
}

void sub_19A1DD690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      *(a4 + 8) = *(v4 + 2);
      *(a4 + 16) = *(v4 + 4);
      v6 = v4[3];
      v4[3] = 0;
      *(a4 + 24) = v6;
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_19A1DF534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1E006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 56) = &a15;
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100]((v17 - 56));

  _Unwind_Resume(a1);
}

void std::vector<TopoIDRange>::__assign_with_size[abi:ne200100]<TopoIDRange*,TopoIDRange*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<TopoIDRange>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TopoIDRange>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<TopoIDRange *,TopoIDRange *,TopoIDRange *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 24);
        v15 -= 24;
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<TopoIDRange *,TopoIDRange *,TopoIDRange *>(&v17, a2, a2 + v11, v8);
    v12 = (*(a1 + 8) - *a1) >> 3;
    std::vector<TopoIDRange>::__construct_at_end<TopoIDRange*,TopoIDRange*>(a1, a2 + v11, a3);
  }
}

void *std::vector<TopoIDRange>::__construct_at_end<TopoIDRange*,TopoIDRange*>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      result = *v6;
      *v4 = result;
      *(v4 + 8) = *(v6 + 8);
      *(v4 + 16) = *(v6 + 16);
      v6 += 24;
      v4 += 24;
    }

    while (v6 != a3);
  }

  v3[1] = v4;
  return result;
}

void std::vector<TopoIDRange>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 3);
        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<TopoIDRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TopoIDRange>>(a1, a2);
  }

  std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<TopoIDRange *,TopoIDRange *,TopoIDRange *>(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      *(location + 2) = *(v5 + 8);
      *(location + 4) = *(v5 + 16);
      v5 += 24;
      location += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

atomic_ullong *google::protobuf::GoogleOnceInitImpl(atomic_ullong *result, uint64_t a2)
{
  v2 = *result;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3 = result;
    do
    {
      v4 = 0;
      atomic_compare_exchange_strong(result, &v4, 1uLL);
      if (!v4)
      {
        result = (*(*a2 + 16))(a2);
        __dmb(0xBu);
        *v3 = 2;
        return result;
      }
    }

    while (!*result);
    if (*result == 1)
    {
      do
      {
        result = sched_yield();
        v5 = *v3;
        __dmb(0xBu);
      }

      while (v5 == 1);
    }
  }

  return result;
}

uint64_t google::protobuf::MessageLite::ParseFromArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  v7[0] = 0;
  v7[1] = a2;
  v7[2] = &a2[a3];
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = a3;
  v12 = xmmword_19A231410;
  v13 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  if (!(*(*this + 64))(this, v7))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (((*(*this + 40))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 2, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/message_lite.cc", 123);
    v5 = google::protobuf::internal::LogMessage::operator<<(v18, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v16, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    goto LABEL_7;
  }

  v4 = v10;
LABEL_8:
  google::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v4 & 1;
}

void sub_19A1E203C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::MessageLite::SerializeWithCachedSizesToArray(google::protobuf::MessageLite *this, unsigned __int8 *a2)
{
  v4 = (*(*this + 96))(this);
  google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v10, a2, v4, -1);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v9, v10);
  (*(*this + 80))(this, v9);
  if (v9[24] == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/message_lite.cc", 224);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !coded_out.HadError(): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v9);
  google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v10);
  return &a2[v4];
}

void sub_19A1E2184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va1);
  google::protobuf::io::ArrayOutputStream::~ArrayOutputStream((v3 - 64));
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, a1);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  std::string::append(a3, p_p, v7);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 48))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

  std::string::append(a3, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_19A1E22FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void google::protobuf::anonymous namespace::ByteSizeConsistencyError(google::protobuf::_anonymous_namespace_ *this, int a2, int a3)
{
  v4 = this;
  if (this != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/message_lite.cc", 63);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Protocol message was modified concurrently during serialization.");
    google::protobuf::internal::LogFinisher::operator=(&v10, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a3 != v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/message_lite.cc", 65);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of the message.");
    google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/message_lite.cc", 69);
  v9 = google::protobuf::internal::LogMessage::operator<<(v11, "This shouldn't be called if all the sizes are equal.");
  google::protobuf::internal::LogFinisher::operator=(&v10, v9);
  google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
}

void sub_19A1E2444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToArray(google::protobuf::MessageLite *this, void *a2, int a3)
{
  if (((*(*this + 40))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/message_lite.cc", 301);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: IsInitialized(): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v9, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToArray(this, a2, a3);
}

void sub_19A1E254C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializePartialToArray(google::protobuf::MessageLite *this, void *a2, int a3)
{
  v6 = (*(*this + 72))(this);
  if (v6 <= a3)
  {
    v7 = (*(*this + 88))(this, a2) - a2;
    if (v7 != v6)
    {
      v8 = (*(*this + 72))(this);
    }
  }

  return v6 <= a3;
}

uint64_t google::protobuf::io::ArrayOutputStream::ArrayOutputStream(uint64_t this, void *a2, int a3, int a4)
{
  *this = &unk_1F0D66320;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

void google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(google::protobuf::io::ArrayOutputStream *this)
{
  TTBoundedCheckedCastNSUIntegerToUInt32(this);

  JUMPOUT(0x19A8FD070);
}

BOOL google::protobuf::io::ArrayOutputStream::Next(google::protobuf::io::ArrayOutputStream *this, void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
  }

  return v3 < v4;
}

void google::protobuf::io::ArrayOutputStream::BackUp(google::protobuf::io::ArrayOutputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 136);
    v5 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v9, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 138);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v7);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 139);
    v8 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_19A1E282C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_1F0D66368;
  result[1] = a2;
  return result;
}

void google::protobuf::io::StringOutputStream::~StringOutputStream(google::protobuf::io::StringOutputStream *this)
{
  TTBoundedCheckedCastNSUIntegerToUInt32(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t google::protobuf::io::StringOutputStream::Next(google::protobuf::io::StringOutputStream *this, void **a2, int *a3)
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
      goto LABEL_11;
    }

    if (v7 >= 0x40000000)
    {
      google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 170);
      v10 = google::protobuf::internal::LogMessage::operator<<(v17, "Cannot allocate buffer larger than kint32max for ");
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, "StringOutputStream.");
      google::protobuf::internal::LogFinisher::operator=(&v16, v11);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
      return 0;
    }
  }

  else
  {
    if (v7 < 0x16)
    {
      v8 = 22;
      v9 = *(v6 + 23);
      goto LABEL_11;
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

LABEL_11:
  std::string::resize(v6, v8, 0);
  v13 = *(this + 1);
  if (*(v13 + 23) < 0)
  {
    if (!v13[1])
    {
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    v13 = *v13;
  }

  else if (!*(v13 + 23))
  {
    goto LABEL_16;
  }

LABEL_17:
  *a2 = v13 + v9;
  v14 = *(this + 1);
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v15 = *(v14 + 8);
  }

  *a3 = v15 - v7;
  return 1;
}

void sub_19A1E29F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::StringOutputStream::BackUp(google::protobuf::io::StringOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 188);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
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
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 189);
    v8 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (target_->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
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

void sub_19A1E2AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::StringOutputStream::ByteCount(google::protobuf::io::StringOutputStream *this)
{
  v1 = *(this + 1);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

uint64_t replica_manager::protobuf_ShutdownFile_replica_2dmanager_2eproto(replica_manager *this)
{
  if (replica_manager::VectorTimestampElement::default_instance_)
  {
    (*(*replica_manager::VectorTimestampElement::default_instance_ + 8))(replica_manager::VectorTimestampElement::default_instance_);
  }

  if (replica_manager::ReplicaEntry::default_instance_)
  {
    (*(*replica_manager::ReplicaEntry::default_instance_ + 8))(replica_manager::ReplicaEntry::default_instance_);
  }

  result = replica_manager::ReplicaManager::default_instance_;
  if (replica_manager::ReplicaManager::default_instance_)
  {
    v2 = *(*replica_manager::ReplicaManager::default_instance_ + 8);

    return v2();
  }

  return result;
}

double replica_manager::VectorTimestampElement::VectorTimestampElement(replica_manager::VectorTimestampElement *this)
{
  *this = &unk_1F0D663E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double replica_manager::ReplicaEntry::ReplicaEntry(replica_manager::ReplicaEntry *this)
{
  *this = &unk_1F0D66458;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

void replica_manager::protobuf_AddDesc_replica_2dmanager_2eproto(replica_manager *this)
{
  v1 = replica_manager::protobuf_AddDesc_replica_2dmanager_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_1F0D671C0;
    v2[1] = replica_manager::protobuf_AddDesc_replica_2dmanager_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&replica_manager::protobuf_AddDesc_replica_2dmanager_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_19A1E2E24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

replica_manager::VectorTimestampElement *replica_manager::VectorTimestampElement::VectorTimestampElement(replica_manager::VectorTimestampElement *this, const replica_manager::VectorTimestampElement *a2)
{
  *this = &unk_1F0D663E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  replica_manager::VectorTimestampElement::MergeFrom(this, a2);
  return this;
}

void sub_19A1E2E98(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

std::string *replica_manager::VectorTimestampElement::MergeFrom(replica_manager::VectorTimestampElement *this, const replica_manager::VectorTimestampElement *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/replica-manager.pb.cc", 260);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 6);
      *(this + 8) |= 2u;
      *(this + 6) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void sub_19A1E2F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void replica_manager::VectorTimestampElement::~VectorTimestampElement(void **this)
{
  *this = &unk_1F0D663E0;
  replica_manager::protobuf_AddDesc_replica_2dmanager_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  replica_manager::VectorTimestampElement::~VectorTimestampElement(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t replica_manager::VectorTimestampElement::Clear(uint64_t this)
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

uint64_t replica_manager::VectorTimestampElement::MergePartialFromCodedStream(replica_manager::VectorTimestampElement *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
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
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x8000000000000000) == 0)
      {
        *(this + 6) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6))
    {
      break;
    }

    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_19A1E32C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t replica_manager::VectorTimestampElement::SerializeWithCachedSizes(replica_manager::VectorTimestampElement *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 6), a2, a4);
  }

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

uint64_t replica_manager::VectorTimestampElement::ByteSize(replica_manager::VectorTimestampElement *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (*(this + 32))
  {
    v2 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_7:
    v2 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  }

LABEL_8:
  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  result = (v2 + v3);
  *(this + 9) = result;
  return result;
}

std::string *replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom(replica_manager::VectorTimestampElement *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return replica_manager::VectorTimestampElement::MergeFrom(this, lpsrc);
}

std::string *replica_manager::ReplicaEntry::MergeFrom(replica_manager::ReplicaEntry *this, const replica_manager::ReplicaEntry *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/replica-manager.pb.cc", 528);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>((this + 48), (a2 + 48));
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
      *(this + 8) |= 2u;
      *(this + 11) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void sub_19A1E360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void replica_manager::ReplicaEntry::~ReplicaEntry(replica_manager::ReplicaEntry *this)
{
  *this = &unk_1F0D66458;
  replica_manager::protobuf_AddDesc_replica_2dmanager_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  replica_manager::ReplicaEntry::~ReplicaEntry(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t replica_manager::ReplicaEntry::Clear(replica_manager::ReplicaEntry *this)
{
  *(this + 5) = 0;
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 48);
  *(this + 8) = 0;
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

uint64_t replica_manager::ReplicaEntry::MergePartialFromCodedStream(replica_manager::ReplicaEntry *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v33, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v32, v33);
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
          goto LABEL_13;
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
        if (v7 == 26)
        {
          goto LABEL_39;
        }

LABEL_22:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_61;
        }

        goto LABEL_24;
      }

      if (v9 == 2)
      {
        if (v7 == 16)
        {
          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_31;
        }

        goto LABEL_22;
      }

      if (v9 == 1)
      {
        break;
      }

LABEL_13:
      if (v7)
      {
        v14 = (v7 & 7) == 4;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
LABEL_61:
        v30 = 1;
        goto LABEL_62;
      }

LABEL_24:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v32, v4))
      {
        goto LABEL_60;
      }
    }

    if (v7 != 8)
    {
      goto LABEL_22;
    }

    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v11 >= v10 || (v12 = *v11, v12 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
      {
        goto LABEL_60;
      }

      v13 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      *(this + 10) = v12;
      v13 = v11 + 1;
      *(a2 + 1) = v13;
    }

    *(this + 8) |= 1u;
    if (v13 < v10 && *v13 == 16)
    {
      v15 = v13 + 1;
      *(a2 + 1) = v15;
LABEL_31:
      if (v15 >= v10 || (v16 = *v15, v16 < 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
        {
          goto LABEL_60;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 11) = v16;
        v17 = v15 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 8) |= 2u;
      if (v17 < v10 && *v17 == 26)
      {
        do
        {
          *(a2 + 1) = v17 + 1;
LABEL_39:
          v18 = *(this + 15);
          v19 = *(this + 14);
          if (v19 >= v18)
          {
            if (v18 == *(this + 16))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
            }

            operator new();
          }

          v20 = *(this + 6);
          *(this + 14) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v34 = 0;
          v22 = *(a2 + 1);
          if (v22 >= *(a2 + 2) || *v22 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
            {
              goto LABEL_60;
            }
          }

          else
          {
            v34 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v23 = *(a2 + 14);
          v24 = *(a2 + 15);
          *(a2 + 14) = v23 + 1;
          if (v23 >= v24 || (v25 = google::protobuf::io::CodedInputStream::PushLimit(a2, v34), !replica_manager::VectorTimestampElement::MergePartialFromCodedStream(v21, a2)) || *(a2 + 36) != 1)
          {
LABEL_60:
            v30 = 0;
            goto LABEL_62;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
          v26 = *(a2 + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(a2 + 14) = v28;
          }

          v17 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        while (v17 < v29 && *v17 == 26);
        if (v17 == v29 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          break;
        }
      }
    }
  }

  *(a2 + 8) = 0;
  v30 = 1;
  *(a2 + 36) = 1;
LABEL_62:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v32);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v33);
  return v30;
}

void sub_19A1E3B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t replica_manager::ReplicaEntry::SerializeWithCachedSizes(replica_manager::ReplicaEntry *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  }

  if (*(this + 14) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 48, v7);
      google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2);
      ++v7;
    }

    while (v7 < *(this + 14));
  }

  v9 = *(this + 31);
  if (v9 < 0)
  {
    v10 = *(this + 1);
    v9 = *(this + 2);
  }

  else
  {
    v10 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v10, v9);
}

uint64_t replica_manager::ReplicaEntry::ByteSize(replica_manager::ReplicaEntry *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (*(this + 32))
  {
    v4 = *(this + 10);
    if (v4 >= 0x80)
    {
      v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 8) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 11);
  if (v5 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  v7 = *(this + 14);
  v8 = v7 + v3;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 48, v9);
      v11 = replica_manager::VectorTimestampElement::ByteSize(v10);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      }

      else
      {
        v13 = 1;
      }

      v8 += v12 + v13;
      ++v9;
    }

    while (v9 < *(this + 14));
  }

  v14 = *(this + 31);
  if (v14 < 0)
  {
    v14 = *(this + 2);
  }

  result = (v8 + v14);
  *(this + 9) = result;
  return result;
}

std::string *replica_manager::ReplicaEntry::CheckTypeAndMergeFrom(replica_manager::ReplicaEntry *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return replica_manager::ReplicaEntry::MergeFrom(this, lpsrc);
}

replica_manager::ReplicaManager *replica_manager::ReplicaManager::ReplicaManager(replica_manager::ReplicaManager *this)
{
  *(this + 1) = 0;
  *this = &unk_1F0D664D0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  replica_manager::ReplicaManager::SharedCtor(this);
  return this;
}

void sub_19A1E3E20(_Unwind_Exception *a1)
{
  v6 = v3;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v6);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v4);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v5);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void replica_manager::ReplicaManager::SharedCtor(replica_manager::ReplicaManager *this)
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

  *(this + 4) = 0;
}

void sub_19A1E3F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *replica_manager::ReplicaManager::MergeFrom(replica_manager::ReplicaManager *this, const replica_manager::ReplicaManager *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/replica-manager.pb.cc", 783);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 40), (a2 + 40));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 64), (a2 + 64));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<replica_manager::ReplicaEntry>::TypeHandler>((this + 88), (a2 + 88));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_19A1E3FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void replica_manager::ReplicaManager::~ReplicaManager(replica_manager::ReplicaManager *this)
{
  *this = &unk_1F0D664D0;
  replica_manager::protobuf_AddDesc_replica_2dmanager_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 11);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  replica_manager::ReplicaManager::~ReplicaManager(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t replica_manager::ReplicaManager::Clear(replica_manager::ReplicaManager *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 64);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 88);
  *(this + 8) = 0;
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

uint64_t replica_manager::ReplicaManager::MergePartialFromCodedStream(replica_manager::ReplicaManager *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v35, this + 8);
  TagFallback = google::protobuf::io::CodedOutputStream::CodedOutputStream(v34, v35);
  do
  {
    while (1)
    {
LABEL_2:
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, v7 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v8 = TagFallback | (((TagFallback - 1) < 0x7F) << 32);
        if ((v8 & 0x100000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        v8 = v7 | 0x100000000;
      }

      v9 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v16 = *(this + 19);
          v17 = *(this + 18);
          if (v17 >= v16)
          {
            if (v16 == *(this + 20))
            {
              TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 8, v16 + 1);
            }

            google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
          }

          v18 = *(this + 8);
          *(this + 18) = v17 + 1;
          TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v18 + 8 * v17));
          if (!TagFallback)
          {
            goto LABEL_67;
          }

          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2))
          {
            break;
          }

          v19 = *v14;
          if (v19 != 18)
          {
            if (v19 == 26)
            {
              goto LABEL_62;
            }

            goto LABEL_2;
          }

LABEL_45:
          *(a2 + 1) = v14 + 1;
        }
      }

      else if (v9 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v11 = *(this + 13);
          v12 = *(this + 12);
          if (v12 >= v11)
          {
            if (v11 == *(this + 14))
            {
              TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v11 + 1);
            }

            google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
          }

          v13 = *(this + 5);
          *(this + 12) = v12 + 1;
          TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v13 + 8 * v12));
          if (!TagFallback)
          {
            goto LABEL_67;
          }

          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2))
          {
            break;
          }

          v15 = *v14;
          if (v15 != 10)
          {
            if (v15 != 18)
            {
              goto LABEL_2;
            }

            goto LABEL_45;
          }

          *(a2 + 1) = v14 + 1;
        }
      }

      else
      {
LABEL_11:
        if (v8)
        {
          v10 = (v8 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
LABEL_68:
          v32 = 1;
          goto LABEL_69;
        }

LABEL_33:
        TagFallback = google::protobuf::internal::WireFormatLite::SkipField(a2, v8, v34, v5);
        if ((TagFallback & 1) == 0)
        {
          goto LABEL_67;
        }
      }
    }

    if (v8 != 26)
    {
LABEL_31:
      if (!v8 || (v8 & 7) == 4)
      {
        goto LABEL_68;
      }

      goto LABEL_33;
    }

    while (1)
    {
      v20 = *(this + 25);
      v21 = *(this + 24);
      if (v21 >= v20)
      {
        if (v20 == *(this + 26))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 11, v20 + 1);
        }

        operator new();
      }

      v22 = *(this + 11);
      *(this + 24) = v21 + 1;
      v23 = *(v22 + 8 * v21);
      v36 = 0;
      v24 = *(a2 + 1);
      if (v24 >= *(a2 + 2) || *v24 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
        {
          goto LABEL_67;
        }
      }

      else
      {
        v36 = *v24;
        *(a2 + 1) = v24 + 1;
      }

      v25 = *(a2 + 14);
      v26 = *(a2 + 15);
      *(a2 + 14) = v25 + 1;
      if (v25 >= v26 || (v27 = google::protobuf::io::CodedInputStream::PushLimit(a2, v36), !replica_manager::ReplicaEntry::MergePartialFromCodedStream(v23, a2)) || *(a2 + 36) != 1)
      {
LABEL_67:
        v32 = 0;
        goto LABEL_69;
      }

      TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v27);
      v28 = *(a2 + 14);
      v29 = __OFSUB__(v28, 1);
      v30 = v28 - 1;
      if (v30 < 0 == v29)
      {
        *(a2 + 14) = v30;
      }

      v14 = *(a2 + 1);
      v31 = *(a2 + 2);
      if (v14 >= v31 || *v14 != 26)
      {
        break;
      }

LABEL_62:
      *(a2 + 1) = v14 + 1;
    }
  }

  while (v14 != v31 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v32 = 1;
  *(a2 + 36) = 1;
LABEL_69:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v34);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v35);
  return v32;
}

void sub_19A1E4580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t replica_manager::ReplicaManager::SerializeWithCachedSizes(replica_manager::ReplicaManager *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteBytes(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  if (*(this + 18) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 64, v6);
      google::protobuf::internal::WireFormatLite::WriteString(2, v7, a2);
      ++v6;
    }

    while (v6 < *(this + 18));
  }

  if (*(this + 24) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::ReplicaEntry>::TypeHandler>(this + 88, v8);
      google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2);
      ++v8;
    }

    while (v8 < *(this + 24));
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v11 = *(this + 1);
    v10 = *(this + 2);
  }

  else
  {
    v11 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v11, v10);
}

uint64_t replica_manager::ReplicaManager::ByteSize(replica_manager::ReplicaManager *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40, v3);
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

      v2 += v9 + v5;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v10 = *(this + 18);
  v11 = v10 + v2;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 64, v12);
      v14 = *(v13 + 23);
      v15 = v14;
      v16 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = v16;
      }

      if (v17 >= 0x80)
      {
        v18 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(v13 + 23);
        v16 = *(v13 + 8);
        v15 = *(v13 + 23);
      }

      else
      {
        v18 = 1;
      }

      if (v15 < 0)
      {
        v14 = v16;
      }

      v11 += v18 + v14;
      ++v12;
    }

    while (v12 < *(this + 18));
  }

  v19 = *(this + 24);
  v20 = v19 + v11;
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::ReplicaEntry>::TypeHandler>(this + 88, v21);
      v23 = replica_manager::ReplicaEntry::ByteSize(v22);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      }

      else
      {
        v25 = 1;
      }

      v20 += v24 + v25;
      ++v21;
    }

    while (v21 < *(this + 24));
  }

  v26 = *(this + 31);
  if (v26 < 0)
  {
    v26 = *(this + 2);
  }

  result = (v20 + v26);
  *(this + 9) = result;
  return result;
}

std::string *replica_manager::ReplicaManager::CheckTypeAndMergeFrom(replica_manager::ReplicaManager *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return replica_manager::ReplicaManager::MergeFrom(this, lpsrc);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
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

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x19A8FD050);
  }

  return result;
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = replica_manager::VectorTimestampElement::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1E4BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      google::protobuf::internal::StringTypeHandlerBase::Delete(*(*a1 + 8 * v2++));
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x19A8FD050);
  }

  return result;
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          v7 = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::StringTypeHandlerBase::New(v7);
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = std::string::operator=(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1E4D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<replica_manager::ReplicaEntry>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::ReplicaEntry>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = replica_manager::ReplicaEntry::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1E4F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(uint64_t *this, int a2)
{
  v2 = *(this + 4);
  if (v2 < a2)
  {
    v3 = *this;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(this + 4) = v4;
    operator new[]();
  }

  return this;
}

uint64_t google::protobuf::internal::StringTypeHandlerBase::Delete(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x19A8FD070);
  }

  return result;
}

uint64_t google::protobuf::io::ZeroCopyOutputStream::WriteAliasedRaw(google::protobuf::io::ZeroCopyOutputStream *this, const void *a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/io/zero_copy_stream.cc", 49);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  google::protobuf::internal::LogFinisher::operator=(&v4, v2);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_19A1E5138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t versioned_document::protobuf_ShutdownFile_versioned_2ddocument_2eproto(versioned_document *this)
{
  if (versioned_document::Document::default_instance_)
  {
    (*(*versioned_document::Document::default_instance_ + 8))(versioned_document::Document::default_instance_);
  }

  result = versioned_document::Version::default_instance_;
  if (versioned_document::Version::default_instance_)
  {
    v2 = *(*versioned_document::Version::default_instance_ + 8);

    return v2();
  }

  return result;
}

double versioned_document::Document::Document(versioned_document::Document *this)
{
  *this = &unk_1F0D665A0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

void versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto(versioned_document *this)
{
  v1 = versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_1F0D671C0;
    v2[1] = versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_19A1E5394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *versioned_document::Document::MergeFrom(versioned_document::Document *this, const versioned_document::Document *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/versioned-document.pb.cc", 244);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((this + 40), (a2 + 40));
  if (*(a2 + 32))
  {
    v5 = *(a2 + 16);
    *(this + 8) |= 1u;
    *(this + 16) = v5;
  }

  v8 = *(a2 + 1);
  v7 = a2 + 8;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 8), v10, v11);
}

void sub_19A1E5464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void versioned_document::Document::~Document(versioned_document::Document *this)
{
  *this = &unk_1F0D665A0;
  versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  versioned_document::Document::~Document(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t versioned_document::Document::Clear(versioned_document::Document *this)
{
  *(this + 16) = 0;
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
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

uint64_t versioned_document::Document::MergePartialFromCodedStream(versioned_document::Document *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
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
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_16;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

LABEL_12:
      if (v7)
      {
        v13 = (v7 & 7) == 4;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
LABEL_49:
        v26 = 1;
        goto LABEL_50;
      }

LABEL_16:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }

    if (v7 != 8)
    {
      goto LABEL_19;
    }

    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v9 >= v10 || (v11 = *v9, v11 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16))
      {
        goto LABEL_48;
      }

      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      *(this + 16) = v11;
      v12 = v9 + 1;
      *(a2 + 1) = v12;
    }

    *(this + 8) |= 1u;
    if (v12 < v10 && *v12 == 18)
    {
      do
      {
        *(a2 + 1) = v12 + 1;
LABEL_27:
        v14 = *(this + 13);
        v15 = *(this + 12);
        if (v15 >= v14)
        {
          if (v14 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v14 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
        }

        v16 = *(this + 5);
        *(this + 12) = v15 + 1;
        v17 = *(v16 + 8 * v15);
        v30 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20 || (v21 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !versioned_document::Version::MergePartialFromCodedStream(v17, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v12 = *(a2 + 1);
        v25 = *(a2 + 2);
      }

      while (v12 < v25 && *v12 == 18);
      if (v12 == v25 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v26 = 1;
  *(a2 + 36) = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_19A1E58A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t versioned_document::Document::SerializeWithCachedSizes(versioned_document::Document *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
  }

  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40, v6);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2);
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v9 = *(this + 1);
    v8 = *(this + 2);
  }

  else
  {
    v9 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v9, v8);
}

uint64_t versioned_document::Document::ByteSize(versioned_document::Document *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 16);
    if (v3 >= 0x80)
    {
      v2 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 12);
  v5 = v4 + v2;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40, v6);
      v8 = versioned_document::Version::ByteSize(v7);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v5 += v9 + v10;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v5 + v11);
  *(this + 9) = result;
  return result;
}

std::string *versioned_document::Document::CheckTypeAndMergeFrom(versioned_document::Document *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return versioned_document::Document::MergeFrom(this, lpsrc);
}

versioned_document::Version *versioned_document::Version::Version(versioned_document::Version *this)
{
  *this = &unk_1F0D66618;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  versioned_document::Version::SharedCtor(this);
  return this;
}

void sub_19A1E5B30(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void versioned_document::Version::SharedCtor(versioned_document::Version *this)
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

  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_19A1E5BFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

versioned_document::Version *versioned_document::Version::Version(versioned_document::Version *this, const versioned_document::Version *a2)
{
  *this = &unk_1F0D66618;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  versioned_document::Version::SharedCtor(this);
  versioned_document::Version::MergeFrom(this, a2);
  return this;
}

void sub_19A1E5C78(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

std::string *versioned_document::Version::MergeFrom(versioned_document::Version *this, const versioned_document::Version *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/versioned-document.pb.cc", 519);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v8 = *(a2 + 6);
    *(this + 8) |= 4u;
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

LABEL_14:
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

void sub_19A1E5DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void versioned_document::Version::~Version(void **this)
{
  *this = &unk_1F0D66618;
  versioned_document::Version::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  versioned_document::Version::~Version(this);

  JUMPOUT(0x19A8FD070);
}

void versioned_document::Version::SharedDtor(versioned_document::Version *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = *(this + 6);
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

  versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto(this);
}

uint64_t versioned_document::Version::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 7) != 0)
  {
    *(this + 40) = 0;
    if ((v1 & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v2 = *(this + 48);
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

uint64_t versioned_document::Version::MergePartialFromCodedStream(versioned_document::Version *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v22, v23);
  while (1)
  {
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
            goto LABEL_13;
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
          if (v7 == 26)
          {
            v16 = *(this + 8);
            goto LABEL_40;
          }

LABEL_22:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_48;
          }

          goto LABEL_24;
        }

        if (v9 == 2)
        {
          break;
        }

        if (v9 == 1)
        {
          if (v7 != 8)
          {
            goto LABEL_22;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v11 >= v10 || (v12 = *v11, v12 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
            {
              goto LABEL_49;
            }

            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 8) |= 1u;
          if (v13 < v10 && *v13 == 16)
          {
            v15 = v13 + 1;
            *(a2 + 1) = v15;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_13:
          if (v7)
          {
            v14 = (v7 & 7) == 4;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
LABEL_48:
            v20 = 1;
            goto LABEL_50;
          }

LABEL_24:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v22, v4))
          {
            goto LABEL_49;
          }
        }
      }

      if (v7 != 16)
      {
        goto LABEL_22;
      }

      v15 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_32:
      if (v15 >= v10 || (v17 = *v15, v17 < 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
        {
          goto LABEL_49;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 11) = v17;
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      v16 = *(this + 8) | 2;
      *(this + 8) = v16;
    }

    while (v18 >= v10 || *v18 != 26);
    *(a2 + 1) = v18 + 1;
LABEL_40:
    *(this + 8) = v16 | 4;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v19 = *(this + 6);
    if (v19 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v19))
    {
      break;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v20 = 1;
      *(a2 + 36) = 1;
      goto LABEL_50;
    }
  }

LABEL_49:
  v20 = 0;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v22);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v23);
  return v20;
}

void sub_19A1E62B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t versioned_document::Version::SerializeWithCachedSizes(versioned_document::Version *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
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

  google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 6), a2);
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

uint64_t versioned_document::Version::ByteSize(versioned_document::Version *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
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
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 11);
  if (v5 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 6);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v3 += v12 + v8 + 1;
  }

LABEL_24:
  v13 = *(this + 31);
  if (v13 < 0)
  {
    v13 = *(this + 2);
  }

  result = (v3 + v13);
  *(this + 9) = result;
  return result;
}

std::string *versioned_document::Version::CheckTypeAndMergeFrom(versioned_document::Version *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return versioned_document::Version::MergeFrom(this, lpsrc);
}

void sub_19A1E664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1E6794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::protobuf_ShutdownFile_topotext_2eproto(topotext *this)
{
  if (topotext::String::default_instance_)
  {
    (*(*topotext::String::default_instance_ + 8))(topotext::String::default_instance_);
  }

  if (topotext::VectorTimestamp::default_instance_)
  {
    (*(*topotext::VectorTimestamp::default_instance_ + 8))(topotext::VectorTimestamp::default_instance_);
  }

  if (topotext::VectorTimestamp_Clock::default_instance_)
  {
    (*(*topotext::VectorTimestamp_Clock::default_instance_ + 8))(topotext::VectorTimestamp_Clock::default_instance_);
  }

  if (topotext::VectorTimestamp_Clock_ReplicaClock::default_instance_)
  {
    (*(*topotext::VectorTimestamp_Clock_ReplicaClock::default_instance_ + 8))(topotext::VectorTimestamp_Clock_ReplicaClock::default_instance_);
  }

  if (topotext::CharID::default_instance_)
  {
    (*(*topotext::CharID::default_instance_ + 8))(topotext::CharID::default_instance_);
  }

  if (topotext::Substring::default_instance_)
  {
    (*(*topotext::Substring::default_instance_ + 8))(topotext::Substring::default_instance_);
  }

  if (topotext::Selection::default_instance_)
  {
    (*(*topotext::Selection::default_instance_ + 8))(topotext::Selection::default_instance_);
  }

  if (topotext::Selection_Range::default_instance_)
  {
    (*(*topotext::Selection_Range::default_instance_ + 8))(topotext::Selection_Range::default_instance_);
  }

  if (topotext::AttributeRun::default_instance_)
  {
    (*(*topotext::AttributeRun::default_instance_ + 8))(topotext::AttributeRun::default_instance_);
  }

  if (topotext::Font::default_instance_)
  {
    (*(*topotext::Font::default_instance_ + 8))(topotext::Font::default_instance_);
  }

  if (topotext::ParagraphStyle::default_instance_)
  {
    (*(*topotext::ParagraphStyle::default_instance_ + 8))(topotext::ParagraphStyle::default_instance_);
  }

  if (topotext::HashtagInfo::default_instance_)
  {
    (*(*topotext::HashtagInfo::default_instance_ + 8))(topotext::HashtagInfo::default_instance_);
  }

  if (topotext::AttachmentInfo::default_instance_)
  {
    (*(*topotext::AttachmentInfo::default_instance_ + 8))(topotext::AttachmentInfo::default_instance_);
  }

  if (topotext::Attachment::default_instance_)
  {
    (*(*topotext::Attachment::default_instance_ + 8))(topotext::Attachment::default_instance_);
  }

  if (topotext::Location::default_instance_)
  {
    (*(*topotext::Location::default_instance_ + 8))(topotext::Location::default_instance_);
  }

  if (topotext::Media::default_instance_)
  {
    (*(*topotext::Media::default_instance_ + 8))(topotext::Media::default_instance_);
  }

  if (topotext::PreviewImage::default_instance_)
  {
    (*(*topotext::PreviewImage::default_instance_ + 8))(topotext::PreviewImage::default_instance_);
  }

  if (topotext::Todo::default_instance_)
  {
    (*(*topotext::Todo::default_instance_ + 8))(topotext::Todo::default_instance_);
  }

  result = topotext::Color::default_instance_;
  if (topotext::Color::default_instance_)
  {
    v2 = *(*topotext::Color::default_instance_ + 8);

    return v2();
  }

  return result;
}

double topotext::VectorTimestamp::VectorTimestamp(topotext::VectorTimestamp *this)
{
  *this = &unk_1F0D66828;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double topotext::VectorTimestamp_Clock_ReplicaClock::VectorTimestamp_Clock_ReplicaClock(topotext::VectorTimestamp_Clock_ReplicaClock *this)
{
  *this = &unk_1F0D66738;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double topotext::CharID::CharID(topotext::CharID *this)
{
  *this = &unk_1F0D668A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double topotext::Substring::Substring(topotext::Substring *this)
{
  *this = &unk_1F0D66918;
  *(this + 8) = 0;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 53) = 0;
  return result;
}

double topotext::Selection_Range::Selection_Range(topotext::Selection_Range *this)
{
  *this = &unk_1F0D66990;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double topotext::ParagraphStyle::ParagraphStyle(topotext::ParagraphStyle *this)
{
  *this = &unk_1F0D66B70;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

double topotext::Color::Color(topotext::Color *this)
{
  *this = &unk_1F0D66F30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void topotext::protobuf_AddDesc_topotext_2eproto(topotext *this)
{
  v1 = topotext::protobuf_AddDesc_topotext_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_1F0D671C0;
    v2[1] = topotext::protobuf_AddDesc_topotext_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&topotext::protobuf_AddDesc_topotext_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_19A1E72BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

topotext::String *topotext::String::String(topotext::String *this)
{
  *(this + 1) = 0;
  *this = &unk_1F0D666C0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  topotext::String::SharedCtor(this);
  return this;
}

void sub_19A1E7360(_Unwind_Exception *a1)
{
  v6 = v3;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v6);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v4);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v5);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::String::SharedCtor(topotext::String *this)
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
  *(this + 9) = 0;
}

void sub_19A1E7454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *topotext::String::MergeFrom(topotext::String *this, const topotext::String *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 402);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>((this + 48), (a2 + 48));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>((this + 80), (a2 + 80));
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>((this + 104), (a2 + 104));
  LOBYTE(v6) = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
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

    if ((v6 & 4) != 0)
    {
      *(this + 8) |= 4u;
      v9 = *(this + 9);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 9);
      if (!v10)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(v5);
        v10 = *(topotext::String::default_instance_ + 72);
      }

      topotext::VectorTimestamp::MergeFrom(v9, v10);
    }
  }

  v13 = *(a2 + 1);
  v12 = a2 + 8;
  v11 = v13;
  v14 = v12[23];
  if (v14 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v14 >= 0)
  {
    v16 = v12[23];
  }

  else
  {
    v16 = *(v12 + 1);
  }

  return std::string::append((this + 8), v15, v16);
}

void sub_19A1E761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::String::~String(topotext::String *this)
{
  *this = &unk_1F0D666C0;
  topotext::String::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 13);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 10);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::String::~String(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::String::SharedDtor(topotext::String *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = v2 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x19A8FD070](v2, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::String::default_instance_ != v1)
  {
    v4 = *(v1 + 9);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t topotext::String::Clear(topotext::String *this)
{
  v2 = *(this + 8);
  if ((v2 & 5) != 0)
  {
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 9);
      if (v4)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v4 + 40);
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 80);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 104);
  *(this + 8) = 0;
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

uint64_t topotext::VectorTimestamp::Clear(topotext::VectorTimestamp *this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
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

uint64_t topotext::String::MergePartialFromCodedStream(topotext::String *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v58, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v57, v58);
  while (1)
  {
    while (1)
    {
LABEL_2:
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
      if (v7 >> 3 <= 3)
      {
        break;
      }

      switch(v10)
      {
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_27;
          }

LABEL_56:
          *(this + 8) |= 4u;
          v25 = *(this + 9);
          if (!v25)
          {
            operator new();
          }

          v59 = 0;
          v26 = *(a2 + 1);
          if (v26 >= *(a2 + 2) || *v26 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
            {
              goto LABEL_108;
            }
          }

          else
          {
            v59 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v27 = *(a2 + 14);
          v28 = *(a2 + 15);
          *(a2 + 14) = v27 + 1;
          if (v27 >= v28)
          {
            goto LABEL_108;
          }

          v29 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
          if (!topotext::VectorTimestamp::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_108;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
          v30 = *(a2 + 14);
          v22 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v22)
          {
            *(a2 + 14) = v31;
          }

          v32 = *(a2 + 1);
          if (v32 < *(a2 + 2) && *v32 == 42)
          {
            while (1)
            {
              *(a2 + 1) = v32 + 1;
LABEL_70:
              v33 = *(this + 23);
              v34 = *(this + 22);
              if (v34 >= v33)
              {
                if (v33 == *(this + 24))
                {
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v33 + 1);
                }

                google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New();
              }

              v35 = *(this + 10);
              *(this + 22) = v34 + 1;
              v36 = *(v35 + 8 * v34);
              v59 = 0;
              v37 = *(a2 + 1);
              if (v37 >= *(a2 + 2) || *v37 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                {
                  goto LABEL_108;
                }
              }

              else
              {
                v59 = *v37;
                *(a2 + 1) = v37 + 1;
              }

              v38 = *(a2 + 14);
              v39 = *(a2 + 15);
              *(a2 + 14) = v38 + 1;
              if (v38 >= v39)
              {
                goto LABEL_108;
              }

              v40 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
              if (!topotext::AttributeRun::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_108;
              }

              google::protobuf::io::CodedInputStream::PopLimit(a2, v40);
              v41 = *(a2 + 14);
              v22 = __OFSUB__(v41, 1);
              v42 = v41 - 1;
              if (v42 < 0 == v22)
              {
                *(a2 + 14) = v42;
              }

              v32 = *(a2 + 1);
              if (v32 >= *(a2 + 2))
              {
                break;
              }

              v43 = *v32;
              if (v43 != 42)
              {
                if (v43 == 50)
                {
                  goto LABEL_87;
                }

                goto LABEL_2;
              }
            }
          }

          break;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_27;
          }

          goto LABEL_70;
        case 6u:
          if (v7 == 50)
          {
            while (1)
            {
              v44 = *(this + 29);
              v45 = *(this + 28);
              if (v45 >= v44)
              {
                if (v44 == *(this + 30))
                {
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 13, v44 + 1);
                }

                google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
              }

              v46 = *(this + 13);
              *(this + 28) = v45 + 1;
              v47 = *(v46 + 8 * v45);
              v59 = 0;
              v48 = *(a2 + 1);
              if (v48 >= *(a2 + 2) || *v48 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                {
                  goto LABEL_108;
                }
              }

              else
              {
                v59 = *v48;
                *(a2 + 1) = v48 + 1;
              }

              v49 = *(a2 + 14);
              v50 = *(a2 + 15);
              *(a2 + 14) = v49 + 1;
              if (v49 >= v50 || (v51 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59), !topotext::Attachment::MergePartialFromCodedStream(v47, a2)) || *(a2 + 36) != 1)
              {
LABEL_108:
                v55 = 0;
                goto LABEL_110;
              }

              google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
              v52 = *(a2 + 14);
              v22 = __OFSUB__(v52, 1);
              v53 = v52 - 1;
              if (v53 < 0 == v22)
              {
                *(a2 + 14) = v53;
              }

              v32 = *(a2 + 1);
              v54 = *(a2 + 2);
              if (v32 >= v54 || *v32 != 50)
              {
                break;
              }

LABEL_87:
              *(a2 + 1) = v32 + 1;
            }

            if (v32 == v54 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              v55 = 1;
              *(a2 + 36) = 1;
              goto LABEL_110;
            }
          }

          else
          {
LABEL_27:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_109;
            }

LABEL_29:
            if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v57, v4))
            {
              goto LABEL_108;
            }
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    if (v10 != 2)
    {
      break;
    }

    if (v7 != 18)
    {
      goto LABEL_27;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v11 = *(this + 5);
    if (v11 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v11))
    {
      goto LABEL_108;
    }

    v12 = *(a2 + 1);
    if (v12 < *(a2 + 2) && *v12 == 26)
    {
      while (1)
      {
        *(a2 + 1) = v12 + 1;
LABEL_38:
        v13 = *(this + 15);
        v14 = *(this + 14);
        if (v14 >= v13)
        {
          if (v13 == *(this + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v13 + 1);
          }

          operator new();
        }

        v15 = *(this + 6);
        *(this + 14) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v59 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
          {
            goto LABEL_108;
          }
        }

        else
        {
          v59 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          goto LABEL_108;
        }

        v20 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
        if (!topotext::Substring::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_108;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v20);
        v21 = *(a2 + 14);
        v22 = __OFSUB__(v21, 1);
        v23 = v21 - 1;
        if (v23 < 0 == v22)
        {
          *(a2 + 14) = v23;
        }

        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v24 = *v12;
        if (v24 != 26)
        {
          if (v24 != 34)
          {
            goto LABEL_2;
          }

          *(a2 + 1) = v12 + 1;
          goto LABEL_56;
        }
      }
    }
  }

  if (v10 == 3)
  {
    if (v7 != 26)
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

LABEL_109:
  v55 = 1;
LABEL_110:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v57);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v58);
  return v55;
}

void sub_19A1E8074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::String::SerializeWithCachedSizes(topotext::String *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  if (*(this + 32))
  {
    this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 5), a2);
  }

  if (*(v3 + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(v3 + 48, v4);
      this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v5, a2);
      ++v4;
    }

    while (v4 < *(v3 + 14));
  }

  if ((*(v3 + 32) & 4) != 0)
  {
    v6 = *(v3 + 9);
    if (!v6)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v6 = *(topotext::String::default_instance_ + 72);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(4, v6, a2);
  }

  if (*(v3 + 22) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(v3 + 80, v7);
      google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2);
      ++v7;
    }

    while (v7 < *(v3 + 22));
  }

  if (*(v3 + 28) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(v3 + 104, v9);
      google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2);
      ++v9;
    }

    while (v9 < *(v3 + 28));
  }

  v11 = *(v3 + 31);
  if (v11 < 0)
  {
    v12 = *(v3 + 1);
    v11 = *(v3 + 2);
  }

  else
  {
    v12 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v12, v11);
}

uint64_t topotext::String::ByteSize(topotext::String *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 4) == 0)
    {
      goto LABEL_21;
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
  if ((v2 & 4) != 0)
  {
LABEL_15:
    v11 = *(this + 9);
    if (!v11)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v11 = *(topotext::String::default_instance_ + 72);
    }

    v12 = topotext::VectorTimestamp::ByteSize(v11);
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
  }

LABEL_21:
  v15 = *(this + 14);
  v16 = v15 + v3;
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(this + 48, v17);
      v19 = topotext::Substring::ByteSize(v18);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v16 += v20 + v21;
      ++v17;
    }

    while (v17 < *(this + 14));
  }

  v22 = *(this + 22);
  v23 = v22 + v16;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(this + 80, v24);
      v26 = topotext::AttributeRun::ByteSize(v25);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v23 += v27 + v28;
      ++v24;
    }

    while (v24 < *(this + 22));
  }

  v29 = *(this + 28);
  v30 = v29 + v23;
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(this + 104, v31);
      v33 = topotext::Attachment::ByteSize(v32);
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      }

      else
      {
        v35 = 1;
      }

      v30 += v34 + v35;
      ++v31;
    }

    while (v31 < *(this + 28));
  }

  v36 = *(this + 31);
  if (v36 < 0)
  {
    v36 = *(this + 2);
  }

  result = (v30 + v36);
  *(this + 9) = result;
  return result;
}

std::string *topotext::String::CheckTypeAndMergeFrom(topotext::String *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::String::MergeFrom(this, lpsrc);
}

std::string *topotext::VectorTimestamp::MergeFrom(topotext::VectorTimestamp *this, const topotext::VectorTimestamp *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 1070);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>((this + 40), (a2 + 40));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_19A1E8518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::VectorTimestamp_Clock_ReplicaClock::MergeFrom(topotext::VectorTimestamp_Clock_ReplicaClock *this, const topotext::VectorTimestamp_Clock_ReplicaClock *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 646);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
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
      *(this + 8) |= 2u;
      *(this + 11) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void sub_19A1E8618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::VectorTimestamp_Clock_ReplicaClock::~VectorTimestamp_Clock_ReplicaClock(void **this)
{
  *this = &unk_1F0D66738;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::VectorTimestamp_Clock_ReplicaClock::~VectorTimestamp_Clock_ReplicaClock(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::Clear(uint64_t this)
{
  *(this + 40) = 0;
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

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::MergePartialFromCodedStream(topotext::VectorTimestamp_Clock_ReplicaClock *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
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
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x80000000) == 0)
      {
        *(this + 11) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
    {
      break;
    }

    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_19A1E8948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::SerializeWithCachedSizes(topotext::VectorTimestamp_Clock_ReplicaClock *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  }

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

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::ByteSize(topotext::VectorTimestamp_Clock_ReplicaClock *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = *(this + 11);
    if (v5 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_14;
  }

  v4 = *(this + 10);
  if (v4 >= 0x80)
  {
    v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v3 + v7);
  *(this + 9) = result;
  return result;
}

std::string *topotext::VectorTimestamp_Clock_ReplicaClock::CheckTypeAndMergeFrom(topotext::VectorTimestamp_Clock_ReplicaClock *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::VectorTimestamp_Clock_ReplicaClock::MergeFrom(this, lpsrc);
}

topotext::VectorTimestamp_Clock *topotext::VectorTimestamp_Clock::VectorTimestamp_Clock(topotext::VectorTimestamp_Clock *this)
{
  *this = &unk_1F0D667B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  topotext::VectorTimestamp_Clock::SharedCtor(this);
  return this;
}

void sub_19A1E8B8C(_Unwind_Exception *a1)
{
  v4 = v2;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v4);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::VectorTimestamp_Clock::SharedCtor(topotext::VectorTimestamp_Clock *this)
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

void sub_19A1E8C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *topotext::VectorTimestamp_Clock::MergeFrom(topotext::VectorTimestamp_Clock *this, const topotext::VectorTimestamp_Clock *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 878);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>((this + 48), (a2 + 48));
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

void sub_19A1E8D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::VectorTimestamp_Clock::~VectorTimestamp_Clock(topotext::VectorTimestamp_Clock *this)
{
  *this = &unk_1F0D667B0;
  topotext::VectorTimestamp_Clock::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::VectorTimestamp_Clock::~VectorTimestamp_Clock(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::VectorTimestamp_Clock::SharedDtor(topotext::VectorTimestamp_Clock *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = *(this + 5);
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

uint64_t topotext::VectorTimestamp_Clock::Clear(topotext::VectorTimestamp_Clock *this)
{
  if (*(this + 32))
  {
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v2 = *(this + 5);
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

  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 48);
  *(this + 8) = 0;
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

uint64_t topotext::VectorTimestamp_Clock::MergePartialFromCodedStream(topotext::VectorTimestamp_Clock *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v27, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v26, v27);
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

      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          goto LABEL_26;
        }

LABEL_23:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_48;
        }

        goto LABEL_20;
      }

      if (v7 >> 3 == 1)
      {
        break;
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

      if (v11)
      {
LABEL_48:
        v24 = 1;
        goto LABEL_49;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v26, v4))
      {
        goto LABEL_47;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_23;
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
      goto LABEL_47;
    }

    v10 = *(a2 + 1);
    if (v10 < *(a2 + 2) && *v10 == 18)
    {
      do
      {
        *(a2 + 1) = v10 + 1;
LABEL_26:
        v12 = *(this + 15);
        v13 = *(this + 14);
        if (v13 >= v12)
        {
          if (v12 == *(this + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v12 + 1);
          }

          operator new();
        }

        v14 = *(this + 6);
        *(this + 14) = v13 + 1;
        v15 = *(v14 + 8 * v13);
        v28 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v28 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18 || (v19 = google::protobuf::io::CodedInputStream::PushLimit(a2, v28), !topotext::VectorTimestamp_Clock_ReplicaClock::MergePartialFromCodedStream(v15, a2)) || *(a2 + 36) != 1)
        {
LABEL_47:
          v24 = 0;
          goto LABEL_49;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v19);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        v10 = *(a2 + 1);
        v23 = *(a2 + 2);
      }

      while (v10 < v23 && *v10 == 18);
      if (v10 == v23 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v24 = 1;
  *(a2 + 36) = 1;
LABEL_49:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v26);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v27);
  return v24;
}

void sub_19A1E9320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp_Clock::SerializeWithCachedSizes(topotext::VectorTimestamp_Clock *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
  }

  if (*(this + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(this + 48, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 14));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t topotext::VectorTimestamp_Clock::ByteSize(topotext::VectorTimestamp_Clock *this)
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

  v10 = *(this + 14);
  v11 = v10 + v2;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(this + 48, v12);
      v14 = topotext::VectorTimestamp_Clock_ReplicaClock::ByteSize(v13);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v11 += v15 + v16;
      ++v12;
    }

    while (v12 < *(this + 14));
  }

  v17 = *(this + 31);
  if (v17 < 0)
  {
    v17 = *(this + 2);
  }

  result = (v11 + v17);
  *(this + 9) = result;
  return result;
}

std::string *topotext::VectorTimestamp_Clock::CheckTypeAndMergeFrom(topotext::VectorTimestamp_Clock *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::VectorTimestamp_Clock::MergeFrom(this, lpsrc);
}

void topotext::VectorTimestamp::~VectorTimestamp(topotext::VectorTimestamp *this)
{
  *this = &unk_1F0D66828;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::VectorTimestamp::~VectorTimestamp(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::VectorTimestamp::MergePartialFromCodedStream(topotext::VectorTimestamp *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
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
          break;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 != 10)
      {
        break;
      }

      while (1)
      {
        v9 = *(this + 13);
        v10 = *(this + 12);
        if (v10 >= v9)
        {
          if (v9 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v9 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock>::New();
        }

        v11 = *(this + 5);
        *(this + 12) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v27 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !topotext::VectorTimestamp_Clock::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v20 >= v21 || *v20 != 10)
        {
          break;
        }

        *(a2 + 1) = v20 + 1;
      }

      if (v20 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
  }

  while (!v22 && google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4));
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_19A1E98CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp::SerializeWithCachedSizes(topotext::VectorTimestamp *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t topotext::VectorTimestamp::ByteSize(topotext::VectorTimestamp *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(this + 40, v3);
      v5 = topotext::VectorTimestamp_Clock::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v2 += v6 + v7;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v2 + v8);
  *(this + 9) = result;
  return result;
}

std::string *topotext::VectorTimestamp::CheckTypeAndMergeFrom(topotext::VectorTimestamp *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::VectorTimestamp::MergeFrom(this, lpsrc);
}

std::string *topotext::CharID::MergeFrom(topotext::CharID *this, const topotext::CharID *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 1300);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
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
      *(this + 8) |= 2u;
      *(this + 11) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void sub_19A1E9B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::CharID::~CharID(void **this)
{
  *this = &unk_1F0D668A0;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::CharID::~CharID(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::CharID::Clear(uint64_t this)
{
  *(this + 40) = 0;
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

uint64_t topotext::CharID::MergePartialFromCodedStream(topotext::CharID *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
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
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x80000000) == 0)
      {
        *(this + 11) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
    {
      break;
    }

    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_19A1E9EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::CharID::SerializeWithCachedSizes(topotext::CharID *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  }

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

uint64_t topotext::CharID::ByteSize(topotext::CharID *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = *(this + 11);
    if (v5 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_14;
  }

  v4 = *(this + 10);
  if (v4 >= 0x80)
  {
    v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v3 + v7);
  *(this + 9) = result;
  return result;
}

std::string *topotext::CharID::CheckTypeAndMergeFrom(topotext::CharID *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::CharID::MergeFrom(this, lpsrc);
}

std::string *topotext::Substring::MergeFrom(topotext::Substring *this, const topotext::Substring *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 1651);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 729);
    v5 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve(v3 + 8, *(v3 + 18) + v6);
    this = memcpy((*(v3 + 8) + 4 * *(v3 + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(v3 + 18) += *(a2 + 18);
  }

  LOBYTE(v7) = *(a2 + 32);
  if (!v7)
  {
    goto LABEL_11;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v18 = *(a2 + 14);
    *(v3 + 8) |= 2u;
    *(v3 + 14) = v18;
    v7 = *(a2 + 8);
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_24;
  }

  *(v3 + 8) |= 1u;
  v16 = *(v3 + 5);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 5);
  if (!v17)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v17 = *(topotext::Substring::default_instance_ + 40);
  }

  this = topotext::CharID::MergeFrom(v16, v17);
  v7 = *(a2 + 8);
  if ((v7 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v7 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_24:
  *(v3 + 8) |= 4u;
  v19 = *(v3 + 6);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 6);
  if (!v20)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v20 = *(topotext::Substring::default_instance_ + 48);
  }

  topotext::CharID::MergeFrom(v19, v20);
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_10:
    v8 = *(a2 + 60);
    *(v3 + 8) |= 8u;
    *(v3 + 60) = v8;
  }

LABEL_11:
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

  return std::string::append((v3 + 8), v13, v14);
}

void sub_19A1EA308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::Substring::~Substring(void **this)
{
  *this = &unk_1F0D66918;
  topotext::Substring::SharedDtor(this);
  v2 = this[8];
  if (v2)
  {
    MEMORY[0x19A8FD050](v2, 0x1000C8052888210);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Substring::~Substring(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::Substring::SharedDtor(topotext::Substring *this)
{
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::Substring::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t topotext::Substring::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0xF) != 0)
  {
    *(this + 60) = 0;
    *(this + 56) = 0;
    if (v1)
    {
      v2 = *(this + 40);
      if (v2)
      {
        *(v2 + 40) = 0;
        *(v2 + 32) = 0;
        if (*(v2 + 31) < 0)
        {
          **(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        else
        {
          *(v2 + 8) = 0;
          *(v2 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 4) != 0)
    {
      v3 = *(this + 48);
      if (v3)
      {
        *(v3 + 40) = 0;
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
        }
      }
    }
  }

  *(this + 72) = 0;
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

uint64_t topotext::Substring::MergePartialFromCodedStream(topotext::Substring *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v52, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v51, v52);
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
            goto LABEL_29;
          }

          v13 = *(this + 8);
          goto LABEL_56;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_29;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
LABEL_70:
          v55[0].__r_.__value_.__r.__words[0] = 0;
          if (v15 >= v14 || (v36 = *v15, (v36 & 0x8000000000000000) != 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v55))
            {
              goto LABEL_101;
            }

            v36 = v55[0].__r_.__value_.__r.__words[0];
            v37 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            v37 = v15 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 60) = v36 != 0;
          *(this + 8) |= 8u;
          if (v37 < v14 && *v37 == 40)
          {
            do
            {
              v18 = v37 + 1;
              *(a2 + 1) = v18;
LABEL_78:
              v53 = 0;
              if (v18 >= v14 || *v18 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v53 = *v18;
                *(a2 + 1) = v18 + 1;
              }

              v38 = *(this + 18);
              if (v38 == *(this + 19))
              {
                google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v38 + 1);
                v38 = *(this + 18);
              }

              v39 = v53;
              v40 = *(this + 8);
              *(this + 18) = v38 + 1;
              *(v40 + 4 * v38) = v39;
              v41 = *(this + 19) - *(this + 18);
              if (v41 >= 1)
              {
                v42 = v41 + 1;
                do
                {
                  v43 = *(a2 + 1);
                  v44 = *(a2 + 2);
                  if (v43 >= v44 || *v43 != 40)
                  {
                    break;
                  }

                  *(a2 + 1) = v43 + 1;
                  if ((v43 + 1) >= v44 || v43[1] < 0)
                  {
                    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
                    {
                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    v53 = v43[1];
                    *(a2 + 1) = v43 + 2;
                  }

                  v45 = *(this + 18);
                  if (v45 >= *(this + 19))
                  {
                    google::protobuf::internal::LogMessage::LogMessage(v55, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 642);
                    v46 = google::protobuf::internal::LogMessage::operator<<(v55, "CHECK failed: (size()) < (Capacity()): ");
                    google::protobuf::internal::LogFinisher::operator=(&v54, v46);
                    google::protobuf::internal::LogMessage::~LogMessage(&v55[0].__r_.__value_.__l.__data_);
                    v45 = *(this + 18);
                  }

                  v47 = v53;
                  v48 = *(this + 8);
                  *(this + 18) = v45 + 1;
                  *(v48 + 4 * v45) = v47;
                  --v42;
                }

                while (v42 > 1);
              }

LABEL_95:
              v37 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            while (v37 < v14 && *v37 == 40);
            if (v37 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              v49 = 1;
              *(a2 + 36) = 1;
              goto LABEL_103;
            }
          }

          break;
        case 5u:
          if (v7 == 40)
          {
            v18 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_78;
          }

          if (v7 == 42)
          {
            if (google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64))
            {
              goto LABEL_95;
            }

LABEL_101:
            v49 = 0;
            goto LABEL_103;
          }

LABEL_29:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_102;
          }

LABEL_31:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v51, v4))
          {
            goto LABEL_101;
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
      goto LABEL_29;
    }

    *(this + 8) |= 1u;
    v16 = *(this + 5);
    if (!v16)
    {
      operator new();
    }

    LODWORD(v55[0].__r_.__value_.__l.__data_) = 0;
    v17 = *(a2 + 1);
    if (v17 >= *(a2 + 2) || *v17 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v55))
      {
        goto LABEL_101;
      }
    }

    else
    {
      LODWORD(v55[0].__r_.__value_.__l.__data_) = *v17;
      *(a2 + 1) = v17 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      goto LABEL_101;
    }

    v21 = google::protobuf::io::CodedInputStream::PushLimit(a2, v55[0].__r_.__value_.__l.__data_);
    if (!topotext::CharID::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
    {
      goto LABEL_101;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    v11 = *(a2 + 2);
    if (v25 < v11 && *v25 == 16)
    {
      v12 = v25 + 1;
      *(a2 + 1) = v12;
LABEL_48:
      if (v12 >= v11 || (v26 = *v12, v26 < 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14))
        {
          goto LABEL_101;
        }

        v27 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else
      {
        *(this + 14) = v26;
        v27 = v12 + 1;
        *(a2 + 1) = v27;
      }

      v13 = *(this + 8) | 2;
      *(this + 8) = v13;
      if (v27 < v11 && *v27 == 26)
      {
        *(a2 + 1) = v27 + 1;
LABEL_56:
        *(this + 8) = v13 | 4;
        v28 = *(this + 6);
        if (!v28)
        {
          operator new();
        }

        LODWORD(v55[0].__r_.__value_.__l.__data_) = 0;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v55))
          {
            goto LABEL_101;
          }
        }

        else
        {
          LODWORD(v55[0].__r_.__value_.__l.__data_) = *v29;
          *(a2 + 1) = v29 + 1;
        }

        v30 = *(a2 + 14);
        v31 = *(a2 + 15);
        *(a2 + 14) = v30 + 1;
        if (v30 >= v31)
        {
          goto LABEL_101;
        }

        v32 = google::protobuf::io::CodedInputStream::PushLimit(a2, v55[0].__r_.__value_.__l.__data_);
        if (!topotext::CharID::MergePartialFromCodedStream(v28, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_101;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
        v33 = *(a2 + 14);
        v23 = __OFSUB__(v33, 1);
        v34 = v33 - 1;
        if (v34 < 0 == v23)
        {
          *(a2 + 14) = v34;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v35 < v14 && *v35 == 32)
        {
          v15 = v35 + 1;
          *(a2 + 1) = v15;
          goto LABEL_70;
        }
      }
    }
  }

  if (v10 == 2)
  {
    if (v7 != 16)
    {
      goto LABEL_29;
    }

    v12 = *(a2 + 1);
    v11 = *(a2 + 2);
    goto LABEL_48;
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
    goto LABEL_31;
  }

LABEL_102:
  v49 = 1;
LABEL_103:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v51);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v52);
  return v49;
}

void sub_19A1EABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(google::protobuf::internal::WireFormatLite::FieldType)13>(google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        result = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = v12;
      v11 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v11 + 4 * v9) = v10;
    }

    while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t topotext::Substring::SerializeWithCachedSizes(topotext::Substring *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    v12 = *(this + 5);
    if (!v12)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v12 = *(topotext::Substring::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v12, a2);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 14), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v13 = *(v5 + 6);
  if (!v13)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v13 = *(topotext::Substring::default_instance_ + 48);
  }

  google::protobuf::internal::WireFormatLite::WriteMessage(3, v13, a2);
  if ((*(v5 + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 60), a2, a4);
  }

LABEL_6:
  if (*(v5 + 18) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::RepeatedField<unsigned int>::Get(v5 + 64, v7);
      google::protobuf::internal::WireFormatLite::WriteUInt32(5, *v8, a2, v9);
      ++v7;
    }

    while (v7 < *(v5 + 18));
  }

  v10 = *(v5 + 31);
  if (v10 < 0)
  {
    v11 = *(v5 + 1);
    v10 = *(v5 + 2);
  }

  else
  {
    v11 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v11, v10);
}

uint64_t topotext::Substring::ByteSize(topotext::Substring *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (v2)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v5 = *(topotext::Substring::default_instance_ + 40);
    }

    v6 = topotext::CharID::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = v7 + v8 + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 14);
    if (v9 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 6);
    if (!v11)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v11 = *(topotext::Substring::default_instance_ + 48);
    }

    v12 = topotext::CharID::ByteSize(v11);
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
  }

  v4 = ((v2 >> 2) & 2) + v3;
LABEL_24:
  v15 = *(this + 18);
  if (v15 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *google::protobuf::RepeatedField<unsigned int>::Get(this + 64, v16);
      if (v18 >= 0x80)
      {
        v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      }

      else
      {
        v19 = 1;
      }

      v17 += v19;
      ++v16;
      v15 = *(this + 18);
    }

    while (v16 < v15);
  }

  v20 = *(this + 31);
  if (v20 < 0)
  {
    v20 = *(this + 2);
  }

  result = (v17 + v4 + v15 + v20);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Substring::CheckTypeAndMergeFrom(topotext::Substring *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Substring::MergeFrom(this, lpsrc);
}

std::string *topotext::Selection_Range::MergeFrom(topotext::Selection_Range *this, const topotext::Selection_Range *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 1921);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v7 = *(topotext::Selection_Range::default_instance_ + 40);
      }

      this = topotext::CharID::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v9 = *(topotext::Selection_Range::default_instance_ + 48);
      }

      topotext::CharID::MergeFrom(v8, v9);
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

  return std::string::append((v3 + 8), v14, v15);
}

void sub_19A1EB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::Selection_Range::~Selection_Range(void **this)
{
  *this = &unk_1F0D66990;
  topotext::Selection_Range::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Selection_Range::~Selection_Range(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::Selection_Range::SharedDtor(topotext::Selection_Range *this)
{
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::Selection_Range::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t topotext::Selection_Range::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 40);
      if (v2)
      {
        *(v2 + 40) = 0;
        *(v2 + 32) = 0;
        if (*(v2 + 31) < 0)
        {
          **(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        else
        {
          *(v2 + 8) = 0;
          *(v2 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 2) != 0)
    {
      v3 = *(this + 48);
      if (v3)
      {
        *(v3 + 40) = 0;
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
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

uint64_t topotext::Selection_Range::MergePartialFromCodedStream(topotext::Selection_Range *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
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
        break;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      v7 = v6 | 0x100000000;
    }

    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        goto LABEL_48;
      }

      v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!topotext::CharID::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_48;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_33:
        *(this + 8) |= 2u;
        v19 = *(this + 6);
        if (!v19)
        {
          operator new();
        }

        v30 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !topotext::CharID::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v26 = 1;
          *(a2 + 36) = 1;
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_49;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }
  }

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
    goto LABEL_18;
  }

LABEL_49:
  v26 = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_19A1EB7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Selection_Range::SerializeWithCachedSizes(topotext::Selection_Range *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v5 = *(topotext::Selection_Range::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 6);
    if (!v6)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v6 = *(topotext::Selection_Range::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v3 + 31);
  if (v7 < 0)
  {
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
  }

  else
  {
    v8 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::Selection_Range::ByteSize(topotext::Selection_Range *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v3 = *(topotext::Selection_Range::default_instance_ + 40);
  }

  v4 = topotext::CharID::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 6);
    if (!v7)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v7 = *(topotext::Selection_Range::default_instance_ + 48);
    }

    v8 = topotext::CharID::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Selection_Range::CheckTypeAndMergeFrom(topotext::Selection_Range *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Selection_Range::MergeFrom(this, lpsrc);
}

topotext::Selection *topotext::Selection::Selection(topotext::Selection *this)
{
  *this = &unk_1F0D66A08;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  topotext::Selection::SharedCtor(this);
  return this;
}

void sub_19A1EBAB4(_Unwind_Exception *a1)
{
  v5 = v2;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(v5);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v4);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

void topotext::Selection::SharedCtor(topotext::Selection *this)
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

  *(this + 22) = 0;
  *(this + 4) = 0;
}

void sub_19A1EBB9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *topotext::Selection::MergeFrom(topotext::Selection *this, const topotext::Selection *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 2183);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 40), (a2 + 40));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>((this + 64), (a2 + 64));
  if ((*(a2 + 32) & 4) != 0)
  {
    v5 = *(a2 + 22);
    if (v5 >= 2)
    {
      topotext::Selection::MergeFrom();
    }

    *(this + 8) |= 4u;
    *(this + 22) = v5;
  }

  v8 = *(a2 + 1);
  v7 = a2 + 8;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 8), v10, v11);
}

void sub_19A1EBC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::Selection::~Selection(topotext::Selection *this)
{
  *this = &unk_1F0D66A08;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(this + 8);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::Selection::~Selection(this);

  JUMPOUT(0x19A8FD070);
}

uint64_t topotext::Selection::Clear(topotext::Selection *this)
{
  *(this + 22) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 64);
  *(this + 8) = 0;
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

uint64_t topotext::Selection::MergePartialFromCodedStream(topotext::Selection *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v34, this + 8);
  TagFallback = google::protobuf::io::CodedOutputStream::CodedOutputStream(v33, v34);
  do
  {
    while (1)
    {
LABEL_2:
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, v7 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v8 = TagFallback | (((TagFallback - 1) < 0x7F) << 32);
        if ((v8 & 0x100000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        v8 = v7 | 0x100000000;
      }

      v9 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v18 = *(this + 19);
          v19 = *(this + 18);
          if (v19 >= v18)
          {
            if (v18 == *(this + 20))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 8, v18 + 1);
            }

            operator new();
          }

          v20 = *(this + 8);
          *(this + 18) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v35 = 0;
          v22 = *(a2 + 1);
          if (v22 >= *(a2 + 2) || *v22 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
            {
              goto LABEL_67;
            }
          }

          else
          {
            v35 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v23 = *(a2 + 14);
          v24 = *(a2 + 15);
          *(a2 + 14) = v23 + 1;
          if (v23 >= v24 || (v25 = google::protobuf::io::CodedInputStream::PushLimit(a2, v35), !topotext::Selection_Range::MergePartialFromCodedStream(v21, a2)) || *(a2 + 36) != 1)
          {
LABEL_67:
            v31 = 0;
            goto LABEL_69;
          }

          TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
          v26 = *(a2 + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(a2 + 14) = v28;
          }

          v14 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v14 >= v17)
          {
            break;
          }

          v29 = *v14;
          if (v29 != 18)
          {
            if (v29 != 24)
            {
              goto LABEL_2;
            }

            v16 = (v14 + 1);
            *(a2 + 1) = v16;
            goto LABEL_54;
          }

LABEL_57:
          *(a2 + 1) = v14 + 1;
        }
      }

      else if (v9 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v11 = *(this + 13);
          v12 = *(this + 12);
          if (v12 >= v11)
          {
            if (v11 == *(this + 14))
            {
              TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 5, v11 + 1);
            }

            google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
          }

          v13 = *(this + 5);
          *(this + 12) = v12 + 1;
          TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v13 + 8 * v12));
          if (!TagFallback)
          {
            goto LABEL_67;
          }

          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2))
          {
            break;
          }

          v15 = *v14;
          if (v15 != 10)
          {
            if (v15 != 18)
            {
              goto LABEL_2;
            }

            goto LABEL_57;
          }

          *(a2 + 1) = v14 + 1;
        }
      }

      else
      {
LABEL_11:
        if (v8)
        {
          v10 = (v8 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
LABEL_68:
          v31 = 1;
          goto LABEL_69;
        }

LABEL_33:
        TagFallback = google::protobuf::internal::WireFormatLite::SkipField(a2, v8, v33, v5);
        if ((TagFallback & 1) == 0)
        {
          goto LABEL_67;
        }
      }
    }

    if (v8 != 24)
    {
LABEL_31:
      if (!v8 || (v8 & 7) == 4)
      {
        goto LABEL_68;
      }

      goto LABEL_33;
    }

    v16 = *(a2 + 1);
    v17 = *(a2 + 2);
LABEL_54:
    v35 = 0;
    if (v16 >= v17 || (v30 = *v16, (v30 & 0x80000000) != 0))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
      if ((TagFallback & 1) == 0)
      {
        goto LABEL_67;
      }

      v30 = v35;
    }

    else
    {
      *(a2 + 1) = v16 + 1;
    }

    if (v30 > 1)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v8);
      TagFallback = google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v30);
    }

    else
    {
      *(this + 8) |= 4u;
      *(this + 22) = v30;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v31 = 1;
  *(a2 + 36) = 1;
LABEL_69:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v33);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v34);
  return v31;
}

void sub_19A1EC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Selection::SerializeWithCachedSizes(topotext::Selection *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40, v6);
      google::protobuf::internal::WireFormatLite::WriteBytes(1, v7, a2);
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  if (*(this + 18) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(this + 64, v8);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v9, a2);
      ++v8;
    }

    while (v8 < *(this + 18));
  }

  if ((*(this + 32) & 4) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt32(3, *(this + 22), a2, a4);
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v11 = *(this + 1);
    v10 = *(this + 2);
  }

  else
  {
    v11 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v11, v10);
}

uint64_t topotext::Selection::ByteSize(topotext::Selection *this)
{
  if ((*(this + 32) & 4) != 0)
  {
    v3 = *(this + 22);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
    {
      v2 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 12);
  v5 = v4 + v2;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40, v6);
      v8 = *(v7 + 23);
      v9 = v8;
      v10 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 0x80)
      {
        v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(v7 + 23);
        v10 = *(v7 + 8);
        v9 = *(v7 + 23);
      }

      else
      {
        v12 = 1;
      }

      if (v9 < 0)
      {
        v8 = v10;
      }

      v5 += v12 + v8;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v13 = *(this + 18);
  v14 = v13 + v5;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(this + 64, v15);
      v17 = topotext::Selection_Range::ByteSize(v16);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v19 = 1;
      }

      v14 += v18 + v19;
      ++v15;
    }

    while (v15 < *(this + 18));
  }

  v20 = *(this + 31);
  if (v20 < 0)
  {
    v20 = *(this + 2);
  }

  result = (v14 + v20);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Selection::CheckTypeAndMergeFrom(topotext::Selection *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    replica_manager::VectorTimestampElement::CheckTypeAndMergeFrom();
  }

  return topotext::Selection::MergeFrom(this, lpsrc);
}

topotext::AttributeRun *topotext::AttributeRun::AttributeRun(topotext::AttributeRun *this)
{
  *this = &unk_1F0D66A80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::AttributeRun::SharedCtor(this);
  return this;
}

void sub_19A1EC564(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(v1);
  _Unwind_Resume(a1);
}

double topotext::AttributeRun::SharedCtor(topotext::AttributeRun *this)
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

  *(this + 20) = 0;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 17) = 0;
  *(this + 9) = v3;
  *(this + 8) = 0;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 29) = 0;
  return result;
}

void sub_19A1EC650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *topotext::AttributeRun::MergeFrom(topotext::AttributeRun *this, const topotext::AttributeRun *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v33, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/topotext.pb.cc", 2832);
    v4 = google::protobuf::internal::LogMessage::operator<<(v33, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v32, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v33[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    if (v5)
    {
      v6 = *(a2 + 12);
      *(v3 + 8) |= 1u;
      *(v3 + 12) = v6;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 8) |= 2u;
    v7 = *(v3 + 5);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 5);
    if (!v8)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v8 = *(topotext::AttributeRun::default_instance_ + 40);
    }

    this = topotext::ParagraphStyle::MergeFrom(v7, v8);
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(v3 + 8) |= 4u;
    v9 = *(v3 + 7);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 7);
    if (!v10)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v10 = *(topotext::AttributeRun::default_instance_ + 56);
    }

    this = topotext::Font::MergeFrom(v9, v10);
    v5 = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    v11 = *(a2 + 13);
    *(v3 + 8) |= 8u;
    *(v3 + 13) = v11;
    v5 = *(a2 + 8);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    v12 = *(a2 + 16);
    *(v3 + 8) |= 0x10u;
    *(v3 + 16) = v12;
    v5 = *(a2 + 8);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:
    v13 = *(a2 + 17);
    *(v3 + 8) |= 0x20u;
    *(v3 + 17) = v13;
    v5 = *(a2 + 8);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_27:
    v14 = *(a2 + 20);
    *(v3 + 8) |= 0x40u;
    *(v3 + 20) = v14;
    v5 = *(a2 + 8);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_28:
    v15 = *(a2 + 9);
    *(v3 + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      replica_manager::ReplicaManager::SharedCtor();
    }

    v16 = *(v3 + 9);
    if (v16 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    this = std::string::operator=(v16, v15);
    v5 = *(a2 + 8);
  }

LABEL_32:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 8) |= 0x100u;
      v17 = *(v3 + 11);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 11);
      if (!v18)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v18 = *(topotext::AttributeRun::default_instance_ + 88);
      }

      this = topotext::Color::MergeFrom(v17, v18);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x200) != 0)
    {
      v19 = *(a2 + 21);
      if (v19 >= 5)
      {
        topotext::AttributeRun::MergeFrom();
      }

      *(v3 + 8) |= 0x200u;
      *(v3 + 21) = v19;
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x400) != 0)
    {
      *(v3 + 8) |= 0x400u;
      v20 = *(v3 + 12);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 12);
      if (!v21)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v21 = *(topotext::AttributeRun::default_instance_ + 96);
      }

      this = topotext::AttachmentInfo::MergeFrom(v20, v21);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x800) != 0)
    {
      v22 = *(a2 + 13);
      *(v3 + 8) |= 0x800u;
      *(v3 + 13) = v22;
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x1000) != 0)
    {
      *(v3 + 8) |= 0x1000u;
      v23 = *(v3 + 14);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 14);
      if (!v24)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v24 = *(topotext::AttributeRun::default_instance_ + 112);
      }

      topotext::HashtagInfo::MergeFrom(v23, v24);
    }
  }

  v27 = *(a2 + 1);
  v26 = a2 + 8;
  v25 = v27;
  v28 = v26[23];
  if (v28 >= 0)
  {
    v29 = v26;
  }

  else
  {
    v29 = v25;
  }

  if (v28 >= 0)
  {
    v30 = v26[23];
  }

  else
  {
    v30 = *(v26 + 1);
  }

  return std::string::append((v3 + 8), v29, v30);
}

void topotext::AttributeRun::~AttributeRun(void **this)
{
  *this = &unk_1F0D66A80;
  topotext::AttributeRun::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  TTBoundedCheckedCastNSUIntegerToUInt32(this);
}

{
  topotext::AttributeRun::~AttributeRun(this);

  JUMPOUT(0x19A8FD070);
}

void topotext::AttributeRun::SharedDtor(topotext::AttributeRun *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    replica_manager::ReplicaManager::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = v2 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x19A8FD070](v2, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::AttributeRun::default_instance_ != v1)
  {
    v4 = *(v1 + 5);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 7);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v1 + 11);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v1 + 12);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v1 + 14);
    if (v8)
    {
      v9 = *(*v8 + 8);

      v9();
    }
  }
}

uint64_t topotext::AttributeRun::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    *(this + 48) = 0;
    *(this + 64) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = topotext::ParagraphStyle::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = topotext::Font::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    *(v1 + 80) = 0;
    if ((v2 & 0x80) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        replica_manager::ReplicaManager::SharedCtor();
      }

      v3 = *(v1 + 72);
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

  v4 = *(v1 + 32);
  if ((v4 & 0x1F00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v5 = *(v1 + 88);
      if (v5)
      {
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        if (*(v5 + 31) < 0)
        {
          **(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        else
        {
          *(v5 + 8) = 0;
          *(v5 + 31) = 0;
        }
      }
    }

    *(v1 + 84) = 0;
    v6 = *(v1 + 32);
    if ((v6 & 0x400) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = topotext::AttachmentInfo::Clear(this);
        v6 = *(v1 + 32);
      }
    }

    *(v1 + 104) = 0;
    if ((v6 & 0x1000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = topotext::HashtagInfo::Clear(this);
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