void sub_25FB1D89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (!v15)
    {
LABEL_3:
      if (!v14)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      goto LABEL_8;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (!v14)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN12TXTextLayout45applySimpleValuesDictionaryToAttributedStringEP25NSMutableAttributedString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [a2 objectForKey:@"SimpeValueDict::tracking"];
  if (v8)
  {
    [v10 setObject:v8 forKey:@"tracking"];
    [*(a1 + 32) removeAttribute:@"MotionTextSimpleValuesAttribute" range:{a3, a4}];
  }

  v9 = [a2 objectForKey:@"SimpeValueDict::kerning"];
  if (v9)
  {
    [v10 setObject:v9 forKey:@"kerning"];
    [*(a1 + 32) removeAttribute:@"SimpeValueDict::kerning" range:{a3, a4}];
  }

  if ([v10 count])
  {
    [*(a1 + 32) addAttribute:@"MotionTextSimpleValuesAttribute" value:v10 range:{a3, a4}];
  }
}

void TXTextLayout::createParagraphStyle(TXTextLayout *this, int a2, int a3, NSAttributedString *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = (a3 - a2);
  operator new();
}

void TXTextLayout::applyAllCaps(TXTextLayout *this, __CFString *a2)
{
  v2 = this + 19368;
  v3 = *(this + 2422);
  if (v3 != this + 19368)
  {
    v6 = MEMORY[0x277CC08F0];
    do
    {
      v7 = *(v3 + 2);
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (OZChannel::getValueAsInt((v8 + 5504), v6, 0.0))
      {
        v11 = *(v7 + 24);
        v10 = *(v7 + 28);
        v12 = [(__CFString *)a2 length];
        v13 = (v10 + v11);
        v14 = fmax(v11, 0.0);
        if (v13 >= v12)
        {
          v13 = v12;
        }

        if (v14 <= v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        if (v14 <= v13)
        {
          v16 = v13 - v14;
        }

        else
        {
          v16 = 0;
        }

        -[__CFString replaceCharactersInRange:withString:](a2, "replaceCharactersInRange:withString:", v15, v16, [-[__CFString substringWithRange:](a2 substringWithRange:{v15, v16), "uppercaseStringWithLocale:", *(this + 8051)}]);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

void sub_25FB1E020(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::applySequenceCharacterOffsets(TXTextLayout *this, __CFString *a2, const CMTime *a3)
{
  if (TXTextLayout::hasSequenceCharacterOffset(this))
  {
    v6 = [(__CFString *)a2 composedCharacterCount];
    std::vector<int>::vector[abi:ne200100](&v18, v6);
    for (i = *(this + 151); i != (this + 1200); i = *(i + 8))
    {
      v8 = (*(**(i + 16) + 616))(*(i + 16), 1031, 0, 0) ^ 1;
      if (!v6)
      {
        LOBYTE(v8) = 1;
      }

      if ((v8 & 1) == 0)
      {
        v9 = 0;
        do
        {
          v16 = *a3;
          ValueAsInt = OZChannel::getValueAsInt((this + 50624), &v16, v9);
          v18[v9++] += ValueAsInt;
        }

        while (v6 != v9);
      }
    }

    v16.value = 0;
    *&v16.timescale = &v16;
    v16.epoch = 0x2020000000;
    v17 = 0;
    v11 = [(__CFString *)a2 length];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3321888768;
    v12[2] = ___ZN12TXTextLayout29applySequenceCharacterOffsetsEP10__CFStringRK6CMTime_block_invoke;
    v12[3] = &unk_2871F4540;
    v12[6] = this;
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v18, v19, (v19 - v18) >> 2);
    v12[4] = a2;
    v12[5] = &v16;
    [(__CFString *)a2 enumerateSubstringsInRange:0 options:v11 usingBlock:2, v12];
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v16, 8);
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }
}

void sub_25FB1E224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a19, 8);
  v21 = *(v19 - 88);
  if (v21)
  {
    *(v19 - 80) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void ___ZN12TXTextLayout29applySequenceCharacterOffsetsEP10__CFStringRK6CMTime_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  if ([a2 UTF32CharacterCount] == 1)
  {
    v11 = 0;
    if ([a2 getBytes:&v11 maxLength:4 usedLength:0 encoding:2348810496 options:0 range:0 remainingRange:{objc_msgSend(a2, "length"), 0}])
    {
      if (OZChannel::getValueAsInt((v8 + 50776), MEMORY[0x277CC08F0], 0.0))
      {
        v9 = v11 + *(*(a1 + 56) + 4 * *(*(*(a1 + 40) + 8) + 24));
      }

      else
      {
        v9 = TXOffsetUnicodeChar(v11, *(*(a1 + 56) + 4 * *(*(*(a1 + 40) + 8) + 24)));
      }

      v11 = v9;
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v11 length:4 encoding:2617245952];
      [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v10}];
    }
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

uint64_t __copy_helper_block_e8_56c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
}

void __destroy_helper_block_e8_56c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void TXTextLayout::applyFontToAllTextStyles(TXTextLayout *this, NSString *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v10, v4);
  v5 = this + 19344;
  v6 = *(this + 2419);
  if (v6 != this + 19344)
  {
    do
    {
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      PCURL::PCURL(&v9, a2);
      (*(*v8 + 168))(v8, &v9, 1);
      PCString::~PCString(&v9);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v6 = *(v6 + 1);
    }

    while (v6 != v5);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v10);
}

void sub_25FB1E4B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::applyFontScaleToAllTextStyles(TXTextLayout *this, float a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v11, v4);
  v5 = this + 19344;
  v6 = *(this + 2419);
  if (v6 != this + 19344)
  {
    v7 = a2;
    v8 = MEMORY[0x277CC08F0];
    do
    {
      v9 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OZChannel3D::setValue((v9 + 2864), v8, v7, v7, v7);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v6 = *(v6 + 1);
    }

    while (v6 != v5);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v11);
}

void sub_25FB1E5A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::applyFontSizeToAllTextStyles(TXTextLayout *this, float a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v11, v4);
  v5 = this + 19344;
  v6 = *(this + 2419);
  if (v6 != this + 19344)
  {
    v7 = a2;
    v8 = MEMORY[0x277CC08F0];
    do
    {
      v9 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*(v9 + 1976) + 712))(v9 + 1976, v8, 0, v7);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v6 = *(v6 + 1);
    }

    while (v6 != v5);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v11);
}

void sub_25FB1E6AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::applyAllCapsSizeToAttributedString(TXTextLayout *a1, __CFAttributedString *a2, __CFString *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = [objc_msgSend(MEMORY[0x277CCA900] "lowercaseLetterCharacterSet")];
  v13 = a4[1];
  v17[0] = *a4;
  v17[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TXTextLayout::applyAllCapsSizeToCharacterSet(a1, a2, a3, v12, v17, a5, a6);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
  v15 = a4[1];
  v16[0] = *a4;
  v16[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TXTextLayout::applyAllCapsSizeToCharacterSet(a1, a2, a3, v14, v16, a5, a6);
  if (v15)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_25FB1E7E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::applyAllCapsSizeToCharacterSet(TXTextLayout *a1, __CFAttributedString *a2, __CFString *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  result = [(__CFString *)a3 rangeOfCharacterFromSet:a4 options:0 range:*a6, a6[1]];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = result;
    v16 = v14;
    do
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(a3, v15);
      if (RangeOfComposedCharactersAtIndex.length == v16)
      {
        location = v15;
      }

      else
      {
        location = RangeOfComposedCharactersAtIndex.location;
      }

      v19 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
      v20 = *(a5 + 8);
      v23[0] = *a5;
      v23[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
      }

      v22.location = location;
      v22.length = RangeOfComposedCharactersAtIndex.length;
      TXTextLayout::applyFontToAttributedString(a1, a2, v23, &v22, a7, v19 == a4);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      result = [(__CFString *)a3 rangeOfCharacterFromSet:a4 options:0 range:location + RangeOfComposedCharactersAtIndex.length, [(__CFString *)a3 length]- (location + RangeOfComposedCharactersAtIndex.length)];
      v15 = result;
      v16 = v21;
    }

    while (result != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_25FB1E928(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::applyFontToAttributedString(TXTextLayout *a1, __CFAttributedString *a2, TXTextStyle **a3, CFRange *a4, uint64_t a5, int a6)
{
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *&v25.a = *MEMORY[0x277CBF2C0];
  *&v25.c = v12;
  *&v25.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (TXTextLayout::scaleAffectsLayout(a1))
  {
    sx.a = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v13 = *a3;
    *&v22.a = *a5;
    v22.c = *(a5 + 16);
    OZChannelScale3D::getValue((v13 + 2864), &v22, &sx.a, &v24, &v23, 0.0);
    XMarginScale = TXTextLayout::getXMarginScale(a1);
    sx.a = XMarginScale * sx.a;
    YMarginScale = TXTextLayout::getYMarginScale(a1);
    v24 = YMarginScale * v24;
    v22 = v25;
    CGAffineTransformScale(&v25, &v22, sx.a, v24);
  }

  if (a6)
  {
    v16 = *a3;
    *&v22.a = *a5;
    v22.c = *(a5 + 16);
    OZChannel::getValueAsDouble((v16 + 5656), &v22, 0.0);
    sx = v25;
    CGAffineTransformScale(&v22, &sx, v17, v17);
    v25 = v22;
  }

  TXTextStyle::getFontName(*a3, &sx);
  v18 = *a3;
  *&v22.a = *a5;
  v22.c = *(a5 + 16);
  Size = TXTextStyle::getSize(v18, &v22, 0.0);
  ValueAsInt = OZChannel::getValueAsInt((*a3 + 5352), MEMORY[0x277CC08F0], 0.0);
  {
    PCCachedFunctionImpl<PCCFRef<__CTFont const*>,PCString const&,double,BOOL,CGAffineTransform const&>::PCCachedFunctionImpl<PCCFRef<__CTFont const*> (*)(PCString const&,double,BOOL,CGAffineTransform const&)>(&getFontCache(void)::sFontCache, createFont);
  }

  PCCachedFunctionImpl<PCCFRef<__CTFont const*>,PCString const&,double,BOOL,CGAffineTransform const&>::operator()(&getFontCache(void)::sFontCache, &sx, ValueAsInt != 0, &v25, &v22, Size);
  CFAttributedStringSetAttribute(a2, *a4, *MEMORY[0x277CC4838], *&v22.a);
  PCCFRef<__CTLine const*>::~PCCFRef(&v22);
  PCString::~PCString(&sx);
}

void sub_25FB1EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

BOOL operator<(double *a1, double *a2)
{
  result = 1;
  if (*a1 >= *a2)
  {
    if (*a1 > *a2)
    {
      return 0;
    }

    v3 = a1[1];
    v4 = a2[1];
    if (v3 >= v4)
    {
      if (v3 > v4)
      {
        return 0;
      }

      v5 = a1[2];
      v6 = a2[2];
      if (v5 >= v6)
      {
        if (v5 > v6)
        {
          return 0;
        }

        v7 = a1[3];
        v8 = a2[3];
        if (v7 >= v8)
        {
          if (v7 > v8)
          {
            return 0;
          }

          v9 = a1[4];
          v10 = a2[4];
          if (v9 >= v10 && (v9 > v10 || a1[5] >= a2[5]))
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void PCCachedFunctionImpl<PCCFRef<__CTFont const*>,PCString const&,double,BOOL,CGAffineTransform const&>::operator()(uint64_t a1@<X0>, const PCString *a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, const void **a5@<X8>, double a6@<D0>)
{
  v12 = (a1 + 32);
  v24 = a1 + 32;
  PCSpinLock::lock((a1 + 32));
  PCString::PCString(&v18, a2);
  v19 = a6;
  v20 = a3;
  v13 = a4[1];
  v21 = *a4;
  v22 = v13;
  v23 = a4[2];
  v17 = 0;
  PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::findValue(*(a1 + 40), &v18, &v17, a5);
  if ((v17 & 1) == 0)
  {
    std::function<PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::operator()(a1, a2, a3, a4, a6);
    v14 = *a5;
    v15 = v16;
    if (*a5 && v14 != v16)
    {
      CFRelease(v14);
      v15 = v16;
    }

    *a5 = v15;
    v16 = 0;
    PCCFRef<__CTLine const*>::~PCCFRef(&v16);
    PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::addValue(*(a1 + 40), &v18, a5, 0);
  }

  PCString::~PCString(&v18);
  PCSpinLock::unlock(v12);
}

void sub_25FB1ED84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11)
{
  PCCFRef<__CTLine const*>::~PCCFRef(&a9);
  PCCFRef<__CTLine const*>::~PCCFRef(v11);
  PCString::~PCString(&a11);
  PCLockSentry<PCSpinLock>::~PCLockSentry((v12 - 72));
  _Unwind_Resume(a1);
}

void TXTextLayout::setStringFromAttributedString(TXParagraphStyle ***this, NSAttributedString *a2, NSDictionary *a3)
{
  v5 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v30, v5);
  __src = 0;
  v28 = 0;
  v29 = 0;
  v6 = this[2378];
  for (i = this[2379]; v6 != i; ++v6)
  {
    v8 = *(TXParagraphStyle::getHeadingChannel(*v6) + 24);
    v9 = v28;
    if (v28 >= v29)
    {
      v11 = __src;
      v12 = v28 - __src;
      v13 = (v28 - __src) >> 2;
      v14 = v13 + 1;
      if ((v13 + 1) >> 62)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v15 = v29 - __src;
      if ((v29 - __src) >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v16);
      }

      *(4 * v13) = v8;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = __src;
      __src = 0;
      v28 = v10;
      v29 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v28 = v8;
      v10 = (v9 + 4);
    }

    v28 = v10;
  }

  v18 = ((*this)[36])(&v25, this, 0);
  if (!v25)
  {
    Instance = TXTextStyleManager::getInstance(v18);
    v21 = *(Instance + 8);
    v20 = *(Instance + 16);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v26;
    v25 = v21;
    v26 = v20;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  for (j = this[151]; j != (this + 150); j = j[1])
  {
    if (v25)
    {
      v24 = v25 + 16;
    }

    else
    {
      v24 = 0;
    }

    (*(*j[2] + 152))(j[2], v24);
  }

  TXTextLayout::resetState(this);
  [(NSAttributedString *)a2 string];
  operator new();
}

void sub_25FB1F494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, PCString a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  OZLockingGroup::WriteSentry::~WriteSentry((v20 - 88));
  _Unwind_Resume(a1);
}

void TXTextLayout::stripUnsupportedXMLChars(PCString *this@<X0>, PCString *a2@<X8>)
{
  v4 = PCString::ns_str(this);
  v5 = PCReplaceUnsupportedXMLChars(&v4->isa, &stru_2872E16E0.isa);
  a2->var0 = 0;

  PCString::set(a2, v5);
}

double tailIntentFromAttributedStringAtRange(NSAttributedString *a1, _NSRange a2)
{
  v6 = a2;
  valueBuffer = 0.0;
  v3 = *MEMORY[0x277CC49F8];
  if (![(NSAttributedString *)a1 attribute:*MEMORY[0x277CC49F8] atIndex:0 effectiveRange:&v6])
  {
    return 0.0;
  }

  CTParagraphStyleGetValueForSpecifier([(NSAttributedString *)a1 attribute:v3 atIndex:0 effectiveRange:&v6], kCTParagraphStyleSpecifierTailIndent, 8uLL, &valueBuffer);
  return valueBuffer;
}

void TXTextLayout::applyKerningAndTrackingFromAttributedString(TXTextLayout *this, NSAttributedString *a2)
{
  TXTextLayout::resetKernings(this);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [(NSAttributedString *)a2 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = ___ZN12TXTextLayout43applyKerningAndTrackingFromAttributedStringEP18NSAttributedString_block_invoke;
  v8[3] = &unk_279AA8128;
  v8[5] = &v9;
  v8[6] = this;
  v8[4] = a2;
  [(NSAttributedString *)a2 enumerateAttribute:@"MotionTextSimpleValuesAttribute" inRange:0 options:v4 usingBlock:0, v8];
  if ((v10[3] & 1) == 0)
  {
    v5 = [(NSAttributedString *)a2 length];
    v6 = *MEMORY[0x277CC49E0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = *"";
    v7[2] = ___ZN12TXTextLayout43applyKerningAndTrackingFromAttributedStringEP18NSAttributedString_block_invoke_2;
    v7[3] = &unk_279AA8150;
    v7[4] = a2;
    v7[5] = this;
    [(NSAttributedString *)a2 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:0, v7];
  }

  _Block_object_dispose(&v9, 8);
}

void ___ZN12TXTextLayout43applyKerningAndTrackingFromAttributedStringEP18NSAttributedString_block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = *(a1 + 48);
    v9 = [a2 objectForKey:@"kerning"];
    if (v9)
    {
      if (a3 < a3 + a4)
      {
        v10 = v9;
        v11 = a3;
        do
        {
          RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex([*(a1 + 32) string], v11);
          [v10 floatValue];
          location = RangeOfComposedCharactersAtIndex.location;
          v19.value = &location;
          *(std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v8 + 19224, &location) + 5) = v13;
          v11 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
        }

        while (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length < a3 + a4);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v14 = [a2 objectForKey:@"tracking"];
    if (v14)
    {
      v15 = v14;
      TXTextLayout::getStyleAtCharOffset(v8, a3, &location);
      v16 = MEMORY[0x277CC08F0];
      v19 = **&MEMORY[0x277CC08F0];
      Size = TXTextStyle::getSize(location, &v19, 0.0);
      [v15 floatValue];
      v19 = *v16;
      OZChannel::setValue((location + 49416), &v19, v18 / Size, 0);
      *(*(*(a1 + 40) + 8) + 24) = 1;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }
  }
}

void sub_25FB1F99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

double *___ZN12TXTextLayout43applyKerningAndTrackingFromAttributedStringEP18NSAttributedString_block_invoke_2(double *result, void *a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a3;
    v5 = a3 + a4;
    if (a3 < a3 + a4)
    {
      v7 = result;
      v8 = *(result + 5);
      do
      {
        RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex([*(v7 + 4) string], v4);
        [a2 floatValue];
        v11 = v10;
        v12[0] = RangeOfComposedCharactersAtIndex.location;
        v12[2] = v12;
        result = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v8 + 19224, v12);
        result[5] = v11;
        v4 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
      }

      while (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length < v5);
    }
  }

  return result;
}

void TXTextLayout::readContentsOfFile(uint64_t a1)
{
  v2 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v3, v2);
  *(a1 + 18992) = 1;
  *(a1 + 19032) = *(a1 + 19024);
  std::__list_imp<unsigned int>::clear((a1 + 19368));
  operator new();
}

void sub_25FB20080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, PCString a18)
{
  v20 = *(v18 - 176);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  PCString::~PCString((v18 - 144));
  OZLockingGroup::WriteSentry::~WriteSentry((v18 - 136));
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::isPunctuationSeparatedByLineBreaks(uint64_t **this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v35, v2);
  v3 = this[2378];
  v31 = this[2379];
  while (v3 != v31)
  {
    v4 = *v3;
    v5 = *(*v3 + 952);
    if (!v5)
    {
      goto LABEL_31;
    }

    String = CFAttributedStringGetString(v5);
    v7 = *(v4 + 876);
    if (!v7)
    {
      break;
    }

    v8 = String;
    v9 = 0;
    v10 = 0;
    __src = 0;
    v33 = 0;
    v11 = 4 * v7;
    v34 = 0;
    do
    {
      v12 = *(v4 + 912);
      if (v12)
      {
        LODWORD(v12) = *(v12 + v9);
      }

      v13 = v12 - *(v4 + 856);
      if (v10 >= v34)
      {
        v14 = __src;
        v15 = v10 - __src;
        v16 = (v10 - __src) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v18 = v34 - __src;
        if ((v34 - __src) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v19);
        }

        v20 = (v10 - __src) >> 2;
        v21 = (4 * v16);
        v22 = (4 * v16 - 4 * v20);
        *v21 = v13;
        v10 = (v21 + 1);
        memcpy(v22, v14, v15);
        v23 = __src;
        __src = v22;
        v33 = v10;
        v34 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v10 = v13;
        v10 += 4;
      }

      v33 = v10;
      v9 += 4;
    }

    while (v11 != v9);
    v24 = __src;
    if (__src == v10)
    {
      v28 = 1;
      if (__src)
      {
        goto LABEL_29;
      }
    }

    else
    {
      while (1)
      {
        v25 = *v24;
        Length = CFStringGetLength(v8);
        CharacterAtIndex = CFStringGetCharacterAtIndex(v8, v25);
        if (Length > v25 && TXCharacterSetIsPunctuation(CharacterAtIndex))
        {
          break;
        }

        v24 += 4;
        if (v24 == v10)
        {
          v28 = 1;
          goto LABEL_28;
        }
      }

      v28 = 0;
LABEL_28:
      v24 = __src;
      if (__src)
      {
LABEL_29:
        v33 = v24;
        operator delete(v24);
      }
    }

    if (!v28)
    {
      v29 = 1;
      goto LABEL_33;
    }

LABEL_31:
    ++v3;
  }

  v29 = 0;
LABEL_33:
  OZLockingGroup::WriteSentry::~WriteSentry(v35);
  return v29;
}

uint64_t TXTextLayout::wordsFitInParagraphWidth(uint64_t **this, double a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v16, v4);
  v5 = this[2378];
  v6 = this[2379];
  if (v5 != v6)
  {
    v7 = *MEMORY[0x277CBECE8];
    do
    {
      v8 = *v5;
      v9 = *(*v5 + 952);
      if (v9)
      {
        v10 = CTTypesetterCreateWithAttributedString(v9);
        String = CFAttributedStringGetString(*(v8 + 952));
        v17.length = CFStringGetLength(String);
        v17.location = 0;
        v12 = CFStringTokenizerCreate(v7, String, v17, 4uLL, 0);
        while (CFStringTokenizerAdvanceToNextToken(v12))
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v12);
          if (CTTypesetterSuggestLineBreak(v10, CurrentTokenRange.location, a2) < CurrentTokenRange.length)
          {
            CFRelease(v12);
            CFRelease(v10);
            v14 = 0;
            goto LABEL_11;
          }
        }

        CFRelease(v12);
        CFRelease(v10);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v14 = 1;
LABEL_11:
  OZLockingGroup::WriteSentry::~WriteSentry(v16);
  return v14;
}

void sub_25FB20500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::linesFitInParagraphWidth(TXTextLayout *this, double a2)
{
  for (i = *(this + 2378); ; i += 8)
  {
    if (i == *(this + 2379))
    {
      return 1;
    }

    v3 = *(*i + 876);
    if (v3)
    {
      break;
    }

LABEL_7:
    ;
  }

  v4 = (*(*i + 888) + 48);
  while (*v4 <= a2)
  {
    v4 += 8;
    if (!--v3)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t TXTextLayout::isEmoji(TXTextObject ***this, int a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v11, v4);
  for (i = this[8027]; i; i = *i)
  {
    v6 = *(i + 7);
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        v10 = a2;
        v12 = &v10;
        isEmoji = *(std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::less<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((this + 8026), &v10) + 32);
        goto LABEL_13;
      }

      ++i;
    }
  }

  for (j = this[7353]; ; j += 2)
  {
    if (j == this[7354])
    {
      isEmoji = 0;
      goto LABEL_13;
    }

    if (*(*j + 184) == a2)
    {
      break;
    }
  }

  isEmoji = TXTextObject::isEmoji(*j);
LABEL_13:
  OZLockingGroup::WriteSentry::~WriteSentry(v11);
  return isEmoji & 1;
}

void sub_25FB20660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::isAllWhitespace(PCString *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v6, v2);
  TXChannelString::getString(this + 2381, &v5);
  v3 = [(__CFString *)PCString::ns_str(&v5) isAllWhitespace];
  PCString::~PCString(&v5);
  OZLockingGroup::WriteSentry::~WriteSentry(v6);
  return v3;
}

void sub_25FB206E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::computeWordIndices(PCString *this)
{
  v2 = this + 7622;
  v3 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v31, v3);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, &v2[1].var0->isa);
  v2->var0 = &v2[1];
  v2[2].var0 = 0;
  v2[1].var0 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x6012000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = &unk_260C3B1FE;
  memset(v28, 0, sizeof(v28));
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  var0 = v2[423].var0;
  TXChannelString::getString(this + 2381, &v32);
  v4 = PCString::ns_str(&v32);
  PCString::~PCString(&v32);
  v5 = [(__CFString *)v4 length];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = *"";
  v15[2] = ___ZN12TXTextLayout18computeWordIndicesEv_block_invoke;
  v15[3] = &unk_279AA8178;
  v15[4] = v16;
  v15[5] = v29;
  v15[6] = &v22;
  v15[7] = &v18;
  v15[8] = this;
  [(__CFString *)v4 enumerateSubstringsInRange:0 options:v5 usingBlock:3, v15];
  v6 = v23;
  v7 = v23[11];
  if (v7)
  {
    do
    {
      v8 = v7 - 1;
      v9 = (*(v6[7] + (((v6[10] + v8) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v6 + 80) + v8));
      v10 = *v9;
      v11 = v9[1];
      v6[11] = v8;
      std::deque<PVLoadedEffectItem>::__maybe_remove_back_spare[abi:ne200100](v6 + 6, 1);
      if (v10 < v11 + v10)
      {
        do
        {
          v12 = *(v19 + 6);
          v14 = v10;
          v32.var0 = &v14;
          *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v2, &v14) + 8) = v12;
          LODWORD(v10) = v10 + 1;
          --v11;
        }

        while (v11);
      }

      v13 = *(v19 + 6) + 1;
      *(v19 + 6) = v13;
      v6 = v23;
      v7 = v23[11];
    }

    while (v7);
  }

  else
  {
    v13 = *(v19 + 6);
  }

  HIDWORD(v2[354].var0) = v13;
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  std::deque<PCHash128>::~deque[abi:ne200100](v28);
  _Block_object_dispose(v29, 8);
  OZLockingGroup::WriteSentry::~WriteSentry(v31);
}

void sub_25FB209A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  PCString::~PCString((v29 - 72));
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  std::deque<PCHash128>::~deque[abi:ne200100]((v28 + 48));
  _Block_object_dispose((v29 - 120), 8);
  OZLockingGroup::WriteSentry::~WriteSentry((v29 - 88));
  _Unwind_Resume(a1);
}

double __Block_byref_object_copy__13(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

void ___ZN12TXTextLayout18computeWordIndicesEv_block_invoke(void *a1, int a2, int a3, int a4, unint64_t a5, unint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v21.n128_u64[0] = a5;
  v21.n128_u64[1] = a6;
  v9 = a1[8];
  DirectionalRun = TXTextLayout::getDirectionalRun(v9, a5);
  if (DirectionalRun)
  {
    v11 = DirectionalRun[16] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11 != *(*(a1[4] + 8) + 24))
  {
    *(*(a1[5] + 8) + 24) = v11 != *(v9 + 16090);
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    std::deque<_NSRange>::push_back((*(a1[6] + 8) + 48), &v21);
  }

  else
  {
    if (v11 != *(*(a1[4] + 8) + 24))
    {
      v12 = *(a1[6] + 8);
      v13 = v12[11];
      if (v13)
      {
        do
        {
          v14 = v13 - 1;
          v15 = (*(v12[7] + (((v12[10] + v14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v12 + 80) + v14));
          v16 = *v15;
          v17 = v15[1];
          v12[11] = v14;
          std::deque<PVLoadedEffectItem>::__maybe_remove_back_spare[abi:ne200100](v12 + 6, 1);
          if (v16 < v17 + v16)
          {
            do
            {
              v18 = *(*(a1[7] + 8) + 24);
              v20 = v16;
              v22 = &v20;
              *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v9 + 60976, &v20) + 8) = v18;
              LODWORD(v16) = v16 + 1;
              --v17;
            }

            while (v17);
          }

          ++*(*(a1[7] + 8) + 24);
          v12 = *(a1[6] + 8);
          v13 = v12[11];
        }

        while (v13);
        v6 = v21.n128_u64[1];
        v7 = v21.n128_u64[0];
      }
    }

    if (v7 < v6 + v7)
    {
      do
      {
        v19 = *(*(a1[7] + 8) + 24);
        v20 = v7;
        v22 = &v20;
        *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v9 + 60976, &v20) + 8) = v19;
        LODWORD(v7) = v7 + 1;
        --v6;
      }

      while (v6);
    }

    ++*(*(a1[7] + 8) + 24);
  }

  *(*(a1[4] + 8) + 24) = v11;
}

CFTypeRef TXTextLayout::setLocale(TXTextLayout *this, CFTypeRef cf)
{
  v4 = *(this + 8051);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 8051) = cf;

  return CFRetain(cf);
}

void TXTextLayout::setLocaleIdentifier(TXTextLayout *this, const __CFString *a2)
{
  v3 = CFLocaleCreate(0, a2);
  TXTextLayout::setLocale(this, v3);

  CFRelease(v3);
}

CFTypeRef TXTextLayout::useCurrentLocale(TXTextLayout *this)
{
  v2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = *(*this + 136);

    return v4(this, v3);
  }

  else
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];

    return TXTextLayout::setLocale(this, v6);
  }
}

void TXTextLayout::updateStyleNames(TXTextLayout *this)
{
  PCURL::PCURL(&v15, @"Object Name Number");
  PCString::PCString(&v14, "%@");
  v2 = PCString::find(&v15, &v14);
  PCString::~PCString(&v14);
  PCString::PCString(&v14, "%d");
  v3 = PCString::find(&v15, &v14);
  PCString::~PCString(&v14);
  v4 = this + 19368;
  v5 = *(this + 2422);
  if (v5 != this + 19368)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 2);
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = PCString::ns_str(&v15);
        PCURL::PCURL(&v14, @"Text Style Name");
        if (v2 <= v3)
        {
          v12 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@ %d" error:0, PCString::cf_str(&v14), v6];
        }

        else
        {
          v12 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%d %@" error:0, v6, PCString::cf_str(&v14)];
        }

        v13 = v12;
        PCString::~PCString(&v14);
        v14.var0 = 0;
        PCString::set(&v14, v13);
        (*(*(v9 + 16) + 120))(v9 + 16, &v14, 0);
      }

      else
      {
        PCURL::PCURL(&v14, @"Text Style Name");
        (*(*(v9 + 16) + 120))(v9 + 16, &v14, 0);
      }

      PCString::~PCString(&v14);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v6 = (v6 + 1);
      v5 = *(v5 + 1);
    }

    while (v5 != v4);
  }

  PCString::~PCString(&v15);
}

void sub_25FB21044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

uint64_t libraryPath(void)
{
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:{NSHomeDirectory(), @"Library", @"Application Support", @"Motion", @"Environment Maps", 0}];
  v1 = MEMORY[0x277CCACA8];

  return [v1 pathWithComponents:v0];
}

uint64_t bundleResourcePath(void)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.ozone.framework");
  v1 = CFBundleCopyBundleURL(BundleWithIdentifier);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  v3 = [-[__CFString stringByAppendingPathComponent:](v2 stringByAppendingPathComponent:{@"Resources", "stringByAppendingPathComponent:", @"EnvironmentMap"}];
  CFRelease(v2);
  CFRelease(v1);
  return v3;
}

uint64_t TXTextLayout::collectInternal3DTextAssets(TXTextLayout *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = this + 57344;
  v3 = objc_opt_new();
  v4 = *(v1 + 185);
  v40 = *(v1 + 186);
  if (v4 != v40)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *(*v4 + 264);
      if (!v8)
      {
        break;
      }

      v10 = *(v8 + 8);
      v9 = *(v8 + 16);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v5)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          v43 = v9;
          goto LABEL_21;
        }

        v45 = v9;
        if (v10 != v5)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!v6)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v45 = 0;
        if (!v5)
        {
          v43 = 0;
LABEL_21:
          v11 = v10;
LABEL_22:
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v10 = v11;
          v45 = v43;
          if ((v7 & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_25;
        }

        if (v10 != v5)
        {
          v45 = 0;
          if (!v6)
          {
LABEL_12:
            v11 = v10;
            v43 = v45;
LABEL_25:
            v41 = v11;
            v12 = v10[60];
            v13 = v10[61];
            while (v12 != v13)
            {
              if (*v12)
              {
                if (v14)
                {
                  v15 = v14[178];
                  if (v15)
                  {
                    v17 = *v15;
                    v16 = v15[1];
                    while (v16 != v17)
                    {
                      v18 = *(v16 - 8);
                      v16 -= 8;
                      (*(*v18 + 792))(&v48);
                      v19 = v48;
                      v20 = v49;
                      while (v19 != v20)
                      {
                        if (*v19)
                        {
                          [v3 addObject:?];
                        }

                        ++v19;
                      }

                      v47 = &v48;
                      std::vector<PCNSRef<NSURL *>>::__destroy_vector::operator()[abi:ne200100](&v47);
                    }
                  }
                }
              }

              ++v12;
            }

            v11 = v41;
            v21 = (*(*v10 + 272))(v10);
            if (OZChannelBase::isEnabled((v21 + 3560), 0, 1))
            {
              if (OZ3DExtrusionProperties::environmentType(v21) == 2)
              {
                v2 = OZLayeredMaterial::envMapFilenameAndNormalization(v21, v22);
                if (*v2)
                {
                  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
                  v38 = v4;
                  v48 = [bundleResourcePath() stringByAppendingPathComponent:{objc_msgSend(v23, "lowercaseString")}];
                  v24 = libraryPath();
                  v25 = 0;
                  v49 = v24;
                  do
                  {
                    v26 = 0;
                    v39 = v25;
                    v27 = *(&v48 + v25);
                    do
                    {
                      v28 = 0;
                      v42 = v26;
                      v29 = *(off_279AA81F8 + v26);
                      do
                      {
                        v30 = 0;
                        v46 = v28;
                        v31 = *(off_279AA81D8 + v28);
                        do
                        {
                          v32 = 0;
                          v33 = off_279AA81C8[v30];
                          do
                          {
                            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_%@_q%@_%@.%@", v27, v23, v31, v29, off_279AA8198[v32], v33];
                            if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
                            {
                              [v3 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v34)}];
                            }

                            ++v32;
                          }

                          while (v32 != 6);
                          ++v30;
                        }

                        while (v30 != 2);
                        v28 = v46 + 8;
                      }

                      while (v46 != 24);
                      v26 = v42 + 8;
                    }

                    while (v42 != 24);
                    v25 = v39 + 8;
                  }

                  while (v39 != 8);
                  v4 = v38;
                  v11 = v41;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_11:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          goto LABEL_12;
        }
      }

      v11 = v5;
      v43 = v6;
      if (v7)
      {
        goto LABEL_25;
      }

LABEL_55:
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      v7 = 0;
      v4 += 16;
      v5 = v11;
      v35 = v43;
      v6 = v43;
      if (v4 == v40)
      {
        goto LABEL_60;
      }
    }

    v43 = 0;
    v45 = 0;
    v11 = 0;
    v10 = 0;
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v35 = 0;
LABEL_60:
  v44 = v35;
  v36 = [v3 allObjects];
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  return v36;
}

void sub_25FB215FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

id newNSShadow(double a1, double a2, double a3, double a4, double a5, double a6, PCColor *a7)
{
  v14 = objc_alloc_init(MEMORY[0x277D74258]);
  v15 = __sincos_stret(a2);
  [v14 setShadowOffset:{v15.__cosval * (a1 * a5), v15.__sinval * (a1 * a6)}];
  [v14 setShadowBlurRadius:(a3 * a5 + a4 * a6) * 0.5];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = 0;
  v19 = 0;
  PCColor::getRGBA(a7, &v19 + 1, &v19, &v18 + 1, &v18, DeviceRGB);
  CGColorSpaceRelease(DeviceRGB);
  [v14 setShadowColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithRed:green:blue:alpha:", *(&v19 + 1), *&v19, *(&v18 + 1), *&v18)}];
  return v14;
}

void createFont(PCString *a1@<X0>, CGFloat a2@<D0>, const CGAffineTransform *a3@<X2>, int a4@<W1>, CTFontRef *a5@<X8>)
{
  values[1] = *MEMORY[0x277D85DE8];
  if ([(__CFString *)PCString::ns_str(a1) hasPrefix:@"."])
  {
    v10 = PCString::cf_str(a1);
    *a5 = OZCreateFontWithName(v10, a2, a3);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = *MEMORY[0x277CC4908];
    v13 = PCString::cf_str(a1);
    CFDictionaryAddValue(Mutable, v12, v13);
    TXFontManager::getInstance(v14);
    OZFontManagerBase::getDefaultSystemFont(values);
    v15 = PCString::cf_str(values);
    v16 = CTFontDescriptorCreateWithNameAndSize(v15, a2);
    PCString::~PCString(values);
    values[0] = v16;
    v17 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 1, MEMORY[0x277CBF128]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4840], v17);
    CFRelease(v17);
    CFRelease(v16);
    if (a4)
    {
      v18 = a2;
      valuePtr = v18;
      v19 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC48E8], v19);
      CFRelease(v19);
    }

    v20 = CTFontDescriptorCreateWithAttributes(Mutable);
    CFRelease(Mutable);
    *a5 = CTFontCreateWithFontDescriptor(v20, a2, a3);
    CFRelease(v20);
  }
}

uint64_t PCCachedFunction<PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::~PCCachedFunction(uint64_t a1)
{
  PCCache<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::~PCCache((a1 + 40));
  PCSpinLock::~PCSpinLock((a1 + 32));

  return std::__function::__value_func<PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::~__value_func[abi:ne200100](a1);
}

void PCCachedFunctionImpl<PCCFRef<__CTFont const*>,PCString const&,double,BOOL,CGAffineTransform const&>::PCCachedFunctionImpl<PCCFRef<__CTFont const*> (*)(PCString const&,double,BOOL,CGAffineTransform const&)>(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (a2)
  {
    *a1 = &unk_2871F4580;
    *(a1 + 8) = a2;
    *(a1 + 24) = a1;
  }

  *(a1 + 32) = 0;
  operator new();
}

void sub_25FB21A64(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock(v2);
  std::__function::__value_func<PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<PCCFRef<__CTFont const*> (*)(PCString const&,double,BOOL,CGAffineTransform const&),std::allocator<PCCFRef<__CTFont const*> (*)(PCString const&,double,BOOL,CGAffineTransform const&)>,PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2871F4580;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<PCCFRef<__CTFont const*> (*)(PCString const&,double,BOOL,CGAffineTransform const&),std::allocator<PCCFRef<__CTFont const*> (*)(PCString const&,double,BOOL,CGAffineTransform const&)>,PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *PCCache<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::~PCCache(uint64_t *a1)
{
  v2 = *a1 + 32;
  std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::destroy(*a1 + 24, *v2);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  *(v2 + 24) = *(v2 + 16);
  *(v2 + 48) = 0;
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::~PCCacheImpl(v3);
    MEMORY[0x2666E9F00](v4, 0x1020C4058232694);
  }

  return a1;
}

void std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::destroy(uint64_t a1, PCString *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::destroy(a1, a2[1].var0);
    PCCFRef<__CTLine const*>::~PCCFRef(&a2[13].var0);
    PCString::~PCString(a2 + 4);

    operator delete(a2);
  }
}

uint64_t PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB21D7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<PCCFRef<__CTFont const*> ()(PCString const&,double,BOOL,CGAffineTransform const&)>::operator()(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v8 = a5;
  v7 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, a2, &v8, &v7, a4);
}

void *PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::findValue@<X0>(uint64_t a1@<X0>, PCString *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  result = std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::find<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>((a1 + 24), a2);
  v11 = result;
  if ((a1 + 32) == result)
  {
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    v8 = result;
    v9 = result[13];
    *a4 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = *(a1 + 72) + 1;
    *(a1 + 72) = v10;
    v8[15] = v10;
    result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v11);
    *a3 = 1;
  }

  return result;
}

PCString *std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::find<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(PCString *a1, PCString *a2)
{
  v2 = a1 + 1;
  var0 = a1[1].var0;
  if (!var0)
  {
    return v2;
  }

  v5 = a1 + 1;
  do
  {
    v6 = std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(&v9, var0 + 4, a2);
    v7 = v6;
    if (!v6)
    {
      v5 = var0;
    }

    var0 = var0[v7].var0;
  }

  while (var0);
  if (v5 == v2 || std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(&v10, a2, v5 + 4))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(int a1, PCString *this, PCString *a3)
{
  if ((PCString::compare(this, a3) & 0x80000000) != 0)
  {
    return 1;
  }

  if ((PCString::compare(a3, this) & 0x80000000) != 0)
  {
    return 0;
  }

  return std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(&v6, this, a3);
}

BOOL std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  if (v6 < v7)
  {
    return 1;
  }

  return v7 >= v6 && operator<((a2 + 24), (a3 + 24));
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 128);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 120) <= *(v17 + 120))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 128) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 128) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 120);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 120);
    v13 = *(*(v2 + 8 * v5) + 120);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 120))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 128) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 128) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 128);
    goto LABEL_24;
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

PCString *PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::addValue(PCString *result, PCString *a2, const void **a3, __CFString *a4)
{
  v7 = result;
  if (result[11].var0 >= a4 || result[13].var0)
  {
    v8 = std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::find<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(result + 3, a2);
    v25 = v8;
    if ((v7 + 32) == v8)
    {
      v16 = (*(v7 + 72) + 1);
      *(v7 + 72) = v16;
      v24[0] = *a3;
      if (v24[0])
      {
        CFRetain(v24[0]);
      }

      v24[1] = a4;
      v24[2] = v16;
      v24[3] = 0;
      std::pair<std::tuple<PCString const,double,BOOL,CGAffineTransform const> const,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>::pair[abi:ne200100]<true,0>(v20, a2, v24);
      v22 = std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::__emplace_unique_key_args<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::pair<std::tuple<PCString const,double,BOOL,CGAffineTransform const> const,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>((v7 + 24), v20);
      v23 = v17;
      PCCFRef<__CTLine const*>::~PCCFRef(&v21);
      PCString::~PCString(v20);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::add(v7 + 48, &v22);
      *(v7 + 80) += a4;
      if (!*(v7 + 104))
      {
        while (*(v7 + 80) > *(v7 + 88) || *(v7 + 40) > *(v7 + 96))
        {
          v19 = *(v7 + 48);
          if (v19 == *(v7 + 56))
          {
            break;
          }

          v20[0] = v19->var0;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::remove((v7 + 48), v20);
          var0 = v20[0].var0;
          *(v7 + 80) -= v20[0].var0[3].data;
          std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::erase((v7 + 24), var0);
        }
      }

      return PCCFRef<__CTLine const*>::~PCCFRef(v24);
    }

    else
    {
      v9 = v8;
      PCCFRef<__CTLine const*>::operator=(&v8[13].var0, a3);
      v10 = *(v7 + 72) + 1;
      *(v7 + 72) = v10;
      v9[15].var0 = v10;
      result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::bubble((v7 + 48), &v25);
      v11 = v25;
      v12 = (a4 - v25[14].var0);
      if (v12)
      {
        v13 = &v12[*(v7 + 80)];
        *(v7 + 80) = v13;
        v11[14].var0 = a4;
        if (!*(v7 + 104))
        {
          while (v13 > *(v7 + 88) || *(v7 + 40) > *(v7 + 96))
          {
            v15 = *(v7 + 48);
            if (v15 == *(v7 + 56))
            {
              break;
            }

            v20[0] = v15->var0;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::remove((v7 + 48), v20);
            v14 = v20[0].var0;
            *(v7 + 80) -= v20[0].var0[3].data;
            result = std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::erase((v7 + 24), v14);
            v13 = *(v7 + 80);
          }
        }
      }
    }
  }

  return result;
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 128) = v6;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    if ((v6 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 - v4;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v6 + 1))
    {
      v11 = v6 + 1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v12);
    }

    *(8 * v6) = v7;
    v9 = 8 * v6 + 8;
    v13 = *(a1 + 8) - *a1;
    v14 = (8 * v6 - v13);
    memcpy(v14, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v7;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(*a2 + 128);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 120) <= *(v18 + 120))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 128) = v16;
      v18 = v17[v20];
      *(v18 + 128) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

__CFString *std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::__emplace_unique_key_args<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::pair<std::tuple<PCString const,double,BOOL,CGAffineTransform const> const,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>(PCString *a1, PCString *this)
{
  result = std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::__find_equal<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(a1, &v3, this)->var0;
  if (!result)
  {
    std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::__construct_node<std::pair<std::tuple<PCString const,double,BOOL,CGAffineTransform const> const,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>();
  }

  return result;
}

PCString *std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::__find_equal<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(PCString *a1, PCString **a2, PCString *this)
{
  v5 = a1 + 1;
  var0 = a1[1].var0;
  if (var0)
  {
    do
    {
      while (1)
      {
        v7 = var0;
        if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(&v9, this, var0 + 4))
        {
          break;
        }

        var0 = v7->var0;
        v5 = v7;
        if (!v7->var0)
        {
          goto LABEL_9;
        }
      }

      if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::tuple<PCString const,double,BOOL,CGAffineTransform const>>(&v10, v7 + 4, this))
      {
        break;
      }

      v5 = v7 + 1;
      var0 = v7[1].var0;
    }

    while (var0);
  }

  else
  {
    v7 = a1 + 1;
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_25FB22674(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::tuple<PCString const,double,BOOL,CGAffineTransform const> const,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  PCString::PCString(a1, a2);
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 40) = v6;
  *(v4 + 24) = v5;
  v7 = *(a2 + 72);
  *(a1 + 72) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *>>>::operator()[abi:ne200100](uint64_t a1, PCString *__p)
{
  if (*(a1 + 8) == 1)
  {
    PCCFRef<__CTLine const*>::~PCCFRef(&__p[13].var0);
    PCString::~PCString(__p + 4);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::pair<std::tuple<PCString const,double,BOOL,CGAffineTransform const> const,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>::pair[abi:ne200100]<true,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PCString::PCString(a1, a2);
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 40) = v8;
  *(v6 + 24) = v7;
  v9 = *a3;
  *(a1 + 72) = *a3;
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = *(a3 + 8);
  *(a1 + 96) = *(a3 + 24);
  *(a1 + 80) = v10;
  return a1;
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 128);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 128) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

uint64_t *std::__tree<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__map_value_compare<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>,true>,std::allocator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, a2);
  PCCFRef<__CTLine const*>::~PCCFRef((a2 + 104));
  PCString::~PCString((a2 + 32));
  operator delete(a2);
  return v3;
}

__n128 std::deque<_NSRange>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<_NSRange>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void *std::deque<_NSRange>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(a1, &v10);
}

void sub_25FB22B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<_NSRange *>::emplace_front<_NSRange *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::vector<PCNSRef<NSURL *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<PCNSRef<NSURL *>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<PCNSRef<NSURL *>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, id *a2)
{
  for (i = *(a1 + 8); i != a2; ProCore_Impl::PCNSRefImpl::release(i))
  {
    --i;
  }

  *(a1 + 8) = a2;
}

void sub_25FB22DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

uint64_t TXOutlineFilter::TXOutlineFilter(uint64_t a1, void *a2, const OZRenderParams *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 1560) = &unk_2872DEA38;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 1;
  LiCachedImageFilter::LiCachedImageFilter(a1, off_2871F4748);
  *a1 = &unk_2871F4638;
  *(a1 + 1560) = &unk_2871F4728;
  v10 = a2[1];
  *(a1 + 56) = *a2;
  *(a1 + 64) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  OZRenderParams::OZRenderParams((a1 + 72), a3);
  *(a1 + 1504) = *a5;
  v11 = *(a5 + 16);
  *(a1 + 1520) = v11;
  if (v11)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v11);
  }

  v12 = *(a5 + 24);
  *(a1 + 1536) = *(a5 + 32);
  *(a1 + 1528) = v12;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = a4;
  return a1;
}

void sub_25FB22F38(_Unwind_Exception *a1)
{
  OZRenderParams::~OZRenderParams((v1 + 72));
  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  LiCachedImageFilter::~LiCachedImageFilter(v1, off_2871F4748);
  *(v1 + 1560) = v2;
  *(v1 + 1576) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1568));
  _Unwind_Resume(a1);
}

void LiCachedImageFilter::LiCachedImageFilter(LiCachedImageFilter *this, uint64_t *a2)
{
  LiImageFilter::LiImageFilter(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 24)) = a2[7];
  PCWorkingColorVector::PCWorkingColorVector((this + 36));
}

void LiCachedImageFilter::~LiCachedImageFilter(PCSharedCount *this, const PCString *a2)
{
  var0 = a2[1].var0;
  this->var0 = var0;
  *(this + var0[-1].info) = a2[6].var0;
  PCSharedCount::~PCSharedCount(this + 3);

  OZChannelBase::setRangeName(this, a2 + 2);
}

CGColorSpace **TXOutlineFilter::getHelium@<X0>(LiImageSource **this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  LiAgent::getHelium(a2, this[2], a3);
  return LiAgent::setActualColorDescription(a2, RequestedColorDescription);
}

void sub_25FB23184(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(exception_object);
}

double TXOutlineFilter::fixPixelTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TextRenderQuality = OZRenderParams::getTextRenderQuality((a1 + 72));
  if (TextRenderQuality)
  {
    if (TextRenderQuality == 6)
    {
      v16 = 0x3FF0000000000000;
      v17 = 0x3FF0000000000000;
      v9 = *(a3 + 80);
      v15[4] = *(a3 + 64);
      v15[5] = v9;
      v10 = *(a3 + 112);
      v15[6] = *(a3 + 96);
      v15[7] = v10;
      v11 = *(a3 + 16);
      v15[0] = *a3;
      v15[1] = v11;
      v12 = *(a3 + 48);
      v15[2] = *(a3 + 32);
      v15[3] = v12;
      v14 = xmmword_260343AA0;
      TXTextObject::getScaleAndHashForPixelTransform(*(a1 + 56));
      *(a3 + 120) = 0x3FF0000000000000;
      *(a3 + 80) = 0x3FF0000000000000;
      *(a3 + 40) = 0x3FF0000000000000;
      *a3 = 0x3FF0000000000000;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      v8 = *&v16;
      v7 = *&v17;
      return PCMatrix44Tmpl<double>::rightScale(a3, v7, v8, 1.0);
    }

    if (TextRenderQuality != 2)
    {
      return result;
    }
  }

  *&v15[0] = 0;
  *&v14 = 0;
  v13[0] = 0.0;
  TXTextObject::getScale(*(a1 + 56), (a1 + 72), v15, &v14, v13, 1, 1, 1, 0, 0, 1);
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  v7 = *v15;
  v8 = *&v14;
  return PCMatrix44Tmpl<double>::rightScale(a3, v7, v8, 1.0);
}

void LiCachedImageFilter::getCacheHash(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v16[520] = *MEMORY[0x277D85DE8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1 + 9;
  v8 = v1[11];
  v9 = v1[12];
  if (v6 | v5 | v8 | v9)
  {
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v11 = 0uLL;
    v12 = 0;
    getScaleTranslate(v2, &v13, &v11);
    PCHashWriteStream::PCHashWriteStream(v16);
    PCHashWriteStream::writeValue(v16, v13);
    PCHashWriteStream::writeValue(v16, v14);
    PCHashWriteStream::close(v16);
    Hash = PCHashWriteStream::getHash(v16);
    PCHash128::operator+=(v7, Hash);
    *v4 = *v7;
    PCHashWriteStream::~PCHashWriteStream(v16);
  }

  else
  {
    *v4 = v5;
    *(v4 + 4) = v6;
    *(v4 + 8) = v8;
    *(v4 + 12) = v9;
  }
}

uint64_t LiImageFilter::getBoundary(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 24);

  return v2();
}

uint64_t LiImageFilter::filteredEdges(LiImageFilter *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 32);

  return v2();
}

PCSharedCount *LiImageSource::getSourceAtTime@<X0>(LiImageSource *this@<X0>, PCSharedCount *a2@<X8>)
{
  a2->var0 = this;
  if (this)
  {
    v4 = (this + *(*this - 24));
  }

  else
  {
    v4 = 0;
  }

  return PCSharedCount::PCSharedCount(a2 + 1, v4);
}

void TXOutlineFilter::~TXOutlineFilter(TXOutlineFilter *this)
{
  *this = &unk_2871F4638;
  *(this + 195) = &unk_2871F4728;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 190);
  OZRenderParams::~OZRenderParams((this + 72));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiCachedImageFilter::~LiCachedImageFilter(this, off_2871F4748);
  *(this + 195) = &unk_2872DEA38;
  *(this + 1576) = 0;
  PCWeakCount::~PCWeakCount(this + 196);
}

{
  *this = &unk_2871F4638;
  *(this + 195) = &unk_2871F4728;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 190);
  OZRenderParams::~OZRenderParams((this + 72));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiCachedImageFilter::~LiCachedImageFilter(this, off_2871F4748);
  *(this + 195) = &unk_2872DEA38;
  *(this + 1576) = 0;
  PCWeakCount::~PCWeakCount(this + 196);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toTXOutlineFilter::~TXOutlineFilter(TXOutlineFilter *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F4638;
  *(v1 + 195) = &unk_2871F4728;
  PCCFRef<CGColorSpace *>::~PCCFRef(v1 + 190);
  OZRenderParams::~OZRenderParams((v1 + 72));
  v2 = *(v1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiCachedImageFilter::~LiCachedImageFilter(v1, off_2871F4748);
  *(v1 + 195) = &unk_2872DEA38;
  v1[1576] = 0;

  PCWeakCount::~PCWeakCount(v1 + 196);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F4638;
  *(v1 + 195) = &unk_2871F4728;
  PCCFRef<CGColorSpace *>::~PCCFRef(v1 + 190);
  OZRenderParams::~OZRenderParams((v1 + 72));
  v2 = *(v1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiCachedImageFilter::~LiCachedImageFilter(v1, off_2871F4748);
  *(v1 + 195) = &unk_2872DEA38;
  v1[1576] = 0;
  PCWeakCount::~PCWeakCount(v1 + 196);

  JUMPOUT(0x2666E9F00);
}

PCShared_base **PCPtr<LiImageSource>::operator=<LiImageSource>(PCShared_base **a1, PCShared_base *a2)
{
  v8 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(&v9, a2);
  v3 = v8;
  *a1 = v8;
  if (v3)
  {
    PCSharedCount::PCSharedCount(&v6, &v9);
    v4 = &v6;
    PCSharedCount::operator=(a1 + 1, &v6);
  }

  else
  {
    PCSharedCount::PCSharedCount(&v7);
    v4 = &v7;
    PCSharedCount::operator=(a1 + 1, &v7);
  }

  PCSharedCount::~PCSharedCount(v4);
  PCSharedCount::~PCSharedCount(&v9);
  return a1;
}

void sub_25FB23978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCSharedCount::~PCSharedCount(va);
  PCSharedCount::~PCSharedCount(v2 + 1);
  _Unwind_Resume(a1);
}

void TXTextObject::TXTextObject(TXTextObject *this, TXTextLayout *a2, int a3)
{
  *(this + 96) = 0;
  *(this + 776) = 1;
  *this = &unk_2871F4B68;
  *(this + 1) = &unk_2871F4BD8;
  *(this + 95) = &unk_2871F4C08;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  PCSharedCount::PCSharedCount(this + 9);
  *(this + 60) = 0;
  PCSharedCount::PCSharedCount(this + 16);
  *(this + 138) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 33) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  PCSharedMutex::PCSharedMutex((this + 272));
  *(this + 47) = 0;
  *(this + 384) = 1;
  *(this + 97) = a3;
  *(this + 392) = 0u;
  *(this + 51) = 0xBFF0000000000000;
  *(this + 52) = 0xBFF0000000000000;
  *(this + 424) = 0u;
  *(this + 55) = 0xBFF0000000000000;
  *(this + 56) = 0xBFF0000000000000;
  *(this + 456) = 0u;
  *(this + 59) = 0xBFF0000000000000;
  *(this + 60) = 0xBFF0000000000000;
  *(this + 488) = 0u;
  *(this + 63) = 0xBFF0000000000000;
  *(this + 64) = 0xBFF0000000000000;
  *(this + 67) = 0;
  *(this + 520) = 0u;
  *(this + 68) = a2;
  *(this + 70) = 0x4000000000000000;
  *(this + 284) = 0;
  *(this + 87) = 0x3FF0000000000000;
  *(this + 82) = 0x3FF0000000000000;
  *(this + 77) = 0x3FF0000000000000;
  *(this + 72) = 0x3FF0000000000000;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  v6 = MEMORY[0x277CC0898];
  *(this + 44) = *MEMORY[0x277CC0898];
  *(this + 90) = *(v6 + 16);
  *(this + 744) = 1;
  *(this + 94) = 0;
  *(this + 91) = 0;
  *(this + 4) = a3;
}

void sub_25FB23B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCString::~PCString((v2 + 128));
  PCString::~PCString((v2 + 72));
  v4 = *(v2 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](va);
  *(v2 + 760) = &unk_2872DEA38;
  *(v2 + 776) = 0;
  PCWeakCount::~PCWeakCount((v2 + 768));
  _Unwind_Resume(a1);
}

void TXTextObject::~TXTextObject(TXTextObject *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = a2[3];
  *(this + *(v3 - 24)) = a2[4];
  v4 = *(this + 67);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  PCSharedMutex::~PCSharedMutex((this + 272));
  PCString::~PCString(this + 16);
  PCString::~PCString(this + 9);
  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = (this + 24);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void TXTextObject::~TXTextObject(TXTextObject *this)
{
  *(v1 + 760) = &unk_2872DEA38;
  *(v1 + 776) = 0;
  PCWeakCount::~PCWeakCount((v1 + 768));
}

{
  *(v1 + 760) = &unk_2872DEA38;
  *(v1 + 776) = 0;
  PCWeakCount::~PCWeakCount((v1 + 768));

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTextObject::~TXTextObject(TXTextObject *this)
{
  *(this + 94) = &unk_2872DEA38;
  *(this + 768) = 0;

  PCWeakCount::~PCWeakCount(this + 95);
}

{
  TXTextObject::~TXTextObject((this - 8));
}

void virtual thunk toTXTextObject::~TXTextObject(TXTextObject *this)
{
  *(v1 + 760) = &unk_2872DEA38;
  *(v1 + 776) = 0;
  v2 = (v1 + 768);

  PCWeakCount::~PCWeakCount(v2);
}

{
  TXTextObject::~TXTextObject((this + *(*this - 24)));
}

double TXTextObject::getBoundingTypographicVolume(double *a1, uint64_t a2)
{
  result = a1[53];
  v3 = a1[54];
  v4 = result + a1[55];
  v5 = v3 + a1[56];
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

float64_t TXTextObject::getBoundingImageVolume(TXTextObject *a1, uint64_t a2, uint64_t a3)
{
  OZRenderState::OZRenderState(&v13);
  *&v13.var0.var0 = *a3;
  v13.var0.var3 = *(a3 + 16);
  TXTextObject::getImageBounds(a1, &v13, &v10);
  v7 = v10;
  result = v10.f64[0];
  v8 = v10.f64[0] + v11;
  v9 = v10.f64[1] + v12;
  *a2 = v10.f64[0];
  *(a2 + 8) = v8;
  *(a2 + 16) = v7.f64[1];
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

float64x2_t TXTextObject::getImageBounds@<Q0>(TXTextObject *this@<X0>, const OZRenderState *a2@<X1>, float64x2_t *a3@<X8>)
{
  v6 = *(this + 33);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = *(this + 408);
  *a3 = *(this + 392);
  a3[1] = v9;
  if (!TXTextLayout::scaleAffectsLayout(*(this + 68)))
  {
LABEL_9:
    if (!v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  v28 = 0.0;
  v29 = 0.0;
  v27 = 0.0;
  var0 = a2->var0;
  OZChannelScale3D::getValue((v8 + 2864), &var0, &v29, &v28, &v27, 0.0);
  v11.f64[0] = v29;
  if (fabs(v29) < 0.0000001 || fabs(v28) < 0.0000001)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    a3[1] = result;
    goto LABEL_9;
  }

  v11.f64[1] = v28;
  __asm { FMOV            V1.2D, #1.0 }

  v25 = _Q1;
  v17 = vdivq_f64(_Q1, v11);
  v23 = vmulq_f64(v17, *a3);
  v24 = vmulq_f64(v17, a3[1]);
  *a3 = v23;
  a3[1] = v24;
  XMarginScale = TXTextLayout::getXMarginScale(*(this + 68));
  YMarginScale = TXTextLayout::getYMarginScale(*(this + 68));
  v19.f64[0] = XMarginScale;
  v19.f64[1] = YMarginScale;
  v20 = vdivq_f64(v25, v19);
  v21 = vmulq_f64(v23, v20);
  result = vmulq_f64(v24, v20);
  *a3 = v21;
  a3[1] = result;
  if (!v7)
  {
    return result;
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  return result;
}

void sub_25FB240B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextObject::getBoundingImageAndTypographicVolume(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OZRenderState::OZRenderState(&v18);
  *&v18.var0.var0 = *a4;
  v18.var0.var3 = *(a4 + 16);
  TXTextObject::getImageBounds(a1, &v18, &v15);
  v8 = v15.f64[1];
  v9 = v15.f64[0] + v16;
  v10 = v15.f64[1] + v17;
  *a2 = v15.f64[0];
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = a1[53];
  v12 = a1[54];
  v13 = result + a1[55];
  v14 = v12 + a1[56];
  *a3 = result;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

__n128 TXTextObject::setGlyphID(TXTextObject *this, int a2)
{
  *(this + 138) = 1;
  if (*(this + 68) != a2)
  {
    *(this + 68) = a2;
    *(this + 384) = 1;
    v2 = MEMORY[0x277CC0898];
    result = *MEMORY[0x277CC0898];
    *(this + 44) = *MEMORY[0x277CC0898];
    *(this + 90) = *(v2 + 16);
  }

  return result;
}

__n128 TXTextObject::dirty(TXTextObject *this)
{
  *(this + 384) = 1;
  v1 = MEMORY[0x277CC0898];
  result = *MEMORY[0x277CC0898];
  *(this + 44) = *MEMORY[0x277CC0898];
  *(this + 90) = *(v1 + 16);
  return result;
}

__n128 TXTextObject::setSubstituteFontID(TXTextObject *this, int a2)
{
  if (*(this + 131) != a2)
  {
    *(this + 131) = a2;
    *(this + 384) = 1;
    v2 = MEMORY[0x277CC0898];
    result = *MEMORY[0x277CC0898];
    *(this + 44) = *MEMORY[0x277CC0898];
    *(this + 90) = *(v2 + 16);
  }

  return result;
}

TXTextLayout *TXTextObject::getPosition@<X0>(TXTextObject *this@<X0>, CMTime *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = *(this + 68);
  if (result)
  {
    v5 = *(this + 97);
    return TXTextLayout::getPosition(result, a2, &v5, a3);
  }

  return result;
}

double TXTextObject::setPosition(TXTextObject *this, CMTime *a2, double result, double a4, double a5)
{
  v6 = *(this + 68);
  if (v6)
  {
    v9 = *(this + 97);
    v7.n128_f64[0] = result;
    v7.n128_f64[1] = a4;
    v8 = a5;
    return TXTextLayout::setPosition(v6, a2, &v9, &v7);
  }

  return result;
}

uint64_t TXTextObject::getPathRotation(TXTextObject *this, CMTime *a2, double *a3, double *a4, double *a5)
{
  v10 = *(this + 68);
  result = OZChannel::getValueAsInt((v10 + 20464), MEMORY[0x277CC08F0], 0.0);
  if (result == 2)
  {
    v14 = *(this + 97);
    result = TXTextLayout::getPathRotation(v10, a2, &v14, v15);
    v12 = *v15;
    v13 = *&v15[1];
    if (*(this + 160))
    {
      v12 = 0.0;
      v13 = 0.0;
    }

    *a3 = v12;
    *a4 = v13;
    *a5 = *&v15[2];
  }

  else
  {
    *a3 = 0.0;
    *a4 = 0.0;
    *a5 = 0.0;
  }

  return result;
}

double TXTextObject::setPathRotation(TXTextObject *this, CMTime *a2, double result, double a4, double a5)
{
  v6 = *(this + 68);
  if (v6)
  {
    v9 = *(this + 97);
    v7.n128_f64[0] = result;
    v7.n128_f64[1] = a4;
    v8 = a5;
    return TXTextLayout::setPathRotation(v6, a2, &v9, &v7);
  }

  return result;
}

void TXTextObject::getTransformMatrix(uint64_t a1, uint64_t a2, __int128 *a3, int a4, int a5, uint64_t a6, int a7, double a8, double a9)
{
  v18 = *(a3 + 12);
  if (v18 && (time1 = *a3, time2 = *(a1 + 704), !CMTimeCompare(&time1, &time2)))
  {
    v51 = a1 + 576;
    if (a1 + 576 != a2)
    {
      for (i = 0; i != 4; ++i)
      {
        for (j = 0; j != 32; j += 8)
        {
          *(a2 + j) = *(v51 + j);
        }

        a2 += 32;
        v51 += 32;
      }
    }
  }

  else
  {
    v19 = *(a1 + 264);
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 544);
    v109 = *a3;
    time1 = *a3;
    OZChannel::getValueAsDouble((v20 + 2712), &time1, 0.0);
    v24 = v23;
    if ((*(a3 + 235) & 1) == 0)
    {
      time1 = v109;
      HIDWORD(v25) = HIDWORD(v109.value);
      LODWORD(v25) = *(a1 + 736);
      OZChannel::getValueAsDouble((v22 + 28288), &time1, v25);
      v24 = v24 + v26;
    }

    if (a5)
    {
      time1 = v109;
      OZChannel::getValueAsDouble((v22 + 60360), &time1, 0.0);
      a8 = v27;
      time1 = v109;
      OZChannel::getValueAsDouble((v22 + 59888), &time1, 0.0);
      a9 = v28;
    }

    v107 = 0.0;
    v108 = 0.0;
    v106 = 0.0;
    TXTextObject::getScale(a1, a3, &v108, &v107, &v106, 0, a4, 0, 0, 0, a7);
    v104 = 0.0;
    v105 = 0.0;
    v103 = 0.0;
    if (OZChannel::getValueAsInt((v22 + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((v22 + 20464), MEMORY[0x277CC08F0], 0.0) != 4)
    {
      time1 = v109;
      TXTextObject::getRotation(a1, &time1, &v105, &v104, &v103, 1, a7);
    }

    v101 = 0.0;
    v102 = 0.0;
    v100 = 0.0;
    TXTextObject::getPathRotation(a1, &v109, &v102, &v101, &v100);
    v57 = v24;
    v99 = 0.0;
    v98 = 0.0;
    v97 = 0.0;
    time1 = *a3;
    TXTextObject::getPivot(a1, &v99, &v98, &v97, &time1, a7);
    v29 = v99;
    v30 = v98;
    v31 = v97;
    v94 = v99;
    v95 = v98;
    v96 = v97;
    v93 = 0x3FF0000000000000;
    v90 = 0x3FF0000000000000;
    v87 = 0x3FF0000000000000;
    time2.value = 0x3FF0000000000000;
    *&time2.timescale = 0u;
    v86 = 0u;
    v88 = 0u;
    v89 = 0u;
    v91 = 0u;
    v92 = 0u;
    v33 = v101;
    v32 = v102;
    v34 = v100;
    PCMatrix44Tmpl<double>::rightRotate(&time2.value, 4, v102, v101, v100);
    PCMatrix44Tmpl<double>::transform<double>(&time2.value, &v94, &v94);
    time1 = *a3;
    v84 = 0.0;
    v82 = 0.0;
    v83 = 0.0;
    v35 = *(a1 + 544);
    if (v35)
    {
      LODWORD(v74.value) = *(a1 + 388);
      TXTextLayout::getPosition(v35, &time1, &v74, &v82);
      v36 = v82;
      v37 = v83;
      v38 = v84;
    }

    else
    {
      v38 = 0.0;
      v37 = 0.0;
      v36 = 0.0;
    }

    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    PCMatrix44Tmpl<double>::rightTranslate(a2, a8 + v36, a9 + v37 + *(a1 + 152), v38);
    if (OZChannel::getValueAsInt((v22 + 20464), MEMORY[0x277CC08F0], 0.0) != 2)
    {
      PCMatrix44Tmpl<double>::rightTranslate(a2, v29, v30, v31);
    }

    v39 = *(a1 + 160);
    if (OZChannel::getValueAsInt((v22 + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((v22 + 20464), MEMORY[0x277CC08F0], 0.0) != 4 && (*(a3 + 235) & 1) == 0)
    {
      memset(&time1, 0, sizeof(time1));
      v74 = v109;
      HIDWORD(v40) = HIDWORD(v109.value);
      LODWORD(v40) = *(a1 + 736);
      TXSequenceChannels::getPosition(v22 + 25032, &v74, &time1, v40);
      v41 = *&time1.epoch;
      if (v39)
      {
        v41 = 0.0;
      }

      PCMatrix44Tmpl<double>::rightTranslate(a2, *&time1.value, *&time1.timescale, v41);
    }

    if (TXTextLayout::alignToPath(v22) && OZChannel::getValueAsInt((v22 + 20464), MEMORY[0x277CC08F0], 0.0) == 2)
    {
      PCMatrix44Tmpl<double>::rightTranslate(a2, v94, v95, v96);
    }

    PCMatrix44Tmpl<double>::rightRotate(a2, 4, v32, v33, v34);
    PCMatrix44Tmpl<double>::rightRotate(a2, 4, v105, v104, v103);
    PCMatrix44Tmpl<double>::rightShear(a2, v57 * 3.14159265 / 180.0, 0.0);
    if ((*(a3 + 235) & 1) == 0)
    {
      v74.value = 0;
      *&v59[0] = 0;
      v58[0] = 0.0;
      time1 = v109;
      HIDWORD(v42) = HIDWORD(v109.value);
      LODWORD(v42) = *(a1 + 736);
      OZChannelScale3D::getValue((v22 + 26232), &time1, &v74.value, v59, v58, v42);
      PCMatrix44Tmpl<double>::rightScale(a2, *&v74.value, *v59, v58[0]);
    }

    PCMatrix44Tmpl<double>::rightTranslate(a2, -v29, -v30, -v31);
    PCMatrix44Tmpl<double>::rightScale(a2, v108, v107, v106);
    if (!*(a3 + 12))
    {
      if (a6)
      {
        PCMatrix44Tmpl<double>::operator*(a6, a2, &time1);
        if (&time1 != a2)
        {
          for (k = 0; k != 128; k += 32)
          {
            v49 = (a2 + k);
            v50 = *(&time1.epoch + k);
            *v49 = *(&time1.value + k);
            v49[1] = v50;
          }
        }
      }

      else
      {
        v73 = 0x3FF0000000000000;
        v70 = 0x3FF0000000000000;
        v67 = 0x3FF0000000000000;
        time1.value = 0x3FF0000000000000;
        *&time1.timescale = 0u;
        v66 = 0u;
        v68 = 0u;
        v69 = 0u;
        v71 = 0u;
        v72 = 0u;
        (*(*(v22 + 200) + 1256))(v22 + 200, &time1, a3);
        PCMatrix44Tmpl<double>::operator*(&time1, a2, &v74);
        if (&v74 != a2)
        {
          for (m = 0; m != 128; m += 32)
          {
            v55 = (a2 + m);
            v56 = *(&v74.epoch + m);
            *v55 = *(&v74.value + m);
            v55[1] = v56;
          }
        }
      }
    }

    if ((v39 & 1) == 0 && OZChannel::getValueAsInt((v22 + 20312), MEMORY[0x277CC08F0], 0.0))
    {
      OZRenderParams::OZRenderParams(&time1, a3);
      if (*(a3 + 202) == 1)
      {
        v43 = *(a3 + 160);
        if (v43)
        {
          (*(*v43 + 424))(&v74, *(a3 + 160));
          v60 = 0u;
          memset(v59, 0, sizeof(v59));
          v61 = 4;
          v62 = 0u;
          v63 = 0u;
          v64 = 0;
          PCMatrix44Tmpl<double>::getTransformation(&v74.value, v59);
          if (*&v60 < 0.0)
          {
            *&v75[8] = vnegq_f64(*&v75[8]);
            v76 = vnegq_f64(v76);
            operator new();
          }
        }
      }

      v81 = 0x3FF0000000000000;
      v78 = 0x3FF0000000000000;
      *&v75[16] = 0x3FF0000000000000;
      v74.value = 0x3FF0000000000000;
      *&v74.timescale = 0u;
      *v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v79 = 0u;
      v80 = 0u;
      (*(*(v22 + 200) + 1304))(v22 + 200, &v74, &time1);
      PCMatrix44Tmpl<double>::rightMult(a2, &v74.value);
      OZRenderParams::~OZRenderParams(&time1);
    }

    if (v18)
    {
      v44 = *a3;
      *(a1 + 720) = *(a3 + 2);
      *(a1 + 704) = v44;
      v45 = a1 + 576;
      if (a1 + 576 != a2)
      {
        for (n = 0; n != 4; ++n)
        {
          for (ii = 0; ii != 32; ii += 8)
          {
            *(v45 + ii) = *(a2 + ii);
          }

          v45 += 32;
          a2 += 32;
        }
      }
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }
}

void sub_25FB24CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x2666E9F00](v18, 0x10A1C40DA4F106CLL);
  OZRenderParams::~OZRenderParams(va);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void TXTextObject::getScale(TXTextObject *this, CMTime *a2, double *a3, double *a4, double *a5, int a6, int a7, int a8, BOOL a9, BOOL a10, BOOL a11)
{
  v18 = *(this + 33);
  if (!v18)
  {
    v20 = 0;
    goto LABEL_5;
  }

  v20 = *(v18 + 8);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_5:
    v28 = 0;
    goto LABEL_6;
  }

  v28 = v19;
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_6:
  v21 = *(this + 68);
  v40 = *a2;
  if (a11 && Li3DEngineScene::sceneManager(v21))
  {
    v22 = Li3DEngineScene::sceneManager(v21);
    OZLockingGroup::acquireReadLocks(v22);
  }

  *a3 = 1.0;
  *a4 = 1.0;
  *a5 = 1.0;
  if (a7)
  {
    v33[0] = 0.0;
    v29 = 0.0;
    v39 = 0.0;
    v32 = v40;
    OZChannelScale3D::getValue((v20 + 2864), &v32, v33, &v29, &v39, 0.0);
    *a3 = v33[0] * *a3;
    *a4 = v29 * *a4;
    *a5 = v39 * *a5;
    if ((TXTextLayout::shouldScaleToLRMargins(v21) & 1) != 0 || TXTextLayout::shouldScaleProportionallyToLeftRightMargins(v21))
    {
      *a3 = TXTextLayout::getXMarginScale(v21) * *a3;
    }

    if ((TXTextLayout::shouldScaleToTBMargins(v21) & 1) != 0 || TXTextLayout::shouldScaleProportionallyToLeftRightMargins(v21))
    {
      *a4 = TXTextLayout::getYMarginScale(v21) * *a4;
    }
  }

  if (a6)
  {
    v33[0] = 0.0;
    v29 = 0.0;
    v39 = 0.0;
    v32 = v40;
    HIDWORD(v23) = HIDWORD(v40.value);
    LODWORD(v23) = *(this + 184);
    OZChannelScale3D::getValue((v21 + 26232), &v32, v33, &v29, &v39, v23);
    *a3 = v33[0] * *a3;
    *a4 = v29 * *a4;
    *a5 = v39 * *a5;
  }

  if (a8)
  {
    v33[0] = 1.0;
    memset(&v33[1], 0, 24);
    *&v34 = 1.0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0x3FF0000000000000;
    TXTextObject::getScaleMatrix(this, v33, a2, a11);
    v24 = *&v34;
    *a3 = *a3 * fabs(v33[0]);
    *a4 = *a4 * fabs(v24);
    if (*(theApp + 81) == 1)
    {
      OZRenderParams::getPixelTransform(a2, &v32);
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0;
      getScale(&v32, &v29);
      v25 = v30;
      *a3 = *a3 * fabs(v29);
      *a4 = *a4 * fabs(v25);
    }
  }

  if (a9)
  {
    v33[0] = 0.0;
    v29 = 0.0;
    v32 = *a2;
    TXTextObject::getDropShadowScale(this, &v32, v33, &v29, 1);
    *a3 = v33[0] * *a3;
    *a4 = v29 * *a4;
  }

  if (a10)
  {
    v33[0] = 0.0;
    v29 = 0.0;
    v32 = *a2;
    TXTextObject::getGlowScale(this, &v32, v33, &v29, 1);
    *a3 = v33[0] * *a3;
    *a4 = v29 * *a4;
  }

  if (a11 && Li3DEngineScene::sceneManager(v21))
  {
    v26 = Li3DEngineScene::sceneManager(v21);
    OZLockingGroup::releaseReadLocks(v26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_25FB25140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getRotation(TXTextObject *this, CMTime *a2, double *a3, double *a4, double *a5, int a6, int a7)
{
  v14 = *(this + 33);
  if (v14)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = *(this + 68);
  if (a7 && Li3DEngineScene::sceneManager(*(this + 68)))
  {
    v18 = Li3DEngineScene::sceneManager(v17);
    OZLockingGroup::acquireReadLocks(v18);
  }

  if (*(this + 160) == 1)
  {
    if (a3)
    {
      *a3 = 0.0;
    }

    v19 = 0.0;
    if (!a4)
    {
      goto LABEL_20;
    }

LABEL_19:
    *a4 = v19;
    goto LABEL_20;
  }

  if (a3)
  {
    v30 = *a2;
    OZChannel::getValueAsDouble((v16 + 4480), &v30, 0.0);
    *a3 = v20 + *(this + 27);
    if (a6)
    {
      v30 = *a2;
      HIDWORD(v21) = HIDWORD(v30.value);
      LODWORD(v21) = *(this + 184);
      OZChannel::getValueAsDouble((v17 + 26960), &v30, v21);
      *a3 = v22 + *a3;
    }
  }

  if (a4)
  {
    v30 = *a2;
    OZChannel::getValueAsDouble((v16 + 4632), &v30, 0.0);
    *a4 = v23 + *(this + 28);
    if (a6)
    {
      v30 = *a2;
      HIDWORD(v24) = HIDWORD(v30.value);
      LODWORD(v24) = *(this + 184);
      OZChannel::getValueAsDouble((v17 + 27112), &v30, v24);
      v19 = v25 + *a4;
      goto LABEL_19;
    }
  }

LABEL_20:
  if (a5)
  {
    v30 = *a2;
    OZChannel::getValueAsDouble((v16 + 4784), &v30, 0.0);
    *a5 = v26 + *(this + 29);
    if (a6)
    {
      v30 = *a2;
      HIDWORD(v27) = HIDWORD(v30.value);
      LODWORD(v27) = *(this + 184);
      OZChannel::getValueAsDouble((v17 + 27264), &v30, v27);
      *a5 = v28 + *a5;
    }
  }

  if (a7 && Li3DEngineScene::sceneManager(v17))
  {
    v29 = Li3DEngineScene::sceneManager(v17);
    OZLockingGroup::releaseReadLocks(v29);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_25FB253AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getPivot(TXTextObject *this, double *a2, double *a3, double *a4, CMTime *a5, int a6)
{
  *a3 = 0.0;
  *a4 = 0.0;
  v85 = 0;
  v86 = 0;
  v87 = 0x3FF0000000000000;
  v88 = 0;
  v89 = 0;
  v90 = 1;
  v91[0] = 0;
  *(v91 + 7) = 0;
  v12 = TXTextObject::syncGlyph(this, a5, &v85);
  if (!v12)
  {
    *a2 = 0.0;
    goto LABEL_94;
  }

  v83 = 0.0;
  v84 = 0;
  (*(*v12 + 48))(v12, &v84, &v83, &v85);
  v13 = v83;
  *a2 = v84;
  *a3 = v13;
  v81 = 1.0;
  v82 = 1.0;
  v80 = 1.0;
  v14 = *(this + 33);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v76.var0.var0 = *&a5->value;
  v76.var0.var3 = a5->epoch;
  v74 = v16;
  OZChannelScale3D::getValue((v15 + 2864), &v76, &v82, &v81, &v80, 0.0);
  *a2 = v82 * *a2;
  v17 = (*(**(this + 68) + 296))(*(this + 68));
  ValueAsInt = OZChannel::getValueAsInt((*(this + 68) + 22288), MEMORY[0x277CC08F0], 0.0);
  v19 = OZChannel::getValueAsInt((*(this + 68) + 22544), MEMORY[0x277CC08F0], 0.0);
  v20 = *(this + 68);
  *&v76.var0.var0 = *&a5->value;
  v76.var0.var3 = a5->epoch;
  OZChannel::getValueAsDouble((v20 + 22936), &v76, 0.0);
  v22 = v21;
  OZChannel::getValueAsDouble((v20 + 23088), &v76, 0.0);
  v24 = v23;
  OZChannel::getValueAsDouble((v20 + 23536), &v76, 0.0);
  v26 = v25;
  v27 = OZChannel::getValueAsInt((*(this + 68) + 22544), MEMORY[0x277CC08F0], 0.0);
  v78 = xmmword_2603429E0;
  v79 = xmmword_2603429E0;
  v77 = xmmword_2603429E0;
  __asm { FMOV            V0.2D, #-1.0 }

  v73 = _Q0;
  if (v17)
  {
    v72 = 0u;
    if (ValueAsInt > 1)
    {
      if (ValueAsInt == 2)
      {
        v41 = v27 == 2;
        v42 = *(this + 68);
        v43 = *(this + 184);
        *v75 = *&a5->value;
        *&v75[16] = a5->epoch;
        TXTextLayout::getLineVolume(v42, v75, v43, v41, &v76);
LABEL_24:
        v77 = *&v76.var0.var0;
        v78 = *&v76.var0.var3;
        v79 = *&v76.var2;
        goto LABEL_25;
      }

      if (ValueAsInt == 3)
      {
        OZRenderState::OZRenderState(&v76);
        *&v76.var0.var0 = *&a5->value;
        v76.var0.var3 = a5->epoch;
        TXTextLayout::getTypographicBox(*(this + 68), &v77, &v76, 1);
      }
    }

    else
    {
      if (ValueAsInt)
      {
        if (ValueAsInt != 1)
        {
          goto LABEL_25;
        }

        TXTextLayout::getWordVolume(*(this + 68), *(this + 184), v27 == 2, &v76);
        goto LABEL_24;
      }

      if (v27 == 2)
      {
        v38 = *(this + 54);
        v39 = *(this + 53) + *(this + 55);
        v40 = v38 + *(this + 56);
        *&v77 = *(this + 53);
        *(&v77 + 1) = v39;
        *&v78 = v38;
        *(&v78 + 1) = v40;
        v79 = 0uLL;
      }

      else
      {
        TXTextObject::getBoundingImageVolume(this, &v77, a5);
      }
    }
  }

  else
  {
    if (ValueAsInt == 3)
    {
      OZRenderState::OZRenderState(&v76);
      *&v76.var0.var0 = *&a5->value;
      v76.var0.var3 = a5->epoch;
      TXTextLayout::getTypographicBoundsWithAlignment(*(this + 68), &v76, v75);
      v36 = *v75;
      v37 = *&v75[16];
    }

    else
    {
      if (ValueAsInt == 2)
      {
        v33 = v27 == 2;
        v34 = *(this + 68);
        v35 = *(this + 184);
        *v75 = *&a5->value;
        *&v75[16] = a5->epoch;
        TXTextLayout::getLineBounds(v34, v75, v35, v33, a6, &v76.var0.var0);
      }

      else
      {
        v72 = 0u;
        if (ValueAsInt != 1)
        {
          goto LABEL_25;
        }

        TXTextLayout::getWordBounds(*(this + 68), *(this + 184), v27 == 2, &v76);
      }

      v36 = *&v76.var0.var0;
      v37 = *&v76.var0.var3;
    }

    v72 = v36;
    v73 = v37;
  }

LABEL_25:
  v44 = *(this + 68);
  if (*(v44 + 63801) == 1)
  {
    *a2 = v22 + *a2;
    *a3 = v24 + *a3;
    *a4 = v26 + *a4;
    if (ValueAsInt)
    {
      *a2 = 0.5 * v73.f64[0] + *&v72 - *a2 - *(this + 21);
      *a3 = *(&v72 + 1) + vmuld_lane_f64(0.5, v73, 1) - *a3 - *(this + 22);
    }

    goto LABEL_92;
  }

  if (!v17)
  {
    *a4 = 0.0;
    if (ValueAsInt)
    {
      if (v19 == 4)
      {
        v49 = *&v72;
      }

      else
      {
        if (v19 != 5)
        {
          *a2 = 0.5 * v73.f64[0] + *&v72 - *(this + 21);
          if (v19 == 3)
          {
            v58 = v73.f64[1] + *(&v72 + 1) - v83;
            goto LABEL_48;
          }

          if (!v19 && ValueAsInt != 3)
          {
            *a3 = 0.0;
            goto LABEL_91;
          }

LABEL_47:
          v58 = *(&v72 + 1) + vmuld_lane_f64(0.5, v73, 1);
LABEL_48:
          v56 = v58 - *(this + 22);
          goto LABEL_90;
        }

        v49 = v73.f64[0] + *&v72;
      }

      *a2 = v49 - *(this + 21);
      goto LABEL_47;
    }

    if (v19 == 2)
    {
      v54 = *(this + 54);
      v55 = *(this + 56) * 0.5;
      *a2 = *(this + 53) + *(this + 55) * 0.5;
      v56 = v54 + v55;
LABEL_90:
      *a3 = v56;
      goto LABEL_91;
    }

    OZRenderState::OZRenderState(&v76);
    *&v76.var0.var0 = *&a5->value;
    v76.var0.var3 = a5->epoch;
    TXTextObject::getImageBounds(this, &v76, v75);
    v64 = *&v75[8];
    v59 = *v75;
    v65 = *&v75[16];
    v66 = *&v75[24] * 0.5;
    *a2 = *v75 + *&v75[16] * 0.5;
    v67 = v64 + v66;
    *a3 = v67;
    if (v19 <= 3)
    {
      if (!v19)
      {
        v68 = v67 - v67;
        goto LABEL_88;
      }

      if (v19 == 3)
      {
        v68 = v64 + *(&v65 + 1);
LABEL_88:
        *a3 = v68;
      }

LABEL_89:
      *a2 = v82 * *a2;
      v56 = v81 * *a3;
      goto LABEL_90;
    }

    if (v19 != 4)
    {
      if (v19 != 5)
      {
        goto LABEL_89;
      }

      v59 = v59 + *&v65;
    }

LABEL_83:
    *a2 = v59;
    goto LABEL_89;
  }

  if (!ValueAsInt)
  {
    if (v19 == 2)
    {
      v50 = *(this + 53);
      v51 = *(this + 54);
      v52 = v50 + *(this + 55);
      v53 = v51 + *(this + 56);
      *&v77 = v50;
      *(&v77 + 1) = v52;
      *&v78 = v51;
      *(&v78 + 1) = v53;
      v79 = 0uLL;
      *a2 = (v50 + v52) * 0.5;
      *a3 = (v51 + v53) * 0.5;
      *a4 = 0.0;
      goto LABEL_91;
    }

    TXTextObject::getBoundingImageVolume(this, &v77, a5);
    v59 = *(&v77 + 1);
    v60 = *&v77;
    v61 = *(&v78 + 1);
    v62 = (*&v79 + *(&v79 + 1)) * 0.5;
    v63 = *&v78 + *(&v78 + 1);
    *a2 = (*&v77 + *(&v77 + 1)) * 0.5;
    *a3 = v63 * 0.5;
    *a4 = v62;
    if (v19 <= 3)
    {
      if (v19)
      {
        if (v19 == 3)
        {
          *a3 = v61;
        }
      }

      else
      {
        *a3 = 0.0;
      }

      goto LABEL_89;
    }

    if (v19 == 4)
    {
      *a2 = v60;
      goto LABEL_89;
    }

    if (v19 != 5)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

  v45 = *&v77;
  v46 = *(&v77 + 1) - *&v77;
  v47 = v78;
  *a2 = *&v77 - *(this + 21) + (*(&v77 + 1) - *&v77) * 0.5;
  v48 = *&v79 + *(&v79 + 1);
  *a3 = (*&v47 + *(&v47 + 1)) * 0.5 - *a3 - *(this + 22);
  *a4 = v48 * 0.5;
  if (v19 > 3)
  {
    if (v19 == 4)
    {
      v57 = v45 - *(this + 21);
    }

    else
    {
      if (v19 != 5)
      {
        goto LABEL_64;
      }

      v57 = v46 + v45 - *(this + 21);
    }

    *a2 = v57;
LABEL_64:
    if (ValueAsInt != 3)
    {
      goto LABEL_91;
    }

    goto LABEL_65;
  }

  if (v19)
  {
    if (v19 == 3)
    {
      *a3 = *(&v47 + 1) - v83 - *(this + 22);
    }

    goto LABEL_64;
  }

  if (ValueAsInt != 3)
  {
    *a3 = 0.0;
    goto LABEL_64;
  }

  *a3 = *&v47 - *(this + 25) - *(*(*(*(v44 + 19032) - 8) + 888) + ((*(*(*(v44 + 19032) - 8) + 876) - 1) << 6) + 8);
LABEL_65:
  ParagraphStyleContainingOffset = TXTextLayout::getParagraphStyleContainingOffset(v44, *(this + 184));
  Alignment = TXParagraphStyle::getAlignment(ParagraphStyleContainingOffset);
  if (Alignment <= 3)
  {
    if (Alignment != 1)
    {
      if (Alignment != 2)
      {
        goto LABEL_91;
      }

      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (Alignment == 5)
  {
LABEL_72:
    v71 = *a2 - (*(&v77 + 1) - *&v77);
    goto LABEL_73;
  }

  if (Alignment == 4)
  {
LABEL_71:
    v71 = *a2 + (*(&v77 + 1) - *&v77) * -0.5;
LABEL_73:
    *a2 = v71;
  }

LABEL_91:
  *a2 = v22 + *a2;
  *a3 = v24 + *a3;
  *a4 = v26 + *a4;
LABEL_92:
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

LABEL_94:
  if (BYTE2(v91[0]) == 1)
  {
    if (v88)
    {
      MEMORY[0x2666E9F00](v88, 0x1000C40FF89C88ELL);
    }
  }
}

void sub_25FB25C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (*(v14 - 129) == 1)
  {
    v16 = *(v14 - 144);
    if (v16)
    {
      MEMORY[0x2666E9F00](v16, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(exception_object);
}

void PCMatrix44Tmpl<double>::rightRotate(double *a1, int a2, double a3, double a4, double a5)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          return;
        }

        PCMatrix44Tmpl<double>::rightRotate(a1, 2, a5);
        v9 = a1;
        v10 = a3;
        v11 = 0;
        goto LABEL_12;
      }

      PCMatrix44Tmpl<double>::rightRotate(a1, 1, a4);
      v15 = a1;
      v16 = a5;
      v17 = 2;
    }

    else
    {
      PCMatrix44Tmpl<double>::rightRotate(a1, 2, a5);
      v15 = a1;
      v16 = a4;
      v17 = 1;
    }

    PCMatrix44Tmpl<double>::rightRotate(v15, v17, v16);
    v18 = a1;
    v19 = a3;
    v20 = 0;
    goto LABEL_18;
  }

  switch(a2)
  {
    case 3:
      PCMatrix44Tmpl<double>::rightRotate(a1, 0, a3);
      v9 = a1;
      v10 = a5;
      v11 = 2;
LABEL_12:
      PCMatrix44Tmpl<double>::rightRotate(v9, v11, v10);
      v18 = a1;
      v19 = a4;
      v20 = 1;
      goto LABEL_18;
    case 4:
      PCMatrix44Tmpl<double>::rightRotate(a1, 1, a4);
      v12 = a1;
      v13 = a3;
      v14 = 0;
      break;
    case 5:
      PCMatrix44Tmpl<double>::rightRotate(a1, 0, a3);
      v12 = a1;
      v13 = a4;
      v14 = 1;
      break;
    default:
      return;
  }

  PCMatrix44Tmpl<double>::rightRotate(v12, v14, v13);
  v18 = a1;
  v19 = a5;
  v20 = 2;
LABEL_18:

  PCMatrix44Tmpl<double>::rightRotate(v18, v20, v19);
}

void TXSequenceChannels::getPosition(uint64_t a1, const CMTime *a2, void *a3, double a4)
{
  OZChannel::getValueAsDouble((a1 + 296), a2, a4);
  v9 = v8;
  OZChannel::getValueAsDouble((a1 + 448), a2, a4);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 896), a2, a4);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v12;
}

float64x2_t PCMatrix44Tmpl<double>::rightShear(float64x2_t *a1, float64_t a2, long double a3)
{
  v3.f64[0] = a2;
  if (a2 != 0.0)
  {
    if (a2 < 0.0)
    {
      do
      {
        v3.f64[0] = v3.f64[0] + 3.14159265;
      }

      while (v3.f64[0] < 0.0);
    }

      ;
    }

    v5 = 1.56556034;
    if (v3.f64[0] >= 1.57603231 || v3.f64[0] <= 1.56556034)
    {
      v5 = v3.f64[0];
    }

    v3.f64[0] = tan(v5);
    a3 = i;
  }

  if (a3 != 0.0)
  {
      ;
    }

      ;
    }

    v7 = 1.56556034;
    if (a3 >= 1.57603231 || a3 <= 1.56556034)
    {
      v7 = a3;
    }

    a3 = tan(v7);
    v3.f64[0] = j;
  }

  v3.f64[1] = a3;
  v9 = vmulq_f64(v3, *a1);
  *a1 = vaddq_f64(*a1, vextq_s8(v9, v9, 8uLL));
  v10 = a1[2];
  v11 = vmulq_f64(v3, v10);
  a1[2] = vaddq_f64(v10, vextq_s8(v11, v11, 8uLL));
  v12 = a1[4];
  v13 = vmulq_f64(v3, v12);
  a1[4] = vaddq_f64(v12, vextq_s8(v13, v13, 8uLL));
  v14 = a1[6];
  v15 = vmulq_f64(v3, v14);
  result = vaddq_f64(v14, vextq_s8(v15, v15, 8uLL));
  a1[6] = result;
  return result;
}

double OZRenderParams::setCamera(uint64_t a1, const PCSharedCount *a2)
{
  *(a1 + 1280) = a2->var0;
  PCSharedCount::PCSharedCount(&v4, a2 + 1);
  PCSharedCount::operator=((a1 + 1288), &v4);
  PCSharedCount::~PCSharedCount(&v4);
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

void TXTextObject::getFourCornerPointsInObjectSpaceForAttribute(uint64_t a1, CMTime *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6, int a7, int a8, double a9, double a10, double a11, double a12, unsigned __int8 a13, float64x2_t *a14)
{
  v81 = *a2;
  v79 = 0uLL;
  __asm { FMOV            V4.2D, #-1.0 }

  v80 = _Q4;
  TXTextObject::getImageBoundsOfAttribute(a1, v79.f64, a2, a7, a8, 0, a13, a14, a9, a10, a11, a12);
  v24 = *(a1 + 264);
  if (v24)
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = a7 - 1;
  v70 = v25;
  if ((a7 - 1) > 2)
  {
    v29 = 30472;
    v28 = 10896;
  }

  else
  {
    v28 = *&aHm[8 * v27];
    v29 = qword_2603489D8[v27];
  }

  v30 = *(a1 + 544) + v29;
  isEnabled = OZChannelBase::isEnabled(v30, 0, 1);
  v77 = 1.0;
  v78 = 1.0;
  if ((a7 & 0xFFFFFFFE) == 2 && a8)
  {
    v76 = v81;
    if (a7 == 2)
    {
      TXTextObject::getGlowScale(a1, &v76, &v78, &v77, a13);
    }

    else
    {
      TXTextObject::getDropShadowScale(a1, &v76, &v78, &v77, a13);
    }

    v32.f64[0] = v78;
    v32.f64[1] = v77;
    *a6 = vmulq_f64(v32, *a6);
    *a5 = vmulq_f64(v32, *a5);
    *a3 = vmulq_f64(v32, *a3);
    *a4 = vmulq_f64(v32, *a4);
  }

  v33 = v26 + v28;
  OZChannel::getValueAsDouble((v26 + v28 + 272), &v81, 0.0);
  v35 = v34;
  v75 = 0.0;
  OZChannel::getValueAsDouble((v26 + v28 + 424), &v81, 0.0);
  v37 = *&v36;
  v38 = (isEnabled & a13);
  v39 = 0.0;
  if (v38 == 1)
  {
    LODWORD(v36) = *(a1 + 736);
    v40 = v36;
    OZChannel::getValueAsDouble((v30 + 272), &v81, v36);
    v73 = v41;
    OZChannel::getValueAsDouble((v30 + 424), &v81, v40);
    v75 = v42;
    v39 = v73;
  }

  v74 = v39;
  v43 = v75 + v79.f64[1] + v37 * v77;
  a3->f64[0] = v39 + v79.f64[0] + v35 * v78;
  a3->f64[1] = v43;
  OZChannel::getValueAsDouble((v33 + 976), &v81, 0.0);
  v45 = v44;
  OZChannel::getValueAsDouble((v33 + 1128), &v81, 0.0);
  v47 = *&v46;
  if (v38)
  {
    LODWORD(v46) = *(a1 + 736);
    v48 = v46;
    OZChannel::getValueAsDouble((v30 + 976), &v81, v46);
    v74 = v49;
    OZChannel::getValueAsDouble((v30 + 1128), &v81, v48);
    v75 = v50;
  }

  v51 = v75 + v79.f64[1] + v47 * v77;
  a4->f64[0] = v74 + v79.f64[0] + v80.f64[0] + v45 * v78;
  a4->f64[1] = v51;
  OZChannel::getValueAsDouble((v33 + 1680), &v81, 0.0);
  v69 = v52;
  OZChannel::getValueAsDouble((v33 + 1832), &v81, 0.0);
  v68 = *&v53;
  if (v38)
  {
    LODWORD(v53) = *(a1 + 736);
    v54 = v53;
    OZChannel::getValueAsDouble((v30 + 1680), &v81, v53);
    v74 = v55;
    OZChannel::getValueAsDouble((v30 + 1832), &v81, v54);
    v75 = v56;
  }

  v57.f64[0] = v78;
  v58.f64[0] = v69;
  v58.f64[1] = v68;
  v57.f64[1] = v77;
  v59.f64[0] = v74;
  v59.f64[1] = v75;
  *a5 = vaddq_f64(v59, vaddq_f64(vaddq_f64(v79, v80), vmulq_f64(v58, v57)));
  OZChannel::getValueAsDouble((v33 + 2384), &v81, 0.0);
  v61 = v60;
  OZChannel::getValueAsDouble((v33 + 2536), &v81, 0.0);
  v63 = *&v62;
  if (v38)
  {
    LODWORD(v62) = *(a1 + 736);
    v64 = v62;
    OZChannel::getValueAsDouble((v30 + 2384), &v81, v62);
    v74 = v65;
    OZChannel::getValueAsDouble((v30 + 2536), &v81, v64);
    v75 = v66;
  }

  v67 = v75 + v79.f64[1] + v80.f64[1] + v63 * v77;
  a6->f64[0] = v74 + v79.f64[0] + v61 * v78;
  a6->f64[1] = v67;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }
}

void sub_25FB264D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL PCRect<double>::clipLine(double *a1, float64x2_t *a2, double *a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v15 = 1.0;
  v16 = 0.0;
  v14 = *a3 - a2->f64[0];
  result = PCRectClipTest(-v14, a2->f64[0] - v6, &v16, &v15);
  if (result)
  {
    result = PCRectClipTest(v14, v6 + v8 - a2->f64[0], &v16, &v15);
    if (result)
    {
      v10 = a2->f64[1];
      v13 = a3[1] - v10;
      result = PCRectClipTest(-v13, v10 - v5, &v16, &v15);
      if (result)
      {
        result = PCRectClipTest(v13, v5 + v7 - a2->f64[1], &v16, &v15);
        if (result)
        {
          v11.f64[0] = v14;
          if (v15 < 1.0)
          {
            v12.f64[0] = v14;
            v12.f64[1] = v13;
            *a3 = vaddq_f64(vmulq_n_f64(v12, v15), *a2);
          }

          if (v16 > 0.0)
          {
            v11.f64[1] = v13;
            *a2 = vaddq_f64(vmulq_n_f64(v11, v16), *a2);
          }

          return 1;
        }
      }
    }
  }

  return result;
}

void TXTextObject::computeRay(uint64_t a1@<X0>, uint64_t a2@<X2>, const OZRenderState *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  (*(*a2 + 80))(a2);
  OZRenderState::OZRenderState(&v51, a3);
  v51.var4 = 1;
  v49 = 0;
  __src = 0;
  v50 = 0;
  v9 = *(a1 + 544);
  if (v9)
  {
    v10 = (v9 + 200);
  }

  else
  {
    v10 = 0;
  }

  var5 = a3->var5;
  if (v9)
  {
    v12 = v10 == var5;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
    if (var5)
    {
LABEL_32:
      v21 = (*(*var5 + 1328))(var5);
      v47 = 0x3FF0000000000000;
      v44 = 0x3FF0000000000000;
      v41 = 0x3FF0000000000000;
      v38 = 0x3FF0000000000000;
      v39 = 0u;
      v40 = 0u;
      v42 = 0u;
      v43 = 0u;
      v45 = 0u;
      v46 = 0u;
      v22 = a3->var3 / v21;
      if (v22 != 1.0)
      {
        v38 = *&v22;
        *&v39 = v22 * 0.0;
        *(&v39 + 1) = v22 * 0.0;
        *&v40 = v22 * 0.0;
      }

      PCRay3<double>::transform(a5, &v38);
      v13 = v49;
    }
  }

  else
  {
    v13 = 0;
    while (1)
    {
      if (v13 >= v50)
      {
        v14 = (v13 - __src) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v15 = (v50 - __src) >> 2;
        if (v15 <= v14 + 1)
        {
          v15 = v14 + 1;
        }

        if (v50 - __src >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(&__src, v16);
        }

        *(8 * v14) = v10;
        v13 = (8 * v14 + 8);
        v17 = (8 * v14 - (v49 - __src));
        memcpy(v17, __src, v49 - __src);
        v18 = __src;
        __src = v17;
        v49 = v13;
        v50 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v13 = v10;
        v13 += 8;
      }

      v49 = v13;
      v19 = *(v10 + 120);
      if (!v19)
      {
        break;
      }

      var5 = a3->var5;
      if (v10)
      {
        v20 = v10 == var5;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_31;
      }
    }

    var5 = a3->var5;
LABEL_31:
    if (var5)
    {
      goto LABEL_32;
    }
  }

  v23 = __src;
  OZRenderParams::OZRenderParams(&v38);
  OZRenderState::OZRenderState(&v37, a3);
  v37.var4 = 1;
  OZRenderParams::setState(&v38, &v37);
  v36 = 0x3FF0000000000000;
  v33 = 0x3FF0000000000000;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  v34 = 0u;
  v35 = 0u;
  TXTextObject::getTransformMatrix(a1, &v27, &v38, 1, 1, 0, 1, 0.0, 0.0);
  while (v13 != v23)
  {
    v24 = *(v13 - 1);
    v13 -= 8;
    (*(*v24 + 1392))(v24, a5, &v51);
    v25 = vmulq_f64(*(a5 + 32), *(a5 + 32));
    if (fabs(*(a5 + 24) * *(a5 + 24) + v25.f64[0] + v25.f64[1]) < 0.0000001)
    {
      goto LABEL_43;
    }
  }

  if (a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = &v27;
  }

  PCRay3<double>::invTransform(a5, v26);
LABEL_43:
  OZRenderParams::~OZRenderParams(&v38);
  if (__src)
  {
    v49 = __src;
    operator delete(__src);
  }
}

void sub_25FB269C4(_Unwind_Exception *a1)
{
  v2 = STACK[0x728];
  if (STACK[0x728])
  {
    STACK[0x730] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

BOOL PCRay3<double>::invTransform(void *a1, _OWORD *a2)
{
  v3 = a2[5];
  v8[4] = a2[4];
  v9 = v3;
  v4 = a2[7];
  v10 = a2[6];
  v11 = v4;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  if (PCMatrix44Tmpl<double>::invert(v8, v8, 0.0))
  {
    return PCRay3<double>::transform(a1, v8);
  }

  *&v9 = 0x3FB999999999999ALL;
  result = PCMatrix44Tmpl<double>::invert(v8, v8, 0.0);
  if (result)
  {
    return PCRay3<double>::transform(a1, v8);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return result;
}

void TXTextObject::getEyeMatrix(TXTextObject *this@<X0>, OZRenderParams *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  OZRenderParams::OZRenderParams(v22, a2);
  v23 = 1;
  TXTextObject::getTransformMatrix(this, a3, v22, 0, 1, 0, 1, 0.0, 0.0);
  v11 = *(this + 68);
  if (v11)
  {
    v21 = 0x3FF0000000000000;
    v18 = 0x3FF0000000000000;
    v15 = 0x3FF0000000000000;
    v12 = 0x3FF0000000000000;
    v13 = 0u;
    v14 = 0u;
    v16 = 0u;
    v17 = 0u;
    v19 = 0u;
    v20 = 0u;
    (*(*(v11 + 200) + 1288))(v11 + 200, &v12, a2, v6, v7, v8, v9, v10);
  }

  else
  {
    (*(**(a2 + 160) + 24))(&v12);
  }

  PCMatrix44Tmpl<double>::leftMult(a3, &v12);
  OZRenderParams::~OZRenderParams(v22);
}

void sub_25FB26BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

double TXTextObject::calcTranslationRelativeToCamera(uint64_t a1, uint64_t a2, uint64_t a3, PC_Sp_counted_base *a4, OZRenderState *a5, float64x2_t *a6)
{
  OZRenderState::OZRenderState(&v56, a5);
  OZRenderParams::OZRenderParams(v54);
  v55 = 1;
  v53 = 0x3FF0000000000000;
  v50 = 0x3FF0000000000000;
  v47 = 0x3FF0000000000000;
  v44 = 0x3FF0000000000000;
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  v51 = 0u;
  v52 = 0u;
  TXTextObject::getTransformMatrix(a1, &v44, v54, 1, 1, 0, 1, 0.0, 0.0);
  (*(*a1 + 48))(v43, a1, a2, a4, &v56, 0);
  v41 = 0uLL;
  v42 = 0.0;
  memset(v39, 0, sizeof(v39));
  v40 = 0xBFF0000000000000;
  PCIntersectRayWithPlane(v43, v39, &v41);
  OZRenderParams::setState(v54, &v56);
  v29.var0 = a4;
  if (a4)
  {
    v11 = (a4 + *(*a4 - 24));
  }

  else
  {
    v11 = 0;
  }

  PCSharedCount::PCSharedCount(&v30, v11);
  OZRenderParams::setCamera(v54, &v29);
  PCSharedCount::~PCSharedCount(&v30);
  v38 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  v29.var0 = 0x3FF0000000000000;
  v30 = 0u;
  v31 = 0u;
  v33 = 0u;
  v34 = 0u;
  v36 = 0u;
  v37 = 0u;
  (*(*a1 + 40))(v28, a1, v54);
  for (i = 0; i != 8; i += 2)
  {
    v13 = (&v29 + i * 16);
    v14 = v28[i + 1];
    *v13 = v28[i];
    v13[1] = v14;
  }

  v26 = v41;
  v27 = v42;
  PCMatrix44Tmpl<double>::transform<double>(&v29, v26.f64, v26.f64);
  v25 = v27;
  v15 = v30;
  v16 = v31;
  v17 = *(&v34 + 1);
  *&v30 = *(&v31 + 1);
  *(&v30 + 1) = v34;
  *&v31 = *(&v36 + 1);
  v18 = v36;
  *(&v31 + 1) = v15;
  v19 = *(&v33 + 1);
  *&v34 = *(&v15 + 1);
  *(&v34 + 1) = v33;
  *&v33 = v17;
  *&v36 = *(&v37 + 1);
  *(&v33 + 1) = v37;
  *(&v36 + 1) = v16;
  v23 = 0uLL;
  v24 = -1.0;
  *&v37 = v19;
  *(&v37 + 1) = v18;
  PCMatrix44Tmpl<double>::transform<double>(&v29, v23.f64, v23.f64);
  (*(*a1 + 48))(v28, a1, a3, a4, &v56, 0);
  v43[0] = v28[0];
  v43[1] = v28[1];
  v43[2] = v28[2];
  v20 = vaddvq_f64(vmulq_f64(v23, v23)) + v24 * v24;
  if (fabs(v20) >= 1.0e-24)
  {
    *&v39[24] = v23;
    *v39 = vdivq_f64(vmulq_n_f64(v23, -v25), vdupq_lane_s64(*&v20, 0));
    v40 = *&v24;
    *&v39[16] = -(v25 * v24) / v20;
  }

  PCIntersectRayWithPlane(v43, v39, &v26);
  PCMatrix44Tmpl<double>::transform<double>(&v44, v41.f64, v41.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v44, v26.f64, v26.f64);
  v21 = v27 - v42;
  *a6 = vsubq_f64(v26, v41);
  a6[1].f64[0] = v21;
  OZRenderParams::~OZRenderParams(v54);
  return result;
}

void TXTextObject::calcTranslationRelativeToObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, OZRenderState *a5, float64x2_t *a6)
{
  OZRenderState::OZRenderState(&v37, a5);
  OZRenderParams::OZRenderParams(v35);
  v36 = 1;
  (*(*a1 + 48))(v34, a1, a2, a4, &v37, 0);
  v32 = 0uLL;
  v33 = 0.0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0xBFF0000000000000;
  PCIntersectRayWithPlane(v34, v29, &v32);
  v27 = v32;
  v28 = v33;
  (*(*a1 + 48))(v25, a1, a3, a4, &v37, 0);
  v34[0] = *v25;
  v34[1] = *&v25[16];
  v34[2] = v26;
  PCIntersectRayWithPlane(v34, v29, &v27);
  v12 = *(a1 + 264);
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = 1.0;
  v24 = 1.0;
  v22 = 1.0;
  *v25 = *&a5->var0.var0;
  HIDWORD(v15) = *&v25[4];
  *&v25[16] = a5->var0.var3;
  LODWORD(v15) = *(a1 + 736);
  OZChannelScale3D::getValue((v13 + 2864), v25, &v24, &v23, &v22, v15);
  a6[1].f64[0] = v28 - v33;
  v16.f64[0] = v24;
  v16.f64[1] = v23;
  __asm { FMOV            V2.2D, #1.0 }

  *a6 = vmulq_f64(vsubq_f64(v27, v32), vdivq_f64(_Q2, v16));
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  OZRenderParams::~OZRenderParams(v35);
}

void sub_25FB271A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  OZRenderParams::~OZRenderParams(&a40);
  _Unwind_Resume(a1);
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_25FB27324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL TXTextObject::setUniChar(TXTextObject *this, UniChar a2)
{
  *(this + 60) = a2;
  result = TXCharacterSetIsWhitespace(a2);
  *(this + 64) = result;
  return result;
}

BOOL TXTextObject::isAllCapsEnabled(TXTextObject *this)
{
  v1 = *(this + 33);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ValueAsInt = OZChannel::getValueAsInt((v2 + 5504), MEMORY[0x277CC08F0], 0.0);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return ValueAsInt != 0;
}

void sub_25FB273DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double *TXTextObject::syncGlyph(TXTextObject *this, CMTime *a2, double *a3)
{
  v3 = a3;
  v5 = *(this + 33);
  if (!v5)
  {
    v6 = 0;
    v7 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v24 = *a2;
    HIDWORD(v8) = HIDWORD(v24.value);
    LODWORD(v8) = *(this + 184);
    *a3 = TXTextObject::getRenderedFontSize(this, &v24, v8);
    v3[3] = 0.0;
    *(v3 + 8) = *(this + 131);
    goto LABEL_8;
  }

  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  PCSharedMutex::lock_shared((this + 272));
  v9 = 1;
  if ((*(this + 384) & 1) == 0)
  {
    v3 = *(this + 47);
    if (v3)
    {
      v9 = 0;
    }
  }

  PCSharedMutex::unlock_shared((this + 272));
  if (!v9)
  {
    goto LABEL_33;
  }

  if (*(this + 131))
  {
    v11 = *(this + 67);
    if (!v11)
    {
      v12 = *(v10 + 5);
      if (!v12)
      {
LABEL_37:
        (*(v7[2] + 80))(v7 + 2);
        v3 = 0;
        if (!v6)
        {
          return v3;
        }

        goto LABEL_34;
      }

      goto LABEL_27;
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *(v10 + 5);
    v13 = v11;
    goto LABEL_16;
  }

  v14 = v7[65];
  v15 = v7[66];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    v17 = v16;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      v12 = v17[5];
      v13 = v15;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (!v12)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    v12 = v16[5];
    if (!v12)
    {
      goto LABEL_37;
    }
  }

  else
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    v12 = MEMORY[0x28];
    if (!MEMORY[0x28])
    {
      goto LABEL_37;
    }
  }

LABEL_27:
  v18 = *(this + 68);
  isAllCapsEnabled = TXTextObject::isAllCapsEnabled(this);
  v20 = *(this + 60);
  if (isAllCapsEnabled)
  {
    LOWORD(v20) = __toupper(v20);
  }

  Glyph = TXFont::getGlyph(v12, v18, v20);
  if (Glyph)
  {
  }

  else
  {
    v22 = 0;
  }

  PCSharedMutex::lock((this + 272));
  *(this + 47) = v22;
  *(this + 384) = 0;
  PCSharedMutex::unlock((this + 272));
  v3 = *(this + 47);
LABEL_33:
  if (v6)
  {
LABEL_34:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_25FB276C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextObject::getRenderedFontSize(TXTextObject *this, CMTime *a2, double a3)
{
  v5 = *(this + 33);
  if (v5)
  {
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v11 = *a2;
  Size = TXTextStyle::getSize(v7, &v11, a3);
  if (TXTextObject::isAllCapsEnabled(this) && *(this + 569) == 1)
  {
    v11 = *a2;
    OZChannel::getValueAsDouble((v7 + 5656), &v11, 0.0);
    Size = v9 * Size;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return Size;
}

void sub_25FB277CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::buildGlyphRequest@<X0>(TXTextObject *a1@<X0>, OZRenderState *a2@<X1>, char a3@<W2>, float64x2_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0x3FF0000000000000;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 36) = 1;
  *(a6 + 37) = 0;
  v14 = (a6 + 37);
  *(a6 + 44) = 0;
  *&v28.value = *&a2->var0.var0;
  HIDWORD(v15) = HIDWORD(v28.value);
  LODWORD(v15) = *(a1 + 97);
  v28.epoch = a2->var0.var3;
  *a6 = TXTextObject::getRenderedFontSize(a1, &v28, v15);
  *(a6 + 8) = a3;
  *(a6 + 16) = a7;
  if (!PCMatrix44Tmpl<double>::isIdentity(a4->f64))
  {
    TXTextObject::getImageBounds(a1, a2, &v28);
    v26 = 0;
    v27 = 0;
    v24[0] = 0.0;
    v24[1] = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v25 = _Q0;
    TXTextObject::computeScaleFactors(a2, &v28.value, a4, v24, &v27, &v26);
    operator new();
  }

  *(a6 + 32) = *(a1 + 131);
  RenderNodeList = HGRenderJob::GetRenderNodeList(a2);
  v22 = a5 ^ 1;
  if (!*(*RenderNodeList + 8))
  {
    v22 = 1;
  }

  *v14 = v22;
  if (v22 == 1)
  {
    result = OZRenderParams::getWorkingColorSpace(a2);
  }

  else
  {
    result = PCColorSpaceCache::cgLinearGray(RenderNodeList);
  }

  *(a6 + 40) = result;
  return result;
}

void TXTextObject::computeScaleFactors(OZRenderParams *a1, double *a2, float64x2_t *a3, double *a4, double *a5, double *a6)
{
  LiImagePolygon::LiImagePolygon(v13);
  LiImagePolygon::set(v13, a2, 0);
  if (a4[2] >= 0.0 && a4[3] >= 0.0)
  {
    liTransformAndClip(a4, a3->f64, v13);
  }

  TXTextObject::computeScaleFactors(a1, v13, a3, v12, a5, a6);
  LiImagePolygon::~LiImagePolygon(v13);
}

double *TXTextObject::getSystemGlyph(TXTextObject *a1, CMTime *a2, double *a3)
{
  result = TXTextObject::syncGlyph(a1, a2, a3);
  if (result)
  {
  }

  return result;
}

float64_t TXTextObject::getTransformedImageCornersWithFourCornerPinning(uint64_t a1, __int128 *a2, uint64_t a3, int a4, double a5, double a6, uint64_t a7, int a8, uint64_t a9)
{
  v23 = 0x3FF0000000000000;
  v20 = 0x3FF0000000000000;
  v17 = 0x3FF0000000000000;
  v14 = 0x3FF0000000000000;
  v15 = 0u;
  v16 = 0u;
  v18 = 0u;
  v19 = 0u;
  v21 = 0u;
  v22 = 0u;
  TXTextObject::getTransformMatrix(a1, &v14, a2, 1, a8, a9, 1, a5, a6);
  return TXTextObject::getTransformedImageCornersWithFourCornerPinning(a1, a2, a4, &v14, a3, 0);
}

float64_t TXTextObject::getTransformedImageCornersWithFourCornerPinning(uint64_t a1, CMTime *a2, int a3, double *a4, uint64_t a5, float64x2_t *a6)
{
  v20 = 0uLL;
  v19 = 0uLL;
  v18 = 0uLL;
  v17 = 0uLL;
  TXTextObject::getFourCornerPointsInObjectSpaceForAttribute(a1, a2, &v18, &v17, &v19, &v20, a3, 1, 0.0, 0.0, 0.0, 0.0, 1u, a6);
  v15 = v20;
  v16 = 0;
  v13 = v19;
  v14 = 0;
  v11 = v18;
  v12 = 0;
  v9 = v17;
  v10 = 0;
  PCMatrix44Tmpl<double>::transform<double>(a4, v15.f64, v15.f64);
  PCMatrix44Tmpl<double>::transform<double>(a4, v13.f64, v13.f64);
  PCMatrix44Tmpl<double>::transform<double>(a4, v11.f64, v11.f64);
  PCMatrix44Tmpl<double>::transform<double>(a4, v9.f64, v9.f64);
  *(a5 + 72) = v15;
  *(a5 + 88) = v16;
  *(a5 + 48) = v13;
  *(a5 + 64) = v14;
  *(a5 + 24) = v9;
  *(a5 + 40) = v10;
  *(a5 + 16) = v12;
  result = v11.f64[0];
  *a5 = v11;
  return result;
}

float64x2_t TXTextObject::getImageBoundsWithFourCornerPinning(TXTextObject *this, CMTime *a2, float64x2_t *a3, int a4)
{
  v29 = 0uLL;
  v28 = 0uLL;
  v27 = 0uLL;
  v26 = 0uLL;
  if (a4 == 5)
  {
    v7 = 0;
    v24 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v25 = _Q0;
    do
    {
      v23 = *a2;
      if (TXTextObject::isAttributeEnabled(this, v7, &v23))
      {
        TXTextObject::getFourCornerPointsInObjectSpaceForAttribute(this, a2, &v29, &v28, &v27, &v26, v7, 1, 0.0, 0.0, 0.0, 0.0, 1u, 0);
        v14 = vbslq_s8(vcgtq_f64(v26, v27), v26, v27);
        v15 = vbslq_s8(vcgtq_f64(v14, v28), v14, v28);
        v16 = vbslq_s8(vcgtq_f64(v27, v26), v26, v27);
        v17 = vbslq_s8(vcgtq_f64(v28, v16), v16, v28);
        v24 = vbslq_s8(vcgtq_f64(v29, v17), v17, v29);
        v25 = vsubq_f64(vbslq_s8(vcgtq_f64(v15, v29), v15, v29), v24);
        *&result.f64[0] = *&PCRect<double>::operator|=(a3, &v24);
      }

      ++v7;
    }

    while (v7 != 4);
  }

  else
  {
    TXTextObject::getFourCornerPointsInObjectSpaceForAttribute(this, a2, &v29, &v28, &v27, &v26, a4, 1, 0.0, 0.0, 0.0, 0.0, 1u, 0);
    v18 = vbslq_s8(vcgtq_f64(v26, v27), v26, v27);
    v19 = vbslq_s8(vcgtq_f64(v18, v28), v18, v28);
    v20 = vbslq_s8(vcgtq_f64(v27, v26), v26, v27);
    v21 = vbslq_s8(vcgtq_f64(v28, v20), v20, v28);
    result = vbslq_s8(vcgtq_f64(v29, v21), v21, v29);
    v22 = vsubq_f64(vbslq_s8(vcgtq_f64(v19, v29), v19, v29), result);
    *a3 = result;
    a3[1] = v22;
  }

  return result;
}

BOOL TXTextObject::isAttributeEnabled(TXTextObject *this, int a2, CMTime *a3)
{
  if (a2 == 5)
  {
    return 1;
  }

  v5 = *(this + 33);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_13:
    v3 = 0;
    goto LABEL_20;
  }

  v3 = 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v10 = *a3;
      isGlowVisible = TXTextObject::isGlowVisible(this, &v10, 0, 0, 0);
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_20;
      }

      v10 = *a3;
      isGlowVisible = TXTextObject::isDropShadowVisible(this, &v10, 0);
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_20;
      }

      v10 = *a3;
      if (TXTextObject::isOutlineEnabled(this, &v10))
      {
        v3 = *(this + 68) != -1;
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    isGlowVisible = TXTextObject::isFaceEnabled(this, a3);
  }

  v3 = isGlowVisible;
LABEL_20:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3;
}

void sub_25FB27F80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getImageBoundsOfAttribute(uint64_t a1, double *a2, CMTime *a3, int a4, int a5, int a6, unsigned int a7, float64x2_t *a8, double a9, double a10, double a11, double a12)
{
  v97 = *a3;
  v95 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v70 = _Q0;
  v96 = _Q0;
  OZRenderParams::OZRenderParams(&v94);
  OZRenderParams::setState(&v94, a3);
  if (a8)
  {
    v27 = *a8;
    v28 = a8[1];
LABEL_6:
    v95 = v27;
    v96 = v28;
    goto LABEL_7;
  }

  v93 = 0x3FF0000000000000;
  v90 = 0x3FF0000000000000;
  v87[5] = 0x3FF0000000000000;
  v87[0] = 0x3FF0000000000000;
  memset(&v87[1], 0, 32);
  v88 = 0u;
  v89 = 0u;
  v91 = 0u;
  v92 = 0u;
  TXTextObject::getTextureBounds(a1, &v94, 0, v87, 0, 0, &v85, 0.0);
  v95 = v85;
  v96 = v86;
  if (TXTextLayout::isVerticalLayout(*(a1 + 544)) || (*(**(a1 + 544) + 296))(*(a1 + 544)))
  {
    TXTextObject::getImageBounds(a1, &v94, &v85);
    v27 = v85;
    v28 = v86;
    goto LABEL_6;
  }

LABEL_7:
  v30 = v95.f64[1];
  v29 = v95.f64[0];
  v32 = v96.f64[1];
  v31 = v96.f64[0];
  v87[0] = 0;
  v87[1] = 0;
  *&v87[2] = v70;
  v85 = 0uLL;
  v86 = v70;
  v83 = 0uLL;
  v84 = v70;
  if (a6)
  {
    v33 = *(a1 + 264);
    if (v33)
    {
      v35 = *(v33 + 8);
      v34 = *(v33 + 16);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v35 = 0;
      v34 = 0;
    }

    OZChannel::getValueAsDouble((v35 + 3000), &v97, 0.0);
    v71 = v36;
    OZChannel::getValueAsDouble((v35 + 3152), &v97, 0.0);
    v37.f64[0] = v71;
    v37.f64[1] = v38;
    v95 = vmulq_f64(v37, v95);
    v96 = vmulq_f64(v37, v96);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  OutlineWidth = 0.0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v81 = 1.0;
        v82 = 1.0;
        v79 = 1.0;
        TXTextObject::getScale(a1, &v94, &v82, &v81, &v79, 1, 1, 0, 0, 0, 1);
        v77 = 0.0;
        v78 = 0.0;
        var0 = v97;
        OutlineWidth = TXTextObject::getOutlineWidth(a1, &var0);
        var0 = v97;
        TXTextObject::getOutlineBlur(a1, &var0, &v78, &v77);
        v40 = 0.0;
        v32 = 0.0 / v82 + OutlineWidth + OutlineWidth + v32 + v77 + v77;
        v31 = 0.0 / v81 + OutlineWidth + OutlineWidth + v31 + v78 + v78;
        v29 = v29 + 0.0 - v78 - OutlineWidth - 0.0 / (v82 + v82);
        v30 = v30 + 0.0 - v77 - OutlineWidth - 0.0 / (v81 + v81);
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v81 = 0.0;
    v82 = 0.0;
    var0 = v97;
    TXTextObject::getFaceBlur(a1, &var0, &v82, &v81);
    v59.f64[0] = v82;
    if (v82 < v81)
    {
      v59.f64[0] = v81;
    }

    PGImaging::gaussianBlurRect(0, &v95, v87, v59);
    v29 = *v87;
    v30 = *&v87[1];
    v40 = 0.0;
    v31 = *&v87[2];
    v32 = *&v87[3];
  }

  else
  {
    switch(a4)
    {
      case 2:
        v81 = 0.0;
        v82 = 0.0;
        var0 = v97;
        TXTextObject::getGlowBlur(a1, &var0, &v82, &v81);
        v41.f64[0] = v82;
        if (v82 < v81)
        {
          v41.f64[0] = v81;
        }

        PGImaging::gaussianBlurRect(0, &v95, &v83, v41);
        if (a5)
        {
          v78 = 0.0;
          v79 = 0.0;
          v77 = 0.0;
          var0 = v94.var0;
          TXTextObject::getPivot(a1, &v79, &v78, &v77, &var0, 1);
          v75 = 0.0;
          v76 = 0.0;
          var0 = v97;
          TXTextObject::getGlowOffset(a1, &var0, &v76, &v75, a7);
          if ((a7 & 1) == 0)
          {
            v75 = a10;
            v76 = a9;
          }

          v73 = 1.0;
          v74 = 1.0;
          var0 = v97;
          TXTextObject::getGlowScale(a1, &var0, &v74, &v73, a7);
          v43 = v73;
          v42 = v74;
          if (!a7)
          {
            v43 = a12;
            v42 = a11;
          }

          v31 = v42 * v84.f64[0];
          v32 = v43 * v84.f64[1];
          v84.f64[0] = v42 * v84.f64[0];
          v84.f64[1] = v43 * v84.f64[1];
          v40 = v76;
          v29 = v79 + (v83.f64[0] - v79) * v42 + v76;
          v30 = v78 + (v83.f64[1] - v78) * v43 + v75;
          v83.f64[0] = v29;
          v83.f64[1] = v30;
        }

        else
        {
          v30 = v83.f64[1];
          v29 = v83.f64[0];
          v40 = 0.0;
          v32 = v84.f64[1];
          v31 = v84.f64[0];
        }

        break;
      case 3:
        v81 = 0.0;
        v82 = 0.0;
        var0 = v97;
        TXTextObject::getDropShadowBlur(a1, &var0, &v82, &v81);
        v44.f64[0] = v82;
        if (v82 < v81)
        {
          v44.f64[0] = v81;
        }

        PGImaging::gaussianBlurRect(0, &v95, &v85, v44);
        v40 = 0.0;
        if (a5)
        {
          v78 = 0.0;
          v79 = 0.0;
          v77 = 0.0;
          TXTextObject::getPivot(a1, &v79, &v78, &v77, &v97, 1);
          var0 = v97;
          DropShadowDistance = TXTextObject::getDropShadowDistance(a1, &var0);
          var0 = v97;
          DropShadowAngle = TXTextObject::getDropShadowAngle(a1, &var0);
          v47 = __sincos_stret(DropShadowAngle);
          v40 = DropShadowDistance * v47.__cosval;
          v48 = DropShadowDistance * v47.__sinval;
          if (!a7)
          {
            v48 = a10;
          }

          v72 = v48;
          if (a7)
          {
            v49 = DropShadowDistance * v47.__cosval;
          }

          else
          {
            v49 = a9;
          }

          v75 = 1.0;
          v76 = 1.0;
          var0 = v97;
          TXTextObject::getDropShadowScale(a1, &var0, &v76, &v75, a7);
          *v50.i64 = v76;
          *&v50.i64[1] = v75;
          *v51.i64 = a11;
          *&v51.i64[1] = a12;
          v52 = vdup_n_s32(a7);
          v53.i64[0] = v52.u32[0];
          v53.i64[1] = v52.u32[1];
          v54 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v53, 0x3FuLL)), v50, v51);
          v85 = vmulq_f64(v54, v85);
          v86 = vmulq_f64(v54, v86);
          v55 = *(a1 + 264);
          v56 = *(v55 + 8);
          v57 = *(v55 + 16);
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!OZChannel::getValueAsInt((v56 + 19528), MEMORY[0x277CC08F0], 0.0))
          {
            v58.f64[0] = v49 * OZSceneNode::getScenePixelAspectRatio((*(a1 + 544) + 200));
            v58.f64[1] = v72;
            v85 = vaddq_f64(v58, v85);
          }

          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          }
        }

        v30 = v85.f64[1];
        v29 = v85.f64[0];
        v32 = v86.f64[1];
        v31 = v86.f64[0];
        break;
      case 4:
        v29 = *(a1 + 424);
        v30 = *(a1 + 432);
        v40 = 0.0;
        v31 = *(a1 + 440);
        v32 = *(a1 + 448);
        break;
      default:
LABEL_48:
        v40 = 0.0;
        break;
    }
  }

LABEL_50:
  v60 = *(a1 + 264);
  if (!v60)
  {
    goto LABEL_65;
  }

  v61 = *(v60 + 8);
  v62 = *(v60 + 16);
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      goto LABEL_65;
    }
  }

  else if (!v61)
  {
    goto LABEL_65;
  }

  v63 = *(a1 + 264);
  v65 = *(v63 + 8);
  v64 = *(v63 + 16);
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
    v66 = *(v65 + 49856);
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    if (!v62)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v66 = *(v65 + 49856);
  if (v62)
  {
LABEL_57:
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

LABEL_58:
  if (v66)
  {
    v67 = v29 + 10.0 + v31;
    if (v29 <= -10.0)
    {
      v67 = v31;
    }

    if (v29 < -10.0)
    {
      v31 = v31 - (v29 + 10.0);
    }

    else
    {
      v31 = v67;
    }

    v29 = v29 - (v29 + 10.0) + v40 - OutlineWidth;
  }

LABEL_65:
  *a2 = v29;
  a2[1] = v30;
  a2[2] = v31;
  a2[3] = v32;
  OZRenderParams::~OZRenderParams(&v94);
}

void sub_25FB286F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  OZRenderParams::~OZRenderParams(&a55);
  _Unwind_Resume(a1);
}

void TXTextObject::getGlowScale(TXTextObject *this, CMTime *a2, double *a3, double *a4, int a5)
{
  v11 = *(this + 33);
  if (v11)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = *(this + 68);
  *a3 = 1.0;
  *a4 = 1.0;
  if (OZChannelBase::isEnabled((v13 + 31080), 0, 1))
  {
    v23 = *a2;
    OZChannel::getValueAsDouble((v13 + 36304), &v23, 0.0);
    v16 = v15;
    OZChannel::getValueAsDouble((v13 + 36456), &v23, 0.0);
    *a3 = v16 * *a3;
    *a4 = v17 * *a4;
  }

  if (a5)
  {
    v23 = *a2;
    LODWORD(v5) = *(this + 184);
    isEnabled = OZChannelBase::isEnabled((v14 + 40696), 0, 1);
    v19 = 1.0;
    v20 = 1.0;
    if (isEnabled)
    {
      v21 = v5;
      OZChannel::getValueAsDouble((v14 + 40832), &v23, v21);
      v19 = v22;
      OZChannel::getValueAsDouble((v14 + 40984), &v23, v21);
    }

    *a3 = v19 * *a3;
    *a4 = v20 * *a4;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_25FB288F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getDropShadowScale(TXTextObject *this, CMTime *a2, double *a3, double *a4, int a5)
{
  v11 = *(this + 33);
  if (v11)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = *(this + 68);
  *a4 = 1.0;
  *a3 = 1.0;
  if (OZChannelBase::isEnabled((v13 + 13848), 0, 1))
  {
    v23 = *a2;
    OZChannel::getValueAsDouble((v13 + 18920), &v23, 0.0);
    v16 = v15;
    OZChannel::getValueAsDouble((v13 + 19072), &v23, 0.0);
    *a3 = v16 * *a3;
    *a4 = v17 * *a4;
  }

  if (a5)
  {
    v23 = *a2;
    LODWORD(v5) = *(this + 184);
    isEnabled = OZChannelBase::isEnabled((v14 + 46928), 0, 1);
    v19 = 1.0;
    v20 = 1.0;
    if (isEnabled)
    {
      v21 = v5;
      OZChannel::getValueAsDouble((v14 + 47064), &v23, v21);
      v19 = v22;
      OZChannel::getValueAsDouble((v14 + 47216), &v23, v21);
    }

    *a3 = v19 * *a3;
    *a4 = v20 * *a4;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_25FB28AA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextObject::getDropShadowDistance(TXTextObject *this, CMTime *a2)
{
  v4 = *(this + 33);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 68);
  v12 = *a2;
  OZChannel::getValueAsDouble((v5 + 19224), &v12, 0.0);
  OZChannel::setValue((v7 + 47368), a2, v8, 1);
  v12 = *a2;
  HIDWORD(v9) = HIDWORD(v12.value);
  LODWORD(v9) = *(this + 184);
  DropShadowDistance = TXSequenceChannels::getDropShadowDistance((v7 + 25032), &v12, v9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return DropShadowDistance;
}

void sub_25FB28B8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextObject::getDropShadowAngle(TXTextObject *this, CMTime *a2)
{
  v4 = *(this + 33);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 68);
  v12 = *a2;
  OZChannel::getValueAsDouble((v5 + 19376), &v12, 0.0);
  OZChannel::setValue((v7 + 47520), a2, v8, 1);
  v12 = *a2;
  HIDWORD(v9) = HIDWORD(v12.value);
  LODWORD(v9) = *(this + 184);
  DropShadowAngle = TXSequenceChannels::getDropShadowAngle((v7 + 25032), &v12, v9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return DropShadowAngle;
}

void sub_25FB28C70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double *TXTextObject::getTextureBounds@<X0>(TXTextObject *a1@<X0>, OZRenderState *a2@<X1>, char a3@<W2>, float64x2_t *a4@<X3>, int a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  v27 = _Q1;
  *(a7 + 16) = _Q1;
  v40 = 0;
  p_var0 = 0;
  v44 = 0;
  v45 = 1;
  memset(v46, 0, sizeof(v46));
  v41 = a3;
  v42 = a8;
  v46[1] = a6;
  var0 = a2->var0;
  result = TXTextObject::syncGlyph(a1, &var0, &v40);
  v19 = result;
  if (result)
  {
    *&var0.var0 = 0x3FF0000000000000uLL;
    var0.var3 = 0;
    v34 = 0;
    v35 = 0x3FF0000000000000;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0x3FF0000000000000;
    if (!PCMatrix44Tmpl<double>::isIdentity(a4->f64))
    {
      TXTextObject::getImageBounds(a1, a2, v32);
      v30 = 0.0;
      v31 = 0.0;
      v28[0] = 0.0;
      v28[1] = 0.0;
      v29 = v27;
      TXTextObject::computeScaleFactors(a2, v32[0].f64, a4, v28, &v31, &v30);
      if (OZRenderParams::getTextRenderQuality(a2) == 6)
      {
        ValueAsInt = OZChannel::getValueAsInt((*(a1 + 68) + 20464), MEMORY[0x277CC08F0], 0.0);
        v22 = v30;
        v21 = v31;
        v23 = ceil(v31);
        v24 = ceil(v30);
        if (ValueAsInt == 2)
        {
          v22 = v24;
          v21 = v23;
        }
      }

      else
      {
        v22 = v30;
        v21 = v31;
      }

      if (v21 >= v22)
      {
        v25 = v21;
      }

      else
      {
        v25 = v22;
      }

      if (a5)
      {
        v22 = v25;
        v21 = v25;
      }

      *&var0.var0 = v21;
      v35 = *&v22;
      p_var0 = &var0;
      a4->f64[0] = v21;
      a4[2].f64[1] = v22;
    }

    result = (*(*v19 + 16))(v19, a7, &v40);
    v26 = p_var0;
    if (p_var0)
    {
      *&a4->f64[0] = p_var0->value;
      a4[2].f64[1] = *&v26[1].timescale;
    }
  }

  if (v46[2] == 1)
  {
    result = &p_var0->value;
    if (p_var0)
    {
      return MEMORY[0x2666E9F00](p_var0, 0x1000C40FF89C88ELL);
    }
  }

  return result;
}

void sub_25FB28E7C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) == 1)
  {
    v3 = *(v1 - 88);
    if (v3)
    {
      MEMORY[0x2666E9F00](v3, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getFaceBlur(TXTextObject *this, CMTime *a2, double *a3, double *a4)
{
  v8 = *(this + 33);
  if (v8)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = *(this + 68);
  *a3 = 0.0;
  *a4 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (OZChannelBase::isEnabled((v10 + 5960), 0, 1))
  {
    v15 = *a2;
    OZChannel::getValueAsDouble((v10 + 10440), &v15, 0.0);
    v17 = v12;
    OZChannel::getValueAsDouble((v10 + 10592), &v15, 0.0);
    v16 = v13;
    *a3 = v17 + *a3;
    *a4 = v13 + *a4;
  }

  v15 = *a2;
  HIDWORD(v14) = HIDWORD(v15.value);
  LODWORD(v14) = *(this + 184);
  TXSequenceChannels::getFaceBlur((v11 + 25032), &v15, &v17, &v16, v14);
  *a3 = v17 + *a3;
  *a4 = v16 + *a4;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_25FB29010(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getDropShadowBlur(TXTextObject *this, CMTime *a2, double *a3, double *a4)
{
  v8 = *(this + 33);
  if (v8)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = *(this + 68);
  *a3 = 0.0;
  *a4 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (OZChannelBase::isEnabled((v10 + 13848), 0, 1))
  {
    v15 = *a2;
    OZChannel::getValueAsDouble((v10 + 18328), &v15, 0.0);
    v17 = v12;
    OZChannel::getValueAsDouble((v10 + 18480), &v15, 0.0);
    v16 = v13;
    *a3 = v17 + *a3;
    *a4 = v13 + *a4;
  }

  v15 = *a2;
  if ((TXTextLayout::isStyleEnabledBySequenceBehavior(v11, 1043, &v15) & 1) != 0 || (v15 = *a2, TXTextLayout::isStyleEnabledByOldSequenceBehavior(v11, 1043, &v15)))
  {
    v15 = *a2;
    HIDWORD(v14) = HIDWORD(v15.value);
    LODWORD(v14) = *(this + 184);
    TXSequenceChannels::getDropShadowBlur((v11 + 25032), &v15, &v17, &v16, v14);
    *a3 = v17 + *a3;
    *a4 = v16 + *a4;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_25FB291C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextObject::getOutlineWidth(TXTextObject *this, CMTime *a2)
{
  v4 = *(this + 33);
  if (v4)
  {
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(this + 68);
  if ((OZChannelBase::isEnabled((v6 + 22632), 0, 1) & 1) != 0 || (v9 = 0.0, (OZChannelBase::isEnabled((v6 + 22632), 0, 1) & 1) == 0) && (v13 = *a2, TXTextLayout::isStyleEnabledBySequenceBehavior(v7, 1037, &v13)))
  {
    v13 = *a2;
    OZChannel::getValueAsDouble((v6 + 27568), &v13, 0.0);
    v9 = v8 + 0.0;
  }

  v13 = *a2;
  HIDWORD(v10) = HIDWORD(v13.value);
  LODWORD(v10) = *(this + 184);
  OutlineWidth = TXSequenceChannels::getOutlineWidth((v7 + 25032), &v13, v10);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v9 + OutlineWidth;
}

void sub_25FB29310(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getOutlineBlur(TXTextObject *this, CMTime *a2, double *a3, double *a4)
{
  v8 = *(this + 33);
  if (v8)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = *(this + 68);
  *a3 = 0.0;
  *a4 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (OZChannelBase::isEnabled((v10 + 22632), 0, 1))
  {
    v15 = *a2;
    OZChannel::getValueAsDouble((v10 + 27112), &v15, 0.0);
    v17 = v12;
    OZChannel::getValueAsDouble((v10 + 27264), &v15, 0.0);
    v16 = v13;
    *a3 = v17 + *a3;
    *a4 = v13 + *a4;
  }

  v15 = *a2;
  HIDWORD(v14) = HIDWORD(v15.value);
  LODWORD(v14) = *(this + 184);
  TXSequenceChannels::getOutlineBlur((v11 + 25032), &v15, &v17, &v16, v14);
  *a3 = v17 + *a3;
  *a4 = v16 + *a4;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_25FB2947C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getGlowBlur(TXTextObject *this, CMTime *a2, double *a3, double *a4)
{
  v8 = *(this + 33);
  if (v8)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = *(this + 68);
  *a3 = 0.0;
  *a4 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (OZChannelBase::isEnabled((v10 + 31080), 0, 1))
  {
    v15 = *a2;
    OZChannel::getValueAsDouble((v10 + 35560), &v15, 0.0);
    v17 = v12;
    OZChannel::getValueAsDouble((v10 + 35712), &v15, 0.0);
    v16 = v13;
    *a3 = v17 + *a3;
    *a4 = v13 + *a4;
  }

  v15 = *a2;
  if (TXTextLayout::isStyleEnabledBySequenceBehavior(v11, 1019, &v15) & 1) != 0 || (v15 = *a2, (TXTextLayout::isStyleEnabledBySequenceBehavior(v11, 1026, &v15)) || (v15 = *a2, (TXTextLayout::isStyleEnabledBySequenceBehavior(v11, 1038, &v15)) || (v15 = *a2, (TXTextLayout::isStyleEnabledBySequenceBehavior(v11, 1042, &v15)) || (v15 = *a2, TXTextLayout::isStyleEnabledByOldSequenceBehavior(v11, 1042, &v15)))
  {
    v15 = *a2;
    HIDWORD(v14) = HIDWORD(v15.value);
    LODWORD(v14) = *(this + 184);
    TXSequenceChannels::getGlowBlur((v11 + 25032), &v15, &v17, &v16, v14);
    *a3 = v17 + *a3;
    *a4 = v16 + *a4;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_25FB2969C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getGlowOffset(TXTextObject *this, CMTime *a2, double *a3, double *a4, int a5)
{
  v11 = *(this + 33);
  if (v11)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = *(this + 68);
  *a3 = 0.0;
  *a4 = 0.0;
  if (OZChannelBase::isEnabled((v13 + 31080), 0, 1))
  {
    v23 = *a2;
    OZChannel::getValueAsDouble((v13 + 36744), &v23, 0.0);
    v16 = v15;
    OZChannel::getValueAsDouble((v13 + 36896), &v23, 0.0);
    *a3 = v16 + *a3;
    *a4 = v17 + *a4;
  }

  if (a5)
  {
    v23 = *a2;
    LODWORD(v5) = *(this + 184);
    isEnabled = OZChannelBase::isEnabled((v14 + 41136), 0, 1);
    v19 = 0.0;
    v20 = 0.0;
    if (isEnabled)
    {
      v21 = v5;
      OZChannel::getValueAsDouble((v14 + 41272), &v23, v21);
      v19 = v22;
      OZChannel::getValueAsDouble((v14 + 41424), &v23, v21);
    }

    *a3 = v19 + *a3;
    *a4 = v20 + *a4;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_25FB29838(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getTransformedImageBoundsWithStyles(TXTextObject *a1, float64x2_t *a2, CMTime *a3)
{
  v62 = *a3;
  v61 = 0x3FF0000000000000;
  v58 = 0x3FF0000000000000;
  v55 = 0x3FF0000000000000;
  v52 = 0x3FF0000000000000;
  v53 = 0u;
  v54 = 0u;
  v56 = 0u;
  v57 = 0u;
  v59 = 0u;
  v60 = 0u;
  TXTextObject::getTextureBounds(a1, a3, 0, &v52, 0, 0, v51, 0.0);
  v50 = 0x3FF0000000000000;
  v47 = 0x3FF0000000000000;
  v44 = 0x3FF0000000000000;
  v41 = 0x3FF0000000000000;
  v42 = 0u;
  v43 = 0u;
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  TXTextObject::getTransformMatrix(a1, &v41, &a3->value, 1, 1, 0, 1, 0.0, 0.0);
  __asm { FMOV            V0.2D, #-1.0 }

  a2[1] = _Q0;
  v40[0] = 0uLL;
  v24 = _Q0;
  v40[1] = _Q0;
  v38 = 0.0;
  v39 = 0.0;
  TXTextObject::getFaceBlur(a1, &v62, &v39, &v38);
  v11.f64[0] = v39;
  PGImaging::gaussianBlurRect(0, v51, v40, v11);
  if (PCMatrix44Tmpl<double>::transformRect<double>(&v41, v40[0].f64, v40))
  {
    PCRect<double>::operator|=(a2, v40);
  }

  v37[0] = 0uLL;
  v37[1] = v24;
  v36[0] = 0uLL;
  v36[1] = v24;
  TXTextObject::getOutlineBlur(a1, &v62, &v39, &v38);
  OutlineWidth = TXTextObject::getOutlineWidth(a1, &v62);
  v13 = PGImaging::outlineRect(v51, v37, OutlineWidth);
  v13.f64[0] = v39;
  PGImaging::gaussianBlurRect(0, v37, v36, v13);
  if (PCMatrix44Tmpl<double>::transformRect<double>(&v41, v36[0].f64, v36))
  {
    PCRect<double>::operator|=(a2, v36);
  }

  v34 = 0uLL;
  v35 = v24;
  TXTextObject::getGlowBlur(a1, &v62, &v39, &v38);
  v14.f64[0] = v39;
  PGImaging::gaussianBlurRect(0, v51, &v34, v14);
  v32 = 0.0;
  v33 = 0.0;
  TXTextObject::getGlowOffset(a1, &v62, &v33, &v32, 1);
  v30 = 1.0;
  v31 = 1.0;
  TXTextObject::getGlowScale(a1, &v62, &v31, &v30, 1);
  v15.f64[0] = v31;
  v15.f64[1] = v30;
  v34 = vmulq_f64(v15, v34);
  v35 = vmulq_f64(v15, v35);
  if (PCMatrix44Tmpl<double>::transformRect<double>(&v41, v34.f64, &v34))
  {
    v16.f64[0] = v33;
    v16.f64[1] = v32;
    v34 = vaddq_f64(v16, v34);
    PCRect<double>::operator|=(a2, &v34);
  }

  v28 = 0uLL;
  v29 = v24;
  TXTextObject::getDropShadowBlur(a1, &v62, &v39, &v38);
  v17.f64[0] = v39;
  PGImaging::gaussianBlurRect(0, v51, &v28, v17);
  v27 = v62;
  DropShadowDistance = TXTextObject::getDropShadowDistance(a1, &v27);
  v27 = v62;
  DropShadowAngle = TXTextObject::getDropShadowAngle(a1, &v27);
  v26 = 1.0;
  v27.value = 0x3FF0000000000000;
  TXTextObject::getDropShadowScale(a1, &v62, &v27.value, &v26, 1);
  *&v19.f64[0] = v27.value;
  v19.f64[1] = v26;
  v28 = vmulq_f64(v19, v28);
  v29 = vmulq_f64(v19, v29);
  if (PCMatrix44Tmpl<double>::transformRect<double>(&v41, v28.f64, &v28))
  {
    v21 = __sincos_stret(DropShadowAngle);
    v20.f64[0] = v21.__cosval;
    v20.f64[1] = v21.__sinval;
    v22 = vaddq_f64(vmulq_n_f64(v20, DropShadowDistance), v28);
    v23 = vsubq_f64(v29, vsubq_f64(v22, v28));
    v28 = v22;
    v29 = v23;
    PCRect<double>::operator|=(a2, &v28);
  }
}

double TXTextObject::getExtrusionDepth(TXTextObject *this, const CMTime *a2)
{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0.0;
  }

  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 68);
  v8 = 0.0;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    OZChannel::getValueAsDouble((v5 + 40648), a2, 0.0);
    v8 = v10;
    if (OZChannelBase::isEnabled((v7 + 51160), 0, 1))
    {
      v14 = *a2;
      OZChannel::setValue((v7 + 51160), &v14, v8, 1);
      v14 = *a2;
      HIDWORD(v11) = HIDWORD(v14.value);
      LODWORD(v11) = *(this + 184);
      OZChannel::getValueAsDouble((v7 + 51160), &v14, v11);
      v8 = v12;
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v8;
}

void sub_25FB29D00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

float TXTextObject::getCapHeight(TXTextObject *this, double a2)
{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0.0;
  }

  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v11 = 0.0;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_18;
  }

  v6 = *(v4 + 520);
  v7 = *(v4 + 528);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v10 = v9[5];
  if (!v10)
  {
LABEL_15:
    v11 = 0.0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = (*(*v10 + 24))(v10, a2);
  if (v7)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_17:
  if (v5)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v11;
}

void sub_25FB29E54(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

float TXTextObject::getXHeight(TXTextObject *this, double a2)
{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0.0;
  }

  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v11 = 0.0;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_18;
  }

  v6 = *(v4 + 520);
  v7 = *(v4 + 528);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v10 = v9[5];
  if (!v10)
  {
LABEL_15:
    v11 = 0.0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = (*(*v10 + 32))(v10, a2);
  if (v7)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_17:
  if (v5)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v11;
}

void sub_25FB29FB4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getBoundingRectForGlyph(TXTextObject *this, double a2)
{
  v2 = *(this + 33);
  if (!v2)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = *(v4 + 520);
    v7 = *(v4 + 528);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v10 = v9[5];
        if (v10)
        {
          (*(*v10 + 64))(&v11, a2);
          if (!v7)
          {
            goto LABEL_17;
          }
        }

        else if (!v7)
        {
          goto LABEL_17;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_17;
      }
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

LABEL_17:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_25FB2A154(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::isOutlineVisible(TXTextObject *this, CMTime *a2, PCWorkingColor *a3, double *a4)
{
  v10 = *a2;
  result = TXTextObject::isOutlineEnabled(this, &v10);
  if (result)
  {
    if (*(this + 68) == -1)
    {
      return 0;
    }

    if (a3)
    {
      v10 = *a2;
      TXTextObject::getOutlineColor(this, &v10, *&v10.value, a3);
      v10 = *a2;
      OutlineWidth = TXTextObject::getOutlineWidth(this, &v10);
      if (a4)
      {
        *a4 = OutlineWidth;
      }

      if (fabs(OutlineWidth) < 0.0000001)
      {
        return 0;
      }

      return fabsf(*(a3 + 3)) >= 0.00001;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t TXTextObject::isGlowVisible(TXTextObject *this, CMTime *a2, PCWorkingColor *a3, double *a4, double *a5)
{
  v15 = *a2;
  result = TXTextObject::isGlowEnabled(this, &v15);
  if (result)
  {
    v13 = 0.0;
    v14 = 0.0;
    v15 = *a2;
    TXTextObject::getGlowScale(this, &v15, &v14, &v13, 1);
    if (fabs(v14) < 0.0000001 || fabs(v13) < 0.0000001)
    {
      return 0;
    }

    if (!a3)
    {
      return 1;
    }

    v15 = *a2;
    TXTextObject::getGlowColor(this, &v15, *&v15.value, a3);
    v11 = 0.0;
    v12 = 0.0;
    v15 = *a2;
    TXTextObject::getGlowBlur(this, &v15, &v12, &v11);
    if (a4)
    {
      *a4 = v12;
    }

    if (a5)
    {
      *a5 = v11;
    }

    return fabsf(*(a3 + 3)) >= 0.00001 && fabs(v12) >= 0.0000001 && fabs(v11) >= 0.0000001;
  }

  return result;
}

uint64_t TXTextObject::isDropShadowVisible(TXTextObject *this, CMTime *a2, PCWorkingColor *a3)
{
  v10 = *a2;
  result = TXTextObject::isDropShadowEnabled(this, &v10);
  if (result)
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = *a2;
    TXTextObject::getDropShadowScale(this, &v10, &v9, &v8, 1);
    if (fabs(v9) >= 0.0000001 && fabs(v8) >= 0.0000001)
    {
      if (a3)
      {
        v10 = *a2;
        HIDWORD(v7) = HIDWORD(v10.value);
        LODWORD(v7) = *(this + 184);
        TXTextObject::getDropShadowColor(this, &v10, v7, a3);
        return fabsf(*(a3 + 3)) >= 0.00001;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double TXTextObject::getAdvanceWidth(TXTextLayout **this, CMTime *a2)
{
  v17 = 0;
  v18 = 0;
  v19 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  memset(v23, 0, sizeof(v23));
  v4 = TXTextObject::syncGlyph(this, a2, &v17);
  v5 = (*(*v4 + 56))(v4, &v17);
  v15 = 1.0;
  v16 = 1.0;
  v14 = 1.0;
  v6 = this[33];
  if (v6)
  {
    v8 = *(v6 + 1);
    v7 = *(v6 + 2);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = 1.0;
  if (TXTextLayout::scaleAffectsLayout(this[68]))
  {
    v13 = *a2;
    OZChannelScale3D::getValue((v8 + 2864), &v13, &v16, &v15, &v14, 0.0);
    XMarginScale = TXTextLayout::getXMarginScale(this[68]);
    v16 = XMarginScale * v16;
    YMarginScale = TXTextLayout::getYMarginScale(this[68]);
    v9 = v16;
    v15 = YMarginScale * v15;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v23[2] == 1 && v20)
  {
    MEMORY[0x2666E9F00](v20, 0x1000C40FF89C88ELL);
  }

  return v5 * v9;
}

void sub_25FB2A630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 == 1)
  {
    if (a18)
    {
      MEMORY[0x2666E9F00](a18, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::computeScaleFactors(OZRenderParams *this, uint64_t a2, float64x2_t *a3, uint64_t a4, double *a5, double *a6)
{
  *a5 = 2.22507386e-308;
  *a6 = 2.22507386e-308;
  v9 = *(*(a2 + 88) + 8) - **(a2 + 88);
  if ((v9 >> 5) >= 1)
  {
    v12 = 0;
    v13 = (v9 >> 5) & 0x7FFFFFFF;
    do
    {
      v14 = **(a2 + 88);
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0;
      getScale(a3, (v14 + v12), &v20);
      v15 = *a5;
      v16 = v21;
      if (*a5 < v20)
      {
        v15 = v20;
      }

      *a5 = v15;
      v17 = *a6;
      if (*a6 < v16)
      {
        v17 = v16;
      }

      *a6 = v17;
      v12 += 32;
      --v13;
    }

    while (v13);
  }

  result = OZRenderParams::getTextRenderQuality(this);
  if (result == 6)
  {
    result = LiRenderingTechnology::getSharpText((this + 1316));
    if (result)
    {
      v19 = *a5;
      if (*a5 < *a6)
      {
        v19 = *a6;
      }

      *a5 = v19;
      *a6 = v19;
    }
  }

  return result;
}

void TXTextObject::getTexture(uint64_t a1@<X0>, OZRenderState *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>)
{
  v34 = 0;
  p_var0 = 0;
  v38 = 0;
  v39 = 1;
  memset(v40, 0, sizeof(v40));
  v35 = a3;
  v36 = a8;
  var0 = a2->var0;
  v14 = TXTextObject::syncGlyph(a1, &var0, &v34);
  if (TXTextLayout::scaleEmojiToCapHeight(v14) && *(a1 + 568) == 1)
  {
    PCMatrix44Tmpl<double>::rightScale(a4, *(*(a1 + 544) + 64192), *(*(a1 + 544) + 64192), 1.0);
  }

  *a7 = 0;
  a7[1] = 0;
  *&var0.var0 = 0x3FF0000000000000uLL;
  var0.var3 = 0;
  v28 = 0;
  v29 = 0x3FF0000000000000;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0x3FF0000000000000;
  if (!PCMatrix44Tmpl<double>::isIdentity(a4))
  {
    TXTextObject::getImageBounds(a1, a2, v26);
    v24 = 0.0;
    v25 = 0.0;
    v23[0] = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v23[1] = _Q0;
    TXTextObject::computeScaleFactors(a2, v26[0].f64, a4, v23, &v25, &v24);
    v21 = v25;
    if (fabs(v25) < 0.0000001)
    {
      goto LABEL_11;
    }

    v22 = v24;
    if (fabs(v24) < 0.0000001)
    {
      goto LABEL_11;
    }

    *&var0.var0 = v25;
    v29 = *&v24;
    p_var0 = &var0;
    *(a4 + 120) = 0x3FF0000000000000;
    *(a4 + 80) = 0x3FF0000000000000;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 104) = 0u;
    *a4 = v21;
    *(a4 + 40) = v22;
  }

  OZRenderParams::getRenderGPU(a2, v26);
  v40[0] = 1;
  *&v40[3] = OZRenderParams::getWorkingColorSpace(a2);
  (*(*v14 + 24))(v23, v14, a5, &v34, a6, a4, v26, 1, 0);
  *a7 = v23[0];
  v15 = p_var0;
  if (p_var0)
  {
    *a4 = p_var0->value;
    *(a4 + 40) = *&v15[1].timescale;
  }

  if (*&v26[0].f64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v26[0].f64[1]);
  }

LABEL_11:
  if (v40[2] == 1)
  {
    if (p_var0)
    {
      MEMORY[0x2666E9F00](p_var0, 0x1000C40FF89C88ELL);
    }
  }
}

void sub_25FB2A9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 - 73) == 1)
  {
    v18 = *(v16 - 88);
    if (v18)
    {
      MEMORY[0x2666E9F00](v18, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(exception_object);
}

HGMetalContext *TXTextObject::getMetalTexture@<X0>(TXTextObject *a1@<X0>, OZRenderState *a2@<X1>, char a3@<W2>, float64x2_t *a4@<X3>, HGGPURenderer *a5@<X4>, __int128 *a6@<X5>, HGMetalContext **a7@<X8>, double a8@<D0>)
{
  TXTextObject::getCacheHashForGlyphBitmap(a1, a2, a3, a4, 0, a8);
  MetalContext = HGGPURenderer::GetMetalContext(a5);
  v37 = *(*(MetalContext + 2) + 16);
  v38 = v39;
  v36 = 0;
  v17 = PGHelium::Instance(MetalContext);
  PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::findValue(*(v17 + 8), &v37, &v36, &v32);
  if ((v36 & 1) == 0)
  {
    TXTextObject::getHGBitmap(a1, a2, a3, a4, a6, 0, &v31, a8);
    v18 = HGGPURenderer::GetMetalContext(a5);
    *&v40.var0 = *(v31 + 28);
    *&v40.var2 = 1;
    HGMetalTexture::createFromBitmap(v18, v31, *(v31 + 20), v40, 1, &v30);
    v19 = v30;
    if (v32 != v30)
    {
      if (v32)
      {
        (*(*v32 + 24))(v32);
        v19 = v30;
      }

      v32 = v19;
      if (v19)
      {
        v19 = (*(*v19 + 16))(v19);
      }
    }

    v20 = a6[1];
    v33 = *a6;
    v34 = v20;
    if (v35 != a4)
    {
      for (i = 0; i != 8; i += 2)
      {
        v22 = &v35[i * 16];
        v23 = a4[i + 1];
        *v22 = a4[i];
        v22[1] = v23;
      }
    }

    v24 = PGHelium::Instance(v19);
    PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::addValue(*(v24 + 8), &v37, &v32, *(v30 + 9));
    if (v30)
    {
      (*(*v30 + 24))(v30);
    }

    if (v31)
    {
      (*(*v31 + 24))(v31);
    }
  }

  if (v35 != a4)
  {
    for (j = 0; j != 8; j += 2)
    {
      f64 = a4[j].f64;
      v27 = *&v35[j * 16 + 16];
      *f64 = *&v35[j * 16];
      f64[1] = v27;
    }
  }

  v28 = v34;
  *a6 = v33;
  a6[1] = v28;
  result = v32;
  *a7 = v32;
  if (result)
  {
    (*(*result + 16))(result);
    result = v32;
    if (v32)
    {
      return (*(*v32 + 24))(v32);
    }
  }

  return result;
}

void sub_25FB2ACF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(va);
  _Unwind_Resume(a1);
}

void TXTextObject::getCacheHashForGlyphBitmap(TXTextObject *a1, OZRenderState *a2, char a3, float64x2_t *a4, int a5, double a6)
{
  TXTextObject::buildGlyphRequest(a1, a2, a3, a4, a5, v10, a6);
  var0 = a2->var0;
  SystemGlyph = TXTextObject::getSystemGlyph(a1, &var0, 0);
  TXCoreTextGlyph::getCacheHashKey(SystemGlyph);
  if (v12 == 1)
  {
    if (v11)
    {
      MEMORY[0x2666E9F00](v11, 0x1000C40FF89C88ELL);
    }
  }
}

void sub_25FB2AE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 == 1)
  {
    if (a16)
    {
      MEMORY[0x2666E9F00](a16, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::getHGBitmap@<X0>(TXTextObject *a1@<X0>, OZRenderState *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>, double a8@<D0>)
{
  TXTextObject::buildGlyphRequest(a1, a2, a3, a4, a6, v16, a8);
  var0 = a2->var0;
  SystemGlyph = TXTextObject::getSystemGlyph(a1, &var0, 0);
  TXCoreTextGlyph::getHGBitmap(SystemGlyph, v16, a5, a7);
  result = v17;
  if (v17)
  {
    if (*v17 != *a4 || *(v17 + 32) != *(a4 + 40))
    {
      *a4 = *v17;
      *(a4 + 40) = *(result + 32);
    }

    if (v18 == 1)
    {
      return MEMORY[0x2666E9F00]();
    }
  }

  return result;
}

void sub_25FB2AF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 == 1)
  {
    if (a16)
    {
      MEMORY[0x2666E9F00](a16, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(exception_object);
}

void PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(PGHelium::MetalTextureCacheEntry *this)
{
  v1 = *this;
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }
}

void TXTextObject::getBitmap(FxColorDescription *this@<X1>, TXTextObject *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, float64x2_t *a6@<X8>, double a7@<D0>)
{
  v45 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 257;
  v51 = 0;
  v46 = a3;
  v47 = a7;
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(this);
  v29 = *&this->_pcColorDesc._colorSpaceRef._obj;
  *&v30 = *&this->_pcColorDesc._toneMapMethod._gain;
  v12 = TXTextObject::syncGlyph(a2, &v29, &v45);
  a6->f64[0] = 0.0;
  a6->f64[1] = 0.0;
  v39[0] = 0x3FF0000000000000;
  memset(&v39[1], 0, 24);
  v40 = 0x3FF0000000000000;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0x3FF0000000000000;
  if (!PCMatrix44Tmpl<double>::isIdentity(a4))
  {
    TXTextObject::getImageBounds(a2, this, v38);
    v37[0] = v38[0];
    v37[1] = v38[1];
    PCMatrix44Tmpl<double>::transformRect<double>(a4, v37, v37);
    v14 = *(a4 + 80);
    v33 = *(a4 + 64);
    v34 = v14;
    v15 = *(a4 + 112);
    v35 = *(a4 + 96);
    v36 = v15;
    v16 = *(a4 + 16);
    v29 = *a4;
    v30 = v16;
    v17 = *(a4 + 48);
    v31 = *(a4 + 32);
    v32 = v17;
    v27 = 0.0;
    v28 = 0.0;
    v25[0] = 0.0;
    v25[1] = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v26 = _Q0;
    TXTextObject::computeScaleFactors(this, v38[0].f64, &v29, v25, &v28, &v27);
    v23 = v28;
    if (fabs(v28) < 0.0000001)
    {
      goto LABEL_6;
    }

    v24 = v27;
    if (fabs(v27) < 0.0000001)
    {
      goto LABEL_6;
    }

    *v39 = v28;
    v40 = *&v27;
    v48 = v39;
    *(a4 + 120) = 0x3FF0000000000000;
    *(a4 + 80) = 0x3FF0000000000000;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 104) = 0u;
    *a4 = v23;
    *(a4 + 40) = v24;
  }

  (*(*v12 + 32))(&v29, v12, a5, &v45, 1, 1);
  *a6 = v29;
  v13 = v48;
  if (v48)
  {
    *a4 = *v48;
    *(a4 + 40) = v13[4];
  }

LABEL_6:
  if (HIBYTE(v51) == 1)
  {
    if (v48)
    {
      MEMORY[0x2666E9F00](v48, 0x1000C40FF89C88ELL);
    }
  }
}

void sub_25FB2B1E4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) == 1)
  {
    v3 = *(v1 - 88);
    if (v3)
    {
      MEMORY[0x2666E9F00](v3, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::getRenderedGlyphTransform@<X0>(TXTextObject *a1@<X0>, OZRenderState *a2@<X1>, float64x2_t *a3@<X2>, double *a4@<X3>, uint64_t a5@<X8>, float64_t a6@<D0>, float64_t a7@<D1>)
{
  v33 = 0;
  v34 = 0;
  v35 = 0x3FF0000000000000;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v22[0] = a2->var0;
  v12 = TXTextObject::syncGlyph(a1, v22, &v33);
  v31 = 0;
  v32 = 0;
  v25[0] = 0x3FF0000000000000;
  memset(&v25[1], 0, 24);
  v26 = 0x3FF0000000000000;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x3FF0000000000000;
  if (!PCMatrix44Tmpl<double>::isIdentity(a3->f64))
  {
    TXTextObject::getImageBounds(a1, a2, v24);
    LiImagePolygon::LiImagePolygon(v22);
    LiImagePolygon::set(v22, v24[0].f64, 0);
    if (a4[2] >= 0.0 && a4[3] >= 0.0)
    {
      liTransformAndClip(a4, a3->f64, v22);
      if (((v23[1] - *v23) & 0x1FFFFFFFE0) == 0)
      {
        v14.f64[0] = a6;
        v14.f64[1] = a7;
        v15 = vaddq_f64(v14, v14);
        v21[0] = vsubq_f64(v24[0], v15);
        v21[1] = vsubq_f64(v24[1], vsubq_f64(vnegq_f64(v15), v15));
        LiImagePolygon::set(v22, v21, 0);
        liTransformAndClip(a4, a3->f64, v22);
        if (((v23[1] - *v23) >> 5) >= 1)
        {
          LiImagePolygon::set(v22, v24[0].f64, 0);
        }
      }
    }

    TXTextObject::computeScaleFactors(a2, v22, a3, v13, &v32, &v31);
    v25[0] = v32;
    v26 = v31;
    v36 = v25;
    LiImagePolygon::~LiImagePolygon(v22);
  }

  result = (*(*v12 + 64))(v12, &v33);
  v17 = *(result + 16);
  *a5 = *result;
  *(a5 + 16) = v17;
  v18 = *(result + 48);
  *(a5 + 32) = *(result + 32);
  *(a5 + 48) = v18;
  *(a5 + 64) = *(result + 64);
  if (HIBYTE(v37) == 1)
  {
    result = v36;
    if (v36)
    {
      return MEMORY[0x2666E9F00](v36, 0x1000C40FF89C88ELL);
    }
  }

  return result;
}

void sub_25FB2B454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  LiImagePolygon::~LiImagePolygon(va);
  if (*(v9 - 73) == 1)
  {
    v11 = *(v9 - 88);
    if (v11)
    {
      MEMORY[0x2666E9F00](v11, 0x1000C40FF89C88ELL);
    }
  }

  _Unwind_Resume(a1);
}

void TXTextObject::getScaleMatrix(TXTextObject *a1, uint64_t a2, CMTime *a3, int a4)
{
  v30 = 0.0;
  v31 = 0.0;
  v29 = 0.0;
  v19 = *a3;
  TXTextObject::getRotation(a1, &v19, &v31, &v30, &v29, 1, a4);
  v27 = 0.0;
  v28 = 0.0;
  v26 = 0;
  (*(*(*(a1 + 68) + 200) + 1312))();
  v23 = 0;
  v24 = 0;
  v25 = 0x3FF0000000000000;
  *&v19.value = v28;
  *&v19.timescale = v28 * 0.0;
  *&v19.epoch = v28 * 0.0;
  v20 = v27 * 0.0;
  v21 = v27;
  v22 = v27 * 0.0;
  v16 = 0;
  v17 = 0;
  v18 = 0x3FF0000000000000;
  v6 = __sincos_stret(v29);
  v10 = v6.__cosval - v6.__sinval * 0.0;
  v11 = v6.__cosval * 0.0 - v6.__sinval;
  v12 = v6.__cosval * 0.0 - v6.__sinval * 0.0;
  v13 = v6.__sinval + v6.__cosval * 0.0;
  v14 = v6.__cosval + v6.__sinval * 0.0;
  v15 = v6.__sinval * 0.0 + v6.__cosval * 0.0;
  v9[6] = 0.0;
  v9[7] = 0.0;
  v9[8] = 1.0;
  v9[0] = v14;
  v9[1] = v13;
  v9[2] = v15;
  v9[3] = v11;
  v9[4] = v10;
  v9[5] = v12;
  PCMatrix33Tmpl<double>::operator*(v9, &v19.value, v7);
  PCMatrix33Tmpl<double>::operator*(v7, &v10, v8);
  PCMatrix33Tmpl<double>::operator=(a2, v8);
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
}

void TXTextObject::getCommonTextureCacheHash(TXTextObject *this, int8x8_t *a2, OZRenderParams *a3, const FxColorDescription *a4, double *a5, double *a6, BOOL a7)
{
  TextRenderQuality = OZRenderParams::getTextRenderQuality(a3);
  v26 = *a3;
  v15 = TXTextObject::syncGlyph(this, &v26, 0);
  v16 = *(v15 + 2);
  v17 = *(this + 33);
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = 0;
  }

  PCHashWriteStream::writeValue(a2, *(v15 + 4));
  PCHashWriteStream::writeValue(a2, *(this + 60));
  RenderQuality = OZRenderParams::getRenderQuality(a3);
  (*(*a2 + 48))(a2, RenderQuality);
  (*(*a2 + 48))(a2, TextRenderQuality);
  if (v16)
  {
  }

  else
  {
    v20 = 0;
  }

  (*(*a2 + 104))(a2, v20 + 112);
  v26 = *a3;
  RenderedFontSize = TXTextObject::getRenderedFontSize(this, &v26, 0.0);
  (*(*a2 + 88))(a2, RenderedFontSize);
  ValueAsInt = OZChannel::getValueAsInt((*(this + 68) + 20720), MEMORY[0x277CC08F0], 0.0);
  (*(*a2 + 48))(a2, ValueAsInt);
  ReducedResolutionMedia = OZRenderParams::getReducedResolutionMedia(a3);
  PCHashWriteStream::writeValue(a2, ReducedResolutionMedia);
  FxHashColorDescription(a2, a4);
  v24 = *(this + 68);
  v26 = *a3;
  HIDWORD(v25) = HIDWORD(v26.value);
  LODWORD(v25) = *(this + 97);
  OZChannel::getValueAsDouble((v24 + 28440), &v26, v25);
  (*(*a2 + 88))(a2);
  if (TextRenderQuality == 2)
  {
    v26.value = 0;
    TXTextObject::getScale(this, a3, a5, a6, &v26.value, 1, 1, 1, 0, 0, a7);
    (*(*a2 + 88))(a2, *a5);
    (*(*a2 + 88))(a2, *a6);
  }

  (*(*a2 + 88))(a2, *(a3 + 3));
  (*(*a2 + 88))(a2, *(a3 + 4));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_25FB2B9C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getScaleAndHashForPixelTransform(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v16 = v15;
  v57[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v57);
  if ((v5 - 2) >= 2)
  {
    if (v5 == 1)
    {
LABEL_17:
      v55 = 0.0;
      v56 = 0.0;
      v44 = *&v13->value;
      epoch = v13->epoch;
      *v48 = *&v13->value;
      *&v48[16] = v13->epoch;
      OutlineWidth = TXTextObject::getOutlineWidth(v14, v48);
      v43 = 0.0;
      TXTextObject::getScale(v14, v13, v11->f64, v9, &v43, 1, 1, 1, 0, 0, 1);
      *v48 = v44;
      *&v48[16] = epoch;
      TXTextObject::getOutlineBlur(v14, v48, &v56, &v55);
      v27 = v7[5];
      v51 = v7[4];
      v52 = v27;
      v28 = v7[7];
      v53 = v7[6];
      v54 = v28;
      v29 = v7[1];
      *v48 = *v7;
      *&v48[16] = v29;
      v30 = v7[3];
      v49 = v7[2];
      v50 = v30;
      TXTextObject::getTextureBounds(v14, v13, 0, v48, 1, 1, &v46, 0.0);
      v31 = v11->f64[0];
      v32 = *v9;
      if (fabs(v11->f64[0]) < 0.0000001)
      {
        v33 = 0.0;
        v34 = 0.0;
      }

      else
      {
        v33 = 0.0;
        v34 = 0.0;
        if (fabs(v32) >= 0.0000001)
        {
          v33 = *v48 / v31;
          if (*v48 / v31 > *(&v49 + 1) / v32)
          {
            v33 = *(&v49 + 1) / v32;
          }

          v34 = v33 * (ceil(OutlineWidth * v33) / (OutlineWidth * v33));
        }
      }

      v35 = vmulq_n_f64(vmulq_n_f64(*v11, v34), OutlineWidth);
      v36 = vaddq_f64(v47, vaddq_f64(v35, v35));
      v47 = v36;
      v37 = v36.f64[1];
      if (v36.f64[0] > 4096.0 || v36.f64[1] > 4096.0)
      {
        if (v36.f64[0] >= v36.f64[1])
        {
          v37 = v36.f64[0];
        }

        v39 = 4096.0 / v37;
        v47 = vmulq_n_f64(v36, v39);
        v40 = v33 * v39;
        v34 = v40 * (floor(OutlineWidth * v40 + 0.0000001) / (OutlineWidth * v40));
        if (v34 <= 0.0)
        {
          v34 = v40 * (ceil(OutlineWidth * v40) / (OutlineWidth * v40));
        }
      }

      v11->f64[0] = v31 * v34;
      *v9 = v34 * *v9;
      PCHashWriteStream::writeValue(v57, v11->f64[0]);
      PCHashWriteStream::writeValue(v57, *v9);
      TXTextObject::getImageBoundsOfAttribute(v14, v46.f64, v13, 1, 1, 0, 1u, 0, 0.0, 0.0, 0.0, 0.0);
      v41.f64[0] = *v9;
      v41.f64[1] = v11->f64[0];
      *v3 = vuzp1q_s32(vcvtq_s64_f64(v46), vcvtq_s64_f64(vmulq_f64(v47, v41)));
      goto LABEL_32;
    }

    if (v5)
    {
      goto LABEL_32;
    }
  }

  *&v44 = 0;
  v56 = 0.0;
  switch(v5)
  {
    case 3:
      *v48 = *&v13->value;
      *&v48[16] = v13->epoch;
      TXTextObject::getDropShadowBlur(v14, v48, &v44, &v56);
      break;
    case 2:
      *v48 = *&v13->value;
      *&v48[16] = v13->epoch;
      TXTextObject::getGlowBlur(v14, v48, &v44, &v56);
      break;
    case 0:
      *v48 = *&v13->value;
      *&v48[16] = v13->epoch;
      TXTextObject::getFaceBlur(v14, v48, &v44, &v56);
      break;
  }

  if (*&v44 > 0.0 || v56 > 0.0)
  {
    v55 = 0.0;
    TXTextObject::getScale(v14, v13, v11->f64, v9, &v55, 1, 1, 1, 0, 0, 1);
    v22 = v7[5];
    v51 = v7[4];
    v52 = v22;
    v23 = v7[7];
    v53 = v7[6];
    v54 = v23;
    v24 = v7[1];
    *v48 = *v7;
    *&v48[16] = v24;
    v25 = v7[3];
    v49 = v7[2];
    v50 = v25;
    TXTextObject::getTextureBounds(v14, v13, 0, v48, 1, 0, &v46, 0.0);
    v26 = *v48 / v11->f64[0];
    if (v26 > *(&v49 + 1) / *v9)
    {
      v26 = *(&v49 + 1) / *v9;
    }

    v11->f64[0] = v11->f64[0] * v26;
    *v9 = *v9 * v26;
    PCHashWriteStream::writeValue(v57, v11->f64[0]);
    PCHashWriteStream::writeValue(v57, *v9);
  }

  else
  {
    v17 = v7[5];
    v51 = v7[4];
    v52 = v17;
    v18 = v7[7];
    v53 = v7[6];
    v54 = v18;
    v19 = v7[1];
    *v48 = *v7;
    *&v48[16] = v19;
    v20 = v7[3];
    v49 = v7[2];
    v50 = v20;
    TXTextObject::getTextureBounds(v14, v13, 0, v48, 1, 0, &v46, 0.0);
    v21 = *(&v49 + 1);
    v11->f64[0] = *v48;
    *v9 = v21;
    PCHashWriteStream::writeValue(v57, v11->f64[0]);
    PCHashWriteStream::writeValue(v57, *v9);
    *v3 = vuzp1q_s32(vcvtq_s64_f64(v46), vcvtq_s64_f64(v47));
  }

  if (v5 == 1)
  {
    goto LABEL_17;
  }

LABEL_32:
  PCHashWriteStream::close(v57);
  *v16 = *PCHashWriteStream::getHash(v57)->i8;
  PCHashWriteStream::~PCHashWriteStream(v57);
}

void TXTextObject::getTextureCacheHashForAttribute(TXTextObject *this, OZRenderParams *a2, const FxColorDescription *a3, unsigned int a4, double *a5, double *a6)
{
  v6 = MEMORY[0x28223BE20](this);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v6;
  v23 = v22;
  v74[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v74);
  TXTextObject::getCommonTextureCacheHash(v21, v74, v20, v18, v14, v12, v8);
  v24 = *(v21 + 264);
  if (v24)
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  __src = *v20;
  if (v10)
  {
    TypeOn = TXTextLayout::getTypeOn(*(v21 + 544), *(v21 + 96), &__src);
    PCHashWriteStream::writeValue(v74, TypeOn);
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        goto LABEL_60;
      }

      v71 = 0.0;
      v72 = 0.0;
      v69 = 0.0;
      TXTextObject::getPivot(v21, &v72, &v71, &v69, &__src, v8);
      v67 = 0.0;
      v68 = 0.0;
      v70 = __src;
      TXTextObject::getDropShadowBlur(v21, &v70, &v68, &v67);
      v65 = 0.0;
      v66 = 0.0;
      v70 = __src;
      TXTextObject::getDropShadowScale(v21, &v70, &v66, &v65, 1);
      ValueAsInt = OZChannel::getValueAsInt((v26 + 13976), MEMORY[0x277CC08F0], 0.0);
      PCHashWriteStream::writeValue(v74, 3);
      PCHashWriteStream::writeValue(v74, v72);
      PCHashWriteStream::writeValue(v74, v71);
      PCHashWriteStream::writeValue(v74, v66);
      PCHashWriteStream::writeValue(v74, v65);
      PCHashWriteStream::writeValue(v74, ValueAsInt);
      v36 = v68;
      PCHashWriteStream::writeValue(v74, v68);
      v37 = v67;
      PCHashWriteStream::writeValue(v74, v67);
      if (v36 > 0.0 || v37 > 0.0)
      {
        v70.value = 0;
        v63 = 0.0;
        v64 = 0.0;
        TXTextObject::getScale(v21, v20, &v70.value, &v64, &v63, 1, 1, 1, 0, 0, 1);
        PCHashWriteStream::writeValue(v74, *&v70.value);
        PCHashWriteStream::writeValue(v74, v64);
      }

      if (ValueAsInt == 1)
      {
        v61 = 15240;
      }

      else
      {
        if (ValueAsInt == 2)
        {
          (*(*(v26 + 16448) + 448))(v26 + 16448, v74, &__src);
          v38 = (*(*v26 + 128))(v26);
          ValueAsUint = OZChannel::getValueAsUint((v26 + 16584), MEMORY[0x277CC08F0], 0.0);
          Node = OZScene::getNode(v38, ValueAsUint);
          if (Node)
          {
            if (v41)
            {
              v70.value = &v70;
              *&v70.timescale = &v70;
              v70.epoch = 0;
              (*(*v41 + 536))(v41, v74, v20, &v70, 1);
              std::__list_imp<unsigned int>::clear(&v70);
            }
          }

          goto LABEL_55;
        }

        if (!v10)
        {
LABEL_55:
          (*(*(v26 + 18040) + 448))(v26 + 18040, v74, &__src);
          goto LABEL_60;
        }

        v61 = 14232;
      }

      (*(*(v26 + v61) + 448))(v26 + v61, v74, &__src);
      goto LABEL_55;
    }

    v50 = *(v21 + 544);
    v71 = 0.0;
    v72 = 0.0;
    v69 = 0.0;
    TXTextObject::getPivot(v21, &v72, &v71, &v69, &__src, v8);
    v67 = 0.0;
    v68 = 0.0;
    v70 = __src;
    TXTextObject::getGlowBlur(v21, &v70, &v68, &v67);
    v65 = 0.0;
    v66 = 0.0;
    v70 = __src;
    TXTextObject::getGlowScale(v21, &v70, &v66, &v65, 1);
    v51 = OZChannel::getValueAsInt((v26 + 31208), MEMORY[0x277CC08F0], 0.0);
    PCHashWriteStream::writeValue(v74, 2);
    PCHashWriteStream::writeValue(v74, v72);
    PCHashWriteStream::writeValue(v74, v71);
    PCHashWriteStream::writeValue(v74, v66);
    PCHashWriteStream::writeValue(v74, v65);
    PCHashWriteStream::writeValue(v74, v51);
    PCHashWriteStream::writeValue(v74, v68);
    PCHashWriteStream::writeValue(v74, v67);
    v70 = __src;
    OZChannel::getValueAsDouble((v26 + 36016), &v70, 0.0);
    v53 = *&v52;
    HIDWORD(v52) = HIDWORD(__src.value);
    v70 = __src;
    LODWORD(v52) = *(v21 + 736);
    GlowRadius = TXSequenceChannels::getGlowRadius((v50 + 25032), &v70, v52);
    PCHashWriteStream::writeValue(v74, v53 + GlowRadius);
    if (v51 == 1)
    {
      v62 = 32472;
    }

    else
    {
      if (v51 == 2)
      {
        (*(*(v26 + 33680) + 448))(v26 + 33680, v74, &__src);
        v55 = (*(*v26 + 128))(v26);
        v56 = OZChannel::getValueAsUint((v26 + 33816), MEMORY[0x277CC08F0], 0.0);
        v57 = OZScene::getNode(v55, v56);
        if (v57)
        {
          if (v58)
          {
            v70.value = &v70;
            *&v70.timescale = &v70;
            v70.epoch = 0;
            (*(*v58 + 536))(v58, v74, v20, &v70, 1);
            std::__list_imp<unsigned int>::clear(&v70);
          }
        }

        goto LABEL_59;
      }

      v62 = 31464;
    }

    (*(*(v26 + v62) + 448))(v26 + v62, v74, &__src);
LABEL_59:
    (*(*(v26 + 35272) + 448))(v26 + 35272, v74, &__src);
    goto LABEL_60;
  }

  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_60;
    }

    v71 = 0.0;
    v72 = 0.0;
    v70 = *v20;
    TXTextObject::getOutlineBlur(v21, &v70, &v72, &v71);
    v70 = __src;
    OutlineWidth = TXTextObject::getOutlineWidth(v21, &v70);
    v29 = OZChannel::getValueAsInt((v26 + 22760), MEMORY[0x277CC08F0], 0.0);
    PCHashWriteStream::writeValue(v74, 1);
    PCHashWriteStream::writeValue(v74, OutlineWidth);
    PCHashWriteStream::writeValue(v74, v29);
    PCHashWriteStream::writeValue(v74, v72);
    PCHashWriteStream::writeValue(v74, v71);
    v30 = OZChannel::getValueAsInt((v26 + 30928), MEMORY[0x277CC08F0], 0.0) != 0;
    PCHashWriteStream::writeValue(v74, v30);
    PCHashWriteStream::writeValue(v74, *(*(v21 + 544) + 64176));
    if (!OZRenderParams::getTextRenderQuality(v20))
    {
      v69 = 0.0;
      v70.value = 0;
      v68 = 0.0;
      TXTextObject::getScale(v21, v20, &v70.value, &v69, &v68, 1, 1, 1, 0, 0, v8);
      PCHashWriteStream::writeValue(v74, *&v70.value);
      PCHashWriteStream::writeValue(v74, v69);
    }

    if (v29 == 1)
    {
      v60 = 24024;
    }

    else
    {
      if (v29 == 2)
      {
        (*(*(v26 + 25232) + 448))(v26 + 25232, v74, &__src);
        v31 = (*(*v26 + 128))(v26);
        v32 = OZChannel::getValueAsUint((v26 + 25368), MEMORY[0x277CC08F0], 0.0);
        v33 = OZScene::getNode(v31, v32);
        if (v33)
        {
          if (v34)
          {
            v70.value = &v70;
            *&v70.timescale = &v70;
            v70.epoch = 0;
            (*(*v34 + 536))(v34, v74, v20, &v70, 1);
            std::__list_imp<unsigned int>::clear(&v70);
          }
        }

        goto LABEL_50;
      }

      if (!v10)
      {
LABEL_50:
        (*(*(v26 + 26824) + 448))(v26 + 26824, v74, &__src);
        goto LABEL_60;
      }

      v60 = 23016;
    }

    (*(*(v26 + v60) + 448))(v26 + v60, v74, &__src);
    goto LABEL_50;
  }

  v71 = 0.0;
  v72 = 0.0;
  v70 = __src;
  TXTextObject::getFaceBlur(v21, &v70, &v72, &v71);
  v42 = OZChannel::getValueAsInt((v26 + 6088), MEMORY[0x277CC08F0], 0.0);
  PCHashWriteStream::writeValue(v74, v42);
  PCHashWriteStream::writeValue(v74, 0);
  PCHashWriteStream::writeValue(v74, v72);
  PCHashWriteStream::writeValue(v74, v71);
  if (v42 == 1)
  {
    v59 = 7352;
LABEL_45:
    (*(*(v26 + v59) + 448))(v26 + v59, v74, &__src);
    goto LABEL_60;
  }

  if (v42 != 2)
  {
    if (!v10)
    {
      goto LABEL_60;
    }

    v59 = 6344;
    goto LABEL_45;
  }

  (*(*(v26 + 8560) + 448))(v26 + 8560, v74, &__src);
  v43 = (*(*v26 + 128))(v26);
  v44 = OZChannel::getValueAsUint((v26 + 8696), MEMORY[0x277CC08F0], 0.0);
  v45 = OZScene::getNode(v43, v44);
  v46 = v45;
  if (v45)
  {
    if (v47)
    {
      v70.value = &v70;
      *&v70.timescale = &v70;
      v70.epoch = 0;
      (*(*v47 + 536))(v47, v74, v20, &v70, 1);
      std::__list_imp<unsigned int>::clear(&v70);
    }

    if (v49 && ((*(*v49 + 1784))(v49) & 1) != 0 || v48 && (*(*v48 + 1376))(v48) >= 2)
    {
      PCHashWriteStream::writeValue(v74, &__src);
    }
  }

LABEL_60:
  *v23 = *PCHashWriteStream::getHash(v74)->i8;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  PCHashWriteStream::~PCHashWriteStream(v74);
}

void sub_25FB2CCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__list_imp<unsigned int>::clear(&a17);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  PCHashWriteStream::~PCHashWriteStream(&a26);
  _Unwind_Resume(a1);
}

double TXSequenceChannels::getGlowRadius(TXSequenceChannels *this, CMTime *a2, double a3)
{
  if (!OZChannelBase::isEnabled((this + 15512), 0, 1))
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 15512), a2, a3);
  return result;
}

void TXTextObject::getCacheHash(TXTextObject *this, OZRenderParams *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v25[520] = *MEMORY[0x277D85DE8];
  TextRenderQuality = OZRenderParams::getTextRenderQuality(v3);
  v22 = *v4;
  v9 = TXTextObject::syncGlyph(v5, &v22, 0);
  v10 = *(v9 + 2);
  v11 = *(v5 + 264);
  if (v11)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  PCHashWriteStream::PCHashWriteStream(v25);
  PCHashWriteStream::writeValue(v25, TextRenderQuality);
  v14 = (*(*v10 + 16))(v10);
  PCHashWriteStream::writeValue(v25, v14);
  PCHashWriteStream::writeValue(v25, *(v9 + 4));
  PCHashWriteStream::writeValue(v25, *(v5 + 120));
  v24[0] = *v4;
  Size = TXTextStyle::getSize(v13, v24, 0.0);
  PCHashWriteStream::writeValue(v25, Size);
  if (TextRenderQuality == 2)
  {
    v24[0].value = 0;
    v23[0] = 0;
    v21 = 0.0;
    TXTextObject::getScale(v5, v4, &v24[0].value, v23, &v21, 1, 1, 1, 0, 0, 1);
    PCHashWriteStream::writeValue(v25, *&v24[0].value);
    PCHashWriteStream::writeValue(v25, *v23);
  }

  v20 = 0.0;
  v21 = 0.0;
  v24[0] = v22;
  TXTextObject::getFaceBlur(v5, v24, &v21, &v20);
  ValueAsInt = OZChannel::getValueAsInt((v13 + 6088), MEMORY[0x277CC08F0], 0.0);
  PCHashWriteStream::writeValue(v25, ValueAsInt);
  PCHashWriteStream::writeValue(v25, v21);
  PCHashWriteStream::writeValue(v25, v20);
  PCHashWriteStream::close(v25);
  PCHashWriteStream::PCHashWriteStream(v24);
  PCHashWriteStream::PCHashWriteStream(v23);
  (*(*(v13 + 7352) + 448))(v13 + 7352, v24, &v22);
  (*(*(v13 + 8560) + 448))(v13 + 8560, v23, &v22);
  Hash = PCHashWriteStream::getHash(v23);
  *v7 = *Hash;
  v7[1] = Hash[1];
  v18 = PCHashWriteStream::getHash(v24);
  PCHash128::operator+=(v7, v18);
  v19 = PCHashWriteStream::getHash(v25);
  PCHash128::operator+=(v7, v19);
  PCHashWriteStream::~PCHashWriteStream(v23);
  PCHashWriteStream::~PCHashWriteStream(v24);
  PCHashWriteStream::~PCHashWriteStream(v25);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_25FB2D190(_Unwind_Exception *a1)
{
  PCHashWriteStream::~PCHashWriteStream(&STACK[0x1080]);
  PCHashWriteStream::~PCHashWriteStream(&STACK[0x20C8]);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t TXTextObject::isOutlineEnabled(TXTextObject *this, CMTime *a2)
{
  v3 = *(this + 33);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 68);
  if ((OZChannelBase::isEnabled((v4 + 22632), 0, 1) & 1) == 0)
  {
    v9 = *a2;
    if ((TXTextLayout::isStyleEnabledBySequenceBehavior(v6, 1011, &v9) & 1) == 0)
    {
      v9 = *a2;
      isStyleEnabledByOldSequenceBehavior = TXTextLayout::isStyleEnabledByOldSequenceBehavior(v6, 1011, &v9);
      if (!v5)
      {
        return isStyleEnabledByOldSequenceBehavior;
      }

      goto LABEL_6;
    }
  }

  isStyleEnabledByOldSequenceBehavior = 1;
  if (v5)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return isStyleEnabledByOldSequenceBehavior;
}

void sub_25FB2D2BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getOutlineColor(TXTextObject *this, CMTime *a2, double a3, PCWorkingColor *a4)
{
  v7 = *(this + 33);
  if (v7)
  {
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(this + 68);
  ValueAsInt = OZChannel::getValueAsInt((v9 + 22760), MEMORY[0x277CC08F0], 0.0);
  PCColor::PCColor(&v27);
  if (ValueAsInt)
  {
    v13 = PCColor::WHITE(v12);
    v14 = *v13;
    v15 = *(v13 + 2);
    *&v27.var0.var1[1] = *(v13 + 1);
    *&v27.var0.var1[3] = v15;
    *&v27.var0.var0 = v14;
    PCCFRef<CGColorSpace *>::operator=(&v27.var1._obj, v13 + 6);
  }

  else
  {
    (*(*(v9 + 23016) + 832))(v9 + 23016, a2, &v27);
    if (OZChannelBase::isEnabled((v10 + 33552), 0, 1))
    {
      v26 = *a2;
      OZChannelColorNoAlpha::setColor((v10 + 33552), &v26, &v27, 1);
      v26 = *a2;
      HIDWORD(v16) = HIDWORD(v26.value);
      LODWORD(v16) = *(this + 184);
      OZChannelColorNoAlpha::getColor((v10 + 33552), &v26, &v27, v16);
    }
  }

  v26 = *a2;
  OZChannel::getValueAsDouble((v9 + 26824), &v26, 0.0);
  v18 = *&v17;
  v26 = *a2;
  HIDWORD(v17) = HIDWORD(v26.value);
  LODWORD(v17) = *(this + 184);
  v19 = v17;
  OZChannel::getValueAsDouble((v10 + 26080), &v26, v17);
  v21 = v20;
  OZChannel::getValueAsDouble((v10 + 34560), &v26, v19);
  v23 = v22;
  TypeOn = TXTextLayout::getTypeOn(*(this + 68), *(this + 24), a2);
  v26 = *a2;
  OZChannel::getValueAsDouble((v10 + 19448), &v26, 0.0);
  *&v25 = v18 * (v21 * v23) * TypeOn * v25;
  PCColor::setAlpha(&v27, *&v25);
  PCWorkingColor::operator=(a4, &v27.var0.var0);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v27.var1._obj);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_25FB2D534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::isGlowEnabled(TXTextObject *this, CMTime *a2)
{
  v3 = *(this + 33);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 68);
  if ((OZChannelBase::isEnabled((v4 + 31080), 0, 1) & 1) == 0)
  {
    v9 = *a2;
    if ((TXTextLayout::isStyleEnabledBySequenceBehavior(v6, 1016, &v9) & 1) == 0)
    {
      v9 = *a2;
      isStyleEnabledByOldSequenceBehavior = TXTextLayout::isStyleEnabledByOldSequenceBehavior(v6, 1016, &v9);
      if (!v5)
      {
        return isStyleEnabledByOldSequenceBehavior;
      }

      goto LABEL_6;
    }
  }

  isStyleEnabledByOldSequenceBehavior = 1;
  if (v5)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return isStyleEnabledByOldSequenceBehavior;
}

void sub_25FB2D62C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::getGlowColor(TXTextObject *this, CMTime *a2, double a3, PCWorkingColor *a4)
{
  v7 = *(this + 33);
  if (v7)
  {
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(this + 68);
  ValueAsInt = OZChannel::getValueAsInt((v9 + 31208), MEMORY[0x277CC08F0], 0.0);
  PCColor::PCColor(&v27);
  if (ValueAsInt)
  {
    v13 = PCColor::WHITE(v12);
    v14 = *v13;
    v15 = *(v13 + 2);
    *&v27.var0.var1[1] = *(v13 + 1);
    *&v27.var0.var1[3] = v15;
    *&v27.var0.var0 = v14;
    PCCFRef<CGColorSpace *>::operator=(&v27.var1._obj, v13 + 6);
  }

  else
  {
    (*(*(v9 + 31464) + 832))(v9 + 31464, a2, &v27);
    if (OZChannelBase::isEnabled((v10 + 38792), 0, 1))
    {
      v26 = *a2;
      OZChannelColorNoAlpha::setColor((v10 + 38792), &v26, &v27, 1);
      v26 = *a2;
      HIDWORD(v16) = HIDWORD(v26.value);
      LODWORD(v16) = *(this + 184);
      OZChannelColorNoAlpha::getColor((v10 + 38792), &v26, &v27, v16);
    }
  }

  v26 = *a2;
  OZChannel::getValueAsDouble((v9 + 35272), &v26, 0.0);
  v18 = *&v17;
  v26 = *a2;
  HIDWORD(v17) = HIDWORD(v26.value);
  LODWORD(v17) = *(this + 184);
  v19 = v17;
  OZChannel::getValueAsDouble((v10 + 26080), &v26, v17);
  v21 = v20;
  OZChannel::getValueAsDouble((v10 + 39800), &v26, v19);
  v23 = v22;
  TypeOn = TXTextLayout::getTypeOn(*(this + 68), *(this + 24), a2);
  v26 = *a2;
  OZChannel::getValueAsDouble((v10 + 19448), &v26, 0.0);
  *&v25 = v18 * (v21 * v23) * TypeOn * v25;
  PCColor::setAlpha(&v27, *&v25);
  PCWorkingColor::operator=(a4, &v27.var0.var0);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v27.var1._obj);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_25FB2D8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::isFaceEnabled(TXTextObject *this, const CMTime *a2)
{
  v3 = *(this + 33);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 68);
  if ((OZChannelBase::isEnabled((v4 + 5960), 0, 1) & 1) == 0)
  {
    v9 = *a2;
    if ((TXTextLayout::isStyleEnabledBySequenceBehavior(v6, 1007, &v9) & 1) == 0)
    {
      v9 = *a2;
      isStyleEnabledByOldSequenceBehavior = TXTextLayout::isStyleEnabledByOldSequenceBehavior(v6, 1007, &v9);
      if (!v5)
      {
        return isStyleEnabledByOldSequenceBehavior;
      }

      goto LABEL_6;
    }
  }

  isStyleEnabledByOldSequenceBehavior = 1;
  if (v5)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return isStyleEnabledByOldSequenceBehavior;
}

void sub_25FB2D99C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextObject::isFaceVisible(TXTextObject *a1, CMTime *a2, __n128 *a3, uint64_t a4, int a5, int a6)
{
  result = TXTextObject::isFaceEnabled(a1, a2);
  if (result)
  {
    if (a3)
    {
      TXTextObject::getFaceColor(a1, a2, a3, a4, a5, a6);
      return fabsf(a3->n128_f32[3]) >= 0.00001;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void TXTextObject::getFaceColor(uint64_t a1, CMTime *a2, __n128 *a3, uint64_t a4, int a5, int a6)
{
  v12 = *(a1 + 264);
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 544);
  ValueAsInt = OZChannel::getValueAsInt((v13 + 6088), MEMORY[0x277CC08F0], 0.0);
  v17 = *(a4 + 16);
  *&v27.var0.var0 = *a4;
  *&v27.var0.var1[1] = v17;
  v18 = *(a4 + 32);
  *&v27.var0.var1[3] = v18;
  v19 = *(a4 + 48);
  v27.var1._obj = v19;
  if (v19)
  {
    v19 = PCCFRefTraits<CGColorSpace *>::retain(v19);
  }

  if (ValueAsInt)
  {
    v20 = PCColor::WHITE(v19);
    v21 = *v20;
    v22 = *(v20 + 2);
    *&v27.var0.var1[1] = *(v20 + 1);
    *&v27.var0.var1[3] = v22;
    *&v27.var0.var0 = v21;
    PCCFRef<CGColorSpace *>::operator=(&v27.var1._obj, v20 + 6);
  }

  else
  {
    LODWORD(v18) = *(a1 + 736);
    (*(*v15 + 728))(v25, v15, a2, a4, v18);
    *&v27.var0.var0 = v25[0];
    *&v27.var0.var1[1] = v25[1];
    *&v27.var0.var1[3] = v25[2];
    v23 = v26;
    if (v27.var1._obj && v27.var1._obj != v26)
    {
      PCCFRefTraits<CGColorSpace *>::release(v27.var1._obj);
      v23 = v26;
    }

    v27.var1._obj = v23;
    v26 = 0;
    PCCFRef<CGColorSpace *>::~PCCFRef(&v26);
  }

  FaceOpacity = TXTextObject::getFaceOpacity(a1, a2);
  PCColor::setAlpha(&v27, FaceOpacity);
  if (OZChannel::getValueAsInt((v15 + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((v15 + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    TXTextObject::setWorkingColor(a1, a3, &v27, a5, a6);
  }

  else
  {
    PCWorkingColor::operator=(a3, &v27.var0.var0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v27.var1._obj);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_25FB2DC3C(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v2 + 48));
  PCCFRef<CGColorSpace *>::~PCCFRef((v3 + 48));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t TXTextObject::isDropShadowEnabled(TXTextObject *this, CMTime *a2)
{
  v3 = *(this + 33);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 68);
  if ((OZChannelBase::isEnabled((v4 + 13848), 0, 1) & 1) == 0)
  {
    v9 = *a2;
    isStyleEnabledBySequenceBehavior = TXTextLayout::isStyleEnabledBySequenceBehavior(v6, 1020, &v9);
    if (!v5)
    {
      return isStyleEnabledBySequenceBehavior;
    }

    goto LABEL_5;
  }

  isStyleEnabledBySequenceBehavior = 1;
  if (v5)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return isStyleEnabledBySequenceBehavior;
}

void sub_25FB2DD24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

CGColorSpace **TXTextObject::getDropShadowColor(TXTextObject *this, CMTime *a2, double a3, PCWorkingColor *a4)
{
  PCColor::PCColor(&v9);
  v8 = *a2;
  TXTextObject::getDropShadowColor(this, &v8, *&v8.value, &v9);
  PCWorkingColor::operator=(a4, &v9.var0.var0);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v9.var1._obj);
}

uint64_t TXTextObject::isColorAnimated(TXTextObject *this, TXSequenceChannels *a2)
{
  v3 = *(this + 33);
  if (v3)
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(this + 68);
  FillType = TXTextStyle::getFillType(v5, a2);
  ColorChannelID = TXSequenceChannels::getColorChannelID(a2);
  ColorChannel = TXTextStyle::getColorChannel(v5, a2);
  if (FillType)
  {
    goto LABEL_6;
  }

  v11 = ColorChannel;
  if (((*(*ColorChannel + 552))(ColorChannel, 0) & 1) == 0 && (OZBehavior::IsChannelAffectedByBehaviors((v11 + 136), 0) & 1) == 0 && (OZBehavior::IsChannelAffectedByBehaviors((v11 + 288), 0) & 1) == 0 && (OZBehavior::IsChannelAffectedByBehaviors((v11 + 440), 0) & 1) == 0)
  {
    v13 = v6 + 1200;
    v14 = *(v6 + 1208);
    if (v14 == v6 + 1200)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_12;
    }

    while (1)
    {
      v15 = *(v14 + 16);
      if (v15)
      {
        if (v16)
        {
          if ((*(*v16 + 616))(v16, ColorChannelID, 0, 0))
          {
            break;
          }
        }

        if (v17 && TXTextSequenceBehavior::isChannelEnabled(v17, ColorChannelID))
        {
          break;
        }
      }

      v10 = 0;
      v14 = *(v14 + 8);
      if (v14 == v13)
      {
        goto LABEL_12;
      }
    }
  }

  v10 = 1;
LABEL_12:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v10;
}

void sub_25FB2DFE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextObject::setWorkingColor(uint64_t a1, __n128 *a2, PCColor *this, int a4, int a5)
{
  v10 = TXTextLayout::workingColorFromColor(*(a1 + 544), this, a2, a5, a4);
  if (!v10)
  {
    PCWorkingColor::operator=(a2, &this->var0.var0);
    TXTextLayout::cacheColorConversion(*(a1 + 544), this, a2, a5, a4);
  }

  PCWorkingColor::operator=(a2, v10);
  a2->n128_f32[3] = PCColor::getAlpha(this);
}

void TXTextObject::getFaceColor(TXTextObject *this, CMTime *a2, double a3, PCColorSpaceCache **a4)
{
  v7 = *(this + 33);
  if (v7)
  {
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  PCColor::PCColor(&v15);
  (*(*(v9 + 6344) + 832))(v9 + 6344, a2, &v15);
  v11 = PCColorSpaceCache::identifyColorSpace(a4[2], v10);
  CGColorSpace = PCColor::getCGColorSpace(&v15);
  v14 = PCColorSpaceCache::identifyColorSpace(CGColorSpace, v13);
  TXTextObject::getFaceColor(this, a2, a4, &v15, v11, v14);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_25FB2E1AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextObject::getFaceOpacity(TXTextObject *this, CMTime *a2)
{
  v4 = *(this + 33);
  if (v4)
  {
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(this + 68);
  v18 = *a2;
  OZChannel::getValueAsDouble((v6 + 10152), &v18, 0.0);
  v9 = v8;
  TypeOn = TXTextLayout::getTypeOn(*(this + 68), *(this + 24), a2);
  isEnabled = OZChannelBase::isEnabled((v6 + 5960), 0, 1);
  LODWORD(v12) = *(this + 184);
  v13 = (*(*v7 + 736))(v7, v7 + 26080, v7 + 29728, a2, v9, v12);
  v18 = *a2;
  OZChannel::getValueAsDouble((v7 + 19448), &v18, 0.0);
  v15 = v14;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v16 = v9 * TypeOn;
  if (!isEnabled)
  {
    v16 = TypeOn;
  }

  return v16 * v13 * v15;
}

void sub_25FB2E33C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXSequenceChannels::getFaceBlur(TXSequenceChannels *this, CMTime *a2, double *a3, double *a4, double a5)
{
  if (!OZChannelBase::isEnabled((this + 4848), 0, 1))
  {
    *a3 = 0.0;
    v11 = 0;
    goto LABEL_7;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 4984), a2, a5);
    *a3 = v10;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 5136), a2, a5);
LABEL_7:
    *a4 = v11;
  }
}

unint64_t TXSequenceChannels::getOutlineWidth(TXSequenceChannels *this, CMTime *a2, double a3)
{
  result = OZChannelBase::isEnabled((this + 10272), 0, 1);
  if (result)
  {

    return OZChannel::getValueAsInt((this + 10272), a2, a3);
  }

  return result;
}

void TXSequenceChannels::getOutlineBlur(TXSequenceChannels *this, CMTime *a2, double *a3, double *a4, double a5)
{
  if (!OZChannelBase::isEnabled((this + 9680), 0, 1))
  {
    *a3 = 0.0;
    v11 = 0;
    goto LABEL_7;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 9816), a2, a5);
    *a3 = v10;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 9968), a2, a5);
LABEL_7:
    *a4 = v11;
  }
}

void TXSequenceChannels::getGlowBlur(TXSequenceChannels *this, CMTime *a2, double *a3, double *a4, double a5)
{
  if (!OZChannelBase::isEnabled((this + 14920), 0, 1))
  {
    *a3 = 0.0;
    v11 = 0;
    goto LABEL_7;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 15056), a2, a5);
    *a3 = v10;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 15208), a2, a5);
LABEL_7:
    *a4 = v11;
  }
}

void TXTextObject::getGlowRadius(TXTextObject *this, CMTime *a2, double *a3)
{
  v6 = *(this + 33);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(this + 68);
  v12 = *a2;
  OZChannel::getValueAsDouble((v7 + 36016), &v12, 0.0);
  v11 = *&v10;
  v12 = *a2;
  HIDWORD(v10) = HIDWORD(v12.value);
  LODWORD(v10) = *(this + 184);
  *a3 = v11 + TXSequenceChannels::getGlowRadius((v9 + 25032), &v12, v10);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_25FB2E674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXSequenceChannels::getDropShadowBlur(TXSequenceChannels *this, CMTime *a2, double *a3, double *a4, double a5)
{
  if (!OZChannelBase::isEnabled((this + 21304), 0, 1))
  {
    *a3 = 0.0;
    v11 = 0;
    goto LABEL_7;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 21440), a2, a5);
    *a3 = v10;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 21592), a2, a5);
LABEL_7:
    *a4 = v11;
  }
}

double TXSequenceChannels::getDropShadowDistance(TXSequenceChannels *this, CMTime *a2, double a3)
{
  if (!OZChannelBase::isEnabled((this + 22336), 0, 1))
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 22336), a2, a3);
  return result;
}

double TXSequenceChannels::getDropShadowAngle(TXSequenceChannels *this, CMTime *a2, double a3)
{
  if (!OZChannelBase::isEnabled((this + 22488), 0, 1))
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 22488), a2, a3);
  return result;
}

void TXTextObject::getDropShadowColor(TXTextObject *this, CMTime *a2, double a3, PCColor *a4)
{
  v7 = *(this + 33);
  if (v7)
  {
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(this + 68);
  ValueAsInt = OZChannel::getValueAsInt((v9 + 13976), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt)
  {
    v12 = PCColor::WHITE(ValueAsInt);
    v13 = *v12;
    v14 = *(v12 + 2);
    *&a4->var0.var1[1] = *(v12 + 1);
    *&a4->var0.var1[3] = v14;
    *&a4->var0.var0 = v13;
    PCCFRef<CGColorSpace *>::operator=(&a4->var1._obj, v12 + 6);
  }

  else
  {
    (*(*(v9 + 14232) + 832))(v9 + 14232, a2, a4);
    if (OZChannelBase::isEnabled((v10 + 45176), 0, 1))
    {
      v17 = *a2;
      OZChannelColorNoAlpha::setColor((v10 + 45176), &v17, a4, 1);
      v17 = *a2;
      HIDWORD(v15) = HIDWORD(v17.value);
      LODWORD(v15) = *(this + 184);
      OZChannelColorNoAlpha::getColor((v10 + 45176), &v17, a4, v15);
    }
  }

  DropShadowOpacity = TXTextObject::getDropShadowOpacity(this, a2);
  PCColor::setAlpha(a4, DropShadowOpacity);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_25FB2E9A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextObject::getDropShadowOpacity(TXTextObject *this, CMTime *a2)
{
  v4 = *(this + 33);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  OZChannel::getValueAsDouble((v5 + 18040), &v13, 0.0);
  v7 = *(this + 68);
  v8 = (*(*v7 + 736))(v7, v7 + 26080, v7 + 46184, a2);
  TypeOn = TXTextLayout::getTypeOn(*(this + 68), *(this + 24), a2);
  v13 = *a2;
  OZChannel::getValueAsDouble((v7 + 19448), &v13, 0.0);
  v11 = v10;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v8 * TypeOn * v11;
}