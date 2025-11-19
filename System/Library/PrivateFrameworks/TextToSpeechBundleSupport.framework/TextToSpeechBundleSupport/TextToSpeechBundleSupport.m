uint64_t sub_26D51600C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26D516078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26D5160E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D516120()
{
  MEMORY[0x26D6C22B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D516168()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D5161A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D5161D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D516218()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D516250()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D516288(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D5162A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D5162C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t _TTSSystemFocusedPid()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v0 = getAXSpringBoardServerClass_softClass;
  v10 = getAXSpringBoardServerClass_softClass;
  if (!getAXSpringBoardServerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getAXSpringBoardServerClass_block_invoke;
    v6[3] = &unk_279DA53F8;
    v6[4] = &v7;
    __getAXSpringBoardServerClass_block_invoke(v6);
    v0 = v8[3];
  }

  v1 = v0;
  _Block_object_dispose(&v7, 8);
  v2 = [v0 server];
  v3 = [v2 focusedAppPID];
  v4 = [v3 intValue];

  return v4;
}

void sub_26D5163F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXSpringBoardServerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279DA5418;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSpringBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSpringBoardServerClass_block_invoke_cold_1();
  }

  getAXSpringBoardServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D51674C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26D516950(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_26D516FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    v31 = AXTTSLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [TTSSiriSynthWrapper initWithVoicePath:v31 language:? dynamicStylePrompt:? censorPlainText:? delegate:? feResourcePath:?];
    }

    v32 = [v28 synthesizer];
    if (v32)
    {
      TTSSynthesizer::~TTSSynthesizer(v32);
      MEMORY[0x26D6C1B10]();
    }

    [v28 setSynthesizer:0];
    __cxa_end_catch();
    JUMPOUT(0x26D516F44);
  }

  _Unwind_Resume(exception_object);
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

void sub_26D517264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TTSSiriSynthWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26D517638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 96) = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v26 - 96));
  a22 = &a25;
  std::vector<TTSSynthesizer::SpeakingStyle>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void sub_26D517DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const std::logic_error a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](&a22);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    MEMORY[0x26D6C1A90](&a9, exception_ptr);
    __cxa_begin_catch(a1);
    v28 = AXTTSLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __40__TTSSiriSynthWrapper_synthesizeString___block_invoke_cold_1(&a9, v28);
    }

    [*(v23 + 32) setSynthesizing:0];
    v29 = [*(v23 + 32) delegate];
    [v29 siriDidEndSynthesis:*(v23 + 32) successfully:0];

    MEMORY[0x26D6C1AB0](&a9);
    __cxa_end_catch();
    JUMPOUT(0x26D517D70);
  }

  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v24 - 72);
  *(v24 - 72) = &a10;
  std::vector<TTSSynthesizer::Marker>::__destroy_vector::operator()[abi:ne200100]((v24 - 72));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279DA53E8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::allocator<float>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
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

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26D518BA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
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

void std::vector<TTSSynthesizer::SpeakingStyle>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TTSSynthesizer::SpeakingStyle>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TTSSynthesizer::SpeakingStyle>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        *(v3 - 2) = v4;
        operator delete(v4);
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v5 = v3 - 9;
      if (*(v3 - 49) < 0)
      {
        operator delete(*v5);
      }

      v3 -= 9;
    }

    while (v5 != v2);
  }

  a1[1] = v2;
}

void std::vector<TTSSynthesizer::Marker>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void _ZNSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEED0Ev(uint64_t a1)
{

  JUMPOUT(0x26D6C1B10);
}

__n128 _ZNKSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEE7__cloneEPNS0_6__baseIS7_EE(uint64_t a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_287ED5780;
  a2->n128_u64[1] = *(a1 + 8);
  v4 = *(a1 + 32);
  result = *(a1 + 16);
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

void _ZNSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEE18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEEclEOS6_(uint64_t a1, int *a2, __n128 a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 <= 3)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_96;
      }

      v6 = (a1 + 8);
      [*(a1 + 8) setSynthesizing:0];
      v7 = [*v6 delegate];
      [v7 siriDidEndSynthesis:*v6 successfully:1];
    }

    else
    {
      v7 = [*(a1 + 8) delegate];
      [v7 siriDidStartSynthesis:*(a1 + 8)];
    }

    goto LABEL_96;
  }

  if (v5 == 4)
  {
    v56 = *(a1 + 16);
    v57 = *v56;
    v58 = v56[1];
    if (v57 == v58)
    {
      goto LABEL_96;
    }

    v59 = v58 - v57;
    v85[0] = 1;
    v85[2] = 1;
    v85[3] = v58 - v57;
    v86 = v57;
    v60 = objc_alloc(MEMORY[0x277CB83C0]);
    v61 = [*(a1 + 8) engineFormat];
    v62 = [v60 initWithPCMFormat:v61 bufferListNoCopy:v85 deallocator:&__block_literal_global_222];

    v63 = objc_alloc(MEMORY[0x277CB83C0]);
    v64 = [*(a1 + 8) outputFormat];
    v65 = [v63 initWithPCMFormat:v64 frameCapacity:v59 >> 1];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v88 = 0;
    v66 = [*(a1 + 8) bufferConverter];
    v83 = buf;
    v84 = 0;
    __src = MEMORY[0x277D85DD0];
    v79 = 3221225472;
    v80 = ___ZZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_ENK3__0clEN14TTSSynthesizer15CallbackMessageE_block_invoke_2;
    v81 = &unk_279DA5530;
    v67 = v62;
    v82 = v67;
    [v66 convertToBuffer:v65 error:&v84 withInputFromBlock:&__src];
    v68 = v84;

    v69 = [*(a1 + 8) delegate];
    [v69 siri:*(a1 + 8) didGenerateBuffer:v65];

    v70 = *(a1 + 16);
    v71 = *v70;
    v72 = *(v70 + 8);
    if ((v72 - *v70))
    {
      v73 = v72 - 1;
      if (v72 - 1 == v71)
      {
LABEL_91:

        _Block_object_dispose(buf, 8);
        goto LABEL_96;
      }

      if (v72 != v73)
      {
        *v71 = *v73;
      }

      ++v71;
    }

    *(v70 + 8) = v71;
    goto LABEL_91;
  }

  if (v5 != 5)
  {
    goto LABEL_96;
  }

  __src = 0;
  v79 = 0;
  v80 = 0;
  v8 = *(a1 + 24);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    goto LABEL_94;
  }

  v11 = MEMORY[0x277D85DE0];
  v12 = 0x277CCA000uLL;
  a3.n128_u64[0] = 138412546;
  v77 = a3;
  do
  {
    if (*v9 == 1)
    {
      v17 = *(v9 + 55);
      if (v17 >= 0)
      {
        v18 = (v9 + 32);
      }

      else
      {
        v18 = *(v9 + 32);
      }

      if (v17 >= 0)
      {
        v19 = *(v9 + 55);
      }

      else
      {
        v19 = *(v9 + 40);
      }

      if (v19 < 1)
      {
        v23 = 0;
LABEL_25:
        v24 = 1;
        goto LABEL_68;
      }

      v20 = &v18[v19];
      v21 = v18 + 1;
      if (v19 != 1)
      {
        v22 = *v18;
        if (v22 != 48)
        {
LABEL_29:
          if (v22 != 36)
          {
            if ((v22 & 0x80) == 0 && (*(v11 + 4 * v22 + 60) & 0x400) != 0)
            {
              v23 = 0;
              while (1)
              {
                v37 = *v18;
                if ((v37 & 0x80000000) != 0 || (*(v11 + 4 * v37 + 60) & 0x400) == 0)
                {
                  goto LABEL_66;
                }

                v23 = v37 + 10 * v23 - 48;
                ++v18;
                v24 = 1;
                if (v18 >= v20)
                {
                  goto LABEL_67;
                }
              }
            }

            if (v22 == 39 || v22 == 34)
            {
              if (v19 == 1)
              {
LABEL_47:
                v23 = 0;
                goto LABEL_66;
              }

              v23 = 0;
              v38 = v18 + 2;
              while (1)
              {
                v39 = *(v38 - 1);
                if (v22 == v39)
                {
                  break;
                }

                v40 = v39 | (v23 << 8);
                v24 = 1;
                if (v38 < v20)
                {
                  ++v38;
                  v41 = v23 >= 0x10000;
                  v23 = v40;
                  if (!v41)
                  {
                    continue;
                  }
                }

                v23 = v40;
                goto LABEL_67;
              }
            }

            else
            {
              v23 = (v22 << 24) | (v18[1] << 16) | (v18[2] << 8) | v18[3];
            }

LABEL_66:
            v24 = 1;
LABEL_67:
            v12 = 0x277CCA000;
            goto LABEL_68;
          }

LABEL_30:
          if (v21 < v20)
          {
            v23 = 0;
            v25 = &v18[v19] - v21;
            v12 = 0x277CCA000;
            do
            {
              v26 = *v21;
              if ((v26 & 0x80000000) != 0)
              {
                break;
              }

              v27 = *(v11 + 4 * v26 + 60);
              if ((v27 & 0x10000) == 0)
              {
                break;
              }

              v28 = (v27 & 0x1000) != 0 ? -87 : -55;
              v29 = (v27 & 0x400) != 0 ? -48 : v28;
              v23 = v26 + 16 * v23 + v29;
              ++v21;
              --v25;
            }

            while (v25);
            goto LABEL_25;
          }

          goto LABEL_47;
        }

        if (__toupper(*v21) == 88)
        {
          v21 = v18 + 2;
          goto LABEL_30;
        }
      }

      v22 = *v18;
      goto LABEL_29;
    }

    if (*v9)
    {
      goto LABEL_80;
    }

    v13 = *(v9 + 16);
    if (!v13)
    {
      goto LABEL_49;
    }

    v14 = *(v9 + 8) + v13;
    v15 = *(a1 + 32);
    v16 = *(v15 + 23);
    if ((v16 & 0x8000000000000000) != 0)
    {
      if (v14 > v15[1])
      {
        goto LABEL_49;
      }

      v31 = *v15;
LABEL_53:
      v32 = [MEMORY[0x277D70420] utf16RangeFromUTF8Range:*&v77 chars:? size:?];
      v34 = v33;
      v35 = [*(a1 + 8) processedSpeechString];
      v23 = [v35 translateRangeInTransformedString:{v32, v34}];
      v3 = v36;

      v24 = 0;
LABEL_68:
      v42 = *(v9 + 24);
      v43 = v79;
      if (v79 >= v80)
      {
        v45 = __src;
        v46 = v79 - __src;
        v47 = (v79 - __src) >> 4;
        v48 = v47 + 1;
        if ((v47 + 1) >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v49 = v80 - __src;
        if ((v80 - __src) >> 3 > v48)
        {
          v48 = v49 >> 3;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          std::allocator<SiriTTSMarker>::allocate_at_least[abi:ne200100](&__src, v48);
        }

        v50 = (v79 - __src) >> 4;
        v51 = 16 * v47;
        *v51 = v24;
        *(v51 + 1) = 0;
        *(v51 + 2) = v3;
        *(v51 + 4) = v23;
        *(v51 + 8) = v42;
        v44 = 16 * v47 + 16;
        v52 = (v51 - 16 * v50);
        memcpy(v52, v45, v46);
        v53 = __src;
        __src = v52;
        v79 = v44;
        v80 = 0;
        if (v53)
        {
          operator delete(v53);
        }
      }

      else
      {
        *v79 = v24;
        *(v43 + 1) = 0;
        *(v43 + 2) = v3;
        *(v43 + 4) = v23;
        v44 = v43 + 16;
        *(v43 + 8) = v42;
      }

      v79 = v44;
      goto LABEL_80;
    }

    if (v14 <= v16)
    {
      goto LABEL_53;
    }

LABEL_49:
    v30 = AXTTSLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v54 = [*(v12 + 2992) numberWithUnsignedLong:*(v9 + 8)];
      v55 = [*(v12 + 2992) numberWithUnsignedLong:*(v9 + 16)];
      *buf = v77.n128_u32[0];
      *&buf[4] = v54;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      _os_log_error_impl(&dword_26D514000, v30, OS_LOG_TYPE_ERROR, "Siri returned invalid word marker [%@,%@], skipping.", buf, 0x16u);

      v12 = 0x277CCA000;
    }

LABEL_80:
    v9 += 56;
  }

  while (v9 != v10);
  if (__src != v79)
  {
    v74 = [*(a1 + 8) delegate];
    [v74 siri:*(a1 + 8) didGenerateMarkers:? count:?];
  }

LABEL_94:
  std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](*(a1 + 24));
  if (__src)
  {
    v79 = __src;
    operator delete(__src);
  }

LABEL_96:
  v75 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26D51978C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0NS_9allocatorIS2_EEFiN14TTSSynthesizer15CallbackMessageEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id ___ZZZ40__TTSSiriSynthWrapper_synthesizeString__EUb_ENK3__0clEN14TTSSynthesizer15CallbackMessageE_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

void std::allocator<SiriTTSMarker>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

uint64_t std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

Swift::UInt32 __swiftcall String.osType()()
{
  v0 = sub_26D52B5C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  sub_26D52B5B0();
  v5 = sub_26D52B5A0();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 != 15)
  {
    v9 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_10;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (v12)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v13 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (v9)
    {
      if (__OFSUB__(HIDWORD(v5), v5))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (HIDWORD(v5) - v5 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (BYTE6(v7) != 4)
    {
      goto LABEL_10;
    }

    sub_26D519F80(v5, v7);
    sub_26D519D60(v5, v7, v5, v7, &v15);
LABEL_10:
    sub_26D519C84(v5, v7);
  }

  result = v15;
  if (HIDWORD(v15))
  {
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26D519C84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D519C98(a1, a2);
  }

  return a1;
}

uint64_t sub_26D519C98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unsigned __int8 *sub_26D519CEC(unsigned __int8 *result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return result;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_12;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_11:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (v5)
  {
    v9 = *a4;
    do
    {
      v10 = *result++;
      v9 = v10 | (v9 << 8);
      *a4 = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_26D519D60(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v25, 0, 14);
      v16 = v25;
      goto LABEL_19;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    a1 = sub_26D52AFA0();
    v13 = a1;
    if (a1)
    {
      a1 = sub_26D52AFC0();
      if (__OFSUB__(v11, a1))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v13 += v11 - a1;
    }

    if (!__OFSUB__(v12, v11))
    {
LABEL_17:
      sub_26D52AFB0();
      v16 = v13;
LABEL_19:
      sub_26D519CEC(v16, a3, a4, a5);
      goto LABEL_20;
    }

    __break(1u);
LABEL_13:
    v14 = a1;
    if (a1 > a1 >> 32)
    {
      __break(1u);
      goto LABEL_33;
    }

    v13 = sub_26D52AFA0();
    if (v13)
    {
      v15 = sub_26D52AFC0();
      if (__OFSUB__(v14, v15))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v13 += v14 - v15;
    }

    goto LABEL_17;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  v25[0] = a1;
  LOWORD(v25[1]) = a2;
  BYTE2(v25[1]) = BYTE2(a2);
  BYTE3(v25[1]) = BYTE3(a2);
  BYTE4(v25[1]) = BYTE4(a2);
  v9 = a4 >> 62;
  BYTE5(v25[1]) = BYTE5(a2);
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_20;
    }

    v20 = *(a3 + 16);
    v19 = *(a3 + 24);
    v21 = __OFSUB__(v19, v20);
    v10 = v19 - v20;
    if (!v21)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
    goto LABEL_28;
  }

  LODWORD(v10) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_36;
  }

  v10 = v10;
LABEL_27:
  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  if (v10)
  {
    v22 = *a5;
    v23 = v25;
    do
    {
      v24 = *v23++;
      v22 = v24 | (v22 << 8);
      --v10;
    }

    while (v10);
    *a5 = v22;
  }

LABEL_20:
  result = sub_26D519C98(a3, a4);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26D519F80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D519FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D52B380();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for TTSSiriSynthVoice.Voice(0);

  return MEMORY[0x2821FEBC8](a2, v5, 1);
}

uint64_t sub_26D51A078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);

  return MEMORY[0x2821FEBC8](a3, v4, 0);
}

uint64_t sub_26D51A0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D51A124(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v3 = sub_26D52B3B0();
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D52B3F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26D52B380();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26D51A0C0(v2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (*v21 == v55 && v21[1] == v56)
    {
      v48 = v21[1];

      v47 = 1;
    }

    else
    {
      v46 = v21[1];
      v47 = sub_26D52B810();
    }

    return v47 & 1;
  }

  v54 = v14;
  (*(v14 + 32))(v17, v21, v13);
  sub_26D52B360();
  v22 = sub_26D52B3E0();
  v24 = v23;
  (*(v9 + 8))(v12, v8);
  v26 = v55;
  v25 = v56;
  if (v22 == v55 && v24 == v56)
  {

    goto LABEL_19;
  }

  v28 = sub_26D52B810();

  if (v28)
  {
LABEL_19:
    (*(v54 + 8))(v17, v13);
    v47 = 1;
    return v47 & 1;
  }

  v53 = v17;
  v29 = sub_26D52B370();
  KeyPath = swift_getKeyPath();
  *(&v51 - 2) = MEMORY[0x28223BE20](KeyPath);
  v31 = swift_getKeyPath();
  v32 = *(v29 + 16);
  if (v32)
  {
    v52 = v13;
    v63 = MEMORY[0x277D84F90];
    sub_26D51D420(0, v32, 0);
    v33 = v63;
    v34 = *(v60 + 16);
    v35 = *(v60 + 80);
    v51 = v29;
    v36 = v29 + ((v35 + 32) & ~v35);
    v57 = *(v60 + 72);
    v58 = v34;
    v60 += 16;
    v37 = (v60 - 8);
    do
    {
      v38 = v59;
      v58(v7, v36, v59);
      v39 = v31;
      swift_getAtKeyPath();
      (*v37)(v7, v38);
      v41 = v61;
      v40 = v62;
      v63 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_26D51D420((v42 > 1), v43 + 1, 1);
        v33 = v63;
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      v36 += v57;
      --v32;
      v31 = v39;
    }

    while (v32);

    v26 = v55;
    v25 = v56;
    v13 = v52;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v61 = v26;
  v62 = v25;
  MEMORY[0x28223BE20](v49);
  *(&v51 - 2) = &v61;
  v47 = sub_26D51D54C(sub_26D51D68C, (&v51 - 4), v33);

  (*(v54 + 8))(v53, v13);
  return v47 & 1;
}

uint64_t sub_26D51A640(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502C10, &qword_26D52CAA8);
  return sub_26D52B570() & 1;
}

uint64_t sub_26D51A6A4(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502C10, &qword_26D52CAA8);
  return sub_26D52B560();
}

uint64_t sub_26D51A6F4@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_26D52B3A0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_26D51A734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D52B430();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D51A760(uint64_t a1)
{
  result = sub_26D52B2C0();
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.2234e18)
  {
    return v3 != a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26D51A7E8()
{
  v1 = *v0;
  sub_26D52B860();
  MEMORY[0x26D6C18F0](v1);
  return sub_26D52B890();
}

uint64_t sub_26D51A85C()
{
  v1 = *v0;
  sub_26D52B860();
  MEMORY[0x26D6C18F0](v1);
  return sub_26D52B890();
}

uint64_t sub_26D51A8A0()
{
  if (*v0)
  {
    return 0x326E6F6973726576;
  }

  else
  {
    return 0x316E6F6973726576;
  }
}

uint64_t sub_26D51A8DC(uint64_t a1, unint64_t a2, int a3)
{
  v193 = a3;
  v207 = a2;
  v209 = a1;
  v199 = sub_26D52B4B0();
  v179 = *(v199 - 8);
  v3 = *(v179 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v185 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v205 = &v173 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v196 = &v173 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v201 = &v173 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v203 = &v173 - v13;
  MEMORY[0x28223BE20](v12);
  v202 = &v173 - v14;
  v188 = sub_26D52B3F0();
  v187 = *(v188 - 8);
  v15 = *(v187 + 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_26D52B030();
  v191 = *(v192 - 8);
  v17 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v190 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26D52B350();
  v20 = *(v19 - 8);
  v197 = v19;
  v198 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v177 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = &v173 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v182 = &v173 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v189 = &v173 - v29;
  MEMORY[0x28223BE20](v28);
  v184 = &v173 - v30;
  v208 = sub_26D52B3B0();
  v31 = *(v208 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v208);
  v178 = &v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v204 = &v173 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v176 = &v173 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v206 = &v173 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v181 = &v173 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v173 - v44;
  MEMORY[0x28223BE20](v43);
  v183 = &v173 - v46;
  v47 = sub_26D52B380();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v173 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502BF0, &qword_26D52C930);
  v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v173 - v54;
  v56 = sub_26D52B180();
  v195 = *(v56 - 8);
  v57 = *(v195 + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v173 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = (&v173 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26D51A0C0(v200, v63);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v81 = *v63;
    v82 = v63[1];
    sub_26D52B1D0();
    sub_26D52B1B0();
    sub_26D52B1A0();

    v83 = v195;
    if ((*(v195 + 48))(v55, 1, v56) != 1)
    {
      (*(v83 + 32))(v59, v55, v56);
      sub_26D52B1B0();
      sub_26D52B1C0();

      sub_26D52B1B0();
      v84 = sub_26D52B190();

      (*(v83 + 8))(v59, v56);
      return v84;
    }

    sub_26D51D798(v55, &qword_280502BF0, &qword_26D52C930);
    return 0;
  }

  v175 = v48;
  v64 = *(v48 + 32);
  v174 = v47;
  v64(v51, v63, v47);
  v194 = v51;
  result = sub_26D52B370();
  v66 = result;
  v67 = *(result + 16);
  v68 = v208;
  if (v67)
  {
    v69 = 0;
    v70 = (v31 + 8);
    while (1)
    {
      if (v69 >= *(v66 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      (*(v31 + 16))(v45, v66 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v69, v68);
      swift_getKeyPath();
      sub_26D52B3A0();

      if (v212 == v209 && v213 == v207)
      {
        break;
      }

      v71 = sub_26D52B810();

      if (v71)
      {
        goto LABEL_46;
      }

      ++v69;
      v68 = v208;
      result = (*v70)(v45, v208);
      if (v67 == v69)
      {
        goto LABEL_9;
      }
    }

LABEL_46:

    v118 = v183;
    (*(v31 + 32))(v183, v45, v208);
    v119 = sub_26D51DDB0();
    v120 = v197;
    v121 = v198;
    v122 = v184;
    (*(v198 + 16))(v184, v119, v197);
    v123 = sub_26D52B330();
    v124 = sub_26D52B6F0();
    v125 = os_log_type_enabled(v123, v124);
    v126 = v194;
    if (v125)
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v212 = v128;
      *v127 = 136315138;
      *(v127 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v212);
      _os_log_impl(&dword_26D514000, v123, v124, "%s: Got legacy modelID for voiceID. Returning model path directly", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x26D6C2260](v128, -1, -1);
      MEMORY[0x26D6C2260](v127, -1, -1);
    }

    (*(v121 + 8))(v122, v120);
    v129 = v175;
    v130 = v174;
    v131 = v192;
    v132 = v190;
    sub_26D52B390();
    v84 = sub_26D52B020();
    (*(v191 + 8))(v132, v131);
    (*v70)(v118, v208);
    (*(v129 + 8))(v126, v130);
    return v84;
  }

LABEL_9:

  v72 = v186;
  v73 = v194;
  sub_26D52B360();
  v74 = sub_26D52B3E0();
  v76 = v75;
  (*(v187 + 1))(v72, v188);
  v77 = v207;
  if (v74 == v209 && v76 == v207)
  {

    v78 = v197;
    v79 = v198;
    v80 = v189;
    goto LABEL_16;
  }

  v85 = sub_26D52B810();

  v78 = v197;
  v79 = v198;
  v80 = v189;
  if ((v85 & 1) == 0)
  {
    v133 = sub_26D51DDB0();
    v134 = v177;
    (*(v79 + 16))(v177, v133, v78);

    v135 = sub_26D52B330();
    v136 = sub_26D52B6E0();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v212 = v138;
      *v137 = 136315394;
      *(v137 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v212);
      *(v137 + 12) = 2080;
      *(v137 + 14) = sub_26D51CE78(v209, v77, &v212);
      _os_log_impl(&dword_26D514000, v135, v136, "%s: No matching PV found for voiceID %s", v137, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v138, -1, -1);
      MEMORY[0x26D6C2260](v137, -1, -1);
    }

    (*(v79 + 8))(v134, v78);
    (*(v175 + 8))(v73, v174);
    return 0;
  }

LABEL_16:
  v86 = sub_26D51DDB0();
  v87 = *(v79 + 16);
  v186 = v86;
  v188 = v79 + 16;
  v187 = v87;
  v87(v80);

  v88 = sub_26D52B330();
  v89 = sub_26D52B6F0();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v212 = v91;
    *v90 = 136315394;
    *(v90 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v212);
    *(v90 + 12) = 2080;
    v92 = v80;
    v93 = v193;
    if (v193)
    {
      v94 = 0x326E6F6973726576;
    }

    else
    {
      v94 = 0x316E6F6973726576;
    }

    v95 = sub_26D51CE78(v94, 0xE800000000000000, &v212);

    *(v90 + 14) = v95;
    _os_log_impl(&dword_26D514000, v88, v89, "%s: Found matching PV for voiceID. looking for model matching preferred flavor: %s", v90, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v91, -1, -1);
    MEMORY[0x26D6C2260](v90, -1, -1);

    v189 = *(v79 + 8);
    (v189)(v92, v78);
  }

  else
  {

    v189 = *(v79 + 8);
    (v189)(v80, v78);
    v93 = v193;
  }

  v96 = v185;
  result = sub_26D52B370();
  v97 = *(result + 16);
  v209 = result;
  v195 = v97;
  if (v93)
  {
    v98 = v208;
    v99 = v199;
    if (v97)
    {
      v100 = 0;
      v181 = v176;
      v101 = (v179 + 8);
      v200 = (v31 + 8);
      while (v100 < *(result + 16))
      {
        (*(v31 + 16))(v204, result + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v100, v98);
        swift_getKeyPath();
        sub_26D52B3A0();

        sub_26D52B480();
        sub_26D51D6E4();
        sub_26D52B640();
        sub_26D52B640();
        if (v212 == v210 && v213 == v211)
        {
          v152 = *v101;
          (*v101)(v96, v99);
          v152(v205, v99);

LABEL_68:

          v153 = *(v31 + 32);
          v154 = v181;
          v155 = v181;
          v156 = v204;
          goto LABEL_71;
        }

        v102 = sub_26D52B810();
        v103 = *v101;
        (*v101)(v96, v99);
        v103(v205, v99);

        if (v102)
        {
          goto LABEL_68;
        }

        ++v100;
        v98 = v208;
        (*v200)(v204, v208);
        v99 = v199;
        result = v209;
        if (v195 == v100)
        {
          goto LABEL_43;
        }
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    goto LABEL_43;
  }

  v104 = v208;
  v105 = v199;
  if (!v97)
  {
LABEL_43:

    v112 = sub_26D52B370();
    if (*(v112 + 16))
    {
      v113 = v178;
      v114 = v208;
      (*(v31 + 16))(v178, v112 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v208);

      v115 = v190;
      sub_26D52B390();
      (*(v31 + 8))(v113, v114);
      v84 = sub_26D52B020();
      v117 = v116;
      (*(v191 + 8))(v115, v192);
    }

    else
    {

      v84 = 0;
      v117 = 0;
    }

    v139 = v193;
    v140 = v182;
    v141 = v197;
    (v187)(v182, v186, v197);

    v142 = sub_26D52B330();
    v143 = sub_26D52B6F0();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v212 = v145;
      *v144 = 136315650;
      *(v144 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v212);
      *(v144 + 12) = 2080;
      if (v139)
      {
        v146 = 0x326E6F6973726576;
      }

      else
      {
        v146 = 0x316E6F6973726576;
      }

      v147 = sub_26D51CE78(v146, 0xE800000000000000, &v212);

      *(v144 + 14) = v147;
      *(v144 + 22) = 2080;
      if (v117)
      {
        v148 = v84;
      }

      else
      {
        v148 = 0x3E6C696E3CLL;
      }

      if (v117)
      {
        v149 = v117;
      }

      else
      {
        v149 = 0xE500000000000000;
      }

      v150 = sub_26D51CE78(v148, v149, &v212);

      *(v144 + 24) = v150;
      _os_log_impl(&dword_26D514000, v142, v143, "%s: Did not find PV matching preferred flavor: %s. Falling back to next best option: %s", v144, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v145, -1, -1);
      MEMORY[0x26D6C2260](v144, -1, -1);

      v151 = v182;
    }

    else
    {

      v151 = v140;
    }

    (v189)(v151, v141);
    (*(v175 + 8))(v194, v174);
    return v84;
  }

  v106 = 0;
  v205 = (v31 + 16);
  v107 = (v179 + 8);
  v200 = (v31 + 8);
  while (v106 < *(result + 16))
  {
    (*(v31 + 16))(v206, result + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v106, v104);
    swift_getKeyPath();
    sub_26D52B3A0();

    sub_26D52B4A0();
    sub_26D51D6E4();
    sub_26D52B640();
    sub_26D52B640();
    if (v212 == v210 && v213 == v211)
    {
      v108 = 1;
    }

    else
    {
      v108 = sub_26D52B810();
    }

    v109 = *v107;
    (*v107)(v203, v105);
    v109(v202, v105);

    if (v108)
    {
      goto LABEL_70;
    }

    swift_getKeyPath();
    sub_26D52B3A0();

    v110 = v196;
    sub_26D52B490();
    sub_26D52B640();
    sub_26D52B640();
    if (v212 == v210 && v213 == v211)
    {
      v109(v110, v105);
      v109(v201, v105);

LABEL_70:

      v153 = *(v31 + 32);
      v154 = v181;
      v155 = v181;
      v156 = v206;
LABEL_71:
      v157 = v208;
      v153(v155, v156, v208);
      v158 = v190;
      sub_26D52B390();
      (*v200)(v154, v157);
      v84 = sub_26D52B020();
      v160 = v159;
      (*(v191 + 8))(v158, v192);
      v161 = v180;
      v162 = v197;
      (v187)(v180, v186, v197);

      v163 = sub_26D52B330();
      v164 = sub_26D52B6F0();

      v165 = os_log_type_enabled(v163, v164);
      v166 = v194;
      if (v165)
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v212 = v168;
        *v167 = 136315650;
        *(v167 + 4) = sub_26D51CE78(0xD00000000000001CLL, 0x800000026D52D790, &v212);
        *(v167 + 12) = 2080;
        if (v193)
        {
          v169 = 0x326E6F6973726576;
        }

        else
        {
          v169 = 0x316E6F6973726576;
        }

        v170 = sub_26D51CE78(v169, 0xE800000000000000, &v212);

        *(v167 + 14) = v170;
        *(v167 + 22) = 2080;

        v171 = sub_26D51CE78(v84, v160, &v212);

        *(v167 + 24) = v171;
        _os_log_impl(&dword_26D514000, v163, v164, "%s: Found PV matching preferred flavor: %s: %s", v167, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6C2260](v168, -1, -1);
        MEMORY[0x26D6C2260](v167, -1, -1);

        v172 = v180;
      }

      else
      {

        v172 = v161;
      }

      (v189)(v172, v162);
      (*(v175 + 8))(v166, v174);
      return v84;
    }

    v111 = sub_26D52B810();
    v109(v110, v105);
    v109(v201, v105);

    if (v111)
    {
      goto LABEL_70;
    }

    ++v106;
    v104 = v208;
    (*v200)(v206, v208);
    result = v209;
    if (v195 == v106)
    {
      goto LABEL_43;
    }
  }

LABEL_81:
  __break(1u);
  return result;
}

BOOL sub_26D51C1DC()
{
  v1 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D51A0C0(v0, v4);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  sub_26D51D73C(v4);
  return v5;
}

uint64_t sub_26D51C27C()
{
  v0 = sub_26D52B4B0();
  v47 = *(v0 - 8);
  v1 = *(v47 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v49 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v39 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = sub_26D52B3B0();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C00, &qword_26D52C968);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - v16;
  v18 = sub_26D52B380();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D51A0C0(v48, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v18;
    v40 = v17;
    (*(v19 + 32))(v22, v26, v18);
    result = sub_26D52B370();
    v28 = result;
    v43 = *(result + 16);
    if (v43)
    {
      v29 = 0;
      v30 = (v47 + 8);
      v41 = (v50 + 8);
      v42 = v10;
      v47 = v11;
      v48 = v50 + 16;
      v45 = v22;
      v46 = v19;
      v44 = result;
      while (v29 < *(v28 + 16))
      {
        (*(v50 + 16))(v52, v28 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v29, v11);
        swift_getKeyPath();
        sub_26D52B3A0();

        sub_26D52B4A0();
        sub_26D51D6E4();
        sub_26D52B640();
        sub_26D52B640();
        if (v55 == v53 && v56 == v54)
        {
          v31 = 1;
        }

        else
        {
          v31 = sub_26D52B810();
        }

        v32 = *v30;
        (*v30)(v8, v0);
        v32(v10, v0);

        if (v31)
        {
          goto LABEL_17;
        }

        swift_getKeyPath();
        sub_26D52B3A0();

        v33 = v49;
        sub_26D52B490();
        sub_26D52B640();
        sub_26D52B640();
        if (v55 == v53 && v56 == v54)
        {
          v32(v33, v0);
          v32(v51, v0);

LABEL_17:

          (*(v46 + 8))(v45, v39);
          v36 = v50;
          v37 = v40;
          v38 = v47;
          (*(v50 + 32))(v40, v52, v47);
          (*(v36 + 56))(v37, 0, 1, v38);
          sub_26D51D798(v37, &qword_280502C00, &qword_26D52C968);
          return 1;
        }

        v34 = sub_26D52B810();
        v32(v33, v0);
        v32(v51, v0);

        v10 = v42;
        if (v34)
        {
          goto LABEL_17;
        }

        ++v29;
        v11 = v47;
        result = (*v41)(v52, v47);
        v28 = v44;
        v22 = v45;
        v19 = v46;
        if (v43 == v29)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
      (*(v19 + 8))(v22, v39);

      v35 = v40;
      (*(v50 + 56))(v40, 1, 1, v11);
      sub_26D51D798(v35, &qword_280502C00, &qword_26D52C968);
      return 0;
    }
  }

  else
  {
    sub_26D51D73C(v26);
    return 0;
  }

  return result;
}

uint64_t sub_26D51C900()
{
  v1 = sub_26D52B4B0();
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v35 - v5;
  v6 = sub_26D52B3B0();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C00, &qword_26D52C968);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_26D52B380();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D51A0C0(v0, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v14;
    v39 = v13;
    v37 = v15;
    (*(v15 + 32))(v18, v22, v14);
    v36 = v18;
    result = sub_26D52B370();
    v41 = *(result + 16);
    if (v41)
    {
      v24 = 0;
      v42 = v44 + 16;
      v43 = result;
      v25 = (v40 + 8);
      v26 = (v44 + 8);
      while (v24 < *(result + 16))
      {
        (*(v44 + 16))(v9, result + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v24, v6);
        swift_getKeyPath();
        sub_26D52B3A0();

        sub_26D52B480();
        sub_26D51D6E4();
        sub_26D52B640();
        sub_26D52B640();
        if (v49 == v47 && v50 == v48)
        {
          v32 = *v25;
          (*v25)(v46, v1);
          v32(v45, v1);

LABEL_12:
          (*(v37 + 8))(v36, v38);

          v33 = v44;
          v34 = v39;
          (*(v44 + 32))(v39, v9, v6);
          (*(v33 + 56))(v34, 0, 1, v6);
          sub_26D51D798(v34, &qword_280502C00, &qword_26D52C968);
          return 1;
        }

        v27 = sub_26D52B810();
        v28 = v9;
        v29 = v6;
        v30 = *v25;
        (*v25)(v46, v1);
        v30(v45, v1);
        v6 = v29;
        v9 = v28;

        if (v27)
        {
          goto LABEL_12;
        }

        ++v24;
        (*v26)(v28, v6);
        result = v43;
        if (v41 == v24)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      (*(v37 + 8))(v36, v38);

      v31 = v39;
      (*(v44 + 56))(v39, 1, 1, v6);
      sub_26D51D798(v31, &qword_280502C00, &qword_26D52C968);
      return 0;
    }
  }

  else
  {
    sub_26D51D73C(v22);
    return 0;
  }

  return result;
}

uint64_t sub_26D51CE78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D51CF44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26D51DC18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26D51CF44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26D51D050(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26D52B7E0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26D51D050(uint64_t a1, unint64_t a2)
{
  v4 = sub_26D51D09C(a1, a2);
  sub_26D51D1CC(&unk_287ED5820);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26D51D09C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D51D2B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26D52B7E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26D52B610();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D51D2B8(v10, 0);
        result = sub_26D52B7A0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26D51D1CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26D51D32C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D51D2B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502E20, &qword_26D52CAB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26D51D32C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502E20, &qword_26D52CAB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26D51D420(char *a1, int64_t a2, char a3)
{
  result = sub_26D51D440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D51D440(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C20, &qword_26D52CAB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D51D54C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26D51D68C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D52B810() & 1;
  }
}

unint64_t sub_26D51D6E4()
{
  result = qword_280502BF8;
  if (!qword_280502BF8)
  {
    sub_26D52B4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502BF8);
  }

  return result;
}

uint64_t sub_26D51D73C(uint64_t a1)
{
  v2 = type metadata accessor for TTSSiriSynthVoice.Voice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D51D798(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26D51D7FC()
{
  result = qword_280502C08;
  if (!qword_280502C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502C08);
  }

  return result;
}

uint64_t sub_26D51D898(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D51D8D0()
{
  result = type metadata accessor for TTSSiriSynthVoice.Voice(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D51D98C()
{
  result = sub_26D52B380();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSSiriSynthVoice.PersonalVoiceFlavor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSSiriSynthVoice.PersonalVoiceFlavor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D51DB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D51DBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D51DC18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D51DCB0()
{
  result = *MEMORY[0x277CE6828];
  if (*MEMORY[0x277CE6828])
  {
    result = sub_26D52B600();
    qword_281225110 = result;
    qword_281225108 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D51DCEC()
{
  v0 = sub_26D52B350();
  __swift_allocate_value_buffer(v0, qword_2812252A8);
  __swift_project_value_buffer(v0, qword_2812252A8);
  if (qword_2812250F8 != -1)
  {
    swift_once();
  }

  return sub_26D52B340();
}

uint64_t sub_26D51DDD4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26D52B350();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26D51DE28()
{
  v1 = *v0;
  sub_26D52B860();
  MEMORY[0x26D6C1900](v1);
  return sub_26D52B890();
}

uint64_t sub_26D51DE9C()
{
  v1 = *v0;
  sub_26D52B860();
  MEMORY[0x26D6C1900](v1);
  return sub_26D52B890();
}

void *sub_26D51DEE0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for TTSSiriSynthAudioUnit()
{
  result = qword_281225170;
  if (!qword_281225170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_26D51DF58@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + qword_2812252D0;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_26D51DFA8()
{
  v1 = (v0 + qword_2812252D0);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return result;
}

__n128 sub_26D51DFF4(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = (a1 + qword_2812252D0);
  v5 = a3[1];
  v6 = *a3;
  swift_beginAccess();
  result = v5;
  *v3 = v6;
  v3[1] = v5;
  return result;
}

uint64_t sub_26D51E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + qword_2812252D0);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_26D51E0B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

id sub_26D51E21C()
{
  v1 = qword_2812251B0;
  v2 = *(v0 + qword_2812251B0);
  if (v2)
  {
    v3 = *(v0 + qword_2812251B0);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_26D52B470()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TTSSiriSynthAudioUnit.__allocating_init(componentDescription:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v5 = [objc_allocWithZone(v4) initWithComponentDescription:v10 options:a4 error:v12];
  if (v5)
  {
    v6 = v12[0];
  }

  else
  {
    v7 = v12[0];
    sub_26D52AFF0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

char *TTSSiriSynthAudioUnit.init(componentDescription:options:)(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v5 = v4;
  v95 = a4;
  v94 = a3;
  v93 = a2;
  v92 = a1;
  v126 = *MEMORY[0x277D85DE8];
  v119 = sub_26D52B720();
  v112 = *(v119 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x28223BE20]();
  v111 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_26D52B710();
  v8 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20]();
  v110 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_26D52B4F0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v108 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = qword_281225120;
  v120 = sub_26D52AB00(0, &qword_281224F78, 0x277CEFD48);
  v12 = sub_26D52B2A0();
  v116 = v13;
  v117 = v12;
  v113 = type metadata accessor for TTSSiriSynthAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = 0x279DA5000uLL;
  v17 = [v15 bundleForClass_];
  v18 = sub_26D52AFD0();
  v114 = v19;
  v115 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C20, &qword_26D52CAB8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26D52CAD0;
  v21 = [v15 bundleForClass_];
  v22 = sub_26D52AFD0();
  v24 = v23;

  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v25 = [v15 bundleForClass_];
  v26 = sub_26D52AFD0();
  v28 = v27;

  *(v20 + 48) = v26;
  *(v20 + 56) = v28;
  v29 = [v15 bundleForClass_];
  sub_26D52AFD0();

  v30 = v114;
  sub_26D52B700();

  sub_26D52B2D0();
  if ((LODWORD(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v31 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v31 < 9.2234e18)
  {
    v122 = v31;
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    sub_26D52B110();
    v117 = qword_281225168;
    v116 = sub_26D52B2B0();
    v32 = [v15 bundleForClass_];
    v115 = sub_26D52AFD0();

    v33 = [v15 bundleForClass_];
    sub_26D52AFD0();

    v34 = MEMORY[0x277D84F90];
    sub_26D52B700();

    v122 = 0;
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    sub_26D52B110();
    v35 = &v5[qword_2812252D0];
    *v35 = 0u;
    *(v35 + 1) = 0u;
    v105 = qword_2812251B0;
    *&v5[qword_2812251B0] = 0;
    v36 = qword_281225198;
    sub_26D52AB00(0, &qword_281224F58, 0x277D85C78);
    v120 = "speechStyleFooter";
    sub_26D52B4D0();
    *&v123 = v34;
    v115 = sub_26D528E80(&unk_281224F60, MEMORY[0x277D85230]);
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280502C28, &qword_26D52CB20);
    v116 = sub_26D51F3EC();
    sub_26D52B780();
    v107 = *MEMORY[0x277D85260];
    v37 = v111;
    v112 = *(v112 + 104);
    (v112)(v111);
    v38 = sub_26D52B730();
    v106 = v36;
    *&v5[v36] = v38;
    v104 = qword_2812251A0;
    *&v5[qword_2812251A0] = 0;
    *&v5[qword_281225278] = 0x40E7700000000000;
    *&v5[qword_281225260] = 1;
    *&v5[qword_2812251C8] = 1;
    *&v5[qword_281225290] = 1024;
    v99 = qword_2812251D8;
    *&v5[qword_2812251D8] = 0;
    v100 = qword_281225240;
    *&v5[qword_281225240] = 0;
    v101 = qword_2812251E8;
    *&v5[qword_2812251E8] = 0;
    v102 = qword_281225190;
    *&v5[qword_281225190] = 0;
    v39 = qword_281225138;
    v40 = sub_26D52B0E0();
    v41 = *(*(v40 - 8) + 56);
    v103 = v39;
    v41(&v5[v39], 1, 1, v40);
    v96 = qword_281225200;
    v42 = MEMORY[0x277D84F90];
    *&v5[qword_281225200] = MEMORY[0x277D84F90];
    v98 = qword_281225218;
    *&v5[qword_281225218] = 0;
    *&v5[qword_2812251C0] = 0;
    v97 = qword_281225238;
    *&v5[qword_281225238] = v42;
    v43 = v42;
    *&v5[qword_281225250] = 0;
    v44 = qword_2812251F8;
    v45 = [objc_allocWithZone(MEMORY[0x277CCA928]) init];
    v120 = v44;
    *&v5[v44] = v45;
    v46 = qword_281225270;
    sub_26D52B4E0();
    *&v123 = v43;
    v15 = v46;
    sub_26D52B780();
    (v112)(v37, v107, v119);
    *&v5[v46] = sub_26D52B730();
    v30 = qword_281225288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C38, &qword_26D52CB28);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *&v5[v30] = v47;
    v16 = qword_281225130;
    v48 = sub_26D52B270();
    (*(*(v48 - 8) + 56))(&v5[v16], 1, 1, v48);
    v49 = &v5[qword_281225208];
    *v49 = 0;
    *(v49 + 1) = 0;
    v49[16] = 1;
    v5[qword_2812251D0] = 0;
    v20 = qword_281225228;
    v50 = sub_26D52B0B0();
    (*(*(v50 - 8) + 56))(&v5[v20], 1, 1, v50);
    v5[qword_2812252A0] = 1;
    v5[qword_281225118] = 2;
    if (qword_2812250F0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_5:
  v51 = sub_26D52B350();
  __swift_project_value_buffer(v51, qword_2812252A8);
  v52 = sub_26D52B330();
  v53 = sub_26D52B6C0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_26D514000, v52, v53, "### Initializing TTSSiriSynthAudioUnit.", v54, 2u);
    MEMORY[0x26D6C2260](v54, -1, -1);
  }

  v55 = [objc_allocWithZone(MEMORY[0x277CB83A0]) initStandardFormatWithSampleRate:1 channels:48000.0];
  if (!v55)
  {
    *&v123 = sub_26D52AB00(0, &qword_280502C40, 0x277CB83A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C48, &qword_26D52CB30);
    v78 = sub_26D52B5D0();
    v80 = v79;
    sub_26D51F498();
    swift_allocError();
    *v81 = v78;
    *(v81 + 8) = v80;
    *(v81 + 16) = 1;
    swift_willThrow();
LABEL_14:
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
    v70 = *(*(v83 - 8) + 8);
    (v70)(&v5[v118], v83);
    (v70)(&v5[v117], v83);

    v84 = *&v5[v104];

    sub_26D51D798(&v5[v103], &qword_280502C60, &qword_26D52CB40);
    v85 = *&v5[v96];

    v86 = *&v5[v97];

    v87 = *&v5[v30];

    sub_26D51D798(&v5[v16], &qword_280502C68, &qword_26D52CB48);
    sub_26D51D798(&v5[v20], &qword_280502C70, &qword_26D52CB50);
    v88 = *((*MEMORY[0x277D85000] & *v5) + 0x30);
    v89 = *((*MEMORY[0x277D85000] & *v5) + 0x34);
    swift_deallocPartialClassInstance();
    goto LABEL_15;
  }

  v56 = v55;
  v57 = objc_allocWithZone(MEMORY[0x277CEFD20]);
  *&v123 = 0;
  v58 = [v57 initWithFormat:v56 error:&v123];
  v59 = v123;
  if (!v58)
  {
    v82 = v123;
    sub_26D52AFF0();

    swift_willThrow();
    goto LABEL_14;
  }

  v60 = v92;
  v61 = HIDWORD(v92);
  v62 = v93;
  v63 = HIDWORD(v93);
  *&v5[qword_281225180] = v58;
  v64 = v58;
  v65 = v59;
  [v64 setMaximumChannelCount_];
  v66 = *&v120[v5];
  v67 = sub_26D52B580();
  [v66 setName_];

  v121.receiver = v5;
  v121.super_class = v113;
  v122 = 0;
  *&v123 = __PAIR64__(v61, v60);
  *(&v123 + 1) = __PAIR64__(v63, v62);
  LODWORD(v124) = v94;
  v68 = objc_msgSendSuper2(&v121, sel_initWithComponentDescription_options_error_, &v123, v95, &v122);
  v69 = v122;
  if (v68)
  {
    v70 = v68;
    v71 = v69;
    [v70 setMaximumFramesToRender_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C78, &qword_26D52CB58);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_26D52CAE0;
    v73 = *&v70[qword_281225180];
    *(v72 + 32) = v73;
    v74 = objc_allocWithZone(MEMORY[0x277CEFD28]);
    sub_26D52AB00(0, &qword_281224F80, 0x277CEFD20);
    v75 = v73;
    v76 = sub_26D52B660();

    v77 = [v74 initWithAudioUnit:v70 busType:2 busses:v76];

    v56 = *&v70[qword_2812251D8];
    *&v70[qword_2812251D8] = v77;
  }

  else
  {
    v70 = v122;
    sub_26D52AFF0();

    swift_willThrow();
  }

LABEL_15:
  v90 = *MEMORY[0x277D85DE8];
  return v70;
}

unint64_t sub_26D51F3EC()
{
  result = qword_281224FA0[0];
  if (!qword_281224FA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280502C28, &qword_26D52CB20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281224FA0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26D51F498()
{
  result = qword_280502C50;
  if (!qword_280502C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502C50);
  }

  return result;
}

uint64_t sub_26D51F56C()
{
  v1 = qword_2812251A0;
  if (*(v0 + qword_2812251A0))
  {
    v2 = *(v0 + qword_2812251A0);
  }

  else
  {
    v3 = v0;
    v4 = sub_26D52B420();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_26D52B410();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_26D51F5E8()
{
  sub_26D52AB00(0, &unk_281224F48, 0x277CB8498);
  v0 = sub_26D52B660();

  return v0;
}

id sub_26D51F638()
{
  sub_26D52AB00(0, &unk_281224F38, 0x277CCABB0);
  v0 = sub_26D52B760();

  return v0;
}

id sub_26D51F688(uint64_t a1)
{
  result = *(a1 + qword_2812251D8);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void sub_26D51F6A0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v173 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C80, &qword_26D52CB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v173 - v12);
  v14 = type metadata accessor for TTSSiriSynthVoice(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D527348(a1, a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_26D528BF4(v13, v18);

    sub_26D51A8D4();
    v25 = v24;
    v27 = v26;
    v28 = v6[2];
    v186 = v2;
    v177 = qword_281225120;
    v189 = v6 + 2;
    v190 = v28;
    v28(v9, &v2[qword_281225120], v5);
    sub_26D52B0F0();
    v29 = v6[1];
    v184 = v6 + 1;
    v185 = v9;
    v178 = v5;
    v187 = v29;
    v29(v9, v5);
    v30 = sub_26D51A760(v192[0]);
    v179 = v18;
    v31 = sub_26D51A8DC(v25, v27, v30 & 1);
    v33 = v32;

    if (v33)
    {
      if (qword_2812250F0 != -1)
      {
        swift_once();
      }

      v34 = sub_26D52B350();
      v35 = __swift_project_value_buffer(v34, qword_2812252A8);

      v188 = v35;
      v36 = sub_26D52B330();
      v37 = sub_26D52B6C0();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v192[0] = v39;
        *v38 = 136315650;
        *(v38 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v192);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_26D51CE78(a1, a2, v192);
        *(v38 + 22) = 2080;
        *(v38 + 24) = sub_26D51CE78(v31, v33, v192);
        _os_log_impl(&dword_26D514000, v36, v37, "%s. Prewarming synth with voiceID=%s path=%s", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6C2260](v39, -1, -1);
        MEMORY[0x26D6C2260](v38, -1, -1);
      }

      v40 = v178;
      v41 = v185;
      v42 = (_AXSSpeechSynthesisOptions() & 1) == 0;
      v43 = objc_allocWithZone(TTSSiriSynthWrapper);
      v44 = sub_26D52B580();

      v45 = sub_26D52B580();
      v46 = v186;
      v47 = [v43 initWithVoicePath:v44 language:v45 dynamicStylePrompt:0 censorPlainText:v42 delegate:v186 feResourcePath:0];

      v48 = v46;
      v49 = *&v46[qword_281225240];
      *&v46[qword_281225240] = v47;
      v50 = v47;

      if (v50)
      {
        v176 = v50;
        v51 = [v50 neuralStyles];
        v52 = sub_26D52AB00(0, &qword_280502C88, off_279DA51B0);
        v53 = sub_26D52B670();

        v54 = v187;
        if (v53 >> 62)
        {
          v55 = sub_26D52B7F0();
        }

        else
        {
          v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v55)
        {
          v190(v41, &v46[qword_281225168], v40);
          sub_26D52B100();
          v54(v41, v40);
          sub_26D52B160();
LABEL_58:

          v146 = v179;
          if (sub_26D51C1DC())
          {
            v147 = v48;
            v148 = sub_26D52B330();
            v149 = sub_26D52B6C0();
            if (os_log_type_enabled(v148, v149))
            {
              v150 = v48;
              v151 = swift_slowAlloc();
              v152 = v40;
              v153 = swift_slowAlloc();
              v192[0] = v153;
              *v151 = 136315394;
              *(v151 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v192);
              *(v151 + 12) = 2048;
              v154 = &v150[v177];
              v155 = v185;
              v190(v185, v154, v152);
              sub_26D52B0F0();
              v187(v155, v152);
              *(v151 + 14) = v191;

              _os_log_impl(&dword_26D514000, v148, v149, "%s. PV per-voice setting personalVoiceFlavor=%ld", v151, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v153);
              MEMORY[0x26D6C2260](v153, -1, -1);
              MEMORY[0x26D6C2260](v151, -1, -1);
            }

            else
            {
            }

            v156 = sub_26D51C27C();
            v157 = sub_26D51C900();
            v158 = v157;
            v159 = v156 & v157;
            v160 = v147;
            v161 = sub_26D52B330();
            v162 = sub_26D52B6C0();
            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              LODWORD(v188) = v159;
              v164 = v163;
              v183 = swift_slowAlloc();
              v192[0] = v183;
              *v164 = 136316162;
              *(v164 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v192);
              *(v164 + 12) = 1024;
              *(v164 + 14) = v188 & 1;
              *(v164 + 18) = 1024;
              *(v164 + 20) = v156 & 1;
              *(v164 + 24) = 1024;
              *(v164 + 26) = v158 & 1;
              *(v164 + 30) = 2048;
              v182 = v160;
              v166 = v185;
              v165 = v186;
              v168 = v177;
              v167 = v178;
              v169 = v190;
              v190(v185, &v186[v177], v178);
              LODWORD(v181) = v162;
              sub_26D52B0F0();
              v170 = v168;
              v171 = v187;
              v187(v166, v167);
              *(v164 + 32) = v191;

              _os_log_impl(&dword_26D514000, v161, v181, "%s. Will set PV per-voice personalVoiceFlavor enabled=%{BOOL}d (v1Available=%{BOOL}d v2Available=%{BOOL}d) value=%ld", v164, 0x28u);
              v182 = v161;
              v172 = v183;
              __swift_destroy_boxed_opaque_existential_0(v183);
              MEMORY[0x26D6C2260](v172, -1, -1);
              MEMORY[0x26D6C2260](v164, -1, -1);
            }

            else
            {

              v170 = v177;
              v167 = v178;
              v166 = v185;
              v165 = v186;
              v171 = v187;
              v169 = v190;
            }

            v169(v166, &v165[v170], v167);
            sub_26D52B100();
            v171(v166, v167);
            sub_26D52B160();

            v146 = v179;
          }

          else
          {
            v190(v41, &v48[v177], v40);
            sub_26D52B100();
            v187(v41, v40);
            sub_26D52B160();
          }

          v106 = v146;
          goto LABEL_68;
        }

        v56 = sub_26D52B330();
        v57 = sub_26D52B6C0();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v192[0] = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v192);
          _os_log_impl(&dword_26D514000, v56, v57, "%s: Avaliable neural styles:", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          v60 = v59;
          v48 = v186;
          MEMORY[0x26D6C2260](v60, -1, -1);
          v61 = v58;
          v54 = v187;
          MEMORY[0x26D6C2260](v61, -1, -1);
        }

        v62 = [v176 neuralStyles];
        v175 = v52;
        v63 = sub_26D52B670();

        if (v63 >> 62)
        {
          v65 = sub_26D52B7F0();
          v66 = v190;
          if (!v65)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v66 = v190;
          if (!v65)
          {
            goto LABEL_40;
          }
        }

        if (v65 < 1)
        {
          __break(1u);
          goto LABEL_70;
        }

        v67 = 0;
        v68 = v63 & 0xC000000000000001;
        *&v64 = 136315650;
        v181 = v64;
        v182 = (v63 & 0xC000000000000001);
        v183 = v65;
        v180 = v63;
        do
        {
          if (v68)
          {
            v90 = MEMORY[0x26D6C1840](v67, v63);
          }

          else
          {
            v90 = *(v63 + 8 * v67 + 32);
          }

          v91 = v90;
          v92 = sub_26D52B330();
          v93 = sub_26D52B6C0();

          if (os_log_type_enabled(v92, v93))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v192[0] = v70;
            *v69 = v181;
            v71 = [v91 name];
            v72 = sub_26D52B590();
            v74 = v73;

            v75 = sub_26D51CE78(v72, v74, v192);

            *(v69 + 4) = v75;
            *(v69 + 12) = 2080;
            v76 = [v91 key];
            v77 = sub_26D52B590();
            v79 = v78;

            v80 = sub_26D51CE78(v77, v79, v192);

            *(v69 + 14) = v80;
            *(v69 + 22) = 2080;
            v81 = [v91 styleVector];
            v82 = sub_26D52AB00(0, &unk_281224F38, 0x277CCABB0);
            v83 = sub_26D52B670();

            v84 = MEMORY[0x26D6C1700](v83, v82);
            v86 = v85;
            v41 = v185;

            v87 = sub_26D51CE78(v84, v86, v192);
            v63 = v180;
            v68 = v182;

            *(v69 + 24) = v87;
            v65 = v183;
            _os_log_impl(&dword_26D514000, v92, v93, "  - name=%s key=%s vactor=%s", v69, 0x20u);
            swift_arrayDestroy();
            v88 = v70;
            v54 = v187;
            MEMORY[0x26D6C2260](v88, -1, -1);
            v89 = v69;
            v48 = v186;
            MEMORY[0x26D6C2260](v89, -1, -1);
          }

          else
          {
          }

          ++v67;
          v66 = v190;
        }

        while (v65 != v67);
LABEL_40:

        v107 = qword_281225168;
        v40 = v178;
        v66(v41, &v48[qword_281225168], v178);
        sub_26D52B100();
        v54(v41, v40);
        sub_26D52B160();

        v66(v41, &v48[v107], v40);
        v183 = sub_26D52B100();
        v54(v41, v40);
        v66(v41, &v48[v107], v40);
        sub_26D52B100();
        v54(v41, v40);
        v108 = sub_26D52B130();

        v109 = [v108 identifier];

        if (!v109)
        {
          sub_26D52B590();
          v109 = sub_26D52B580();
        }

        v182 = v109;
        v66(v41, &v48[v107], v40);
        sub_26D52B100();
        v54(v41, v40);
        v110 = sub_26D52B130();

        v111 = [v110 displayName];

        if (!v111)
        {
          sub_26D52B590();
          v111 = sub_26D52B580();
        }

        *&v181 = v111;
        v66(v41, &v48[v107], v40);
        sub_26D52B100();
        v54(v41, v40);
        v112 = sub_26D52B130();

        v180 = [v112 address];

        v66(v41, &v48[v107], v40);
        sub_26D52B100();
        v54(v41, v40);
        v113 = sub_26D52B130();

        [v113 minValue];
        v115 = v114;

        v66(v41, &v48[v107], v40);
        sub_26D52B100();
        v54(v41, v40);
        v116 = sub_26D52B130();

        [v116 maxValue];
        v118 = v117;

        v66(v41, &v48[v107], v40);
        sub_26D52B100();
        v54(v41, v40);
        v119 = sub_26D52B130();

        v174 = [v119 unit];

        v66(v41, &v48[v107], v40);
        sub_26D52B100();
        v54(v41, v40);
        v120 = sub_26D52B130();

        v173 = [v120 unitName];

        v121 = [v176 neuralStyles];
        v122 = sub_26D52B670();

        if (v122 >> 62)
        {
          v123 = sub_26D52B7F0();
          if (v123)
          {
LABEL_46:
            v192[0] = MEMORY[0x277D84F90];
            sub_26D51D420(0, v123 & ~(v123 >> 63), 0);
            if ((v123 & 0x8000000000000000) == 0)
            {
              v124 = 0;
              v125 = v192[0];
              do
              {
                if ((v122 & 0xC000000000000001) != 0)
                {
                  v126 = MEMORY[0x26D6C1840](v124, v122);
                }

                else
                {
                  v126 = *(v122 + 8 * v124 + 32);
                }

                v127 = v126;
                v128 = [v126 name];
                v129 = sub_26D52B590();
                v131 = v130;

                v192[0] = v125;
                v133 = *(v125 + 16);
                v132 = *(v125 + 24);
                if (v133 >= v132 >> 1)
                {
                  sub_26D51D420((v132 > 1), v133 + 1, 1);
                  v125 = v192[0];
                }

                ++v124;
                *(v125 + 16) = v133 + 1;
                v134 = v125 + 16 * v133;
                *(v134 + 32) = v129;
                *(v134 + 40) = v131;
              }

              while (v123 != v124);

              v40 = v178;
              v41 = v185;
              v48 = v186;
              goto LABEL_57;
            }

LABEL_70:
            __break(1u);
            return;
          }
        }

        else
        {
          v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v123)
          {
            goto LABEL_46;
          }
        }

LABEL_57:
        v135 = objc_opt_self();
        v136 = sub_26D52B660();

        v190(v41, &v48[v107], v40);
        sub_26D52B100();
        v187(v41, v40);
        v137 = sub_26D52B130();

        v138 = [v137 dependentParameters];

        v139 = v135;
        v140 = v182;
        v141 = v181;
        LODWORD(v142) = v115;
        LODWORD(v143) = v118;
        v144 = v173;
        v145 = [v139 createParameterWithIdentifier:v182 name:v181 address:v180 min:v174 max:v173 unit:0 unitName:v142 flags:v143 valueStrings:v136 dependentParameters:v138];

        sub_26D52B140();
        goto LABEL_58;
      }

      v100 = &v46[qword_281225168];
      v101 = v190;
      v190(v41, v100, v40);
      sub_26D52B100();
      v102 = v187;
      v187(v41, v40);
      sub_26D52B160();

      v101(v41, &v48[v177], v40);
      sub_26D52B100();
      v102(v41, v40);
      sub_26D52B160();

      v95 = sub_26D52B330();
      v103 = sub_26D52B6C0();
      if (!os_log_type_enabled(v95, v103))
      {
LABEL_36:

        v106 = v179;
LABEL_68:
        sub_26D528C58(v106);
        return;
      }

      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v192[0] = v105;
      *v104 = 136315138;
      *(v104 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v192);
      _os_log_impl(&dword_26D514000, v95, v103, "%s. Synth was nil. Setting PV flavor per-voice setting enabled = false", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x26D6C2260](v105, -1, -1);
      v99 = v104;
    }

    else
    {
      if (qword_2812250F0 != -1)
      {
        swift_once();
      }

      v94 = sub_26D52B350();
      __swift_project_value_buffer(v94, qword_2812252A8);

      v95 = sub_26D52B330();
      v96 = sub_26D52B6E0();

      if (!os_log_type_enabled(v95, v96))
      {
        goto LABEL_36;
      }

      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v192[0] = v98;
      *v97 = 136315394;
      *(v97 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v192);
      *(v97 + 12) = 2080;
      *(v97 + 14) = sub_26D51CE78(a1, a2, v192);
      _os_log_impl(&dword_26D514000, v95, v96, "%s. Failed: No voice path for voice: %s", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v98, -1, -1);
      v99 = v97;
    }

    MEMORY[0x26D6C2260](v99, -1, -1);
    goto LABEL_36;
  }

  sub_26D51D798(v13, &qword_280502C80, &qword_26D52CB60);
  if (qword_2812250F0 != -1)
  {
    swift_once();
  }

  v19 = sub_26D52B350();
  __swift_project_value_buffer(v19, qword_2812252A8);

  v20 = sub_26D52B330();
  v21 = sub_26D52B6E0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v192[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52D8B0, v192);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_26D51CE78(a1, a2, v192);
    _os_log_impl(&dword_26D514000, v20, v21, "%s. Failed: No voice found for ID : %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v23, -1, -1);
    MEMORY[0x26D6C2260](v22, -1, -1);
  }
}

uint64_t sub_26D520DFC(void *a1)
{
  v2 = sub_26D52B590();
  v4 = v3;
  v5 = a1;
  sub_26D51F6A0(v2, v4);
}

uint64_t sub_26D520E64()
{
  v1 = qword_281225118;
  v2 = *(v0 + qword_281225118);
  if (v2 == 2)
  {
    (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
    sub_26D52B5E0();
    v3 = xpc_copy_entitlement_for_token();

    if (v3)
    {
      LOBYTE(v2) = xpc_BOOL_get_value(v3);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void sub_26D520F60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C70, &qword_26D52CB50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v420 = &v410 - v4;
  v415 = sub_26D52B030();
  v414 = *(v415 - 8);
  v5 = *(v414 + 64);
  MEMORY[0x28223BE20](v415);
  v413 = &v410 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v439 = *(v7 - 8);
  v8 = *(v439 + 64);
  MEMORY[0x28223BE20](v7);
  v441 = &v410 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C80, &qword_26D52CB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v410 - v12);
  v444 = type metadata accessor for TTSSiriSynthVoice(0);
  v443 = *(v444 - 1);
  isa = v443[8].isa;
  MEMORY[0x28223BE20](v444);
  v447 = &v410 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C90, &qword_26D52CB68);
  v16 = *(*(v418 - 8) + 64);
  MEMORY[0x28223BE20](v418);
  v419 = &v410 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C68, &qword_26D52CB48);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v429 = &v410 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C60, &qword_26D52CB40);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v442 = &v410 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v412 = &v410 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v410 - v28;
  MEMORY[0x28223BE20](v27);
  v416 = &v410 - v30;
  v438 = sub_26D52B270();
  v433 = *(v438 - 8);
  v31 = *(v433 + 64);
  MEMORY[0x28223BE20](v438);
  v432 = &v410 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = sub_26D52B2E0();
  v426 = *(v427 - 8);
  v33 = *(v426 + 64);
  MEMORY[0x28223BE20](v427);
  v425 = &v410 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_26D52B290();
  v430 = *(v431 - 8);
  v35 = *(v430 + 64);
  MEMORY[0x28223BE20](v431);
  v436 = &v410 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = sub_26D52B300();
  v435 = *(v437 - 8);
  v37 = *(v435 + 64);
  MEMORY[0x28223BE20](v437);
  v446 = &v410 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = sub_26D52B320();
  v449 = *(v450 - 1);
  v39 = *(v449 + 64);
  MEMORY[0x28223BE20](v450);
  v448 = &v410 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_26D52B0E0();
  v41 = *(v457 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v457);
  v411 = &v410 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v417 = &v410 - v46;
  MEMORY[0x28223BE20](v45);
  v451 = &v410 - v47;
  v454 = sub_26D52B170();
  v48 = *(v454 - 8);
  v49 = v48[8];
  MEMORY[0x28223BE20](v454);
  v453 = &v410 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812250F0 != -1)
  {
    swift_once();
  }

  v51 = sub_26D52B350();
  v52 = __swift_project_value_buffer(v51, qword_2812252A8);
  v53 = a1;
  v54 = sub_26D52B330();
  v55 = sub_26D52B6C0();

  v56 = os_log_type_enabled(v54, v55);
  v456 = v41;
  v440 = v7;
  v458 = v52;
  v445 = v13;
  v434 = v29;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *atoken.val = v58;
    *v57 = 136315394;
    *(v57 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
    *(v57 + 12) = 2080;
    v59 = [v53 voice];
    v60 = [v59 identifier];

    v61 = sub_26D52B590();
    v63 = v62;

    v52 = v458;
    v64 = sub_26D51CE78(v61, v63, &atoken);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_26D514000, v54, v55, "%s: Begin with voiceID=%s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v58, -1, -1);
    MEMORY[0x26D6C2260](v57, -1, -1);
  }

  v421 = sub_26D52B200();
  v65 = sub_26D52B1F0();
  v66 = *MEMORY[0x277D70180];
  v67 = v48[13];
  v68 = v453;
  v69 = v454;
  v424 = v48 + 13;
  v423 = v67;
  v67(v453, v66, v454);
  v70 = [v53 jobIdentifier];
  sub_26D52B590();

  sub_26D52B1E0();

  v71 = v48[1];
  v428 = v48 + 1;
  v422 = v71;
  v71(v68, v69);
  v72 = qword_2812252A0;
  v73 = v452;
  *(v452 + qword_2812252A0) = 1;
  v74 = [v53 voice];
  LODWORD(v65) = [v74 isPersonalVoice];

  if (v65)
  {
    v75 = sub_26D51E21C();
    v76 = sub_26D52B460();

    if ((v76 & 1) == 0)
    {
      v77 = sub_26D52B330();
      v78 = sub_26D52B6E0();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *atoken.val = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v77, v78, "%s: Personal voices cannot be used on devices without a passcode. No speech will be generated", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x26D6C2260](v80, -1, -1);
        MEMORY[0x26D6C2260](v79, -1, -1);
      }

      *(v73 + v72) = 0;
    }

    v81 = *(v73 + qword_2812251B0);
    v82 = sub_26D52B450();

    if (v82)
    {
      v83 = sub_26D52B330();
      v84 = sub_26D52B6E0();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *atoken.val = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v83, v84, "%s: Personal voices cannot be used on devices that are locked. No speech will be generated", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x26D6C2260](v86, -1, -1);
        MEMORY[0x26D6C2260](v85, -1, -1);
      }

      *(v73 + v72) = 0;
    }

    v87 = v73;
    v88 = sub_26D52B330();
    v89 = sub_26D52B6D0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *atoken.val = v91;
      *v90 = 136315394;
      *(v90 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v90 + 12) = 1024;
      *(v90 + 14) = sub_26D520E64() & 1;

      _os_log_impl(&dword_26D514000, v88, v89, "%s: Has PV entitlement %{BOOL}d", v90, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x26D6C2260](v91, -1, -1);
      MEMORY[0x26D6C2260](v90, -1, -1);
    }

    else
    {
    }

    v92 = [objc_opt_self() sharedInstance];
    v93 = [v92 allowAppUsage];

    if ((v93 & 1) == 0 && (sub_26D520E64() & 1) == 0)
    {
      v94 = sub_26D52B330();
      v95 = sub_26D52B6E0();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *atoken.val = v97;
        *v96 = 136315138;
        *(v96 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v94, v95, "%s: This personal voice does not allow app usage. No speech will be generated", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x26D6C2260](v97, -1, -1);
        MEMORY[0x26D6C2260](v96, -1, -1);
      }

      *(v73 + v72) = 0;
    }

    if ((sub_26D520E64() & 1) == 0)
    {
      v98 = _TTSSystemFocusedPid();
      *atoken.val = (*((*MEMORY[0x277D85000] & *v87) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
      *&atoken.val[2] = v99;
      *&atoken.val[4] = v100;
      *&atoken.val[6] = v101;
      if (v98 != audit_token_to_pid(&atoken))
      {
        v102 = sub_26D52B330();
        v103 = sub_26D52B6E0();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *atoken.val = v105;
          *v104 = 136315138;
          *(v104 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
          _os_log_impl(&dword_26D514000, v102, v103, "%s: Personal voices can only be used while app is foreground", v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v105);
          MEMORY[0x26D6C2260](v105, -1, -1);
          MEMORY[0x26D6C2260](v104, -1, -1);
        }

        *(v73 + v72) = 0;
      }
    }

    v106 = v87;
    v52 = sub_26D52B330();
    v107 = sub_26D52B6C0();

    if (os_log_type_enabled(v52, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v463 = v109;
      *v108 = 136315394;
      *(v108 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &v463);
      *(v108 + 12) = 2080;
      *atoken.val = (*((*MEMORY[0x277D85000] & *v106) + class metadata base offset for TTSSiriSynthAudioUnit + 304))();
      *&atoken.val[2] = v110;
      *&atoken.val[4] = v111;
      *&atoken.val[6] = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502CA8, &qword_26D52CB70);
      v113 = sub_26D52B5D0();
      v115 = sub_26D51CE78(v113, v114, &v463);

      *(v108 + 14) = v115;
      _os_log_impl(&dword_26D514000, v52, v107, "%s: Speech request is for personal voice. Will check if host is TCC-approved. token=%s", v108, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v109, -1, -1);
      MEMORY[0x26D6C2260](v108, -1, -1);
    }

    if (!*MEMORY[0x277D6C240])
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v116 = *((*MEMORY[0x277D85000] & *v106) + class metadata base offset for TTSSiriSynthAudioUnit + 304);
    v117 = *MEMORY[0x277D6C240];
    *atoken.val = v116();
    *&atoken.val[2] = v118;
    *&atoken.val[4] = v119;
    *&atoken.val[6] = v120;
    v121 = TCCAccessCheckAuditToken();

    v122 = sub_26D52B330();
    if (v121)
    {
      v123 = sub_26D52B6C0();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *atoken.val = v125;
        *v124 = 136315138;
        *(v124 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v122, v123, "%s: Host is TCC-approved for personal voice speech", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x26D6C2260](v125, -1, -1);
        MEMORY[0x26D6C2260](v124, -1, -1);
      }
    }

    else
    {
      v126 = sub_26D52B6E0();
      if (os_log_type_enabled(v122, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *atoken.val = v128;
        *v127 = 136315138;
        *(v127 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
        _os_log_impl(&dword_26D514000, v122, v126, "%s: Caller does not have kTCCServiceVoiceBanking access to personal voices. No speech will be generated", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v128);
        MEMORY[0x26D6C2260](v128, -1, -1);
        MEMORY[0x26D6C2260](v127, -1, -1);
      }

      *(v73 + v72) = 0;
    }
  }

  v129 = *(v73 + qword_2812251E8);
  *(v73 + qword_2812251E8) = v53;
  v130 = v53;
  v131 = v73;
  v132 = v130;

  *&v131[qword_281225250] = 0;
  v133 = qword_281225200;
  swift_beginAccess();
  v134 = *&v131[v133];
  v135 = MEMORY[0x277D84F90];
  *&v131[v133] = MEMORY[0x277D84F90];

  v136 = *&v131[qword_281225270];
  v137 = swift_allocObject();
  *(v137 + 16) = v131;
  v138 = swift_allocObject();
  *(v138 + 16) = sub_26D528CB4;
  *(v138 + 24) = v137;
  v455 = v137;
  v461 = sub_26D528CD4;
  v462 = v138;
  *atoken.val = MEMORY[0x277D85DD0];
  *&atoken.val[2] = 1107296256;
  *&atoken.val[4] = sub_26D524D24;
  *&atoken.val[6] = &block_descriptor;
  v139 = _Block_copy(&atoken);
  v140 = v462;
  v141 = v131;

  dispatch_sync(v136, v139);
  _Block_release(v139);
  LOBYTE(v136) = swift_isEscapingClosureAtFileLocation();

  if (v136)
  {
    __break(1u);
    goto LABEL_158;
  }

  *&v141[qword_2812251C0] = 0;
  v142 = *&v141[qword_281225218];
  *&v141[qword_281225218] = 0;

  if ((v131[v72] & 1) == 0)
  {
    v157 = sub_26D52B330();
    v158 = sub_26D52B6E0();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *atoken.val = v160;
      *v159 = 136315138;
      *(v159 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      v161 = "%s: Voice not allowed to render speech! Will not set up synthesizer. Bailing now";
LABEL_46:
      _os_log_impl(&dword_26D514000, v157, v158, v161, v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v160);
      MEMORY[0x26D6C2260](v160, -1, -1);
      MEMORY[0x26D6C2260](v159, -1, -1);
    }

LABEL_47:

    return;
  }

  v143 = [v132 voice];
  v144 = [v143 primaryLanguages];

  v145 = sub_26D52B670();
  if (!v145[2])
  {

    v157 = sub_26D52B330();
    v158 = sub_26D52B6E0();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *atoken.val = v160;
      *v159 = 136315138;
      *(v159 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      v161 = "%s: Voice had no primary locale";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v146 = v145[4];
  v147 = v145[5];
  swift_bridgeObjectRetain_n();

  v410 = v147;
  sub_26D52B0D0();
  v148 = v449;
  v149 = v448;
  v150 = v450;
  (*(v449 + 104))(v448, *MEMORY[0x277CE67A8], v450);
  v151 = sub_26D52B310();
  (*(v148 + 8))(v149, v150);
  v152 = 0x279DA5000uLL;
  v452 = v132;
  v153 = [v132 ssmlRepresentation];
  v154 = sub_26D52B590();
  v156 = v155;

  if (v151)
  {
    v429 = v154;
  }

  else
  {
    sub_26D52B2F0();
    v162 = v457;
    v163 = [v452 voice];
    v164 = [v163 primaryLanguages];

    v165 = sub_26D52B670();
    v166 = *(v165 + 16);
    if (v166)
    {
      *atoken.val = v135;
      sub_26D528D14(0, v166, 0);
      v167 = *atoken.val;
      v168 = (v165 + 40);
      v169 = v417;
      do
      {
        v170 = *(v168 - 1);
        v171 = *v168;

        sub_26D52B0D0();
        *atoken.val = v167;
        v173 = *(v167 + 16);
        v172 = *(v167 + 24);
        if (v173 >= v172 >> 1)
        {
          sub_26D528D14(v172 > 1, v173 + 1, 1);
          v167 = *atoken.val;
        }

        *(v167 + 16) = v173 + 1;
        v174 = v456;
        (*(v456 + 32))(v167 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v456 + 72) * v173, v169, v457);
        v168 += 2;
        --v166;
      }

      while (v166);

      v162 = v457;
      v152 = 0x279DA5000;
    }

    else
    {

      v174 = v456;
    }

    v175 = [v452 voice];
    v176 = [v175 supportedLanguages];

    v177 = sub_26D52B670();
    v178 = *(v177 + 16);

    v179 = v426;
    v180 = MEMORY[0x277D70380];
    if (v178 <= 1)
    {
      v180 = MEMORY[0x277D70388];
    }

    v181 = v425;
    v182 = v427;
    (*(v426 + 104))(v425, *v180, v427);
    sub_26D52B210();
    (*(v179 + 8))(v181, v182);
    v183 = v437;
    *&atoken.val[6] = v437;
    v461 = MEMORY[0x277D70390];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&atoken);
    (*(v435 + 16))(boxed_opaque_existential_1, v446, v183);
    v185 = v432;
    sub_26D52B280();
    __swift_destroy_boxed_opaque_existential_0(&atoken);
    v186 = *(sub_26D52B250() + 16);

    if (v186 == 1)
    {
      v187 = sub_26D52B250();
      v188 = v416;
      sub_26D524D4C(v187, v416);

      if ((*(v174 + 48))(v188, 1, v162) == 1)
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v189 = v451;
      (*(v174 + 8))(v451, v162);

      (*(v174 + 32))(v189, v188, v162);
    }

    else
    {
    }

    v190 = v433;
    v191 = v429;
    v192 = v438;
    (*(v433 + 16))(v429, v185, v438);
    (*(v190 + 56))(v191, 0, 1, v192);
    v193 = qword_281225130;
    swift_beginAccess();
    sub_26D528DC4(v191, &v141[v193], &qword_280502C68, &qword_26D52CB48);
    swift_endAccess();
    v194 = sub_26D52B1F0();
    v195 = v452;
    v196 = [v452 *(v152 + 1880)];
    v197 = v185;
    v198 = sub_26D52B590();
    v200 = v199;

    v201 = sub_26D52B240();
    v202 = v453;
    *v453 = v198;
    v202[1] = v200;
    v202[2] = v201;
    v202[3] = v203;
    v204 = v454;
    v423(v202, *MEMORY[0x277D70190], v454);
    v205 = [v195 jobIdentifier];
    sub_26D52B590();

    sub_26D52B1E0();

    v422(v202, v204);
    v206 = &v141[qword_281225208];
    *v206 = 0;
    *(v206 + 1) = 0;
    v206[16] = 1;
    v429 = sub_26D52B240();
    v156 = v207;
    (*(v190 + 8))(v197, v438);
    (*(v430 + 8))(v436, v431);
    (*(v435 + 8))(v446, v437);
  }

  v208 = qword_281225240;
  v209 = *&v141[qword_281225240];
  v210 = 0x279DA5000uLL;
  if (v209)
  {
    v211 = [v209 ruleSetRunner];
    v212 = swift_allocObject();
    v213 = v452;
    *(v212 + 16) = v452;
    v461 = sub_26D528DBC;
    v462 = v212;
    *atoken.val = MEMORY[0x277D85DD0];
    *&atoken.val[2] = 1107296256;
    *&atoken.val[4] = sub_26D524FCC;
    *&atoken.val[6] = &block_descriptor_9;
    v214 = _Block_copy(&atoken);
    v215 = v213;

    [v211 setMatchLogger_];
    _Block_release(v214);

    if (*&v141[v208])
    {
      v216 = *&v141[qword_281225190];
      if (v216)
      {
        v217 = [v216 identifier];
        v218 = sub_26D52B590();
        v220 = v219;
      }

      else
      {
        v218 = 0;
        v220 = 0;
      }

      v221 = [v215 voice];
      v222 = [v221 identifier];

      v223 = sub_26D52B590();
      v225 = v224;

      if (!v220)
      {

LABEL_79:
        v210 = 0x279DA5000uLL;
        goto LABEL_80;
      }

      if (v218 == v223 && v220 == v225)
      {
      }

      else
      {
        v226 = sub_26D52B810();

        v210 = 0x279DA5000;
        if ((v226 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      v454 = v156;
      v227 = qword_281225138;
      swift_beginAccess();
      v228 = v456;
      v229 = v434;
      (*(v456 + 16))(v434, v451, v457);
      (*(v228 + 56))(v229, 0, 1, v457);
      v230 = *(v418 + 48);
      v231 = &v141[v227];
      v232 = v457;
      v233 = v419;
      sub_26D52AA98(v231, v419, &qword_280502C60, &qword_26D52CB40);
      sub_26D52AA98(v229, v233 + v230, &qword_280502C60, &qword_26D52CB40);
      v234 = v228;
      v235 = v233;
      v236 = *(v234 + 48);
      if (v236(v233, 1, v232) == 1)
      {
        sub_26D51D798(v229, &qword_280502C60, &qword_26D52CB40);
        if (v236(v233 + v230, 1, v232) == 1)
        {

          sub_26D51D798(v233, &qword_280502C60, &qword_26D52CB40);
LABEL_126:
          v291 = v456;
          v140 = v440;
          goto LABEL_127;
        }

        goto LABEL_78;
      }

      v237 = v233;
      v238 = v412;
      sub_26D52AA98(v237, v412, &qword_280502C60, &qword_26D52CB40);
      if (v236(v235 + v230, 1, v232) == 1)
      {
        sub_26D51D798(v434, &qword_280502C60, &qword_26D52CB40);
        (*(v456 + 8))(v238, v232);
LABEL_78:
        sub_26D51D798(v235, &qword_280502C90, &qword_26D52CB68);
        v156 = v454;
        goto LABEL_79;
      }

      v351 = v456;
      v352 = v235 + v230;
      v353 = v411;
      (*(v456 + 32))(v411, v352, v457);
      sub_26D528E80(&qword_280502CA0, MEMORY[0x277CC9788]);
      LODWORD(v453) = sub_26D52B570();
      v354 = *(v351 + 8);
      v354(v353, v457);
      sub_26D51D798(v434, &qword_280502C60, &qword_26D52CB40);
      v354(v238, v457);
      sub_26D51D798(v235, &qword_280502C60, &qword_26D52CB40);
      v156 = v454;
      v210 = 0x279DA5000;
      if (v453)
      {

        goto LABEL_126;
      }
    }
  }

LABEL_80:
  v453 = v208;
  v239 = v452;
  v240 = [v452 voice];
  v241 = *&v141[qword_281225190];
  *&v141[qword_281225190] = v240;

  v243 = v456;
  v242 = v457;
  v244 = v442;
  (*(v456 + 16))(v442, v451, v457);
  (*(v243 + 56))(v244, 0, 1, v242);
  v245 = qword_281225138;
  swift_beginAccess();
  sub_26D528DC4(v244, &v141[v245], &qword_280502C60, &qword_26D52CB40);
  swift_endAccess();
  v246 = [v239 voice];
  v247 = [v246 *(v210 + 1768)];

  v248 = sub_26D52B590();
  v250 = v249;

  v251 = v210;
  v252 = v445;
  sub_26D527348(v248, v250, v445);

  if ((v443[6].isa)(v252, 1, v444) == 1)
  {

    sub_26D51D798(v252, &qword_280502C80, &qword_26D52CB60);
    v253 = v239;
    v254 = sub_26D52B330();
    v255 = sub_26D52B6E0();

    if (os_log_type_enabled(v254, v255))
    {
      v256 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *atoken.val = v257;
      *v256 = 136315394;
      *(v256 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v256 + 12) = 2080;
      v258 = [v253 voice];
      v259 = [v258 identifier];

      v260 = sub_26D52B590();
      v262 = v261;

      v263 = sub_26D51CE78(v260, v262, &atoken);

      *(v256 + 14) = v263;
      _os_log_impl(&dword_26D514000, v254, v255, "%s. Failed: No voice found for ID : %s", v256, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v257, -1, -1);
      MEMORY[0x26D6C2260](v256, -1, -1);
    }

    (*(v243 + 8))(v451, v457);
    goto LABEL_156;
  }

  v454 = v156;
  sub_26D528BF4(v252, v447);
  v264 = [v239 voice];
  v265 = [v264 (v251 + 1656)];

  sub_26D52B590();
  sub_26D51A8D4();
  v449 = v266;
  v268 = v267;
  v269 = qword_281225120;
  v270 = v439;
  v271 = *(v439 + 16);
  v272 = v441;
  v273 = v440;
  v271(v441, &v141[qword_281225120], v440);
  sub_26D52B0F0();
  v274 = *(v270 + 8);
  v274(v272, v273);
  LODWORD(v446) = sub_26D51A760(*atoken.val);
  v450 = v141;
  v275 = sub_26D52B330();
  LODWORD(v445) = sub_26D52B6C0();
  v276 = os_log_type_enabled(v275, v445);
  v448 = v268;
  if (v276)
  {
    v277 = swift_slowAlloc();
    v444 = swift_slowAlloc();
    *atoken.val = v444;
    *v277 = 136315906;
    *(v277 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
    *(v277 + 12) = 2048;
    v271(v272, &v141[v269], v273);
    v443 = v275;
    sub_26D52B0F0();
    v274(v272, v273);
    *(v277 + 14) = v459;
    *(v277 + 22) = 1024;
    v271(v272, &v141[v269], v273);
    sub_26D52B100();
    v274(v272, v273);
    v278 = sub_26D52B150();
    v279 = v450;

    *(v277 + 24) = v278 & 1;

    *(v277 + 28) = 2080;
    v280 = v446 & 1;
    LOBYTE(v459) = v446 & 1;
    sub_26D528E2C();
    v281 = sub_26D52B800();
    v283 = sub_26D51CE78(v281, v282, &atoken);

    *(v277 + 30) = v283;
    v284 = v443;
    _os_log_impl(&dword_26D514000, v443, v445, "%s. PV per-voice personalVoiceFlavor value=%ld enabled=%{BOOL}d. preferredPersonalVoiceFlavor=%s", v277, 0x26u);
    v285 = v444;
    swift_arrayDestroy();
    MEMORY[0x26D6C2260](v285, -1, -1);
    v286 = v277;
    v268 = v448;
    MEMORY[0x26D6C2260](v286, -1, -1);
  }

  else
  {

    v287 = v450;
    v280 = v446 & 1;
  }

  v288 = sub_26D51A8DC(v449, v268, v280);
  v290 = v289;

  v291 = v456;
  v292 = v452;
  v293 = 0x279DA5000uLL;
  v449 = v290;
  if (!v290)
  {

    v308 = v292;
    v309 = sub_26D52B330();
    v310 = sub_26D52B6E0();

    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      v312 = swift_slowAlloc();
      *atoken.val = v312;
      *v311 = 136315394;
      *(v311 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v311 + 12) = 2080;
      v313 = [v308 voice];
      v314 = [v313 identifier];

      v315 = sub_26D52B590();
      v317 = v316;

      v318 = sub_26D51CE78(v315, v317, &atoken);

      *(v311 + 14) = v318;
      _os_log_impl(&dword_26D514000, v309, v310, "%s. Failed: No voice path for voice: %s", v311, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v312, -1, -1);
      MEMORY[0x26D6C2260](v311, -1, -1);
    }

    goto LABEL_123;
  }

  v446 = v288;
  v294 = [objc_opt_self() sharedInstance];
  v295 = [v292 voice];
  v296 = [v295 identifier];

  if (!v296)
  {
    sub_26D52B590();
    v296 = sub_26D52B580();
  }

  v297 = [v294 resourceWithVoiceId_];

  if (!v297)
  {

    v445 = 0;
    v307 = 0;
    goto LABEL_101;
  }

  v298 = v297;
  v299 = [v298 primaryLanguage];
  if (!v299)
  {
    sub_26D52B590();
    v299 = sub_26D52B580();
  }

  v300 = objc_opt_self();
  v301 = [v298 speechVoice];
  v302 = [v301 voiceType];

  v303 = [v300 effectiveResourceForLanguageCode:v299 andVoiceType:v302];
  if (!v303)
  {

    v445 = 0;
    v307 = 0;
    v293 = 0x279DA5000uLL;
    goto LABEL_101;
  }

  v304 = [v303 searchPathURL];

  v293 = 0x279DA5000;
  if (v304)
  {

    v305 = v413;
    sub_26D52B000();

    v445 = sub_26D52B010();
    v307 = v306;

    (*(v414 + 8))(v305, v415);
LABEL_101:
    v319 = sub_26D52B0C0();
    v321 = v320;
    v322 = [v452 voice];
    v323 = [v322 *(v293 + 1768)];

    if (!v323)
    {
      sub_26D52B590();
      v323 = sub_26D52B580();
    }

    v444 = v297;
    LODWORD(v442) = TTSVoiceIDHasSiriNaturalVoicePrefix();

    v324 = v449;

    v325 = sub_26D52B330();
    v326 = sub_26D52B6F0();

    v327 = os_log_type_enabled(v325, v326);
    v443 = v307;
    if (v327)
    {
      v328 = swift_slowAlloc();
      v438 = swift_slowAlloc();
      *atoken.val = v438;
      *v328 = 136315906;
      *(v328 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v328 + 12) = 2080;
      LODWORD(v437) = v326;
      *(v328 + 14) = sub_26D51CE78(v446, v324, &atoken);
      *(v328 + 22) = 2080;
      *(v328 + 24) = sub_26D51CE78(v319, v321, &atoken);
      *(v328 + 32) = 2080;
      if (v307)
      {
        v329 = v445;
      }

      else
      {
        v329 = 0x3E6C696E3CLL;
      }

      if (v307)
      {
        v330 = v307;
      }

      else
      {
        v330 = 0xE500000000000000;
      }

      v331 = sub_26D51CE78(v329, v330, &atoken);

      *(v328 + 34) = v331;
      _os_log_impl(&dword_26D514000, v325, v437, "%s: Init'ing Siri synth with voice path='%s' language=%s resource path='%s'", v328, 0x2Au);
      v332 = v438;
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v332, -1, -1);
      MEMORY[0x26D6C2260](v328, -1, -1);

      v140 = v440;
      v208 = v453;
      v333 = v450;
    }

    else
    {

      v140 = v440;
      v208 = v453;
      v333 = v450;
    }

    v334 = _AXSSpeechSynthesisOptions();
    v335 = sub_26D52B580();
    v336 = sub_26D52B580();

    if (v442)
    {
      v337 = sub_26D52B580();
    }

    else
    {
      v337 = 0;
    }

    if (v443)
    {
      v338 = sub_26D52B580();
    }

    else
    {
      v338 = 0;
    }

    v291 = v456;
    v339 = [objc_allocWithZone(TTSSiriSynthWrapper) initWithVoicePath:v335 language:v336 dynamicStylePrompt:v337 censorPlainText:(v334 & 1) == 0 delegate:v333 feResourcePath:v338];

    v340 = *&v141[v208];
    *&v141[v208] = v339;

    if (*&v141[v208])
    {

      v341 = [v452 voice];
      v342 = [v341 identifier];

      v343 = sub_26D52B590();
      v345 = v344;

      (*((*MEMORY[0x277D85000] & *v333) + class metadata base offset for TTSSiriSynthAudioUnit + 848))(v343, v345);

      sub_26D528C58(v447);

LABEL_127:
      v355 = v420;
      sub_26D52B0A0();
      v356 = sub_26D52B0B0();
      (*(*(v356 - 8) + 56))(v355, 0, 1, v356);
      v357 = qword_281225228;
      swift_beginAccess();
      sub_26D528DC4(v355, &v141[v357], &qword_280502C70, &qword_26D52CB50);
      swift_endAccess();
      v358 = *&v141[v208];
      v359 = v439;
      v360 = v441;
      if (v358)
      {
        v361 = qword_281225168;
        v362 = *(v439 + 16);
        v362(v441, &v141[qword_281225168], v140);
        v52 = v358;
        sub_26D52B0F0();
        v365 = *(v359 + 8);
        v363 = v359 + 8;
        v364 = v365;
        (v365)(v360, v140);
        if (!*atoken.val)
        {
          v402 = sub_26D52B330();
          v403 = sub_26D52B6F0();
          if (os_log_type_enabled(v402, v403))
          {
            v404 = swift_slowAlloc();
            v405 = swift_slowAlloc();
            *atoken.val = v405;
            *v404 = 136315138;
            *(v404 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
            _os_log_impl(&dword_26D514000, v402, v403, "%s: Not applying a neural style for speaking", v404, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v405);
            MEMORY[0x26D6C2260](v405, -1, -1);
            v406 = v457;
            MEMORY[0x26D6C2260](v404, -1, -1);
          }

          else
          {

            v406 = v457;
          }

          v135 = v456;
          [v52 setCurrentNeuralStyle_];
          goto LABEL_155;
        }

        v450 = v361;
        v452 = v362;
        v362(v360, &v361[v141], v140);
        sub_26D52B0F0();
        v453 = v364;
        (v364)(v360, v140);
        v135 = v456;
        if ((*atoken.val & 0x8000000000000000) != 0)
        {
LABEL_141:
          v439 = v363;
          v393 = v141;
          v394 = sub_26D52B330();
          v395 = sub_26D52B6E0();
          if (os_log_type_enabled(v394, v395))
          {
            v396 = swift_slowAlloc();
            v397 = swift_slowAlloc();
            v449 = v52;
            v398 = v140;
            v399 = v397;
            *atoken.val = v397;
            *v396 = 136315394;
            *(v396 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
            *(v396 + 12) = 2048;
            v400 = v441;
            v452(v441, &v450[v141], v398);
            sub_26D52B0F0();
            v401 = v398;
            v52 = v449;
            (v453)(v400, v401);
            *(v396 + 14) = v459;

            _os_log_impl(&dword_26D514000, v394, v395, "%s: Cannot set neural style. index=%ld out of bounds!", v396, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v399);
            MEMORY[0x26D6C2260](v399, -1, -1);
            MEMORY[0x26D6C2260](v396, -1, -1);
          }

          else
          {
          }

          v406 = v457;
LABEL_155:
          v409 = sub_26D52B580();

          [v52 synthesizeString_];

          (*(v135 + 8))(v451, v406);
          v141[qword_2812251D0] = 1;
LABEL_156:

          return;
        }

        v366 = v441;
        v452(v441, &v450[v141], v140);
        sub_26D52B0F0();
        v72 = v363;
        (v453)(v366, v140);
        v132 = *atoken.val;
        v367 = [v52 neuralStyles];
        v139 = sub_26D52AB00(0, &qword_280502C88, off_279DA51B0);
        v368 = sub_26D52B670();

        if (!(v368 >> 62))
        {
          v369 = *((v368 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_132;
        }

LABEL_158:
        v369 = sub_26D52B7F0();
LABEL_132:

        v363 = v72;
        if (v132 < v369)
        {
          v447 = v139;
          v370 = v141;
          v449 = v52;
          v371 = v52;
          v372 = sub_26D52B330();
          v373 = sub_26D52B6F0();

          v374 = os_log_type_enabled(v372, v373);
          v448 = v371;
          if (!v374)
          {

            v387 = v441;
            v377 = v453;
            v389 = v452;
            goto LABEL_150;
          }

          LODWORD(v446) = v373;
          v458 = v370;
          v375 = v140;
          v140 = swift_slowAlloc();
          v445 = swift_slowAlloc();
          *atoken.val = v445;
          *v140 = 136315650;
          *(v140 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
          *(v140 + 12) = 2080;
          v376 = [v371 neuralStyles];
          v52 = sub_26D52B670();

          v377 = v450;
          v378 = v441;
          v452(v441, &v450[v141], v375);
          sub_26D52B0F0();
          (v453)(v378, v375);
          v379 = v459;
          if ((v52 & 0xC000000000000001) != 0)
          {
            goto LABEL_162;
          }

          if ((v459 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v459 < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            for (i = *(v52 + 8 * v459 + 32); ; i = MEMORY[0x26D6C1840](v379, v52))
            {
              v381 = i;

              v382 = [v381 name];

              v383 = sub_26D52B590();
              v385 = v384;

              v386 = sub_26D51CE78(v383, v385, &atoken);

              *(v140 + 14) = v386;
              *(v140 + 22) = 2048;
              v387 = v441;
              v388 = v440;
              v389 = v452;
              v452(v441, v377 + v141, v440);
              sub_26D52B0F0();
              v377 = v453;
              (v453)(v387, v388);
              v390 = v458;

              *(v140 + 24) = v459;
              _os_log_impl(&dword_26D514000, v372, v446, "%s: Using neural style '%s' (idx=%ld) for speaking", v140, 0x20u);
              v391 = v445;
              swift_arrayDestroy();
              MEMORY[0x26D6C2260](v391, -1, -1);
              v392 = v140;
              v140 = v388;
              MEMORY[0x26D6C2260](v392, -1, -1);

              v135 = v456;
LABEL_150:
              v407 = [v448 neuralStyles];
              v372 = sub_26D52B670();

              v389(v387, &v450[v141], v140);
              sub_26D52B0F0();
              v377(v387, v140);
              v379 = *atoken.val;
              if ((v372 & 0xC000000000000001) != 0)
              {
                break;
              }

              v52 = v449;
              if ((*atoken.val & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else
              {
                v377 = v448;
                if (*atoken.val < *((v372 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v408 = *(v372 + 8 * *atoken.val + 32);
                  goto LABEL_154;
                }
              }

              __break(1u);
LABEL_162:
              ;
            }

            v408 = MEMORY[0x26D6C1840](*atoken.val, v372);
            v52 = v449;
            v377 = v448;
LABEL_154:

            [v377 setCurrentNeuralStyle_];

            v406 = v457;
            goto LABEL_155;
          }

          __break(1u);
          goto LABEL_165;
        }

        goto LABEL_141;
      }

      (*(v291 + 8))(v451, v457);

LABEL_140:

      return;
    }

    v346 = v449;

    v309 = sub_26D52B330();
    v347 = sub_26D52B6E0();

    if (os_log_type_enabled(v309, v347))
    {
      v348 = swift_slowAlloc();
      v349 = swift_slowAlloc();
      *atoken.val = v349;
      *v348 = 136315394;
      *(v348 + 4) = sub_26D51CE78(0xD00000000000001BLL, 0x800000026D52D8D0, &atoken);
      *(v348 + 12) = 2080;
      v350 = sub_26D51CE78(v446, v346, &atoken);

      *(v348 + 14) = v350;
      _os_log_impl(&dword_26D514000, v309, v347, "%s: SiriTTSSynthesizer failed to initialize with voice path %s", v348, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6C2260](v349, -1, -1);
      MEMORY[0x26D6C2260](v348, -1, -1);
    }

    else
    {
    }

LABEL_123:

    sub_26D528C58(v447);
    (*(v291 + 8))(v451, v457);

    goto LABEL_140;
  }

LABEL_167:
  __break(1u);
}

uint64_t sub_26D524D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_26D52B790();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_26D5291C8(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_26D52B0E0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_26D524E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v28 = a4;
  v29 = a8;
  v26 = a5;
  v27 = a3;
  v12 = sub_26D52B170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26D52B200();
  v17 = sub_26D52B1F0();

  v18 = [a7 identifier];
  v19 = sub_26D52B590();
  v21 = v20;

  *v16 = a1;
  v16[1] = a2;
  v22 = v27;
  v16[2] = v26;
  v16[3] = a6;
  v23 = v28;
  v16[4] = v22;
  v16[5] = v23;
  v16[6] = v19;
  v16[7] = v21;
  (*(v13 + 104))(v16, *MEMORY[0x277D70170], v12);
  v24 = [v29 jobIdentifier];
  sub_26D52B590();

  sub_26D52B1E0();

  return (*(v13 + 8))(v16, v12);
}

void sub_26D524FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = sub_26D52B590();
  v13 = v12;
  v14 = sub_26D52B590();
  v16 = v15;

  v17 = a6;
  v10(v11, v13, a3, a4, v14, v16, v17);
}

void sub_26D5250A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_26D520F60(v4);
}

id sub_26D525110()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_26D52ADDC;
  v3[5] = v0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_26D5251DC;
  v3[3] = &block_descriptor_60;
  v1 = _Block_copy(v3);

  return v1;
}

uint64_t sub_26D5251DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = _Block_copy(aBlock);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_26D52A6CC;
  }

  else
  {
    v17 = 0;
  }

  v18 = v15(a2, a3, a4, a5, a6, a7, v16, v17);
  sub_26D52A6BC(v16);

  return v18;
}

uint64_t sub_26D5252C8(_DWORD *a1, unsigned int a2)
{
  v157 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C68, &qword_26D52CB48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v137 - v5;
  v158 = sub_26D52B270();
  v151 = *(v158 - 8);
  v7 = *(v151 + 64);
  MEMORY[0x28223BE20](v158);
  v153 = v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_26D52B320();
  v150 = *(v155 - 8);
  v9 = *(v150 + 64);
  MEMORY[0x28223BE20](v155);
  v156 = v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D52B520();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v137 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = Strong;
  sub_26D52B530();
  v21 = sub_26D52B540();
  *(v22 + 4) = 0;
  v21(aBlock, 0);
  v23 = sub_26D52B540();
  *v24 = 1;
  v23(aBlock, 0);
  v154 = v18;
  v26 = sub_26D52B550();
  if (!v25)
  {
    v26(aBlock, 0);
    if (qword_2812250F0 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_22;
  }

  v27 = v25;
  v147 = v6;
  v26(aBlock, 0);
  bzero(v27, 4 * a2);
  if ((v20[qword_2812252A0] & 1) == 0)
  {
    if (qword_2812250F0 != -1)
    {
      goto LABEL_97;
    }

    goto LABEL_25;
  }

  sub_26D52B530();
  v28 = sub_26D52B550();
  v30 = v29;
  v28(aBlock, 0);
  v32 = *(v12 + 8);
  v31 = v12 + 8;
  v144 = v32;
  v32(v16, v11);
  if (!v30)
  {
    if (qword_2812250F0 == -1)
    {
LABEL_32:
      v62 = sub_26D52B350();
      __swift_project_value_buffer(v62, qword_2812252A8);
      v63 = sub_26D52B330();
      v64 = sub_26D52B6E0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
        _os_log_impl(&dword_26D514000, v63, v64, "%s: could not get audio buffer to fill", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x26D6C2260](v66, -1, -1);
        MEMORY[0x26D6C2260](v65, -1, -1);
      }

      else
      {
      }

      v110 = v154;
      v111 = v11;
LABEL_81:
      v144(v110, v111);
      return 0xFFFFFFFFLL;
    }

LABEL_105:
    swift_once();
    goto LABEL_32;
  }

  v169 = 0;
  v140 = v31;
  v141 = v11;
  if (a2)
  {
    v12 = qword_281225218;
    v33 = qword_2812251C0;
    v11 = 0x279DA5000;
    while (1)
    {
      while (1)
      {
        v36 = *&v20[v12];
        if (!v36)
        {
          break;
        }

        v37 = v36;
        v38 = *([v37 mutableAudioBufferList] + 2);
        if (!v38)
        {
          if (qword_2812250F0 != -1)
          {
            swift_once();
          }

          v112 = sub_26D52B350();
          __swift_project_value_buffer(v112, qword_2812252A8);
          v113 = sub_26D52B330();
          v114 = sub_26D52B6E0();
          v115 = os_log_type_enabled(v113, v114);
          v116 = v141;
          if (v115)
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            aBlock[0] = v118;
            *v117 = 136315138;
            *(v117 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
            _os_log_impl(&dword_26D514000, v113, v114, "%s: Failed to get source buffer to fill from", v117, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v118);
            MEMORY[0x26D6C2260](v118, -1, -1);
            MEMORY[0x26D6C2260](v117, -1, -1);
          }

          else
          {
          }

          v110 = v154;
          v111 = v116;
          goto LABEL_81;
        }

        v39 = *&v20[v33];
        if (v39 >= [v37 frameLength])
        {

          *&v20[v33] = 0;
          v34 = *&v20[v12];
          *&v20[v12] = 0;
        }

        else
        {
          *(v30 + 4 * v169) = *(v38 + *&v20[v33]);

          if (v169 == -1)
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            swift_once();
LABEL_22:
            v49 = sub_26D52B350();
            __swift_project_value_buffer(v49, qword_2812252A8);
            v50 = sub_26D52B330();
            v51 = sub_26D52B6E0();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              aBlock[0] = v53;
              *v52 = 136315138;
              *(v52 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
              _os_log_impl(&dword_26D514000, v50, v51, "%s: could not get audio buffer to zero", v52, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v53);
              MEMORY[0x26D6C2260](v53, -1, -1);
              MEMORY[0x26D6C2260](v52, -1, -1);
            }

            else
            {
            }

            (*(v12 + 8))(v154, v11);
            return 0xFFFFFFFFLL;
          }

          ++v169;
          v40 = *&v20[v33];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_94;
          }

          *&v20[v33] = v42;
        }

LABEL_8:
        v35 = v169;
        if (v169 >= a2)
        {
          goto LABEL_19;
        }
      }

      v43 = sub_26D526F20();
      v44 = *&v20[v12];
      *&v20[v12] = v43;
      v38 = v43;

      *&v20[v33] = 0;
      if (v43)
      {

        goto LABEL_8;
      }

      *v157 = 128;
      v45 = v169;
      *(v30 + 4 * v169) = 0;
      v46 = __CFADD__(v45, 1);
      v35 = v45 + 1;
      if (v46)
      {
        __break(1u);
LABEL_97:
        swift_once();
LABEL_25:
        v54 = sub_26D52B350();
        __swift_project_value_buffer(v54, qword_2812252A8);
        v55 = sub_26D52B330();
        v56 = sub_26D52B6F0();
        v57 = os_log_type_enabled(v55, v56);
        v58 = v154;
        if (v57)
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          aBlock[0] = v60;
          *v59 = 136315138;
          *(v59 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, aBlock);
          _os_log_impl(&dword_26D514000, v55, v56, "%s: In render block but not allowed to render. Returning immediately with action complete", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x26D6C2260](v60, -1, -1);
          MEMORY[0x26D6C2260](v59, -1, -1);
        }

        *v157 = 128;
        (*(v12 + 8))(v58, v11);
        return 0xFFFFFFFFLL;
      }

      v169 = v35;
      if (v35 >= a2)
      {
LABEL_19:
        v47 = MEMORY[0x277D84F90];
        v167 = 0;
        v168 = MEMORY[0x277D84F90];
        if (!(v35 >> 30))
        {
          v48 = 4 * v35;
          v11 = v141;
          goto LABEL_35;
        }

        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        result = sub_26D52B7F0();
        if (!result)
        {
          goto LABEL_101;
        }

LABEL_63:
        v98 = *&v20[v38[61]];
        if (!v98)
        {
          goto LABEL_101;
        }

        v163 = 10;
        v164 = 0xE100000000000000;
        if (v47 >> 62)
        {
          result = sub_26D52B7F0();
          v99 = result;
        }

        else
        {
          v99 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v157 = v47;
        v158 = v98;
        if (v99)
        {
          if (v99 < 1)
          {
            goto LABEL_108;
          }

          v100 = v47 & 0xC000000000000001;
          v101 = v98;
          v102 = 0;
          do
          {
            if (v100)
            {
              v103 = MEMORY[0x26D6C1840](v102, v47);
            }

            else
            {
              v103 = *(v47 + 8 * v102 + 32);
            }

            v104 = v103;
            ++v102;
            v160 = 0;
            v161 = 0xE000000000000000;
            sub_26D52B7B0();

            v160 = 0x2064726F57202020;
            v161 = 0xE800000000000000;
            v170.location = [v104 textRange];
            v105 = NSStringFromRange(v170);
            v106 = sub_26D52B590();
            v108 = v107;

            MEMORY[0x26D6C1670](v106, v108);

            MEMORY[0x26D6C1670](2113568, 0xE300000000000000);
            v159 = [v104 byteSampleOffset] / 2;
            v109 = sub_26D52B800();
            MEMORY[0x26D6C1670](v109);

            MEMORY[0x26D6C1670](10, 0xE100000000000000);
            MEMORY[0x26D6C1670](v160, v161);

            v20 = v152;
            v47 = v157;
          }

          while (v99 != v102);
        }

        else
        {
          v119 = v98;
        }

        if (qword_2812250F0 != -1)
        {
          swift_once();
        }

        v120 = sub_26D52B350();
        __swift_project_value_buffer(v120, qword_2812252A8);
        v122 = v163;
        v121 = v164;
        v123 = v20;

        v124 = sub_26D52B330();
        v125 = sub_26D52B6D0();

        v126 = os_log_type_enabled(v124, v125);
        v11 = v141;
        if (v126)
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v162 = v128;
          *v127 = 136316162;
          *(v127 + 4) = sub_26D51CE78(0xD000000000000013, 0x800000026D52DD30, &v162);
          *(v127 + 12) = 2048;
          v129 = *&v123[qword_281225250];
          *(v127 + 14) = v129;
          *(v127 + 22) = 2048;
          result = swift_beginAccess();
          if (__OFADD__(v129, v169))
          {
            goto LABEL_109;
          }

          *(v127 + 24) = v129 + v169;

          *(v127 + 32) = 2048;
          swift_beginAccess();
          *(v127 + 34) = v167;
          *(v127 + 42) = 2080;
          v130 = sub_26D51CE78(v122, v121, &v162);

          *(v127 + 44) = v130;
          _os_log_impl(&dword_26D514000, v124, v125, "%s: Markers for [%ld..<%ld] (%ld remaining): \n%s", v127, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x26D6C2260](v128, -1, -1);
          MEMORY[0x26D6C2260](v127, -1, -1);

          v20 = v152;
        }

        else
        {
        }

        v131 = v158;
        v132 = [v123 speechSynthesisOutputMetadataBlock];
        if (v132)
        {
          v133 = v132;
          sub_26D52AB00(0, &qword_280502E10, 0x277CB8478);
          v134 = sub_26D52B660();
          (v133)[2](v133, v134, v131);

          _Block_release(v133);
        }

        goto LABEL_102;
      }
    }
  }

  v48 = 0;
  v167 = 0;
  v168 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
LABEL_35:
  v67 = sub_26D52B540();
  *(v68 + 4) = v48;
  v67(aBlock, 0);
  v69 = *&v20[qword_281225270];
  v70 = swift_allocObject();
  v70[2] = v20;
  v70[3] = &v169;
  v70[4] = &v168;
  v70[5] = &v167;
  v38 = swift_allocObject();
  v38[2] = sub_26D52A8E4;
  v38[3] = v70;
  v137[2] = v70;
  aBlock[4] = sub_26D52ADEC;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D524D24;
  aBlock[3] = &block_descriptor_92;
  v71 = _Block_copy(aBlock);
  v20 = v20;

  dispatch_sync(v69, v71);
  _Block_release(v71);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if (v69)
  {
    goto LABEL_99;
  }

  v165 = v47;
  v72 = v168;
  v73 = *(v168 + 16);
  v38 = &unk_281225000;
  v152 = v20;
  v74 = v156;
  if (!v73)
  {
LABEL_61:
    if (v47 >> 62)
    {
      goto LABEL_100;
    }

    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

LABEL_101:

LABEL_102:
    swift_beginAccess();
    v135 = *&v20[qword_281225250];
    if (!__OFADD__(v135, v169))
    {
      *&v20[qword_281225250] = v135 + v169;
      v136 = sub_26D52B4C0();

      v144(v154, v11);

      return v136;
    }

    __break(1u);
    goto LABEL_105;
  }

  v145 = qword_2812251E8;
  v75 = qword_281225130;
  v137[0] = &v20[qword_281225208];
  v146 = qword_281225250;

  v143 = v75;
  swift_beginAccess();
  v149 = *MEMORY[0x277CE67A8];
  v148 = (v150 + 104);
  v150 += 8;
  v142 = (v151 + 48);
  v139 = (v151 + 32);
  v138 = (v151 + 8);
  v137[1] = v72;
  v11 = (v72 + 36);
  v47 = MEMORY[0x277D84F90];
  v12 = v155;
  while (1)
  {
    if (*(v11 - 1))
    {
      goto LABEL_39;
    }

    v76 = *v11;
    v77 = *(v11 - 1);
    (*v148)(v74, v149, v12);
    v78 = sub_26D52B310();
    (*v150)(v74, v12);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v79 = *&v20[v146];
    if ((v79 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
      goto LABEL_93;
    }

    v80 = [objc_allocWithZone(MEMORY[0x277CB8478]) initWithMarkerType:1 forTextRange:v76 atByteSampleOffset:{v77, 4 * v79}];
    MEMORY[0x26D6C16D0]();
    if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v96 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26D52B690();
      v20 = v152;
    }

    sub_26D52B6A0();

    v47 = v165;
LABEL_39:
    v11 += 4;
    if (!--v73)
    {

      v11 = v141;
      v38 = &unk_281225000;
      goto LABEL_61;
    }
  }

  v81 = *&v20[v145];
  if (!v81)
  {
    goto LABEL_39;
  }

  v157 = v47;
  v82 = [v81 ssmlRepresentation];
  v151 = sub_26D52B590();

  v83 = v147;
  sub_26D52AA98(&v20[v143], v147, &qword_280502C68, &qword_26D52CB48);
  v84 = v158;
  if ((*v142)(v83, 1, v158) == 1)
  {

    sub_26D51D798(v83, &qword_280502C68, &qword_26D52CB48);
    v47 = v157;
    v12 = v155;
    v74 = v156;
LABEL_49:
    v20 = v152;
    goto LABEL_39;
  }

  v85 = v153;
  (*v139)(v153, v83, v84);
  sub_26D52B240();
  sub_26D52B6B0();
  v87 = v86;

  if (v87 & 1) != 0 || (sub_26D52B260(), (v88))
  {
    (*v138)(v85, v158);

    v20 = v152;
    v47 = v157;
    v12 = v155;
    v74 = v156;
    goto LABEL_39;
  }

  v89 = sub_26D52B620();
  sub_26D52B630();

  v90 = v89;
  v91 = sub_26D52B620();

  v92 = v137[0];
  v12 = v155;
  v74 = v156;
  if ((*(v137[0] + 16) & 1) == 0 && *v137[0] == v90 && *(v137[0] + 8) == v91)
  {
    (*v138)(v153, v158);
    v20 = v152;
    v47 = v157;
    goto LABEL_39;
  }

  *v137[0] = v90;
  *(v92 + 8) = v91;
  *(v92 + 16) = 0;
  v93 = *&v152[v146];
  v94 = v158;
  if ((v93 - 0x2000000000000000) >> 62 == 3)
  {
    v95 = [objc_allocWithZone(MEMORY[0x277CB8478]) initWithMarkerType:1 forTextRange:v90 atByteSampleOffset:{v91, 4 * v93}];
    MEMORY[0x26D6C16D0]();
    if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v97 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26D52B690();
    }

    sub_26D52B6A0();

    (*v138)(v153, v94);
    v47 = v165;
    goto LABEL_49;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  return result;
}

void sub_26D526904(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_26D528AF0(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v16 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_26D526A18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26D528AF0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26D526B04()
{
  v1 = v0;
  v2 = sub_26D52B170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D52B200();
  v7 = sub_26D52B1F0();
  (*(v3 + 104))(v6, *MEMORY[0x277D70178], v2);
  v8 = *&v1[qword_2812251E8];
  if (v8)
  {
    v9 = [v8 jobIdentifier];
    sub_26D52B590();
  }

  sub_26D52B1E0();

  (*(v3 + 8))(v6, v2);
  [*&v1[qword_281225240] stopSynthesis];
  v10 = *&v1[qword_281225288];
  os_unfair_lock_lock(v10 + 4);
  v11 = qword_281225200;
  swift_beginAccess();
  v12 = *&v1[v11];
  *&v1[v11] = MEMORY[0x277D84F90];

  v13 = qword_281225218;
  v14 = *&v1[qword_281225218];
  *&v1[qword_281225218] = 0;

  v15 = *&v1[qword_281225270];
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26D52ADD8;
  *(v17 + 24) = v16;
  aBlock[4] = sub_26D52ADEC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D524D24;
  aBlock[3] = &block_descriptor_22;
  v18 = _Block_copy(aBlock);
  v19 = v1;

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    *&v19[qword_2812251C0] = 0;
    v21 = *&v1[v13];
    *&v1[v13] = 0;

    [*&v19[qword_2812251F8] broadcast];
    os_unfair_lock_unlock(v10 + 4);
  }

  return result;
}

void sub_26D526E44(void *a1)
{
  v1 = a1;
  sub_26D526B04();
}

void sub_26D526EB4(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_26D5295D8(a4);
}

uint64_t sub_26D526F20()
{
  v1 = v0;
  v2 = sub_26D52B0B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = *(v0 + qword_281225288);
  os_unfair_lock_lock(v10 + 4);
  v11 = qword_281225200;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v15 = *(v1 + v11);
    }

    if (sub_26D52B7F0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_beginAccess();
    sub_26D527170();
    v14 = v13;
    swift_endAccess();
    goto LABEL_8;
  }

  v14 = 0;
LABEL_8:
  os_unfair_lock_unlock(v10 + 4);
  v16 = *(v1 + qword_281225240);
  if (v16)
  {
    v17 = [v16 synthesizing];
    if (!v14)
    {
      if (v17)
      {
        v18 = [*(v1 + qword_2812251F8) wait];
        return sub_26D526F20(v18);
      }

LABEL_13:
      if (*(v1 + qword_2812251D0) != 1)
      {
        return 0;
      }

      v19 = *(v1 + qword_2812251F8);
      sub_26D52B070();
      sub_26D52B080();
      v20 = *(v3 + 8);
      v20(v7, v2);
      v21 = sub_26D52B060();
      v20(v9, v2);
      [v19 waitUntilDate_];

      return sub_26D526F20(v18);
    }
  }

  else if (!v14)
  {
    goto LABEL_13;
  }

  return v14;
}

void sub_26D527170()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x26D6C1840](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_26D52B7F0())
  {
    goto LABEL_20;
  }

  if (!sub_26D52B7F0())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_26D52B7F0();
LABEL_16:
    if (v3)
    {
      sub_26D529398(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_26D527250(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_26D529710(v7);
}

void sub_26D5272D4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v9 = a1;
  sub_26D529B30(a4, a5);
}

uint64_t sub_26D527348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTSSiriSynthVoice(0);
  v18 = *(v6 - 8);
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D52B580();
  v11 = TTSVoiceIDHasPersonalVoicePrefix();

  if (v11)
  {
    result = sub_26D527D28();
    v13 = result;
    v14 = *(result + 16);
    if (v14)
    {
      v15 = 0;
      while (v15 < *(v13 + 16))
      {
        sub_26D52AB48(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, v9);
        if (sub_26D51A124(a1, a2))
        {

          sub_26D528BF4(v9, a3);
          return (*(v18 + 56))(a3, 0, 1, v6);
        }

        ++v15;
        result = sub_26D528C58(v9);
        if (v14 == v15)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      return (*(v18 + 56))(a3, 1, 1, v6);
    }
  }

  else
  {

    sub_26D51A078(a1, a2, a3);
    v16 = *(v18 + 56);

    return v16(a3, 0, 1, v6);
  }

  return result;
}

void sub_26D52755C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_26D52B580();
  v2 = [v0 resourceWithVoiceId_];

  if (v2)
  {
    sub_26D52B230();
    v3 = sub_26D52B220();
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D52B7F0())
    {
      v6 = 0;
      v7 = qword_281225240;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x26D6C1840](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = *(&oslog->isa + v7);
        if (v11)
        {
          v12 = v11;
          [v12 loadRuleset_];
        }

        ++v6;
        if (v10 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    v13 = [v2 primaryLanguage];
    if (!v13)
    {
      sub_26D52B590();
      v13 = sub_26D52B580();
    }

    v14 = objc_opt_self();
    v15 = [v2 speechVoice];
    v16 = [v15 voiceType];

    v17 = [v14 effectiveResourceForLanguageCode:v13 andVoiceType:v16];
    if (v17)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = oslog;
      aBlock[4] = sub_26D529C9C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26D5279A4;
      aBlock[3] = &block_descriptor_28;
      v19 = _Block_copy(aBlock);
      v20 = oslog;

      [v14 enumerateLoadableResourcesInAsset:v17 usingBlock:v19];
      _Block_release(v19);
    }

    else
    {
      if (qword_2812250F0 != -1)
      {
        swift_once();
      }

      v21 = sub_26D52B350();
      __swift_project_value_buffer(v21, qword_2812252A8);
      v22 = v2;
      osloga = sub_26D52B330();
      v23 = sub_26D52B6C0();

      if (os_log_type_enabled(osloga, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v22;
        *v25 = v2;
        v27 = v22;
        _os_log_impl(&dword_26D514000, osloga, v23, "Could not find voice resource for resource %@", v24, 0xCu);
        sub_26D51D798(v25, &unk_280502CB0, &qword_26D52CB78);
        MEMORY[0x26D6C2260](v25, -1, -1);
        MEMORY[0x26D6C2260](v24, -1, -1);

        v26 = v27;
      }

      else
      {

        v26 = osloga;
      }
    }
  }
}

uint64_t sub_26D5279A4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v22 = sub_26D52B030();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v21 = v10;
  v12 = sub_26D52B590();
  v14 = v13;
  v15 = sub_26D52B590();
  v17 = v16;
  v18 = _Block_copy(a4);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_26D52B000();

  v21(v12, v14, v15, v17, sub_26D52A6F8, v19, v9);

  return (*(v6 + 8))(v9, v22);
}

uint64_t sub_26D527B4C(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  v2 = sub_26D52B050();

  return v2;
}

void static TTSSiriSynthAudioUnit.registerAudioUnit()()
{
  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v0 = String.osType()();
    v1 = objc_opt_self();
    type metadata accessor for TTSSiriSynthAudioUnit();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = sub_26D52B580();
    v4[0] = 1635087216;
    v4[1] = v0;
    v5 = 1634758764;
    v6 = 0;
    [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
  }
}

void sub_26D527C64()
{
  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v0 = String.osType()();
    v1 = objc_opt_self();
    type metadata accessor for TTSSiriSynthAudioUnit();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = sub_26D52B580();
    v4[0] = 1635087216;
    v4[1] = v0;
    v5 = 1634758764;
    v6 = 0;
    [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
  }
}

uint64_t sub_26D527D28()
{
  v0 = sub_26D52B510();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (TTSVBHasDeviceBeenUnlockedSinceBoot())
  {
    v5 = dispatch_semaphore_create(0);
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v6 = sub_26D52B350();
    __swift_project_value_buffer(v6, qword_2812252A8);
    v7 = sub_26D52B330();
    v8 = sub_26D52B6F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26D514000, v7, v8, "Will fetch personal voices from service.", v9, 2u);
      MEMORY[0x26D6C2260](v9, -1, -1);
    }

    v10 = swift_allocObject();
    *(v10 + 16) = MEMORY[0x277D84F90];
    sub_26D51F56C();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v5;

    v12 = v5;
    sub_26D52B400();

    MEMORY[0x26D6C22B0](v20);
    sub_26D52B500();
    sub_26D52B740();

    (*(v1 + 8))(v4, v0);
    swift_beginAccess();
    v13 = *(v10 + 16);
  }

  else
  {
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v14 = sub_26D52B350();
    __swift_project_value_buffer(v14, qword_2812252A8);
    v15 = sub_26D52B330();
    v16 = sub_26D52B6F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26D514000, v15, v16, "Device has not been unlocked yet. Will not fetch personal voices", v17, 2u);
      MEMORY[0x26D6C2260](v17, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_26D528064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v58 = a1;
  v4 = sub_26D52B380();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  v6 = *(v5 + 8);
  v7 = MEMORY[0x28223BE20](v4);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v55 - v9;
  v10 = type metadata accessor for TTSSiriSynthVoice(0);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D52B3D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502DF0, &qword_26D52CE38);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v55 - v24);
  sub_26D52AA98(v58, &v55 - v24, &qword_280502DF0, &qword_26D52CE38);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = *v25;
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v37 = sub_26D52B350();
    __swift_project_value_buffer(v37, qword_2812252A8);

    v38 = sub_26D52B330();
    v39 = sub_26D52B6F0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = *(v36 + 16);

      _os_log_impl(&dword_26D514000, v38, v39, "Did fetch %ld personal voice(s) from service", v40, 0xCu);
      MEMORY[0x26D6C2260](v40, -1, -1);

      v41 = *(v36 + 16);
      if (v41)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v41 = *(v36 + 16);
      if (v41)
      {
LABEL_10:
        v56 = a2;
        v64[0] = MEMORY[0x277D84F90];
        sub_26D528ED8(0, v41, 0);
        v42 = v64[0];
        v43 = *(v63 + 2);
        v44 = v63[80];
        v55 = v36;
        v45 = v36 + ((v44 + 32) & ~v44);
        v58 = *(v63 + 9);
        v63 += 16;
        v46 = v63 - 8;
        do
        {
          v47 = v60;
          v48 = v62;
          v43(v60, v45, v62);
          v49 = v61;
          v43(v61, v47, v48);
          sub_26D519FD4(v49, v13);
          (*v46)(v47, v48);
          v64[0] = v42;
          v51 = *(v42 + 16);
          v50 = *(v42 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_26D528ED8(v50 > 1, v51 + 1, 1);
            v42 = v64[0];
          }

          *(v42 + 16) = v51 + 1;
          sub_26D528BF4(v13, v42 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v51);
          v45 += v58;
          --v41;
        }

        while (v41);

        a2 = v56;
        goto LABEL_18;
      }
    }

    v42 = MEMORY[0x277D84F90];
LABEL_18:
    swift_beginAccess();
    v53 = *(a2 + 16);
    *(a2 + 16) = v42;

    return sub_26D52B750();
  }

  (*(v15 + 32))(v21, v25, v14);
  if (qword_2812250F0 != -1)
  {
    swift_once();
  }

  v26 = sub_26D52B350();
  __swift_project_value_buffer(v26, qword_2812252A8);
  (*(v15 + 16))(v19, v21, v14);
  v27 = sub_26D52B330();
  v28 = sub_26D52B6E0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v63 = v21;
    v30 = v29;
    v31 = swift_slowAlloc();
    v64[0] = v31;
    *v30 = 136315138;
    v32 = sub_26D52B3C0();
    v34 = v33;
    v62 = *(v15 + 8);
    v62(v19, v14);
    v35 = sub_26D51CE78(v32, v34, v64);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_26D514000, v27, v28, "Fetching personal voices failed: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D6C2260](v31, -1, -1);
    MEMORY[0x26D6C2260](v30, -1, -1);

    v62(v63, v14);
  }

  else
  {

    v52 = *(v15 + 8);
    v52(v19, v14);
    v52(v21, v14);
  }

  return sub_26D52B750();
}

uint64_t sub_26D528704()
{
  v1 = qword_281225120;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_281225168, v2);

  v4 = *(v0 + qword_2812251A0);

  sub_26D51D798(v0 + qword_281225138, &qword_280502C60, &qword_26D52CB40);
  v5 = *(v0 + qword_281225200);

  v6 = *(v0 + qword_281225238);

  v7 = *(v0 + qword_281225288);

  sub_26D51D798(v0 + qword_281225130, &qword_280502C68, &qword_26D52CB48);
  return sub_26D51D798(v0 + qword_281225228, &qword_280502C70, &qword_26D52CB50);
}

id TTSSiriSynthAudioUnit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSSiriSynthAudioUnit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D528914(uint64_t a1)
{
  v2 = qword_281225120;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C58, &qword_26D52CB38);
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  v4(a1 + qword_281225168, v3);

  v5 = *(a1 + qword_2812251A0);

  sub_26D51D798(a1 + qword_281225138, &qword_280502C60, &qword_26D52CB40);
  v6 = *(a1 + qword_281225200);

  v7 = *(a1 + qword_281225238);

  v8 = *(a1 + qword_281225288);

  sub_26D51D798(a1 + qword_281225130, &qword_280502C68, &qword_26D52CB48);
  return sub_26D51D798(a1 + qword_281225228, &qword_280502C70, &qword_26D52CB50);
}

char *sub_26D528AF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502E08, &qword_26D52CE48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26D528BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D528C58(uint64_t a1)
{
  v2 = type metadata accessor for TTSSiriSynthVoice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D528CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + qword_281225238);
  *(v1 + qword_281225238) = MEMORY[0x277D84F90];
}

uint64_t sub_26D528CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

size_t sub_26D528D14(size_t a1, int64_t a2, char a3)
{
  result = sub_26D528F1C(a1, a2, a3, *v3, &qword_280502E18, &qword_26D52CE50, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26D528DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_26D528E2C()
{
  result = qword_280502C98;
  if (!qword_280502C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502C98);
  }

  return result;
}

uint64_t sub_26D528E80(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_26D528ED8(size_t a1, int64_t a2, char a3)
{
  result = sub_26D528F1C(a1, a2, a3, *v3, &qword_280502DF8, &qword_26D52CE40, type metadata accessor for TTSSiriSynthVoice);
  *v3 = result;
  return result;
}

size_t sub_26D528F1C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26D5290F8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_26D52B7F0();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_26D52B7D0();
    *v1 = result;
  }

  return result;
}

uint64_t sub_26D5291C8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_26D52B0E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_26D529288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_26D52AB00(0, &qword_280502E00, 0x277CB83C0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26D52B7F0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26D52B7F0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_26D529398(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26D52B7F0();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_26D52B7F0();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_26D5290F8(result);

  return sub_26D529288(v4, v2, 0);
}

unint64_t sub_26D529470(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_26D529518(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_26D528AF0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_26D529470(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_26D5295D8(char a1)
{
  v2 = v1;
  *(v2 + qword_2812251D0) = 0;
  [*(v2 + qword_2812251F8) broadcast];
  if ((a1 & 1) == 0)
  {
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v4 = sub_26D52B350();
    __swift_project_value_buffer(v4, qword_2812252A8);
    v5 = sub_26D52B330();
    v6 = sub_26D52B6E0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26D514000, v5, v6, "SiriSSE encountered error during synthesis. Resetting engine.", v7, 2u);
      MEMORY[0x26D6C2260](v7, -1, -1);
    }

    v8 = *(v2 + qword_281225240);
    *(v2 + qword_281225240) = 0;
  }
}

void sub_26D529710(void *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280502C70, &qword_26D52CB50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_26D52B0B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = qword_281225228;
  swift_beginAccess();
  sub_26D52AA98(v2 + v18, v9, &qword_280502C70, &qword_26D52CB50);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26D51D798(v9, &qword_280502C70, &qword_26D52CB50);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    sub_26D52B0A0();
    sub_26D52B090();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v15, v10);
    (*(v11 + 56))(v7, 1, 1, v10);
    swift_beginAccess();
    sub_26D528DC4(v7, v2 + v18, &qword_280502C70, &qword_26D52CB50);
    swift_endAccess();
    if (qword_2812250F0 != -1)
    {
      swift_once();
    }

    v22 = sub_26D52B350();
    __swift_project_value_buffer(v22, qword_2812252A8);
    v23 = sub_26D52B330();
    v24 = sub_26D52B6D0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v21;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v20;
      _os_log_impl(&dword_26D514000, v23, v24, "SiriAUSP first buffer latency %fs", v26, 0xCu);
      v27 = v26;
      v21 = v25;
      MEMORY[0x26D6C2260](v27, -1, -1);
    }

    v21(v17, v10);
  }

  *(v2 + qword_2812251D0) = 0;
  v28 = *(v2 + qword_281225288);
  os_unfair_lock_lock(v28 + 4);
  v29 = qword_281225200;
  swift_beginAccess();
  v30 = v33;
  MEMORY[0x26D6C16D0]();
  if (*((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v31 = *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_26D52B690();
  }

  sub_26D52B6A0();
  swift_endAccess();
  [*(v2 + qword_2812251F8) broadcast];
  os_unfair_lock_unlock(v28 + 4);
}

uint64_t sub_26D529B30(uint64_t a1, uint64_t a2)
{
  v2[qword_2812251D0] = 0;
  v5 = *&v2[qword_281225270];
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26D52A700;
  *(v7 + 24) = v6;
  v12[4] = sub_26D52ADEC;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26D524D24;
  v12[3] = &block_descriptor_82;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D529C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = *(v5 + 16);
  v10 = [objc_allocWithZone(TTSSiriVoiceResource) init];
  if (a3 != 0xD000000000000022 || 0x800000026D52DF10 != a4)
  {
    v19 = v10;
    if ((sub_26D52B810() & 1) == 0)
    {
      if (a3 == 0xD000000000000020 && 0x800000026D52DF40 == a4 || (sub_26D52B810() & 1) != 0)
      {
        v11 = 1;
      }

      else if (a3 == 0xD00000000000001FLL && 0x800000026D52DF70 == a4)
      {
        v11 = 2;
      }

      else if (sub_26D52B810())
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      [v19 setType_];
      v12 = sub_26D52B580();
      [v19 setResourceName_];

      v13 = a5();
      v15 = v14;
      v16 = sub_26D52B040();
      sub_26D519C98(v13, v15);
      [v19 setResourceData_];

      v17 = *(v9 + qword_281225240);
      [v17 loadVoiceResource_];
    }
  }

  return MEMORY[0x2821F9730]();
}

unint64_t sub_26D529E9C()
{
  result = qword_280502CC0;
  if (!qword_280502CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280502CC0);
  }

  return result;
}

void sub_26D529F10()
{
  sub_26D52A3B8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_26D52A410(319, &qword_2812250A8, MEMORY[0x277CC9788]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_26D52A410(319, &qword_2812250A0, MEMORY[0x277D70378]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_26D52A410(319, &qword_2812250E8, MEMORY[0x277CC9578]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_26D52A3B8()
{
  if (!qword_2812250B0)
  {
    v0 = sub_26D52B120();
    if (!v1)
    {
      atomic_store(v0, &qword_2812250B0);
    }
  }
}

void sub_26D52A410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26D52B770();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26D52A478(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26D52A4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D52A540(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26D52A594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D52A5F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D52A614(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26D52A660(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D52A680(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_26D52A6BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_26D52A700()
{
  v1 = v0[2];
  if (v1 < 0)
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    v25 = v0[4];
    v2 = qword_281225238;
    if (v1)
    {
      v3 = 0;
      v4 = v0[3];
      v5 = MEMORY[0x277D84F90];
      v23 = v0[2];
      v24 = qword_281225238;
      while (1)
      {
        v7 = v4 + 16 * v3;
        if ((*v7 & 1) == 0)
        {
          v8 = *(v7 + 1);
          v9 = *(v7 + 2);
          v10 = *(v7 + 4);
          v11 = *(v7 + 8);
          v12 = *(v25 + v2);
          v13 = *(v12 + 16);
          if (v13)
          {
            v14 = 0;
            v15 = 0;
            while (1)
            {
              v16 = v12 + v14;
              if ((*(v12 + v14 + 32) & 1) == 0 && v10 == *(v16 + 36) && v9 == *(v16 + 34))
              {
                break;
              }

              ++v15;
              v14 += 16;
              if (v13 == v15)
              {
                goto LABEL_21;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v2 = v24;
            *(v25 + v24) = v12;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v22 = sub_26D5291B4(v12);
              v2 = v24;
              v12 = v22;
            }

            if (v15 >= *(v12 + 16))
            {
              __break(1u);
              goto LABEL_29;
            }

            *(v12 + v14 + 40) = v11;
            *(v25 + v2) = v12;
          }

          else
          {
LABEL_21:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_26D528AF0(0, *(v5 + 2) + 1, 1, v5);
            }

            v20 = *(v5 + 2);
            v19 = *(v5 + 3);
            v2 = v24;
            if (v20 >= v19 >> 1)
            {
              v21 = sub_26D528AF0((v19 > 1), v20 + 1, 1, v5);
              v2 = v24;
              v5 = v21;
            }

            *(v5 + 2) = v20 + 1;
            v6 = &v5[16 * v20];
            v6[32] = 0;
            v6[33] = v8;
            *(v6 + 17) = v9;
            *(v6 + 9) = v10;
            *(v6 + 5) = v11;
          }

          v1 = v23;
        }

        if (++v3 == v1)
        {
          goto LABEL_27;
        }
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_27:
    sub_26D526A18(v5);
  }
}

void sub_26D52A8E4()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v1[5];
  v6 = qword_281225238;
  v7 = *(v3 + qword_281225238);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

  v9 = *(v7 + 2);
  if (v9)
  {
    while (1)
    {
      v10 = 0;
      v11 = qword_281225250;
LABEL_4:
      v12 = *(v3 + v11);
      v13 = *v2;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        break;
      }

      v16 = 16 * v10;
      v17 = v10;
      while (1)
      {
        v18 = &v7[v16];
        v19 = *&v7[v16 + 40];
        if (v19 >= v15)
        {
          break;
        }

        ++v17;
        v16 += 16;
        if (v17 >= v9)
        {
          if (v9 <= v10 + 1)
          {
            v17 = v10 + 1;
          }

          else
          {
            v17 = v9;
          }

          goto LABEL_17;
        }
      }

      v20 = &v7[16 * v9 + 40];
      while (v17 < --v9)
      {
        v21 = *(v20 - 2);
        v20 -= 16;
        if (v21 < v15)
        {
          v22 = v18[32];
          v23 = &v7[v16];
          v24 = v23[33];
          v25 = *(v23 + 17);
          LODWORD(v23) = *(v23 + 9);
          *(v18 + 2) = *(v20 - 8);
          *(v20 - 8) = v22;
          *(v20 - 7) = v24;
          *(v20 - 3) = v25;
          *(v20 - 1) = v23;
          *v20 = v19;
          v10 = v17 + 1;
          if (v17 + 1 < v9)
          {
            goto LABEL_4;
          }

          ++v17;
          break;
        }
      }

LABEL_17:
      *(v3 + v6) = v7;
      if (v17 < 0)
      {
        __break(1u);
        break;
      }

      if (*(v7 + 2) >= v17)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_20:
      v7 = sub_26D5291B4(v7);
      *(v3 + v6) = v7;
      v9 = *(v7 + 2);
      if (!v9)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_21:
  v17 = 0;
  *(v3 + v6) = v7;
LABEL_22:

  sub_26D526904(v26, (v7 + 32), 0, (2 * v17) | 1);
  if (!v17)
  {
LABEL_25:
    *v5 = *(*(v3 + v6) + 16);
    return;
  }

  if (*(*(v3 + v6) + 16) >= v17)
  {
    sub_26D529518(0, v17);
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_26D52AA98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26D52AB00(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26D52AB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSiriSynthVoice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D52AC24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D52AC78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D52AC98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_26D52AD74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
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

void operator new()
{
    ;
  }
}