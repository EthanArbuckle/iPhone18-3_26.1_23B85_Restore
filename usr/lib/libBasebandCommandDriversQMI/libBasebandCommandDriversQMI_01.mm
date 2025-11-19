void sub_296EDB9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, const void *a27, __int16 a28, char a29, char a30)
{
  operator delete(v31);
  std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::destroy(a25);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a27);
  _Block_object_dispose((v32 - 192), 8);
  qmi::MutableMessageBase::~MutableMessageBase((v30 + 40));
  std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::destroy(*(v32 - 248));
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(uint64_t **a1, CFStringRef *a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (!v5)
  {
    v8 = (a1 + 1);
LABEL_9:
    v9 = operator new(0x30uLL);
    v9[4] = **a3;
    v9[5] = 0;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v8;
    *v6 = v9;
    v10 = **a1;
    if (v10)
    {
      *a1 = v10;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
    a1[2] = (a1[2] + 1);
    return v9;
  }

  while (1)
  {
    while (1)
    {
      v8 = v5;
      if ((CFStringCompare(*a2, *(v5 + 32), 0) & 0x8000000000000000) == 0)
      {
        break;
      }

      v5 = *v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_9;
      }
    }

    if ((CFStringCompare(*(v8 + 32), *a2, 0) & 0x8000000000000000) == 0)
    {
      break;
    }

    v6 = (v8 + 8);
    v5 = *(v8 + 8);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v9 = *v6;
  if (!*v6)
  {
    goto LABEL_9;
  }

  return v9;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_148(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_149;
  v24 = &__block_descriptor_tmp_153_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 26)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 26;
    *v10 = &unk_2A1E1DD48;
    *(v10 + 3) = 0;
    v9 = (v10 + 12);
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = (v10 + 12);
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = (v10 + 12);
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = (v8 + 12);
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_149(CFTypeID result, float *a2)
{
  v3 = *(result + 32);
  v7 = 0.0;
  v4 = 0.0;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    result = CFNumberGetTypeID();
    if (v5 == result)
    {
      result = ctu::cf::assign(&v7, v3, v6);
      v4 = v7;
    }
  }

  *a2 = v4;
  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_191(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v10 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_192;
  v11 = &__block_descriptor_tmp_196_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  if (v4 != v5)
  {
    while (*(*v4 + 8) != 36)
    {
      if (++v4 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_10:
    v8 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(v2 + 5, 36);
  }

  else
  {
    v6 = ***v4;
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7 + 12;
  }

  v10(v9, v8);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296EDC49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(void *a1, char a2)
{
  v4 = operator new(0x10uLL);
  v4[8] = a2;
  *v4 = &unk_2A1E1DF28;
  *(v4 + 3) = 0;
  v5 = v4 + 12;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 >= v6)
  {
    v9 = a1[1];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = v4;
      v16 = operator new(8 * v14);
      v4 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    *v17 = v4;
    v8 = v17 + 8;
    memcpy(v16, v9, v10);
    a1[1] = v16;
    a1[2] = v8;
    a1[3] = &v16[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v4;
    v8 = v7 + 8;
  }

  a1[2] = v8;
  return v5;
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_192(CFTypeID result, _DWORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_162(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_163;
  v24 = &__block_descriptor_tmp_167_1;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 28)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 28;
    *v10 = &unk_2A1E1DDE8;
    *(v10 + 5) = 0;
    v9 = v10 + 10;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 10;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 10;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 10;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_163(CFTypeID result, _WORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_169(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_170;
  v24 = &__block_descriptor_tmp_174_1;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 29)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 29;
    *v10 = &unk_2A1E1DE38;
    *(v10 + 5) = 0;
    v9 = v10 + 10;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 10;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 10;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 10;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_170(CFTypeID result, _WORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void tlv::parseV<nas::tlv::abm::BBNeighborList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 8);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 8), v6, 4);
        *(v10 + 8) = *(v8 + 2);
        v10 += 16;
        v8 += 12;
      }

      while (v10 != v11);
      v8 = v12 + 12;
    }
  }

  *a1 = v8;
}

void sub_296EDCD04(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296EDCCECLL);
}

void sub_296EDCD18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_5(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(v4, *v2, *(v2 + 8), 0, (v5 + 40));
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void *std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v7 = result;
    result = operator new(0x20uLL);
    v8 = result;
    *result = 0;
    result[1] = 0;
    *(result + 1) = *(a3 + 16);
    v9 = *(a3 + 8);
    v10 = 1;
    if (v9 != a4)
    {
      v11 = result;
      do
      {
        result = operator new(0x20uLL);
        *result = v11;
        result[1] = 0;
        *(result + 1) = *(v9 + 16);
        v11[1] = result;
        ++v10;
        v9 = *(v9 + 8);
        v11 = result;
      }

      while (v9 != a4);
    }

    v12 = *a2;
    *(v12 + 8) = v8;
    *v8 = v12;
    *a2 = result;
    result[1] = a2;
    v7[2] += v10;
  }

  return result;
}

void sub_296EDCE5C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = result;
  v7 = (result + 1);
  if (result + 1 == a2 || (v8 = a2[4], v8 > a3))
  {
    v9 = *a2;
    if (*result == a2)
    {
      v11 = a2;
LABEL_16:
      if (v9)
      {
        v17 = v11;
      }

      else
      {
        v17 = a2;
      }

      if (v9)
      {
        v13 = (v11 + 1);
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

      v5 = v17;
      goto LABEL_36;
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (v11[4] < a3)
    {
      goto LABEL_16;
    }

    v18 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
LABEL_36:
      v22 = operator new(0x40uLL);
      v23 = v22;
      v24 = v22 + 5;
      v25 = a4 + 1;
      v22[4] = *a4;
      v22[5] = (v22 + 5);
      v22[6] = (v22 + 5);
      v22[7] = 0;
      v26 = a4[2];
      if (v26 != v25)
      {
        v27 = 1;
        v28 = v22 + 5;
        do
        {
          v29 = operator new(0x20uLL);
          v29[1] = *(v26 + 16);
          *v29 = v28;
          *(v29 + 1) = v24;
          v28[1] = v29;
          v23[5] = v29;
          v23[7] = v27;
          v26 = *(v26 + 8);
          ++v27;
          v28 = v29;
        }

        while (v26 != v25);
      }

      *v23 = 0;
      v23[1] = 0;
      v23[2] = v5;
      *v13 = v23;
      v30 = **v6;
      if (v30)
      {
        *v6 = v30;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v23);
      ++v6[2];
      return result;
    }

    while (1)
    {
      while (1)
      {
        v5 = v18;
        v19 = v18[4];
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8 >= a3)
    {
      return result;
    }

    v13 = (a2 + 1);
    v12 = a2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
        v5 = v13;
        v14 = v13;
      }

      while (v12);
    }

    else
    {
      v14 = a2;
      do
      {
        v20 = v14;
        v14 = v14[2];
      }

      while (*v14 != v20);
    }

    if (v14 == v7)
    {
      goto LABEL_36;
    }

    if (v14[4] > a3)
    {
      goto LABEL_36;
    }

    v21 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
      goto LABEL_36;
    }

    while (1)
    {
      while (1)
      {
        v5 = v21;
        v31 = v21[4];
        if (v31 <= a3)
        {
          break;
        }

        v21 = *v21;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v31 >= a3)
      {
        break;
      }

      v21 = v21[1];
      if (!v21)
      {
LABEL_30:
        v13 = v5 + 1;
        goto LABEL_36;
      }
    }
  }

  return result;
}

void sub_296EDD0E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(v2);
  std::unique_ptr<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 292);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 288);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 296);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 296) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 296);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 296) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 296);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 296) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296EDD6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296EDD6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(*a1);
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a1[1]);
    if (a1[7])
    {
      v2 = a1[6];
      v3 = *(a1[5] + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[7] = 0;
      if (v2 != a1 + 5)
      {
        do
        {
          v5 = v2[1];
          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1 + 5);
      }
    }

    operator delete(a1);
  }
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 296);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 296), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296EDD9BC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void tlv::parseV<nas::tlv::abm::BBSearchFreqList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 8);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 8), v6, 4);
        *(v10 + 8) = *(v8 + 2);
        v10 += 16;
        v8 += 12;
      }

      while (v10 != v11);
      v8 = v12 + 12;
    }
  }

  *a1 = v8;
}

void sub_296EDDABC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296EDDAA4);
}

void sub_296EDDAD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_10(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(v4, *v2, *(v2 + 8), 0, (v5 + 40));
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_106(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_107;
  v24 = &__block_descriptor_tmp_111_1;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 20)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x18uLL);
    v10[8] = 20;
    *v10 = &unk_2A1E1DB68;
    *(v10 + 3) = 0;
    v9 = v10 + 12;
    *(v10 + 4) = 0;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 12;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 12;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_107(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  v6[2] = v2;
  if (v2)
  {
    CFRetain(v2);
    v6[0] = v2;
    CFRetain(v2);
    v6[4] = 0;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      CFRetain(v2);
      CFRetain(v2);
      CFRelease(v2);
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    v6[3] = v5;
    CFRelease(v2);
    CFRelease(v2);
    if (v5)
    {
      v6[0] = 0xAAAAAAAAAAAAAAAALL;
      v6[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v6, v5);
      *a2 = ctu::cf::map_adapter::getInt(v6, *MEMORY[0x29EDC86B0]);
      a2[1] = ctu::cf::map_adapter::getInt(v6, *MEMORY[0x29EDC8610]);
      MEMORY[0x29C268420](v6);
      CFRelease(v5);
    }
  }
}

void sub_296EDDEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_155(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_156;
  v24 = &__block_descriptor_tmp_160;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 27)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 27;
    *v10 = &unk_2A1E1DD98;
    *(v10 + 5) = 0;
    v9 = v10 + 10;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 10;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 10;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 10;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_156(CFTypeID result, _WORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_205(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_206;
  v24 = &__block_descriptor_tmp_210;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 39)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 39;
    *v10 = &unk_2A1E1DFC8;
    *(v10 + 3) = 0;
    v9 = v10 + 12;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 12;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 12;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_206(CFTypeID result, _DWORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_141(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_142;
  v24 = &__block_descriptor_tmp_146;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 25)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 25;
    *v10 = &unk_2A1E1DCF8;
    *(v10 + 3) = 0;
    v9 = (v10 + 12);
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = (v10 + 12);
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = (v10 + 12);
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = (v8 + 12);
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_142(CFTypeID result, float *a2)
{
  v3 = *(result + 32);
  v7 = 0.0;
  v4 = 0.0;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    result = CFNumberGetTypeID();
    if (v5 == result)
    {
      result = ctu::cf::assign(&v7, v3, v6);
      v4 = v7;
    }
  }

  *a2 = v4;
  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_113(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_114;
  v24 = &__block_descriptor_tmp_118_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 21)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 21;
    *v10 = &unk_2A1E1DBB8;
    *(v10 + 3) = 0;
    v9 = v10 + 12;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 12;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 12;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_114(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRetain(v2);
    v7 = v2;
    CFRetain(v2);
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      CFRetain(v2);
      CFRetain(v2);
      CFRelease(v2);
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
    CFRelease(v2);
    if (v5)
    {
      CFRetain(v5);
      LODWORD(v7) = 0;
      ctu::cf::assign(&v7, v5, v6);
      *a2 = v7;
      CFRelease(v5);
      CFRelease(v5);
    }
  }
}

void sub_296EDEB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296EDEB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_134(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_135;
  v24 = &__block_descriptor_tmp_139_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 24)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 24;
    *v10 = &unk_2A1E1DCA8;
    *(v10 + 3) = 0;
    v9 = (v10 + 12);
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = (v10 + 12);
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = (v10 + 12);
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = (v8 + 12);
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_135(CFTypeID result, float *a2)
{
  v3 = *(result + 32);
  v7 = 0.0;
  v4 = 0.0;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    result = CFNumberGetTypeID();
    if (v5 == result)
    {
      result = ctu::cf::assign(&v7, v3, v6);
      v4 = v7;
    }
  }

  *a2 = v4;
  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_99(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_100;
  v24 = &__block_descriptor_tmp_104_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 19)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 19;
    *v10 = &unk_2A1E1DB18;
    *(v10 + 3) = 0;
    v9 = v10 + 12;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 12;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 12;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_100(CFTypeID result, _DWORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_92(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_93;
  v24 = &__block_descriptor_tmp_97_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 18)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 18;
    *v10 = &unk_2A1E1DAC8;
    *(v10 + 3) = 0;
    v9 = v10 + 12;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 12;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 12;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::operator()<ctu::cf::CFSharedRef<__CFError> const&,ctu::cf::CFSharedRef<__CFDictionary const> const&>(uint64_t *a1, const void **a2, const void **a3)
{
  v4 = *a1;
  v5 = *a2;
  v8 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  (*(v4 + 16))(v4, &v8, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_296EDF3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(*(a1 + 32) + 8);
    v7 = *(v5 + 40);
    v6 = v5 + 40;
    if (v7)
    {
      if (*(*(*(a1 + 32) + 8) + 48))
      {
        v14 = *a2;
        CFRetain(v3);
        v9 = *a3;
        v13 = v9;
        if (v9)
        {
          CFRetain(v9);
          coex::CommandDriver::Callback::operator()(v6, &v14, &v13);
          CFRelease(v9);
        }

        else
        {
          coex::CommandDriver::Callback::operator()(v6, &v14, &v13);
        }

        CFRelease(v3);
        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = 0;
        if (v11)
        {
          _Block_release(v11);
        }

        v12 = *(v10 + 48);
        *(v10 + 48) = 0;
        if (v12)
        {

          dispatch_release(v12);
        }
      }
    }
  }
}

void __destroy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetPolicy8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296EDF634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_219(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 10;
  strcpy(__p, "set policy");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting policy completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296EDF7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::checkError@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFTypeRef *a4@<X8>)
{
  v48 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  if (!*(a2 + 4))
  {
    goto LABEL_33;
  }

  v7 = result;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[7] = v8;
  v44[8] = v8;
  v44[5] = v8;
  v44[6] = v8;
  v44[3] = v8;
  v44[4] = v8;
  v44[1] = v8;
  v44[2] = v8;
  v43 = v8;
  v44[0] = v8;
  *v41 = v8;
  v42 = v8;
  v39 = v8;
  v40 = v8;
  v37 = v8;
  v38 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Failed to ", 10);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; ", 2);
  v15 = *(a2 + 4);
  v16 = qmi::asString();
  v17 = strlen(v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  v18 = *(v7 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if ((BYTE8(v43) & 0x10) != 0)
    {
      v28 = v43;
      if (v43 < *(&v40 + 1))
      {
        *&v43 = *(&v40 + 1);
        v28 = *(&v40 + 1);
      }

      v29 = &v40;
    }

    else
    {
      if ((BYTE8(v43) & 8) == 0)
      {
        v26 = 0;
        HIBYTE(v36) = 0;
        v27 = cf;
        goto LABEL_52;
      }

      v29 = &v38 + 1;
      v28 = *(&v39 + 1);
    }

    v30 = *v29;
    v26 = v28 - *v29;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v26 >= 0x17)
    {
      if ((v26 | 7) == 0x17)
      {
        v31 = 25;
      }

      else
      {
        v31 = (v26 | 7) + 1;
      }

      v27 = operator new(v31);
      cf[1] = v26;
      v36 = v31 | 0x8000000000000000;
      cf[0] = v27;
    }

    else
    {
      HIBYTE(v36) = v28 - *v29;
      v27 = cf;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    memmove(v27, v30, v26);
LABEL_52:
    *(v27 + v26) = 0;
    v32 = cf;
    if (v36 < 0)
    {
      v32 = cf[0];
    }

    *buf = 136315138;
    v47 = v32;
    _os_log_error_impl(&dword_296ECF000, v18, OS_LOG_TYPE_ERROR, "%s: ", buf, 0xCu);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(cf[0]);
    }
  }

  if ((BYTE8(v43) & 0x10) != 0)
  {
    v21 = v43;
    if (v43 < *(&v40 + 1))
    {
      *&v43 = *(&v40 + 1);
      v21 = *(&v40 + 1);
    }

    v22 = v40;
    v19 = v21 - v40;
    if ((v21 - v40) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((BYTE8(v43) & 8) == 0)
    {
      v19 = 0;
      HIBYTE(v34) = 0;
      v20 = __p;
      goto LABEL_23;
    }

    v22 = *(&v38 + 1);
    v19 = *(&v39 + 1) - *(&v38 + 1);
    if (*(&v39 + 1) - *(&v38 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_35:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v19 | 7) + 1;
    }

    v20 = operator new(v23);
    __p[1] = v19;
    v34 = v23 | 0x8000000000000000;
    __p[0] = v20;
    goto LABEL_22;
  }

  HIBYTE(v34) = v19;
  v20 = __p;
  if (v19)
  {
LABEL_22:
    memmove(v20, v22, v19);
  }

LABEL_23:
  *(v20 + v19) = 0;
  CreateError();
  if (cf == a4)
  {
    goto LABEL_26;
  }

  v24 = *a4;
  *a4 = cf[0];
  cf[0] = 0;
  if (v24)
  {
    CFRelease(v24);
LABEL_26:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  *&v37 = *MEMORY[0x29EDC9538];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v37 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  *(&v37 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v38);
  std::ostream::~ostream();
  result = MEMORY[0x29C268E60](v44);
LABEL_33:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296EDFC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void coex::CommandDriver::Callback::operator()(uint64_t a1, const void **a2, const void **a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK4coex13CommandDriver8CallbackclEN3ctu2cf11CFSharedRefI9__CFErrorEENS4_IK14__CFDictionaryEE_block_invoke;
  block[3] = &__block_descriptor_tmp_333_0;
  if (!v7)
  {
    v10 = *a2;
    aBlock = 0;
    v14 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = _Block_copy(v7);
  v10 = *a2;
  aBlock = v9;
  v14 = v10;
  if (v10)
  {
LABEL_8:
    CFRetain(v10);
  }

LABEL_9:
  v11 = *a3;
  cf = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  dispatch_async(v8, block);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }
}

CFTypeRef __copy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  result = a2[6];
  a1[6] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c35_ZTSN4coex13CommandDriver8CallbackE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm13ConditionFail10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296EDFF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_5(uint64_t a1, qmi::MessageBase *a2)
{
  v39[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v31 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v30 = Mutable;
    v31 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    v30 = 0;
  }

  v38 = 0;
  v32 = MEMORY[0x29EDCA5F8];
  v33 = 1174405120;
  v34 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm33ContinuousTxSubframeDenialsStatusENS_3abm13ConditionFail10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v35 = &__block_descriptor_tmp_432;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v37 = *MEMORY[0x29EDC8AA8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    v10 = v8;
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 8);
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v11 = *v9;
    }

    else
    {
      v11 = 0;
    }

    v39[0] = v11;
    v34(&v32, v39);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v29 = v31;
  if (v31)
  {
    CFRetain(v31);
  }

  v38 = 0;
  v32 = MEMORY[0x29EDCA5F8];
  v33 = 1174405120;
  v34 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm29QMITxPowerLimitEnforceFailureENS_3abm13ConditionFail10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v35 = &__block_descriptor_tmp_436;
  cf = v31;
  if (v31)
  {
    CFRetain(v31);
  }

  v37 = *MEMORY[0x29EDC8918];
  v12 = qmi::MessageBase::findTlvValue(a2);
  v14 = v12;
  if (v12)
  {
    v15 = v13;
    tlv::throwIfNotEnoughBytes(v12, v12 + v13, 8);
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v16 = *v14;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = v16;
    v34(&v32, v39);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
    v28 = v31;
    CFRetain(v31);
  }

  else
  {
    v28 = 0;
  }

  v38 = 0;
  v32 = MEMORY[0x29EDCA5F8];
  v33 = 1174405120;
  v34 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm30WCI2TxPowerLimitEnforceFailureENS_3abm13ConditionFail10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v35 = &__block_descriptor_tmp_440;
  cf = v31;
  if (v31)
  {
    CFRetain(v31);
  }

  v37 = *MEMORY[0x29EDC8970];
  v17 = qmi::MessageBase::findTlvValue(a2);
  v19 = v17;
  if (v17)
  {
    v20 = v18;
    tlv::throwIfNotEnoughBytes(v17, v17 + v18, 8);
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v21 = *v19;
    }

    else
    {
      v21 = 0;
    }

    v39[0] = v21;
    v34(&v32, v39);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  v32 = 0;
  v22 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v23 = v22;
  if (v22)
  {
    v32 = v22;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v22, *MEMORY[0x29EDC8840], v31);
  if (v23 && (v24 = CFGetTypeID(v23), v24 == CFDictionaryGetTypeID()))
  {
    v27 = v23;
    CFRetain(v23);
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, &v27, 0);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_296EE03C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm29QMITxPowerLimitEnforceFailureENS_3abm13ConditionFail10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  cf = 0;
  v4 = operator new(8uLL);
  *v4 = v3;
  v5 = CFDataCreate(*MEMORY[0x29EDB8ED8], v4, 8);
  v6 = v5;
  if (v5)
  {
    cf = v5;
  }

  else
  {
    v6 = 0;
  }

  operator delete(v4);
  ctu::cf::insert<__CFString const*,__CFData const*>(*(a1 + 32), *(a1 + 40), v6);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296EE05DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296EE05F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296EE060C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *__Block_byref_object_dispose__1(void *result)
{
  if (result[7])
  {
    v1 = result + 5;
    v2 = result;
    result = result[6];
    v3 = *(v2[5] + 8);
    v4 = *result;
    *(v4 + 8) = v3;
    *v3 = v4;
    v2[7] = 0;
    if (result != v1)
    {
      do
      {
        v5 = result[1];
        operator delete(result);
        result = v5;
      }

      while (v5 != v1);
    }
  }

  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 40) = *MEMORY[0x29EDC9538];
  *(a1 + 40 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 48) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 48) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 56));
  std::ostream::~ostream();

  JUMPOUT(0x29C268E60);
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void __Block_byref_object_dispose__5(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void __Block_byref_object_dispose__6(void *a1)
{
  if (a1[7])
  {
    v1 = (a1 + 5);
    v2 = a1[6];
    v3 = *(a1[5] + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[7] = 0;
    if (v2 != (a1 + 5))
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[63] < 0)
        {
          operator delete(*(v2 + 5));
          if (v2[39] < 0)
          {
LABEL_9:
            operator delete(*(v2 + 2));
          }
        }

        else if (v2[39] < 0)
        {
          goto LABEL_9;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != v1);
    }
  }
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm25SendTransparentMessageReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296EE0A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver30sendTransparentMessageReq_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x20uLL);
  v11 = xmmword_296FBF510;
  strcpy(__p, "Send transparent Coex message");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &cf);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    v5 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = cf;
    if (cf)
    {
LABEL_3:
      v9 = v5;
      goto LABEL_4;
    }
  }

  v7 = *(v4 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    goto LABEL_9;
  }

  LOWORD(__p) = 0;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Send transparent Coex message completed", &__p, 2u);
  v5 = cf;
  v9 = cf;
  if (!cf)
  {
LABEL_9:
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v5);
  v8 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
  CFRelease(v5);
  v6 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v6);
}

void sub_296EE0C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_93(CFTypeID result, _DWORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_198(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v10 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_199;
  v11 = &__block_descriptor_tmp_203_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  if (v4 != v5)
  {
    while (*(*v4 + 8) != 37)
    {
      if (++v4 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_10:
    v8 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::TechInstance>(v2 + 5, 37);
  }

  else
  {
    v6 = ***v4;
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7 + 12;
  }

  v10(v9, v8);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296EE0E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::createTLV<coex::tlv::abm::TechInstance>(void *a1, char a2)
{
  v4 = operator new(0x10uLL);
  v4[8] = a2;
  *v4 = &unk_2A1E1DF78;
  *(v4 + 3) = 0;
  v5 = v4 + 12;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 >= v6)
  {
    v9 = a1[1];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = v4;
      v16 = operator new(8 * v14);
      v4 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    *v17 = v4;
    v8 = v17 + 8;
    memcpy(v16, v9, v10);
    a1[1] = v16;
    a1[2] = v8;
    a1[3] = &v16[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v4;
    v8 = v7 + 8;
  }

  a1[2] = v8;
  return v5;
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_199(CFTypeID result, _DWORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(void *a1, char a2)
{
  v4 = operator new(0x10uLL);
  v4[8] = a2;
  *v4 = &unk_2A1E1DED8;
  *(v4 + 3) = 0;
  v5 = v4 + 12;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 >= v6)
  {
    v9 = a1[1];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = v4;
      v16 = operator new(8 * v14);
      v4 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    *v17 = v4;
    v8 = v17 + 8;
    memcpy(v16, v9, v10);
    a1[1] = v16;
    a1[2] = v8;
    a1[3] = &v16[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v4;
    v8 = v7 + 8;
  }

  a1[2] = v8;
  return v5;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_185(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v10 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_3;
  v11 = &__block_descriptor_tmp_189_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  if (v4 != v5)
  {
    while (*(*v4 + 8) != 35)
    {
      if (++v4 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_10:
    v8 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(v2 + 5, 35);
  }

  else
  {
    v6 = ***v4;
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7 + 12;
  }

  v10(v9, v8);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296EE12A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_3(CFTypeID result, _DWORD *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2;
  v24 = &__block_descriptor_tmp_82_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 16)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x18uLL);
    v10[8] = 16;
    *v10 = &unk_2A1E1DA28;
    *(v10 + 9) = 0;
    v9 = v10 + 9;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 9;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 9;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 9;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRetain(v2);
    CFRetain(v2);
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      CFRetain(v2);
      CFRetain(v2);
      CFRelease(v2);
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
    CFRelease(v2);
    if (v5)
    {
      CFRetain(v5);
      CFRetain(v5);
      ctu::cf::assign();
      CFRelease(v5);
      *a2 = 0;
      CFRelease(v5);
      CFRelease(v5);
    }
  }
}

void sub_296EE173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = *(v10 - 56);
  if (v12)
  {
    *(v10 - 48) = v12;
    operator delete(v12);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v10 - 64));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v10 - 72));
  _Unwind_Resume(a1);
}

void sub_296EE1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v11 - 64));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v11 - 56));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_120(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_121;
  v24 = &__block_descriptor_tmp_125;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 22)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 22;
    *v10 = &unk_2A1E1DC08;
    *(v10 + 3) = 0;
    v9 = (v10 + 12);
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = (v10 + 12);
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = (v10 + 12);
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = (v8 + 12);
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_121(CFTypeID result, float *a2)
{
  v3 = *(result + 32);
  v7 = 0.0;
  v4 = 0.0;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    result = CFNumberGetTypeID();
    if (v5 == result)
    {
      result = ctu::cf::assign(&v7, v3, v6);
      v4 = v7;
    }
  }

  *a2 = v4;
  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_176(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 1174405120;
  v22 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_177;
  v23 = &__block_descriptor_tmp_181_1;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 30)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v11 = v10;
    v10[4] = 30;
    *v10 = &unk_2A1E1DE88;
    v12 = v2[8];
    if (v5 >= v12)
    {
      v14 = v5 - v4;
      v15 = v5 - v4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = v12 - v4;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = operator new(8 * v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * v15];
      *v20 = v11;
      v13 = v20 + 8;
      memcpy(v19, v4, v14);
      v2[6] = v19;
      v2[7] = v13;
      v2[8] = &v19[8 * v18];
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      *v5 = v10;
      v13 = v5 + 1;
    }

    v9 = v11 + 9;
    v2[7] = v13;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 9;
  }

  v22(v21, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_177(CFTypeID result, _BYTE *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_212(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_213;
  v24 = &__block_descriptor_tmp_217;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 40)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x18uLL);
    v10[8] = 40;
    *v10 = &unk_2A1E1E018;
    *(v10 + 3) = 0;
    v9 = v10 + 12;
    *(v10 + 4) = 0;
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = v10 + 12;
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = v10 + 12;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_213(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  v6[2] = v2;
  if (v2)
  {
    CFRetain(v2);
    v6[0] = v2;
    CFRetain(v2);
    v6[4] = 0;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      CFRetain(v2);
      CFRetain(v2);
      CFRelease(v2);
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    v6[3] = v5;
    CFRelease(v2);
    CFRelease(v2);
    if (v5)
    {
      v6[0] = 0xAAAAAAAAAAAAAAAALL;
      v6[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v6, v5);
      *a2 = ctu::cf::map_adapter::getInt(v6, *MEMORY[0x29EDC86B0]);
      a2[1] = ctu::cf::map_adapter::getInt(v6, *MEMORY[0x29EDC8610]);
      MEMORY[0x29C268420](v6);
      CFRelease(v5);
    }
  }
}

void sub_296EE20C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_85(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 1174405120;
  v22 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_86;
  v23 = &__block_descriptor_tmp_90_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 17)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v11 = v10;
    v10[4] = 17;
    *v10 = &unk_2A1E1DA78;
    v12 = v2[8];
    if (v5 >= v12)
    {
      v14 = v5 - v4;
      v15 = v5 - v4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = v12 - v4;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = operator new(8 * v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * v15];
      *v20 = v11;
      v13 = v20 + 8;
      memcpy(v19, v4, v14);
      v2[6] = v19;
      v2[7] = v13;
      v2[8] = &v19[8 * v18];
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      *v5 = v10;
      v13 = v5 + 1;
    }

    v9 = v11 + 9;
    v2[7] = v13;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 9;
  }

  v22(v21, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_86(CFTypeID result, _BYTE *a2)
{
  v3 = *(result + 32);
  v6 = 0;
  if (v3 && (v4 = CFGetTypeID(v3), result = CFNumberGetTypeID(), v4 == result))
  {
    result = ctu::cf::assign(&v6, v3, v5);
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_127(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v23 = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_128;
  v24 = &__block_descriptor_tmp_132_0;
  v3 = *a2;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = v2[6];
  v5 = v2[7];
  v6 = v4;
  if (v4 != v5)
  {
    v6 = v2[6];
    while (*(*v6 + 8) != 23)
    {
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_11:
    v10 = operator new(0x10uLL);
    v10[8] = 23;
    *v10 = &unk_2A1E1DC58;
    *(v10 + 3) = 0;
    v9 = (v10 + 12);
    v11 = v2[8];
    if (v5 >= v11)
    {
      v13 = v5 - v4;
      v14 = v5 - v4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v10;
        v19 = (v10 + 12);
        v20 = operator new(8 * v17);
        v10 = v18;
      }

      else
      {
        v19 = (v10 + 12);
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v10;
      v12 = v21 + 8;
      memcpy(v20, v4, v13);
      v2[6] = v20;
      v2[7] = v12;
      v2[8] = &v20[8 * v17];
      if (v4)
      {
        operator delete(v4);
      }

      v9 = v19;
    }

    else
    {
      *v5 = v10;
      v12 = v5 + 1;
    }

    v2[7] = v12;
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = (v8 + 12);
  }

  v23(v22, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeID ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_128(CFTypeID result, float *a2)
{
  v3 = *(result + 32);
  v7 = 0.0;
  v4 = 0.0;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    result = CFNumberGetTypeID();
    if (v5 == result)
    {
      result = ctu::cf::assign(&v7, v3, v6);
      v4 = v7;
    }
  }

  *a2 = v4;
  return result;
}

void std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::destroy(*a1);
    std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete(a1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TransparentMessageInformationSet>::getSize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v2 == v1)
  {
    return 4;
  }

  v3 = v1 - v2 - 32;
  if (v3 >= 0x80)
  {
    v7 = (v3 >> 5) + 1;
    v8 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v8 = 4;
    }

    v9 = v7 - v8;
    v5 = v2 + 32 * v9;
    v10 = (v2 + 72);
    v11 = 0uLL;
    v12 = vdupq_n_s64(5uLL);
    v13 = 0uLL;
    do
    {
      v14 = v10 - 8;
      v15 = vld4q_f64(v14);
      v16 = vld4q_f64(v10);
      v11 = vaddq_s64(vsubq_s64(vaddq_s64(v11, v15.val[1]), v15.val[0]), v12);
      v13 = vaddq_s64(vsubq_s64(vaddq_s64(v13, v16.val[1]), v16.val[0]), v12);
      v10 += 16;
      v9 -= 4;
    }

    while (v9);
    v4 = vaddvq_s64(vaddq_s64(v13, v11));
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 16);
  }

  do
  {
    v4 = v4 + *(v5 + 16) - *(v5 + 8) + 5;
    v5 += 32;
  }

  while (v5 != v1);
  return v4 + 4;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TransparentMessageInformationSet>::write(_BYTE *result, uint64_t *a2)
{
  v3 = result[8];
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  v6 = v4 + 4;
  *(v4 + 3) = (*(result + 6) - *(result + 4)) >> 5;
  v7 = *(result + 2);
  for (i = *(result + 3); v7 != i; v7 += 32)
  {
    *v6 = *v7;
    v9 = *(v7 + 8);
    v10 = (*(v7 + 16) - v9);
    v11 = v6 + 5;
    *(v6 + 4) = *(v7 + 16) - v9;
    result = memcpy((v6 + 5), *(v7 + 8), *(v7 + 16) - *(v7 + 8));
    v6 = v11 + *(v7 + 16) - *(v7 + 8);
  }

  *a2 = v6;
  *v4 = v3;
  *(v4 + 1) = v6 - v5;
  return result;
}

void __copy_helper_block_e8_40c35_ZTSN4coex13CommandDriver8CallbackE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4coex13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE48c35_ZTSN4coex13CommandDriver8CallbackE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }
}

void ___ZN4coex16QMICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_31(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 40))
  {
    if (*(v1 + 48))
    {
      v2 = 0;
      v3 = 0;
      coex::CommandDriver::Callback::operator()(v1 + 40, &v3, &v2);
    }
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::CoexTech>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

float qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::FilteredRBThreshold>::write(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 12);
  *(v3 + 3) = result;
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ControllerTxPowerLimitTimeout>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TxPowerThresholdForAdvTxNotice>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TxFrameDenialsParameters>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WCI2TxPowerLimitTimeout>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::NGCContinuousTxSubframeDenialsThreshold>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

float qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::RBFilterAlpha>::write(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 12);
  *(v3 + 3) = result;
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::APTTable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

float qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LinkPathLossThreshold>::write(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 12);
  *(v3 + 3) = result;
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ContinuousTxSubframeDenialsThreshold>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::RBThreshold>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TechInstance>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTEInstance>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::Policy>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *a2 += 3;
  *(v3 + 3) = *(result + 9);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

float qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ControllerTxPowerLimit>::write(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 12);
  *(v3 + 3) = result;
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::RbThresholdForAdvTxNotice>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::NGCTxFrameDenialsParameters>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::PowerThreshold>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

float qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WCI2TxPowerLimit>::write(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 12);
  *(v3 + 3) = result;
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void radio::QMICommandDriverM20::getWakeReason(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband wake reason", buf, 2u);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN5radio19QMICommandDriverM2013getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_29;
  v7[4] = a1;
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a2 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E16758;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5radio13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN5radio19QMICommandDriverM2013getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v3;
  v14[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v14);
  v9 = v2 + 296;
  v10 = QMIServiceMsg::create();
  v11 = 25000;
  v12 = 0;
  v13 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio19QMICommandDriverM2013getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_26_1;
  v6[4] = v2;
  v4 = a1[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a1[6];
  v7 = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm15GetWakeReasonV28ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DB80;
  aBlock[4] = v6;
  v13 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v13)
  {
    _Block_release(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v14);
}

void sub_296EE3218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296EE323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5radio13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_e8_40c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 168) = 0;
  v2 = dispatch_group_create();
  v3 = v2;
  var18.gr_name = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  coex::QMICommandDriver::updateIndications_sync(v1, &var18);
  if (v3)
  {
    dispatch_release(v3);

    dispatch_release(v3);
  }
}

void sub_296EE33EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void coex::QMICommandDriver::updateIndications_sync(coex::QMICommandDriver *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex16QMICommandDriver22updateIndications_syncEN8dispatch5groupE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_45_3;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v4 = _Block_copy(aBlock);
  v5 = *(this + 3);
  if (v5)
  {
    dispatch_retain(*(this + 3));
  }

  if (v4)
  {
    v6 = _Block_copy(v4);
    v12 = v6;
    v13 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = 0;
  v12 = 0;
  v13 = v5;
  if (v5)
  {
LABEL_9:
    dispatch_retain(v5);
    dispatch_release(v5);
  }

LABEL_10:
  if (v4)
  {
    _Block_release(v4);
  }

  if (v6)
  {
    v7 = _Block_copy(v6);
    v8 = v7;
    v9 = v5;
    if (!v5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5;
  if (v5)
  {
LABEL_14:
    dispatch_retain(v5);
  }

LABEL_15:
  coex::QMICommandDriver::setIndications_sync(this, &v8);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }
}

void sub_296EE35D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, char a17)
{
  coex::CommandDriver::Callback::~Callback(&a10);
  coex::CommandDriver::Callback::~Callback(&a17);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v17)
  {
    dispatch_group_leave(v17);
    dispatch_release(v17);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void coex::QMICommandDriver::setIndications_sync(uint64_t a1, uint64_t a2)
{
  v181 = *MEMORY[0x29EDCA608];
  v4 = 176;
  if (*(a1 + 168))
  {
    v4 = 184;
  }

  v5 = *(a1 + v4);
  v176[2] = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Setting indications with: %@", &buf, 0xCu);
  }

  v176[0] = 0xAAAAAAAAAAAAAAAALL;
  v176[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v176, v5);
  v137 = a1;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v174 = v7;
  v175 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v174);
  v136 = a2;
  if (CFDictionaryContainsKey(v5, *MEMORY[0x29EDC8790]))
  {
    v170[0] = MEMORY[0x29EDCA5F8];
    v170[1] = 1174405120;
    v171 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke;
    v172 = &__block_descriptor_tmp_47_1;
    ctu::cf::dict_adapter::dict_adapter(v173, v176);
    v9 = *(&v174 + 1);
    v8 = v175;
    v10 = *(&v174 + 1);
    if (*(&v174 + 1) != v175)
    {
      v10 = *(&v174 + 1);
      while (*(*v10 + 8) != 16)
      {
        if (++v10 == v175)
        {
          goto LABEL_16;
        }
      }
    }

    if (v10 == v175)
    {
LABEL_16:
      v14 = operator new(0x10uLL);
      v15 = v14;
      v14[4] = 16;
      *v14 = &unk_2A1E1D758;
      if (v8 >= *(&v175 + 1))
      {
        v17 = v8 - v9;
        v18 = (v8 - v9) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v20 = *(&v175 + 1) - v9;
        if ((*(&v175 + 1) - v9) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (v21 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v22 = operator new(8 * v21);
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v18];
        *v23 = v15;
        v16 = v23 + 8;
        memcpy(v22, v9, v17);
        *(&v174 + 1) = v22;
        *&v175 = v16;
        *(&v175 + 1) = &v22[8 * v21];
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v8 = v14;
        v16 = v8 + 8;
      }

      v13 = v15 + 9;
      *&v175 = v16;
    }

    else
    {
      v11 = ***v10;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12 + 9;
    }

    v171(v170, v13);
    MEMORY[0x29C268420](v173);
  }

  if (CFDictionaryContainsKey(v5, *MEMORY[0x29EDC8788]))
  {
    v166[0] = MEMORY[0x29EDCA5F8];
    v166[1] = 1174405120;
    v167 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_48;
    v168 = &__block_descriptor_tmp_52_2;
    ctu::cf::dict_adapter::dict_adapter(v169, v176);
    v24 = *(&v174 + 1);
    v25 = v175;
    v26 = *(&v174 + 1);
    if (*(&v174 + 1) != v175)
    {
      v26 = *(&v174 + 1);
      while (*(*v26 + 8) != 17)
      {
        if (++v26 == v175)
        {
          goto LABEL_41;
        }
      }
    }

    if (v26 == v175)
    {
LABEL_41:
      v30 = operator new(0x10uLL);
      v31 = v30;
      v30[4] = 17;
      *v30 = &unk_2A1E1D7A8;
      if (v25 >= *(&v175 + 1))
      {
        v33 = v25 - v24;
        v34 = (v25 - v24) >> 3;
        v35 = v34 + 1;
        if ((v34 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v36 = *(&v175 + 1) - v24;
        if ((*(&v175 + 1) - v24) >> 2 > v35)
        {
          v35 = v36 >> 2;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v37 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          if (v37 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v38 = operator new(8 * v37);
        }

        else
        {
          v38 = 0;
        }

        v39 = &v38[8 * v34];
        *v39 = v31;
        v32 = v39 + 8;
        memcpy(v38, v24, v33);
        *(&v174 + 1) = v38;
        *&v175 = v32;
        *(&v175 + 1) = &v38[8 * v37];
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v25 = v30;
        v32 = v25 + 8;
      }

      v29 = v31 + 9;
      *&v175 = v32;
    }

    else
    {
      v27 = ***v26;
      if (!v28)
      {
        __cxa_bad_cast();
      }

      v29 = v28 + 9;
    }

    v167(v166, v29);
    MEMORY[0x29C268420](v169);
  }

  v40 = *MEMORY[0x29EDC8840];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x29EDC8840]))
  {
    Bool = ctu::cf::map_adapter::getBool(v176, v40);
    v162[0] = MEMORY[0x29EDCA5F8];
    v162[1] = 0x40000000;
    v42 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_53;
    v163 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_53;
    v164 = &__block_descriptor_tmp_55_0;
    v165 = Bool;
    v44 = *(&v174 + 1);
    v43 = v175;
    v45 = *(&v174 + 1);
    if (*(&v174 + 1) != v175)
    {
      v45 = *(&v174 + 1);
      while (*(*v45 + 8) != 18)
      {
        if (++v45 == v175)
        {
          goto LABEL_66;
        }
      }
    }

    if (v45 == v175)
    {
LABEL_66:
      v49 = operator new(0x10uLL);
      v50 = v49;
      v49[4] = 18;
      *v49 = &unk_2A1E1D7F8;
      if (v43 >= *(&v175 + 1))
      {
        v52 = v43 - v44;
        v53 = (v43 - v44) >> 3;
        v54 = v53 + 1;
        if ((v53 + 1) >> 61)
        {
          goto LABEL_194;
        }

        v55 = *(&v175 + 1) - v44;
        if ((*(&v175 + 1) - v44) >> 2 > v54)
        {
          v54 = v55 >> 2;
        }

        if (v55 >= 0x7FFFFFFFFFFFFFF8)
        {
          v56 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          if (v56 >> 61)
          {
            goto LABEL_200;
          }

          v57 = operator new(8 * v56);
        }

        else
        {
          v57 = 0;
        }

        v58 = &v57[8 * v53];
        *v58 = v50;
        v51 = v58 + 8;
        memcpy(v57, v44, v52);
        *(&v174 + 1) = v57;
        *&v175 = v51;
        *(&v175 + 1) = &v57[8 * v56];
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        *v43 = v49;
        v51 = v43 + 8;
      }

      v48 = v50 + 9;
      *&v175 = v51;
      v42 = v163;
    }

    else
    {
      v46 = ***v45;
      if (!v47)
      {
        goto LABEL_193;
      }

      v48 = v47 + 9;
    }

    v42(v162, v48);
    v158[0] = MEMORY[0x29EDCA5F8];
    v158[1] = 0x40000000;
    v59 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_2;
    v159 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_2;
    v160 = &__block_descriptor_tmp_57_0;
    v161 = Bool;
    v61 = *(&v174 + 1);
    v60 = v175;
    v62 = *(&v174 + 1);
    if (*(&v174 + 1) != v175)
    {
      v62 = *(&v174 + 1);
      while (*(*v62 + 8) != 19)
      {
        if (++v62 == v175)
        {
          goto LABEL_89;
        }
      }
    }

    if (v62 != v175)
    {
      v63 = ***v62;
      if (v64)
      {
        v65 = v64 + 9;
LABEL_104:
        v59(v158, v65);
        goto LABEL_105;
      }

LABEL_193:
      __cxa_bad_cast();
    }

LABEL_89:
    v66 = operator new(0x10uLL);
    v67 = v66;
    v66[4] = 19;
    *v66 = &unk_2A1E1D848;
    if (v60 < *(&v175 + 1))
    {
      *v60 = v66;
      v68 = v60 + 8;
LABEL_103:
      v65 = v67 + 9;
      *&v175 = v68;
      v59 = v159;
      goto LABEL_104;
    }

    v69 = v60 - v61;
    v70 = (v60 - v61) >> 3;
    v71 = v70 + 1;
    if (!((v70 + 1) >> 61))
    {
      v72 = *(&v175 + 1) - v61;
      if ((*(&v175 + 1) - v61) >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (!v73)
      {
        v74 = 0;
LABEL_101:
        v75 = &v74[8 * v70];
        *v75 = v67;
        v68 = v75 + 8;
        memcpy(v74, v61, v69);
        *(&v174 + 1) = v74;
        *&v175 = v68;
        *(&v175 + 1) = &v74[8 * v73];
        if (v61)
        {
          operator delete(v61);
        }

        goto LABEL_103;
      }

      if (!(v73 >> 61))
      {
        v74 = operator new(8 * v73);
        goto LABEL_101;
      }

LABEL_200:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_194:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

LABEL_105:
  v76 = *MEMORY[0x29EDC8878];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x29EDC8878]))
  {
    v77 = ctu::cf::map_adapter::getBool(v176, v76);
    v154[0] = MEMORY[0x29EDCA5F8];
    v154[1] = 0x40000000;
    v78 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_3;
    v155 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_3;
    v156 = &__block_descriptor_tmp_59_2;
    v157 = v77;
    v80 = *(&v174 + 1);
    v79 = v175;
    v81 = *(&v174 + 1);
    if (*(&v174 + 1) != v175)
    {
      v81 = *(&v174 + 1);
      while (*(*v81 + 8) != 24)
      {
        if (++v81 == v175)
        {
          goto LABEL_114;
        }
      }
    }

    if (v81 == v175)
    {
LABEL_114:
      v85 = operator new(0x10uLL);
      v86 = v85;
      v85[4] = 24;
      *v85 = &unk_2A1E1D898;
      if (v79 >= *(&v175 + 1))
      {
        v88 = v79 - v80;
        v89 = (v79 - v80) >> 3;
        v90 = v89 + 1;
        if ((v89 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v91 = *(&v175 + 1) - v80;
        if ((*(&v175 + 1) - v80) >> 2 > v90)
        {
          v90 = v91 >> 2;
        }

        if (v91 >= 0x7FFFFFFFFFFFFFF8)
        {
          v92 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (v92 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v93 = operator new(8 * v92);
        }

        else
        {
          v93 = 0;
        }

        v94 = &v93[8 * v89];
        *v94 = v86;
        v87 = v94 + 8;
        memcpy(v93, v80, v88);
        *(&v174 + 1) = v93;
        *&v175 = v87;
        *(&v175 + 1) = &v93[8 * v92];
        if (v80)
        {
          operator delete(v80);
        }
      }

      else
      {
        *v79 = v85;
        v87 = v79 + 8;
      }

      v84 = v86 + 9;
      *&v175 = v87;
      v78 = v155;
    }

    else
    {
      v82 = ***v81;
      if (!v83)
      {
        __cxa_bad_cast();
      }

      v84 = v83 + 9;
    }

    v78(v154, v84);
  }

  v95 = *MEMORY[0x29EDC8738];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x29EDC8738]))
  {
    v96 = ctu::cf::map_adapter::getBool(v176, v95);
    v150[0] = MEMORY[0x29EDCA5F8];
    v150[1] = 0x40000000;
    v97 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_4;
    v151 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_4;
    v152 = &__block_descriptor_tmp_61_5;
    v153 = v96;
    v99 = *(&v174 + 1);
    v98 = v175;
    v100 = *(&v174 + 1);
    if (*(&v174 + 1) != v175)
    {
      v100 = *(&v174 + 1);
      while (*(*v100 + 8) != 25)
      {
        if (++v100 == v175)
        {
          goto LABEL_139;
        }
      }
    }

    if (v100 == v175)
    {
LABEL_139:
      v104 = operator new(0x10uLL);
      v105 = v104;
      v104[4] = 25;
      *v104 = &unk_2A1E1D8E8;
      if (v98 >= *(&v175 + 1))
      {
        v107 = v98 - v99;
        v108 = (v98 - v99) >> 3;
        v109 = v108 + 1;
        if ((v108 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v110 = *(&v175 + 1) - v99;
        if ((*(&v175 + 1) - v99) >> 2 > v109)
        {
          v109 = v110 >> 2;
        }

        if (v110 >= 0x7FFFFFFFFFFFFFF8)
        {
          v111 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v111 = v109;
        }

        if (v111)
        {
          if (v111 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v112 = operator new(8 * v111);
        }

        else
        {
          v112 = 0;
        }

        v113 = &v112[8 * v108];
        *v113 = v105;
        v106 = v113 + 8;
        memcpy(v112, v99, v107);
        *(&v174 + 1) = v112;
        *&v175 = v106;
        *(&v175 + 1) = &v112[8 * v111];
        if (v99)
        {
          operator delete(v99);
        }
      }

      else
      {
        *v98 = v104;
        v106 = v98 + 8;
      }

      v103 = v105 + 9;
      *&v175 = v106;
      v97 = v151;
    }

    else
    {
      v101 = ***v100;
      if (!v102)
      {
        __cxa_bad_cast();
      }

      v103 = v102 + 9;
    }

    v97(v150, v103);
  }

  v114 = *MEMORY[0x29EDC87F0];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x29EDC87F0]))
  {
    v115 = ctu::cf::map_adapter::getBool(v176, v114);
    v146[0] = MEMORY[0x29EDCA5F8];
    v146[1] = 0x40000000;
    v116 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_5;
    v147 = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_5;
    v148 = &__block_descriptor_tmp_63_3;
    v149 = v115;
    v118 = *(&v174 + 1);
    v117 = v175;
    v119 = *(&v174 + 1);
    if (*(&v174 + 1) != v175)
    {
      v119 = *(&v174 + 1);
      while (*(*v119 + 8) != 26)
      {
        if (++v119 == v175)
        {
          goto LABEL_164;
        }
      }
    }

    if (v119 == v175)
    {
LABEL_164:
      v123 = operator new(0x10uLL);
      v124 = v123;
      v123[4] = 26;
      *v123 = &unk_2A1E1D938;
      if (v117 >= *(&v175 + 1))
      {
        v126 = v117 - v118;
        v127 = (v117 - v118) >> 3;
        v128 = v127 + 1;
        if ((v127 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v129 = *(&v175 + 1) - v118;
        if ((*(&v175 + 1) - v118) >> 2 > v128)
        {
          v128 = v129 >> 2;
        }

        if (v129 >= 0x7FFFFFFFFFFFFFF8)
        {
          v130 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v130 = v128;
        }

        if (v130)
        {
          if (v130 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v131 = operator new(8 * v130);
        }

        else
        {
          v131 = 0;
        }

        v132 = &v131[8 * v127];
        *v132 = v124;
        v125 = v132 + 8;
        memcpy(v131, v118, v126);
        *(&v174 + 1) = v131;
        *&v175 = v125;
        *(&v175 + 1) = &v131[8 * v130];
        if (v118)
        {
          operator delete(v118);
        }
      }

      else
      {
        *v117 = v123;
        v125 = v117 + 8;
      }

      v122 = v124 + 9;
      *&v175 = v125;
      v116 = v147;
    }

    else
    {
      v120 = ***v119;
      if (!v121)
      {
        __cxa_bad_cast();
      }

      v122 = v121 + 9;
    }

    v116(v146, v122);
  }

  v141 = v137 + 136;
  v142 = QMIServiceMsg::create();
  v143 = 25000;
  v144 = 0;
  aBlock = 0;
  v138[0] = MEMORY[0x29EDCA5F8];
  v138[1] = 1174405120;
  v138[2] = ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_6;
  v138[3] = &__block_descriptor_tmp_65_2;
  v138[4] = v137;
  v133 = *v136;
  if (*v136)
  {
    v133 = _Block_copy(v133);
  }

  v134 = *(v136 + 8);
  v139 = v133;
  object = v134;
  if (v134)
  {
    dispatch_retain(v134);
  }

  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 0x40000000;
  v178 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_2;
  v179 = &unk_29EE600E0;
  v180 = v138;
  aBlock = _Block_copy(&buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v139)
  {
    _Block_release(v139);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v174);
  MEMORY[0x29C268420](v176);
  if (v5)
  {
    CFRelease(v5);
  }

  v135 = *MEMORY[0x29EDCA608];
}

void sub_296EE462C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, _BYTE *a2)
{
  result = ctu::cf::map_adapter::getBool((a1 + 32), *MEMORY[0x29EDC8790]);
  *a2 = result;
  return result;
}

uint64_t ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_48(uint64_t a1, _BYTE *a2)
{
  result = ctu::cf::map_adapter::getBool((a1 + 32), *MEMORY[0x29EDC8788]);
  *a2 = result;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportBLERStats>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportFailCondition>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportSuccessCondition>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportTxAntennaState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportNRState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportWCI2TxAntMap>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportWWANState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

void ___ZN7antenna16QMICommandDriver4initEv_block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v2;
        (v2->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm15GetBasebandTime8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296EE4A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v26 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_47:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v24 = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(v5, a2, "getting baseband time", &v24);
      v23 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = Mutable;
      if (Mutable)
      {
        v23 = Mutable;
      }

      if (v24)
      {
        if (!a1[7])
        {
          goto LABEL_43;
        }
      }

      else
      {
        block = 0;
        p_block = &block;
        v29 = 0x2000000000;
        v30 = 0;
        v17[0] = MEMORY[0x29EDCA5F8];
        v17[1] = 1174405120;
        v18 = ___ZN5radio20QMICommandDriverBase15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
        v19 = &unk_2A1E195C0;
        v20 = &block;
        v21 = v5;
        cf = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v12 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 8);
          v34 = *v12;
          v18(v17, &v34);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        _Block_object_dispose(&block, 8);
        if (!a1[7])
        {
          goto LABEL_43;
        }
      }

      if (!a1[8])
      {
LABEL_43:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        goto LABEL_47;
      }

      v13 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      if (v9)
      {
        CFRetain(v9);
      }

      v14 = a1[7];
      if (v14)
      {
        v15 = _Block_copy(v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = a1[8];
      block = MEMORY[0x29EDCA5F8];
      p_block = 1174405120;
      v29 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_1;
      v30 = &__block_descriptor_tmp_295;
      if (v15)
      {
        aBlock = _Block_copy(v15);
        v32 = v13;
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        aBlock = 0;
        v32 = v13;
        if (!v13)
        {
LABEL_29:
          v33 = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          dispatch_async(v16, &block);
          if (v33)
          {
            CFRelease(v33);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v15)
          {
            _Block_release(v15);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          goto LABEL_43;
        }
      }

      CFRetain(v13);
      goto LABEL_29;
    }
  }
}

void sub_296EE4DA0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296EE4BF4);
}

void sub_296EE4E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v13 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v9 + 48));
  _Block_object_dispose(va3, 8);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void sub_296EE4E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t radio::QMICommandDriverBase::checkError@<X0>(uint64_t this@<X0>, const qmi::ResponseBase *a2@<X1>, const char *a3@<X2>, CFTypeRef *a4@<X8>)
{
  v45 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  if (!*(a2 + 1))
  {
    goto LABEL_33;
  }

  v7 = this;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[7] = v8;
  v41[8] = v8;
  v41[5] = v8;
  v41[6] = v8;
  v41[3] = v8;
  v41[4] = v8;
  v41[1] = v8;
  v41[2] = v8;
  v40 = v8;
  v41[0] = v8;
  *v38 = v8;
  v39 = v8;
  v36 = v8;
  v37 = v8;
  v34 = v8;
  v35 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Failed ", 7);
  if (a3)
  {
    v9 = strlen(a3);
  }

  else
  {
    a3 = "(missing description)";
    v9 = 21;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, a3, v9);
  v10 = *(a2 + 1);
  v11 = qmi::asString();
  if (v11)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, " ", 1);
    v13 = strlen(v11);
  }

  else
  {
    v11 = " Unknown baseband error!";
    v12 = &v34;
    v13 = 24;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v11, v13);
  v14 = *(v7 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if ((BYTE8(v40) & 0x10) != 0)
    {
      v25 = v40;
      if (v40 < *(&v37 + 1))
      {
        *&v40 = *(&v37 + 1);
        v25 = *(&v37 + 1);
      }

      v26 = &v37;
    }

    else
    {
      if ((BYTE8(v40) & 8) == 0)
      {
        v23 = 0;
        HIBYTE(v33) = 0;
        v24 = cf;
        goto LABEL_52;
      }

      v26 = &v35 + 1;
      v25 = *(&v36 + 1);
    }

    v27 = *v26;
    v23 = v25 - *v26;
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v23 | 7) + 1;
      }

      v24 = operator new(v28);
      cf[1] = v23;
      v33 = v28 | 0x8000000000000000;
      cf[0] = v24;
    }

    else
    {
      HIBYTE(v33) = v25 - *v26;
      v24 = cf;
      if (!v23)
      {
        goto LABEL_52;
      }
    }

    memmove(v24, v27, v23);
LABEL_52:
    *(v24 + v23) = 0;
    v29 = cf;
    if (v33 < 0)
    {
      v29 = cf[0];
    }

    *buf = 136446210;
    v44 = v29;
    _os_log_error_impl(&dword_296ECF000, v14, OS_LOG_TYPE_ERROR, "%{public}s: ", buf, 0xCu);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(cf[0]);
    }
  }

  if ((BYTE8(v40) & 0x10) != 0)
  {
    v17 = v40;
    if (v40 < *(&v37 + 1))
    {
      *&v40 = *(&v37 + 1);
      v17 = *(&v37 + 1);
    }

    v18 = v37;
    v15 = v17 - v37;
    if ((v17 - v37) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((BYTE8(v40) & 8) == 0)
    {
      v15 = 0;
      HIBYTE(v31) = 0;
      v16 = __p;
      goto LABEL_23;
    }

    v18 = *(&v35 + 1);
    v15 = *(&v36 + 1) - *(&v35 + 1);
    if (*(&v36 + 1) - *(&v35 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_35:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v15 | 7) + 1;
    }

    v16 = operator new(v19);
    __p[1] = v15;
    v31 = v19 | 0x8000000000000000;
    __p[0] = v16;
    goto LABEL_22;
  }

  HIBYTE(v31) = v15;
  v16 = __p;
  if (v15)
  {
LABEL_22:
    memmove(v16, v18, v15);
  }

LABEL_23:
  *(v16 + v15) = 0;
  v20 = *(a2 + 1);
  CreateError();
  if (cf == a4)
  {
    goto LABEL_26;
  }

  v21 = *a4;
  *a4 = cf[0];
  cf[0] = 0;
  if (v21)
  {
    CFRelease(v21);
LABEL_26:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  *&v34 = *MEMORY[0x29EDC9538];
  *(&v34 + *(v34 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v34 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[1]);
  }

  *(&v34 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v35);
  std::ostream::~ostream();
  this = MEMORY[0x29C268E60](v41);
LABEL_33:
  v22 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296EE52F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::cf::insert<__CFString const*,unsigned int>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  CFRelease(v9);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sub_296EE540C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296EE5430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

void ___ZN5radio20QMICommandDriverBase15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = *a2;
  v4 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,unsigned int>(*(a1 + 48), *MEMORY[0x29EDC8BC8], *(*(*(a1 + 32) + 8) + 30), *MEMORY[0x29EDB8ED8]);
  *(*(*(a1 + 32) + 8) + 24) &= 0xFFFFFFFFFFFFuLL;
  *(*(*(a1 + 32) + 8) + 24) *= 5;
  *(*(*(a1 + 32) + 8) + 24) >>= 2;
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = v5 / 0x3E8 + 315964800;
  memset(&v20, 0, sizeof(v20));
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v7;
  v30 = v7;
  *v27 = v7;
  v28 = v7;
  v25 = v7;
  v26 = v7;
  *__str = v7;
  v24 = v7;
  v19 = v6;
  v8 = localtime(&v19);
  strftime(v27, 0x40uLL, "%Y-%m-%d %H:%M:%S", v8);
  v9 = 1000 * (v5 % 0x3E8);
  snprintf(__str, 0x40uLL, "%s.%06d", v27, v9);
  std::string::__assign_external(&v20, __str);
  v10 = *(a1 + 48);
  v11 = *MEMORY[0x29EDC8BE0];
  v22 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  valuePtr.__r_.__value_.__r.__words[0] = v6;
  v12 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v13 = v12;
  v21 = v12;
  if (v11 && v12)
  {
    CFDictionaryAddValue(v10, v11, v12);
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  CFRelease(v13);
LABEL_8:
  if (v11)
  {
    CFRelease(v11);
  }

  ctu::cf::insert<__CFString const*,unsigned int>(*(a1 + 48), *MEMORY[0x29EDC8C20], v9, v4);
  v14 = *(a1 + 48);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&valuePtr, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    valuePtr = v20;
  }

  ctu::cf::insert<__CFString const*,std::string>(v14, *MEMORY[0x29EDC8BD0]);
  if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v15 = *(v3 + 40);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

LABEL_19:
    v17 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
    }

    LODWORD(valuePtr.__r_.__value_.__l.__data_) = 136315138;
    *(valuePtr.__r_.__value_.__r.__words + 4) = v17;
    _os_log_impl(&dword_296ECF000, v15, OS_LOG_TYPE_DEFAULT, "#I Baseband time: %s", &valuePtr, 0xCu);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    operator delete(v20.__r_.__value_.__l.__data_);
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  operator delete(valuePtr.__r_.__value_.__l.__data_);
  v15 = *(v3 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

LABEL_15:
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296EE5920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, const void *a19)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a18);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a19);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void ctu::cf::insert<__CFString const*,std::string>(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  ctu::cf::convert_copy();
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296EE5B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296EE5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  result = a2[6];
  a1[6] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::operator()<ctu::cf::CFSharedRef<__CFError> const&,ctu::cf::CFSharedRef<__CFDictionary> const&>(uint64_t *a1, const void **a2, const void **a3)
{
  v4 = *a1;
  v5 = *a2;
  v9 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  if (v6 && (v7 = CFGetTypeID(v6), v7 == CFDictionaryGetTypeID()))
  {
    cf = v6;
    CFRetain(v6);
  }

  else
  {
    cf = 0;
  }

  (*(v4 + 16))(v4, &v9, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_296EE5CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296EE5D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v5 = *(MEMORY[0x29EDC9518] + 16);
  v6 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x29EDC9558] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x29C268C70](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_296EE5FF8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C268E60](v1);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

uint64_t support::fs::getFilteredFiles(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_83:
    if ((atomic_load_explicit(&qword_2A18A58F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A58F8))
    {
      qword_2A18A5900 = 0;
      qword_2A18A5908 = 0;
      __cxa_guard_release(&qword_2A18A58F8);
    }

    if (_MergedGlobals == -1)
    {
      v40 = qword_2A18A5908;
      if (!os_log_type_enabled(qword_2A18A5908, OS_LOG_TYPE_ERROR))
      {
LABEL_86:
        v41 = 0;
        goto LABEL_89;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v40 = qword_2A18A5908;
      if (!os_log_type_enabled(qword_2A18A5908, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v44 = __error();
    v45 = strerror(*v44);
    v60.st_dev = 136315394;
    *&v60.st_mode = a1;
    WORD2(v60.st_ino) = 2080;
    *(&v60.st_ino + 6) = v45;
    _os_log_error_impl(&dword_296ECF000, v40, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v60, 0x16u);
    goto LABEL_86;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_83;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v46 = a3;
    v47 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v16 = 25;
        }

        else
        {
          v16 = (v11 | 7) + 1;
        }

        v13 = operator new(v16);
        *&__dst[8] = v12;
        *&__dst[16] = v16 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          v15 = __dst[23];
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      v15 = __dst[23];
      if ((__dst[23] & 0x80000000) == 0)
      {
LABEL_9:
        if (v15 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_78;
          }
        }

        else if (v15 == 2 && *__dst == 11822)
        {
          goto LABEL_78;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_78;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_78;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_56;
      }

      v17 = v8;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v60.st_blksize = v19;
      *v60.st_qspare = v19;
      v60.st_birthtimespec = v19;
      *&v60.st_size = v19;
      v60.st_mtimespec = v19;
      v60.st_ctimespec = v19;
      *&v60.st_uid = v19;
      v60.st_atimespec = v19;
      *&v60.st_dev = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 < 0x17)
      {
        memset(&v49, 0, sizeof(v49));
        v25 = &v49;
        *(&v49.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v49.__r_.__value_.__l.__size_ = v22 + 1;
        v49.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v49.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
LABEL_40:
      *&v25[v22] = 47;
      if (v14 >= 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if (v14 >= 0)
      {
        v29 = v15;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v49, v28, v29);
      a4 = v18;
      v31 = *&v30->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v30->__r_.__value_.__l + 2);
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (__p[23] >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = *__p;
      }

      lstat(v32, &v60);
      v8 = v17;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v60.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_78;
        }
      }

      else if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v49.__r_.__value_.__l.__data_);
      if ((v60.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        v15 = __dst[23];
LABEL_56:
        if ((v15 & 0x80u) == 0)
        {
          v33 = __dst;
        }

        else
        {
          v33 = *__dst;
        }

        if ((v15 & 0x80u) == 0)
        {
          v34 = v15;
        }

        else
        {
          v34 = *&__dst[8];
        }

        *&v35 = 0xAAAAAAAAAAAAAAAALL;
        *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v58 = v35;
        v55 = 0xAAAAAAAAAAAAAA00;
        v52 = 0xAAAAAAAAAAAAAAAALL;
        v53 = 0;
        v54 = 0;
        v56 = 0;
        v57 = 0;
        LOBYTE(v58) = 0;
        BYTE8(v58) = 0;
        v59 = 0;
        memset(__p, 0, sizeof(__p));
        *&v60.st_birthtimespec.tv_nsec = v35;
        v60.st_ctimespec.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v60.st_atimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        memset(&v60.st_mtimespec, 0, 17);
        memset(&v60.st_ctimespec.tv_nsec, 0, 17);
        LOBYTE(v60.st_size) = 0;
        v60.st_blocks = 0;
        memset(&v60, 0, 40);
        v36 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v33, (v33 + v34), &v60, 4160);
        std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, v33, (v33 + v34), &v60.st_dev, 0);
        if (*&v60.st_dev)
        {
          v60.st_ino = *&v60.st_dev;
          operator delete(*&v60.st_dev);
        }

        if (v36 && (v58 & 1) != 0)
        {
          v36 = 0;
        }

        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if (v36)
        {
          v37 = *(v46 + 8);
          if (v37 >= *(v46 + 16))
          {
            v39 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v46, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(*(v46 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v38 = *__dst;
              *(v37 + 16) = *&__dst[16];
              *v37 = v38;
            }

            v39 = (v37 + 24);
            *(v46 + 8) = v37 + 24;
          }

          *(v46 + 8) = v39;
          v47 = 1;
        }
      }

LABEL_78:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_88;
      }
    }
  }

  v47 = 0;
LABEL_88:
  closedir(v8);
  v41 = v47;
LABEL_89:
  v42 = *MEMORY[0x29EDCA608];
  return v41 & 1;
}

void sub_296EE6694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  *(v43 + 8) = v44;
  if (a24 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *support::fs::readCurrentLine@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::istream::tellg();
  v4 = v11;
  if (v11 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(v10, MEMORY[0x29EDC93D0]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v10);
  result = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, v7);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296EE686C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE5D558, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE5D560, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void ___ZN7support2fsL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

char *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(24 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * (v3 >> 3)];
  v16 = v9;
  v10 = &v8[24 * v7];
  v17 = v9;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 8));
    v9 = v16;
    v11 = v17;
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *a2;
    v9->__r_.__value_.__r.__words[2] = *(a2 + 16);
    v11 = &v8[8 * (v3 >> 3)];
  }

  v12 = &v11[1];
  v13 = v9 - v3;
  memcpy(v9 - v3, v2, v3);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1, char *a2, int a3)
{
  v6 = MEMORY[0x29C268DF0]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]) != &a2[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_296EE6F38(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, std::basic_regex<char> *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E15B98;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E15BF0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(a1, a2, a3);
      }

LABEL_44:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
    }

LABEL_15:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v13, a3);
  if (v17 != v13)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (*result != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = result + 1;
    v31 = result + 1;
    while (1)
    {
      v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_2A1E161B0;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &unk_2A1E161F8;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v35, a3, v33, (v34 + 1), (*(a1 + 28) + 1));
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_296EE73E0(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C268C00](exception, 17);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  result = a2;
  while (1)
  {
    v8 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = a1->__end_;
  marked_count = a1->__marked_count_;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v8);
  if (v11 != v8)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v9, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = a1->__end_;
    first = v14->__first_;
    v13->__first_ = first;
    v14->__first_ = v13;
    a1->__end_ = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = a1->__end_;
    v24 = (result + 1);
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = a1->__end_;
        v28 = a1->__marked_count_;
        v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v26);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = a1->__end_;
            v33 = v32->__first_;
            v31->__first_ = v33;
            v32->__first_ = v31;
            a1->__end_ = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = v23->__first_;
          v16[1].__vftable = end->__first_;
          v16[2].__vftable = v17;
          v16->__vftable = &unk_2A1E161B0;
          end->__first_ = v16;
          v23->__first_ = 0;
          v18 = operator new(0x10uLL);
          v19 = a1->__end_;
          v20 = v19->__first_;
          v18[1].__vftable = v20;
          v23->__first_ = v18;
          v19->__first_ = 0;
          v21 = operator new(0x10uLL);
          v22 = v23->__first_;
          v21->__vftable = &unk_2A1E161F8;
          v21[1].__vftable = v22;
          v19->__first_ = v21;
          a1->__end_ = v23->__first_;
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v29, a3, v27, v28 + 1, a1->__marked_count_ + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = &unk_2A1E15CE8;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v12, a3, v10, (v11 + 1), (*(a1 + 28) + 1));
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = &v13->__traits_.__loc_.__locale_ + 1;
    if ((&v13->__traits_.__loc_.__locale_ + 1) != a3 || LOBYTE(v13->__traits_.__loc_.__locale_) != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2A1E15D30;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 != a3)
  {
    while (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v9 = *(a1 + 56);
      v10 = (&v8->__traits_.__loc_.__locale_ + 1);
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, (&v8->__traits_.__loc_.__locale_ + 1), a3);
      if (v11 == (&v8->__traits_.__loc_.__locale_ + 1))
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &unk_2A1E161B0;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &unk_2A1E161F8;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E161B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E161F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E161B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E161F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return v10;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C268C00](exception, 14);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296FBBEE1)
  {
    if (((v2 & 0x8000000296FBBEE1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296FBBEE1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296FBBEE1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}