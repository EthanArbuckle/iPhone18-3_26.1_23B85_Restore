void std::vector<ASN1T_MeasResultEUTRA>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*v2)
  {
    std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;
    v4 = *MEMORY[0x29EDCA608];

    operator delete(v3);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];
  }
}

void std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  for (i = *(a1 + 8); i != a2; i -= 120)
  {
    v5 = *(i - 32);
    if (v5)
    {
      *(i - 24) = v5;
      operator delete(v5);
    }

    v6 = *(i - 56);
    if (v6)
    {
      *(i - 48) = v6;
      operator delete(v6);
    }

    v7 = *(i - 80);
    if (v7)
    {
      *(i - 72) = v7;
      operator delete(v7);
    }

    v8 = *(i - 104);
    if (v8)
    {
      *(i - 96) = v8;
      operator delete(v8);
    }
  }

  *(a1 + 8) = a2;
  v9 = *MEMORY[0x29EDCA608];
}

void ASN1T_PLMN_Identity::~ASN1T_PLMN_Identity(ASN1T_PLMN_Identity *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void std::vector<ASN1T_MeasuredResults>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        v8[0] = (v4 - 24);
        std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](v8);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*v2)
  {
    std::vector<ASN1T_CellMeasuredResults>::clear[abi:ne200100](v2);
    v3 = **a1;
    v4 = *MEMORY[0x29EDCA608];

    operator delete(v3);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];
  }
}

void std::vector<ASN1T_CellMeasuredResults>::clear[abi:ne200100](uint64_t *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
  v5 = *MEMORY[0x29EDCA608];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_NMRelement>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v17 = *MEMORY[0x29EDCA608];
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ASN1T_MCC_MNC_Digit>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<ASN1T_MCC_MNC_Digit>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = *MEMORY[0x29EDCA608];
  v10 = a4;
  v11 = a4;
  v12[0] = a1;
  v12[1] = &v10;
  v12[2] = &v11;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 8);
      *(v4 + 16) = 0;
      *(v4 + 8) = v7;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v4 + 16, *(v6 + 16), *(v6 + 24), *(v6 + 24) - *(v6 + 16));
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v4 + 40, *(v6 + 40), *(v6 + 48), *(v6 + 48) - *(v6 + 40));
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4 + 64, *(v6 + 64), *(v6 + 72), *(v6 + 72) - *(v6 + 64));
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4 + 88, *(v6 + 88), *(v6 + 96), *(v6 + 96) - *(v6 + 88));
      *(v4 + 112) = *(v6 + 112);
      v6 += 120;
      v4 = v11 + 120;
      v11 += 120;
    }

    while (v6 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_29954EACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<ASN1T_MCC_MNC_Digit>::__vallocate[abi:ne200100](result, a4);
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29954EBAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = **(a1 + 16);
    v5 = **(a1 + 8);
    while (v4 != v5)
    {
      v6 = *(v4 - 32);
      if (v6)
      {
        *(v4 - 24) = v6;
        operator delete(v6);
      }

      v7 = *(v4 - 56);
      if (v7)
      {
        *(v4 - 48) = v7;
        operator delete(v7);
      }

      v8 = *(v4 - 80);
      if (v8)
      {
        *(v4 - 72) = v8;
        operator delete(v8);
      }

      v9 = *(v4 - 104);
      if (v9)
      {
        *(v4 - 96) = v9;
        operator delete(v9);
      }

      v4 -= 120;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      *v7 = *(a1 + v6);
      *(v7 + 8) = *(a1 + v6 + 8);
      if (a3 != a1)
      {
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v7 + 16), *(v8 + 16), *(v8 + 24), *(v8 + 24) - *(v8 + 16));
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v7 + 40), *(v8 + 40), *(v8 + 48), *(v8 + 48) - *(v8 + 40));
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v7 + 64), *(v8 + 64), *(v8 + 72), *(v8 + 72) - *(v8 + 64));
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v7 + 88), *(v8 + 88), *(v8 + 96), *(v8 + 96) - *(v8 + 88));
      }

      *(v7 + 112) = *(v8 + 112);
      v6 += 120;
    }

    while (v8 + 120 != a2);
    a3 += v6;
  }

  v9 = *MEMORY[0x29EDCA608];
  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v14 = *MEMORY[0x29EDCA608];
  v10 = a4;
  v11 = a4;
  v12[0] = a1;
  v12[1] = &v10;
  v12[2] = &v11;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 7) = *(v6 + 7);
      *v4 = v7;
      v4[3] = 0;
      v4[4] = 0;
      v4[2] = 0;
      std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>((v4 + 2), v6[2], v6[3], 0x8E38E38E38E38E39 * ((v6[3] - v6[2]) >> 3));
      v6 += 5;
      v4 = v11 + 5;
      v11 += 5;
    }

    while (v6 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_29954EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ASN1T_CellMeasuredResults>::__vallocate[abi:ne200100](result, a4);
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29954EFA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ASN1T_CellMeasuredResults>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>>(a1, a2);
  }

  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v17 = *MEMORY[0x29EDCA608];
  v13 = a4;
  v14 = a4;
  v15[0] = a1;
  v15[1] = &v13;
  v15[2] = &v14;
  v16 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      v7 = *(v6 + 16);
      *(v4 + 24) = *(v6 + 24);
      *(v4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 40);
      *(v4 + 48) = 0;
      v10 = v4 + 48;
      *(v10 - 8) = v9;
      *(v10 - 16) = v8;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v10, *(v6 + 48), *(v6 + 56), *(v6 + 56) - *(v6 + 48));
      v6 += 72;
      v4 = v14 + 72;
      v14 += 72;
    }

    while (v6 != a3);
  }

  v16 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v15);
  v11 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_29954F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>::operator()[abi:ne200100](a1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29954F250(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>::operator()[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 72;
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>::operator()[abi:ne200100](a1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29954F340(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>::operator()[abi:ne200100](uint64_t a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v5[0] = (v1 - 24);
      std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](v5);
      v1 = v3;
    }

    while (v3 != v2);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasuredResults *,ASN1T_MeasuredResults *,ASN1T_MeasuredResults *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 7) = *(v5 + 7);
      *a3 = v6;
      if (a3 != v5)
      {
        v8 = (a3 + 2);
        v7 = a3[2];
        v10 = v5[2];
        v9 = v5[3];
        v11 = v9 - v10;
        v12 = a3[4];
        if (v12 - v7 < (v9 - v10))
        {
          if (v7)
          {
            std::vector<ASN1T_CellMeasuredResults>::clear[abi:ne200100](a3 + 2);
            operator delete(*v8);
            v12 = 0;
            *v8 = 0;
            a3[3] = 0;
            a3[4] = 0;
          }

          v13 = 0x8E38E38E38E38E39 * (v11 >> 3);
          if (v13 <= 0x38E38E38E38E38ELL)
          {
            v14 = 0x8E38E38E38E38E39 * (v12 >> 3);
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x1C71C71C71C71C7)
            {
              v15 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v15 = v13;
            }

            std::vector<ASN1T_CellMeasuredResults>::__vallocate[abi:ne200100]((a3 + 2), v15);
          }

          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        v16 = a3[3] - v7;
        if (v16 >= v11)
        {
          v17 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *>(v5[2], v5[3], v7);
          for (i = a3[3]; i != v17; i -= 72)
          {
            v19 = *(i - 24);
            if (v19)
            {
              *(i - 16) = v19;
              operator delete(v19);
            }
          }

          a3[3] = v17;
        }

        else
        {
          std::__copy_impl::operator()[abi:ne200100]<ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *>(v5[2], (v10 + v16), v7);
          a3[3] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>((a3 + 2), v10 + v16, v9, a3[3]);
        }
      }

      v5 += 5;
      a3 += 5;
    }

    while (v5 != a2);
  }

  v20 = *MEMORY[0x29EDCA608];
  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *>(char **a1, char **a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v5 = a1 + 7;
    do
    {
      v6 = v5 - 7;
      *a3 = *(v5 - 7);
      *(a3 + 8) = *(v5 - 48);
      v7 = *(v5 - 5);
      *(a3 + 23) = *(v5 - 33);
      *(a3 + 16) = v7;
      v8 = *(v5 - 3);
      *(a3 + 40) = *(v5 - 16);
      *(a3 + 32) = v8;
      if (a3 != v5 - 7)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a3 + 48), *(v5 - 1), *v5, *v5 - *(v5 - 1));
      }

      a3 += 72;
      v5 += 9;
    }

    while (v6 + 9 != a2);
  }

  v9 = *MEMORY[0x29EDCA608];
  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void GNSS_Write_GNB_Ctrl(char **a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = *a1;
    v2 = a1[1];
    if (v2 != *a1)
    {
      if (v2 > *a1)
      {
        v3 = a1[3];
      }

      v4 = v3 - v2;
      v5 = GN_GPS_Write_GNB_Ctrl((v3 - v2), v2);
      GNB_Debug_BlockMove(a1[1], v5);
      v6 = &a1[1][v5];
      a1[1] = v6;
      if (v6 >= a1[3])
      {
        v6 = a1[2];
        a1[1] = v6;
        if (v5 == v4)
        {
          v7 = (*a1 - v6);
          v8 = GN_GPS_Write_GNB_Ctrl((*a1 - v6), v6);
          GNB_Debug_BlockMove(a1[1], v8);
          v6 = &a1[1][v8];
          a1[1] = v6;
        }
      }

      if (v6 == *a1)
      {
        v9 = a1[2];
        *a1 = v9;
        a1[1] = v9;
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void G5K_ME_Send_WakeUp(char **a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 10;
  v3 = *a1;
  if (*a1 >= a1[3])
  {
    v3 = a1[2];
  }

  *a1 = v3 + 1;
  *v3 = 35;
  v4 = *a1;
  if (*a1 >= a1[3])
  {
    v4 = a1[2];
  }

  v5 = 0;
  v6 = 87;
  v7 = v4;
  do
  {
    *a1 = v7 + 1;
    *v7 = v6;
    v7 = *a1;
    if (*a1 >= a1[3])
    {
      v7 = a1[2];
      *a1 = v7;
    }

    v6 = str_16[++v5];
  }

  while (v5 != 4);
  v8 = mach_continuous_time();
  sprintf_sp1u(a1, (*&g_MacClockTicksToMsRelation * v8));
  v9 = (*a1)++;
  *v9 = 32;
  v10 = *a1;
  if (*a1 >= a1[3])
  {
    v10 = a1[2];
  }

  for (i = 0; i != 10; ++i)
  {
    v12 = 91;
    v13 = 1u;
    do
    {
      *a1 = v10 + 1;
      *v10 = v12;
      v10 = *a1;
      if (*a1 >= a1[3])
      {
        v10 = a1[2];
        *a1 = v10;
      }

      v12 = str_1_7[v13++];
    }

    while (v13 != 10);
  }

  *a1 = v10 + 1;
  *v10 = 32;
  v14 = *a1;
  v15 = a1[3];
  if (*a1 >= v15)
  {
    v14 = a1[2];
    *a1 = v14;
  }

  if (v4 == v14)
  {
    v19 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v18 = *v4++;
      v17 = v18;
      if (v4 >= v15)
      {
        v4 = a1[2];
      }

      v16 += v17;
    }

    while (v4 != v14);
    v19 = v16;
  }

  *a1 = v14 + 1;
  *v14 = 38;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_02x(a1, v19);
  v20 = (*a1)++;
  *v20 = 10;
  v21 = *a1;
  if (*a1 >= a1[3])
  {
    v21 = a1[2];
  }

  *a1 = v21 + 1;
  *v21 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v22 = *MEMORY[0x29EDCA608];

  GNSS_Write_GNB_Ctrl(a1);
}

uint64_t G5K_ME_Send_Sleep(char **a1, char **a2, unsigned int a3, unsigned int a4, int a5)
{
  v19 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(a1);
  GNSS_GNB_Debug_Ctl(a2);
  if (g_Enable_GNB_Debug)
  {
    v10 = (*a2)++;
    *v10 = 10;
    v11 = *a2;
    if (*a2 >= a2[3])
    {
      v11 = a2[2];
    }

    v12 = 35;
    v13 = 1u;
    do
    {
      *a2 = v11 + 1;
      *v11 = v12;
      v11 = *a2;
      if (*a2 >= a2[3])
      {
        v11 = a2[2];
        *a2 = v11;
      }

      v12 = str_2_5[v13++];
    }

    while (v13 != 8);
    sprintf_sp1u(a2, a3);
    sprintf_sp1u(a2, a4);
    v14 = (*a2)++;
    *v14 = 10;
    if (*a2 >= a2[3])
    {
      *a2 = a2[2];
    }
  }

  if (a5)
  {
    v18 = 0;
    v17[0] = BYTE1(a3);
    v17[1] = a3;
    v17[2] = BYTE1(a4);
    v17[3] = a4;
    STEU_Encode_c(a1, 83, 12, v17);
  }

  GNSS_Write_GNB_Ctrl(a1);
  result = GNSS_GNB_Debug_Ctl(a2);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void G5K_ME_Send_Ctrl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v223[103] = *MEMORY[0x29EDCA608];
  v9 = (*a1)++;
  *v9 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  v10 = *(a3 + 952);
  v11 = *(a3 + 948);
  if (v10)
  {
    EvLog_nd("G5K_ME_Send_Ctrl: Fix_Int Updated ", 2, a3, *(a3 + 948), v10);
    v11 = *(a3 + 952);
    *(a3 + 948) = v11;
  }

  v199 = (a4 + 4096);
  v12 = *(*(p_api + 88) + 32);
  if (v11 >= 0x1F4)
  {
    v13 = 100;
  }

  else
  {
    v13 = 50;
  }

  v14 = -API_Get_Est_ME_TTick();
  do
  {
    v12 += v11;
  }

  while (v14 + v12 <= v13);
  v15 = *(a3 + 948);
  HIDWORD(v16) = 652835029 * v15;
  LODWORD(v16) = 652835029 * v15;
  if ((v16 >> 3) <= 0x418937)
  {
    v17 = *(p_api + 88);
      ;
    }

    v19 = *(v17 + 168);
    while (i < 0.0)
    {
      i = i + 604800.0;
    }

    v20 = *(v17 + 848) / 299792458.0;
    v21 = i + *(a3 + 1024) * 0.000000001;
    v22 = v21 - v21;
    v23 = v11 / 1000;
    if (v22 >= 0.7)
    {
      ++v23;
    }

    v24 = *(v17 + 32);
    v25 = (v19 + 1.0) * (v23 - v22) * 1000.0;
    v26 = vcvtd_n_u64_f64(v25 - v25, 0x10uLL);
    v191 = v24 + v25;
    v187 = v26;
    if (v20 < 0.004)
    {
      v27 = v24 + v25 - v12 + (v26 >> 15);
      v28 = v12 - v11 - (v25 + v24 + (v26 >> 15));
      do
      {
        v29 = v27;
        v27 -= v11;
        v28 += v11;
      }

      while (v29 > 10);
      v30 = 1 - v11;
      if (v29 > (1 - v11))
      {
        v30 = v29;
      }

      v31 = v30 + v28;
      if (v11 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v11;
      }

      v56 = v31 == 0;
      v33 = (v31 - (v31 != 0)) / v32;
      if (!v56)
      {
        ++v33;
      }

      v34 = v29 + v33 * v11;
      if (v34 <= -50)
      {
        v34 = -50;
      }

      if (v34 >= 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = -v34;
      }

      if (v35 <= 2 && v20 >= 0.0001)
      {
        v34 = 0;
      }

      v12 += v34;
    }
  }

  else
  {
    v191 = 0;
    v187 = 0;
  }

  *(a2 + 536) = v12;
  G5K_ME_enc_n(a1, v12, v15);
  *v210 = *a4;
  *&v210[4] = *(a4 + 4);
  *&v210[6] = *(a4 + 6);
  *v211 = *(a4 + 16);
  *&v211[4] = *(a4 + 20);
  v212 = *(a4 + 14);
  v213 = *(a4 + 22);
  v214 = *(a4 + 26);
  v37 = *(a4 + 32);
  v215 = *(a4 + 28);
  v38 = *(a4 + 48);
  v216 = *(a4 + 52);
  v217 = v38;
  v218 = *(a4 + 6132);
  v219 = v37;
  v39 = *(a4 + 40);
  v220 = *(a4 + 36);
  v221 = v39;
  v222 = *(a4 + 44);
  *__b = v223;
  STEU_Encode(a1, 97, v210, __b);
  if (*__b - v210 != 45)
  {
    gn_report_assertion_failure("ME_enc_a: Wrong Length!");
  }

  v194 = a3;
  v201 = 0;
  v40 = *(&xmmword_2A1926940 + 1);
  if ((Core_Get_GPS_TOWAss(__b) & 1) == 0)
  {
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    *__b = 0u;
    v203 = 0u;
  }

  v41 = 0;
  v197 = a4;
  v198 = a4 + 4174;
  v42 = a4 + 3996;
  v43 = a4 + 60;
  do
  {
    v44 = *(v198 + 2 * v41);
    if (v44 >= 1)
    {
      v45 = *(v42 + (v44 - 1));
      if ((v45 & 0x8000000000000000) == 0)
      {
        v46 = v43 + 48 * v45;
        if (*(v46 + 4) == 1)
        {
          v47 = *(v46 + 14);
          if (*(v46 + 12))
          {
            v47 |= 0x10u;
          }

          if (*(v46 + 13))
          {
            v48 = v47 | 0x20;
          }

          else
          {
            v48 = v47;
          }

          v49 = *(v46 + 32) * 0.000000977517107 + *(v46 + 28) * 1.5;
          v50 = *(v46 + 8);
          v51 = *(v46 + 10);
          if (v50 == 2)
          {
            v51 = v51;
            if ((v51 - 7) < 0xF2u)
            {
              goto LABEL_85;
            }

            v49 = v49 + (10800 - *(v197 + 44)) + *(v40 + 1152 + 8 * (v51 + 7)) * -0.00000000333564095;
            v52 = 86400.0;
          }

          else
          {
            if (v50 == 4)
            {
              v49 = v49 + -14.0 + *(v40 + 1264) * -0.00000000333564095;
            }

            v52 = 604800.0;
          }

          if (v49 >= 0.0)
          {
            v53 = v49;
          }

          else
          {
            v53 = v49 + v52;
          }

          while (v53 > v52)
          {
            v53 = v53 - v52;
          }

          v54 = Encode_SVid_STE(v50, v51, &v201);
          if (v201)
          {
            v56 = v54 == 0;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            EvCrt_nd("ME_enc_s: Invalid Constel / SV ID ", 2, v55, v201, v54);
          }

          else
          {
            v210[0] = v201;
            v210[1] = v54;
            v57 = *(v46 + 22);
            v210[2] = v48;
            *&v210[3] = (v57 * 48.7151802);
            v210[5] = (v57 * 48.7151802) >> 16;
            v200 = &v210[6];
            *&v210[6] = (v53 * 1000.0);
            v210[8] = (v53 * 1000.0) >> 16;
            v58 = v53 * 1000.0 - (v53 * 1000.0);
            v210[9] = (v53 * 1000.0) >> 24;
            *&v210[10] = vcvtd_n_s64_f64(v58, 0x10uLL);
            LOWORD(v58) = *(v46 + 18);
            *&v210[12] = (*&v58 * 1.90293673);
            v59 = *(v46 + 26);
            if (v59 < 0x200)
            {
              v64 = 2149582851 * (v59 << 16);
              v62 = v64 >> 41;
              v63 = v64 >> 49;
              v60 = *(v46 + 8);
            }

            else
            {
              v60 = *(v46 + 8);
              if (v60 == 3)
              {
                v61 = 65280;
              }

              else
              {
                v61 = 0x8000;
              }

              if (v60 == 3)
              {
                LOBYTE(v62) = -1;
              }

              else
              {
                LOBYTE(v62) = 0;
              }

              LODWORD(v63) = v61 >> 8;
            }

            v65 = 0;
            v211[0] = v62;
            v211[1] = v63;
            v211[2] = 0;
            *&v66 = *(v46 + 40) * 0.475734182;
            *&v211[3] = *&v66;
            LOBYTE(v66) = *(v46 + 42);
            v67 = (v66 * 1.90293673);
            if (v67 >= 0xFF)
            {
              LOBYTE(v67) = -1;
            }

            v211[5] = v67;
            v212 = *(v46 + 43);
            if (v60 == 1)
            {
              v65 = __b[*(v46 + 10) - 1];
            }

            v213 = v65;
            LOBYTE(v214) = 0;
            v200 = &v214 + 1;
            STEU_Encode(a1, 115, v210, &v200);
            if (v200 - v210 != 27)
            {
              gn_report_assertion_failure("ME_enc_s: Wrong Length!");
            }
          }
        }
      }
    }

LABEL_85:
    ++v41;
  }

  while (v41 != 178);
  LODWORD(v200) = 0;
  v68 = v198;
  if (v199[2036])
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    do
    {
      Constell_Prn = Get_Constell_Prn((*(v198 + 2 * v69) - 1));
      if (Constell_Prn == 5)
      {
        v75 = v70 + 1;
      }

      else
      {
        v75 = v70;
      }

      if (Constell_Prn == 4)
      {
        v76 = v71 + 1;
      }

      else
      {
        v76 = v71;
      }

      if (Constell_Prn == 4)
      {
        v75 = v70;
      }

      if (Constell_Prn == 3)
      {
        v77 = v72 + 1;
      }

      else
      {
        v77 = v72;
      }

      if (Constell_Prn == 1)
      {
        v78 = v73 + 1;
      }

      else
      {
        v78 = v73;
      }

      if (Constell_Prn == 1)
      {
        v77 = v72;
      }

      if (Constell_Prn > 3)
      {
        v71 = v76;
        v70 = v75;
      }

      else
      {
        v73 = v78;
        v72 = v77;
      }

      ++v69;
    }

    while (v69 < v199[2036]);
    LODWORD(v200) = Constell_Prn;
  }

  else
  {
    LOBYTE(v73) = 0;
    LOBYTE(v72) = 0;
    LOBYTE(v71) = 0;
    LOBYTE(v70) = 0;
  }

  v195 = a1;
  v192 = v71;
  if (v199[2037])
  {
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    do
    {
      v84 = Get_Constell_Prn((*(v197 + 4530 + 2 * v79) - 1));
      if (v84 == 5)
      {
        v85 = v80 + 1;
      }

      else
      {
        v85 = v80;
      }

      if (v84 == 4)
      {
        v86 = v81 + 1;
      }

      else
      {
        v86 = v81;
      }

      if (v84 == 4)
      {
        v85 = v80;
      }

      if (v84 == 3)
      {
        v87 = v82 + 1;
      }

      else
      {
        v87 = v82;
      }

      if (v84 == 1)
      {
        v88 = v83 + 1;
      }

      else
      {
        v88 = v83;
      }

      if (v84 == 1)
      {
        v87 = v82;
      }

      if (v84 > 3)
      {
        v81 = v86;
        v80 = v85;
      }

      else
      {
        v83 = v88;
        v82 = v87;
      }

      ++v79;
    }

    while (v79 < v199[2037]);
    v193 = v81;
    LODWORD(v200) = v84;
    LOBYTE(v71) = v192;
    v68 = v198;
  }

  else
  {
    LOBYTE(v83) = 0;
    LOBYTE(v82) = 0;
    v193 = 0;
    LOBYTE(v80) = 0;
  }

  v188 = v80;
  v189 = v70;
  if (v199[2039])
  {
    v196 = v72;
    v89 = 0;
    v71 = 0;
    v72 = 0;
    v90 = 0;
    v91 = 0;
    do
    {
      v92 = Get_Constell_Prn((*(v197 + 4886 + 2 * v89) - 1));
      if (v92 == 5)
      {
        v93 = v71 + 1;
      }

      else
      {
        v93 = v71;
      }

      if (v92 == 4)
      {
        v94 = v72 + 1;
      }

      else
      {
        v94 = v72;
      }

      if (v92 == 4)
      {
        v93 = v71;
      }

      if (v92 == 3)
      {
        v95 = v90 + 1;
      }

      else
      {
        v95 = v90;
      }

      if (v92 == 1)
      {
        v96 = v91 + 1;
      }

      else
      {
        v96 = v91;
      }

      if (v92 == 1)
      {
        v95 = v90;
      }

      if (v92 > 3)
      {
        v72 = v94;
        v71 = v93;
      }

      else
      {
        v91 = v96;
        v90 = v95;
      }

      ++v89;
    }

    while (v89 < v199[2039]);
    v185 = v72;
    v186 = v71;
    LODWORD(v200) = v92;
    v68 = v198;
    LOBYTE(v71) = v192;
    LOBYTE(v72) = v196;
  }

  else
  {
    LOBYTE(v91) = 0;
    LOBYTE(v90) = 0;
    v185 = 0;
    v186 = 0;
  }

  v210[0] = 1;
  v210[1] = v73;
  v97 = &v210[2];
  *__b = &v210[2];
  if (v199[2036])
  {
    v98 = 0;
    v97 = *__b;
    do
    {
      v99 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v98) - 1), &v200);
      if (v200 == 1)
      {
        *v97++ = v99 + 1;
      }

      ++v98;
    }

    while (v98 < v199[2036]);
    *__b = v97;
  }

  *v97 = v83;
  ++*__b;
  if (v199[2037])
  {
    v100 = 0;
    v101 = *__b;
    do
    {
      v102 = LongPrnIdx_To_ShortPrnIdx((*(v197 + 4530 + 2 * v100) - 1), &v200);
      if (v200 == 1)
      {
        *v101++ = v102 + 1;
      }

      ++v100;
    }

    while (v100 < v199[2037]);
    *__b = v101;
    v68 = v198;
  }

  if (!(v73 | v83))
  {
    **__b = 0;
    ++*__b;
    v103 = v194;
    v104 = v199;
    goto LABEL_178;
  }

  **__b = v91;
  ++*__b;
  v104 = v199;
  v103 = v194;
  v105 = v197;
  if (v199[2039])
  {
    v106 = 0;
    v107 = *__b;
    do
    {
      v108 = LongPrnIdx_To_ShortPrnIdx((*(v197 + 4886 + 2 * v106) - 1), &v200);
      if (v200 == 1)
      {
        *v107++ = v108 + 1;
      }

      ++v106;
    }

    while (v106 < v199[2039]);
    *__b = v107;
LABEL_178:
    v105 = v197;
  }

  STEU_Encode(v195, 118, v210, __b);
  if ((*__b - v210) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: G Too Long!");
  }

  v210[0] = 4;
  v210[1] = v104[2114];
  v109 = &v210[2];
  *__b = &v210[2];
  if (v210[1] >= 1)
  {
    v110 = 0;
    v109 = *__b;
    v111 = &v210[2];
    do
    {
      *v111 = *(v105 + 6196 + v110) + 8;
      ++v109;
      ++v110;
      v111 = v109;
    }

    while (v110 < v104[2114]);
    *__b = v109;
  }

  v112 = 0;
  *v109 = v104[2115];
  v113 = ++*__b;
  v114 = v105 + 6140;
  do
  {
    if (!*(v114 + 4 * v112))
    {
      *v113 = v112 + 1;
      v113 = ++*__b;
    }

    ++v112;
  }

  while (v112 != 14);
  if (v104[2114] || v104[2115])
  {
    v115 = 0;
    *v113 = v104[2116];
    v116 = ++*__b;
    do
    {
      if (*(v114 + 4 * v115) == 3)
      {
        *v116 = v115 + 1;
        v116 = ++*__b;
      }

      ++v115;
    }

    while (v115 != 14);
  }

  else
  {
    *v113 = 0;
    ++*__b;
  }

  STEU_Encode(v195, 118, v210, __b);
  if ((*__b - v210) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: R Too Long!");
  }

  v210[0] = 5;
  v210[1] = v72;
  v117 = &v210[2];
  *__b = &v210[2];
  if (v104[2036])
  {
    v118 = 0;
    v117 = *__b;
    do
    {
      v119 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v118) - 1), &v200);
      if (v200 == 3)
      {
        *v117++ = v119 + 65;
      }

      ++v118;
    }

    while (v118 < v104[2036]);
    *__b = v117;
  }

  *v117 = v82;
  ++*__b;
  if (v104[2037])
  {
    v120 = 0;
    v121 = v105 + 4530;
    v122 = *__b;
    do
    {
      v123 = LongPrnIdx_To_ShortPrnIdx((*(v121 + 2 * v120) - 1), &v200);
      if (v200 == 3)
      {
        *v122++ = v123 + 65;
      }

      ++v120;
    }

    while (v120 < v104[2037]);
    *__b = v122;
    v105 = v197;
  }

  if (v72 | v82)
  {
    **__b = v90;
    ++*__b;
    v124 = v195;
    v126 = v188;
    v125 = v189;
    if (v104[2039])
    {
      v127 = 0;
      v128 = *__b;
      do
      {
        v129 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4886 + 2 * v127) - 1), &v200);
        if (v200 == 3)
        {
          *v128++ = v129 + 65;
        }

        ++v127;
      }

      while (v127 < v104[2039]);
      *__b = v128;
      v124 = v195;
    }
  }

  else
  {
    **__b = 0;
    ++*__b;
    v124 = v195;
    v126 = v188;
    v125 = v189;
  }

  STEU_Encode(v124, 118, v210, __b);
  if ((*__b - v210) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: E Too Long!");
  }

  v210[0] = 6;
  v210[1] = v71;
  v130 = &v210[2];
  *__b = &v210[2];
  if (v104[2036])
  {
    v131 = 0;
    v130 = *__b;
    do
    {
      v132 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v131) - 1), &v200);
      if (v200 == 4)
      {
        *v130++ = v132 - 127;
      }

      ++v131;
    }

    while (v131 < v104[2036]);
    *__b = v130;
  }

  v133 = v193;
  *v130 = v193;
  ++*__b;
  if (v104[2037])
  {
    v134 = 0;
    v135 = *__b;
    do
    {
      v136 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4530 + 2 * v134) - 1), &v200);
      if (v200 == 4)
      {
        *v135++ = v136 - 127;
      }

      ++v134;
    }

    while (v134 < v104[2037]);
    *__b = v135;
    v124 = v195;
    v133 = v193;
  }

  if (!(v71 | v133))
  {
    **__b = 0;
    ++*__b;
    goto LABEL_239;
  }

  **__b = v185;
  ++*__b;
  v137 = &v210[2];
  if (v104[2039])
  {
    v138 = 0;
    v139 = *__b;
    do
    {
      v140 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4886 + 2 * v138) - 1), &v200);
      if (v200 == 4)
      {
        *v139++ = v140 - 127;
      }

      ++v138;
    }

    while (v138 < v104[2039]);
    *__b = v139;
LABEL_239:
    v137 = &v210[2];
  }

  STEU_Encode(v124, 118, v210, __b);
  if ((*__b - v210) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: B Too Long!");
  }

  v210[0] = 3;
  v210[1] = v125;
  *__b = &v210[2];
  if (v104[2036])
  {
    v141 = 0;
    v137 = *__b;
    do
    {
      v142 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v141) - 1), &v200);
      if (v200 == 5)
      {
        *v137++ = v142 - 63;
      }

      ++v141;
    }

    while (v141 < v104[2036]);
    *__b = v137;
  }

  *v137 = v126;
  ++*__b;
  if (v104[2037])
  {
    v143 = 0;
    v144 = *__b;
    do
    {
      v145 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4530 + 2 * v143) - 1), &v200);
      if (v200 == 5)
      {
        *v144++ = v145 - 63;
      }

      ++v143;
    }

    while (v143 < v104[2037]);
    *__b = v144;
  }

  if (v125 | v126)
  {
    **__b = v186;
    ++*__b;
    if (v104[2039])
    {
      v146 = 0;
      v147 = *__b;
      do
      {
        v148 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4886 + 2 * v146) - 1), &v200);
        if (v200 == 5)
        {
          *v147++ = v148 - 63;
        }

        ++v146;
      }

      while (v146 < v104[2039]);
      *__b = v147;
    }
  }

  else
  {
    **__b = 0;
    ++*__b;
  }

  STEU_Encode(v124, 118, v210, __b);
  if ((*__b - v210) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: Q Too Long!");
  }

  LODWORD(v200) = 0;
  v201 = 0;
  v210[0] = v104[2036];
  v149 = v210[0];
  v150 = &v210[1];
  *__b = &v210[1];
  if (v210[0])
  {
    v151 = 0;
    v152 = 0;
    while (1)
    {
      v153 = *(v198 + 2 * v151);
      if (v153 >= 1)
      {
        break;
      }

LABEL_281:
      if (++v151 >= v149)
      {
        *__b = v150;
        v103 = v194;
        v105 = v197;
        goto LABEL_283;
      }
    }

    v154 = LongPrnIdx_To_ShortPrnIdx((v153 - 1), &v200);
    if (v200 == 2)
    {
      if (v152 > 0xD)
      {
        v155 = 0;
        v201 = 0;
      }

      else
      {
        v155 = *(v105 + 6196 + v152) + 8;
        v201 = 4;
        ++v152;
LABEL_275:
        if (v155 >= 0x100)
        {
          EvLog_d("ME_enc_o: STE SV ID out of range", v155);
          v155 = 0;
        }
      }

      v157 = v201;
      if (!v155 && !v201)
      {
        EvLog("ME_enc_o: Illegal [0,0] STE Constel & SV ID");
        v157 = v201;
      }

      *v150 = v155;
      v150[1] = v157;
      v150 += 2;
      v149 = v199[2036];
      goto LABEL_281;
    }

    if (v200 > 6)
    {
      v156 = 0;
    }

    else
    {
      v156 = Prn_Offset[v200];
    }

    v155 = Encode_SVid_STE(v200, (v156 + v154), &v201);
    goto LABEL_275;
  }

LABEL_283:
  STEU_Encode(v124, 111, v210, __b);
  if ((*__b - v210) >= 130)
  {
    gn_report_assertion_failure("ME_enc_o: Too long!");
  }

  if (*(a5 + 364))
  {
    goto LABEL_289;
  }

  v158 = 0;
  v159 = a5 + 365;
  v160 = 0uLL;
  v161.i64[0] = 0x100000001;
  v161.i64[1] = 0x100000001;
  v162 = 0uLL;
  v163 = 0uLL;
  v164 = 0uLL;
  do
  {
    v165 = vtstq_s8(*(v159 + v158), *(v159 + v158));
    v166 = vmovl_u8(*v165.i8);
    v167 = vmovl_high_u8(v165);
    v164 = vaddq_s32(v164, vandq_s8(vmovl_high_u16(v167), v161));
    v163 = vaddq_s32(v163, vandq_s8(vmovl_u16(*v167.i8), v161));
    v162 = vaddq_s32(v162, vandq_s8(vmovl_high_u16(v166), v161));
    v160 = vaddq_s32(v160, vandq_s8(vmovl_u16(*v166.i8), v161));
    v158 += 16;
  }

  while (v158 != 48);
  v168 = vaddvq_s32(vaddq_s32(vaddq_s32(v160, v163), vaddq_s32(v162, v164)));
  if (v168 == 48)
  {
LABEL_289:
    v210[0] = -1;
    *__b = &v210[1];
    goto LABEL_290;
  }

  if ((v168 - 1) <= 0x2E)
  {
    v169 = 0;
    v210[0] = v168;
    v170 = &v210[1];
    do
    {
      if (*(v159 + v169))
      {
        *v170 = v169;
        v170[1] = *(v159 + v169);
        v170 += 2;
      }

      ++v169;
    }

    while (v169 != 48);
    *__b = v170;
    if (v170 > v210)
    {
LABEL_290:
      STEU_Encode(v124, 105, v210, __b);
      if ((*__b - v210) >= 100)
      {
        gn_report_assertion_failure("ME_enc_i: Too long!");
      }
    }
  }

  if ((*(v103 + 20) & 1) == 0)
  {
    v171 = *(v103 + 16);
    *&v210[8] = 0;
    *&v210[1] = 0;
    if (v171 >= 3)
    {
      EvLog_d("ME_Send_PowUsage: Out of range: ", v171);
      LOBYTE(v171) = 1;
    }

    v210[0] = v171;
    STEU_Encode_c(v124, 80, 12, v210);
  }

  if (v191)
  {
    *&v210[10] = 0;
    *&v210[6] = 0;
    v210[0] = HIBYTE(v191);
    v210[1] = BYTE2(v191);
    v210[2] = BYTE1(v191);
    v210[3] = v191;
    v210[4] = HIBYTE(v187);
    v210[5] = v187;
    STEU_Encode_c(v124, 79, 12, v210);
  }

  v210[11] = 0;
  *&v210[3] = 0;
  v210[0] = *(v103 + 12);
  v172 = *(v103 + 4);
  v210[1] = v172;
  if (v172 == 2)
  {
    if (*(v105 + 52) < 3u || !*v103)
    {
      v210[1] = 0;
      v173 = (v105 + 72);
      v174 = 82;
      v175 = 82;
      while (1)
      {
        if (*v173 != 1 || *(v173 - 8) != 1 || (*(v173 - 1) ? (v176 = *(v173 - 1) == 6) : (v176 = 1), v176))
        {
          if (--v175 < 6)
          {
            break;
          }
        }

        v173 += 48;
        if (!--v174)
        {
          LOBYTE(v172) = 0;
          goto LABEL_319;
        }
      }
    }

    LOBYTE(v172) = 1;
    v210[1] = 1;
  }

LABEL_319:
  *(v103 + 8) = v172;
  v210[2] = *(v103 + 68);
  v177 = *(v103 + 31);
  if (v177 == 1)
  {
    v210[3] = 1;
  }

  else
  {
    LOBYTE(v177) = 0;
  }

  if (*(v103 + 34) == 1)
  {
    LOBYTE(v177) = v177 | 2;
    v210[3] = v177;
  }

  if (*(v103 + 33) == 1)
  {
    LOBYTE(v177) = v177 | 4;
    v210[3] = v177;
  }

  if (*(v103 + 32) == 1)
  {
    LOBYTE(v177) = v177 | 8;
    v210[3] = v177;
  }

  if (*(v103 + 36) == 1)
  {
    LOBYTE(v177) = v177 | 0x10;
    v210[3] = v177;
  }

  if (*(v103 + 35) == 1)
  {
    v210[3] = v177 | 0x20;
  }

  v178 = *(v103 + 37);
  if (v178 == 1)
  {
    v210[4] = 1;
  }

  else
  {
    LOBYTE(v178) = 0;
  }

  if (*(v103 + 40) == 1)
  {
    LOBYTE(v178) = v178 | 2;
    v210[4] = v178;
  }

  if (*(v103 + 39) == 1)
  {
    LOBYTE(v178) = v178 | 4;
    v210[4] = v178;
  }

  if (*(v103 + 38) == 1)
  {
    LOBYTE(v178) = v178 | 8;
    v210[4] = v178;
  }

  if (*(v103 + 42) == 1)
  {
    LOBYTE(v178) = v178 | 0x10;
    v210[4] = v178;
  }

  if (*(v103 + 41) == 1)
  {
    v210[4] = v178 | 0x20;
  }

  v179 = *(v103 + 24);
  if (v179 > 1)
  {
    if (v179 == 2)
    {
      v210[5] = 1;
    }

    else
    {
      if (v179 != 3)
      {
        goto LABEL_350;
      }

LABEL_347:
      v210[5] = 0;
    }
  }

  else
  {
    if (v179 <= 1)
    {
      goto LABEL_347;
    }

LABEL_350:
    v210[5] = 0;
    EvCrt_Illegal_Default("G5K_ME_enc_cC", 0x778u);
  }

  v210[6] = *(v103 + 28);
  v210[7] = *(v103 + 72);
  v210[8] = 1;
  STEU_Encode_c(v124, 67, 12, v210);
  *&v210[3] = 0;
  v210[11] = 0;
  *v210 = -1;
  v210[2] = -1;
  STEU_Encode_c(v124, 65, 12, v210);
  *&v210[8] = 0;
  *&v210[1] = 0;
  v210[0] = *(v103 + 29);
  STEU_Encode_c(v124, 68, 12, v210);
  if (*(v103 + 1384) == 1)
  {
    *&v210[4] = 0;
    v180 = *(v103 + 1352);
    v181 = *(v103 + 1368);
    v182 = vmovn_s32(vuzp1q_s32(vcgtzq_f64(v180), vcgtzq_f64(v181)));
    *&v180.f64[0] = vorn_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcvtq_n_s64_f64(v180, 2uLL), vcvtq_n_s64_f64(v181, 2uLL))), v182), v182);
    *v210 = vuzp1_s8(*&v180.f64[0], *&v180.f64[0]).u32[0];
    STEU_Encode_c(v124, 90, 12, v210);
  }

  *&v210[8] = 0;
  *&v210[1] = 0;
  v210[0] = *(v103 + 30);
  STEU_Encode_c(v124, 69, 12, v210);
  v183 = (*v124)++;
  *v183 = 10;
  if (*v124 >= v124[3])
  {
    *v124 = v124[2];
  }

  GNSS_Write_GNB_Ctrl(v124);
  v184 = *MEMORY[0x29EDCA608];
}

char **G5K_ME_enc_n(char **a1, int a2, __int16 a3)
{
  *&v8[142] = *MEMORY[0x29EDCA608];
  v6 = a2;
  v7 = a3;
  v5 = v8;
  result = STEU_Encode(a1, 110, &v6, &v5);
  if (v5 - &v6 != 6)
  {
    result = gn_report_assertion_failure("ME_enc_n: Wrong Length!");
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncS02_09UpdatedPosAval(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncS02_09UpdatedPosAval");
      LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
    }

    GncS04_72SendUpdates();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_09UpdatedPosAval", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS02_21FGSchedTimExp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_FG_SCHED_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_21FGSchedTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncS04_73FGPosTimerExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_21FGSchedTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS02_22SessStopAckTimExp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESS_STOP_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_22SessStopAckTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncS04_33SessStopAckTimrExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_22SessStopAckTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS02_23SessStartAckTimExp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESS_START_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_23SessStartAckTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncS04_36SessStartAckTimrExp();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncS02_23SessStartAckTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t xofScvs_Init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  g_XofBceParseState = 0;
  g_XofEeParseState = 0;
  g_RtiParseState = 0;
  g_Header = 0u;
  unk_2A1926828 = 0u;
  xmmword_2A1926838 = 0u;
  unk_2A1926848 = 0u;
  xmmword_2A1926858 = 0u;
  unk_2A1926868 = 0u;
  xmmword_2A1926878 = 0u;
  *&dword_2A1926888 = 0u;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *&dword_2A1920D40 = 0u;
  xmmword_2A1920D50 = 0u;
  *&qword_2A1920D60 = 0u;
  xmmword_2A1920D70 = 0u;
  *&qword_2A1920D80 = 0u;
  xmmword_2A1920D90 = 0u;
  *&qword_2A1920DA0 = 0u;
  xmmword_2A1920DB0 = 0u;
  *&qword_2A1920DC0 = 0u;
  xmmword_2A1920DD0 = 0u;
  unk_2A1920DE0 = 0u;
  xmmword_2A1920DF0 = 0u;
  unk_2A1920E00 = 0u;
  xmmword_2A1920E10 = 0u;
  *&qword_2A1920E20 = 0u;
  xmmword_2A1920E30 = 0u;
  xmmword_2A1920CC8 = 0u;
  unk_2A1920CD8 = 0u;
  xmmword_2A1920CA8 = 0u;
  unk_2A1920CB8 = 0u;
  xmmword_2A1920C88 = 0u;
  unk_2A1920C98 = 0u;
  xmmword_2A1920C68 = 0u;
  unk_2A1920C78 = 0u;
  g_RtiRawData = 0u;
  unk_2A1920C58 = 0u;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GCP ORB MjrVer,%u,MinVer,%u RTI MjrVer,%u,MinVer,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "xofScvs_Init", 0, 2, 5, 1, 3);
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t xofSvcs_Deinit(void)
{
  v2 = *MEMORY[0x29EDCA608];
  g_XofBceParseState = 0;
  g_XofEeParseState = 0;
  g_RtiParseState = 0;
  if (qword_2A1920D60)
  {
    free(qword_2A1920D60);
  }

  qword_2A1920D60 = 0;
  if (qword_2A1920D68)
  {
    free(qword_2A1920D68);
  }

  qword_2A1920D68 = 0;
  if (xmmword_2A1920D70)
  {
    free(xmmword_2A1920D70);
  }

  *&xmmword_2A1920D70 = 0;
  if (*(&xmmword_2A1920D70 + 1))
  {
    free(*(&xmmword_2A1920D70 + 1));
  }

  *(&xmmword_2A1920D70 + 1) = 0;
  if (qword_2A1920D80)
  {
    free(qword_2A1920D80);
  }

  qword_2A1920D80 = 0;
  if (qword_2A1920D88)
  {
    free(qword_2A1920D88);
  }

  qword_2A1920D88 = 0;
  if (xmmword_2A1920D90)
  {
    free(xmmword_2A1920D90);
  }

  *&xmmword_2A1920D90 = 0;
  if (*(&xmmword_2A1920D90 + 1))
  {
    free(*(&xmmword_2A1920D90 + 1));
  }

  *(&xmmword_2A1920D90 + 1) = 0;
  if (qword_2A1920DA0)
  {
    free(qword_2A1920DA0);
  }

  qword_2A1920DA0 = 0;
  if (qword_2A1920DA8)
  {
    free(qword_2A1920DA8);
  }

  qword_2A1920DA8 = 0;
  if (xmmword_2A1920DB0)
  {
    free(xmmword_2A1920DB0);
  }

  *&xmmword_2A1920DB0 = 0;
  if (*(&xmmword_2A1920DB0 + 1))
  {
    free(*(&xmmword_2A1920DB0 + 1));
  }

  *(&xmmword_2A1920DB0 + 1) = 0;
  if (qword_2A1920DC0)
  {
    free(qword_2A1920DC0);
  }

  qword_2A1920DC0 = 0;
  if (qword_2A1920DC8)
  {
    free(qword_2A1920DC8);
  }

  qword_2A1920DC8 = 0;
  if (xmmword_2A1920DD0)
  {
    free(xmmword_2A1920DD0);
  }

  *&xmmword_2A1920DD0 = 0;
  if (*(&xmmword_2A1920DD0 + 1))
  {
    free(*(&xmmword_2A1920DD0 + 1));
  }

  xmmword_2A1926878 = 0u;
  *&dword_2A1926888 = 0u;
  xmmword_2A1926858 = 0u;
  unk_2A1926868 = 0u;
  xmmword_2A1926838 = 0u;
  unk_2A1926848 = 0u;
  g_Header = 0u;
  unk_2A1926828 = 0u;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *&dword_2A1920D40 = 0u;
  xmmword_2A1920D50 = 0u;
  *&qword_2A1920D60 = 0u;
  xmmword_2A1920D70 = 0u;
  *&qword_2A1920D80 = 0u;
  xmmword_2A1920D90 = 0u;
  *&qword_2A1920DA0 = 0u;
  xmmword_2A1920DB0 = 0u;
  *&qword_2A1920DC0 = 0u;
  xmmword_2A1920DD0 = 0u;
  unk_2A1920DE0 = 0u;
  xmmword_2A1920DF0 = 0u;
  unk_2A1920E00 = 0u;
  xmmword_2A1920E10 = 0u;
  *&qword_2A1920E20 = 0u;
  xmmword_2A1920E30 = 0u;
  xmmword_2A1920CC8 = 0u;
  unk_2A1920CD8 = 0u;
  xmmword_2A1920CA8 = 0u;
  unk_2A1920CB8 = 0u;
  xmmword_2A1920C88 = 0u;
  unk_2A1920C98 = 0u;
  xmmword_2A1920C68 = 0u;
  unk_2A1920C78 = 0u;
  g_RtiRawData = 0u;
  unk_2A1920C58 = 0u;
  v0 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t xofScvs_InjectOrbitData(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofScvs_InjectOrbitData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 427673) < 0xFFF979E7 || !a1 || !a3)
  {
    v9 = 8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofScvs_InjectOrbitData", 515, a2);
    v9 = 8;
LABEL_17:
    v15 = v13;
    v16 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
    goto LABEL_22;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = xofSvcs00_19ParseHeader(a1, a2);
  if (v8 != 1)
  {
    v9 = v8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Header parse failed XOF cache not updated,RetVal,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 69, "xofScvs_InjectOrbitData", 770, v9);
    goto LABEL_17;
  }

  memcpy_s("xofScvs_InjectOrbitData", 136, &g_Header, 0x80u, a1, 0x80uLL);
  v24 = 0;
  v9 = xofSvcs00_20ParsePayLoad(a1, a2, 0x80u, &v24);
  if (v9 == 1 && v24 == dword_2A1926888)
  {
    g_XofEeParseState = 1;
    g_XofBceParseState = 1;
    *a3 = 1;
    v10 = HIDWORD(g_Header) + 604800 * WORD5(g_Header);
    *(a3 + 8) = v10;
    if (byte_2A192682C | byte_2A192682A)
    {
      v11 = byte_2A192682D * byte_2A192682C;
      if (v11 <= 4)
      {
        LODWORD(v11) = 4;
      }

      *(a3 + 16) = v10 + 3600 * v11;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx \n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 69, "xofScvs_InjectOrbitData", 770);
      LbsOsaTrace_WriteLog(8u, __str, v22, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 68, "xofScvs_InjectOrbitData");
      v16 = 5;
      goto LABEL_18;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Payload parse failed,RetVal,%u,ProcessedPayloadBytes,%u,Header.PayloadLen,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofScvs_InjectOrbitData", 770, v9, v24, dword_2A1926888);
      LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
    }

    g_XofEeParseState = 2;
    g_XofBceParseState = 2;
  }

LABEL_22:
  v19 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofScvs_InjectRtiData(signed __int8 *a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofScvs_InjectRtiData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if (a2 != 160 || !a1 || !a3)
  {
    v9 = 8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "xofScvs_InjectRtiData", 515, a2);
    v9 = 8;
LABEL_13:
    v11 = v14;
    v12 = 0;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = xofSvcs00_10ParseRtiData(a1, 160);
  if (v8 != 1)
  {
    v9 = v8;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Parse failed,Rti cache not updated,RetVal,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "xofScvs_InjectRtiData", 770, v9);
    goto LABEL_13;
  }

  memcpy_s("xofScvs_InjectRtiData", 216, &g_RtiRawData, 0xA0u, a1, 0xA0uLL);
  v9 = 1;
  g_RtiParseState = 1;
  *a3 = 1;
  *(a3 + 8) = DWORD1(g_RtiRawData) + 604800 * WORD1(g_RtiRawData);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v9 = 1;
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "xofScvs_InjectRtiData");
    v12 = 5;
LABEL_14:
    LbsOsaTrace_WriteLog(8u, __str, v11, v12, 1);
  }

LABEL_15:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs_GetIonoModel(void *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetIonoModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      memcpy_s("xofSvcs_GetIonoModel", 249, a1, 8u, &g_PayLoad, 8uLL);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        v5 = 1;
        goto LABEL_16;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetIonoModel");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetIonoModel", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    if (g_XofBceParseState)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IonoModel\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "xofSvcs_GetIonoModel", 513);
      v7 = 0;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t xofSvcs_GetGpsUTCModel(void *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGpsUTCModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      memcpy_s("xofSvcs_GetGpsUTCModel", 274, a1, 0x14u, &g_PayLoad + 8, 0x14uLL);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        v5 = 1;
        goto LABEL_16;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetGpsUTCModel");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetGpsUTCModel", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    if (g_XofBceParseState)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsUtcModel\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "xofSvcs_GetGpsUTCModel", 513);
      v7 = 0;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t xofSvcs_GetGloChanMap(int a1, unsigned __int8 *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetGloChanMap");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if ((a1 - 25) >= 0xFFFFFFE8 && a2)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192686B && !byte_2A1926869 && !byte_2A192686A)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
LABEL_11:
          v8 = 6;
          goto LABEL_24;
        }

LABEL_10:
        bzero(__str, 0x410uLL);
        v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v6, "GNC", 68, "xofSvcs_GetGloChanMap");
        LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
        goto LABEL_11;
      }

      memcpy_s("xofSvcs_GetGloChanMap", 309, a2, 2u, &g_PayLoad + 2 * (a1 - 1) + 240, 2uLL);
      if (*a2 == a1)
      {
        v19 = a2[1];
        if (v19 == 99)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,ChanNum not known,%d\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "xofSvcs_GetGloChanMap", 0, *a2, a2[1]);
            LbsOsaTrace_WriteLog(8u, __str, v21, 4, 1);
          }

          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if ((v19 - 7) > 0xF1)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            v8 = 1;
            goto LABEL_24;
          }

          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 68, "xofSvcs_GetGloChanMap");
          v8 = 1;
          goto LABEL_16;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_34;
        }

        bzero(__str, 0x410uLL);
        v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v26 = *a2;
        v28 = a2[1];
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,ChanNum,%d\n", v24);
      }

      else
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_34;
        }

        bzero(__str, 0x410uLL);
        v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v27 = *a2;
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqSvId,%u,XofSvId,%u\n", v22);
      }

      LbsOsaTrace_WriteLog(8u, __str, v23, 2, 1);
LABEL_34:
      v8 = 8;
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGloChanMap", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGloChanMap");
      LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
    }

    if (g_XofBceParseState)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloChanMap,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGloChanMap", 515, a1);
      LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
    }

    v8 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
LABEL_15:
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "GNC", 68, "xofSvcs_GetGloChanMap");
LABEL_16:
      LbsOsaTrace_WriteLog(8u, __str, v12, 5, 1);
    }
  }

LABEL_24:
  v17 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t xofSvcs_GetTimeModel(int a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetTimeModel");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if (a2)
  {
    if (g_XofBceParseState == 1)
    {
      if (a1 <= 3)
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
            if (!byte_2A1926849 && !byte_2A192684A && !byte_2A192684B)
            {
              goto LABEL_54;
            }

            if (!dword_2A1920D20 && !dword_2A1920D24 && !byte_2A1920D28)
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Qzss,TA0,0,TA1,0,TA2,0\n");
                goto LABEL_53;
              }

LABEL_54:
              v7 = 6;
              goto LABEL_55;
            }

            v16 = &xmmword_2A1920D10 + 12;
            v17 = 404;
            goto LABEL_63;
          }

          goto LABEL_56;
        }

        if (!BYTE1(xmmword_2A1926838) && __PAIR16__(BYTE2(xmmword_2A1926838), 0) == BYTE3(xmmword_2A1926838))
        {
          goto LABEL_54;
        }

        if (!xmmword_2A1920D10 && !BYTE8(xmmword_2A1920D10))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sbas,TA0,0,TA1,0,TA2,0\n");
            goto LABEL_53;
          }

          goto LABEL_54;
        }

        v16 = &unk_2A1920D0C;
        v17 = 381;
      }

      else
      {
        switch(a1)
        {
          case 4:
            if (!BYTE1(xmmword_2A1926858) && __PAIR16__(BYTE2(xmmword_2A1926858), 0) == BYTE3(xmmword_2A1926858))
            {
              goto LABEL_54;
            }

            if (!xmmword_2A1920D30 && !BYTE8(xmmword_2A1920D30))
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gal,TA0,0,TA1,0,TA2,0\n");
                goto LABEL_53;
              }

              goto LABEL_54;
            }

            v16 = &unk_2A1920D2C;
            v17 = 427;
            break;
          case 5:
            if (!byte_2A1926869 && !byte_2A192686A && !byte_2A192686B)
            {
              goto LABEL_54;
            }

            if (!dword_2A1920D40 && !dword_2A1920D44 && !byte_2A1920D48)
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Glo,TA0,0,TA1,0,TA2,0\n");
                goto LABEL_53;
              }

              goto LABEL_54;
            }

            v16 = &xmmword_2A1920D30 + 12;
            v17 = 450;
            break;
          case 6:
            if (!BYTE1(xmmword_2A1926878) && __PAIR16__(BYTE2(xmmword_2A1926878), 0) == BYTE3(xmmword_2A1926878))
            {
              goto LABEL_54;
            }

            if (!xmmword_2A1920D50 && !BYTE8(xmmword_2A1920D50))
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Bds,TA0,0,TA1,0,TA2,0\n");
LABEL_53:
                LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
                goto LABEL_54;
              }

              goto LABEL_54;
            }

            v16 = &unk_2A1920D4C;
            v17 = 473;
            break;
          default:
LABEL_56:
            v7 = 8;
            if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              goto LABEL_55;
            }

            bzero(__str, 0x410uLL);
            v15 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "xofSvcs_GetTimeModel", 515, a1);
            v10 = 2;
            goto LABEL_17;
        }
      }

LABEL_63:
      memcpy_s("xofSvcs_GetTimeModel", v17, a2, 0x10u, v16, 0x10uLL);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        v7 = 1;
        goto LABEL_55;
      }

      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v7 = 1;
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 68, "xofSvcs_GetTimeModel");
      v10 = 5;
      goto LABEL_17;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "xofSvcs_GetTimeModel", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    if (g_XofBceParseState)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  else
  {
    v7 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "xofSvcs_GetTimeModel", 515, a1);
      v10 = 0;
LABEL_17:
      LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
    }
  }

LABEL_55:
  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t xofSvcs_GetGpsSvOrbData(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetGpsSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 33) >= 0xE0u && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (*(&xmmword_2A1920DB0 + 1) && xofSvcs01_02GetExtEphSvIndex(1, a2, a1, &v21) == 1)
      {
        memcpy_s("xofSvcs_GetGpsSvOrbData", 645, a3, 0x40u, (*(&xmmword_2A1920DB0 + 1) + (v21 << 6)), 0x40uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            v9 = 1;
            goto LABEL_23;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetGpsSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req Svid,%u,Resp Svid,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "xofSvcs_GetGpsSvOrbData", 770, a2, *a3);
          v17 = 0;
          goto LABEL_21;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekN,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGpsSvOrbData", 769, a2, a1, HIDWORD(a1));
        v17 = 5;
LABEL_21:
        LbsOsaTrace_WriteLog(8u, __str, v16, v17, 1);
      }

      v9 = 0;
      goto LABEL_23;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGpsSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetGpsSvOrbData", 515, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs01_02GetExtEphSvIndex(int a1, int a2, uint64_t a3, unsigned int *a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0;
  if (!xofSvcs00_23GetEeNumSats(a1) || (xofSvcs00_02SvIncluded(a1, a2) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u,SvId,%u\n", v12, "GNC", 68, "xofSvcs01_02GetExtEphSvIndex", 769, a1, a2);
LABEL_22:
      v22 = v13;
      v23 = 5;
LABEL_23:
      LbsOsaTrace_WriteLog(8u, __str, v22, v23, 1);
    }

LABEL_24:
    result = 6;
    goto LABEL_25;
  }

  if (!xofSvcs00_23GetEeNumSats(a1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", v34);
    goto LABEL_11;
  }

  v8 = HIDWORD(g_Header) + 604800 * WORD5(g_Header);
  v9 = HIDWORD(a3) + 604800 * a3;
  if (v9 < v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartTime,%llu,ReqTime,%llu,ConstellType,%u\n", v10, "GNC", 87);
LABEL_16:
    v15 = v11;
    v16 = 2;
    goto LABEL_19;
  }

  BlckLen = xofSvcs00_24GetBlckLen(a1);
  if (!BlckLen)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "xofSvcs01_01GetExtEphBlockNum", 515, a1);
    v16 = 0;
    goto LABEL_19;
  }

  v18 = (v9 - v8) / (3600 * BlckLen);
  if (v18 >= 0x2B)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqTime,%llu,ConstellType,%u,BlockNum,%llu\n", v19, "GNC", 87);
    goto LABEL_16;
  }

  if (v18 >= xofSvcs00_25GetEeNumBlks(a1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
LABEL_20:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u,SvId,%u\n", v21, "GNC", 68, "xofSvcs01_02GetExtEphSvIndex", 769, a1, a2);
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqTime,%llu,ConstellType,%u,BlockNum,%llu\n", v29, "GNC", 68);
LABEL_11:
    v15 = v14;
    v16 = 5;
LABEL_19:
    LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
    goto LABEL_20;
  }

  if (!XofSvcs00_03GetSvIndexCrr(a1, a2, &v35))
  {
    goto LABEL_20;
  }

  StartSv = xofSvcs02_04GetStartSv(a1);
  if (StartSv)
  {
    v27 = a2 - StartSv - v35 + xofSvcs00_23GetEeNumSats(a1) * v18;
    *a4 = v27;
    EeNumSats = xofSvcs00_23GetEeNumSats(a1);
    if (v27 < xofSvcs00_25GetEeNumBlks(a1) * EeNumSats)
    {
      result = 1;
      goto LABEL_25;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvIndex,%u\n", (*&g_MacClockTicksToMsRelation * v33), "GNC", 69, "xofSvcs01_02GetExtEphSvIndex", 772, *a4);
    v23 = 0;
    goto LABEL_23;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 69, "xofSvcs01_02GetExtEphSvIndex", 515, a1);
    LbsOsaTrace_WriteLog(8u, __str, v32, 0, 1);
    result = 0;
  }

LABEL_25:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs_GetGloSvOrbData(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetGloSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 25) >= 0xE8u && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (xmmword_2A1920DD0 && xofSvcs01_02GetExtEphSvIndex(5, a2, a1, &v21) == 1)
      {
        memcpy_s("xofSvcs_GetGloSvOrbData", 687, a3, 0x40u, (xmmword_2A1920DD0 + (v21 << 6)), 0x40uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            v9 = 1;
            goto LABEL_23;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetGloSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp Svid,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "xofSvcs_GetGloSvOrbData", 770, a2, *a3);
          v17 = 0;
          goto LABEL_21;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekN,%u,Tow%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGloSvOrbData", 769, a2, a1, HIDWORD(a1));
        v17 = 5;
LABEL_21:
        LbsOsaTrace_WriteLog(8u, __str, v16, v17, 1);
      }

      v9 = 0;
      goto LABEL_23;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGloSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetGloSvOrbData", 515, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs_GetQzssSvOrbData(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetQzssSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 + 53) >= 0xF6u && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (qword_2A1920DC0 && xofSvcs01_02GetExtEphSvIndex(3, a2, a1, &v21) == 1)
      {
        memcpy_s("xofSvcs_GetQzssSvOrbData", 729, a3, 0x40u, (qword_2A1920DC0 + (v21 << 6)), 0x40uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            v9 = 1;
            goto LABEL_25;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetQzssSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp SvId,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofSvcs_GetQzssSvOrbData", 770, a2, *a3);
          LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
        }

        memset_s(a3, 0x40uLL, 0, 0x40uLL);
      }

      else
      {
        v9 = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          goto LABEL_25;
        }

        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekNo,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetQzssSvOrbData", 769, a2, a1, HIDWORD(a1));
        LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
      }

      v9 = 0;
      goto LABEL_25;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetQzssSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QzssExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetQzssSvOrbData", 513, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

LABEL_25:
  v19 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs_GetGalSvOrbData(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetGalSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 37) >= 0xDCu && a3)
  {
    if (g_XofEeParseState == 1)
    {
      v21 = 0;
      if (qword_2A1920DC8 && xofSvcs01_02GetExtEphSvIndex(4, a2, a1, &v21) == 1)
      {
        memcpy_s("xofSvcs_GetGalSvOrbData", 773, a3, 0x44u, (qword_2A1920DC8 + 68 * v21), 0x44uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            v9 = 1;
            goto LABEL_25;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetGalSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp SvId,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofSvcs_GetGalSvOrbData", 770, a2, *a3);
          LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
        }

        memset_s(a3, 0x44uLL, 0, 0x44uLL);
      }

      else
      {
        v9 = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          goto LABEL_25;
        }

        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekNo,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetGalSvOrbData", 769, a2, a1, HIDWORD(a1));
        LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
      }

      v9 = 0;
      goto LABEL_25;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetGalSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GalExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetGalSvOrbData", 513, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

LABEL_25:
  v19 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs_GetBdsSvOrbData(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "xofSvcs_GetBdsSvOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
  }

  if ((a2 - 38) >= 0xDBu && a3)
  {
    if (g_XofEeParseState == 1)
    {
      if (*(&xmmword_2A1920DD0 + 1) && xofSvcs01_02GetExtEphSvIndex(6, a2, a1, &v21) == 1)
      {
        memcpy_s("xofSvcs_GetBdsSvOrbData", 817, a3, 0x54u, (*(&xmmword_2A1920DD0 + 1) + 84 * v21), 0x54uLL);
        if (*a3 == a2)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            v9 = 1;
            goto LABEL_25;
          }

          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = 1;
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "xofSvcs_GetBdsSvOrbData");
          v11 = 5;
          goto LABEL_13;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Req SvId,%u,Resp SvId,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "xofSvcs_GetBdsSvOrbData", 770, a2, *a3);
          LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
        }

        memset_s(a3, 0x54uLL, 0, 0x54uLL);
      }

      else
      {
        v9 = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          goto LABEL_25;
        }

        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvId,%u,WeekNo,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "xofSvcs_GetBdsSvOrbData", 769, a2, a1, HIDWORD(a1));
        LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
      }

      v9 = 0;
      goto LABEL_25;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetBdsSvOrbData", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (g_XofEeParseState)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BdsExtEphData,SvId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs_GetBdsSvOrbData", 513, a2);
      v11 = 0;
LABEL_13:
      LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
    }
  }

LABEL_25:
  v19 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs_GetRtiData(int a1, int *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetRtiData");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if (a2)
  {
    if (g_RtiParseState)
    {
      *a2 = a1;
      if (a1 > 3)
      {
        switch(a1)
        {
          case 4:
            v6 = &unk_2A1920C98;
            v7 = a2 + 1;
            v8 = 875;
            goto LABEL_27;
          case 5:
            v6 = (&xmmword_2A1920CA8 + 8);
            v7 = a2 + 1;
            v8 = 870;
            goto LABEL_27;
          case 6:
            v6 = &xmmword_2A1920CC8;
            v7 = a2 + 1;
            v8 = 881;
            goto LABEL_27;
        }
      }

      else
      {
        switch(a1)
        {
          case 1:
            v6 = (&g_RtiRawData + 8);
            v7 = a2 + 1;
            v8 = 855;
            goto LABEL_27;
          case 2:
            v6 = &xmmword_2A1920C68;
            v7 = a2 + 1;
            v8 = 860;
            goto LABEL_27;
          case 3:
            v6 = &unk_2A1920C80;
            v7 = a2 + 1;
            v8 = 865;
LABEL_27:
            memcpy_s("xofSvcs_GetRtiData", v8, v7, 0x18u, v6, 0x18uLL);
            if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
            {
              v9 = 1;
              goto LABEL_31;
            }

            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v9 = 1;
            v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "xofSvcs_GetRtiData");
            v12 = 5;
            goto LABEL_29;
        }
      }

      v9 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "xofSvcs_GetRtiData", 514, a1);
        LbsOsaTrace_WriteLog(8u, __str, v16, 0, 1);
        v9 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiParseState,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "xofSvcs_GetRtiData", 769, g_RtiParseState);
        LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
      }

      if (g_RtiParseState)
      {
        v9 = 5;
      }

      else
      {
        v9 = 6;
      }
    }
  }

  else
  {
    v9 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiData,ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "xofSvcs_GetRtiData", 515, a1);
      v12 = 0;
LABEL_29:
      LbsOsaTrace_WriteLog(8u, __str, v11, v12, 1);
    }
  }

LABEL_31:
  v18 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs_GetGpsAlmData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGpsAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A1926829)
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (qword_2A1920D60)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGpsAlmData", 933, byte_2A1926829, 0x20uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetGpsAlmData", 941, v4, 32 * byte_2A1926829, qword_2A1920D60, 32 * byte_2A1926829);
        *a1 = byte_2A1926829;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGpsAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGpsAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGpsAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGpsAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetQzssAlmData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetQzssAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A1926849)
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (qword_2A1920D68)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetQzssAlmData", 982, byte_2A1926849, 0x20uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetQzssAlmData", 990, v4, 32 * byte_2A1926849, qword_2A1920D68, 32 * byte_2A1926849);
        *a1 = byte_2A1926849;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetQzssAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Qzss Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetQzssAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetQzssAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QzssAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetQzssAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_ClrOrbData(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "xofSvcs_ClrOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  g_XofEeParseState = 0;
  g_XofBceParseState = 0;
  if (qword_2A1920D60)
  {
    free(qword_2A1920D60);
  }

  qword_2A1920D60 = 0;
  if (qword_2A1920D68)
  {
    free(qword_2A1920D68);
  }

  qword_2A1920D68 = 0;
  if (xmmword_2A1920D70)
  {
    free(xmmword_2A1920D70);
  }

  *&xmmword_2A1920D70 = 0;
  if (*(&xmmword_2A1920D70 + 1))
  {
    free(*(&xmmword_2A1920D70 + 1));
  }

  *(&xmmword_2A1920D70 + 1) = 0;
  if (qword_2A1920D80)
  {
    free(qword_2A1920D80);
  }

  qword_2A1920D80 = 0;
  if (qword_2A1920D88)
  {
    free(qword_2A1920D88);
  }

  qword_2A1920D88 = 0;
  if (xmmword_2A1920D90)
  {
    free(xmmword_2A1920D90);
  }

  *&xmmword_2A1920D90 = 0;
  if (*(&xmmword_2A1920D90 + 1))
  {
    free(*(&xmmword_2A1920D90 + 1));
  }

  *(&xmmword_2A1920D90 + 1) = 0;
  if (qword_2A1920DA0)
  {
    free(qword_2A1920DA0);
  }

  qword_2A1920DA0 = 0;
  if (qword_2A1920DA8)
  {
    free(qword_2A1920DA8);
  }

  qword_2A1920DA8 = 0;
  if (xmmword_2A1920DB0)
  {
    free(xmmword_2A1920DB0);
  }

  *&xmmword_2A1920DB0 = 0;
  if (*(&xmmword_2A1920DB0 + 1))
  {
    free(*(&xmmword_2A1920DB0 + 1));
  }

  *(&xmmword_2A1920DB0 + 1) = 0;
  if (qword_2A1920DC0)
  {
    free(qword_2A1920DC0);
  }

  qword_2A1920DC0 = 0;
  if (qword_2A1920DC8)
  {
    free(qword_2A1920DC8);
  }

  qword_2A1920DC8 = 0;
  if (xmmword_2A1920DD0)
  {
    free(xmmword_2A1920DD0);
  }

  *&xmmword_2A1920DD0 = 0;
  if (*(&xmmword_2A1920DD0 + 1))
  {
    free(*(&xmmword_2A1920DD0 + 1));
  }

  xmmword_2A1926878 = 0u;
  *&dword_2A1926888 = 0u;
  xmmword_2A1926858 = 0u;
  unk_2A1926868 = 0u;
  xmmword_2A1926838 = 0u;
  unk_2A1926848 = 0u;
  g_Header = 0u;
  unk_2A1926828 = 0u;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *&dword_2A1920D40 = 0u;
  xmmword_2A1920D50 = 0u;
  *&qword_2A1920D60 = 0u;
  xmmword_2A1920D70 = 0u;
  *&qword_2A1920D80 = 0u;
  xmmword_2A1920D90 = 0u;
  *&qword_2A1920DA0 = 0u;
  xmmword_2A1920DB0 = 0u;
  *&qword_2A1920DC0 = 0u;
  xmmword_2A1920DD0 = 0u;
  unk_2A1920DE0 = 0u;
  xmmword_2A1920DF0 = 0u;
  unk_2A1920E00 = 0u;
  xmmword_2A1920E10 = 0u;
  *&qword_2A1920E20 = 0u;
  xmmword_2A1920E30 = 0u;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Orb data\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "xofSvcs_ClrOrbData", 0);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_ClrOrbData");
    result = LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs_ClrRtiData(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "xofSvcs_ClrRtiData");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  xmmword_2A1920CC8 = 0u;
  unk_2A1920CD8 = 0u;
  xmmword_2A1920CA8 = 0u;
  unk_2A1920CB8 = 0u;
  xmmword_2A1920C88 = 0u;
  unk_2A1920C98 = 0u;
  xmmword_2A1920C68 = 0u;
  unk_2A1920C78 = 0u;
  g_RtiRawData = 0u;
  unk_2A1920C58 = 0u;
  g_RtiParseState = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rti data\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "xofSvcs_ClrRtiData", 0);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_ClrRtiData");
    result = LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs_ClrBceOrbData(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "xofSvcs_ClrBceOrbData");
    LbsOsaTrace_WriteLog(8u, __str, v1, 5, 1);
  }

  if (qword_2A1920D60)
  {
    free(qword_2A1920D60);
  }

  qword_2A1920D60 = 0;
  if (qword_2A1920D68)
  {
    free(qword_2A1920D68);
  }

  qword_2A1920D68 = 0;
  if (xmmword_2A1920D70)
  {
    free(xmmword_2A1920D70);
  }

  *&xmmword_2A1920D70 = 0;
  if (*(&xmmword_2A1920D70 + 1))
  {
    free(*(&xmmword_2A1920D70 + 1));
  }

  *(&xmmword_2A1920D70 + 1) = 0;
  if (qword_2A1920D80)
  {
    free(qword_2A1920D80);
  }

  qword_2A1920D80 = 0;
  if (qword_2A1920D88)
  {
    free(qword_2A1920D88);
  }

  qword_2A1920D88 = 0;
  if (xmmword_2A1920D90)
  {
    free(xmmword_2A1920D90);
  }

  *&xmmword_2A1920D90 = 0;
  if (*(&xmmword_2A1920D90 + 1))
  {
    free(*(&xmmword_2A1920D90 + 1));
  }

  *(&xmmword_2A1920D90 + 1) = 0;
  if (qword_2A1920DA0)
  {
    free(qword_2A1920DA0);
  }

  qword_2A1920DA0 = 0;
  if (qword_2A1920DA8)
  {
    free(qword_2A1920DA8);
  }

  qword_2A1920DA8 = 0;
  if (xmmword_2A1920DB0)
  {
    free(xmmword_2A1920DB0);
  }

  *&xmmword_2A1920DB0 = 0;
  g_PayLoad = 0u;
  unk_2A1920D00 = 0u;
  xmmword_2A1920D10 = 0u;
  *&dword_2A1920D20 = 0u;
  xmmword_2A1920D30 = 0u;
  *(&xmmword_2A1920D30 + 12) = 0u;
  memset_s(&unk_2A1920DE0, 0x30uLL, 0, 0x30uLL);
  g_XofBceParseState = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BCE data\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "xofSvcs_ClrBceOrbData", 0);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_ClrBceOrbData");
    result = LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs_GetGloAlmData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGloAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A1926869)
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (xmmword_2A1920D70)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGloAlmData", 1125, byte_2A1926869, 0x24uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetGloAlmData", 1133, v4, 36 * byte_2A1926869, xmmword_2A1920D70, 36 * byte_2A1926869);
        *a1 = byte_2A1926869;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGloAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGloAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGloAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGloAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetGalAlmData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGalAlmData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE1(xmmword_2A1926858))
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (*(&xmmword_2A1920D70 + 1))
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGalAlmData", 1173, BYTE1(xmmword_2A1926858), 0x1CuLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetGalAlmData", 1181, v4, 28 * BYTE1(xmmword_2A1926858), *(&xmmword_2A1920D70 + 1), 28 * BYTE1(xmmword_2A1926858));
        *a1 = BYTE1(xmmword_2A1926858);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGalAlmData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL Alm data\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGalAlmData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGalAlmData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GalAlmData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGalAlmData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetGpsBrdCstEphData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGpsBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192682A)
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (qword_2A1920D88)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGpsBrdCstEphData", 1272, byte_2A192682A, 0x40uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetGpsBrdCstEphData", 1280, v4, byte_2A192682A << 6, qword_2A1920D88, byte_2A192682A << 6);
        *a1 = byte_2A192682A;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGpsBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGpsBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGpsBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGpsBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetQzssBrdCstEphData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetQzssBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192684A)
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (*(&xmmword_2A1920D90 + 1))
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetQzssBrdCstEphData", 1321, byte_2A192684A, 0x40uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetQzssBrdCstEphData", 1329, v4, byte_2A192684A << 6, *(&xmmword_2A1920D90 + 1), byte_2A192684A << 6);
        *a1 = byte_2A192684A;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetQzssBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Qzss BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetQzssBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetQzssBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QzssBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetQzssBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetGloBrdCstEphData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGloBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!byte_2A192686A)
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (qword_2A1920DA8)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGloBrdCstEphData", 1369, byte_2A192686A, 0x2CuLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetGloBrdCstEphData", 1377, v4, 44 * byte_2A192686A, qword_2A1920DA8, 44 * byte_2A192686A);
        *a1 = byte_2A192686A;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGloBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGloBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGloBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GloBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGloBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetGalBrdCstEphData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetGalBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE2(xmmword_2A1926858))
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (qword_2A1920DA0)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetGalBrdCstEphData", 1417, BYTE2(xmmword_2A1926858), 0x44uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetGalBrdCstEphData", 1425, v4, 68 * BYTE2(xmmword_2A1926858), qword_2A1920DA0, 68 * BYTE2(xmmword_2A1926858));
        *a1 = BYTE2(xmmword_2A1926858);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetGalBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetGalBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetGalBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GalBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetGalBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetBdsBrdCstEphData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetBdsBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE2(xmmword_2A1926878))
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (xmmword_2A1920DB0)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetBdsBrdCstEphData", 1466, BYTE2(xmmword_2A1926878), 0x54uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetBdsBrdCstEphData", 1474, v4, 84 * BYTE2(xmmword_2A1926878), xmmword_2A1920DB0, 84 * BYTE2(xmmword_2A1926878));
        *a1 = BYTE2(xmmword_2A1926878);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetBdsBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BDS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetBdsBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetBdsBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BdsBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetBdsBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetSbasBrdCstEphData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetSbasBrdCstEphData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      if (!BYTE2(xmmword_2A1926838))
      {
        v6 = 6;
        goto LABEL_24;
      }

      if (xmmword_2A1920D90)
      {
        v4 = gnssOsa_Calloc("xofSvcs_GetSbasBrdCstEphData", 1515, BYTE2(xmmword_2A1926838), 0x28uLL);
        *(a1 + 8) = v4;
        if (!v4)
        {
          v6 = 7;
          goto LABEL_24;
        }

        memcpy_s("xofSvcs_GetSbasBrdCstEphData", 1523, v4, 40 * BYTE2(xmmword_2A1926838), xmmword_2A1920D90, 40 * BYTE2(xmmword_2A1926838));
        *a1 = BYTE2(xmmword_2A1926838);
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          v6 = 1;
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = 1;
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetSbasBrdCstEphData");
        v8 = 5;
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBAS BCE\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "xofSvcs_GetSbasBrdCstEphData", 769);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      v6 = 9;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "xofSvcs_GetSbasBrdCstEphData", 769, g_XofBceParseState);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      if (g_XofBceParseState)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }
    }
  }

  else
  {
    v6 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SbasBrdCstEphData\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs_GetSbasBrdCstEphData", 513);
      v8 = 0;
LABEL_12:
      LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
    }
  }

LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs_GetBlockLen(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetBlockLen");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (g_XofEeParseState == 1)
  {
    BlckLen = xofSvcs00_24GetBlckLen(a1);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "xofSvcs_GetBlockLen");
      LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
    }
  }

  else
  {
    BlckLen = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeParseState,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "xofSvcs_GetBlockLen", 769, g_XofEeParseState);
      LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      BlckLen = 0;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return BlckLen;
}

uint64_t xofSvcs_GetXofInjctTime(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetXofInjctTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      *a1 = WORD1(g_Header);
      *(a1 + 4) = DWORD1(g_Header);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        v5 = 1;
        goto LABEL_14;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetXofInjctTime");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetXofInjctTime", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    v5 = 9;
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofInjctTime\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "xofSvcs_GetXofInjctTime", 513);
      v7 = 2;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

LABEL_14:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t xofSvcs_GetRtiInjctTime(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetRtiInjctTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_RtiParseState)
    {
      *a1 = WORD1(g_RtiRawData);
      *(a1 + 4) = DWORD1(g_RtiRawData);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        v5 = 1;
        goto LABEL_14;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetRtiInjctTime");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetRtiInjctTime", 769, g_RtiParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    v5 = 9;
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiInjctTime\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "xofSvcs_GetRtiInjctTime", 513);
      v7 = 2;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

LABEL_14:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t xofSvcs_GetXofEEStartTime(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "xofSvcs_GetXofEEStartTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  if (a1)
  {
    if (g_XofBceParseState == 1)
    {
      *a1 = WORD5(g_Header);
      *(a1 + 4) = HIDWORD(g_Header);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        v5 = 1;
        goto LABEL_14;
      }

      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = 1;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetXofEEStartTime");
      v7 = 5;
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "xofSvcs_GetXofEEStartTime", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    v5 = 6;
  }

  else
  {
    v5 = 8;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEeStartTime\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "xofSvcs_GetXofEEStartTime", 513);
      v7 = 2;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

LABEL_14:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t xofSvcs_GetXofBrdSvBitMask(int a1, uint64_t *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
    LbsOsaTrace_WriteLog(8u, __str, v5, 5, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BrdSvBitMask\n");
    goto LABEL_13;
  }

  if (g_XofBceParseState != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofBceParseState,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "xofSvcs_GetXofBrdSvBitMask", 769, g_XofBceParseState);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        if (BYTE6(xmmword_2A1926858))
        {
          v6 = qword_2A1920E28;
          goto LABEL_35;
        }

        goto LABEL_38;
      case 5:
        if (byte_2A192686E)
        {
          v6 = xmmword_2A1920E30;
          goto LABEL_35;
        }

        goto LABEL_38;
      case 6:
        if (BYTE6(xmmword_2A1926878))
        {
          v6 = *(&xmmword_2A1920E30 + 1);
          goto LABEL_35;
        }

LABEL_38:
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
LABEL_40:
          v8 = 6;
          goto LABEL_41;
        }

LABEL_39:
        bzero(__str, 0x410uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
        LbsOsaTrace_WriteLog(8u, __str, v15, 5, 1);
        goto LABEL_40;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (byte_2A192682E)
        {
          v6 = xmmword_2A1920E10;
          goto LABEL_35;
        }

        goto LABEL_38;
      case 2:
        if (BYTE6(xmmword_2A1926838))
        {
          v6 = *(&xmmword_2A1920E10 + 1);
          goto LABEL_35;
        }

        goto LABEL_38;
      case 3:
        if (byte_2A192684E)
        {
          v6 = qword_2A1920E20;
LABEL_35:
          *a2 = v6;
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            v8 = 1;
            goto LABEL_41;
          }

          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
          v8 = 1;
          goto LABEL_37;
        }

        goto LABEL_38;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", v18);
LABEL_13:
    LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
  }

LABEL_14:
  v8 = 8;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "xofSvcs_GetXofBrdSvBitMask");
LABEL_37:
    LbsOsaTrace_WriteLog(8u, __str, v10, 5, 1);
  }

LABEL_41:
  v16 = *MEMORY[0x29EDCA608];
  return v8;
}

void GncP26_05HandlePowerRepMsg(unsigned __int8 *a1, unsigned int *a2)
{
  v144 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Rx ZX%c%c%c\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP26_05HandlePowerRepMsg", *a1, a1[1], a1[2]);
    LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
  }

  PlcHwType = GncP05_62GetPlcHwType();
  if (((1 << PlcHwType) & 0x35) == 0)
  {
    if (PlcHwType == 1)
    {
      v11 = a1[2];
      if (v11 == 77)
      {
        if (a2[1])
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,RunTm,%u,BBTick,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 73, "GncP26_01MePowerRptV1", *a2, a2[1], a2[2], a2[5], a2[24]);
            LbsOsaTrace_WriteLog(8u, __str, v18, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v19 = mach_continuous_time();
            v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SlpTm,%u,CpuTm,%u,SrchTm,%u,TrkTm,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 73, "GncP26_01MePowerRptV1", a2[7], a2[8], a2[10], a2[11]);
            LbsOsaTrace_WriteLog(8u, __str, v20, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClkFrq,%u,SE,%u,TEAcc,%u,TETde,%u,QE,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "GncP26_01MePowerRptV1", a2[13], a2[14], a2[15], a2[16], a2[17]);
            LbsOsaTrace_WriteLog(8u, __str, v22, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%u,PreBnd,%u,AGC,%u,Notch,%u,Scan,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 73, "GncP26_01MePowerRptV1", *(a2 + 36), *(a2 + 74), *(a2 + 75), *(a2 + 38), *(a2 + 39));
            LbsOsaTrace_WriteLog(8u, __str, v24, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PME,%u,Viterbi,%u,Dspi,%u,Dwb,%u,Spur,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 73, "GncP26_01MePowerRptV1", *(a2 + 42), *(a2 + 43), *(a2 + 44), *(a2 + 45), *(a2 + 46));
            LbsOsaTrace_WriteLog(8u, __str, v27, 4, 1);
          }

          LODWORD(v25) = a2[1];
          *&v28 = v25;
          v29 = *(a2 + 7);
          v30.i64[0] = v29;
          v30.i64[1] = HIDWORD(v29);
          v31 = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v30), xmmword_299729250), vdupq_lane_s64(v28, 0));
          v32 = vextq_s8(v31, v31, 8uLL);
          *&qword_2A1971718 = v32;
          v32.i32[0] = a2[17];
          v33 = 0x3F7CCCCCCCCCCCCDLL;
          LOWORD(v33) = *(a2 + 38);
          v34 = 0x3FC47AE147AE147BLL;
          *&qword_2A1971710 = v33 * 0.16 / *&v28;
          LOWORD(v34) = *(a2 + 39);
          v35 = 0x4010666666666666;
          *&qword_2A1971708 = v34 * 4.1 / *&v28;
          LOWORD(v35) = *(a2 + 42);
          v36 = 0x3FE947AE147AE148;
          LOWORD(v36) = *(a2 + 43);
          v37 = 0x3FD3333333333333;
          *&qword_2A19716F8 = v36 * 0.3 / *&v28;
          *&qword_2A1971700 = v35 * 0.79 / *&v28;
          LOWORD(v37) = *(a2 + 46);
          HIDWORD(v38) = 1071770501;
          *&qword_2A19716E8 = v32.u64[0] * 0.00703125 / *&v28;
          *&qword_2A19716F0 = v37 * 0.56 / *&v28;
          LODWORD(v38) = a2[8];
          HIDWORD(v39) = 1075485081;
          *&qword_2A19716E0 = v38 * 6.65 / *&v28;
          LODWORD(v39) = a2[2];
          *&qword_2A1971728 = v39 * 6.7 / *&v28;
          v40 = *&qword_2A19716E0 + *&qword_2A19716F0 + *&qword_2A19716F8 + *&qword_2A1971700 + *&qword_2A1971708 + *&qword_2A1971710 + *&qword_2A19716E8 + *&v31.i64[1] + *v31.i64 + *&qword_2A1971728;
          v41 = *(a2 + 74);
          if (*(a2 + 74))
          {
            v42 = 0;
            do
            {
              v42 += v41 & 1;
              v43 = v41 > 1;
              v41 >>= 1;
            }

            while (v43);
            v44 = v42;
            if (v42 >= 3u)
            {
              v45 = 9.2;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v126 = mach_continuous_time();
                v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumConst,%u\n", (*&g_MacClockTicksToMsRelation * v126), "GNC", 73, "GncP26_01MePowerRptV1", v44);
                LbsOsaTrace_WriteLog(8u, __str, v127, 4, 1);
              }
            }

            else
            {
              v45 = dbl_299729318[v42];
            }
          }

          else
          {
            v44 = 0;
            v45 = 0.0;
          }

          v128 = v40 + v45;
          v130 = a2[1];
          v129 = a2[2];
          *&qword_2A19716D8 = v129 * 15.5 / v130;
          *&qword_2A1971760 = v128 / 1.1 + *&qword_2A19716D8 * 1.25;
          dword_2A1971754 = a2[24];
          unk_2A1971758 = v130;
          dword_2A197175C = v129;
          dword_2A19716C0 = a2[7];
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v131 = mach_continuous_time();
            v132 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IdleCur,%.2f,MECPU,%.2f,SE,%.2f,TEACC,%.2f,QE,%.2f\n", (*&g_MacClockTicksToMsRelation * v131), "GNC", 73, "GncP26_01MePowerRptV1", *&qword_2A1971728, *&qword_2A19716E0, *&qword_2A1971720, *&qword_2A1971718, *&qword_2A19716E8);
            LbsOsaTrace_WriteLog(8u, __str, v132, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v133 = mach_continuous_time();
            v134 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Notch,%.2f,Scan,%.2f,PME,%.2f,Viterbi,%.2f,Spur,%.2f\n", (*&g_MacClockTicksToMsRelation * v133), "GNC", 73, "GncP26_01MePowerRptV1", *&qword_2A1971710, *&qword_2A1971708, *&qword_2A1971700, *&qword_2A19716F8, *&qword_2A19716F0);
            LbsOsaTrace_WriteLog(8u, __str, v134, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v135 = mach_continuous_time();
            v136 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%.2f,NumConst,%u,Band,%.2f\n", (*&g_MacClockTicksToMsRelation * v135), "GNC", 73, "GncP26_01MePowerRptV1", *&qword_2A19716D8, v44, v45);
            LbsOsaTrace_WriteLog(8u, __str, v136, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v137 = mach_continuous_time();
            v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MENonRf,%f,TotMEPow,%f\n", (*&g_MacClockTicksToMsRelation * v137), "GNC", 73, "GncP26_01MePowerRptV1", v128, *&qword_2A1971760);
            v9 = 4;
            goto LABEL_7;
          }

          goto LABEL_8;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_8;
        }

        goto LABEL_71;
      }

      if (v11 == 80)
      {
        if (dword_2A1971754)
        {
          v12 = a2[1];
          if (v12)
          {
            if (a2[2] <= v12)
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v98 = mach_continuous_time();
                v99 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,ClkFrq,%u,Tsk1,%u\n", (*&g_MacClockTicksToMsRelation * v98), "GNC", 73, "GncP26_02CpPowerRptV1", *a2, a2[1], a2[2], *(a2 + 6), a2[4]);
                LbsOsaTrace_WriteLog(8u, __str, v99, 4, 1);
              }

              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v100 = mach_continuous_time();
                v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Tsk2,%u,Tsk3,%u,Tsk4,%u,Tsk5,%u\n", (*&g_MacClockTicksToMsRelation * v100), "GNC", 73, "GncP26_02CpPowerRptV1", a2[5], a2[6], a2[7], a2[8]);
                LbsOsaTrace_WriteLog(8u, __str, v101, 4, 1);
              }

              v103 = a2[1];
              v102 = a2[2];
              v104 = v102 / v103 * 2.5;
              v105 = (v103 - v102) / v103 * 0.64;
              v106 = (v104 + v105) / 1.1;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v107 = mach_continuous_time();
                v108 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CPCPU ActCur,%f,IdlCur,%f,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v107), "GNC", 73, "GncP26_02CpPowerRptV1", v104, v105, (v104 + v105) / 1.1);
                LbsOsaTrace_WriteLog(8u, __str, v108, 4, 1);
              }

              v109 = gnssOsa_Calloc("GncP26_02CpPowerRptV1", 422, 1, 0x20uLL);
              if (v109)
              {
                v110 = v109;
                *(v109 + 3) = dword_2A1971754;
                v111 = unk_2A1971758;
                *(v109 + 2) = unk_2A1971758;
                v112 = v106 + *&qword_2A1971760;
                v109[3] = v106 + *&qword_2A1971760;
                word_2A19716C4 = *(a2 + 6);
                *&dword_2A19716C8 = *(a2 + 1);
                *&qword_2A1971730 = v112 / 0.85;
                *&qword_2A1971738 = v112 / 0.85 * v111 * 0.001;
                *&qword_2A1971740 = v112 / 0.85 / 3.7;
                if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v113 = mach_continuous_time();
                  v114 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_POW_REP_IND =>GNM Tick,%u,MeasInt,%u,ActInt,%u,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v113), "GNC", 73, "GncP26_02CpPowerRptV1", *(v110 + 3), *(v110 + 4), *(v110 + 5), v110[3]);
                  LbsOsaTrace_WriteLog(8u, __str, v114, 4, 1);
                }

                AgpsSendFsmMsg(134, 128, 8786179, v110);
                GncP26_06SndNmeaDebugPowerMsg();
              }

              goto LABEL_8;
            }

            if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              goto LABEL_8;
            }

LABEL_23:
            bzero(__str, 0x410uLL);
            v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v141 = a2[1];
            v142 = a2[2];
            v139 = *a2;
            v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Strt,%u,MeasInt,%u,ActInt,%u\n", v15, "GNC");
            goto LABEL_6;
          }

          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            goto LABEL_8;
          }

LABEL_71:
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasIntMs,0\n");
          goto LABEL_6;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_8;
        }

LABEL_58:
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NO ME Power Report\n");
        goto LABEL_6;
      }

LABEL_24:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_8;
      }

      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v140 = a1[2];
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ZXOP Extn,%u\n", (*&g_MacClockTicksToMsRelation * v16));
      goto LABEL_6;
    }

    v13 = a1[2];
    if (v13 == 77)
    {
      if (!a2[1])
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_8;
        }

        goto LABEL_71;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v46 = mach_continuous_time();
        v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,RunTm,%u,BBTick,%u\n", (*&g_MacClockTicksToMsRelation * v46), "GNC", 73, "GncP26_04MePowerRptV2", *a2, a2[1], a2[2], a2[5], a2[24]);
        LbsOsaTrace_WriteLog(8u, __str, v47, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v48 = mach_continuous_time();
        v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SlpTm,%u,CpuTm,%u,SrchTm,%u,TrkTm,%u\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 73, "GncP26_04MePowerRptV2", a2[7], a2[8], a2[10], a2[11]);
        LbsOsaTrace_WriteLog(8u, __str, v49, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v50 = mach_continuous_time();
        v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClkFrq,%u,SE,%u,TEAcc,%u,TETde,%u,QE,%u\n", (*&g_MacClockTicksToMsRelation * v50), "GNC", 73, "GncP26_04MePowerRptV2", a2[13], a2[14], a2[15], a2[16], a2[17]);
        LbsOsaTrace_WriteLog(8u, __str, v51, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v52 = mach_continuous_time();
        v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%u,PreBnd,%u,AGC,%u,Notch,%u,Scan,%u\n", (*&g_MacClockTicksToMsRelation * v52), "GNC", 73, "GncP26_04MePowerRptV2", *(a2 + 36), *(a2 + 74), *(a2 + 75), *(a2 + 38), *(a2 + 39));
        LbsOsaTrace_WriteLog(8u, __str, v53, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v56 = mach_continuous_time();
        v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PME,%u,Viterbi,%u,Dspi,%u,Dwb,%u,Spur,%u\n", (*&g_MacClockTicksToMsRelation * v56), "GNC", 73, "GncP26_04MePowerRptV2", *(a2 + 42), *(a2 + 43), *(a2 + 44), *(a2 + 45), *(a2 + 46));
        LbsOsaTrace_WriteLog(8u, __str, v57, 4, 1);
      }

      LODWORD(v54) = a2[1];
      *&v58 = v54;
      v59 = *(a2 + 7);
      v60.i64[0] = v59;
      v60.i64[1] = HIDWORD(v59);
      v61 = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v60), xmmword_299729240), vdupq_lane_s64(v58, 0));
      v62 = vextq_s8(v61, v61, 8uLL);
      *&qword_2A1971718 = v62;
      v62.i16[0] = *(a2 + 38);
      v63 = 0x3FC1EB851EB851ECLL;
      *&qword_2A1971710 = v62.u64[0] * 0.14 / *&v58;
      LOWORD(v63) = *(a2 + 39);
      *&qword_2A1971708 = v63 * 3.6 / *&v58;
      v64 = vcvtd_n_f64_u32(*(a2 + 42), 2uLL) / *&v58;
      LOWORD(v55) = *(a2 + 43);
      *&v65 = v55 * 0.3;
      v66 = *&v65 / *&v58;
      LOWORD(v65) = *(a2 + 46);
      *&v67 = v65 * 0.45;
      v68 = *&v67 / *&v58;
      qword_2A19716F8 = *&v66;
      qword_2A1971700 = *&v64;
      *&qword_2A19716F0 = *&v67 / *&v58;
      LODWORD(v67) = a2[8];
      *&v69 = v67 * 11.2;
      v70 = *&v69 / *&v58;
      *&qword_2A19716E0 = *&v69 / *&v58;
      LODWORD(v69) = a2[2];
      *&qword_2A1971728 = v69 * 2.4 / *&v58;
      v71 = v64 + *&qword_2A1971708 + *&qword_2A1971710 + *&v61.i64[1] + *v61.i64 + *&qword_2A1971728;
      v72 = *(a2 + 74);
      v73 = ((v72 >> 1) & 1) + (v72 & 1) + ((v72 & 4) >> 2);
      v74 = ((v72 >> 4) & 1) + ((v72 >> 5) & 1);
      if (v73 >= 3)
      {
        v75 = 8.2;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v76 = mach_continuous_time();
          v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumL1Const,%u\n", (*&g_MacClockTicksToMsRelation * v76), "GNC", 73, "GncP26_04MePowerRptV2", ((v72 >> 1) & 1) + (v72 & 1) + ((v72 & 4) >> 2));
          LbsOsaTrace_WriteLog(8u, __str, v77, 4, 1);
        }
      }

      else
      {
        v75 = dbl_299729330[v73];
      }

      v78 = v66 + v71;
      if (v74)
      {
        if (v74 == 1)
        {
          v79 = 6.5;
        }

        else
        {
          v79 = 7.8;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v80 = mach_continuous_time();
            v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumL5Const,%u\n", (*&g_MacClockTicksToMsRelation * v80), "GNC", 73, "GncP26_04MePowerRptV2", v74);
            LbsOsaTrace_WriteLog(8u, __str, v81, 4, 1);
          }
        }
      }

      else
      {
        v79 = 0.0;
      }

      v82 = a2[2];
      v83 = a2[1];
      if ((v72 & 4) != 0)
      {
        v84 = v82 * 12.1 / v83;
      }

      else
      {
        v84 = (11 * v82 / v83);
      }

      if (v74)
      {
        v85 = (5 * v82 / v83);
      }

      else
      {
        v85 = 0.0;
      }

      v86 = vcvtd_n_f64_u32(v82, 1uLL) / v83;
      v87 = v70 + v68 + v78 + v75 + v79;
      v88 = v84 + v85;
      *&qword_2A19716D8 = v86 + v88;
      *&qword_2A1971760 = v88 * 1.15 + v87 * 0.9 + v86 * 1.8;
      dword_2A1971754 = a2[24];
      unk_2A1971758 = v83;
      dword_2A197175C = v82;
      dword_2A19716C0 = a2[7];
      g_PowerMeas = 1000 * (*a2 / 0x249F000);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v89 = mach_continuous_time();
        v90 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartTmMs,%u,IdleCur,%.2f,MECPU,%.2f,SE,%.2f,TEACC,%.2f\n", (*&g_MacClockTicksToMsRelation * v89), "GNC", 73, "GncP26_04MePowerRptV2", g_PowerMeas, *&qword_2A1971728, *&qword_2A19716E0, *&qword_2A1971720, *&qword_2A1971718);
        LbsOsaTrace_WriteLog(8u, __str, v90, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v91 = mach_continuous_time();
        v92 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Notch,%.2f,Scan,%.2f,PME,%.2f,Viterbi,%.2f,Spur,%.2f\n", (*&g_MacClockTicksToMsRelation * v91), "GNC", 73, "GncP26_04MePowerRptV2", *&qword_2A1971710, *&qword_2A1971708, *&qword_2A1971700, *&qword_2A19716F8, *&qword_2A19716F0);
        LbsOsaTrace_WriteLog(8u, __str, v92, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v93 = mach_continuous_time();
        v94 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RF,%.2f,NumConst,%u,NumL5Const,%u,BdsUsed,%u,PreBand,%.2f,PreBandL5,%.2f\n", (*&g_MacClockTicksToMsRelation * v93), "GNC", 73, "GncP26_04MePowerRptV2", *&qword_2A19716D8, v73, v74, (v72 >> 2) & 1, v75, v79);
        LbsOsaTrace_WriteLog(8u, __str, v94, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v95 = mach_continuous_time();
        v96 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MENonRf,%f,TotMEPow,%f\n", (*&g_MacClockTicksToMsRelation * v95), "GNC", 73, "GncP26_04MePowerRptV2", v87, *&qword_2A1971760);
        LbsOsaTrace_WriteLog(8u, __str, v96, 4, 1);
      }

      v97 = g_PowerMeas - dword_2A19716BC;
    }

    else
    {
      if (v13 != 80)
      {
        goto LABEL_24;
      }

      if (!dword_2A1971754)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_8;
        }

        goto LABEL_58;
      }

      v14 = a2[1];
      if (!v14)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_8;
        }

        goto LABEL_71;
      }

      if (a2[2] > v14)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v115 = mach_continuous_time();
        v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Strt,%u,MeasInt,%u,ActInt,%u,ClkFrq,%u,Tsk1,%u\n", (*&g_MacClockTicksToMsRelation * v115), "GNC", 73, "GncP26_03CpPowerRptV2", *a2, a2[1], a2[2], *(a2 + 6), a2[4]);
        LbsOsaTrace_WriteLog(8u, __str, v116, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v117 = mach_continuous_time();
        v118 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Tsk2,%u,Tsk3,%u,Tsk4,%u,Tsk5,%u,Tsk6,%u\n", (*&g_MacClockTicksToMsRelation * v117), "GNC", 73, "GncP26_03CpPowerRptV2", a2[5], a2[6], a2[7], a2[8], a2[9]);
        LbsOsaTrace_WriteLog(8u, __str, v118, 4, 1);
      }

      v120 = a2[1];
      v119 = a2[2];
      v121 = 1.0 / v120;
      v122 = v121 * v119 * 2.2;
      v123 = v121 * (v120 - v119) * 0.64;
      *&qword_2A19716D0 = (v122 + v123) * 0.9;
      word_2A19716C4 = *(a2 + 6);
      dword_2A19716C8 = v120;
      unk_2A19716CC = v119;
      dword_2A19716BC = 1000 * (*a2 / 0x249F000);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v124 = mach_continuous_time();
        v125 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CPCPU StartTmMs,%u,ActCur,%f,IdlCur,%f,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v124), "GNC", 73, "GncP26_03CpPowerRptV2", dword_2A19716BC, v122, v123, *&qword_2A19716D0);
        LbsOsaTrace_WriteLog(8u, __str, v125, 4, 1);
      }

      v97 = dword_2A19716BC - g_PowerMeas;
    }

    if (v97 <= 0x31)
    {
      GncP26_07SndPowerRptV2();
    }

    goto LABEL_8;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v138 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PoweRep GCPU,HwType,%hhu\n", v138);
LABEL_6:
    v8 = v7;
    v9 = 2;
LABEL_7:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }

LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
}

void GncP26_06SndNmeaDebugPowerMsg(void)
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = g_GncPCntxtInfo;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0);
  if ((IsLoggingAllowed & 1) == 0 && (v0 & 0x200) == 0)
  {
    goto LABEL_11;
  }

  bzero(__str, 0x400uLL);
  v19 = snprintf(__str, 0x400uLL, "$PDPMT,%u,%u,%u,%u", dword_2A1971754, unk_2A1971758, dword_2A197175C, dword_2A19716C0);
  if (HswUtil_AddNmeaCS(__str, 0x400u, &v19))
  {
    v2 = v19;
    if (v19 >= 0x400u)
    {
      goto LABEL_5;
    }

    v19 = snprintf(&__str[v19], 1024 - v19, "$PDPMC,%u,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f", dword_2A1971754, *&qword_2A1971728, *&qword_2A1971720, *&qword_2A1971718, *&qword_2A1971710, *&qword_2A1971708, *&qword_2A1971700, *&qword_2A19716F8, *&qword_2A19716F0, *&qword_2A19716E8, *&qword_2A19716E0, *&qword_2A19716D8);
    if (HswUtil_AddNmeaCS(&__str[v2], 1024 - v2, &v19))
    {
      v2 = (v19 + v2);
      if (v2 >= 0x400)
      {
        goto LABEL_5;
      }

      v19 = snprintf(&__str[v2], (1024 - v2), "$PDPGT,%u,%u,%u,%u,%u", dword_2A1971754, dword_2A19716C8, unk_2A19716CC, dword_2A19716C8 - unk_2A19716CC, word_2A19716C4);
      if (!HswUtil_AddNmeaCS(&__str[v2], 1024 - v2, &v19))
      {
        goto LABEL_28;
      }

      v2 = (v19 + v2);
      if (v2 >= 0x400)
      {
LABEL_5:
        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(v20, 0x410uLL);
          v17 = v2;
          v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v3 = "%10u %s%c %s: #%04hx NmeaLen,%u\n";
LABEL_9:
          v5 = snprintf(v20, 0x40FuLL, v3, v16, "GNC", 69, "GncP26_06SndNmeaDebugPowerMsg", 772, v17, v18);
LABEL_10:
          LbsOsaTrace_WriteLog(8u, v20, v5, 0, 1);
          goto LABEL_11;
        }

        goto LABEL_11;
      }

      v19 = snprintf(&__str[v2], (1024 - v2), "$PDPTM,%u,%u,%u,%.3f,%.3f,%.3f", dword_2A1971754, unk_2A1971758, dword_2A197175C, *&qword_2A1971740, *&qword_2A1971730, *&qword_2A1971738);
      if (HswUtil_AddNmeaCS(&__str[v2], 1024 - v2, &v19))
      {
        v7 = v19 + v2;
        v8 = (v19 + v2);
        if (v8 < 0x401)
        {
          v9 = IsLoggingAllowed;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, __str, v8);
        }

        if ((v0 & 0x200) != 0)
        {
          v10 = gnssOsa_Calloc("GncP26_06SndNmeaDebugPowerMsg", 218, 1, 0x18uLL);
          if (v10)
          {
            v11 = v10;
            v12 = gnssOsa_Calloc("GncP26_06SndNmeaDebugPowerMsg", 227, (v7 + 1), 1uLL);
            v11[2] = v12;
            if (v12)
            {
              memcpy_s("GncP26_06SndNmeaDebugPowerMsg", 234, v12, (v7 + 1), __str, v7);
              *(v11 + 6) = v7;
              if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                bzero(v20, 0x410uLL);
                v13 = mach_continuous_time();
                v14 = snprintf(v20, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncP26_06SndNmeaDebugPowerMsg", *(v11 + 6));
                LbsOsaTrace_WriteLog(8u, v20, v14, 4, 1);
              }

              AgpsSendFsmMsg(134, 128, 8786691, v11);
            }

            else
            {
              free(v11);
            }
          }
        }

        goto LABEL_11;
      }
    }

LABEL_28:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_11;
    }

    bzero(v20, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = snprintf(v20, 0x40FuLL, "%10u %s%c %s: #%04hx NmeaLen,%u,BytesWritten,%u\n", v15);
    goto LABEL_10;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(v20, 0x410uLL);
    v4 = mach_continuous_time();
    v17 = v19;
    v16 = (*&g_MacClockTicksToMsRelation * v4);
    v3 = "%10u %s%c %s: #%04hx BytesWritten,%u\n";
    goto LABEL_9;
  }

LABEL_11:
  v6 = *MEMORY[0x29EDCA608];
}

void GncP26_07SndPowerRptV2(void)
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP26_07SndPowerRptV2", 253, 1, 0x20uLL);
  if (v0)
  {
    v1 = v0;
    *(v0 + 3) = dword_2A1971754;
    v2 = unk_2A1971758;
    v3 = *&qword_2A1971760 + *&qword_2A19716D0;
    *(v0 + 2) = unk_2A1971758;
    v0[3] = v3;
    *&qword_2A1971730 = v3 / 0.85;
    *&qword_2A1971738 = v3 / 0.85 * v2 * 0.001;
    *&qword_2A1971740 = v3 / 0.85 / 3.7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_POW_REP_IND =>GNM Tick,%u,MeasInt,%u,ActInt,%u,Pow,%f\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP26_07SndPowerRptV2", *(v1 + 3), *(v1 + 4), *(v1 + 5), v1[3]);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8786179, v1);
    GncP26_06SndNmeaDebugPowerMsg();
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t GM_Prop_AAD(uint64_t result, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = (a2 - 1);
  if (a2 - 1 >= 0)
  {
    v4 = result;
    v5 = v3 + 1;
    v6 = a3 + 48 * v3;
    do
    {
      if (*(v6 + 8) && *(v6 + 4) == 1)
      {
        v7 = *(v6 + 16);
        v10[0] = *v6;
        v10[1] = v7;
        v10[2] = *(v6 + 32);
        *v6 = v4;
        result = Comp_Cur_Acq_Aid(v10, v6);
      }

      v6 -= 48;
    }

    while (v5-- > 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

double Nav_Kalman_Update_Init()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v19 = *MEMORY[0x29EDCA608];
  v6 = (v0 + 11528);
  bzero(v17, 0x69F0uLL);
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(v17);
  *v5 = *v17;
  *(v5 + 20) = *&v17[5];
  memcpy((v5 + 28), v18, 0x69D0uLL);
  *v5 = 167849989;
  *(v5 + 4) = 284;
  *(v5 + 8) = 0x10001000105DCLL;
  *(v5 + 16) = 655366;
  v7 = *(v2 + 52);
  *(v5 + 20) = v7;
  v8 = *(v2 + 56);
  *(v5 + 24) = v8;
  v17[0] = v7;
  v17[1] = v8;
  NK_Set_Dynamics(v17, v5 + 32);
  *(v5 + 128) = 1;
  *(v5 + 132) = 1;
  *(v5 + 152) = -1;
  *(v5 + 11161) = 1;
  *(v5 + 11136) = -1;
  *(v5 + 11440) = -1;
  *(v5 + 11480) = 0x416312D000000000;
  v9 = vdupq_n_s64(0x416312D000000000uLL);
  *(v5 + 11488) = v9;
  *(v5 + 11504) = 0x416312D000000000;
  *v6 = -1;
  *(v5 + 11536) = -1;
  *(v5 + 11576) = 0x416312D000000000;
  *(v5 + 11584) = v9;
  *(v5 + 11600) = 0x416312D000000000;
  v6[96] = -1;
  *(v5 + 272) = *(v4 + 224);
  v10 = dbl_299728600[*(v2 + 52) < 5u];
  *(v5 + 280) = v10;
  if (*(v4 + 19) == 1)
  {
    *(v5 + 280) = v10 * 0.5;
  }

  *(v5 + 328) = 0x4163125300000000;
  *(v5 + 304) = 0x4163125300000000;
  *(v5 + 1696) = 1;
  *(v5 + 7172) = 18;
  *(v5 + 233) = 513;
  *(v5 + 236) = 5;
  *(v5 + 27032) = 0;
  *(v5 + 27048) = 0;
  *(v5 + 27040) = 0;
  Geo2ECEF(v5 + 27032, &WGS84_Datum, (v5 + 27008));
  v11 = __sincos_stret(*(v5 + 27032));
  *(v5 + 27056) = v11;
  v12 = 1.0 / sqrt(v11.__sinval * v11.__sinval * -0.00669437999 + 1.0);
  v13 = *(v5 + 27048);
  v14 = v11.__cosval * (v13 + v12 * 6378137.0);
  if (v14 < 1.0)
  {
    v14 = 1.0;
  }

  *(v5 + 27080) = v14;
  result = v13 + v12 * (v12 * v12) * 6335439.33;
  *(v5 + 27072) = result;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

int *NK_Set_Dynamics(int *result, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  *a2 = xmmword_2997293A0;
  *(a2 + 16) = xmmword_2997293B0;
  *(a2 + 32) = 0x3F978D4FDF3B645ALL;
  v2 = *result;
  if (*result > 4)
  {
    if (v2 <= 6)
    {
      if (v2 == 5)
      {
        *(a2 + 40) = vdupq_n_s64(0x3FB9B9A5A89B951DuLL);
        *(a2 + 56) = 0x3FF0000000000000;
        *(a2 + 72) = 0x4039000000000000;
        *(a2 + 88) = 0x3FB0000000000000;
        v14 = 25.0;
        v5 = 0.0625;
LABEL_35:
        *(a2 + 80) = v5 * v14;
        *(a2 + 64) = v5;
        goto LABEL_36;
      }

      if (v2 == 6)
      {
        __asm { FMOV            V0.2D, #1.0 }

        *(a2 + 40) = _Q0;
        *(a2 + 56) = 0x3FF0000000000000;
        v12 = 0x4059000000000000;
        *(a2 + 72) = 0x4059000000000000;
        *(a2 + 88) = 0x3FD0000000000000;
        v5 = 0.25;
LABEL_33:
        v14 = *&v12;
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v2 == 7)
    {
      v6 = 25.0;
      v13 = 400.0;
    }

    else
    {
      if (v2 != 8)
      {
        goto LABEL_22;
      }

      v13 = 1000000.0;
      v6 = 1.0e10;
    }

    *(a2 + 40) = v6;
    *(a2 + 48) = v6;
    *(a2 + 56) = 0x3FF0000000000000;
    goto LABEL_27;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = 4.0;
      v5 = 0.01;
      goto LABEL_20;
    }

    if (v2 == 4)
    {
      v4 = 9.0;
      v5 = 0.00694444444;
LABEL_20:
      v6 = 0.100489;
      goto LABEL_21;
    }

LABEL_22:
    v3 = 0x4202A05F20000000;
    goto LABEL_23;
  }

  v3 = 0;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v4 = 0.25;
      v5 = 0.0204081633;
      v6 = 0.04;
LABEL_21:
      *(a2 + 40) = v6;
      *(a2 + 48) = v6;
      *(a2 + 56) = 0x3FF0000000000000;
      *(a2 + 72) = v4;
      *(a2 + 88) = v5;
LABEL_31:
      *(a2 + 80) = v5 * v4;
      *(a2 + 64) = v5;
      *(a2 + 48) = v6 * 0.5;
      goto LABEL_36;
    }

    goto LABEL_22;
  }

LABEL_23:
  v6 = 1.0e10;
  if (v2 < 2)
  {
    v6 = 0.0;
  }

  *(a2 + 40) = v3;
  *(a2 + 48) = v6;
  *(a2 + 56) = 0x3FF0000000000000;
  v13 = 1000000.0;
  if (v2 < 2)
  {
    v13 = 0.0;
  }

LABEL_27:
  *(a2 + 72) = v13;
  *(a2 + 88) = 0x3FF0000000000000;
  v4 = 0.0;
  v5 = 1.0;
  if (v2 < 2)
  {
    goto LABEL_31;
  }

  if (v2 == 7)
  {
    v12 = 0x4079000000000000;
    goto LABEL_33;
  }

  if (v2 != 8)
  {
    v14 = 1000000.0;
    goto LABEL_35;
  }

  *(a2 + 80) = 0x412E848000000000;
  *(a2 + 64) = 0x3FF0000000000000;
  *(a2 + 24) = xmmword_2997293C0;
LABEL_36:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Set_XO_PN(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  *(a2 + 24) = xmmword_2997293D0;
  if (*(result + 248))
  {
    *(a2 + 24) = xmmword_2997293E0;
    v2 = *(result + 80);
    if ((v2 - 71) <= 0xFFFFFFAE)
    {
      if ((v2 - 101) >= 0xFFFFFF73)
      {
        if ((v2 - 96) >= 0xFFFFFF7D)
        {
          if ((v2 - 91) >= 0xFFFFFF87)
          {
            if ((v2 - 86) >= 0xFFFFFF91)
            {
              if ((v2 - 81) >= 0xFFFFFF9B)
              {
                v4 = vdup_n_s32((v2 - 76) < 0xFFFFFFA5);
                v5.i64[0] = v4.u32[0];
                v5.i64[1] = v4.u32[1];
                v3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), xmmword_299729450, xmmword_299729440);
              }

              else
              {
                v3 = xmmword_299729430;
              }
            }

            else
            {
              v3 = xmmword_299729420;
            }
          }

          else
          {
            v3 = xmmword_299729410;
          }
        }

        else
        {
          v3 = xmmword_299729400;
        }
      }

      else
      {
        v3 = xmmword_2997293F0;
      }

      *(a2 + 24) = v3;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void s_Nav_Kalman_SD::s_Nav_Kalman_SD(s_Nav_Kalman_SD *this)
{
  v9 = *MEMORY[0x29EDCA608];
  *(this + 4) = 0;
  v2 = this + 26920;
  *this = 0u;
  v3 = this + 8288;
  *(this + 20) = 0x500000002;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 132) = 0;
  *(this + 140) = 0u;
  *(this + 10) = 0u;
  *(this + 173) = 0;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 84) = 0;
  *(this + 20) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 230) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  bzero(this + 344, 0x498uLL);
  v4 = 0;
  *(this + 1528) = 0u;
  *(this + 97) = 0u;
  *(this + 380) = 1;
  *(this + 386) = 0;
  *(this + 1548) = 0;
  *(this + 98) = 0u;
  *(this + 99) = 0u;
  *(this + 100) = 0u;
  *(this + 1616) = 0;
  *(this + 408) = 1;
  *(this + 203) = 0;
  *(this + 1640) = 0u;
  *(this + 1656) = 0u;
  *(this + 1672) = 0u;
  *(this + 1687) = 0;
  *(this + 848) = 0;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  *(this + 1992) = 0u;
  *(this + 2008) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 1896) = 0u;
  *(this + 1912) = 0u;
  *(this + 1864) = 0u;
  *(this + 1880) = 0u;
  *(this + 1832) = 0u;
  *(this + 1848) = 0u;
  *(this + 1800) = 0u;
  *(this + 1816) = 0u;
  *(this + 1768) = 0u;
  *(this + 1784) = 0u;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 1704) = 0u;
  *(this + 1720) = 0u;
  do
  {
    v5 = this + v4;
    *(v5 + 522) = 0;
    *(v5 + 131) = 0uLL;
    *(v5 + 132) = 0uLL;
    v4 += 40;
  }

  while (v4 != 1920);
  for (i = 0; i != 1920; i += 40)
  {
    v7 = this + i;
    *(v7 + 1002) = 0;
    *(v7 + 251) = 0uLL;
    *(v7 + 252) = 0uLL;
  }

  *(this + 898) = 0;
  *(this + 1798) = 0;
  *(this + 900) = 0;
  *(this + 1802) = 0;
  bzero(this + 5928, 0x4E4uLL);
  *(this + 458) = 0u;
  *(this + 457) = 0u;
  *(this + 456) = 0u;
  *(this + 455) = 0u;
  *(this + 454) = 0u;
  *(this + 453) = 0u;
  *(this + 452) = 0u;
  *(this + 451) = 0u;
  *(this + 1836) = -1;
  *(this + 1035) = 0;
  *v3 = 0;
  *(this + 1391) = 0;
  *(this + 2784) = 0;
  *(this + 1405) = 0;
  *(this + 2812) = 0;
  *(this + 1440) = 0;
  v3[3240] = 0;
  *(this + 11448) = 0u;
  *(this + 11464) = 0u;
  *(this + 11480) = 0u;
  *(this + 11496) = 0u;
  *(this + 11512) = 0;
  *(this + 1452) = 0;
  v3[3336] = 0;
  *(this + 2884) = 0;
  *(this + 11544) = 0u;
  *(this + 11560) = 0u;
  *(this + 11576) = 0u;
  *(this + 11592) = 0u;
  *(this + 11608) = 0;
  v3[3344] = 0;
  *v2 = 0;
  *(v2 + 76) = 0;
  *(v2 + 188) = 0;
  bzero(this + 7348, 0x39FuLL);
  bzero(this + 8296, 0xAA6uLL);
  *(this + 2764) = 0;
  *(this + 690) = 0u;
  *(this + 689) = 0u;
  *(this + 1383) = 0;
  *(this + 692) = 0u;
  *(this + 11088) = 0;
  *(this + 11092) = 0u;
  *(this + 11108) = 0u;
  *(this + 11144) = 0u;
  *(this + 11159) = 0;
  *(this + 11164) = 0u;
  *(this + 11178) = 0;
  *(this + 11204) = 0;
  *(this + 11188) = 0u;
  *(this + 701) = 0u;
  *(this + 11232) = 0;
  *(this + 11256) = 0u;
  *(this + 11272) = 0u;
  *(this + 11288) = 0u;
  *(this + 11304) = 0u;
  *(this + 11320) = 0u;
  *(this + 11336) = 0u;
  *(this + 11352) = 0u;
  *(this + 11368) = 0u;
  *(this + 11384) = 0u;
  *(this + 11400) = 0u;
  *(this + 11416) = 0u;
  *(this + 11428) = 0u;
  bzero(this + 11636, 0x3B6CuLL);
  *(this + 26992) = 0;
  *(this + 1686) = 0u;
  *(this + 1685) = 0u;
  *(this + 1684) = 0u;
  *(this + 1683) = 0u;
  *(this + 1688) = 0u;
  *(this + 1689) = 0u;
  *(this + 1690) = 0u;
  *(this + 1691) = 0u;
  *(this + 1692) = 0u;
  *(this + 1693) = 0u;
  *(this + 27104) = 0;
  v8 = *MEMORY[0x29EDCA608];
}

_BYTE *BDS_D1_EphBin2Int(_BYTE *result, int *a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (*result)
  {
    v3 = *a2;
    v4 = a2[1];
    *(a3 + 22) = (*a2 & 0x200) != 0;
    *(a3 + 19) = (v3 >> 4) & 0x1F;
    *(a3 + 21) = v3 & 0xF;
    *(a3 + 16) = (v4 >> 9) & 0x1FFF;
    *(a3 + 8) = ((v4 & 0x1FF) << 8) | (a2[2] >> 14);
    v5 = a2[2];
    *(a3 + 90) = ((4 * v5) >> 15) & 0xFC00 | (v5 >> 4) & 0x3FF;
    if ((v5 & 8) != 0)
    {
      v6 = *(a2 + 7) & 0x3F | ((v5 & 0xF) << 6) | 0xFC00;
    }

    else
    {
      v6 = *(a2 + 7) & 0x3F | ((v5 & 0xF) << 6);
    }

    *(a3 + 92) = v6;
    if ((a2[6] & 0x40) != 0)
    {
      v7 = ((a2[6] & 0x7F) << 17) | (a2[7] >> 5) & 0x1FFFF | 0xFF000000;
    }

    else
    {
      v7 = ((a2[6] & 0x7F) << 17) | (a2[7] >> 5) & 0x1FFFF;
    }

    *(a3 + 80) = v7;
    if ((a2[7] & 0x10) != 0)
    {
      v8 = ((a2[7] & 0x1F) << 17) | (a2[8] >> 5) & 0x1FFFF | 0xFFC00000;
    }

    else
    {
      v8 = ((a2[7] & 0x1F) << 17) | (a2[8] >> 5) & 0x1FFFF;
    }

    *(a3 + 84) = v8;
    *(a3 + 88) = ((a2[6] >> 2) >> 15) & 0xF800 | (a2[6] >> 7) & 0x7FF;
    *(a3 + 18) = a2[8] & 0x1F;
  }

  if (result[1])
  {
    v9 = a2[10];
    *(a3 + 50) = (*(a2 + 18) << 6) | BYTE2(v9) & 0x3F;
    v10 = (4 * v9) | (a2[11] >> 20) & 3;
    if ((v9 & 0x8000) != 0)
    {
      v10 |= 0xFFFC0000;
    }

    *(a3 + 56) = v10;
    *(a3 + 24) = (a2[11] << 12) | (a2[12] >> 10) & 0xFFF;
    *(a3 + 28) = a2[13] & 0x3FFFFF | (a2[12] << 22);
    *(a3 + 60) = (a2[14] << 10 >> 31) & 0xFFFC0000 | (a2[14] >> 4) & 0x3FFFF;
    if ((a2[14] & 8) != 0)
    {
      v11 = ((a2[14] & 0xF) << 14) | (a2[15] >> 8) & 0x3FFF | 0xFFFC0000;
    }

    else
    {
      v11 = ((a2[14] & 0xF) << 14) | (a2[15] >> 8) & 0x3FFF;
    }

    *(a3 + 64) = v11;
    if ((a2[15] & 0x80) != 0)
    {
      v12 = (a2[15] << 10) | (a2[16] >> 12) & 0x3FF | 0xFFFC0000;
    }

    else
    {
      v12 = (a2[15] << 10) | (a2[16] >> 12) & 0x3FF;
    }

    *(a3 + 68) = v12;
    *(a3 + 32) = (a2[16] << 20) | (a2[17] >> 2) & 0xFFFFF;
  }

  if (result[2])
  {
    if (result[1])
    {
      v13 = vand_s8(vshl_u32(*(a2 + 17), 0x50000000FLL), 0x7FE000018000);
      *(a3 + 12) = vorr_s8(vdup_lane_s32(v13, 1), v13).u32[0] | (a2[19] >> 17) & 0x1F;
    }

    *(a3 + 40) = (a2[19] << 15) | (a2[20] >> 7) & 0x7FFF;
    if ((a2[20] & 0x40) != 0)
    {
      v14 = ((a2[20] & 0x7F) << 11) | (a2[21] >> 11) & 0x7FF | 0xFFFC0000;
    }

    else
    {
      v14 = ((a2[20] & 0x7F) << 11) | (a2[21] >> 11) & 0x7FF;
    }

    *(a3 + 72) = v14;
    if ((a2[21] & 0x400) != 0)
    {
      v15 = ((a2[21] & 0x7FF) << 13) | (a2[22] >> 9) & 0x1FFF | 0xFF000000;
    }

    else
    {
      v15 = ((a2[21] & 0x7FF) << 13) | (a2[22] >> 9) & 0x1FFF;
    }

    *(a3 + 52) = v15;
    if ((a2[22] & 0x100) != 0)
    {
      v16 = ((a2[22] & 0x1FF) << 9) | (a2[23] >> 13) & 0x1FF | 0xFFFC0000;
    }

    else
    {
      v16 = ((a2[22] & 0x1FF) << 9) | (a2[23] >> 13) & 0x1FF;
    }

    *(a3 + 76) = v16;
    v17 = a2[23];
    v18 = a2[24];
    if ((v17 & 0x1000) != 0)
    {
      v19 = (2 * (v17 & 0x1FFF)) | (v18 >> 21) & 1 | 0xC000;
    }

    else
    {
      v19 = (2 * (v17 & 0x1FFF)) | (v18 >> 21) & 1;
    }

    *(a3 + 48) = v19;
    *(a3 + 36) = (v18 << 11) | (a2[25] >> 11) & 0x7FF;
    *(a3 + 44) = (a2[25] << 21) | (a2[26] >> 1) & 0x1FFFFF;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t STEU_Checksum_OK(char *a1)
{
  v1 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  v3 = 3;
  do
  {
    if (!v2 || ((v4 = a1[v3 - 1], v4 != 10) ? (v5 = v4 == 13) : (v5 = 1), v5))
    {
      result = 0;
      goto LABEL_11;
    }

    v1 += v2;
    ++v3;
    v2 = v4;
  }

  while (v4 != 125);
  v8 = 0;
  v9[0] = a1[v3 - 1];
  v9[1] = a1[v3];
  result = AscToU1(v9, &v8);
  if (result)
  {
    result = v8 == v1;
  }

LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Comp_NEDvar_UDU(uint64_t result, unsigned int a2, int a3, double (*a4)[3], double *a5)
{
  v5 = 0;
  v39[9] = *MEMORY[0x29EDCA608];
  v6 = a3;
  do
  {
    v7 = v6++;
    v8 = (v7 * v7 + v7) >> 1;
    v9 = (v5 + a3);
    v10 = (v9 * v9 + v9) >> 1;
    v11 = &v39[3 * v5];
    v12 = v5;
    v13 = v6;
    do
    {
      v14 = (v12 + a3);
      if (v5 == v12)
      {
        v15 = *(result + 8 * (v10 + (v5 + a3)));
        v16 = v14 + 1;
      }

      else
      {
        v16 = v14 + 1;
        v17 = v9 + (((v14 + 1) * v14) >> 1);
        if (v9 >= v14)
        {
          v17 = v10 + v14;
        }

        v15 = *(result + 8 * (v14 + ((v16 * v14) >> 1))) * *(result + 8 * v17);
      }

      v18 = v13;
      *&v11[v12] = v15;
      if (a2 > v16)
      {
        v19 = v13;
        v20 = v13 * v13 + v13;
        v21 = 2 * v18 + 2;
        v22 = v18 + ((v16 * v7) >> 1);
        do
        {
          v23 = v19 + (v20 >> 1);
          v24 = v19 + v19 * v19;
          v25 = v8 + v19;
          if (v19 > v9)
          {
            v25 = v9 + (v24 >> 1);
          }

          v26 = v19 > v14;
          v27 = v19 + 1;
          v28 = v14 + (v24 >> 1);
          if (!v26)
          {
            v28 = v22;
          }

          v15 = v15 + *(result + 8 * v23) * *(result + 8 * v25) * *(result + 8 * v28);
          ++v22;
          v20 += v21;
          v21 += 2;
          v19 = v27;
        }

        while (v27 < a2);
        *&v11[v12] = v15;
      }

      *&v39[3 * v12++ + v5] = v15;
      v13 = v18 + 1;
      ++v7;
    }

    while (v12 != 3);
    ++v5;
  }

  while (v5 != 3);
  v29 = 0;
  v30 = 0.0;
  v31 = a4;
  do
  {
    v32 = 0;
    v33 = v39;
    v34 = 0.0;
    do
    {
      v35 = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + *&v33[v35] * (*v31)[v35];
        ++v35;
      }

      while (v35 != 3);
      if (!v29)
      {
        v30 = v30 + v36 * (*a4)[v32 + 3];
      }

      v34 = v34 + v36 * (*a4)[3 * v29 + v32++];
      v33 += 3;
    }

    while (v32 != 3);
    a5[v29++] = v34;
    ++v31;
  }

  while (v29 != 3);
  for (i = 0; i != 3; ++i)
  {
    if (a5[i] <= 0.00000001)
    {
      a5[i] = 0.00000001;
    }
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Get_Best_NSSS(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = (a4 - 1);
  if (a4 - 1 < 0)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    v7 = (a1 + 36 * v4 + 8);
    v8 = (a2 + 48 * v4 + 12);
    v9 = 0xFFFFFFFFLL;
    do
    {
      if (Is_Legal(*(v7 - 2)))
      {
        v10 = *(v7 - 4);
        if (v10 >= a3 && (*v7 & 8) != 0 && (*v7 & 0x300) != 0x300 && *(v8 - 8) == 1 && v8[3] == 1)
        {
          v12 = v10 + 6 * *v8;
          if (v12 <= v6)
          {
            v9 = v9;
          }

          else
          {
            v6 = v12;
            v9 = v4;
          }
        }
      }

      v7 -= 18;
      v8 -= 48;
    }

    while (v4-- > 0);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t GncP27_30PopulateRawMeas(uint64_t a1, unsigned __int16 *a2)
{
  v81 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 64);
  if (*(a1 + 64))
  {
    if (v4 >= 0x101)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigMeas Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 64));
        LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
        result = 0;
      }

      goto LABEL_66;
    }

    result = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 403, v4, 0xB0uLL);
    *(a2 + 9) = result;
    if (!result)
    {
      goto LABEL_66;
    }
  }

  v8 = *(a1 + 51432);
  if (*(a1 + 51432))
  {
    if (v8 >= 0x101)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 51432));
        LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
      }

      goto LABEL_15;
    }

    v11 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 421, v8, 0x68uLL);
    *(a2 + 31) = v11;
    if (!v11)
    {
LABEL_15:
      v15 = *(a2 + 9);
      if (v15)
      {
        free(v15);
      }

      result = 0;
      *(a2 + 9) = 0;
      goto LABEL_66;
    }
  }

  v12 = *(a1 + 78064);
  if (*(a1 + 78064))
  {
    if (v12 >= 0x101)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 78064));
        LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
      }

      goto LABEL_60;
    }

    v16 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 441, v12, 0x138uLL);
    *(a2 + 33) = v16;
    if (!v16)
    {
LABEL_60:
      v72 = *(a2 + 9);
      if (v72)
      {
        free(v72);
      }

      *(a2 + 9) = 0;
      v73 = *(a2 + 31);
      if (v73)
      {
        free(v73);
      }

      result = 0;
      *(a2 + 31) = 0;
      goto LABEL_66;
    }
  }

  *a2 = *a1;
  *(a2 + 4) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 24);
  *(a2 + 20) = *(a1 + 40);
  *(a2 + 14) = *(a1 + 56);
  v17 = *(a1 + 64);
  a2[32] = v17;
  v79 = a2;
  if (v17)
  {
    v18 = 0;
    v19 = a1 + 270;
    v20 = 172;
    do
    {
      v21 = *(a2 + 9);
      v22 = v21 + v20;
      *(v21 + v20 - 172) = *(v19 - 198);
      *(v22 - 170) = GncP07_01PopulateSigId(*(v19 - 194));
      *(v22 - 169) = GncP07_09PopulateConstellId(*(v19 - 190));
      *(v22 - 168) = *(v19 - 186);
      *(v22 - 164) = *(v19 - 182);
      *(v22 - 148) = *(v19 - 166);
      *(v22 - 140) = *(v19 - 158);
      *(v22 - 132) = *(v19 - 150);
      *(v22 - 116) = *(v19 - 134);
      *(v22 - 108) = *(v19 - 118);
      *(v22 - 100) = *(v19 - 110);
      *(v22 - 98) = *(v19 - 108);
      *(v22 - 92) = *(v19 - 102);
      *(v22 - 76) = *(v19 - 86);
      *(v22 - 60) = GncP07_02PopulateMeasMdl(*(v19 - 70));
      *(v22 - 59) = GncP07_02PopulateMeasMdl(*(v19 - 66));
      *(v22 - 58) = *(v19 - 62);
      *(v22 - 54) = *(v19 - 58);
      *(v22 - 52) = *(v19 - 54);
      v23 = *(v19 - 46);
      if (v23 == 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *(v22 - 44) = v25;
      *(v22 - 36) = *(v19 - 38);
      *(v22 - 20) = *(v19 - 22);
      v26 = *(v19 - 6);
      if (v26 >= 3)
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        LOBYTE(v27) = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MPath,%u\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 87, "GncP07_04PopulateMPath", 770, v26);
          LbsOsaTrace_WriteLog(8u, __str, v30, 2, 1);
          LOBYTE(v27) = 0;
        }
      }

      else
      {
        v27 = *(v19 - 6);
      }

      v31 = v21 + v20;
      *(v31 - 4) = v27;
      *(v31 - 2) = *(v19 - 2);
      a2 = v79;
      if (v18 > 0xFE)
      {
        break;
      }

      v19 += 200;
      ++v18;
      v20 += 176;
    }

    while (v18 < v79[32]);
  }

  *(a2 + 20) = *(a1 + 51272);
  *(a2 + 84) = *(a1 + 51276);
  *(a2 + 43) = *(a1 + 51278);
  *(a2 + 94) = *(a1 + 51286);
  *(a2 + 18) = *(a1 + 51336);
  *(a2 + 25) = *(a1 + 51392);
  *(a2 + 13) = *(a1 + 51400);
  *(a2 + 14) = *(a1 + 51416);
  a2[45] = *(a1 + 51282);
  *(a2 + 92) = *(a1 + 51284);
  *(a2 + 93) = *(a1 + 51285);
  a2[48] = *(a1 + 51288);
  *(a2 + 25) = *(a1 + 51292);
  *(a2 + 52) = *(a1 + 51296);
  *(a2 + 15) = *(a1 + 51312);
  a2[64] = *(a1 + 51320);
  *(a2 + 130) = *(a1 + 51322);
  *(a2 + 17) = *(a1 + 51328);
  a2[76] = *(a1 + 51344);
  *(a2 + 39) = *(a1 + 51348);
  *(a2 + 10) = *(a1 + 51352);
  a2[88] = *(a1 + 51368);
  *(a2 + 45) = *(a1 + 51372);
  *(a2 + 92) = *(a1 + 51376);
  v32 = *(a1 + 51432);
  a2[120] = v32;
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    v35 = a1 + 51440;
    v36 = a1 + 51464;
    do
    {
      v37 = *(a2 + 31);
      *(v37 + v33) = *(v35 + v33);
      v38 = *(a1 + 51444 + v33);
      if (v38 >= 5)
      {
        v40 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        LOBYTE(v39) = 0;
        if (v40)
        {
          bzero(__str, 0x410uLL);
          v41 = mach_continuous_time();
          v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Glon SlotSrc,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 87, "GncP07_05PopulateGLOSloNSrc", 770, v38);
          LbsOsaTrace_WriteLog(8u, __str, v42, 2, 1);
          LOBYTE(v39) = 0;
        }
      }

      else
      {
        v39 = *(a1 + 51444 + v33);
      }

      v43 = v37 + v33;
      *(v43 + 2) = v39;
      *(v43 + 8) = *(a1 + 51448 + v33);
      v44 = *(v36 + v33);
      if (v44 >= 5)
      {
        v46 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        LOBYTE(v45) = 0;
        if (v46)
        {
          bzero(__str, 0x410uLL);
          v47 = mach_continuous_time();
          v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVtimeSrc,%u\n", (*&g_MacClockTicksToMsRelation * v47), "GNC", 87, "GncP07_06PopulateSVTimeSrc", 770, v44);
          LbsOsaTrace_WriteLog(8u, __str, v48, 2, 1);
          LOBYTE(v45) = 0;
        }
      }

      else
      {
        v45 = *(v36 + v33);
      }

      v49 = v37 + v33;
      *(v49 + 24) = v45;
      *(v49 + 25) = *(v35 + v33 + 28);
      *(v49 + 32) = *(a1 + v33 + 51472);
      *(v49 + 48) = *(a1 + v33 + 51488);
      *(v49 + 64) = *(a1 + v33 + 51504);
      *(v49 + 80) = *(a1 + v33 + 51520);
      *(v49 + 96) = *(a1 + 51536 + v33);
      a2 = v79;
      if (v34 > 0xFE)
      {
        break;
      }

      ++v34;
      v33 += 104;
    }

    while (v34 < v79[120]);
  }

  v50 = *(a1 + 78064);
  a2[128] = v50;
  if (v50)
  {
    v51 = 0;
    v75 = a1 + 78072;
    v52 = a1 + 78268;
    v77 = (a1 + 78352);
    v78 = 0;
    v53 = (a1 + 78168);
    v54 = 48;
    do
    {
      v55 = v75 + 344 * v51;
      v76 = *(a2 + 33);
      v56 = v76 + 312 * v51;
      *v56 = GncP07_09PopulateConstellId(*v55);
      *(v56 + 2) = *(v55 + 4);
      *(v56 + 4) = *(v55 + 6);
      *(v56 + 144) = *(v55 + 144);
      *(v56 + 160) = GncP07_07PopulateHIState(*(v55 + 160));
      *(v56 + 161) = GncP07_07PopulateHIState(*(v55 + 164));
      *(v56 + 162) = GncP07_07PopulateHIState(*(v55 + 168));
      *(v56 + 163) = GncP07_07PopulateHIState(*(v55 + 172));
      *(v56 + 164) = GncP07_07PopulateHIState(*(v55 + 176));
      *(v56 + 168) = *(v55 + 184);
      v57 = *(v55 + 192);
      *(v56 + 176) = v57;
      if (v57)
      {
        v58 = 0;
        v59 = v77;
        v60 = v76 + v78;
        v61 = 184;
        do
        {
          *(v60 + v58 + 178) = GncP07_01PopulateSigId(*(v52 + 4 * v58));
          v62 = (v60 + v61);
          *v62 = *(v59 - 8);
          v62[4] = *(v59 - 4);
          v62[8] = *v59;
          v62[12] = v59[4];
          if (v58 > 2)
          {
            break;
          }

          ++v58;
          v61 += 8;
          ++v59;
        }

        while (v58 < *(v56 + 176));
      }

      v63 = *(v55 + 8);
      if (v63 >= 5)
      {
        v65 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        LOBYTE(v64) = 0;
        if (v65)
        {
          bzero(__str, 0x410uLL);
          v66 = mach_continuous_time();
          v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVPosSrc,%u\n", (*&g_MacClockTicksToMsRelation * v66), "GNC", 87, "GncP07_08PopulateSvPosSrc", 770, v63);
          LbsOsaTrace_WriteLog(8u, __str, v67, 2, 1);
          LOBYTE(v64) = 0;
        }
      }

      else
      {
        v64 = *(v55 + 8);
      }

      *(v56 + 8) = v64;
      *(v56 + 16) = *(v55 + 16);
      *(v56 + 120) = *(v55 + 120);
      *(v56 + 136) = *(v55 + 136);
      v68 = (v76 + v54);
      v69 = v53;
      v70 = 3;
      do
      {
        *(v68 - 3) = *(v69 - 9);
        *v68 = *(v69 - 6);
        v68[3] = *(v69 - 3);
        v71 = *v69++;
        v68[6] = v71;
        ++v68;
        --v70;
      }

      while (v70);
      result = 1;
      a2 = v79;
      if (v51 > 0xFE)
      {
        break;
      }

      ++v51;
      v52 += 344;
      v77 += 43;
      v78 += 312;
      v54 += 312;
      v53 += 43;
    }

    while (v51 < v79[128]);
  }

  else
  {
    result = 1;
  }

LABEL_66:
  v74 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP07_01PopulateSigId(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 0xA)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_01PopulateSigId", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GncP07_09PopulateConstellId(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 7)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_09PopulateConstellId", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GncP07_02PopulateMeasMdl(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasModel,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_02PopulateMeasMdl", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GncP07_07PopulateHIState(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 3)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HIState,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP07_07PopulateHIState", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

BOOL R8_EQ(const double *a1, const double *a2)
{
  v2 = *a1;
  v3 = *a1 | 0x8000000000000000;
  if (*a1 < 0)
  {
    v3 = -v2;
  }

  v4 = *a2;
  v5 = *a2 | 0x8000000000000000;
  if (*a2 < 0)
  {
    v5 = -v4;
  }

  v6 = ~v2 & 0x7FF0000000000000;
  v7 = v2 & 0xFFFFFFFFFFFFFLL;
  v8 = ~v4 & 0x7FF0000000000000;
  v9 = v4 & 0xFFFFFFFFFFFFFLL;
  v10 = v5 - v3;
  v11 = v3 >= v5;
  v12 = v3 - v5;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = v12 < 4;
  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 == 0;
  }

  if (!v14)
  {
    v13 = 0;
  }

  if (v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7 == 0;
  }

  result = v15 && v13;
  v17 = *MEMORY[0x29EDCA608];
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t posp_HandlePospInitMsg()
{
  v7 = *MEMORY[0x29EDCA608];
  if (GNS_PospInitialize(pos_protocol_PospCallback) && GNS_PpduInitialize(pos_protocol_PpduCallback))
  {
    RRLP_Bridge_init();
    LPP_Bridge_init();
    posp_TimerInit();
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 69, "posp_HandlePospInitMsg", 258);
      LbsOsaTrace_WriteLog(0x13u, __str, v1, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP Initialization failed\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 69, "posp_HandlePospInitMsg", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 0, 1);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t posp_HandlePospReqMsg(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "posp_HandlePospReqMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = *v1;
  if (*v1 > 1)
  {
    switch(v4)
    {
      case 4:
LABEL_59:
        HandlePPDUSessionEND(v1 + 2);
        goto LABEL_68;
      case 3:
        v7 = *(v1 + 12);
        if (v7)
        {
          v5 = *(v7 + 16);
LABEL_14:
          v6 = 76;
LABEL_15:
          v8 = *&v1[v6];
          if (v8 > 1)
          {
            if (v8 == 3)
            {
              v9 = 2;
LABEL_34:
              v15 = *(v1 + 3);
              if (v15 != 1)
              {
                if (v15)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v19 = mach_continuous_time();
                    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Session Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 69, "ConvertSessionType", 770, v15);
                    v18 = 0;
                    goto LABEL_40;
                  }
                }

                else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v16 = mach_continuous_time();
                  v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown Session Protocol\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 87, "ConvertSessionType", 770);
                  v18 = 2;
LABEL_40:
                  LbsOsaTrace_WriteLog(0x13u, __str, v17, v18, 1);
                }
              }

              session_info = gps_find_session_info(*(v1 + 2));
              if (session_info)
              {
                *(session_info + 8) = v9;
                *session_info = *(v1 + 2);
                *(session_info + 4) = 1;
                *(session_info + 14) = v1[17];
                if (*v1 == 3)
                {
                  *(session_info + 15) = v5;
                }

                if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
                {
                  goto LABEL_54;
                }

                bzero(__str, 0x410uLL);
                v21 = mach_continuous_time();
                v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Session exists with Handle,%u\n", (*&g_MacClockTicksToMsRelation * v21), "PSP", 73, "GeneratePPDUSession", *(v1 + 2));
                v23 = 4;
                goto LABEL_53;
              }

              v43 = -1;
              memset(&v34[2], 0, 27);
              v48 = 0;
              memset(v49, 0, sizeof(v49));
              *&v33[1] = -1;
              v24 = v1[17];
              if (*v1 == 3)
              {
                v25 = v5;
              }

              else
              {
                v25 = -1;
              }

              *__str = *(v1 + 2);
              v36 = 1;
              v37 = v9;
              v38 = 0;
              v39 = v24;
              v40 = v25;
              v41 = 0;
              v42 = 0xFFFFFFFF00000000;
              *v44 = *v34;
              *&v44[13] = *&v34[13];
              v45 = 0xFFFFFFFF00000000;
              v46 = 0;
              v47 = xmmword_2997286D0;
              v50 = -1;
              v51 = 0;
              v52 = 0;
              v53 = -1;
              v54 = 0;
              v55 = -1;
              v56 = -1;
              v58 = -1;
              v57 = *v33;
              v59 = -1;
              v60 = 0x7FFFFFFFLL;
              v61 = 0;
              v62 = -1;
              v63 = -COERCE_DOUBLE(0x8000000080000000);
              v64 = 0;
              v65 = 0;
              v66 = 0;
              if (gps_create_session_info_ext(__str) || !LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                goto LABEL_54;
              }

              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Create Session\n");
LABEL_52:
              v22 = v13;
              v23 = 0;
LABEL_53:
              LbsOsaTrace_WriteLog(0x13u, __str, v22, v23, 1);
              goto LABEL_54;
            }

            if (v8 == 2)
            {
              v9 = 1;
              goto LABEL_34;
            }
          }

          else
          {
            if (!v8)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                mach_continuous_time();
                v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol is Unknown\n");
                goto LABEL_31;
              }

LABEL_32:
              v9 = 0;
              goto LABEL_34;
            }

            if (v8 == 1)
            {
              goto LABEL_32;
            }
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", v32);
LABEL_31:
            LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        break;
      case 2:
        break;
      default:
        goto LABEL_22;
    }

    v5 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_63;
  }

  if (v4 == 1)
  {
    v5 = 0;
    v6 = 96;
    goto LABEL_15;
  }

LABEL_22:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU msgType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "GeneratePPDUSession", 770, *v1);
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
  }

  v12 = *v1;
  if ((*v1 | 4) != 4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
LABEL_54:
      v12 = *v1;
      goto LABEL_55;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Session Info\n");
    goto LABEL_52;
  }

LABEL_55:
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        HandlePPDUSessionData(v1 + 2);
        goto LABEL_68;
      }

      goto LABEL_66;
    }

LABEL_63:
    HandlePPDUCapUpdate(v1 + 2);
    goto LABEL_68;
  }

  switch(v12)
  {
    case 2:
      HandlePPDUCapReq((v1 + 8));
      goto LABEL_68;
    case 3:
      HandlePPDUAssistDataReq((v1 + 8));
      goto LABEL_68;
    case 4:
      goto LABEL_59;
  }

LABEL_66:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", (*&g_MacClockTicksToMsRelation * v26), "PSP", 69, "posp_HandlePospReqMsg", 770, *v1);
    LbsOsaTrace_WriteLog(0x13u, __str, v27, 0, 1);
  }

LABEL_68:
  MEMORY[0x29C29EB20](v1, 0x1032C4083C19586);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "PSP", 68, "posp_HandlePospReqMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v29, 5, 1);
  }

  v30 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t posp_HandlePospRspMsg(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 65, "posp_HandlePospRspMsg", *v2);
    LbsOsaTrace_WriteLog(0x13u, __str, v4, 1, 1);
  }

  session_info = gps_find_session_info(*(a1 + 24));
  if (session_info)
  {
    v6 = session_info;
    v7 = *v2;
    if (*v2 - 1 >= 2)
    {
      if (v7 == 3)
      {
        goto LABEL_25;
      }

      if (v7 != 4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v25 = *v2;
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", (*&g_MacClockTicksToMsRelation * v11));
          goto LABEL_19;
        }

LABEL_28:
        MEMORY[0x29C29EB20](v2, 0x1022C406FC2E6EELL);
        goto LABEL_29;
      }

      if (v2[3] != 1)
      {
LABEL_26:
        send_api_status(v2 + 2, *(session_info + 8), *(session_info + 12), *(session_info + 5));
        goto LABEL_28;
      }
    }

    if (*(session_info + 16))
    {
      if (v7 <= 2)
      {
        if (v7 != 1)
        {
          send_position_response(v2 + 2, *(session_info + 8), *(session_info + 12), *(session_info + 5));
          v16 = *(v2 + 2);
          v17 = *(v2 + 6);
          v18 = *(v2 + 14);
          *(v6 + 96) = *(v2 + 10);
          *(v6 + 112) = v18;
          *(v6 + 64) = v16;
          *(v6 + 80) = v17;
          v19 = *(v2 + 18);
          v20 = *(v2 + 22);
          v21 = *(v2 + 26);
          *(v6 + 176) = *(v2 + 15);
          *(v6 + 144) = v20;
          *(v6 + 160) = v21;
          *(v6 + 128) = v19;
          v22 = *(v6 + 60);
          *(v6 + 184) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v22;
          goto LABEL_28;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MSA not enabled\n");
LABEL_19:
          LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if (v7 == 3)
      {
LABEL_25:
        send_assistance_req(v2 + 2, *(session_info + 8));
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    MEMORY[0x29C29EB20](v2, 0x1022C406FC2E6EELL);
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No Msr Pos Req\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "posp_HandlePospRspMsg", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 68, "posp_HandlePospRspMsg");
      LbsOsaTrace_WriteLog(0x13u, __str, v15, 5, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "posp_HandlePospRspMsg", 2052, *(a1 + 24));
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    }

    if (v2)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t posp_HandleWlanMsg(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 65, "posp_HandleWlanMsg", *(a1 + 13));
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 1, 1);
  }

  v4 = *(a1 + 13);
  switch(v4)
  {
    case 4:
      HandleWlanCbInit(*(a1 + 16));
      break;
    case 6:
      send_wlan_meas(*(a1 + 16));
      break;
    case 5:
      v5 = *(a1 + 16);
      HandleWlanCapUpdate(v5);
      if (v5)
      {
        free(v5);
      }

      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 69, "posp_HandleWlanMsg", 770, *(a1 + 13));
        LbsOsaTrace_WriteLog(0x13u, __str, v7, 0, 1);
      }

      break;
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t posp_HandlePospShutdownMsg()
{
  v2 = *MEMORY[0x29EDCA608];
  gps_delete_all_sessions();
  RRLP_Bridge_de_init();
  LPP_Bridge_de_init();
  posp_TimerDeInit();
  GNS_PospInitialize(0);
  GNS_PpduInitialize(0);
  v0 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t posp_HandlePospTimerMsg(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "posp_HandlePospTimerMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  posp_TimerExpiry(*(a1 + 4));
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_HandlePospTimerMsg");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t POSP_0IgnoreMessage()
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 69, "POSP_0IgnoreMessage", 519);
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 0, 1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t SuplPospPostMessage(unsigned __int8 *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplPospPostMessage");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = gnssOsa_Calloc("SuplPospPostMessage", 99, 1, 0x20uLL);
  if (a1 && v4)
  {
    v5 = *a1;
    v4[12] = v5;
    v4[13] = a1[1];
    *(v4 + 6) = *(a1 + 4);
    *(v4 + 2) = *(a1 + 1);
    AgpsSendFsmMsg(133, 133, v5, v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    v7 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "SuplPospPostMessage");
      LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
      v7 = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msg is NULL or memory allocation failed\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "SuplPospPostMessage", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
    }

    v7 = -1;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t POSP0_00Init(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: POSP Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "SuplPospInitialize");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  *__str = 1792;
  v5 = 0;
  v6 = 0;
  result = SuplPospPostMessage(__str);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t POSP0_01DeInit(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: POSP De-Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "SuplPospShutDown");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  *__str = 1796;
  v5 = 0;
  v6 = 0;
  result = SuplPospPostMessage(__str);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void POSP0_02DestMissingHandler(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 73, "POSP0_02DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 4, 1);
  }

  if ((*(a1 + 4) - 1) > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 73, "POSP0_02DestMissingHandler", *(a1 + 4));
      LbsOsaTrace_WriteLog(0x13u, __str, v6, 4, 1);
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t Core_Get_TM_FSP_Time(unsigned int *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *a2 = 0;
  if (*p_NA != 1)
  {
    goto LABEL_9;
  }

  v4 = *(p_NA + 400);
  v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v6 = p_NA;
  v7 = *(p_NA + 404);
  v8 = **(p_api + 8) - v7;
  if (v5 - v4 <= 0xDBBA0 && (v8 - 900001) >= 0xFFF230D7)
  {
    if (*p_NA)
    {
      *a1 = *(p_NA + 400);
      *a2 = *(v6 + 404);
      result = 1;
      goto LABEL_10;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  EvCrt_v("Core_Get_TM_FSP_Time: WARNING: Deleted OS_Time %u Age %d TTick %u Age %d ms", *(p_NA + 400), v5 - v4, v7, v8);
  result = 0;
  v11 = p_NA;
  *p_NA = 0;
  *(v11 + 400) = 0;
LABEL_10:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Ref_Time(int a1, double *a2, __int16 *a3, double *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = p_NA;
  if (*(p_NA + 2) == 1)
  {
    v5 = a1 - *(p_NA + 412);
    if ((v5 - 900001) >= 0xFFF238A7)
    {
      *a2 = *(p_NA + 416);
      *a3 = *(v4 + 424);
      *a4 = *(v4 + 432);
      v8 = v5;
      Inc_GPS_TOW(v5 * 0.001, a2, a3);
      *a4 = *a4 + v8 * 0.00000001;
      result = 1;
    }

    else
    {
      result = 0;
      *(p_NA + 2) = 0;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Glon_Ref_Time(int a1, unsigned __int16 *a2, __int16 *a3, double *a4, double *a5)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = p_NA;
  if (*(p_NA + 3) == 1)
  {
    v6 = a1 - *(p_NA + 440);
    if ((v6 - 900001) >= 0xFFF238A7)
    {
      *a2 = *(p_NA + 444);
      *a3 = *(v5 + 446);
      *a4 = *(v5 + 448);
      *a5 = *(v5 + 456);
      v9 = v6;
      Inc_Glon_TOD(v6 * 0.001, a4, a3, a2);
      *a5 = *a5 + v9 * 0.00000001;
      result = 1;
    }

    else
    {
      result = 0;
      *(p_NA + 3) = 0;
    }
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_UTC_Ref_Time(int a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, unsigned __int16 *a8, double *a9)
{
  v25 = *MEMORY[0x29EDCA608];
  v9 = p_NA;
  if (*(p_NA + 4) == 1)
  {
    v10 = a1 - *(p_NA + 464);
    if ((v10 - 900001) >= 0xFFF238A7)
    {
      v24 = 0;
      v23 = 0.0;
      *a2 = *(p_NA + 468);
      *a3 = *(v9 + 470);
      *a4 = *(v9 + 472);
      *a5 = *(v9 + 474);
      *a6 = *(v9 + 476);
      *a7 = *(v9 + 478);
      v19 = *(v9 + 480);
      *a8 = v19;
      *a9 = *(v9 + 488);
      UTC_To_GPS_Time(&v24, &v23, *a2, *a3, *a4, *a5, *a6, *a7, 0.0, v19);
      v20 = v10 * 0.001 + v23;
      v23 = v20;
      v21 = v24;
      if (v20 >= 604800.0)
      {
        do
        {
          v20 = v20 + -604800.0;
          ++v21;
        }

        while (v20 >= 604800.0);
        v23 = v20;
        v24 = v21;
      }

      if (v20 < 0.0)
      {
        do
        {
          v20 = v20 + 604800.0;
          --v21;
        }

        while (v20 < 0.0);
        v23 = v20;
        v24 = v21;
      }

      GPS_To_UTC_Time(a2, a3, a4, a5, a6, a7, a8, v21, v20, 0.0);
      *a9 = *a9 + v10 * 0.00000001;
      result = 1;
    }

    else
    {
      result = 0;
      *(p_NA + 4) = 0;
    }
  }

  else
  {
    result = 0;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Get_FSP_Time(unsigned int a1, __int16 *a2, double *a3, double *a4, unsigned __int8 *a5)
{
  v38 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 5) != 1)
  {
    goto LABEL_20;
  }

  *v37 = 0;
  v36 = 0;
  v35 = 0;
  result = API_Get_FS_Pulse_TTick(&v36, &v35, &v37[1], v37);
  if (result)
  {
    v11 = v37[1];
    v12 = (v37[1] - v36) + v35 * -0.0000152587891;
    if (fabs(v12) > 60000.0)
    {
      EvCrt_v("Get_FSP_Time:  ERROR:  fabs(DeltaTTick) = fabs(%g) > %d", (v37[1] - v36) + v35 * -0.0000152587891, 60000);
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

    v34 = v36;
    v13 = *(p_api + 88);
    v14 = *(v13 + 888) / 299792458.0;
    v33 = v35;
    if (v14 > 0.000001)
    {
      EvLog("Get_FSP_Time:  Neglecting Clock Drift in FSP Time propogation!");
      v15 = 0.0;
      v14 = 0.000001;
    }

    else
    {
      v15 = *(v13 + 168);
    }

    v16 = 0;
    v17 = v37[0];
    v18 = v37[0] - v12;
    v19 = p_NA;
    v20 = p_NA + 520;
    v21 = 1;
    while (1)
    {
      v22 = v21;
      if (*(v19 + 5 + v16) == 1 && *(v20 + 8 * v16) > 0.0)
      {
        v23 = *(v19 + 512 + 2 * v16);
        *a3 = *(v19 + 496 + 8 * v16);
        v24 = *(v20 + 8 * v16);
        *a2 = v23;
        v25 = v24 * v24;
        *a4 = v25;
        v26 = *(v19 + 552 + 4 * v16);
        if (!*(v19 + 7))
        {
          break;
        }

        if (v26 >= v18 - 500 && v26 <= v18 + 400)
        {
          break;
        }
      }

      v21 = 0;
      v16 = 1;
      if ((v22 & 1) == 0)
      {
        v28 = "Get_FSP_Time:  WARNING:  No pulse found !";
LABEL_19:
        EvLog(v28);
        goto LABEL_20;
      }
    }

    v30 = a1 - v11;
    if (a1 == v11)
    {
      v31 = v17;
    }

    else
    {
      if (a1 < v11)
      {
        v28 = "Get_FSP_Time:  ReqTTick earlier than FSP FS_DBTT_TTick !";
        goto LABEL_19;
      }

      v31 = v17;
      v12 = v12 + v30;
    }

    v32 = (1.0 - v15) * (v12 * 0.001);
    *a4 = v25 + v14 * v32 * (v14 * v32);
    Inc_GPS_TOW(v32, a3, a2);
    EvLog_v("Get_FSP_Time:  %d %d %d %d %d %d %g %d %g %d %d %g %g", a1, v16, v34, v33, v31, v18, *(p_NA + 8 * v16 + 496), v26, v32, *a2, *a3, *a3 - *a3, *a4 * 1000000.0 * 1000000.0);
    *a5 = 2;
    result = 1;
  }

LABEL_21:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_GPS_TimePos(unsigned int a1, _BYTE *a2, char *a3, int *a4, _BYTE *a5, double *a6, double *a7, uint64_t a8, double *a9, double *a10)
{
  v27[3] = *MEMORY[0x29EDCA608];
  v24 = 0;
  v21 = 0.0;
  *a2 = 0;
  *a3 = 0;
  *a9 = 0.0;
  *a10 = 0.0;
  *a7 = 0.0;
  *a5 = 0;
  if (Get_FSP_Time(a1, &v24, a6, &v21, &v25))
  {
    *a7 = sqrt(v21) * 3.0;
    *a2 = 1;
  }

  v26 = 0;
  v22 = 0.0;
  v20 = 0;
  if (Core_Get_Pos_LLH(a1, 150000, 1, &v23, a8, v27, &v22, &v26, &v25, &v20, a4))
  {
    v16 = v26;
    if (v26 == 1)
    {
      *a9 = sqrt(v27[0]) * 3.0;
      *a10 = sqrt(v22) * 3.0;
      *a3 = v16;
    }
  }

  if (*a2)
  {
    v17 = 1;
  }

  else
  {
    v17 = *a3;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17 & 1;
}

uint64_t Core_Get_Pos_LLH(int a1, int a2, int a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7, _BYTE *a8, _BYTE *a9, int *a10, int *a11)
{
  v45 = *MEMORY[0x29EDCA608];
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v14 = p_NA;
  v15 = 367;
  v16 = 21000;
  do
  {
    if (*(v14 + v15) == 1)
    {
      v17 = *(p_api + 8);
      v18 = *v17;
      if (*v17)
      {
        v18 = *(v14 + v16) + v18 - v17[4];
      }

      v19 = a1 - v18;
      if (a1 - v18 <= -3001)
      {
        EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [i]", a1 - v18, a1, v18);
        v14 = p_NA;
        v19 = 999999000;
      }

      if (v19 > a2)
      {
        *(v14 + v15) = 0;
      }
    }

    ++v15;
    v16 += 80;
  }

  while (v15 != 373);
  if (*(v14 + 12))
  {
    v20 = *(p_api + 8);
    if (*v20)
    {
      v21 = *(v14 + 728) + *v20 - v20[4];
    }

    else
    {
      v21 = 0;
    }

    v22 = a1 - v21;
    if (a1 - v21 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [E911]", a1 - v21, a1, v21);
      v14 = p_NA;
      v22 = 999999000;
    }

    if (v22 > a2)
    {
      *(v14 + 12) = 0;
    }
  }

  if (*(v14 + 10) != 1)
  {
    result = 0;
    goto LABEL_66;
  }

  v23 = *(p_api + 8);
  if (*v23)
  {
    v24 = *(v14 + 608) + *v23 - v23[4];
  }

  else
  {
    v24 = 0;
  }

  v26 = a1 - v24;
  if (a1 - v24 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [0]", a1 - v24, a1, v24);
    v26 = 999999000;
  }

  if (v26 > a2)
  {
    result = 0;
    *(p_NA + 10) = 0;
    goto LABEL_66;
  }

  *a4 = v24;
  v27 = p_NA;
  v28 = *(p_NA + 632);
  *a5 = *(p_NA + 616);
  *(a5 + 16) = v28;
  v29 = *(v27 + 656);
  *a6 = *(v27 + 640);
  *(a6 + 16) = v29;
  *a7 = *(v27 + 688);
  *a8 = *(v27 + 11);
  *a9 = *(v27 + 720);
  v30 = *(v27 + 704);
  *a10 = v30;
  v31 = *(v27 + 696);
  if ((v31 - 1) <= 3)
  {
    *a11 = v31;
    goto LABEL_30;
  }

  *a11 = 0;
  EvCrt_Illegal_Default("Core_Get_Pos_LLH", 0x3C5u);
  v32 = p_NA;
  v33 = *(p_NA + 696);
  v30 = *a10;
  *a11 = v33;
  if (!v33)
  {
    if (v30 <= 3)
    {
      if (v30 > 1)
      {
        if (v30 != 2)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (!v30)
        {
          v30 = 1;
          goto LABEL_48;
        }

        if (v30 != 1)
        {
LABEL_67:
          EvLog("Core_Get_Pos_LLH: Warning, Un-defined Ref Position Source");
          *a11 = 1;
          v30 = *a10;
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v30 > 5)
      {
        if (v30 != 6)
        {
          if (v30 == 7 || v30 == 8)
          {
            *a11 = 2;
            goto LABEL_58;
          }

          goto LABEL_67;
        }

        goto LABEL_46;
      }

      if (v30 == 4)
      {
LABEL_46:
        v30 = 3;
        goto LABEL_48;
      }
    }

    v30 = 4;
LABEL_48:
    *a11 = v30;
LABEL_49:
    if (*(v32 + 11) == 1)
    {
      v34 = 0x412E848000000000;
      if (*a7 > 1000000.0 || (v34 = 0x4059000000000000, *a7 < 100.0))
      {
        *a7 = v34;
      }
    }

    if (*(v32 + 10) == 1 && *(a6 + 8) < 250000.0)
    {
      v35 = *a6;
      *(a6 + 8) = *a6;
      if (v35 < 250000.0)
      {
        *a6 = vdupq_n_s64(0x410E848000000000uLL);
      }

      *(a6 + 16) = 0;
    }

    goto LABEL_58;
  }

LABEL_30:
  if ((v30 - 7) >= 2)
  {
    v32 = p_NA;
    goto LABEL_49;
  }

LABEL_58:
  v36 = *a6;
  v37 = *(a6 + 8);
  if (*a6 < v37)
  {
    *(a6 + 8) = v36;
    *(a6 + 16) = 0;
    v37 = v36;
  }

  if (a3)
  {
    v38 = v26 * 0.015 * (v26 * 0.015);
    if (v37 < v38)
    {
      *(a6 + 8) = v36;
      if (v36 < v38)
      {
        *a6 = v38;
        *(a6 + 8) = v38;
      }

      *(a6 + 16) = 0;
    }
  }

  result = 1;
LABEL_66:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Set_Clk_Drift(_BYTE *a1, double *a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  EvLog_nd(a1, 3, a3, *a2, a2[1], *(a2 + 4));
  v4 = p_NA;
  *(p_NA + 560) = *a2;
  v5 = a2[1];
  v6 = *(a2 + 4);
  *(v4 + 568) = v5 * 0.000000001;
  *(v4 + 576) = v6 * 0.000000001 * (v6 * 0.000000001);
  *(v4 + 584) = 2;
  *(v4 + 8) = 1;
  if (fabs(v5) <= 30000.0)
  {
    if (v6 - 10001 > 0xFFFFD8EF)
    {
      result = 1;
      goto LABEL_7;
    }

    *(v4 + 8) = 0;
    EvCrt_v("%s FAILED: RMS_ppb = %g ==0ppm or >10ppm, Out of range!");
  }

  else
  {
    *(v4 + 8) = 0;
    EvCrt_v("%s FAILED: Calibration = %g >30ppm, Out of range!");
  }

  result = 0;
LABEL_7:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Clk_Drift(int a1, int a2, unsigned int *a3, double *a4, double *a5, unsigned __int8 *a6)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 8) != 1)
  {
    goto LABEL_5;
  }

  if (*(p_NA + 307) == 1 && *(p_NA + 19248) == 10)
  {
    EvLog("Core_Get_Clk_Drift: Ext Freq Assist skipped in Airborne mode");
LABEL_5:
    result = 0;
    goto LABEL_19;
  }

  v12 = *(p_api + 8);
  if (*v12)
  {
    v13 = *(p_NA + 560) + *v12 - v12[4];
  }

  else
  {
    v13 = 0;
  }

  v14 = a1 - v13;
  if (a1 - v13 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Clk_Drift", a1 - v13, a1, v13);
    v14 = 999999000;
  }

  if (v14 / 1000 <= a2)
  {
    *a3 = v13;
    v15 = p_NA;
    *a4 = *(p_NA + 568);
    *a5 = *(v15 + 576);
    *a6 = *(v15 + 584);
    v16 = 9.0e-16;
    if (*a5 < 9.0e-16 || (v16 = *a5, *a5 < 2.77777778e-14))
    {
      if (v14 > 899999)
      {
        *a5 = 2.77777778e-14;
      }

      else
      {
        *a5 = v16 + (2.77777778e-14 - v16) * (-((900 - v14 / 1000) * 0.00111111111 * ((900 - v14 / 1000) * 0.00111111111)) * ((900 - v14 / 1000) * 0.00111111111) + 1.0);
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
    *(p_NA + 8) = 0;
  }

LABEL_19:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Pos_H(int a1, int a2, double *a3, double *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = p_NA;
  if (*(p_NA + 11) == 1)
  {
    v8 = *(p_api + 8);
    v9 = *v8;
    if (*v8)
    {
      v9 = *(p_NA + 608) + v9 - v8[4];
    }

    v10 = a1 - v9;
    if (a1 - v9 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_H", a1 - v9, a1, v9);
      v4 = p_NA;
      v10 = 999999000;
    }

    if (v10 <= a2)
    {
      *a3 = *(v4 + 632);
      *a4 = *(v4 + 688);
      result = 1;
    }

    else
    {
      result = 0;
      *(v4 + 11) = 0;
    }
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Pos_E911(int a1, _OWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 12) == 1)
  {
    v3 = *(p_NA + 728);
    if (a1 - v3 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_E911", a1 - v3, a1, v3);
      v2 = p_NA;
LABEL_7:
      result = 0;
      *(v2 + 12) = 0;
      goto LABEL_8;
    }

    if (a1 - v3 >= 150001)
    {
      goto LABEL_7;
    }

    v5 = (p_NA + 728);
    *a2 = *(p_NA + 728);
    v6 = v5[1];
    v7 = v5[2];
    v8 = v5[4];
    a2[3] = v5[3];
    a2[4] = v8;
    a2[1] = v6;
    a2[2] = v7;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Static_Status(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 299) == 1)
  {
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = p_NA;
    v4 = *(p_NA + 19152);
    v5 = v2 - v4;
    if (v5 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Static_Status", v2 - v4, v2, v4);
      v3 = p_NA;
LABEL_7:
      result = 0;
      *(v3 + 299) = 0;
      goto LABEL_8;
    }

    if (v5 >= 2001)
    {
      goto LABEL_7;
    }

    *a1 = *(p_NA + 19156);
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_Ped_Status(_DWORD *a1, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 300) == 1)
  {
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = p_NA;
    v6 = *(p_NA + 19160);
    v7 = v4 - v6;
    if (v7 <= -3001)
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Ped_Status", v4 - v6, v4, v6);
      v5 = p_NA;
LABEL_7:
      result = 0;
      *(v5 + 300) = 0;
      goto LABEL_8;
    }

    if (v7 >= 2001)
    {
      goto LABEL_7;
    }

    *a1 = *(p_NA + 19164);
    *a2 = *(v5 + 19168);
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_DMS(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 301) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 19172);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 43200001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 19172);
      *(a2 + 8) = *(p_NA + 19180);
      *a2 = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_DMS", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 305) = 0;
  *(v2 + 301) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_UAC(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 307) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 19244);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 43200001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 19244);
      *(a2 + 8) = *(p_NA + 19252);
      *a2 = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_UAC", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 311) = 0;
  *(v2 + 307) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_FIV_Ind(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 313) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 19316);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 43200001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 19316);
      *(a2 + 8) = *(p_NA + 19324);
      *a2 = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_FIV_Ind", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 317) = 0;
  *(v2 + 313) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_Alt(int a1, _OWORD *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 325) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 19416);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 19432);
      *a2 = *(p_NA + 19416);
      a2[1] = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Alt", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 329) = 0;
  *(v2 + 325) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_MapV(int a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 331) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 19608);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = p_NA;
      *a2 = *(p_NA + 19608);
      v12 = *(v10 + 19640);
      v11 = *(v10 + 19656);
      v13 = *(v10 + 19624);
      *(a2 + 64) = *(v10 + 19672);
      *(a2 + 32) = v12;
      *(a2 + 48) = v11;
      *(a2 + 16) = v13;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_MapV", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 335) = 0;
  *(v2 + 331) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Get_ExtA_SpdC(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = p_NA;
  if (*(p_NA + 337) != 1)
  {
    goto LABEL_7;
  }

  v5 = *(p_NA + 20040);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 > -3001)
  {
    if (v7 >= 120001)
    {
      goto LABEL_5;
    }

    if (v7 <= a1)
    {
      v10 = *(p_NA + 20056);
      *a2 = *(p_NA + 20040);
      *(a2 + 16) = v10;
      result = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_SpdC", v6 - v5, v6, v5);
LABEL_5:
  result = 0;
  *(v2 + 341) = 0;
  *(v2 + 337) = 0;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}