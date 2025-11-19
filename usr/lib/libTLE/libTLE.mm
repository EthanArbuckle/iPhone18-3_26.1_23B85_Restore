void TLE::orArrayOpDeserializer(const der_vm_context *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v9 = 0;
  v7 = 0u;
  *v8 = 0u;
  TLE::opArrayOpDeserializer(a1, a2, &v7);
  if (v7)
  {
    *a3 = v7;
    *(a3 + 16) = v8[0];
    *(a3 + 24) = 0;
  }

  else
  {
    if (v9 != 1)
    {
      operator new();
    }

    v5 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }

    v6 = 8 * v9;
    if (v8[1] + v6 < v8[1] || HIDWORD(v6))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v4);
    }

    if (v6 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v4);
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a3 + 24), *v5);
  }

  if (v8[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v8[1], v9);
  }
}

void sub_29822ED94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, unsigned int a15)
{
  if (a14)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a14, a15);
  }

  _Unwind_Resume(exception_object);
}

void TLE::opArrayOpDeserializer(const der_vm_context *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    *a3 = 6;
    v4 = "factless operator disallowed for active fact";
    v5 = 44;
LABEL_11:
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    return;
  }

  v7 = *&a1->lookup.index_count;
  v14 = *&a1->runtime;
  v15 = v7;
  v16 = *&a1->sorted;
  der_end = a1->var0.ccstate.der_end;
  if (der_vm_CEType_from_context() != 2)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    *a3 = 3;
    v4 = "Got an unexpected type (not a sequence) when trying to read the array of matches.";
    v5 = 81;
    goto LABEL_11;
  }

  v8 = count_ce_elements(a1);
  if (!v8)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    *a3 = 4;
    v4 = "The array of dependent operations is empty.";
    v5 = 43;
    goto LABEL_11;
  }

  v9 = v8;
  v20 = 0;
  if (HIDWORD(v8))
  {
    v10 = 0;
    LODWORD(v9) = 0;
  }

  else
  {
    v10 = malloc_type_malloc(8 * v8, 0x2000093837F09uLL);
    bzero(v10, 8 * v9);
  }

  v19 = v10;
  LODWORD(v20) = v9;
  *&v14 = 0;
  *(&v14 + 1) = &v14;
  *&v15 = 0x4002000000;
  *(&v15 + 1) = __Block_byref_object_copy_;
  *&v16 = __Block_byref_object_dispose_;
  *(&v16 + 1) = 0;
  der_end = 0;
  v18 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 0;
  der_vm_iterate_b();
  v11 = *(&v14 + 1) + 40;
  if (*(*(&v14 + 1) + 40))
  {
    *(a3 + 32) = 0;
    *(a3 + 24) = 0;
    v12 = *v11;
    *(a3 + 16) = *(v11 + 16);
    *a3 = v12;
  }

  else
  {
    TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(a3, &v19);
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  if (v19)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v19, v20);
  }
}

void sub_29822F010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v13 = *(v11 - 80);
  if (v13)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v13, *(v11 - 72));
  }

  _Unwind_Resume(a1);
}

void os_detail::panic_trapping_policy::trap(os_detail::panic_trapping_policy *this, const char *a2)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = this;
  __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
}

void **libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (a2)
  {
    v4 = a2[1];
    if (v4 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "Attempted resurection of an object";
      __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
    }

    a2[1] = v4 + 1;
  }

  if (v3)
  {
    TLE::RefCounted::release(v3);
  }

  return a1;
}

{
  v4 = *a1;
  if (v4)
  {
    TLE::RefCounted::release(v4);
  }

  *a1 = a2;
  return a1;
}

void **libkern::intrusive_shared_ptr<TLE::OrOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void **libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(void **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = 8 * a2;
    do
    {
      a1 = libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(a1) + 1;
      v3 -= 8;
    }

    while (v3);
  }

  free(v2);
}

void *TLE::RefCounted::release(void *this)
{
  v2 = this[1];
  if (v2 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Over-release of an object";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  v3 = v2 - 1;
  this[1] = v3;
  if (!v3)
  {
    v4 = *(*this + 8);

    return v4();
  }

  return this;
}

uint64_t count_ce_elements(const der_vm_context *a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  der_vm_iterate_b();
  v1 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_29822F31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZN3TLE21opArrayOpDeserializerERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE_block_invoke(uint64_t a1, der_vm_context *a2)
{
  v25 = 0u;
  v26 = 0u;
  TLE::opTupleDeserializer(*(a1 + 48), a2 + 1, *(a1 + 56), &v25);
  if (v25)
  {
    v4 = 0;
    v5 = *(*(a1 + 32) + 8);
    *(v5 + 40) = v25;
    *(v5 + 56) = v26;
    goto LABEL_31;
  }

  v6 = *(a1 + 64);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = *v6;
  if (*v6)
  {
    v9 = v8 + 8 * *(v6 + 2);
    v10 = v9 >= v8;
    v11 = v9 - v8;
    if (!v10 || HIDWORD(v11))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v3);
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v7 >= 0)
  {
    v12 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v12 = -v7;
  }

  v13 = (v7 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v7 >= 0)
  {
    v14 = 8 * v12;
  }

  else
  {
    v14 = -8 * v12;
  }

  if (v12 >> 61)
  {
    v15 = 1;
  }

  else
  {
    v15 = 8 * v12 > v13;
  }

  if (v15)
  {
    v16 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
    goto LABEL_34;
  }

  if (v14 != v14)
  {
    v16 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    goto LABEL_34;
  }

  v16 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
  if ((v14 & 0x80000000) != 0 || v14 + 8 > v11 || ((v10 = __CFADD__(v8, v14 & 0x7FFFFFF8), v17 = (v8 + (v14 & 0x7FFFFFF8)), !v10) ? (v18 = 0) : (v18 = 1), (v19 = v18 << 63 >> 63, v16 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v19 ^ v18) || v19 < 0))
  {
LABEL_34:
    os_detail::panic_trapping_policy::trap(v16, v3);
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v17, *(&v26 + 1));
  *(&v26 + 1) = 0;
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 24);
  v22 = (((v21 == -1) << 63) >> 63) ^ (v21 == -1);
  if (v22)
  {
    v23 = *(*(a1 + 32) + 8);
    *(v23 + 40) = 10;
    *(v23 + 48) = "Array contains too many elements";
    *(v23 + 56) = 32;
  }

  else
  {
    *(v20 + 24) = v21 + 1;
  }

  v4 = v22 == 0;
LABEL_31:
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v26 + 1);
  return v4;
}

uint64_t TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  if (result + 24 != a2)
  {
    *(result + 24) = *a2;
    *(result + 32) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void TLE::opTupleDeserializer(uint64_t a1@<X0>, der_vm_context *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    v5 = "factless operator disallowed for active fact";
    v6 = 44;
  }

  else
  {
    v10 = *&a2->lookup.index_count;
    v19 = *&a2->runtime;
    v20 = v10;
    v21 = *&a2->sorted;
    der_end = a2->var0.ccstate.der_end;
    if (der_vm_CEType_from_context() == 2)
    {
      if (count_ce_elements(a2) == 2)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        TLE::keyForContext(a2, &v16);
        if (v16)
        {
          *a4 = v16;
          *(a4 + 16) = v17;
          *(a4 + 24) = 0;
          return;
        }

        der_end = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        v12 = *&a2->runtime;
        v13 = *&a2->lookup.index_count;
        v14 = *&a2->sorted;
        v15 = a2->var0.ccstate.der_end;
        v11 = *MEMORY[0x29EDC9150];
        der_vm_execute_nocopy();
        if (der_vm_CEType_from_context() == 1)
        {
          if (!CEBuffer_cmp())
          {
            TLE::andDeserializer(a1, &v19, a3, a4);
            return;
          }

          if (!CEBuffer_cmp())
          {
            TLE::orDeserializer(a1, &v19, a3, a4);
            return;
          }

          if (!CEBuffer_cmp())
          {
            TLE::optionalOpDeserializer(a1, &v19, a3, a4);
            return;
          }
        }

        else
        {
          if (der_vm_CEType_from_context() != 2)
          {
            *a4 = 0u;
            *(a4 + 16) = 0u;
            *a4 = 3;
            v5 = "Unexpected type in Array tuple";
            v6 = 30;
            goto LABEL_9;
          }

          if (!CEBuffer_cmp())
          {
            TLE::andArrayOpDeserializer(a4);
            return;
          }

          if (!CEBuffer_cmp())
          {
            TLE::orArrayOpDeserializer(a1, &v19, a3);
            return;
          }
        }

        *a4 = 0u;
        *(a4 + 16) = 0u;
        *a4 = 9;
        v5 = "Unexpected operator in Array tuple";
        v6 = 34;
      }

      else
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
        *a4 = 6;
        v5 = "Incorrect number of elements in operator Array tuple";
        v6 = 52;
      }
    }

    else
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *a4 = 6;
      v5 = "Non array element found in operator Array";
      v6 = 41;
    }
  }

LABEL_9:
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
}

uint64_t TLE::keyForContext@<X0>(TLE *this@<X0>, void *a2@<X8>)
{
  v8 = *this;
  v9 = *(this + 1);
  v10 = *(this + 2);
  v11 = *(this + 6);
  v4 = *MEMORY[0x29EDC9148];
  der_vm_execute_nocopy();
  result = der_vm_CEType_from_context();
  if (result == 4)
  {
    result = der_vm_string_from_context();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = result;
    v7 = 4;
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *a2 = 3;
    a2[1] = "Expected operator string in Array tuple";
    v6 = 39;
    v7 = 2;
  }

  a2[v7] = v6;
  return result;
}

void TLE::andDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$and operator disallowed for active fact";
    *(a4 + 16) = 40;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v5 = *(a2 + 16);
    *&v9.runtime = *a2;
    *&v9.lookup.index_count = v5;
    *&v9.sorted = *(a2 + 32);
    v9.var0.ccstate.der_end = *(a2 + 48);
    TLE::Executor::getDependentOpsFromDictionary(a1, &v9, &v10);
    if (v10)
    {
      *a4 = v10;
      *(a4 + 16) = v11;
      *(a4 + 24) = 0;
    }

    else
    {
      if (v12 != 1)
      {
        operator new();
      }

      v7 = *(&v11 + 1);
      if (!*(&v11 + 1))
      {
        goto LABEL_16;
      }

      v8 = 8 * v12;
      if (*(&v11 + 1) + v8 < *(&v11 + 1) || HIDWORD(v8))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
      }

      if (v8 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      *a4 = 0u;
      *(a4 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
    }

    if (*(&v11 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v11 + 1), v12);
    }
  }
}

void sub_29822FAE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void TLE::orDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$or operator disallowed for active fact";
    *(a4 + 16) = 39;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v5 = *(a2 + 16);
    *&v9.runtime = *a2;
    *&v9.lookup.index_count = v5;
    *&v9.sorted = *(a2 + 32);
    v9.var0.ccstate.der_end = *(a2 + 48);
    TLE::Executor::getDependentOpsFromDictionary(a1, &v9, &v10);
    if (v10)
    {
      *a4 = v10;
      *(a4 + 16) = v11;
      *(a4 + 24) = 0;
    }

    else
    {
      if (v12 != 1)
      {
        operator new();
      }

      v7 = *(&v11 + 1);
      if (!*(&v11 + 1))
      {
        goto LABEL_16;
      }

      v8 = 8 * v12;
      if (*(&v11 + 1) + v8 < *(&v11 + 1) || HIDWORD(v8))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
      }

      if (v8 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      *a4 = 0u;
      *(a4 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
    }

    if (*(&v11 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v11 + 1), v12);
    }
  }
}

void sub_29822FCB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void TLE::optionalOpDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v10 = 0u;
  *v11 = 0u;
  v5 = *(a2 + 16);
  *&v9.runtime = *a2;
  *&v9.lookup.index_count = v5;
  *&v9.sorted = *(a2 + 32);
  v9.var0.ccstate.der_end = *(a2 + 48);
  v6 = *a3;
  TLE::Executor::getDependentOpsFromDictionary(a1, &v9, &v10);
  if (v10)
  {
    *a4 = v10;
    *(a4 + 16) = v11[0];
    *(a4 + 24) = 0;
  }

  else
  {
    if (v12 == 1)
    {
      v9.runtime = 0;
      if (v11[1])
      {
        v8 = 8 * v12;
        if (v11[1] + v8 < v11[1] || HIDWORD(v8))
        {
          os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v7);
        }

        if (v8 >= 8)
        {
          operator new();
        }
      }

      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v7);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$optional only supports a single dependent operation";
    *(a4 + 16) = 52;
  }

  if (v11[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v11[1], v12);
  }
}

void sub_29822FE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, unsigned int a21)
{
  if (a20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a20, a21);
  }

  _Unwind_Resume(exception_object);
}

void TLE::andArrayOpDeserializer(uint64_t a1@<X8>)
{
  v7 = 0;
  v5 = 0u;
  *v6 = 0u;
  TLE::opArrayOpDeserializer(&v5);
  if (v5)
  {
    *a1 = v5;
    *(a1 + 16) = v6[0];
    *(a1 + 24) = 0;
  }

  else
  {
    if (v7 != 1)
    {
      operator new();
    }

    v3 = v6[1];
    if (!v6[1])
    {
      goto LABEL_14;
    }

    v4 = 8 * v7;
    if (v6[1] + v4 < v6[1] || HIDWORD(v4))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v2);
    }

    if (v4 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v2);
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a1 + 24), *v3);
  }

  if (v6[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v6[1], v7);
  }
}

void sub_29822FFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, unsigned int a15)
{
  if (a14)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a14, a15);
  }

  _Unwind_Resume(exception_object);
}

void **libkern::intrusive_shared_ptr<TLE::AndOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void TLE::Executor::getDependentOpsFromDictionary(uint64_t a1@<X0>, const der_vm_context *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  *(a1 + 8) = v5 + 1;
  if ((v5 + 1) >= 6)
  {
    *(a1 + 8) = v5;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    *a3 = 8;
    v6 = "Constraint is too deeply nested. Failing to avoid recursion overflow";
    v7 = 68;
LABEL_11:
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    return;
  }

  v9 = *&a2->lookup.index_count;
  v17 = *&a2->runtime;
  v18 = v9;
  v19 = *&a2->sorted;
  der_end = a2->var0.ccstate.der_end;
  if (der_vm_CEType_from_context() != 1)
  {
    --*(a1 + 8);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    *a3 = 3;
    v6 = "Got an unexpected type (not a dictionary) when trying to generate dependent operations for evaluation.";
    v7 = 102;
    goto LABEL_11;
  }

  v10 = count_ce_elements(a2);
  if (!v10)
  {
    --*(a1 + 8);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    *a3 = 4;
    v6 = "The dictionary of dependent operations is empty.";
    v7 = 48;
    goto LABEL_11;
  }

  v11 = v10;
  v23 = 0;
  if (HIDWORD(v10))
  {
    v12 = 0;
    LODWORD(v11) = 0;
  }

  else
  {
    v12 = malloc_type_malloc(8 * v10, 0x2000093837F09uLL);
    bzero(v12, 8 * v11);
  }

  v22 = v12;
  LODWORD(v23) = v11;
  *&v17 = 0;
  *(&v17 + 1) = &v17;
  *&v18 = 0x4002000000;
  *(&v18 + 1) = __Block_byref_object_copy_;
  *&v19 = __Block_byref_object_dispose_;
  *(&v19 + 1) = 0;
  der_end = 0;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  der_vm_iterate_b();
  v13 = *(&v17 + 1) + 40;
  v14 = *(*(&v17 + 1) + 40);
  --*(a1 + 8);
  if (v14)
  {
    *(a3 + 32) = 0;
    *(a3 + 24) = 0;
    v15 = *v13;
    *(a3 + 16) = *(v13 + 16);
    *a3 = v15;
  }

  else
  {
    TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(a3, &v22);
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
  if (v22)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v22, v23);
  }
}

void sub_2982302D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v15 = *(v13 - 104);
  if (v15)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v15, *(v13 - 96));
  }

  _Unwind_Resume(a1);
}

BOOL ___ZN3TLE8Executor29getDependentOpsFromDictionaryE14der_vm_contextRKNS_14FactDefinitionEbmPK8CEBuffer_block_invoke(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x29EDCA608];
  v89 = *(a1 + 48);
  memset(v97, 0, 40);
  TLE::keyForContext((a2 + 56), v97);
  if (LODWORD(v97[0]))
  {
    result = 0;
    v4 = *(*(a1 + 32) + 8);
    *(v4 + 40) = v97[0];
    *(v4 + 56) = *&v97[1];
    goto LABEL_6;
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  v5 = *(a2 + 72);
  v98[0] = *(a2 + 56);
  v98[1] = v5;
  v99 = *(a2 + 88);
  v100 = *(a2 + 104);
  v6 = *MEMORY[0x29EDC9150];
  der_vm_execute_nocopy();
  if (TLE::matchRestrictList(&v97[1] + 1, *(a1 + 56), *(a1 + 64)))
  {
    result = 0;
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 40) = 6;
    v9 = "Unexpected key for parsing context";
    v10 = 34;
LABEL_5:
    *(v8 + 48) = v9;
    *(v8 + 56) = v10;
    goto LABEL_6;
  }

  if (**(&v97[1] + 1) == 36)
  {
    v12 = TLE::operations;
    v13 = &TLE::operations[3 * dword_2A13A8B98];
    v14 = 24 * dword_2A13A8B98;
    if (v13 < TLE::operations || HIDWORD(v14))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v7);
    }

    v16 = (v13 - TLE::operations) >> 64;
    v15 = 24 * dword_2A13A8B98;
    if (v15 >= 0xFFFFFFFF80000000)
    {
      LOBYTE(v16) = v16 + 1;
    }

    *(&v17 + 1) = v16 & 1;
    *&v17 = v15 + 0x80000000;
    if ((v17 >> 32))
    {
      os_detail::panic_trapping_policy::trap("The offset of the pointer inside its valid memory range can't be represented using int32_t", v7);
    }

    v18 = TLE::operations + v15;
    if (__CFADD__(TLE::operations, v15))
    {
      v19 = (v15 >> 63) + 1;
    }

    else
    {
      v19 = v15 >> 63;
    }

    v21 = v19 << 63 >> 63 != v19 || v19 << 63 >> 63 == -1;
    while (1)
    {
      v22 = v12 + (v14 >> 32);
      if (__CFADD__(v12, v14 >> 32))
      {
        v23 = (v14 >> 63) + 1;
      }

      else
      {
        v23 = v14 >> 63;
      }

      v24 = v23 << 63 >> 63;
      if (v24 != v23 || v24 < 0)
      {
        os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v7);
      }

      if (v21)
      {
        os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v7);
      }

      if (v22 == v18)
      {
        goto LABEL_77;
      }

      if (v14 < 0 || HIDWORD(v14) + 24 > v14)
      {
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v7);
      }

      v25 = *v22;
      v26 = *(v22 + 1);
      if (!CEBuffer_cmp())
      {
        break;
      }

      if (HIDWORD(v14) - 2147483624 < 0xFFFFFFFF00000000)
      {
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v7);
      }

      v14 = (v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x1800000000;
    }

    memset(v98, 0, sizeof(v98));
    (*(v22 + 2))(v98, v89, &v93, *(a1 + 72));
    if (LODWORD(v98[0]))
    {
      v29 = *(*(a1 + 32) + 8);
      v30 = v98[0];
      goto LABEL_42;
    }

    v32 = *(a1 + 80);
    v33 = *(*(*(a1 + 40) + 8) + 24);
    v34 = *v32;
    if (*v32)
    {
      v35 = v34 + 8 * *(v32 + 2);
      v36 = v35 >= v34;
      v37 = v35 - v34;
      if (!v36 || HIDWORD(v37))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v31);
      }
    }

    else
    {
      LODWORD(v37) = 0;
    }

    if (v33 >= 0)
    {
      v46 = *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v46 = -v33;
    }

    v47 = (v33 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v33 >= 0)
    {
      v48 = 8 * v46;
    }

    else
    {
      v48 = -8 * v46;
    }

    if (v46 >> 61)
    {
      v49 = 1;
    }

    else
    {
      v49 = 8 * v46 > v47;
    }

    if (v49)
    {
      v50 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
    }

    else if (v48 == v48)
    {
      v50 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
      if ((v48 & 0x80000000) == 0 && v48 + 8 <= v37)
      {
        v36 = __CFADD__(v34, v48 & 0x7FFFFFF8);
        v51 = (v34 + (v48 & 0x7FFFFFF8));
        v52 = v36;
        v53 = v52 << 63 >> 63;
        v50 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.";
        if (v53 == v52 && (v53 & 0x8000000000000000) == 0)
        {
          libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v51, *(&v98[1] + 1));
          *(&v98[1] + 1) = 0;
          libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v98[1] + 1);
LABEL_77:
          v40 = a1;
          v54 = *(a1 + 80);
          v55 = *(*(a1 + 40) + 8);
          v56 = *(v55 + 24);
          v57 = *v54;
          if (*v54)
          {
            v58 = v57 + 8 * *(v54 + 2);
            v36 = v58 >= v57;
            v59 = v58 - v57;
            if (!v36 || HIDWORD(v59))
            {
              os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v7);
            }
          }

          else
          {
            LODWORD(v59) = 0;
          }

          if (v56 >= 0)
          {
            v60 = *(v55 + 24);
          }

          else
          {
            v60 = -v56;
          }

          if (v56 >= 0)
          {
            v61 = 8 * v60;
          }

          else
          {
            v61 = -8 * v60;
          }

          if (v60 >> 61)
          {
            v62 = 1;
          }

          else
          {
            v62 = 8 * v60 > (v56 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v62)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow", v7);
          }

          if (v61 != v61)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v7);
          }

          if ((v61 & 0x80000000) != 0 || v61 + 8 > v59)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v7);
          }

          v36 = __CFADD__(v57, v61 & 0x7FFFFFF8);
          v63 = (v57 + (v61 & 0x7FFFFFF8));
          v64 = v36;
          v65 = v64 << 63 >> 63;
          if (v65 != v64 || v65 < 0)
          {
            os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v7);
          }

          if (!*v63)
          {
            *(v98 + 4) = *(&v97[1] + 8);
            operator new();
          }

          goto LABEL_102;
        }
      }
    }

    else
    {
      v50 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    }

    os_detail::panic_trapping_policy::trap(v50, v31);
  }

  if (*(a1 + 88) != 1)
  {
    result = 0;
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 40) = 6;
    v9 = "Fact not allowed in context";
    v10 = 27;
    goto LABEL_5;
  }

  if (((*(**v89 + 32))(*v89, *(&v97[1] + 1), *&v97[2]) & 1) == 0)
  {
    *(v98 + 4) = *(&v97[1] + 8);
    operator new();
  }

  v91 = 0;
  v92 = 0uLL;
  (*(**v89 + 16))(&v91);
  v98[0] = v93;
  v98[1] = v94;
  v99 = v95;
  v100 = v96;
  v27 = der_vm_CEType_from_context();
  if (v27 != 1)
  {
    if (v27 == v91)
    {
      v38 = TLE::opForContext(v27);
      v39 = v38;
      if (v38)
      {
        *(v38 + 16) = v92;
        *&v98[0] = v38;
        v40 = a1;
        v41 = *(a1 + 80);
        v42 = *(*(*(a1 + 40) + 8) + 24);
        v43 = *v41;
        if (*v41)
        {
          v44 = v43 + 8 * *(v41 + 2);
          v36 = v44 >= v43;
          v45 = v44 - v43;
          if (!v36 || HIDWORD(v45))
          {
            os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v38);
          }
        }

        else
        {
          LODWORD(v45) = 0;
        }

        if (v42 >= 0)
        {
          v83 = *(*(*(a1 + 40) + 8) + 24);
        }

        else
        {
          v83 = -v42;
        }

        if (v42 >= 0)
        {
          v84 = 8 * v83;
        }

        else
        {
          v84 = -8 * v83;
        }

        v85 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
        if (!(v83 >> 61) && 8 * v83 <= (v42 >> 63) + 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v84 == v84)
          {
            v85 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
            if ((v84 & 0x80000000) == 0 && v84 + 8 <= v45)
            {
              v36 = __CFADD__(v43, v84 & 0x7FFFFFF8);
              v86 = (v43 + (v84 & 0x7FFFFFF8));
              v87 = v36;
              v88 = v87 << 63 >> 63;
              v85 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.";
              if (v88 == v87 && (v88 & 0x8000000000000000) == 0)
              {
                libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v86, v39);
                *&v98[0] = 0;
                v82 = v98;
                goto LABEL_151;
              }
            }
          }

          else
          {
            v85 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
          }
        }

        os_detail::panic_trapping_policy::trap(v85, v39);
      }

      v68 = *(*(a1 + 32) + 8);
      *(v68 + 40) = 3;
      v69 = "Unexpected type of an fact declaration.";
      v70 = 39;
    }

    else
    {
      v68 = *(*(a1 + 32) + 8);
      *(v68 + 40) = 3;
      v69 = "Unexpected type of an operation declaration.";
      v70 = 44;
    }

    *(v68 + 48) = v69;
    *(v68 + 56) = v70;
    goto LABEL_43;
  }

  memset(v98, 0, sizeof(v98));
  TLE::factOpDeserializer(v89, &v93, &v91, v98);
  if (LODWORD(v98[0]))
  {
    v29 = *(*(a1 + 32) + 8);
    v30 = v98[0];
LABEL_42:
    *(v29 + 40) = v30;
    *(v29 + 56) = *&v98[1];
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v98[1] + 1);
LABEL_43:
    result = 0;
    goto LABEL_6;
  }

  v40 = a1;
  v71 = *(a1 + 80);
  v72 = *(*(*(a1 + 40) + 8) + 24);
  v73 = *v71;
  if (*v71)
  {
    v74 = v73 + 8 * *(v71 + 2);
    v36 = v74 >= v73;
    v75 = v74 - v73;
    if (!v36 || HIDWORD(v75))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v28);
    }
  }

  else
  {
    LODWORD(v75) = 0;
  }

  if (v72 >= 0)
  {
    v76 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v76 = -v72;
  }

  if (v72 >= 0)
  {
    v77 = 8 * v76;
  }

  else
  {
    v77 = -8 * v76;
  }

  v78 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
  if (v76 >> 61 || 8 * v76 > (v72 >> 63) + 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_166;
  }

  if (v77 != v77)
  {
    v78 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    goto LABEL_166;
  }

  if ((v78 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", (v77 & 0x80000000) != 0) || v77 + 8 > v75 || ((v36 = __CFADD__(v73, v77 & 0x7FFFFFF8), v79 = (v73 + (v77 & 0x7FFFFFF8)), !v36) ? (v80 = 0) : (v80 = 1), (v81 = v80 << 63 >> 63, v78 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v81 ^ v80) || v81 < 0))
  {
LABEL_166:
    os_detail::panic_trapping_policy::trap(v78, v28);
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v79, *(&v98[1] + 1));
  *(&v98[1] + 1) = 0;
  v82 = &v98[1] + 1;
LABEL_151:
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v82);
  v55 = *(*(v40 + 40) + 8);
  v56 = *(v55 + 24);
LABEL_102:
  v66 = (((v56 == -1) << 63) >> 63) ^ (v56 == -1);
  if (v66)
  {
    v67 = *(*(v40 + 32) + 8);
    *(v67 + 40) = 10;
    *(v67 + 48) = "Too many elements in dictionary";
    *(v67 + 56) = 31;
  }

  else
  {
    *(v55 + 24) = v56 + 1;
  }

  result = v66 == 0;
LABEL_6:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298230E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL TLE::matchRestrictList(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2 - 1;
  v5 = (a3 + 8);
  do
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = *(v5 - 1);
    v9 = *v5;
    v10 = CEBuffer_cmp();
    result = v10 == 0;
    if (v10)
    {
      v12 = v4 == 0;
    }

    else
    {
      v12 = 1;
    }

    --v4;
    v5 += 2;
  }

  while (!v12);
  return result;
}

void **libkern::intrusive_shared_ptr<TLE::ConstErrorOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void TLE::factOpDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = 0;
  v11 = 0u;
  *v12 = 0u;
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v9[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  TLE::Executor::getDependentOpsFromDictionary(&v11, a1, v9, a3, 0, 0, 0);
  if (v11)
  {
    *a4 = v11;
    *(a4 + 16) = v12[0];
    *(a4 + 24) = 0;
  }

  else if (v13 == 1)
  {
    v7 = v12[1];
    if (!v12[1])
    {
      goto LABEL_14;
    }

    v8 = 8 * v13;
    if (v12[1] + v8 < v12[1] || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
    }

    if (v8 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "There should only be one operation to match a fact";
    *(a4 + 16) = 50;
  }

  if (v12[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v12[1], v13);
  }
}

void sub_29823109C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, unsigned int a21)
{
  if (a20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a20, a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TLE::opForContext(int a1)
{
  if (a1 > 4)
  {
    if (a1 == 6)
    {
      operator new();
    }

    if (a1 == 5)
    {
      operator new();
    }
  }

  else
  {
    if (a1 == 3)
    {
      operator new();
    }

    if (a1 == 4)
    {
      operator new();
    }
  }

  return 0;
}

void *_ZN3TLE12BinaryDataOpI8CEBufferXtlNS_3__8EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  result = (*(*a2 + 24))(v8, a2, a1[2], a1[3]);
  if (LODWORD(v8[0]) == 6)
  {
    v6 = a1[4];
    v7 = a1[5];
    result = CEBuffer_cmp();
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = result == 0;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected data)";
    *a3 = 3;
    *(a3 + 16) = 52;
  }

  return result;
}

void _ZN3TLE12BinaryDataOpI8CEBufferXtlNS_3__8EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void TLE::RefCounted::~RefCounted(TLE::RefCounted *this)
{
  *this = &unk_2A1EAEC68;
  if (*(this + 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "RefCounted object destroyed, but is not fully released";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }
}

{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

void *_ZN3TLE11BinaryStrOpI8CEBufferXtlNS_3__7EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  result = (*(*a2 + 24))(v8, a2, a1[2], a1[3]);
  if (LODWORD(v8[0]) == 4)
  {
    v6 = a1[4];
    v7 = a1[5];
    result = CEBuffer_cmp();
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = result == 0;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected a string)";
    *a3 = 3;
    *(a3 + 16) = 56;
  }

  return result;
}

void _ZN3TLE11BinaryStrOpI8CEBufferXtlNS_3__7EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__6EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) == a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__6EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void *_ZN3TLE11BinaryIntOpIbXtlNS_3__5EEEE7ExecuteERNS_12EncyclopediaE@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  result = (*(*a2 + 24))(&v9, a2, *(a1 + 16), *(a1 + 24));
  if (v9 == 3 || v9 == 5)
  {
    v7 = *(a1 + 32);
    v8 = *(&v10 + 1) == 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v8 ^ v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIbXtlNS_3__5EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

__n128 TLE::ConstErrorOperation::Execute@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u8[8] = 0;
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

void TLE::ConstErrorOperation::~ConstErrorOperation(TLE::ConstErrorOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

BOOL ___ZL17count_ce_elementsRK14der_vm_context_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 24);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  v5 = v3;
  v6 = (v5 << 63 >> 63) ^ v5;
  if (!v6)
  {
    *(v1 + 24) = v4;
  }

  return v6 == 0;
}

void TLE::queryOpDeserializer(_DWORD *a1@<X2>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x2000000000;
    v6 = 1;
    der_vm_iterate_b();
    if (v4[3])
    {
      operator new();
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = 6;
    *(a2 + 8) = "$query deserialization failed since it has an invalid query definition";
    *(a2 + 16) = 70;
    _Block_object_dispose(&v3, 8);
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = 3;
    *(a2 + 8) = "Got an unexpected type (not a dictionary) when trying to generate a query operation.";
    *(a2 + 16) = 84;
  }
}

void sub_29823198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3TLE19queryOpDeserializerERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) == 2 && count_ce_elements((a2 + 56)) == 2)
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__4EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__4EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = (a1[4] & ~*(&v9 + 1)) == 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__4EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__3EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__3EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) >= a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__3EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__2EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__2EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) > a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__2EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__1EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__1EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) <= a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__1EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__0EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__0EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) < a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__0EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void TLE::inDeserializer(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 > 6u || ((1 << *a2) & 0x58) == 0)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    v5 = "Got an unexpected type (not an integer, string or data) when trying to generate an In operation.";
    v6 = 96;
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 2)
    {
      operator new();
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    v5 = "Got an unexpected type (not a sequence) when trying to read the array of matches.";
    v6 = 81;
  }

  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
}

uint64_t TLE::LWCR::LWCR(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 57) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

{
  *(this + 80) = 0;
  *(this + 57) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

char *TLE::LWCR::requirements(TLE::LWCR *this)
{
  v1 = this + 24;
  v3 = *(this + 24);
  v4 = *(this + 40);
  v5 = *(this + 56);
  v6 = *(this + 9);
  if (der_vm_context_is_valid())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t TLE::LWCR::loadFromCE@<X0>(TLE::LWCR *this@<X0>, CEQueryContext *a2@<X1>, uint64_t a3@<X8>)
{
  runtime = a2->der_context.runtime;
  v11 = *&a2->der_context.runtime;
  v15 = *&a2->der_context.lookup.index_count;
  v19 = *&a2->der_context.sorted;
  der_end = a2->der_context.var0.ccstate.der_end;
  result = der_vm_select_int_for_key();
  if (!result || (v12 = *&a2->der_context.runtime, v16 = *&a2->der_context.lookup.index_count, v20 = *&a2->der_context.sorted, v25 = a2->der_context.var0.ccstate.der_end, result = der_vm_select_int_for_key(), (result & 1) == 0))
  {
    v10 = *(runtime + 3);
    if (v10)
    {
      result = v10(runtime, "[%s]: %s\n", "loadFromCE", "LWCR: invalid version / compatible version fields");
    }

    *a3 = 7;
    v8 = "LWCRs are not encoded correctly";
    v9 = 31;
    goto LABEL_8;
  }

  if (*(this + 1) >= 2)
  {
    *a3 = 6;
    v8 = "This LWCR is not compatible with this runtime";
    v9 = 45;
LABEL_8:
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    return result;
  }

  v13 = *&a2->der_context.runtime;
  v17 = *&a2->der_context.lookup.index_count;
  v21 = *&a2->der_context.sorted;
  v26 = a2->der_context.var0.ccstate.der_end;
  result = der_vm_select_int_for_key();
  if (result && (*(this + 2) & 0x8000000000000000) != 0)
  {
    *a3 = 7;
    v8 = "LWCRs constraint category cannot be less that zero";
    v9 = 50;
    goto LABEL_8;
  }

  v14 = *&a2->der_context.runtime;
  v18 = *&a2->der_context.lookup.index_count;
  v22 = *&a2->der_context.sorted;
  v27 = a2->der_context.var0.ccstate.der_end;
  der_vm_execute_nocopy();
  if (der_vm_context_is_valid())
  {
    result = der_vm_CEType_from_context();
    if (result != 1)
    {
      *a3 = 7;
      v8 = "LWCRs 'requirements' field is not a dictionary";
      v9 = 46;
      goto LABEL_8;
    }
  }

  if (!*(this + 2))
  {
    result = der_vm_context_is_valid();
    if ((result & 1) == 0)
    {
      *a3 = 7;
      v8 = "LWCRs do not specify a constraint category or explicit requirements";
      v9 = 67;
      goto LABEL_8;
    }
  }

  *&v23 = 0;
  result = der_vm_context_is_valid();
  if (result)
  {
    result = CEConjureContextFromDER();
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = v23;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void TLE::Executor::getOperationsFromCE(TLE::Executor *this@<X0>, CEQueryContext *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *&a2->der_context.lookup.index_count;
    *&v8.runtime = *&a2->der_context.runtime;
    *&v8.lookup.index_count = v4;
    *&v8.sorted = *&a2->der_context.sorted;
    v8.var0.ccstate.der_end = a2->der_context.var0.ccstate.der_end;
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    TLE::Executor::getDependentOpsFromDictionary(this, &v8, &v9);
    if (v9)
    {
      *a3 = v9;
      *(a3 + 16) = v10;
      *(a3 + 24) = 0;
    }

    else
    {
      if (v11 != 1)
      {
        operator new();
      }

      v6 = *(&v10 + 1);
      if (!*(&v10 + 1))
      {
        goto LABEL_16;
      }

      v7 = 8 * v11;
      if (*(&v10 + 1) + v7 < *(&v10 + 1) || HIDWORD(v7))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v5);
      }

      if (v7 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v5);
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a3 + 24), *v6);
    }

    if (*(&v10 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v10 + 1), v11);
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 2;
    *(a3 + 8) = "Null query context";
    *(a3 + 16) = 18;
  }
}

void sub_298232AA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void *TLE::AndOperation::Execute@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 32);
  v5 = (a1 + 32);
  v6 = v7;
  if (v7)
  {
    v8 = 8 * *(a1 + 40);
    if (v6 + v8 < v6 || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(v5, a2);
  v12 = v11 >> 63;
  v13 = result + (v11 >> 32);
  if (__CFADD__(result, v11 >> 32))
  {
    ++v12;
  }

  v15 = v12 << 63 >> 63 != v12 || v12 << 63 >> 63 == -1;
  while (1)
  {
    v16 = (v6 + (v9 >> 32));
    if (__CFADD__(v6, v9 >> 32))
    {
      v17 = (v9 >> 63) + 1;
    }

    else
    {
      v17 = v9 >> 63;
    }

    v18 = v17 << 63 >> 63;
    if (v18 != v17 || v18 < 0 || v15)
    {
      os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v11);
    }

    if (v16 == v13)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
      return result;
    }

    if (v9 < 0 || HIDWORD(v9) + 8 > v9)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v11);
    }

    v19 = 0u;
    v20 = 0u;
    result = (*(**v16 + 16))(&v19);
    if (v19)
    {
      *(a3 + 24) = 0;
      *a3 = v19;
      *(a3 + 16) = v20;
      return result;
    }

    if ((BYTE8(v20) & 1) == 0)
    {
      break;
    }

    if (HIDWORD(v9) - 2147483640 < 0xFFFFFFFF00000000)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v11);
    }

    v9 = (v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x800000000;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  return result;
}

unint64_t libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (result)
  {
    v4 = result + 8 * *(a1 + 2);
    v5 = "The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range";
    if (v4 < result || (v4 - result) >> 32)
    {
LABEL_9:
      os_detail::panic_trapping_policy::trap(v5, a2);
    }

    if ((((v4 - __PAIR128__(v4, result)) >> 64) & 1) != (v4 - result) >> 63 || v4 - result != v4 - result)
    {
      v5 = "The offset of the pointer inside its valid memory range can't be represented using int32_t";
      goto LABEL_9;
    }
  }

  return result;
}

void TLE::AndOperation::~AndOperation(TLE::AndOperation *this)
{
  *this = &unk_2A1EAEBA8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

{
  *this = &unk_2A1EAEBA8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);
}

unint64_t TLE::OrOperation::Execute@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = v6;
  if (v6)
  {
    v7 = v5 + 8 * *(a1 + 40);
    v8 = v7 - v5;
    if (v7 < v5 || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(v4, a2);
  v12 = v11 >> 63;
  v13 = result + (v11 >> 32);
  if (__CFADD__(result, v11 >> 32))
  {
    ++v12;
  }

  v15 = v12 << 63 >> 63 != v12 || v12 << 63 >> 63 == -1;
  while (1)
  {
    v16 = v5 + (v9 >> 32);
    if (__CFADD__(v5, v9 >> 32))
    {
      v17 = (v9 >> 63) + 1;
    }

    else
    {
      v17 = v9 >> 63;
    }

    v18 = v17 << 63 >> 63;
    if (v18 != v17 || v18 < 0 || v15)
    {
      os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v11);
    }

    if (v16 == v13)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 24) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    if (v9 < 0 || HIDWORD(v9) + 8 > v9)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v11);
    }

    v20 = 0u;
    v21 = 0u;
    result = (*(**v16 + 16))(&v20);
    if (v20)
    {
      *(a3 + 24) = 0;
      *a3 = v20;
      *(a3 + 16) = v21;
      return result;
    }

    result = (*(**v16 + 24))();
    if ((result & 1) == 0)
    {
      if (BYTE8(v21))
      {
        break;
      }
    }

    if (HIDWORD(v9) - 2147483640 < 0xFFFFFFFF00000000)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v11);
    }

    v9 = (v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x800000000;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void TLE::OrOperation::~OrOperation(TLE::OrOperation *this)
{
  *this = &unk_2A1EAEBD8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

{
  *this = &unk_2A1EAEBD8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);
}

void TLE::InOperation::Execute(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  (*(*a2 + 24))(v5, a2, *(a1 + 16), *(a1 + 24));
  if (LODWORD(v5[0]) == 3 || LODWORD(v5[0]) == 4 || LODWORD(v5[0]) == 6)
  {
    der_vm_iterate_b();
    v4 = v8;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = *(v4 + 24);
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "In Operation expected the Fact to be an integer, string or data";
    *a3 = 3;
    *(a3 + 16) = 63;
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) != 3)
  {
    return 1;
  }

  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v3 = der_vm_integer_from_context();
  result = 1;
  if (v3 == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke_2(void *a1, uint64_t a2)
{
  if (*(a2 + 116) != 4)
  {
    return 1;
  }

  v3 = a1[5];
  v4 = a1[6];
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  v10 = *(a2 + 104);
  der_vm_string_from_context();
  v5 = CEBuffer_cmp();
  result = 1;
  if (!v5)
  {
    *(*(a1[4] + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke_3(void *a1, uint64_t a2)
{
  if (*(a2 + 116) != 6)
  {
    return 1;
  }

  v3 = a1[5];
  v4 = a1[6];
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  v10 = *(a2 + 104);
  der_vm_data_from_context();
  v5 = CEBuffer_cmp();
  result = 1;
  if (!v5)
  {
    *(*(a1[4] + 8) + 24) = 1;
    return 0;
  }

  return result;
}

void TLE::InOperation::~InOperation(TLE::InOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

void TLE::QueryOperation::Execute(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x29EDCA608];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  (*(*a2 + 24))(&v33, a2, *(a1 + 16), *(a1 + 24));
  if (v33 == 1)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = 0;
    v25 = &v24;
    v26 = 0x6002000000;
    v27 = __Block_byref_object_copy__33;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = __Block_byref_object_dispose__34;
    v32 = 0;
    v5 = *(*(&v34 + 1) + 16);
    v4 = *(*(&v34 + 1) + 32);
    v6 = *(*(&v34 + 1) + 48);
    v29 = **(&v34 + 1);
    v32 = v6;
    v31 = v4;
    v30 = v5;
    v16 = 0;
    v17 = &v16;
    v18 = 0x4002000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__6;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v7 = der_vm_iterate_b();
    v8 = v17 + 5;
    if (*(v17 + 10))
    {
      *(a3 + 24) = 0;
      *a3 = *v8;
      v9 = v8[2];
    }

    else
    {
      if (v7 == *MEMORY[0x29EDC9178])
      {
        v15 = v25[11];
        v12 = *(v25 + 5);
        v13 = *(v25 + 7);
        v14 = *(v25 + 9);
        is_valid = der_vm_context_is_valid();
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = is_valid;
        goto LABEL_8;
      }

      *(a3 + 24) = 0;
      *a3 = 0;
      *(a3 + 8) = "Attempted to execute a non-iterable query";
      *a3 = 6;
      v9 = 41;
    }

    *(a3 + 16) = v9;
LABEL_8:
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v24, 8);
    goto LABEL_9;
  }

  *(a3 + 24) = 0;
  *a3 = 0;
  *(a3 + 8) = "Query Operation expected the Fact to be a CoreEntitlements dictionary";
  *a3 = 3;
  *(a3 + 16) = 69;
LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_29823377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__33(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3TLE14QueryOperation7ExecuteERNS_12EncyclopediaE_block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *(a2 + 56);
  v29 = *(a2 + 72);
  v30 = *(a2 + 88);
  v31 = *(a2 + 104);
  v4 = *MEMORY[0x29EDC9148];
  der_vm_execute_nocopy();
  v20 = *(a2 + 56);
  v22 = *(a2 + 72);
  v24 = *(a2 + 88);
  v26 = *(a2 + 104);
  v5 = *MEMORY[0x29EDC9150];
  der_vm_execute_nocopy();
  v6 = der_vm_integer_from_context() & 0xBFFFFFFFFFFFFFFFLL;
  **(a1 + 48) = v6;
  if (v6 > 0xB)
  {
    goto LABEL_12;
  }

  if (((1 << v6) & 0x35A) == 0)
  {
    if (((1 << v6) & 0xC80) != 0)
    {
      *(*(a1 + 48) + 8) = der_vm_integer_from_context();
      goto LABEL_8;
    }

    if (v6 == 5)
    {
      *(*(a1 + 48) + 8) = der_vm_BOOL_from_context();
      goto LABEL_8;
    }

LABEL_12:
    result = 0;
    v15 = *(*(a1 + 32) + 8);
    *(v15 + 40) = 1;
    *(v15 + 48) = "Attempted to execute unknown CoreEntitlements operation";
    *(v15 + 56) = 55;
    return result;
  }

  v7 = der_vm_string_from_context();
  v8 = *(a1 + 48);
  *(v8 + 8) = v7;
  *(v8 + 16) = v9;
  **(a1 + 48) |= 0x4000000000000000uLL;
LABEL_8:
  v10 = *(*(a1 + 40) + 8);
  v27 = *(v10 + 88);
  v21 = *(v10 + 40);
  v23 = *(v10 + 56);
  v25 = *(v10 + 72);
  if (der_vm_context_is_valid())
  {
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 40) + 8);
    v19 = *(v12 + 88);
    v16 = *(v12 + 40);
    v17 = *(v12 + 56);
    v18 = *(v12 + 72);
    der_vm_execute_nocopy();
    v13 = *(*(a1 + 40) + 8);
    *(v13 + 40) = v21;
    *(v13 + 56) = v23;
    *(v13 + 72) = v25;
    *(v13 + 88) = v27;
  }

  return 1;
}

void TLE::QueryOperation::~QueryOperation(TLE::QueryOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

void *TLE::OptionalOperation::Execute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0u;
  v8 = 0u;
  result = (*(**(a1 + 32) + 16))(&v7);
  if (v7)
  {
    if (v7 != 5 && v7 != 1)
    {
      *(a2 + 24) = 0;
      *a2 = v7;
      *(a2 + 16) = v8;
      return result;
    }

    v6 = 1;
    *(a1 + 40) = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = BYTE8(v8);
  }

  *(a2 + 24) = v6;
  return result;
}

void TLE::OptionalOperation::~OptionalOperation(TLE::OptionalOperation *this)
{
  *this = &unk_2A1EAEB48;
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(this + 4);
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

{
  *this = &unk_2A1EAEB48;
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(this + 4);

  TLE::RefCounted::~RefCounted(this);
}

void sub_298233D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = LWCR;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_298234404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = LWCRFact;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2982349D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, id a31)
{
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((v33 + 24));
  TLE::CallbackEncyclopedia::~CallbackEncyclopedia(&a31);

  _Unwind_Resume(a1);
}

void TLE::CallbackEncyclopedia::~CallbackEncyclopedia(id *this)
{
}

{

  JUMPOUT(0x29C2839D0);
}

{
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}