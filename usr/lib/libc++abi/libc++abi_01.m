void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::PointerToMemberType,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(*a3 + 9);
  *(result + 8) = 14;
  *(result + 9) = v8 & 0xC0 | *(result + 9) & 0xF000 | 0x500;
  *result = off_1EEEA8380;
  result[2] = v6;
  result[3] = v7;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::PointerToMemberType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

void *anonymous namespace::itanium_demangle::PointerToMemberType::printLeft(uint64_t a1, void *a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    if ((*(*v4 + 8))(v4, a2))
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 24);
    v5 = *(v4 + 9);
  }

  v7 = (v5 >> 10) & 3;
  if (v7 && (v7 != 2 || ((*(*v4 + 16))(v4, a2) & 1) == 0))
  {
    v8 = 32;
    goto LABEL_10;
  }

LABEL_8:
  v8 = 40;
LABEL_10:
  *(*a2 + a2[1]++) = v8;
  v10 = *a2 + a2[1];
  *(v10 + 2) = 42;
  *v10 = 14906;
  a2[1] += 3;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::PointerToMemberType::printRight(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    if ((*(*v4 + 8))(v4, this))
    {
LABEL_8:
      *(*this + (*(this + 1))++) = 41;
      goto LABEL_9;
    }

    v4 = *(a1 + 24);
    v5 = *(v4 + 9);
  }

  v7 = (v5 >> 10) & 3;
  if (!v7 || v7 == 2 && (*(*v4 + 16))(v4, this))
  {
    goto LABEL_8;
  }

LABEL_9:
  v8 = *(**(a1 + 24) + 40);

  return v8();
}

uint64_t anonymous namespace::itanium_demangle::ElaboratedTypeSpefType::printLeft(void *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    memcpy((*this + *(this + 1)), v5, v4);
    *(this + 1) += v4;
  }

  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 32;
  v8 = a1[4];
}

uint64_t anonymous namespace::itanium_demangle::PointerType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

void *anonymous namespace::itanium_demangle::PointerType::printLeft(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  {
    (*(*v4 + 32))(v4, a2);
    v10 = *(a1 + 16);
    if ((v10[10] & 3) == 0 || (v10[10] & 3) == 2 && (*(*v10 + 8))(v10, a2))
    {
      *(*a2 + a2[1]++) = 32;
    }

    v11 = *(a1 + 16);
    v12 = *(v11 + 9);
    v13 = (v12 >> 8) & 3;
    if (v13)
    {
      if (v13 != 2)
      {
LABEL_14:
        v14 = (v12 >> 10) & 3;
        if (v14 && (v14 != 2 || !(*(*v11 + 16))(v11, a2)))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (((*(*v11 + 8))(v11, a2) & 1) == 0)
      {
        v11 = *(a1 + 16);
        v12 = *(v11 + 9);
        goto LABEL_14;
      }
    }

LABEL_17:
    *(*a2 + a2[1]++) = 40;
LABEL_18:
    v9 = 42;
    goto LABEL_19;
  }

  v5 = *a2 + a2[1];
  *(v5 + 2) = 60;
  *v5 = 25705;
  a2[1] += 3;
  v6 = *(v4 + 32);
  if (v6)
  {
    v7 = *(v4 + 24);
    memcpy((*a2 + a2[1]), v7, v6);
    a2[1] += v6;
  }

  v9 = 62;
LABEL_19:
  *(*a2 + a2[1]++) = v9;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::PointerType::printRight(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(a1 + 16);
  if (*(v4 + 8) == 11)
  {
    if (result)
    {
      return result;
    }
  }

  v6 = *(v4 + 9);
  v7 = (v6 >> 8) & 3;
  if (!v7)
  {
    goto LABEL_10;
  }

  if (v7 == 2)
  {
    if ((*(*v4 + 8))(v4, this))
    {
LABEL_10:
      *(*this + (*(this + 1))++) = 41;
      goto LABEL_11;
    }

    v4 = *(a1 + 16);
    v6 = *(v4 + 9);
  }

  v8 = (v6 >> 10) & 3;
  if (!v8 || v8 == 2 && (*(*v4 + 16))(v4, this))
  {
    goto LABEL_10;
  }

LABEL_11:
  v9 = *(**(a1 + 16) + 40);

  return v9();
}

BOOL anonymous namespace::itanium_demangle::ObjCProtoName::isObjCObject(_anonymous_namespace_::itanium_demangle::ObjCProtoName *this)
{
  v1 = *(this + 2);
  if (*(v1 + 8) != 8 || *(v1 + 24) != 11)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(v2 + 3);
  return v3 == 0x6A626F5F636A626FLL && v4 == 0x7463656A626F5F63;
}

uint64_t anonymous namespace::itanium_demangle::ReferenceType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

uint64_t anonymous namespace::itanium_demangle::ReferenceType::printLeft(uint64_t result, void *a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    v6 = v5;
    if (!v5)
    {
LABEL_22:
      *(v4 + 28) = v2;
      return result;
    }

    v7 = result;
    (*(*v5 + 32))(v5, a2);
    if ((*(v6 + 10) & 3) == 0 || (*(v6 + 10) & 3) == 2 && (*(*v6 + 8))(v6, a2))
    {
      *(*a2 + a2[1]++) = 32;
    }

    v8 = *(v6 + 9);
    v9 = (v8 >> 8) & 3;
    if (!v9)
    {
      goto LABEL_14;
    }

    if (v9 == 2)
    {
      if ((*(*v6 + 8))(v6, a2))
      {
        goto LABEL_14;
      }

      v8 = *(v6 + 9);
    }

    v10 = (v8 >> 10) & 3;
    if (v10 && (v10 != 2 || !(*(*v6 + 16))(v6, a2)))
    {
LABEL_15:
      v11 = v7;
      if (v7)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if (v11)
      {
        v13 = "&&";
      }

      else
      {
        v13 = "&";
      }

      result = memcpy((*a2 + a2[1]), v13, v12);
      a2[1] += v12;
      goto LABEL_22;
    }

LABEL_14:
    *(*a2 + a2[1]++) = 40;
    goto LABEL_15;
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::ReferenceType::printRight(uint64_t result, void *a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    v6 = v5;
    if (!v5)
    {
LABEL_12:
      *(v4 + 28) = v2;
      return result;
    }

    v7 = *(v5 + 9);
    v8 = (v7 >> 8) & 3;
    if (v8)
    {
      if (v8 != 2)
      {
LABEL_7:
        v9 = (v7 >> 10) & 3;
        if (v9 && (v9 != 2 || !(*(*v6 + 16))(v6, a2)))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (((*(*v5 + 8))(v5, a2) & 1) == 0)
      {
        v7 = *(v6 + 9);
        goto LABEL_7;
      }
    }

LABEL_10:
    *(*a2 + a2[1]++) = 41;
LABEL_11:
    result = (*(*v6 + 40))(v6, a2);
    goto LABEL_12;
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::ReferenceType::collapse(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  ptr = v23;
  v21 = v23;
  v22 = &v24;
  memset(v23, 0, sizeof(v23));
  while (1)
  {
    v5 = (*(*v4 + 24))(v4, a2);
    if (*(v5 + 8) != 13)
    {
      break;
    }

    v4 = *(v5 + 16);
    if (*(v5 + 24) < v3)
    {
      v3 = *(v5 + 24);
    }

    v13 = v21;
    if (v21 == v22)
    {
      v14 = v21 - ptr;
      if (ptr == v23)
      {
        v16 = malloc_type_malloc(2 * (v21 - ptr), 0x6004044C4A2DFuLL);
        v15 = v16;
        if (!v16)
        {
LABEL_23:
          abort();
        }

        v6 = ptr;
        v7 = v21 - ptr;
        if (v21 != ptr)
        {
          memmove(v16, ptr, v7);
        }

        ptr = v15;
      }

      else
      {
        v15 = malloc_type_realloc(ptr, 2 * (v21 - ptr), 0x6004044C4A2DFuLL);
        ptr = v15;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      v13 = &v15[v14];
      v22 = &v15[8 * (v14 >> 2)];
    }

    v21 = v13 + 8;
    *v13 = v4;
    v17 = ptr;
    v18 = (v13 + 8 - ptr) >> 3;
    if (v18 >= 2)
    {
      if (v18 <= (v18 - 1) >> 1)
      {
        __abort_message("%s:%d: %s", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/ItaniumDemangle.h");
      }

      if (v4 == *&ptr[8 * ((v18 - 1) >> 1)])
      {
        goto LABEL_19;
      }
    }
  }

  v17 = ptr;
LABEL_19:
  if (v17 != v23)
  {
    free(v17);
  }

  return v3;
}

void sub_1801C6A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void *__cxxabiv1::anonymous namespace::InitByteGlobalMutex<__cxxabiv1::anonymous namespace::LibcppMutex,__cxxabiv1::anonymous namespace::LibcppCondVar,__cxxabiv1::anonymous namespace::GlobalStatic<__cxxabiv1::anonymous namespace::LibcppMutex>::instance,__cxxabiv1::anonymous namespace::GlobalStatic<__cxxabiv1::anonymous namespace::LibcppCondVar>::instance,&__cxxabiv1::anonymous namespace::PlatformThreadID>::LockGuard::~LockGuard(void *a1)
{
  if (pthread_mutex_unlock(&stru_1ED404068))
  {
    __abort_message("%s failed to release mutex", v2, v3, v4, v5, v6, v7, v8, *a1);
  }

  return a1;
}

void std::terminate(void)
{
  globals_fast = __cxa_get_globals_fast();
  if (globals_fast)
  {
    v1 = *globals_fast;
    if (*globals_fast)
    {
      if (__cxxabiv1::__isOurExceptionClass(v1 + 3))
      {
        exception_cleanup = v1[1].exception_cleanup;
        if (!exception_cleanup)
        {
          std::__terminate(0);
        }

        std::__terminate(exception_cleanup);
      }
    }
  }

  terminate = std::get_terminate();
  std::__terminate(terminate);
}

void *__cxa_vec_new2(size_t element_count, size_t element_size, size_t padding_size, __cxa_cdtor_type constructor, __cxa_cdtor_type destructor, void *(*alloc)(size_t), void (*dealloc)(void *))
{
  if (!is_mul_ok(element_count, element_size) || (v9 = element_count, v10 = __CFADD__(element_count * element_size, padding_size), element_count = element_count * element_size + padding_size, v10))
  {
  }

  v13 = alloc(element_count);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if (padding_size)
  {
    v14 = &v13[padding_size];
    *&v13[padding_size - 8] = v9;
  }

  __cxa_vec_ctor(v14, v9, element_size, constructor, destructor);
  return v14;
}

__cxa_vec_ctor_return_type __cxa_vec_ctor(void *array_address, size_t element_count, size_t element_size, __cxa_cdtor_type constructor, __cxa_cdtor_type destructor)
{
  if (constructor)
  {
    v7 = array_address;
    v9[0] = array_address;
    v9[1] = &i;
    v9[2] = element_size;
    v9[3] = destructor;
    v10 = 1;
    for (i = 0; i < element_count; v7 += element_size)
    {
      constructor(v7);
      ++i;
    }

    v10 = 0;
  }
}

void *__cxa_vec_new3(size_t element_count, size_t element_size, size_t padding_size, __cxa_cdtor_type constructor, __cxa_cdtor_type destructor, void *(*alloc)(size_t), void (*dealloc)(void *, size_t))
{
  if (!is_mul_ok(element_count, element_size) || __CFADD__(element_count * element_size, padding_size))
  {
  }

  v12 = alloc(element_count * element_size + padding_size);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  if (padding_size)
  {
    v13 = &v12[padding_size];
    *&v12[padding_size - 8] = element_count;
  }

  __cxa_vec_ctor(v13, element_count, element_size, constructor, destructor);
  return v13;
}

__cxa_vec_ctor_return_type __cxa_vec_cctor(void *dest_array, void *src_array, size_t element_count, size_t element_size, __cxa_cdtor_return_type (*constructor)(void *, void *), __cxa_cdtor_type destructor)
{
  if (constructor)
  {
    v8 = dest_array;
    v11[0] = dest_array;
    v11[1] = &i;
    v11[2] = element_size;
    v11[3] = destructor;
    v12 = 1;
    for (i = 0; i < element_count; v8 += element_size)
    {
      constructor(v8, src_array);
      ++i;
      src_array = src_array + element_size;
    }

    v12 = 0;
  }
}

void __cxxabiv1::anonymous namespace::st_cxa_cleanup::~st_cxa_cleanup(__cxxabiv1::_anonymous_namespace_::st_cxa_cleanup *this)
{
  if (*(this + 32) == 1)
  {
    v1 = *(this + 3);
    if (v1)
    {
      v2 = *(this + 2);
      v3 = **(this + 1);
      v4 = -v2;
      v5 = v3 + 1;
      for (i = *this + v2 * (v3 - 1); --v5; i = v7)
      {
        v7 = i + v4;
        v1();
      }
    }
  }
}

void __cxa_vec_dtor(void *array_address, size_t element_count, size_t element_size, __cxa_cdtor_type destructor)
{
  if (destructor)
  {
    v18 = element_count;
    v16[0] = array_address;
    v16[1] = &v18;
    v16[2] = element_size;
    v16[3] = destructor;
    v17 = 1;
    __cxa_uncaught_exception();
    v12 = -element_size;
    for (i = array_address + element_size * (element_count - 1); v18--; i = v15)
    {
      v15 = &i[v12];
      (destructor)(i, v8, v9, v10, v11);
    }

    v17 = 0;
  }
}

void sub_1801C7034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::terminate();
  }

  _Unwind_Resume(a1);
}

void __cxa_vec_cleanup(void *array_address, size_t element_count, size_t s, __cxa_cdtor_type destructor)
{
  if (destructor)
  {
    v5 = -s;
    v6 = element_count + 1;
    for (i = array_address + s * (element_count - 1); --v6; i = v8)
    {
      v8 = &i[v5];
      (destructor)();
    }
  }
}

void __cxa_vec_delete2(void *array_address, size_t element_size, size_t padding_size, __cxa_cdtor_type destructor, void (*dealloc)(void *))
{
  if (array_address)
  {
    v6 = array_address - padding_size;
    if (padding_size)
    {
      if (destructor)
      {
        __cxa_vec_dtor(array_address, *(array_address - 1), element_size, destructor);
      }
    }

    (dealloc)(v6, element_size);
  }
}

void __cxa_vec_delete3(void *array_address, size_t element_size, size_t padding_size, __cxa_cdtor_type destructor, void (*dealloc)(void *, size_t))
{
  if (array_address)
  {
    v6 = array_address - padding_size;
    if (padding_size)
    {
      v8 = *(array_address - 1);
      v9 = padding_size + v8 * element_size;
      if (destructor)
      {
        __cxa_vec_dtor(array_address, v8, element_size, destructor);
      }
    }

    else
    {
      v9 = 0;
    }

    dealloc(v6, v9);
  }
}

void __cxxabiv1::anonymous namespace::throw_bad_array_new_length(__cxxabiv1::_anonymous_namespace_ *this)
{
  exception = __cxa_allocate_exception(8uLL);
  v2 = std::bad_array_new_length::bad_array_new_length(exception);
}

std::bad_alloc *__cdecl std::bad_alloc::bad_alloc(std::bad_alloc *this)
{
  this->__vftable = &off_1EEEA8560;
  return this;
}

{
  this->__vftable = &off_1EEEA8560;
  return this;
}

std::bad_array_new_length *__cdecl std::bad_array_new_length::bad_array_new_length(std::bad_array_new_length *this)
{
  this->__vftable = &off_1EEEA8588;
  return this;
}

{
  this->__vftable = &off_1EEEA8588;
  return this;
}

void std::logic_error::~logic_error(std::logic_error *this)
{
  this->__vftable = off_1EEEA8658;
  imp = this->__imp_.__imp_;
  if ((atomic_load_explicit(&qword_1ED4040F0, memory_order_acquire) & 1) == 0)
  {
    v4 = imp;
    std::logic_error::~logic_error();
    imp = v4;
  }

  if (imp != _MergedGlobals_0)
  {
    v3 = this->__imp_.__imp_;
    if ((atomic_fetch_add(v3 - 2, 0xFFFFFFFF) - 1) < 0)
    {
      operator delete((v3 - 24));
    }
  }

  std::exception::~exception(this);
}

{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  this->__vftable = off_1EEEA8680;
  imp = this->__imp_.__imp_;
  if ((atomic_load_explicit(&qword_1ED4040F0, memory_order_acquire) & 1) == 0)
  {
    v4 = imp;
    std::logic_error::~logic_error();
    imp = v4;
  }

  if (imp != _MergedGlobals_0)
  {
    v3 = this->__imp_.__imp_;
    if ((atomic_fetch_add(v3 - 2, 0xFFFFFFFF) - 1) < 0)
    {
      operator delete((v3 - 24));
    }
  }

  std::exception::~exception(this);
}

{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::invalid_argument::~invalid_argument(std::invalid_argument *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::length_error::~length_error(std::length_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::out_of_range::~out_of_range(std::out_of_range *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::range_error::~range_error(std::range_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::overflow_error::~overflow_error(std::overflow_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1865C8EF0);
}

void std::underflow_error::~underflow_error(std::underflow_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1865C8EF0);
}

char *std::__refstring_imp::anonymous namespace::compute_gcc_empty_string_storage(std::__refstring_imp::_anonymous_namespace_ *this)
{
  result = dlopen("/usr/lib/libstdc++.6.dylib", 16);
  if (result)
  {
    v2 = dlsym(result, "_ZNSs4_Rep20_S_empty_rep_storageE");
    if (v2)
    {
      return v2 + 24;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

std::bad_cast *__cdecl std::bad_cast::bad_cast(std::bad_cast *this)
{
  this->__vftable = off_1EEEA8898;
  return this;
}

{
  this->__vftable = off_1EEEA8898;
  return this;
}

void std::bad_cast::~bad_cast(std::bad_cast *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1865C8EF0);
}

std::bad_typeid *__cdecl std::bad_typeid::bad_typeid(std::bad_typeid *this)
{
  this->__vftable = off_1EEEA88C0;
  return this;
}

{
  this->__vftable = off_1EEEA88C0;
  return this;
}

void std::bad_typeid::~bad_typeid(std::bad_typeid *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1865C8EF0);
}

void __abort_message(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = MEMORY[0x1E69E9848];
  fwrite("libc++abi: ", 0xBuLL, 1uLL, *MEMORY[0x1E69E9848]);
  v11 = &a9;
  vfprintf(*v10, a1, &a9);
  fputc(10, *v10);
  v11 = 0;
  vasprintf(&v11, a1, &a9);
  qword_1EA79D8E0 = v11;
  abort();
}

int *__cxxabiv1::__aligned_malloc_with_fallback(unint64_t a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  if (((v1 + 15) & 0xFFFFFFFFFFFFFFF0) <= v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  result = malloc_type_aligned_alloc(0x10uLL, v2, 0x68636FA4uLL);
  if (!result)
  {
  }

  return result;
}

int *anonymous namespace::fallback_malloc(_anonymous_namespace_ *this)
{
  {
    {
LABEL_12:
      v13 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = &dword_1EA79DA4C;
    dword_1EA79DA4C = 8192128;
  }

  v10 = 0;
  v11 = (this + 3) >> 2;
  v12 = v11 + 1;
  while (1)
  {
    v13 = v9 + 1;
    if (((v9 + 1) & 0xF) != 0)
    {
      __abort_message("%s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/fallback_malloc.cpp");
    }

    v14 = v9;
    v15 = *(v9 + 1);
    v16 = (v15 - v12) & 3;
    if (v12 >= v15)
    {
      v16 = 0;
    }

    v17 = v16 + v12;
    if (v17 < v15)
    {
      break;
    }

    if (v11 < v15)
    {
      v20 = *v14;
      if (v10)
      {
        *v10 = v20;
      }

      else
      {
      }

      *v14 = 0;
      goto LABEL_19;
    }

    v18 = *v14;
    v10 = v14;
    if (v18 == 128)
    {
      goto LABEL_12;
    }
  }

  *(v14 + 1) = v15 - v17;
  v19 = &v14[(v15 - v17)];
  *v19 = 0;
  v19[1] = v17;
  v13 = (v19 + 2);
  if (((v19 + 2) & 0xF) != 0)
  {
    __abort_message("%s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/fallback_malloc.cpp");
  }

LABEL_19:
  return v13;
}

void *__cxxabiv1::__calloc_with_fallback(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x55EAF111uLL);
  if (!result)
  {
    v5 = a2 * a1;
    if (result)
    {
      v6 = result;
      bzero(result, v5);
      return v6;
    }
  }

  return result;
}

void __cxxabiv1::__aligned_free_with_fallback(void *a1, void *a2)
{
  {
    free(a1);
  }

  else
  {
  }
}

uint64_t anonymous namespace::fallback_free(_anonymous_namespace_ *this, void *a2)
{
  v3 = (this - 4);
  {
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
LABEL_9:
  }

  else
  {
    v5 = 0;
    v6 = *(this - 1);
    while (1)
    {
      v8 = v7[1];
      if (&v7[2 * v8] == v3)
      {
        v7[1] = v6 + v8;
      }

      if (&v3[2 * v6] == v7)
      {
        break;
      }

      v9 = *v7;
      v5 = v7;
      if (v9 == 128)
      {
        goto LABEL_9;
      }
    }

    *(this - 1) = v6 + v8;
    if (v5)
    {
    }

    else
    {
      *v3 = *v7;
    }
  }
}

void __cxxabiv1::__fundamental_type_info::~__fundamental_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__array_type_info::~__array_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__function_type_info::~__function_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__enum_type_info::~__enum_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__class_type_info::~__class_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__si_class_type_info::~__si_class_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__vmi_class_type_info::~__vmi_class_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__pbase_type_info::~__pbase_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__pointer_type_info::~__pointer_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

void __cxxabiv1::__pointer_to_member_type_info::~__pointer_to_member_type_info(std::type_info *this)
{
  std::type_info::~type_info(this);

  JUMPOUT(0x1865C8EF0);
}

BOOL is_equal(const std::type_info *a1, const std::type_info *a2, char a3)
{
  if (a3)
  {
    return a1 == a2 || strcmp((a1->__type_name & 0x7FFFFFFFFFFFFFFFLL), (a2->__type_name & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  else
  {

    return std::type_info::operator==[abi:ne200100](a1, a2);
  }
}

const __cxxabiv1::__shim_type_info *__cxxabiv1::__class_type_info::can_catch(__cxxabiv1::__class_type_info *this, const __cxxabiv1::__shim_type_info *a2, void **a3)
{
  if (std::type_info::operator==[abi:ne200100](this, a2))
  {
    return 1;
  }

  result = __cxxabiv1::is_class_type(a2);
  if (result)
  {
    v13 = *a3;
    if (!*a3)
    {
      __abort_message("%s:%d: %s", v7, 0, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/private_typeinfo.cpp");
    }

    v14[0] = result;
    v14[1] = 0;
    v14[2] = this;
    v14[3] = -1;
    v15 = 0u;
    memset(v16, 0, sizeof(v16));
    v17 = 1;
    v18 = 0;
    *&v16[24] = 1;
    (*(*result + 56))(result, v14, v13, 1);
    result = (*v16 == 1);
    if (*v16 == 1)
    {
      *a3 = v15;
    }
  }

  return result;
}

const __cxxabiv1::__shim_type_info *__cxxabiv1::is_class_type(const __cxxabiv1::__shim_type_info *a1)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v1 = a1;
  {
    return 0;
  }

  return v1;
}

void __cxxabiv1::__class_type_info::process_found_base_class(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 40) == *(a2 + 80) && *(a2 + 32) == a3)
    {
      if (*(a2 + 48) == 2)
      {
        *(a2 + 48) = a4;
      }
    }

    else
    {
      *(a2 + 60) = v4 + 1;
      *(a2 + 48) = 2;
      *(a2 + 78) = 1;
    }
  }

  else
  {
    *(a2 + 48) = a4;
    v5 = *(a2 + 80);
    *(a2 + 32) = a3;
    *(a2 + 40) = v5;
    *(a2 + 60) = 1;
  }
}

void __cxxabiv1::__class_type_info::has_unambiguous_public_base(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = std::type_info::operator==[abi:ne200100](a1, *(a2 + 16));
  if (v7)
  {

    __cxxabiv1::__class_type_info::process_found_base_class(v7, a2, a3, a4);
  }
}

void __cxxabiv1::__si_class_type_info::has_unambiguous_public_base(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = std::type_info::operator==[abi:ne200100](a1, *(a2 + 16));
  if (v8)
  {

    __cxxabiv1::__class_type_info::process_found_base_class(v8, a2, a3, a4);
  }

  else
  {
    v9 = *(**(a1 + 16) + 56);

    v9();
  }
}

uint64_t __cxxabiv1::__base_class_type_info::has_unambiguous_public_base(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[1];
  if (*(a2 + 79) == 1)
  {
    if (v3)
    {
      v4 = *(*a3 + (v3 >> 8));
    }
  }

  else if (v3)
  {
    *(a2 + 80) = *(*a1 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  }

  return (*(**a1 + 56))(*a1);
}

void __cxxabiv1::__vmi_class_type_info::has_unambiguous_public_base(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = std::type_info::operator==[abi:ne200100](a1, *(a2 + 16));
  if (v8)
  {

    __cxxabiv1::__class_type_info::process_found_base_class(v8, a2, a3, a4);
  }

  else
  {
    v9 = *(a1 + 20);
    __cxxabiv1::__base_class_type_info::has_unambiguous_public_base((a1 + 24), a2, a3);
    if (v9 >= 2)
    {
      v10 = a1 + 24 + 16 * v9;
      v11 = a1 + 56;
      do
      {
        __cxxabiv1::__base_class_type_info::has_unambiguous_public_base((v11 - 16), a2, a3);
        if (*(a2 + 78))
        {
          break;
        }

        v12 = v11 >= v10;
        v11 += 16;
      }

      while (!v12);
    }
  }
}

uint64_t __cxxabiv1::__pbase_type_info::can_catch(char **this, char **lpsrc, void **a3)
{
  if ((this[2] & 0x18) != 0)
  {
    return this == lpsrc || strcmp((this[1] & 0x7FFFFFFFFFFFFFFFLL), (lpsrc[1] & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  if (!lpsrc)
  {
    return 0;
  }

  v6 = **lpsrc;
  if (!result)
  {
    return result;
  }

  if ((*(result + 16) & 0x18) != 0)
  {
    return this == lpsrc || strcmp((this[1] & 0x7FFFFFFFFFFFFFFFLL), (lpsrc[1] & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  else
  {

    return std::type_info::operator==[abi:ne200100](this, lpsrc);
  }
}

void *__dynamic_cast(const void *lpsrc, const struct __class_type_info *lpstype, const struct __class_type_info *lpdtype, ptrdiff_t s2d)
{
  v8 = v15;
  v9 = is_equal(v15, lpdtype, 0);
  v10 = v14;
  if (v9)
  {
    v11 = v16;
    v12 = v14;
  }

  else
  {
    if (!result)
    {
    }
  }

  return result;
}

uint64_t __cxxabiv1::__pointer_type_info::can_catch(__cxxabiv1::__pointer_type_info *this, const __cxxabiv1::__shim_type_info *a2, void ***a3)
{
  {
    *a3 = 0;
    return 1;
  }

  if (__cxxabiv1::__pbase_type_info::can_catch(this, a2, v6))
  {
    if (*a3)
    {
      *a3 = **a3;
    }

    return 1;
  }

  if (!a2)
  {
    __cxa_bad_typeid();
  }

  if (result)
  {
    if (*a3)
    {
      *a3 = **a3;
    }

    v8 = *(a2 + 4);
    v9 = *(this + 4);
    if ((v8 & ~v9 & 7) != 0 || (v9 & ~v8 & 0x60) != 0)
    {
      return 0;
    }

    if (std::type_info::operator==[abi:ne200100](*(this + 3), *(a2 + 3)))
    {
      return 1;
    }

    {
      v10 = *(a2 + 3);
      if (v10)
      {
        v11 = **v10;
      }

      return 1;
    }

    v12 = *(this + 3);
    if (!v12)
    {
      goto LABEL_30;
    }

    v13 = *v12;
    v14 = **v12;
    if (v15)
    {
      if (*(this + 16))
      {
        v16 = *(a2 + 3);

        return __cxxabiv1::__pointer_type_info::can_catch_nested(v15, v16);
      }

      return 0;
    }

    v17 = *v13;
    if (v18)
    {
      if ((*(this + 16) & 1) == 0)
      {
        return 0;
      }

      v19 = *(a2 + 3);

      return __cxxabiv1::__pointer_to_member_type_info::can_catch_nested(v18, v19);
    }

    else
    {
LABEL_30:
      result = __cxxabiv1::is_class_type(v12);
      if (result)
      {
        v20 = result;
        result = __cxxabiv1::is_class_type(*(a2 + 3));
        if (result)
        {
          v21 = *a3;
          v22 = *a3 != 0;
          v24[0] = result;
          v24[1] = 0;
          v24[2] = v20;
          v24[3] = -1;
          v25 = 0u;
          memset(v26, 0, sizeof(v26));
          v27 = v22;
          v28 = 0;
          *&v26[24] = 1;
          (*(*result + 56))(result, v24, v21, 1);
          result = *v26 == 1;
          if (*v26 == 1)
          {
            v23 = v25;
            if (!v21)
            {
              v23 = 0;
            }

            *a3 = v23;
          }
        }
      }
    }
  }

  return result;
}

uint64_t __cxxabiv1::__pointer_type_info::can_catch_nested(__cxxabiv1::__pointer_type_info *this, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  while (1)
  {
    v3 = **lpsrc;
    if (!result)
    {
      break;
    }

    v5 = result;
    if ((*(result + 16) & ~*(this + 4)) != 0)
    {
      return 0;
    }

    if (std::type_info::operator==[abi:ne200100](*(this + 3), *(result + 24)))
    {
      return 1;
    }

    if ((*(this + 16) & 1) == 0)
    {
      return 0;
    }

    v6 = *(this + 3);
    if (!v6)
    {
      return 0;
    }

    v7 = *v6;
    v8 = **v6;
    if (!v9)
    {
      v10 = *v7;
      if (result)
      {
        v11 = *(v5 + 24);

        return __cxxabiv1::__pointer_to_member_type_info::can_catch_nested(result, v11);
      }

      return result;
    }

    this = v9;
    lpsrc = *(v5 + 24);
    if (!lpsrc)
    {
      return 0;
    }
  }

  return result;
}

BOOL __cxxabiv1::__pointer_to_member_type_info::can_catch_nested(__cxxabiv1::__pointer_to_member_type_info *this, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v3 = **lpsrc;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((v4[2] & ~*(this + 4)) != 0 || !std::type_info::operator==[abi:ne200100](*(this + 3), v4[3]))
  {
    return 0;
  }

  v6 = *(this + 4);
  v7 = v5[4];

  return std::type_info::operator==[abi:ne200100](v6, v7);
}

uint64_t __cxxabiv1::__pointer_to_member_type_info::can_catch(__cxxabiv1::__pointer_to_member_type_info *this, char **a2, void **a3)
{
  {
    v7 = *(this + 3);
    {
      v9 = &__cxxabiv1::__pointer_to_member_type_info::can_catch(__cxxabiv1::__shim_type_info const*,void *&)const::null_ptr_rep;
    }

    else
    {
      v9 = &__cxxabiv1::__pointer_to_member_type_info::can_catch(__cxxabiv1::__shim_type_info const*,void *&)const::null_ptr_rep;
    }

    *a3 = v9;
    return 1;
  }

  if (__cxxabiv1::__pbase_type_info::can_catch(this, a2, v6))
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = **a2;
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = *(result + 16);
  v14 = *(this + 4);
  if ((v13 & ~v14 & 7) != 0 || (v14 & ~v13 & 0x60) != 0)
  {
    return 0;
  }

  result = std::type_info::operator==[abi:ne200100](*(this + 3), *(result + 24));
  if (result)
  {
    v15 = *(this + 4);
    v16 = *(v12 + 32);

    return std::type_info::operator==[abi:ne200100](v15, v16);
  }

  return result;
}

void *__cxxabiv1::anonymous namespace::dyn_cast_get_derived_info(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 - 16);
  *result = a2 + v3;
  result[1] = *(v2 - 8);
  result[2] = v3;
  return result;
}

const void *__cxxabiv1::anonymous namespace::dyn_cast_to_derived(__cxxabiv1::_anonymous_namespace_ *this, const void *a2, void *a3, const __cxxabiv1::__class_type_info *a4, const __cxxabiv1::__class_type_info *a5, uint64_t a6)
{
  if (a6 < 0)
  {
    if (a6 == -2)
    {
      return 0;
    }

    v15 = a4;
    v16 = this;
    v17 = a3;
    v18 = a6;
    v19 = 0u;
    memset(v20, 0, 24);
    *&v20[24] = 1;
    *&v20[28] = 0x1000000;
    v21 = 0;
    (*(*a4 + 40))(a4, &v15, a2, a2, 1, 0);
    v13 = *v20;
    if (!*v20)
    {
      if ((add_explicit & (add_explicit - 1)) == 0)
      {
        syslog(3, "dynamic_cast error 1: Both of the following type_info's should have public visibility. At least one of them is hidden. %s, %s.\n", (a3[1] & 0x7FFFFFFFFFFFFFFFLL), (*(a4 + 1) & 0x7FFFFFFFFFFFFFFFLL));
      }

      v15 = a4;
      v16 = this;
      v17 = a3;
      v18 = a6;
      v19 = 0u;
      memset(v20, 0, 31);
      v20[31] = 1;
      v21 = 0;
      *&v20[24] = 1;
      (*(*a4 + 40))(a4, &v15, a2, a2, 1, 1);
      v13 = *v20;
    }

    v8 = v13 == 1;
  }

  else
  {
    v8 = (a5 + a6) == 0;
  }

  if (v8)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

char *__cxxabiv1::anonymous namespace::dyn_cast_try_downcast(__cxxabiv1::_anonymous_namespace_ *this, uint64_t a2, const void *a3, const __cxxabiv1::__class_type_info *a4, unint64_t a5)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v5 = this - a5;
  if ((this - a5) < a2)
  {
    return 0;
  }

  v7[0] = a4;
  v7[1] = this - a5;
  v7[2] = a3;
  v7[3] = a5;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 0x1000000;
  v13 = 0;
  (*(*a4 + 40))(a4, v7, a2, a2, 1, 0);
  if (v9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxxabiv1::anonymous namespace::dyn_cast_slow(__cxxabiv1::_anonymous_namespace_ *this, const void *a2, void *a3, const __cxxabiv1::__class_type_info *a4, const __cxxabiv1::__class_type_info *a5, const __cxxabiv1::__class_type_info *a6)
{
  v16 = a4;
  v17 = this;
  v18 = a3;
  v19 = a6;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v22 = 1;
  v23 = 0;
  (*(*a5 + 48))(a5, &v16, a2, 1, 0);
  if (!*v21)
  {
    if ((add_explicit & (add_explicit - 1)) == 0)
    {
      syslog(3, "dynamic_cast error 2: One or more of the following type_info's has hidden visibility or is defined in more than one translation unit. They should all have public visibility. %s, %s, %s.\n", (a3[1] & 0x7FFFFFFFFFFFFFFFLL), (*(a5 + 1) & 0x7FFFFFFFFFFFFFFFLL), (*(a4 + 1) & 0x7FFFFFFFFFFFFFFFLL));
    }

    v16 = a4;
    v17 = this;
    v18 = a3;
    v19 = a6;
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v22 = 1;
    v23 = 0;
    (*(*a5 + 48))(a5, &v16, a2, 1, 1);
  }

  if (*&v21[12] == 1)
  {
    if (*v21 == 1)
    {
      return v20;
    }

    result = 0;
    if (!*&v21[16] && *&v21[4] == 0x100000001)
    {
      return v20;
    }
  }

  else if (*&v21[12])
  {
    return 0;
  }

  else if (*&v21[8] == 1 && *&v21[4] == 1 && *&v21[16] == 1)
  {
    return *(&v20 + 1);
  }

  else
  {
    return 0;
  }

  return result;
}

void __cxxabiv1::__class_type_info::process_static_type_above_dst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a2 + 77) = 1;
  if (*(a2 + 8) != a4)
  {
    return;
  }

  *(a2 + 76) = 1;
  v5 = *(a2 + 32);
  if (!v5)
  {
    *(a2 + 32) = a3;
    *(a2 + 48) = a5;
    *(a2 + 60) = 1;
    if (a5 != 1)
    {
      return;
    }

    v6 = *(a2 + 72);
    goto LABEL_11;
  }

  if (v5 != a3)
  {
    ++*(a2 + 60);
    goto LABEL_12;
  }

  v6 = *(a2 + 48);
  if (v6 == 2)
  {
    *(a2 + 48) = a5;
    v6 = a5;
  }

  if (*(a2 + 72) == 1)
  {
LABEL_11:
    if (v6 != 1)
    {
      return;
    }

LABEL_12:
    *(a2 + 78) = 1;
  }
}

void __cxxabiv1::__class_type_info::process_static_type_below_dst(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 8) == a3 && *(a2 + 52) != 1)
  {
    *(a2 + 52) = a4;
  }
}

uint64_t __cxxabiv1::__vmi_class_type_info::search_below_dst(uint64_t result, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v8 = result;
  v9 = *(a2 + 16);
  if (a5)
  {
    if (v9 != result)
    {
      v10 = *(result + 8);
      result = strcmp((v10 & 0x7FFFFFFFFFFFFFFFLL), (*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (result)
      {
        if (*a2 != v8)
        {
          result = strcmp((v10 & 0x7FFFFFFFFFFFFFFFLL), (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
          if (result)
          {
LABEL_6:
            v11 = *(v8 + 20);
            result = __cxxabiv1::__base_class_type_info::search_below_dst((v8 + 24), a2, a3, a4);
            if (v11 >= 2)
            {
              v12 = v8 + 24 + 16 * v11;
              v13 = (v8 + 40);
              v14 = *(v8 + 16);
              if ((v14 & 2) != 0 || *(a2 + 60) == 1)
              {
                do
                {
                  if (*(a2 + 78))
                  {
                    break;
                  }

                  result = __cxxabiv1::__base_class_type_info::search_below_dst(v13, a2, a3, a4);
                  v13 += 2;
                }

                while (v13 < v12);
              }

              else if (v14)
              {
                do
                {
                  if ((*(a2 + 78) & 1) != 0 || *(a2 + 60) == 1 && *(a2 + 48) == 1)
                  {
                    break;
                  }

                  result = __cxxabiv1::__base_class_type_info::search_below_dst(v13, a2, a3, a4);
                  v13 += 2;
                }

                while (v13 < v12);
              }

              else
              {
                do
                {
                  if (*(a2 + 78))
                  {
                    break;
                  }

                  if (*(a2 + 60) == 1)
                  {
                    break;
                  }

                  result = __cxxabiv1::__base_class_type_info::search_below_dst(v13, a2, a3, a4);
                  v13 += 2;
                }

                while (v13 < v12);
              }
            }

            return result;
          }
        }

        goto LABEL_17;
      }
    }

LABEL_13:
    if (*(a2 + 8) == a3 && *(a2 + 52) != 1)
    {
      *(a2 + 52) = a4;
    }

    return result;
  }

  result = std::type_info::operator==[abi:ne200100](result, v9);
  if (result)
  {
    goto LABEL_13;
  }

  result = std::type_info::operator==[abi:ne200100](v8, *a2);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  if (*(a2 + 32) == a3 || *(a2 + 40) == a3)
  {
    if (a4 == 1)
    {
      *(a2 + 56) = 1;
    }
  }

  else
  {
    *(a2 + 56) = a4;
    if (*(a2 + 68) != 4)
    {
      v15 = *(v8 + 20);
      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = v8 + 16 * v15 + 24;
        v19 = (v8 + 24);
        do
        {
          *(a2 + 76) = 0;
          result = __cxxabiv1::__base_class_type_info::search_above_dst(v19, a2, a3, a3, 1);
          if (*(a2 + 78))
          {
            break;
          }

          if (*(a2 + 77) == 1)
          {
            if (*(a2 + 76) == 1)
            {
              if (*(a2 + 48) == 1 || (*(v8 + 16) & 2) == 0)
              {
                *(a2 + 68) = 3;
                return result;
              }

              v17 = 1;
              v16 = 1;
            }

            else
            {
              if ((*(v8 + 16) & 1) == 0)
              {
                goto LABEL_32;
              }

              v17 = 1;
            }
          }

          v19 += 2;
        }

        while (v19 < v18);
        if (v17)
        {
LABEL_32:
          v20 = 3;
          goto LABEL_47;
        }

        v20 = 4;
LABEL_47:
        *(a2 + 68) = v20;
        if (v16)
        {
          return result;
        }
      }

      else
      {
        *(a2 + 68) = 4;
      }
    }

    *(a2 + 40) = a3;
    v21 = *(a2 + 60);
    ++*(a2 + 64);
    if (v21 == 1 && *(a2 + 48) == 2)
    {
      *(a2 + 78) = 1;
    }
  }

  return result;
}

uint64_t __cxxabiv1::__base_class_type_info::search_above_dst(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a1[1];
  v6 = v5 >> 8;
  if (v5)
  {
    v6 = *(*a4 + v6);
  }

  v7 = *a1;
  if ((v5 & 2) != 0)
  {
    a5 = a5;
  }

  else
  {
    a5 = 2;
  }

  return (*(*v7 + 40))(v7, a2, a3, &a4[v6], a5);
}

uint64_t __cxxabiv1::__base_class_type_info::search_below_dst(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = v4 >> 8;
  if (v4)
  {
    v5 = *(*a3 + v5);
  }

  v6 = *a1;
  if ((v4 & 2) != 0)
  {
    a4 = a4;
  }

  else
  {
    a4 = 2;
  }

  return (*(*v6 + 48))(v6, a2, &a3[v5], a4);
}

uint64_t __cxxabiv1::__si_class_type_info::search_below_dst(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = result;
  v10 = *(a2 + 16);
  if (a5)
  {
    if (v10 != result)
    {
      v11 = *(result + 8);
      result = strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (*(v10 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (result)
      {
        if (*a2 != v9)
        {
          result = strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
          if (result)
          {
LABEL_6:
            v12 = *(**(v9 + 16) + 48);

            return v12();
          }
        }

        goto LABEL_14;
      }
    }

LABEL_10:
    if (*(a2 + 8) == a3 && *(a2 + 52) != 1)
    {
      *(a2 + 52) = a4;
    }

    return result;
  }

  result = std::type_info::operator==[abi:ne200100](result, v10);
  if (result)
  {
    goto LABEL_10;
  }

  result = std::type_info::operator==[abi:ne200100](v9, *a2);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (*(a2 + 32) == a3 || *(a2 + 40) == a3)
  {
    if (a4 == 1)
    {
      *(a2 + 56) = 1;
    }
  }

  else
  {
    *(a2 + 56) = a4;
    if (*(a2 + 68) != 4)
    {
      *(a2 + 76) = 0;
      result = (*(**(v9 + 16) + 40))(*(v9 + 16), a2, a3, a3, 1, a5);
      if (*(a2 + 77) == 1)
      {
        v13 = *(a2 + 76);
        *(a2 + 68) = 3;
        if (v13)
        {
          return result;
        }
      }

      else
      {
        *(a2 + 68) = 4;
      }
    }

    *(a2 + 40) = a3;
    v14 = *(a2 + 60);
    ++*(a2 + 64);
    if (v14 == 1 && *(a2 + 48) == 2)
    {
      *(a2 + 78) = 1;
    }
  }

  return result;
}

uint64_t __cxxabiv1::__class_type_info::search_below_dst(uint64_t result, uint64_t *a2, uint64_t a3, int a4, char a5)
{
  v8 = result;
  v9 = a2[2];
  if (a5)
  {
    if (v9 != result)
    {
      v10 = *(result + 8);
      result = strcmp((v10 & 0x7FFFFFFFFFFFFFFFLL), (*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (result)
      {
        if (*a2 != v8)
        {
          result = strcmp((v10 & 0x7FFFFFFFFFFFFFFFLL), (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
          if (result)
          {
            return result;
          }
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    result = std::type_info::operator==[abi:ne200100](result, v9);
    if ((result & 1) == 0)
    {
      result = std::type_info::operator==[abi:ne200100](v8, *a2);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_12:
      if (a2[4] == a3 || a2[5] == a3)
      {
        if (a4 == 1)
        {
          *(a2 + 14) = 1;
        }
      }

      else
      {
        *(a2 + 14) = a4;
        a2[5] = a3;
        v11 = *(a2 + 15);
        ++*(a2 + 16);
        if (v11 == 1 && *(a2 + 12) == 2)
        {
          *(a2 + 78) = 1;
        }

        *(a2 + 17) = 4;
      }

      return result;
    }
  }

  if (a2[1] == a3 && *(a2 + 13) != 1)
  {
    *(a2 + 13) = a4;
  }

  return result;
}

void __cxxabiv1::__vmi_class_type_info::search_above_dst(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  v10 = a1;
  v11 = *(a2 + 16);
  if (a6)
  {
    if (v11 != a1)
    {
      a1 = strcmp((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v11 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (a1)
      {
        goto LABEL_4;
      }
    }

LABEL_16:

    __cxxabiv1::__class_type_info::process_static_type_above_dst(a1, a2, a3, a4, a5);
    return;
  }

  a1 = std::type_info::operator==[abi:ne200100](a1, v11);
  if (a1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = *(a2 + 76);
  v20 = *(a2 + 77);
  v13 = *(v10 + 20);
  *(a2 + 76) = 0;
  __cxxabiv1::__base_class_type_info::search_above_dst((v10 + 24), a2, a3, a4, a5);
  v14 = *(a2 + 76);
  v15 = v14 | v12;
  v16 = *(a2 + 77);
  v17 = v16 | v20;
  if (v13 >= 2)
  {
    v18 = v10 + 24 + 16 * v13;
    v19 = (v10 + 40);
    while ((*(a2 + 78) & 1) == 0)
    {
      if (v14)
      {
        if (*(a2 + 48) == 1 || (*(v10 + 16) & 2) == 0)
        {
          break;
        }
      }

      else if ((v16 & 1) != 0 && (*(v10 + 16) & 1) == 0)
      {
        break;
      }

      *(a2 + 76) = 0;
      __cxxabiv1::__base_class_type_info::search_above_dst(v19, a2, a3, a4, a5);
      v14 = *(a2 + 76);
      v15 = (v14 | v15) & 1;
      v16 = *(a2 + 77);
      v17 = (v16 | v17) & 1;
      v19 += 2;
      if (v19 >= v18)
      {
        break;
      }
    }
  }

  *(a2 + 76) = v15 & 1;
  *(a2 + 77) = v17 & 1;
}

void __cxxabiv1::__si_class_type_info::search_above_dst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v10 = a1;
  v11 = *(a2 + 16);
  if (a6)
  {
    if (v11 != a1)
    {
      a1 = strcmp((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v11 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (a1)
      {
LABEL_4:
        v12 = *(**(v10 + 16) + 40);

        v12();
        return;
      }
    }
  }

  else
  {
    a1 = std::type_info::operator==[abi:ne200100](a1, v11);
    if ((a1 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  __cxxabiv1::__class_type_info::process_static_type_above_dst(a1, a2, a3, a4, a5);
}

void __cxxabiv1::__class_type_info::search_above_dst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v10 = *(a2 + 16);
  if (a6)
  {
    if (v10 != a1)
    {
      a1 = strcmp((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v10 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (a1)
      {
        return;
      }
    }
  }

  else
  {
    a1 = std::type_info::operator==[abi:ne200100](a1, v10);
    if ((a1 & 1) == 0)
    {
      return;
    }
  }

  __cxxabiv1::__class_type_info::process_static_type_above_dst(a1, a2, a3, a4, a5);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void operator delete(void *__p, size_t __sz, std::align_val_t a3)
{
  JUMPOUT(0x1865C8ED0);
}

{
    ;
  }
}

void operator delete[](void *__p, size_t __sz, std::align_val_t a3)
{
  JUMPOUT(0x1865C8E70);
}

{
    ;
  }
}

void operator new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __vtable(a1, a2, __vtable, a4, a5, a6, a7, a8);
}

{
  __vtable(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  __vtable(a1, a2, a3, __vtable, a5, a6, a7, a8);
}

{
  __vtable(a1, a2, a3, a4, a5, a6, a7, a8);
}

void operator new[](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __vtable(a1, a2, __vtable, a4, a5, a6, a7, a8);
}

{
  __vtable(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  __vtable(a1, a2, a3, __vtable, a5, a6, a7, a8);
}

{
  __vtable(a1, a2, a3, a4, a5, a6, a7, a8);
}

void operator delete()
{
  JUMPOUT(0x1865C8EC0);
}

{
  JUMPOUT(0x1865C8EF0);
}

{
  JUMPOUT(0x1865C8ED0);
}

{
  JUMPOUT(0x1865C8EE0);
}

void operator delete[]()
{
  JUMPOUT(0x1865C8E60);
}

{
  JUMPOUT(0x1865C8E90);
}

{
  JUMPOUT(0x1865C8E70);
}

{
  JUMPOUT(0x1865C8E80);
}

void (*$_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t)#2}::__invoke(unint64_t a1, malloc_type_id_t a2))(void)
{
  result = operator_new_impl[abi:ne200100](a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
  }

  return result;
}

void (*operator_new_impl[abi:ne200100](unint64_t a1, malloc_type_id_t a2))(void)
{
  v2 = a2;
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  while (1)
  {
    result = malloc_type_malloc(v4, a2);
    if (result)
    {
      break;
    }

    result = std::get_new_handler();
    if (!result)
    {
      break;
    }

    result();
    v4 = v3;
    a2 = v2;
  }

  return result;
}

void (*$_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t)#4}::__invoke(unint64_t a1, malloc_type_id_t a2))(void)
{
  result = operator_new_impl[abi:ne200100](a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
  }

  return result;
}

void (*$_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t)#2}::__invoke(unint64_t a1, malloc_type_id_t a2, unint64_t a3))(void)
{
  result = operator_new_aligned_impl[abi:ne200100](a1, a3, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
  }

  return result;
}

void (*operator_new_aligned_impl[abi:ne200100](unint64_t a1, unint64_t a2, malloc_type_id_t a3))(void)
{
  v3 = a3;
  if (a1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1;
  }

  if (a2 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = a2;
  }

  if (((v4 + v5 - 1) & -v5) <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = (v4 + v5 - 1) & -v5;
  }

  v7 = v5;
  v8 = v6;
  while (1)
  {
    result = malloc_type_aligned_alloc(v7, v8, a3);
    if (result)
    {
      break;
    }

    result = std::get_new_handler();
    if (!result)
    {
      break;
    }

    result();
    v7 = v5;
    v8 = v6;
    a3 = v3;
  }

  return result;
}

void (*$_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t)#4}::__invoke(unint64_t a1, malloc_type_id_t a2, unint64_t a3))(void)
{
  result = operator_new_aligned_impl[abi:ne200100](a1, a3, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
  }

  return result;
}

void *(*_GLOBAL__sub_I_stdlib_new_delete_cpp())(size_t a1, int a2, std::nothrow_t *a3)
{
  v0 = operator new < operator new || operator new > _Unwind_DeleteException;
  v1 = v0;
  if (v0)
  {
    v2 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t)#3}::__invoke;
  }

  else
  {
    v3 = operator new[] <= _Unwind_DeleteException && operator new[] >= operator new;
    v2 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t)#4}::__invoke;
    if (!v3)
    {
      v2 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t)#3}::__invoke;
    }
  }

  v4 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t,std::nothrow_t const&)#3}::__invoke;
  v5 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t,std::nothrow_t const&)#1}::__invoke;
  if (operator new >= operator new && operator new <= _Unwind_DeleteException)
  {
    v7 = operator new[] <= _Unwind_DeleteException && operator new[] >= operator new;
    v4 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t,std::nothrow_t const&)#4}::__invoke;
    if (!v7)
    {
      v4 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t,std::nothrow_t const&)#3}::__invoke;
    }

    v5 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t,std::nothrow_t const&)#2}::__invoke;
  }

  v9 = operator new[] < operator new || operator new[] > _Unwind_DeleteException;
  v11 = operator new < operator new || operator new > _Unwind_DeleteException;
  if (v9 || v11)
  {
    result = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::nothrow_t const&)#3}::__invoke;
  }

  else
  {
    result = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::nothrow_t const&)#4}::__invoke;
  }

  v14 = operator new[] < operator new || operator new[] > _Unwind_DeleteException;
  if (v14 || operator new > _Unwind_DeleteException)
  {
    v15 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t)#3}::__invoke;
  }

  else
  {
    v15 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t)#4}::__invoke;
  }

  if (v1)
  {
    v16 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t)#1}::__invoke;
  }

  else
  {
    v16 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::align_val_t)#2}::__invoke;
  }

  if (v11)
  {
    v17 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::nothrow_t const&)#1}::__invoke;
  }

  else
  {
    v17 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t,std::nothrow_t const&)#2}::__invoke;
  }

  v18 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t)#2}::__invoke;
  if (operator new > _Unwind_DeleteException)
  {
    v18 = $_0::operator()(void)const::{lambda(unsigned long,std::__type_descriptor_t)#1}::__invoke;
  }

  __vtable = v18;
  __vtable = v15;
  __vtable = v17;
  __vtable = result;
  __vtable = v16;
  __vtable = v2;
  __vtable = v5;
  __vtable = v4;
  return result;
}

void *__cxa_allocate_exception(size_t thrown_size)
{
  v1 = thrown_size + 143;
  v2 = __cxxabiv1::__aligned_malloc_with_fallback((thrown_size + 143) & 0xFFFFFFFFFFFFFFF0);
  v3 = v2;
  if (!v2)
  {
    std::terminate();
  }

  bzero(v2, v1 & 0xFFFFFFFFFFFFFFF0);
  return v3 + 32;
}

void *__cxa_begin_catch(void *a1)
{
  isOurExceptionClass = __cxxabiv1::__isOurExceptionClass(a1);
  globals = __cxa_get_globals();
  v4 = __cxxabiv1::cxa_exception_from_exception_unwind_exception(a1);
  if (isOurExceptionClass)
  {
    private_2 = v4[1].private_2;
    if (private_2 < 0)
    {
      private_2 = -private_2;
    }

    LODWORD(v4[1].private_2) = private_2 + 1;
    if (v4 != *globals)
    {
      v4[1].private_1 = *globals;
      *globals = v4;
    }

    --*(globals + 8);
    if (v4[2].private_2)
    {
      return v4[2].private_2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*globals)
    {
      std::terminate();
    }

    *globals = v4;
    return a1 + 32;
  }
}

uint64_t __cxa_init_primary_exception(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 - 120) = 0;
  unexpected = std::get_unexpected();
  if (unexpected)
  {
    v7 = unexpected;
  }

  else
  {
    v7 = 0;
  }

  *(a1 - 96) = v7;
  terminate = std::get_terminate();
  if (terminate)
  {
    v9 = terminate;
  }

  else
  {
    v9 = 0;
  }

  *(a1 - 88) = v9;
  *(a1 - 112) = a2;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  result = a1 - 128;
  *(a1 - 104) = v10;
  *(a1 - 32) = 0x434C4E47432B2B00;
  *(a1 - 24) = __cxxabiv1::exception_cleanup_func;
  return result;
}

void __cxxabiv1::exception_cleanup_func(_Unwind_Reason_Code a1, _Unwind_Exception *a2)
{
  if (a1 != _URC_FOREIGN_EXCEPTION_CAUGHT)
  {
    if (a2[-2].exception_cleanup)
    {
      exception_cleanup = a2[-2].exception_cleanup;
    }

    else
    {
      exception_cleanup = 0;
    }

    std::__terminate(exception_cleanup);
  }

  __cxa_decrement_exception_refcount(&a2[1]);
}

double __cxa_allocate_dependent_exception()
{
  v0 = __cxxabiv1::__aligned_malloc_with_fallback(0x80uLL);
  if (!v0)
  {
    std::terminate();
  }

  result = 0.0;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *v0 = 0u;
  *(v0 + 1) = 0u;
  return result;
}

void __cxa_throw(void *a1, struct type_info *lptinfo, void (*a3)(void *))
{
  globals = __cxa_get_globals();
  ++*(globals + 8);
  inited = __cxa_init_primary_exception(a1, lptinfo, a3);
  inited->exception_cleanup = 1;
  _Unwind_RaiseException(inited + 3);
  __cxxabiv1::failed_throw(inited);
}

void __cxxabiv1::failed_throw(uint64_t a1)
{
  __cxa_begin_catch((a1 + 96));
  v2 = *(a1 + 40);
  if (!v2)
  {
    std::__terminate(0);
  }

  std::__terminate(v2);
}

void *__cxa_get_exception_ptr(void *a1)
{
  if (*(a1 - 1))
  {
    return *(a1 - 1);
  }

  else
  {
    return 0;
  }
}

void __cxa_end_catch(void)
{
  globals_fast = __cxa_get_globals_fast();
  v2 = *globals_fast;
  if (*globals_fast)
  {
    if (*(v2 + 96) >> 8 == 0x434C4E47432B2BLL)
    {
      v3 = *(v2 + 56);
      if (v3 < 0)
      {
        *(v2 + 56) = v3 + 1;
        if (v3 == -1)
        {
          *globals_fast = *(v2 + 48);
        }
      }

      else
      {
        v4 = v3 - 1;
        *(v2 + 56) = v4;
        if (!v4)
        {
          *globals_fast = *(v2 + 48);
          if (*(v2 + 96) == 1)
          {
            v5 = *(v2 + 8) - 128;
            __cxxabiv1::__aligned_free_with_fallback(v2, v0);
            v2 = v5;
          }

          v6 = (v2 + 128);

          __cxa_decrement_exception_refcount(v6);
        }
      }
    }

    else
    {
      _Unwind_DeleteException((v2 + 96));
      *globals_fast = 0;
    }
  }
}

void __cxa_decrement_exception_refcount(void *primary_exception)
{
  if (primary_exception && atomic_fetch_add(primary_exception - 15, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(primary_exception - 13);
    if (v3)
    {
      v4 = *(primary_exception - 13);
      v3(primary_exception);
    }

    __cxxabiv1::__aligned_free_with_fallback(primary_exception - 128, v1);
  }
}

struct type_info *__cxa_current_exception_type(void)
{
  result = __cxa_get_globals_fast();
  if (result)
  {
    v1 = *result;
    if (*result && *(v1 + 96) >> 8 == 0x434C4E47432B2BLL)
    {
      return *(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __cxa_rethrow(void)
{
  globals = __cxa_get_globals();
  v1 = *globals;
  if (*globals)
  {
    v2 = *(v1 + 96) & 0xFFFFFFFFFFFFFF00;
    if (v2 == 0x434C4E47432B2B00)
    {
      *(v1 + 56) = -*(v1 + 56);
      ++*(globals + 8);
    }

    else
    {
      *globals = 0;
    }

    _Unwind_RaiseException((v1 + 96));
    __cxa_begin_catch((v1 + 96));
    if (v2 == 0x434C4E47432B2B00)
    {
      v3 = *(v1 + 40);
      if (!v3)
      {
        std::__terminate(0);
      }

      std::__terminate(v3);
    }
  }

  std::terminate();
}

void __cxa_increment_exception_refcount(void *primary_exception)
{
  if (primary_exception)
  {
    atomic_fetch_add(primary_exception - 15, 1uLL);
  }
}

void *__cxa_current_primary_exception(void)
{
  result = __cxa_get_globals_fast();
  if (result)
  {
    v1 = *result;
    if (*result && v1[12] >> 8 == 0x434C4E47432B2BLL)
    {
      if (v1[12] == 1)
      {
        v1 = (v1[1] - 128);
      }

      result = v1 + 16;
      atomic_fetch_add(v1 + 1, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __cxa_rethrow_primary_exception(void *primary_exception)
{
  if (primary_exception)
  {
    __cxa_allocate_dependent_exception();
    v3 = v2;
    v2->exception_cleanup = primary_exception;
    atomic_fetch_add(primary_exception - 15, 1uLL);
    v2->private_1 = *(primary_exception - 14);
    unexpected = std::get_unexpected();
    if (unexpected)
    {
      v5 = unexpected;
    }

    else
    {
      v5 = 0;
    }

    v3[1].exception_class = v5;
    terminate = std::get_terminate();
    if (terminate)
    {
      v7 = terminate;
    }

    else
    {
      v7 = 0;
    }

    v3[3].exception_class = 0x434C4E47432B2B01;
    v8 = v3 + 3;
    v8[-2].exception_cleanup = v7;
    globals = __cxa_get_globals();
    ++*(globals + 8);
    v8->exception_cleanup = __cxxabiv1::dependent_exception_cleanup;
    _Unwind_RaiseException(v8);

    __cxa_begin_catch(v8);
  }
}

void __cxxabiv1::dependent_exception_cleanup(_Unwind_Reason_Code a1, _Unwind_Exception *a2)
{
  if (a1 != _URC_FOREIGN_EXCEPTION_CAUGHT)
  {
    exception_cleanup = a2[-2].exception_cleanup;
    if (!exception_cleanup)
    {
      std::__terminate(0);
    }

    std::__terminate(exception_cleanup);
  }

  v2 = a2 - 3;
  __cxa_decrement_exception_refcount(a2[-3].exception_cleanup);

  __cxxabiv1::__aligned_free_with_fallback(v2, v3);
}

unsigned int __cxa_uncaught_exceptions(void)
{
  globals_fast = __cxa_get_globals_fast();
  if (globals_fast)
  {
    LODWORD(globals_fast) = *(globals_fast + 8);
  }

  return globals_fast;
}

uint64_t __gxx_personality_v0(int a1, int a2, uint64_t a3, _Unwind_Exception *a4, _Unwind_Context *context)
{
  result = 3;
  if (a1 != 1 || !a4 || !context)
  {
    return result;
  }

  v9 = a2;
  v10 = a3 & 0xFFFFFFFFFFFFFF00;
  if (a2 == 6 && v10 == 0x434C4E47432B2B00)
  {
    exception_class = a4[-1].exception_class;
    *&v86 = SHIDWORD(a4[-2].private_2);
    *(&v86 + 1) = exception_class;
    if (a4[-1].exception_cleanup)
    {
      exception_cleanup = a4[-1].exception_cleanup;
    }

    *&v87 = a4[-1].exception_cleanup;
    if (a4[-1].private_1)
    {
      private_1 = a4[-1].private_1;
    }

    *(&v87 + 1) = a4[-1].private_1;
    if (a4[-1].private_2)
    {
      private_2 = a4[-1].private_2;
    }

    v88 = a4[-1].private_2;
    __cxxabiv1::set_registers(a4, context, &v86);
    if ((v86 & 0x8000000000000000) != 0)
    {
      a4[-1].private_1 = 0;
    }

    return 7;
  }

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v89 = 3;
  v15 = (a2 & 1) == 0;
  if (a2)
  {
    if ((a2 & 0xE) != 0)
    {
      return result;
    }
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      return result;
    }

    if ((~a2 & 0xC) == 0)
    {
      v89 = 2;
      goto LABEL_18;
    }
  }

  LanguageSpecificData = _Unwind_GetLanguageSpecificData(context);
  if (!LanguageSpecificData)
  {
    return 8;
  }

  v17 = LanguageSpecificData;
  *&v87 = LanguageSpecificData;
  IP = _Unwind_GetIP(context);
  RegionStart = _Unwind_GetRegionStart(context);
  v20 = RegionStart;
  v23 = *v17;
  v22 = v17 + 1;
  v21 = v23;
  v93 = v22;
  if (v23 == 255)
  {
    EncodedPointer = RegionStart;
  }

  else
  {
    EncodedPointer = __cxxabiv1::readEncodedPointer(&v93, v21, 0);
    v22 = v93;
  }

  v25 = *v22;
  v24 = v22 + 1;
  v93 = v24;
  v85 = v25;
  v80 = v15;
  if (v25 == 255)
  {
    v84 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *v24++;
      v26 |= (v28 & 0x7F) << v27;
      v27 += 7;
    }

    while (v28 < 0);
    v84 = &v24[v26];
  }

  v82 = v10;
  v29 = 0;
  v30 = 0;
  v31 = IP + ~v20;
  v32 = v24 + 1;
  v93 = v24 + 1;
  v33 = *v24;
  do
  {
    v34 = *v32++;
    v29 |= (v34 & 0x7F) << v30;
    v30 += 7;
  }

  while (v34 < 0);
  v92 = v32;
  v93 = v32;
  v79 = v29;
  if (!v29)
  {
LABEL_44:
    v44 = v82 == 0x434C4E47432B2B00;
    goto LABEL_45;
  }

  v35 = &v32[v29];
  while (1)
  {
    v36 = __cxxabiv1::readEncodedPointer(&v92, v33, 0);
    v37 = __cxxabiv1::readEncodedPointer(&v92, v33, 0);
    v38 = __cxxabiv1::readEncodedPointer(&v92, v33, 0);
    v39 = v38 ? v38 : 0;
    v40 = 0;
    v41 = 0;
    v91 = v39;
    v42 = v92;
    do
    {
      v43 = *v42++;
      v40 |= (v43 & 0x7F) << v41;
      v41 += 7;
    }

    while (v43 < 0);
    v92 = v42;
    if (v36 <= v31 && v31 < v37 + v36)
    {
      break;
    }

    if (v31 < v36 || v42 >= v35)
    {
      goto LABEL_44;
    }
  }

  if (!v39)
  {
    return 8;
  }

  if (v39 + EncodedPointer)
  {
    v91 = v39 + EncodedPointer;
    v45 = v82;
    v46 = v39 + EncodedPointer;
  }

  else
  {
    v46 = 0;
    v91 = 0;
    v45 = v82;
  }

  *(&v87 + 1) = v46;
  if (v40)
  {
    v47 = 0;
    v48 = &v32[v79 - 1 + v40];
    v83 = &a4[1];
    while (1)
    {
      v49 = 0;
      v50 = 0;
      v51 = v48;
      do
      {
        v53 = *v51++;
        v52 = v53;
        v49 |= (v53 & 0x7F) << v50;
        v50 += 7;
      }

      while ((v53 & 0x80) != 0);
      v54 = v50 < 0x40 && v52 > 0x3F;
      v55 = -1 << v50;
      if (!v54)
      {
        v55 = 0;
      }

      v56 = v49 | v55;
      if ((v49 | v55) < 1)
      {
        v62 = (v56 == 0) | v47;
        if ((v9 & 8) == 0 && v56)
        {
          if (v45 != 0x434C4E47432B2B00)
          {
LABEL_93:
            *&v86 = v56;
            if (v48)
            {
              v74 = v48;
            }

            else
            {
              v74 = 0;
            }

            *(&v86 + 1) = v74;
            if (__cxxabiv1::__getExceptionClass(a4) == 0x434C4E47432B2B01)
            {
              v83 = a4[-3].exception_cleanup;
            }

            v75 = v83;
LABEL_105:
            v88 = v75;
LABEL_106:
            v89 = 6;
LABEL_107:
            if (v9)
            {
              if (v45 == 0x434C4E47432B2B00)
              {
                v78 = *(&v86 + 1);
                HIDWORD(a4[-2].private_2) = v86;
                a4[-1].exception_class = v78;
                *&a4[-1].exception_cleanup = v87;
                a4[-1].private_2 = v88;
              }

              return 6;
            }

LABEL_18:
            __cxxabiv1::set_registers(a4, context, &v86);
            if ((v86 & 0x8000000000000000) != 0)
            {
              a4[-1].private_1 = 0;
            }

            return 7;
          }

          v63 = &a4[1];
          if (__cxxabiv1::__getExceptionClass(a4) == 0x434C4E47432B2B01)
          {
            v63 = a4[-3].exception_cleanup;
          }

          if (!v63 || (v64 = a4[-3].private_1) == 0)
          {
LABEL_113:
            v44 = 1;
LABEL_45:
            __cxxabiv1::call_terminate(v44, a4);
          }

          can_catch = __cxxabiv1::exception_spec_can_catch(v56, v84, v85, v64, v63, a4, 0);
          v62 = v47;
          if (can_catch)
          {
            *&v86 = v56;
            if (v48)
            {
              v77 = v48;
            }

            else
            {
              v77 = 0;
            }

            *(&v86 + 1) = v77;
            v88 = v63;
            goto LABEL_106;
          }
        }
      }

      else
      {
        shim_type_info = __cxxabiv1::get_shim_type_info(v49 | v55, v84, v85, v45 == 0x434C4E47432B2B00, a4, 0);
        if (!shim_type_info)
        {
          goto LABEL_93;
        }

        if (v45 == 0x434C4E47432B2B00)
        {
          v58 = shim_type_info;
          ExceptionClass = __cxxabiv1::__getExceptionClass(a4);
          v60 = &a4[1];
          if (ExceptionClass == 0x434C4E47432B2B01)
          {
            v60 = a4[-3].exception_cleanup;
          }

          v90 = v60;
          if (!v60)
          {
            goto LABEL_113;
          }

          v61 = a4[-3].private_1;
          if (!v61)
          {
            goto LABEL_113;
          }

          if ((*(*v58 + 32))(v58, v61, &v90))
          {
            *&v86 = v56;
            if (v48)
            {
              v76 = v48;
            }

            else
            {
              v76 = 0;
            }

            v75 = v90;
            *(&v86 + 1) = v76;
            goto LABEL_105;
          }
        }

        v62 = v47;
      }

      v66 = 0;
      v67 = 0;
      v68 = v51;
      do
      {
        v70 = *v68++;
        v69 = v70;
        v66 |= (v70 & 0x7F) << v67;
        v67 += 7;
      }

      while ((v70 & 0x80) != 0);
      v71 = v67 < 0x40 && v69 > 0x3F;
      v72 = -1 << v67;
      if (!v71)
      {
        v72 = 0;
      }

      v73 = v66 | v72;
      if (!v73)
      {
        v80 = v62 & ((v9 & 2) >> 1);
        break;
      }

      v48 = &v51[v73];
      v47 = v62;
    }
  }

  if (v80)
  {
    result = 6;
  }

  else
  {
    result = 8;
  }

  v89 = result;
  if (v80)
  {
    goto LABEL_107;
  }

  return result;
}

void __cxxabiv1::set_registers(uint64_t a1, _Unwind_Context *a2, void *a3)
{
  MEMORY[0x1865C8E30](a2, 0, a1);
  MEMORY[0x1865C8E30](a2, 1, *a3);
  _Unwind_GetGR(a2, -2);
  v5 = a3[3];

  _Unwind_SetIP(a2, v5);
}

void __cxa_call_unexpected(void *a1)
{
  if (!a1)
  {
    __cxa_begin_catch(0);
    std::terminate();
  }

  __cxa_begin_catch(a1);
  if (__cxxabiv1::__isOurExceptionClass(a1))
  {
    if (*(a1 - 7))
    {
      v3 = *(a1 - 7);
    }

    if (*(a1 - 8))
    {
      unexpected = *(a1 - 8);
    }

    else
    {
      unexpected = 0;
    }

    v4 = *(a1 - 9);
    if (*(a1 - 3))
    {
      v5 = *(a1 - 3);
    }

    v7 = *(a1 - 3);
    if (*(a1 - 2))
    {
      v6 = *(a1 - 2);
    }
  }

  else
  {
    std::get_terminate();
    unexpected = std::get_unexpected();
  }

  std::__unexpected(unexpected);
}

void sub_1801CB390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_exception a9)
{
  std::bad_exception::~bad_exception(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void __cxxabiv1::call_terminate(int a1, _Unwind_Exception *a2)
{
  __cxa_begin_catch(a2);
  if (a1)
  {
    exception_cleanup = a2[-2].exception_cleanup;
    if (!exception_cleanup)
    {
      std::__terminate(0);
    }

    std::__terminate(exception_cleanup);
  }

  std::terminate();
}

unint64_t __cxxabiv1::readEncodedPointer(const unsigned __int8 **a1, unsigned int a2, uint64_t a3)
{
  if (a2 != 255)
  {
    v3 = *a1;
    v4 = a2 & 0xF;
    if (v4 <= 3)
    {
      if ((a2 & 0xF) > 1)
      {
        if (v4 == 2)
        {
          v7 = v3 + 2;
          v5 = *v3;
        }

        else
        {
          if (v4 != 3)
          {
            goto LABEL_44;
          }

          v7 = v3 + 4;
          v5 = *v3;
        }

        goto LABEL_31;
      }

      if ((a2 & 0xF) != 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = *a1;
        do
        {
          v8 = *v7++;
          v5 |= (v8 & 0x7F) << v6;
          v6 += 7;
        }

        while (v8 < 0);
        goto LABEL_31;
      }
    }

    else
    {
      if ((a2 & 0xF) > 9)
      {
        switch(v4)
        {
          case 0xAu:
            v7 = v3 + 2;
            v5 = *v3;
            break;
          case 0xBu:
            v7 = v3 + 4;
            v5 = *v3;
            break;
          case 0xCu:
            goto LABEL_27;
          default:
LABEL_44:
            abort();
        }

LABEL_31:
        v15 = (a2 >> 4) & 7;
        if (v15)
        {
          if (v15 == 3)
          {
            if (!v5)
            {
              goto LABEL_42;
            }

            v5 += a3;
            if (!v5)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          if (v15 != 1)
          {
            goto LABEL_44;
          }

          if (!v5)
          {
            goto LABEL_42;
          }

          v5 += v3;
        }

        if (!v5)
        {
LABEL_42:
          *a1 = v7;
          return v5;
        }

LABEL_40:
        if ((a2 & 0x80) != 0)
        {
          v5 = *v5;
        }

        goto LABEL_42;
      }

      if (v4 != 4)
      {
        if (v4 != 9)
        {
          goto LABEL_44;
        }

        v9 = 0;
        v10 = 0;
        v7 = *a1;
        do
        {
          v12 = *v7++;
          v11 = v12;
          v9 |= (v12 & 0x7F) << v10;
          v10 += 7;
        }

        while ((v12 & 0x80) != 0);
        v13 = v10 < 0x40 && v11 > 0x3F;
        v14 = -1 << v10;
        if (!v13)
        {
          v14 = 0;
        }

        v5 = v9 | v14;
        goto LABEL_31;
      }
    }

LABEL_27:
    v7 = v3 + 8;
    v5 = *v3;
    goto LABEL_31;
  }

  return 0;
}

BOOL __cxxabiv1::exception_spec_can_catch(uint64_t a1, const unsigned __int8 *a2, char a3, const __cxxabiv1::__shim_type_info *a4, void *a5, _Unwind_Exception *a6, uint64_t a7)
{
  if (!a2)
  {
    __cxa_begin_catch(a6);
    std::terminate();
  }

  v13 = 0;
  v14 = 0;
  for (i = ~a1; ; ++i)
  {
    v13 |= (a2[i] & 0x7F) << v14;
    if ((a2[i] & 0x80) == 0)
    {
      break;
    }

    v14 += 7;
LABEL_8:
    ;
  }

  if (v13)
  {
    shim_type_info = __cxxabiv1::get_shim_type_info(v13, a2, a3, 1, a6, a7);
    v18 = a5;
    if (!(*(*shim_type_info + 32))(shim_type_info, a4, &v18))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_8;
    }
  }

  return v13 == 0;
}

unint64_t __cxxabiv1::get_shim_type_info(uint64_t a1, const unsigned __int8 *a2, char a3, int a4, _Unwind_Exception *a5, uint64_t a6)
{
  if (!a2 || (a3 & 0xFu) >= 0xD || ((0x1C1Du >> (a3 & 0xF)) & 1) == 0)
  {
    __cxxabiv1::call_terminate(a4, a5);
  }

  v7 = &a2[qword_1801CECA8[a3 & 0xF] * a1];
  return __cxxabiv1::readEncodedPointer(&v7, a3, a6);
}

int __cxa_guard_acquire(__guard *a1)
{
  LOBYTE(v1) = atomic_load_explicit(a1, memory_order_acquire);
  if (v1)
  {
    return 0;
  }

  v4 = "__cxa_guard_acquire";
  v26 = "__cxa_guard_acquire";
  if (pthread_mutex_lock(&stru_1ED404068))
  {
    __abort_message("%s failed to acquire mutex", v5, v6, v7, v8, v9, v10, v11, "__cxa_guard_acquire");
  }

  v12 = *(a1 + 1);
  if ((v12 & 2) != 0)
  {
    v13 = *(a1 + 1);
    v14 = pthread_self();
    LODWORD(v4) = pthread_mach_thread_np(v14);
    if (v13 == v4)
    {
      __abort_message("__cxa_guard_acquire detected recursive initialization: do you have a function-local static variable whose initialization depends on that function?", v15, v16, v17, v18, v19, v20, v21, v25);
    }
  }

  while (1)
  {
    v22 = *(a1 + 1);
    if ((v22 & 2) == 0)
    {
      break;
    }

    *(a1 + 1) = v22 | 4;
    pthread_cond_wait(&_MergedGlobals, &stru_1ED404068);
  }

  if (v22 != 1)
  {
    if ((v12 & 2) == 0)
    {
      v23 = pthread_self();
      LODWORD(v4) = pthread_mach_thread_np(v23);
    }

    *(a1 + 1) = v4;
    *(a1 + 1) = 2;
  }

  v2 = v22 != 1;
  return v2;
}

void sub_1801CB7EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void __cxa_guard_release(__guard *a1)
{
  atomic_store(1u, a1);
  v17 = "__cxa_guard_release";
  if (pthread_mutex_lock(&stru_1ED404068))
  {
    __abort_message("%s failed to acquire mutex", v2, v3, v4, v5, v6, v7, v8, "__cxa_guard_release");
  }

  v9 = *(a1 + 1);
  *(a1 + 1) = 1;
  if ((v9 & 4) != 0)
  {
    if (pthread_cond_broadcast(&_MergedGlobals))
    {
      __abort_message("%s failed to broadcast", v10, v11, v12, v13, v14, v15, v16, "__cxa_guard_release");
    }
  }
}

void __cxa_guard_abort(__guard *a1)
{
  v17 = "__cxa_guard_abort";
  if (pthread_mutex_lock(&stru_1ED404068))
  {
    __abort_message("%s failed to acquire mutex", v2, v3, v4, v5, v6, v7, v8, "__cxa_guard_abort");
  }

  *(a1 + 1) = 0;
  v9 = *(a1 + 1);
  *(a1 + 1) = 0;
  if ((v9 & 4) != 0)
  {
    if (pthread_cond_broadcast(&_MergedGlobals))
    {
      __abort_message("%s failed to broadcast", v10, v11, v12, v13, v14, v15, v16, "__cxa_guard_abort");
    }
  }
}

void std::logic_error::~logic_error()
{
  v0 = __cxa_guard_acquire(&qword_1ED4040F0);
  if (v0)
  {

    __cxa_guard_release(&qword_1ED4040F0);
  }
}

void *__cdecl operator new(size_t __sz)
{
  if (__sz <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = __sz;
  }

  while (1)
  {
    result = malloc_type_malloc(v2, (v1 >> 2) | 0xC0000000000);
    if (result)
    {
      break;
    }

    new_handler = std::get_new_handler();
    if (!new_handler)
    {
      exception = __cxa_allocate_exception(8uLL);
      v6 = std::bad_alloc::bad_alloc(exception);
    }

    new_handler();
  }

  return result;
}

{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
  return operator new(__sz);
}

{
    ;
  }
}

void sub_1801CBA14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1801CBA0CLL);
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
  return operator new[](__sz);
}

{
    ;
  }
}

void sub_1801CBA44(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1801CBA3CLL);
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
  if (__sz <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = __sz;
  }

  if (a2 <= 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = a2;
  }

  if (((v2 + v3 - 1) & -v3) <= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = (v2 + v3 - 1) & -v3;
  }

  while (1)
  {
    result = malloc_type_aligned_alloc(v3, v4, 0x68636FA4uLL);
    if (result)
    {
      break;
    }

    new_handler = std::get_new_handler();
    if (!new_handler)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = std::bad_alloc::bad_alloc(exception);
    }

    new_handler();
  }

  return result;
}

{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2, const std::nothrow_t *a3)
{
  return operator new(__sz, a2);
}

{
    ;
  }
}

void sub_1801CBB08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1801CBB00);
}

void *__cdecl operator new[](size_t __sz, std::align_val_t a2, const std::nothrow_t *a3)
{
  return operator new[](__sz, a2);
}

{
    ;
  }
}

void sub_1801CBB38(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1801CBB30);
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete[](void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete[](void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete[](void *__p, std::align_val_t a2, const std::nothrow_t *a3)
{
    ;
  }
}

void operator delete[](void *__p, size_t __sz)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2, const std::nothrow_t *a3)
{
    ;
  }
}

void operator delete(void *__p, size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, std::align_val_t a2)
{
    ;
  }
}