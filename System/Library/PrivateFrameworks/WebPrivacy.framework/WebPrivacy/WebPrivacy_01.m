void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v2 = **a2;
  *v3 = v4;
  v5 = *(v2 + 2);
  *(v2 + 2) = 0;
  v6 = *(v3 + 2);
  *(v3 + 2) = 0;
  v7 = *(v2 + 2);
  *(v2 + 2) = v6;

  v8 = *(v3 + 2);
  *(v3 + 2) = v5;
}

void _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v15 = a1;
  v13 = a3;
  v14 = a2;
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v5 = v4 < *(a1 + 8);
  }

  v6 = *(a3 + 8) < v4;
  v7 = *a3 == v3;
  v8 = *a3 < v3;
  if (v7)
  {
    v8 = v6;
  }

  if (v5)
  {
    v9 = &v15;
    if (v8)
    {
LABEL_11:
      v11 = &v13;
LABEL_17:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(v9, v11);
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v15, &v14);
    v10 = *(v13 + 1) < *(v14 + 1);
    if (*v13 != *v14)
    {
      v10 = *v13 < *v14;
    }

    if (v10)
    {
      v9 = &v14;
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v14, &v13);
    v12 = *(v14 + 1) < *(v15 + 1);
    if (*v14 != *v15)
    {
      v12 = *v14 < *v15;
    }

    if (v12)
    {
      v9 = &v15;
      v11 = &v14;
      goto LABEL_17;
    }
  }
}

void _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEvT1_SJ_SJ_SJ_SJ_T0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  v21 = a1;
  v18 = a4;
  v19 = a3;
  v17 = a5;
  v25 = a1;
  v23 = a3;
  v24 = a2;
  v22 = a4;
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(a1, a2, a3);
  v10 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v10 = *(a4 + 8) < *(a3 + 8);
  }

  if (v10)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v23, &v22);
    v11 = *(v23 + 1) < *(a2 + 8);
    if (*v23 != *a2)
    {
      v11 = *v23 < *a2;
    }

    if (v11)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v24, &v23);
      v12 = *(v24 + 1) < *(a1 + 8);
      if (*v24 != *a1)
      {
        v12 = *v24 < *a1;
      }

      if (v12)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v25, &v24);
      }
    }
  }

  v13 = *a5 < *a4;
  if (*a5 == *a4)
  {
    v13 = *(a5 + 8) < *(a4 + 8);
  }

  if (v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v18, &v17);
    v14 = *(v18 + 1) < *(a3 + 8);
    if (*v18 != *a3)
    {
      v14 = *v18 < *a3;
    }

    if (v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v19, &v18);
      v15 = *(v19 + 1) < *(a2 + 8);
      if (*v19 != *a2)
      {
        v15 = *v19 < *a2;
      }

      if (v15)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v20, &v19);
        v16 = *(v20 + 1) < *(a1 + 8);
        if (*v20 != *a1)
        {
          v16 = *v20 < *a1;
        }

        if (v16)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v21, &v20);
        }
      }
    }
  }
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_EEbT1_SJ_T0_(uint64_t a1, unint64_t *a2)
{
  v33 = a2;
  v34 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(a1, (a1 + 24), (a2 - 3));
        return 1;
      case 4:
        v37 = (a1 + 24);
        v38 = a1;
        v35 = (a2 - 3);
        v36 = (a1 + 48);
        _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(a1, (a1 + 24), a1 + 48);
        v26 = *(a2 - 3);
        v27 = *(a1 + 48);
        v6 = v26 == v27;
        v28 = v26 < v27;
        if (v6)
        {
          v28 = *(a2 - 2) < *(a1 + 56);
        }

        if (!v28)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v36, &v35);
        v29 = *(a1 + 24);
        v30 = *(v36 + 1) < *(a1 + 32);
        if (*v36 != v29)
        {
          v30 = *v36 < v29;
        }

        if (!v30)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v37, &v36);
        v31 = *(v37 + 1) < *(a1 + 8);
        if (*v37 != *a1)
        {
          v31 = *v37 < *a1;
        }

        if (!v31)
        {
          return 1;
        }

        v8 = &v38;
        v9 = &v37;
LABEL_8:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(v8, v9);
        return 1;
      case 5:
        _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEvT1_SJ_SJ_SJ_SJ_T0_(a1, a1 + 24, a1 + 48, a1 + 72, (a2 - 3));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 3);
      v33 = a2 - 3;
      v6 = v5 == *a1;
      v7 = v5 < *a1;
      if (v6)
      {
        v7 = *(a2 - 2) < *(a1 + 8);
      }

      if (!v7)
      {
        return 1;
      }

      v8 = &v34;
      v9 = &v33;
      goto LABEL_8;
    }
  }

  v10 = (a1 + 48);
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(a1, (a1 + 24), a1 + 48);
  v11 = (a1 + 72);
  if (v11 == a2)
  {
    return 1;
  }

  v12 = 0;
  while (1)
  {
    v13 = *v11;
    v14 = v11[1];
    v15 = *v11 < *v10;
    if (*v11 == *v10)
    {
      v15 = v14 < v10[1];
    }

    if (v15)
    {
      v16 = v11[2];
      v11[2] = 0;
      v17 = v34;
      do
      {
        v18 = v10;
        *(v10 + 3) = *v10;
        v19 = v10[2];
        v10[2] = 0;
        v20 = v10[5];
        v10[5] = v19;

        if (v10 == v17)
        {
          break;
        }

        v21 = *(v10 - 3);
        v22 = *(v10 - 2);
        v10 -= 3;
        v23 = v14 < v22;
        v6 = v13 == v21;
        v24 = v13 < v21;
        if (v6)
        {
          v24 = v23;
        }
      }

      while (v24);
      *v18 = v13;
      v18[1] = v14;
      v25 = v18[2];
      v18[2] = v16;

      if (++v12 == 8)
      {
        break;
      }
    }

    v10 = v11;
    v11 += 3;
    if (v11 == a2)
    {
      return 1;
    }
  }

  return v11 + 3 == a2;
}

id WebPrivacy::applyOrderedReplacements<objc_object>(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (*a2 == a2[1])
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 mutableCopy];
    for (i = a2[1]; i != *a2; [v5 replaceCharactersInRange:v7 withString:{v8, *(i + 16)}])
    {
      v7 = *(i - 24);
      v8 = *(i - 16);
      i -= 24;
    }
  }

  return v5;
}

void sub_273D36110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location, char a14)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](&a14);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_273D365C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location, char a14)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](&a14);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_273D366D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D367D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D368D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D369D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36EE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D36FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_273D37090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v10 + 16));

  _Unwind_Resume(a1);
}

void sub_273D3716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  std::mutex::unlock((v14 + 16));
  _Unwind_Resume(a1);
}

void callCompletionHandler<void({block_pointer} {__strong})(NSData *,NSError *)>(void *a1, void *a2, void *a3, unsigned int a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    if (a4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[a4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v17[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:a4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_273D383F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::mutex::unlock((v10 + 16));

  _Unwind_Resume(a1);
}

void callCompletionHandler<void({block_pointer} {__strong})(WPLinkFilteringData *,NSError *)>(void *a1, void *a2, void *a3, unsigned int a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    if (a4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[a4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v17[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:a4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void _ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD_(void **a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 stringForKey:@"com.apple.WebPrivacy.TrackingResourceRequestContentBlockerVersion"];

  if (v3)
  {
    v6 = [v5 isEqualToString:a1[1]];
    if (v6)
    {
      v7 = WPOSLogAPI();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_273D20000, v7, OS_LOG_TYPE_INFO, "Adding last cached tracker block list rules", buf, 2u);
      }

      (*(a1[2] + 2))();
      goto LABEL_24;
    }
  }

  v8 = WebPrivacy::Client::shared(v6);
  WebPrivacy::Client::cachedListData(v8, 1u, buf);
  if (!*buf)
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_11;
  }

  v22 = Platform::SharedMemory::view(*buf);
  v23 = v9;
  if (!v9)
  {
LABEL_11:
    v13 = WPOSLogAPI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__cold_2();
    }

    (*(a1[2] + 2))();
    goto LABEL_22;
  }

  WebPrivacy::createContentExtensionSource(&v22, v21);
  if (![v21[0] length])
  {
    v14 = WPOSLogAPI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__cold_1();
      if (v3)
      {
        goto LABEL_16;
      }
    }

    else if (v3)
    {
LABEL_16:
      v15 = WPOSLogAPI();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_273D20000, v15, OS_LOG_TYPE_INFO, "Falling back to previously compiled rules", v20, 2u);
      }

      (*(a1[2] + 2))();
      goto LABEL_21;
    }

    (*(a1[2] + 2))();
    goto LABEL_21;
  }

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [v10 initWithData:v21[0] encoding:4];
  v12 = *a1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke;
  v16[3] = &unk_279EAF468;
  v17 = v3;
  v19 = a1[2];
  v18 = a1[1];
  [v12 compileContentRuleListForIdentifier:@"com.apple.WebPrivacy.TrackingResourceRequestContentBlocker" encodedContentRuleList:v11 completionHandler:v16];

LABEL_21:
LABEL_22:
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

LABEL_24:
}

void sub_273D3A634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  _Unwind_Resume(a1);
}

void _ZZN8Platform8BlockPtrIFvP17WKContentRuleListP7NSErrorEE12fromCallableIZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorENS_9ArrayViewIhEEEEDaT_OT0_EUlS2_S4_E_EES6_SF_ENUlPKvE_8__invokeESK_(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void ___ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WPOSLogAPI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      ___ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke_cold_1(v8, v14, v7);
    }

    if (a1[4])
    {
      v9 = WPOSLogAPI();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_273D20000, v9, OS_LOG_TYPE_INFO, "Falling back to previously compiled rules", v13, 2u);
      }

      v10 = a1[4];
      (*(a1[6] + 16))();
    }

    else
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    (*(a1[6] + 16))();
    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v11 setObject:a1[5] forKey:@"com.apple.WebPrivacy.TrackingResourceRequestContentBlockerVersion"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void _ZZZ69__WPResources_prepareResourceMonitorRulesForStore_completionHandler__ENK4__14clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD_(void **a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 stringForKey:@"com.apple.WebPrivacy.ResourceMonitorURLsVersion"];

  if (v3)
  {
    v6 = [v5 isEqualToString:a1[1]];
    if (v6)
    {
      v7 = WPOSLogAPI();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_273D20000, v7, OS_LOG_TYPE_INFO, "Adding last cached resource monitor url rules", buf, 2u);
      }

      (*(a1[2] + 2))();
      goto LABEL_24;
    }
  }

  v8 = WebPrivacy::Client::shared(v6);
  WebPrivacy::Client::cachedListData(v8, 0xAu, buf);
  if (!*buf)
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_11;
  }

  v22 = Platform::SharedMemory::view(*buf);
  v23 = v9;
  if (!v9)
  {
LABEL_11:
    v13 = WPOSLogAPI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__cold_2();
    }

    (*(a1[2] + 2))();
    goto LABEL_22;
  }

  WebPrivacy::createContentExtensionSource(&v22, v21);
  if (![v21[0] length])
  {
    v14 = WPOSLogAPI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _ZZZ69__WPResources_prepareResourceMonitorRulesForStore_completionHandler__ENK4__14clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__cold_1();
      if (v3)
      {
        goto LABEL_16;
      }
    }

    else if (v3)
    {
LABEL_16:
      v15 = WPOSLogAPI();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_273D20000, v15, OS_LOG_TYPE_INFO, "Falling back to previously compiled rules", v20, 2u);
      }

      (*(a1[2] + 2))();
      goto LABEL_21;
    }

    (*(a1[2] + 2))();
    goto LABEL_21;
  }

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [v10 initWithData:v21[0] encoding:4];
  v12 = *a1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___ZZZ69__WPResources_prepareResourceMonitorRulesForStore_completionHandler__ENK4__14clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke;
  v16[3] = &unk_279EAF468;
  v17 = v3;
  v19 = a1[2];
  v18 = a1[1];
  [v12 compileContentRuleListForIdentifier:@"com.apple.WebPrivacy.ResourceMonitorURLsRuleList" encodedContentRuleList:v11 completionHandler:v16];

LABEL_21:
LABEL_22:
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

LABEL_24:
}

void sub_273D3B088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  _Unwind_Resume(a1);
}

void _ZZN8Platform8BlockPtrIFvP17WKContentRuleListP7NSErrorEE12fromCallableIZZ69__WPResources_prepareResourceMonitorRulesForStore_completionHandler__ENK4__14clIN10WebPrivacy12MessageErrorENS_9ArrayViewIhEEEEDaT_OT0_EUlS2_S4_E_EES6_SF_ENUlPKvE_8__invokeESK_(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void ___ZZZ69__WPResources_prepareResourceMonitorRulesForStore_completionHandler__ENK4__14clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WPOSLogAPI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      ___ZZZ69__WPResources_prepareResourceMonitorRulesForStore_completionHandler__ENK4__14clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke_cold_1(v8, v14, v7);
    }

    if (a1[4])
    {
      v9 = WPOSLogAPI();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_273D20000, v9, OS_LOG_TYPE_INFO, "Falling back to previously compiled rules", v13, 2u);
      }

      v10 = a1[4];
      (*(a1[6] + 16))();
    }

    else
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    (*(a1[6] + 16))();
    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v11 setObject:a1[5] forKey:@"com.apple.WebPrivacy.ResourceMonitorURLsVersion"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_273D3B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Block_object_dispose((v33 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273D3BCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_273D3C1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_273D3C70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN10WebPrivacy6Client16ensureConnectionEv_block_invoke_cold_1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136380675;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_273D20000, log, OS_LOG_TYPE_ERROR, "Handled error from server: %{private}s", buf, 0xCu);
}

void WebPrivacy::Client::getList(void *a1, unsigned __int8 a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = Backend::nsStringFromEnum(a2);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_273D20000, v3, OS_LOG_TYPE_ERROR, "Timed out waiting for sync reply for %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void _ZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT__cold_1(_BYTE *a1, unsigned __int8 *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v3 = *a2;
    if (v3 > 3)
    {
      v4 = "Invalid";
    }

    else
    {
      v4 = off_279EAF1F0[v3];
    }
  }

  else
  {
    v4 = "DecodingFailure";
  }

  v6 = 136315138;
  v7 = v4;
  _os_log_error_impl(&dword_273D20000, log, OS_LOG_TYPE_ERROR, "Updated list with error: %s", &v6, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_273D20000, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize raw JSON content: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_273D20000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize content extension source: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void Platform::SharedMemory::map(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  OUTLINED_FUNCTION_0(1.5047e-36, a1, a2, a3);
  _os_log_error_impl(&dword_273D20000, v5, OS_LOG_TYPE_ERROR, "Failed to fstat file descriptor %i: %{errno}i", v4, 0xEu);
}

{
  v3 = *a1;
  OUTLINED_FUNCTION_0(1.5047e-36, a1, a2, a3);
  _os_log_error_impl(&dword_273D20000, v5, OS_LOG_TYPE_ERROR, "Failed to mmap file descriptor %i: %{errno}i", v4, 0xEu);
}

void ___ZN10WebPrivacyL18sharedLinkDetectorEv_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ___ZZZ68__WPResources_loadTrackerBlockerRuleListForStore_completionHandler__ENK4__13clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_273D20000, a3, a3, "Failed to compile tracker block list rules with error: %{public}@", a2);
}

void ___ZZZ69__WPResources_prepareResourceMonitorRulesForStore_completionHandler__ENK4__14clIN10WebPrivacy12MessageErrorEN8Platform9ArrayViewIhEEEEDaT_OT0_ENUlP17WKContentRuleListP7NSErrorE_clESB_SD__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_273D20000, a3, a3, "Failed to compile resource monitor url rules with error: %{public}@", a2);
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