uint64_t std::vector<TSWPAdornments>::__emplace_back_slow_path<TSWPAdornments const&>(uint64_t a1, const TSWPAdornments *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPAdornments>>(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  TSWPAdornments::TSWPAdornments((200 * v2), a2);
  v15 = 200 * v2 + 200;
  v7 = *(a1 + 8);
  v8 = (200 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPAdornments>,TSWPAdornments*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<TSWPAdornments>::~__split_buffer(&v13);
  return v12;
}

void sub_26C988044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TSWPAdornments>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TSWPAdornments::TSWPAdornments(TSWPAdornments *this, const TSWPAdornments *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 1);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<CGRect>::__init_with_size[abi:ne200100]<CGRect*,CGRect*>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 5);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(this + 104, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 4);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<TSWPAttachmentPosition>::__init_with_size[abi:ne200100]<TSWPAttachmentPosition*,TSWPAttachmentPosition*>(this + 128, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 4);
  *(this + 152) = *(a2 + 152);
  *(this + 21) = *(a2 + 21);
  *(this + 11) = *(a2 + 11);
  *(this + 192) = *(a2 + 192);
  CGColorRetain(*(this + 2));
  v4 = *(this + 3);
  if (v4)
  {
    CFRetain(v4);
  }
}

void sub_26C988188(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[14] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[11] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[8] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[5] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C988264(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CGRect>::__init_with_size[abi:ne200100]<CGRect*,CGRect*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::polygon::segment_data<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C9882E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<TSWPAttachmentPosition>::__init_with_size[abi:ne200100]<TSWPAttachmentPosition*,TSWPAttachmentPosition*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C98835C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPAdornments>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPAdornments>,TSWPAdornments*>(int a1, CGColorRef *a2, TSWPAdornments *a3, TSWPAdornments *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      TSWPAdornments::TSWPAdornments(this, v8);
      v8 = (v8 + 200);
      this = (this + 200);
      v7 -= 200;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      TSWPAdornments::~TSWPAdornments(v6);
      v6 += 25;
    }
  }
}

void sub_26C988454(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 200);
    do
    {
      TSWPAdornments::~TSWPAdornments(v4);
      v4 = (v5 - 200);
      v2 += 200;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<TSWPAdornments>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 200;
    TSWPAdornments::~TSWPAdornments((i - 200));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZL19TSWPPlaceholderFontv_block_invoke()
{
  if (!TSWPPlaceholderFont(void)::placeholderFont)
  {
    TSWPPlaceholderFont(void)::placeholderFont = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 1.0, 0);
  }
}

uint64_t ___ZL17iOSIsGreaterThan7v_block_invoke()
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  iOSIsGreaterThan7(void)::result = result == 1;
  return result;
}

void std::shared_ptr<TSWPParagraphTypesetter>::shared_ptr[abi:ne200100]<TSWPParagraphTypesetter,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26C9885C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TSWPParagraphTypesetter>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

TSWPParagraphTypesetter **std::unique_ptr<TSWPParagraphTypesetter>::~unique_ptr[abi:ne200100](TSWPParagraphTypesetter **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TSWPParagraphTypesetter::~TSWPParagraphTypesetter(v2);
    MEMORY[0x26D6A9A30]();
  }

  return a1;
}

void std::__shared_ptr_pointer<TSWPParagraphTypesetter *,std::shared_ptr<TSWPParagraphTypesetter>::__shared_ptr_default_delete<TSWPParagraphTypesetter,TSWPParagraphTypesetter>,std::allocator<TSWPParagraphTypesetter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6A9A30);
}

TSWPParagraphTypesetter *std::__shared_ptr_pointer<TSWPParagraphTypesetter *,std::shared_ptr<TSWPParagraphTypesetter>::__shared_ptr_default_delete<TSWPParagraphTypesetter,TSWPParagraphTypesetter>,std::allocator<TSWPParagraphTypesetter>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    TSWPParagraphTypesetter::~TSWPParagraphTypesetter(result);

    JUMPOUT(0x26D6A9A30);
  }

  return result;
}

void std::vector<TSWPAdornmentLine>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<TSWPAdornmentLine>>::destroy[abi:ne200100]<TSWPAdornmentLine,0>(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<TSWPUIAttachmentData>::__emplace_back_slow_path<TSWPUIAttachmentData const&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPUIAttachmentData>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::allocator_traits<std::allocator<TSWPUIAttachmentData>>::construct[abi:ne200100]<TSWPUIAttachmentData,TSWPUIAttachmentData const&,0>(a1, 32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TSWPUIAttachmentData>::~__split_buffer(&v14);
  return v13;
}

void sub_26C9887FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TSWPUIAttachmentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id std::allocator_traits<std::allocator<TSWPUIAttachmentData>>::construct[abi:ne200100]<TSWPUIAttachmentData,TSWPUIAttachmentData const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  if (v4)
  {
  }

  else
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSWPUIAttachmentData::TSWPUIAttachmentData(const TSWPUIAttachmentData &)"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.h"), 65, @"invalid nil value for '%s'", "_attachment"}];
    v4 = *a2;
  }

  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPUIAttachmentData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*>(uint64_t a1, id *a2, id *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<TSWPUIAttachmentData>>::construct[abi:ne200100]<TSWPUIAttachmentData,TSWPUIAttachmentData const&,0>(a1, a4, v7);
      v7 += 32;
      a4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
  }

  v10 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*,TSWPUIAttachmentData*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*,TSWPUIAttachmentData*>(uint64_t a1, id *a2, id *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TSWPUIAttachmentData>,TSWPUIAttachmentData*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    v1 -= 32;
  }
}

uint64_t std::__split_buffer<TSWPUIAttachmentData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TSWPUIAttachmentData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TSWPUIAttachmentData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v4 - 32);
    *(a1 + 16) = v4 - 32;
  }
}

void *std::vector<CGPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26C988B78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CGSize>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26C988BF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPCoreTextTypesetter::pNumberedListLabel()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSWPCoreTextTypesetter::pNumberedListLabel(const TSWPLayoutState *, TSWPParagraphEnumerator, TSWPParagraphLevel, BOOL)"}];
  return [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 1843, @"Out-of-bounds type assignment was clamped to max"}];
}

BOOL isUpwardFacingCJKCharacterInVerticalMode(UChar32 a1)
{
  IntPropertyValue = u_getIntPropertyValue(a1, UCHAR_SCRIPT);
  result = 1;
  if (IntPropertyValue > 0x36 || ((1 << IntPropertyValue) & 0x40020008560020) == 0)
  {
    v4 = IntPropertyValue - 73;
    if (v4 > 0x3A || ((1 << v4) & 0x400400100000003) == 0)
    {
      Code = ublock_getCode(a1);
      result = 0;
      switch(Code)
      {
        case UBLOCK_ARROWS:
        case UBLOCK_ENCLOSED_ALPHANUMERICS:
        case UBLOCK_BOX_DRAWING:
        case UBLOCK_BLOCK_ELEMENTS:
        case UBLOCK_GEOMETRIC_SHAPES:
        case UBLOCK_MISCELLANEOUS_SYMBOLS:
        case UBLOCK_DINGBATS:
        case UBLOCK_CJK_RADICALS_SUPPLEMENT:
        case UBLOCK_CJK_SYMBOLS_AND_PUNCTUATION:
        case UBLOCK_HIRAGANA:
        case UBLOCK_KATAKANA:
        case UBLOCK_BOPOMOFO:
        case UBLOCK_HANGUL_COMPATIBILITY_JAMO:
        case UBLOCK_BOPOMOFO_EXTENDED:
        case UBLOCK_ENCLOSED_CJK_LETTERS_AND_MONTHS:
        case UBLOCK_CJK_COMPATIBILITY:
        case UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:
        case UBLOCK_CJK_UNIFIED_IDEOGRAPHS:
        case UBLOCK_YI_SYLLABLES:
        case UBLOCK_YI_RADICALS:
        case UBLOCK_HANGUL_SYLLABLES:
        case UBLOCK_LOW_SURROGATES:
        case UBLOCK_CJK_COMPATIBILITY_IDEOGRAPHS:
        case UBLOCK_CJK_COMPATIBILITY_FORMS:
        case UBLOCK_HALFWIDTH_AND_FULLWIDTH_FORMS:
        case UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:
        case UBLOCK_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:
        case UBLOCK_SUPPLEMENTAL_ARROWS_A:
        case UBLOCK_SUPPLEMENTAL_ARROWS_B:
        case UBLOCK_KATAKANA_PHONETIC_EXTENSIONS:
        case UBLOCK_MISCELLANEOUS_SYMBOLS_AND_ARROWS:
        case UBLOCK_TAI_XUAN_JING_SYMBOLS:
          goto LABEL_7;
        case UBLOCK_MATHEMATICAL_OPERATORS:
        case UBLOCK_MISCELLANEOUS_TECHNICAL:
        case UBLOCK_CONTROL_PICTURES:
        case UBLOCK_OPTICAL_CHARACTER_RECOGNITION:
        case UBLOCK_BRAILLE_PATTERNS:
        case UBLOCK_KANGXI_RADICALS:
        case UBLOCK_IDEOGRAPHIC_DESCRIPTION_CHARACTERS:
        case UBLOCK_KANBUN:
        case UBLOCK_HIGH_SURROGATES:
        case UBLOCK_HIGH_PRIVATE_USE_SURROGATES:
        case UBLOCK_PRIVATE_USE_AREA:
        case UBLOCK_ALPHABETIC_PRESENTATION_FORMS:
        case UBLOCK_ARABIC_PRESENTATION_FORMS_A:
        case UBLOCK_COMBINING_HALF_MARKS:
        case UBLOCK_SMALL_FORM_VARIANTS:
        case UBLOCK_ARABIC_PRESENTATION_FORMS_B:
        case UBLOCK_SPECIALS:
        case UBLOCK_OLD_ITALIC:
        case UBLOCK_GOTHIC:
        case UBLOCK_DESERET:
        case UBLOCK_BYZANTINE_MUSICAL_SYMBOLS:
        case UBLOCK_MUSICAL_SYMBOLS:
        case UBLOCK_MATHEMATICAL_ALPHANUMERIC_SYMBOLS:
        case UBLOCK_TAGS:
        case UBLOCK_CYRILLIC_SUPPLEMENT:
        case UBLOCK_TAGALOG:
        case UBLOCK_HANUNOO:
        case UBLOCK_BUHID:
        case UBLOCK_TAGBANWA:
        case UBLOCK_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A:
        case UBLOCK_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B:
        case UBLOCK_SUPPLEMENTAL_MATHEMATICAL_OPERATORS:
        case UBLOCK_VARIATION_SELECTORS:
        case UBLOCK_SUPPLEMENTARY_PRIVATE_USE_AREA_A:
        case UBLOCK_SUPPLEMENTARY_PRIVATE_USE_AREA_B:
        case UBLOCK_LIMBU:
        case UBLOCK_TAI_LE:
        case UBLOCK_KHMER_SYMBOLS:
        case UBLOCK_PHONETIC_EXTENSIONS:
        case UBLOCK_YIJING_HEXAGRAM_SYMBOLS:
        case UBLOCK_LINEAR_B_SYLLABARY:
        case UBLOCK_LINEAR_B_IDEOGRAMS:
        case UBLOCK_AEGEAN_NUMBERS:
        case UBLOCK_UGARITIC:
        case UBLOCK_SHAVIAN:
        case UBLOCK_OSMANYA:
        case UBLOCK_CYPRIOT_SYLLABARY:
          return result;
        default:
          if ((Code - 145) <= 0x1A && ((1 << (Code + 111)) & 0x6000201) != 0 || Code == UBLOCK_MONGOLIAN)
          {
LABEL_7:
            result = a1 != 12540 && a1 != 65392;
          }

          break;
      }
    }
  }

  return result;
}

uint64_t TSWPIsPotentialTateChuYokoCharacter(uint64_t a1)
{
  if (TSWPIsPotentialTateChuYokoCharacter::s_predicate != -1)
  {
    TSWPIsPotentialTateChuYokoCharacter_cold_1();
  }

  v2 = TSWPIsPotentialTateChuYokoCharacter::_tateChuYokoCharacterSet;

  return [v2 longCharacterIsMember:a1];
}

uint64_t __TSWPIsPotentialTateChuYokoCharacter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  [v0 addCharactersInRange:{48, 10}];
  [v0 addCharactersInRange:{65296, 10}];
  [v0 addCharactersInRange:{8352, 18}];
  [v0 addCharactersInRange:{36, 1}];
  [v0 addCharactersInRange:{162, 1}];
  [v0 addCharactersInRange:{163, 1}];
  [v0 addCharactersInRange:{164, 1}];
  [v0 addCharactersInRange:{165, 1}];
  [v0 addCharactersInRange:{2546, 1}];
  [v0 addCharactersInRange:{2547, 1}];
  [v0 addCharactersInRange:{3647, 1}];
  [v0 addCharactersInRange:{6107, 1}];
  [v0 addCharactersInRange:{65020, 1}];
  [v0 addCharactersInRange:{46, 1}];
  [v0 addCharactersInRange:{44, 1}];
  [v0 addCharactersInRange:{39, 1}];
  [v0 addCharactersInRange:{45, 1}];
  [v0 addCharactersInRange:{47, 1}];
  [v0 addCharactersInRange:{40, 1}];
  [v0 addCharactersInRange:{41, 1}];
  [v0 addCharactersInRange:{123, 1}];
  [v0 addCharactersInRange:{125, 1}];
  [v0 addCharactersInRange:{91, 1}];
  result = [v0 addCharactersInRange:{93, 1}];
  TSWPIsPotentialTateChuYokoCharacter::_tateChuYokoCharacterSet = v0;
  return result;
}

uint64_t TSWPNormalWidthCharacterForCharacter(uint64_t result)
{
  if ((result - 65296) < 0xA)
  {
    goto LABEL_2;
  }

  if (result > 65504)
  {
    if (result == 65505)
    {
      LOWORD(result) = 163;
    }

    else if (result == 65509)
    {
      LOWORD(result) = 165;
    }
  }

  else
  {
    if (result == 65284)
    {
LABEL_2:
      LOWORD(result) = result + 288;
      return result;
    }

    if (result == 65504)
    {
      LOWORD(result) = 162;
    }
  }

  return result;
}

uint64_t TSWPFullWidthCharacterForCharacter(uint64_t result)
{
  if ((result - 48) < 0xA)
  {
    goto LABEL_2;
  }

  if (result > 162)
  {
    if (result == 163)
    {
      LOWORD(result) = -31;
    }

    else if (result == 165)
    {
      LOWORD(result) = -27;
    }
  }

  else
  {
    if (result == 36)
    {
LABEL_2:
      LOWORD(result) = result - 288;
      return result;
    }

    if (result == 162)
    {
      LOWORD(result) = -32;
    }
  }

  return result;
}

void TSWPFillVerticalFacingRangesFromBuffer(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    v6 = 0;
    for (i = 0; i < a2; v6 = i)
    {
      v8 = *(a1 + 2 * v6);
      v9 = v8 & 0xFC00;
      v11 = v9 == 55296 || v9 == 56320;
      v12 = i + 1;
      if (v12 >= a2 || !v11)
      {
        ++i;
      }

      else
      {
        v14 = *(a1 + 2 * v12);
        v15 = v9 == 55296;
        if (v9 == 55296)
        {
          v16 = *(a1 + 2 * v6);
        }

        else
        {
          v16 = v14;
        }

        if (!v15)
        {
          v14 = *(a1 + 2 * v6);
        }

        v8 = (v14 + (v16 << 10) - 56613888);
        i += 2;
      }

      if (isUpwardFacingCJKCharacterInVerticalMode(v8))
      {
        v17 = 1;
      }

      else
      {
        v17 = TSWPIsPotentialTateChuYokoCharacter(v8);
      }

      v18 = a3[1];
      if (v18 == *a3)
      {
        v19 = 0uLL;
        v20 = v17;
        std::vector<TSWPVerticalFacingRange>::push_back[abi:nn200100](a3, &v19);
        v18 = a3[1];
      }

      if (*(v18 - 8) == v17)
      {
        *(v18 - 16) = i - *(v18 - 24);
      }

      else
      {
        *&v19 = v6;
        *(&v19 + 1) = i - v6;
        v20 = v17;
        std::vector<TSWPVerticalFacingRange>::push_back[abi:nn200100](a3, &v19);
      }
    }
  }
}

void std::vector<TSWPVerticalFacingRange>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPVerticalFacingRange>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t TSWPScriptForCharacter(UChar32 a1)
{
  Code = ublock_getCode(a1);
  result = 0;
  if (Code > UBLOCK_KATAKANA)
  {
    if (Code > UBLOCK_YI_RADICALS)
    {
      if (Code > UBLOCK_BALINESE)
      {
        if ((Code - 148) > 1)
        {
          return result;
        }

        return 2;
      }

      if (Code == UBLOCK_HANGUL_SYLLABLES)
      {
        return 10;
      }

      if (Code != UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B)
      {
        if (Code != UBLOCK_KATAKANA_PHONETIC_EXTENSIONS)
        {
          return result;
        }

        return 4;
      }
    }

    else
    {
      if (Code <= UBLOCK_CJK_COMPATIBILITY)
      {
        if (Code != UBLOCK_BOPOMOFO)
        {
          if (Code == UBLOCK_HANGUL_COMPATIBILITY_JAMO)
          {
            return 10;
          }

          if (Code != UBLOCK_BOPOMOFO_EXTENDED)
          {
            return result;
          }
        }

        return 5;
      }

      if ((Code - 70) >= 2)
      {
        return result;
      }
    }

    return 6;
  }

  if (Code <= UBLOCK_HEBREW)
  {
    if ((Code - 1) >= 4)
    {
      if (Code == UBLOCK_HEBREW)
      {
        v3 = 8;
      }

      else
      {
        v3 = 0;
      }

      if (Code == UBLOCK_CYRILLIC)
      {
        return 9;
      }

      else
      {
        return v3;
      }
    }

    return 2;
  }

  if (Code <= UBLOCK_MONGOLIAN)
  {
    if (Code == UBLOCK_ARABIC)
    {
      return 7;
    }

    if (Code != UBLOCK_HANGUL_JAMO)
    {
      return result;
    }

    return 10;
  }

  switch(Code)
  {
    case UBLOCK_LATIN_EXTENDED_ADDITIONAL:
      return 2;
    case UBLOCK_HIRAGANA:
      return 3;
    case UBLOCK_KATAKANA:
      return 4;
  }

  return result;
}

uint64_t TSWPForegroundInit()
{
  result = [MEMORY[0x277CCACC8] isMainThread];
  if ((result & 1) == 0)
  {
    v1 = [MEMORY[0x277D6C290] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPForegroundInit()"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"];

    return [v1 handleFailureInFunction:v2 file:v3 lineNumber:427 description:@"TSWPForegroundInit should be called on the main thread"];
  }

  return result;
}

uint64_t TSWPBackgroundInit()
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v0 = [MEMORY[0x277D6C290] currentHandler];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPBackgroundInit()"];
    [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 442, @"TSWPBackgroundInit should be called on a background thread"}];
  }

  v2 = +[TSWPLoadableFonts sharedInstance];

  return [(TSWPLoadableFonts *)v2 backgroundLoadAll];
}

BOOL TSWPFontNameIsValid(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = TSWPCreateFontWithNameAttributesAndWeight(a1, 0, 12.0, *MEMORY[0x277D74418]);
    if (v2)
    {
      v3 = v2;
      v4 = CTFontCopyPostScriptName(v2);
      if (v4)
      {
        v5 = v4;
        v1 = CFEqual(v1, v4) != 0;
        CFRelease(v3);
        v3 = v5;
      }

      else
      {
        v1 = 0;
      }

      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

const __CTFont *TSWPCreateFontWithFamilyName(uint64_t a1, int a2, int a3, CGFloat a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | a3;
  v12 = *MEMORY[0x277CC48B8];
  v13[0] = a1;
  v7 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1]);
  v8 = CTFontCreateWithFontDescriptor(v7, a4, 0);
  CFRelease(v7);
  if ((CTFontGetSymbolicTraits(v8) & 3) != v6)
  {
    if (v8)
    {
      CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v8, a4, 0, v6, 3u);
      if (CopyWithSymbolicTraits)
      {
        v10 = CopyWithSymbolicTraits;
        CFRelease(v8);
        return v10;
      }
    }
  }

  return v8;
}

uint64_t TSWPCreateUIFontWithName(uint64_t result, double a2)
{
  if (result)
  {
    v3 = result;
    [+[TSWPLoadableFonts sharedInstance](TSWPLoadableFonts loadFontWithName:"loadFontWithName:", result];
    v4 = MEMORY[0x277D74300];

    return [v4 fontWithName:v3 size:a2];
  }

  return result;
}

uint64_t TSWPCreateFontWithNameAttributesAndWeight(uint64_t result, uint64_t a2, double a3, double a4)
{
  if (result)
  {
    v7 = result;
    [+[TSWPLoadableFonts sharedInstance](TSWPLoadableFonts loadFontWithName:"loadFontWithName:", result];
    v8 = +[TSWPFontCache sharedCache];

    return [v8 createFontWithName:v7 size:a2 weight:a3 attributes:a4];
  }

  return result;
}

const __CTFont *TSWPFontCopyGraphicsFont()
{
  CTFontGetTypeID();
  result = TSUCFTypeCast();
  if (result)
  {

    return CTFontCopyGraphicsFont(result, 0);
  }

  return result;
}

const __CTFont *TSWPUIFontForCTFont(const __CTFont *result)
{
  if (result)
  {
    v1 = result;
    Size = CTFontGetSize(result);
    result = [MEMORY[0x277D74300] fontWithName:CTFontCopyPostScriptName(v1) size:Size];
    if (!result)
    {
      v3 = MEMORY[0x277D74300];

      return [v3 systemFontOfSize:Size];
    }
  }

  return result;
}

__CFString *TSWPFontPostScriptNameForFamilyName(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CC48B8];
  v11[0] = a1;
  v2 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  v3 = CTFontCreateWithFontDescriptor(v2, 0.0, 0);
  if (!v3)
  {
    v8 = 0;
    if (!v2)
    {
      return v8;
    }

    goto LABEL_12;
  }

  v4 = v3;
  v5 = CTFontCopyFamilyName(v3);
  if (v5)
  {
    v6 = v5;
    if ([a1 isEqualToString:v5] && (v7 = CTFontCopyPostScriptName(v4)) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  if (v2)
  {
LABEL_12:
    CFRelease(v2);
  }

  return v8;
}

const __CFString *TSWPFontNameWithFamilyName(uint64_t a1, int a2, int a3)
{
  v3 = a1;
  v4 = TSWPCreateFontWithFamilyName(a1, a2, a3, 12.0);
  if (v4)
  {
    v5 = v4;
    v3 = CTFontCopyFullName(v4);
    CFRelease(v5);
  }

  return v3;
}

CFTypeRef TSWPFontFamilyNameForFontName(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSWPFontFamilyNameForFontName(NSString *)"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 716, @"invalid nil value for '%s'", "fontName"}];
    return 0;
  }

  v7 = *MEMORY[0x277CC4908];
  v8[0] = a1;
  v1 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CTFontDescriptorCopyAttribute(v1, *MEMORY[0x277CC48B8]);
  CFRelease(v2);
  return v3;
}

BOOL TSWPFontHasTraits(const __CTFont *a1, int a2)
{
  CTFontGetTypeID();
  v3 = TSUCFTypeCast();
  if (v3)
  {
    LODWORD(v3) = CTFontGetSymbolicTraits(v3);
  }

  return (a2 & ~v3) == 0;
}

uint64_t TSWPFontGetAttributes(uint64_t a1, uint64_t *a2, BOOL *a3, _BYTE *a4, CGFloat *a5)
{
  CTFontGetTypeID();
  result = TSUCFTypeCast();
  if (result)
  {
    v10 = result;
    if (a5)
    {
      *a5 = CTFontGetSize(result);
    }

    result = CTFontGetSymbolicTraits(v10);
    *a3 = (result & 2) != 0;
    *a4 = result & 1;
    if (a2)
    {
      result = CTFontCopyFullName(v10);
LABEL_10:
      *a2 = result;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0.0;
    }

    *a4 = 0;
    *a3 = 0;
    if (a2)
    {
      result = 0;
      goto LABEL_10;
    }
  }

  return result;
}

void TSWPFontGetLineHeight()
{
  CTFontGetTypeID();
  v0 = TSUCFTypeCast();
  if (v0)
  {
    v1 = v0;
    CTFontGetAscent(v0);
    CTFontGetDescent(v1);
    CTFontGetLeading(v1);
  }
}

uint64_t TSWPFontFamilyNames()
{
  v18[1] = *MEMORY[0x277D85DE8];
  result = TSWPFontFamilyNames::fontNames;
  if (!TSWPFontFamilyNames::fontNames)
  {
    [+[TSWPLoadableFonts sharedInstance](TSWPLoadableFonts loadAll];
    TSWPFontFamilyNames::fontNames = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = *MEMORY[0x277CC4848];
    v18[0] = MEMORY[0x277CBEC38];
    v1 = CTFontCollectionCreateFromAvailableFonts([MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1]);
    if (v1)
    {
      v2 = v1;
      MatchingFontDescriptors = CTFontCollectionCreateMatchingFontDescriptors(v1);
      if (MatchingFontDescriptors)
      {
        v4 = MatchingFontDescriptors;
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v5 = [(__CFArray *)MatchingFontDescriptors countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v13;
          v8 = *MEMORY[0x277CC48B8];
          do
          {
            v9 = 0;
            do
            {
              if (*v13 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v10 = CTFontDescriptorCopyAttribute(*(*(&v12 + 1) + 8 * v9), v8);
              if (v10)
              {
                v11 = v10;
                [TSWPFontFamilyNames::fontNames addObject:v10];
                CFRelease(v11);
              }

              ++v9;
            }

            while (v6 != v9);
            v6 = [(__CFArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
          }

          while (v6);
        }

        CFRelease(v4);
      }

      CFRelease(v2);
    }

    [TSWPFontFamilyNames::fontNames sortUsingSelector:sel_compare_];
    return TSWPFontFamilyNames::fontNames;
  }

  return result;
}

unint64_t TSWPMostCompatibleStringEncodingForFont()
{
  CTFontGetTypeID();
  v0 = TSUCFTypeCast();
  if (v0)
  {
    LODWORD(v0) = CTFontGetStringEncoding(v0);
  }

  return CFStringConvertEncodingToNSStringEncoding(v0);
}

const __CTFont *TSWPCreateSubstituteFontForString(uint64_t a1, __CFString *a2)
{
  v3 = [(__CFString *)a2 length];
  CTFontGetTypeID();
  result = TSUCFTypeCast();
  if (result)
  {
    v5.location = 0;
    v5.length = v3;

    return CTFontCreateForString(result, a2, v5);
  }

  return result;
}

uint64_t TSWPGlyphForChar(uint64_t a1, UniChar a2)
{
  characters = a2;
  glyphs = 0;
  CTFontGetTypeID();
  v2 = TSUCFTypeCast();
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v2, &characters, &glyphs, 1);
  v4 = glyphs;
  if (!GlyphsForCharacters)
  {
    return -1;
  }

  return v4;
}

CGFloat TSWPAdvancementForGlyph(uint64_t a1, CGGlyph a2)
{
  glyphs = a2;
  CTFontGetTypeID();
  v2 = TSUCFTypeCast();
  CTFontGetAdvancesForGlyphs(v2, kCTFontOrientationDefault, &glyphs, &advances, 1);
  return advances.width;
}

void *TSWPPropertyMapByResolvingFontSizeDeltaInPropertyMapAgainstStyle(void *a1, void *a2)
{
  [a1 floatValueForProperty:52];
  v5 = v4;
  if (v4 == INFINITY)
  {
    return 0;
  }

  [a2 floatValueForProperty:17];
  if (v6 == INFINITY)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSSPropertyMap *TSWPPropertyMapByResolvingFontSizeDeltaInPropertyMapAgainstStyle(TSSPropertyMap *, TSSStyle *)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 896, @"Did not get fontSize property from style: %@", a2}];
    return 0;
  }

  v7 = v5 + v6;
  if (v7 < 9.0 || v7 > 288.0)
  {
    return 0;
  }

  v9 = [a1 propertyMapByRemovingValuesForProperties:{+[TSSPropertySet propertySetWithProperty:](TSSPropertySet, "propertySetWithProperty:", 52)}];
  *&v10 = v7;
  [v9 setFloatValue:17 forProperty:v10];
  return v9;
}

uint64_t TSWPParagraphBreakingCharacterSet()
{
  if (TSWPParagraphBreakingCharacterSet::sTSWPParagraphBreakingCharacterSetOnceToken != -1)
  {
    TSWPParagraphBreakingCharacterSet_cold_1();
  }

  return TSWPParagraphBreakingCharacterSet::sParagraphBreakingCharacterSet;
}

void __TSWPParagraphBreakingCharacterSet_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  [v0 addCharactersInRange:{10, 1}];
  [v0 addCharactersInRange:{13, 1}];
  [v0 addCharactersInRange:{8233, 1}];
  [v0 addCharactersInRange:{11, 1}];
  [v0 addCharactersInRange:{5, 1}];
  [v0 addCharactersInRange:{12, 1}];
  [v0 addCharactersInRange:{6, 1}];
  [v0 addCharactersInRange:{15, 1}];
  [v0 addCharactersInRange:{4, 1}];
  TSWPParagraphBreakingCharacterSet::sParagraphBreakingCharacterSet = [v0 copy];
}

uint64_t IsParagraphBreakingCharacter(uint64_t a1)
{
  if (TSWPParagraphBreakingCharacterSet::sTSWPParagraphBreakingCharacterSetOnceToken != -1)
  {
    TSWPParagraphBreakingCharacterSet_cold_1();
  }

  v2 = TSWPParagraphBreakingCharacterSet::sParagraphBreakingCharacterSet;

  return [v2 longCharacterIsMember:a1];
}

uint64_t TSWPFullNameForCharacter(unsigned __int16 a1, int a2)
{
  if (a1 > 0x2006u)
  {
    if (a1 > 0x2028u)
    {
      if (a1 < 0x3000u)
      {
        if (a1 == 8233)
        {
LABEL_23:
          v3 = TSWPBundle();
          if (a2)
          {
            v4 = @"Paragraph Breaks";
          }

          else
          {
            v4 = @"Paragraph Break";
          }

          goto LABEL_54;
        }

        if (a1 == 8239)
        {
          goto LABEL_33;
        }

        if (a1 != 8287)
        {
          return 0;
        }

        goto LABEL_15;
      }

      switch(a1)
      {
        case 0x3000u:
          goto LABEL_15;
        case 0xFFFCu:
          v3 = TSWPBundle();
          if (a2)
          {
            v4 = @"Attachments";
          }

          else
          {
            v4 = @"Attachment";
          }

          goto LABEL_54;
        case 0xFEFFu:
          goto LABEL_33;
      }
    }

    else
    {
      if (a1 - 8200 < 4)
      {
        goto LABEL_15;
      }

      if (a1 == 8199)
      {
        goto LABEL_33;
      }

      if (a1 == 8232)
      {
        v3 = TSWPBundle();
        if (a2)
        {
          v4 = @"Line Breaks";
        }

        else
        {
          v4 = @"Line Break";
        }

        goto LABEL_54;
      }
    }

    return 0;
  }

  if (a1 > 0x1Fu)
  {
    if (a1 - 0x2000 >= 7 && a1 != 32)
    {
      if (a1 != 160)
      {
        return 0;
      }

LABEL_33:
      v3 = TSWPBundle();
      if (a2)
      {
        v4 = @"Non Breaking Spaces";
      }

      else
      {
        v4 = @"Non Breaking Space";
      }

      goto LABEL_54;
    }

LABEL_15:
    v3 = TSWPBundle();
    if (a2)
    {
      v4 = @"Spaces";
    }

    else
    {
      v4 = @"Space";
    }

    goto LABEL_54;
  }

  if (a1 <= 9u)
  {
    switch(a1)
    {
      case 4u:
        v3 = TSWPBundle();
        if (a2)
        {
          v4 = @"Section Breaks";
        }

        else
        {
          v4 = @"Section Break";
        }

        goto LABEL_54;
      case 5u:
        v3 = TSWPBundle();
        if (a2)
        {
          v4 = @"Page Breaks";
        }

        else
        {
          v4 = @"Page Break";
        }

        goto LABEL_54;
      case 9u:
        v3 = TSWPBundle();
        if (a2)
        {
          v4 = @"Tabs";
        }

        else
        {
          v4 = @"Tab";
        }

        goto LABEL_54;
    }

    return 0;
  }

  if (a1 - 10 < 2)
  {
    goto LABEL_23;
  }

  if (a1 != 12)
  {
    if (a1 != 13)
    {
      return 0;
    }

    goto LABEL_23;
  }

  v3 = TSWPBundle();
  if (a2)
  {
    v4 = @"Column Breaks";
  }

  else
  {
    v4 = @"Column Break";
  }

LABEL_54:

  return [v3 localizedStringForKey:v4 value:&stru_287D36338 table:@"TSText"];
}

uint64_t IsWhitespaceCharacter(uint64_t theChar)
{
  if (IsWhitespaceCharacter::sIsWhitespaceCharacterDispatchOnceToken != -1)
  {
    IsWhitespaceCharacter_cold_1();
  }

  if (CFCharacterSetIsLongCharacterMember(IsWhitespaceCharacter::sWhitespaceCharacterSet, theChar))
  {
    return 1;
  }

  LODWORD(result) = IsParagraphBreakingCharacter(theChar);
  if (theChar == 8232)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

id __IsWhitespaceCharacter_block_invoke()
{
  result = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  IsWhitespaceCharacter::sWhitespaceCharacterSet = result;
  return result;
}

BOOL IsBreakingSpaceCharacter(UTF32Char theChar)
{
  v2 = IsBreakingSpaceCharacter::sBreakingSpaceCharacterSet;
  if (!IsBreakingSpaceCharacter::sBreakingSpaceCharacterSet)
  {
    v2 = [MEMORY[0x277CCA900] breakingSpaceCharacterSet];
    IsBreakingSpaceCharacter::sBreakingSpaceCharacterSet = v2;
  }

  return CFCharacterSetIsLongCharacterMember(v2, theChar) != 0;
}

uint64_t IsWordBoundaryCharacter(uint64_t a1)
{
  if (a1 <= 8211)
  {
    if (!a1 || a1 == 14)
    {
      return 1;
    }
  }

  else if (a1 == 8212 || a1 == 8232 || a1 == 65532)
  {
    return 1;
  }

  v3 = IsParagraphBreakingCharacter(a1);
  if (a1 == 8232 || (v3 & 1) != 0)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCA900] spaceCharacterSet];

  return [v4 longCharacterIsMember:a1];
}

BOOL KinsokuIllegalEndChar(UTF32Char theChar)
{
  if (KinsokuIllegalEndChar::sKinsokuIllegalEndCharDispatchOnceToken != -1)
  {
    KinsokuIllegalEndChar();
  }

  return CFCharacterSetIsLongCharacterMember(KinsokuIllegalEndChar::sSet, theChar) != 0;
}

void ___Z21KinsokuIllegalEndCharj_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = xmmword_26CA66FF8;
  v4[1] = unk_26CA67008;
  v4[2] = xmmword_26CA67018;
  v4[3] = unk_26CA67028;
  v5 = 10551138;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
  v2 = CFStringCreateWithCharacters(v0, v4, 34);
  if (v2)
  {
    v3 = v2;
    CFCharacterSetAddCharactersInString(Mutable, v2);
    CFRelease(v3);
  }

  KinsokuIllegalEndChar::sSet = Mutable;
}

BOOL KinsokuIllegalStartChar(UTF32Char theChar)
{
  if (KinsokuIllegalStartChar::sKinsokuIllegalStartCharDispatchOnceToken != -1)
  {
    KinsokuIllegalStartChar();
  }

  return CFCharacterSetIsLongCharacterMember(KinsokuIllegalStartChar::sSet, theChar) != 0;
}

void ___Z23KinsokuIllegalStartCharj_block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = xmmword_26CA670FC;
  v17 = unk_26CA6710C;
  v18 = xmmword_26CA6711C;
  v19 = 0xFF64FF61FE52FE51;
  v12 = xmmword_26CA670BC;
  v13 = unk_26CA670CC;
  v14 = xmmword_26CA670DC;
  v15 = unk_26CA670EC;
  v8 = xmmword_26CA6707C;
  v9 = unk_26CA6708C;
  v10 = xmmword_26CA6709C;
  v11 = unk_26CA670AC;
  v4 = xmmword_26CA6703C;
  v5 = unk_26CA6704C;
  v6 = xmmword_26CA6705C;
  v7 = unk_26CA6706C;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
  v2 = CFStringCreateWithCharacters(v0, &v4, 124);
  if (v2)
  {
    v3 = v2;
    CFCharacterSetAddCharactersInString(Mutable, v2);
    CFRelease(v3);
    CFCharacterSetUnion(Mutable, [MEMORY[0x277CCA900] whitespaceCharacterSet]);
  }

  KinsokuIllegalStartChar::sSet = Mutable;
}

BOOL KinsokuWesternChar(UTF32Char theChar)
{
  if (KinsokuWesternChar::sKinsokuWesternCharDispatchOnceToken != -1)
  {
    KinsokuWesternChar();
  }

  return CFCharacterSetIsLongCharacterMember(KinsokuWesternChar::sSet, theChar) != 0;
}

void ___Z18KinsokuWesternCharj_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  memcpy(__dst, asc_26CA67134, sizeof(__dst));
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
  v2 = CFStringCreateWithCharacters(v0, __dst, 767);
  if (v2)
  {
    v3 = v2;
    CFCharacterSetAddCharactersInString(Mutable, v2);
    CFRelease(v3);
  }

  KinsokuWesternChar::sSet = Mutable;
}

BOOL KinsokuAllowSplit(uint64_t theChar, uint64_t a2)
{
  v3 = theChar;
  if (theChar > 12338)
  {
    if ((theChar - 12339) >= 2)
    {
      v6 = 65073;
      if (theChar != 65073)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 12341;
    }

    v7 = a2 == v6;
    return !v7;
  }

  if ((theChar - 8208) <= 0x16)
  {
    v4 = 1 << (theChar - 16);
    if ((v4 & 0x3D) != 0)
    {
      goto LABEL_4;
    }

    if ((v4 & 0x600000) != 0)
    {
      v7 = a2 == theChar;
      return !v7;
    }
  }

  if (theChar != 45)
  {
    if (theChar == 47)
    {
      v7 = a2 == 47;
      return !v7;
    }

LABEL_20:
    if (IsWhitespaceCharacter(theChar) && (IsWhitespaceCharacter(a2) & 1) != 0)
    {
      return 0;
    }

    return !KinsokuWesternChar(v3) || !KinsokuWesternChar(a2);
  }

LABEL_4:
  if ((a2 - 8208) <= 5 && a2 != 8209)
  {
    return 0;
  }

  return a2 != 45;
}

double OikomiSquishAmountForCharacter(int a1)
{
  result = 0.0;
  if (a1 > 10628)
  {
    if (((a1 - 12289) > 0x1E || ((1 << (a1 - 1)) & 0x51F9FF81) == 0) && (a1 - 10629) >= 2)
    {
      if (a1 != 12539)
      {
        return result;
      }

      return 0.5;
    }

    return 0.25;
  }

  if (a1 > 122)
  {
    if ((a1 - 8216) <= 5 && ((1 << (a1 - 24)) & 0x33) != 0 || (a1 - 125) <= 0x3E && ((1 << (a1 - 125)) & 0x4000400000000001) != 0 || a1 == 123)
    {
      return 0.25;
    }
  }

  else
  {
    v2 = a1 - 32;
    if ((a1 - 32) > 0x3D)
    {
      return result;
    }

    if (((1 << v2) & 0x2800000000001300) != 0)
    {
      return 0.25;
    }

    if (((1 << v2) & 0xC000000) != 0)
    {
      return 0.5;
    }

    if (a1 == 32)
    {
      return 0.0833333333;
    }
  }

  return result;
}

BOOL BursageEligibleChar(UTF32Char theChar)
{
  if (BursageEligibleChar::sBursageEligibleCharDispatchOnceToken != -1)
  {
    BursageEligibleChar();
  }

  return CFCharacterSetIsLongCharacterMember(BursageEligibleChar::sSet, theChar) != 0;
}

void ___Z19BursageEligibleCharj_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = xmmword_26CA67732;
  *&v4[7] = *(&xmmword_26CA67732 + 14);
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
  v2 = CFStringCreateWithCharacters(v0, v4, 15);
  if (v2)
  {
    v3 = v2;
    CFCharacterSetAddCharactersInString(Mutable, v2);
    CFRelease(v3);
  }

  BursageEligibleChar::sSet = Mutable;
}

uint64_t TSWPPreviousCharFromTextSource(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPPreviousCharFromTextSource(TSWPCharIndex, id<TSWPTextSource>)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 1366, @"invalid nil value for '%s'", "source"}];
  }

  v6 = [a2 charIndexMappedFromStorage:a1];
  if (!v6)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPPreviousCharFromTextSource(TSWPCharIndex, id<TSWPTextSource>)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 1368, @"charIndex should not be at the start of the text source"}];
    return a1;
  }

  a1 = [a2 charIndexMappedToStorage:v6 - 1];
  v7 = [a2 charIndexMappedFromStorage:a1];
  v8 = [a2 characterAtIndex:v7];
  if (!v7 || (v8 & 0xFC00) != 0xDC00)
  {
    return a1;
  }

  return [a2 charIndexMappedToStorage:v7 - 1];
}

uint64_t TSWPNextCharFromTextSource(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPNextCharFromTextSource(TSWPCharIndex, id<TSWPTextSource>)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 1388, @"invalid nil value for '%s'", "source"}];
  }

  v6 = [a2 charIndexMappedFromStorage:a1];
  if (v6 >= [a2 length] - 1)
  {

    return [a2 charIndexMappedToStorage:v6 + 1];
  }

  else
  {
    while (v6 < [a2 length])
    {
      if (([a2 characterAtIndex:v6] & 0xFC00) == 0xD800)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      v6 += v7;
      v8 = [a2 charIndexMappedToStorage:v6];
      if (v8 != a1)
      {
        return v8;
      }
    }

    return a1;
  }
}

uint64_t TSWPComposedCharacterAtIndexForTextSource(unint64_t a1, void *a2)
{
  if (!a2)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UTF32Char TSWPComposedCharacterAtIndexForTextSource(TSWPCharIndex, id<TSWPTextSource>)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 1416, @"invalid nil value for '%s'", "source"}];
  }

  v6 = [a2 length];
  if (v6 <= a1)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UTF32Char TSWPComposedCharacterAtIndexForTextSource(TSWPCharIndex, id<TSWPTextSource>)"}];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 1418, @"index out of bounds"}];
    return 0;
  }

  v7 = v6;
  v8 = [a2 characterAtIndex:a1];
  if ((v8 & 0xFC00) == 0xDC00)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UTF32Char TSWPComposedCharacterAtIndexForTextSource(TSWPCharIndex, id<TSWPTextSource>)"}];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"];
    v12 = @"index inside surrogate pair";
    v13 = v9;
    v14 = v10;
    v15 = 1423;
LABEL_6:
    [v13 handleFailureInFunction:v14 file:v11 lineNumber:v15 description:v12];
    return v8;
  }

  if (a1 + 1 < v7 && (v8 & 0xFC00) == 0xD800)
  {
    v19 = [a2 characterAtIndex:?];
    if ((v19 & 0xFC00) == 0xDC00)
    {
      return (v19 + (v8 << 10) - 56613888);
    }

    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UTF32Char TSWPComposedCharacterAtIndexForTextSource(TSWPCharIndex, id<TSWPTextSource>)"}];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"];
    v12 = @"invalid surrogate pair";
    v13 = v20;
    v14 = v21;
    v15 = 1428;
    goto LABEL_6;
  }

  return v8;
}

unint64_t TSWPRangeByExtendingRangeToWhitespaceForTextSource(unint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  v4 = a1 + a2;
  if (a1 != *MEMORY[0x277D6C268] || a2 != *(MEMORY[0x277D6C268] + 8))
  {
    if (!a3)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange TSWPRangeByExtendingRangeToWhitespaceForTextSource(NSRange, id<TSWPTextSource>)"}];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 1447, @"invalid nil value for '%s'", "textSource"}];
    }

    v9 = [a3 length];
    v10 = [a3 string];
    do
    {
      v11 = v3;
      if (!v3)
      {
        break;
      }

      --v3;
    }

    while (!IsWhitespaceCharacter([v10 characterAtIndex:v11 - 1]));
    if (v4 < v9)
    {
      while ((IsWhitespaceCharacter([v10 characterAtIndex:v4]) & 1) == 0)
      {
        if (++v4 >= v9)
        {
          v4 = v9;
          break;
        }
      }
    }

    v3 = v11;
  }

  if (v3 >= v4)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t TSWPGetBidiClass()
{
  v0 = MEMORY[0x26D6AA810]();
  if (v0 > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_26CA67890[v0];
  }
}

uint64_t TSWPResolvePropertyForStyles(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = *(a1 + 8 * v8);
    if (v10)
    {
      v11 = [v10 boxedValueForProperty:a3];
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x277CBEB68] null];
        if (v12 != v13 || (a4 & 1) != 0)
        {
          break;
        }
      }
    }

    v8 = v9++;
    if (v8 >= a2)
    {
      return 0;
    }
  }

  if (v12 == v13)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t TSWPResolveColorForStyles(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  while (1)
  {
    v3 = v7[v2];
    if (v3)
    {
      v4 = [v3 boxedValueForProperty:18];
      if (v4)
      {
        v5 = v4;
        if (v4 != [MEMORY[0x277CBEB68] null])
        {
          break;
        }
      }
    }

    if (++v2 == 2)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t TSWPResolvePropertyForStyles(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = a1;
  v5[1] = a2;
  return TSWPResolvePropertyForStyles(v5, 2uLL, a3, a4);
}

uint64_t TSWPResolveIntPropertyForStyles(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v8 = 1;
  do
  {
    if (a1)
    {
      LODWORD(result) = [a1 intValueForProperty:a3];
    }

    else
    {
      LODWORD(result) = 0x80000000;
    }

    v10 = v8 & (result == 0x80000000);
    a1 = a2;
    v8 = 0;
  }

  while ((v10 & 1) != 0);
  if (result == 0x80000000)
  {
    return a4;
  }

  else
  {
    return result;
  }
}

uint64_t TSWPResolveIntPropertyForStyles(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = *(a1 + 8 * v8);
      if (v10)
      {
        v11 = [v10 intValueForProperty:a3];
      }

      else
      {
        v11 = 0x80000000;
      }

      v8 = v9;
      if (v9 >= a2)
      {
        break;
      }

      ++v9;
    }

    while (v11 == 0x80000000);
    if (v11 == 0x80000000)
    {
      return a4;
    }

    else
    {
      return v11;
    }
  }

  return a4;
}

void *TSWPResolveFloatPropertyForStyles(void *result, void *a2, uint64_t a3)
{
  v5 = 1;
  do
  {
    if (result)
    {
      [result floatValueForProperty:a3];
      v7 = v6;
    }

    else
    {
      v7 = INFINITY;
    }

    v8 = v5 & (v7 == INFINITY);
    result = a2;
    v5 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

void *TSWPResolveFloatPropertyForStyles(void *result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    v6 = 0;
    v7 = 1;
    do
    {
      result = v5[v6];
      if (result)
      {
        result = [result floatValueForProperty:a3];
        v9 = v8;
      }

      else
      {
        v9 = INFINITY;
      }

      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      ++v7;
    }

    while (v9 == INFINITY);
  }

  return result;
}

const __CTFont *TSWPFastCreateFontForStyle(uint64_t a1, void *a2, unint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v6 = [a2 findCachedFontForCharacterStyle:a1 scalePercent:a3];
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
  }

  else
  {
    v9[0] = a1;
    v9[1] = a2;
    return TSWPCreateFontForStylesWithScale(v9, 2uLL, a3);
  }

  return v7;
}

const __CTFont *TSWPCreateFontForStylesWithScale(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v6 = TSWPResolvePropertyForStyles(a1, a2, 16, 0);
  if (!v6)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CTFontRef TSWPCreateFontForStylesWithScale(TSSStyle **, NSUInteger, NSUInteger)"}];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUtilities.mm"), 1687, @"Failed to resolve font name"}];
  }

  v9 = a3;
  if (a2)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = *(a1 + 8 * v10);
      if (v12)
      {
        v13 = [v12 intValueForProperty:19];
      }

      else
      {
        v13 = 0x80000000;
      }

      v10 = v11;
      if (v11 >= a2)
      {
        break;
      }

      ++v11;
    }

    while (v13 == 0x80000000);
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *(a1 + 8 * v14);
      if (v16)
      {
        v17 = [v16 intValueForProperty:20];
      }

      else
      {
        v17 = 0x80000000;
      }

      v14 = v15;
      if (v15 >= a2)
      {
        break;
      }

      ++v15;
    }

    while (v17 == 0x80000000);
    v18 = 0;
    if (v13 == 0x80000000)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    v55 = v19;
    v20 = 1;
    do
    {
      v21 = *(a1 + 8 * v18);
      if (v21)
      {
        [v21 floatValueForProperty:17];
        v23 = v22;
      }

      else
      {
        v23 = INFINITY;
      }

      v18 = v20;
      if (v20 >= a2)
      {
        break;
      }

      ++v20;
    }

    while (v23 == INFINITY);
    v24 = 0;
    if (v23 == INFINITY)
    {
      v23 = 12.0;
    }

    v25 = v23 * v9;
    v26 = 1;
    do
    {
      v27 = *(a1 + 8 * v24);
      if (v27)
      {
        [v27 floatValueForProperty:50];
        v29 = v28;
      }

      else
      {
        v29 = INFINITY;
      }

      v24 = v26;
      if (v26 >= a2)
      {
        break;
      }

      ++v26;
    }

    while (v29 == INFINITY);
    v30 = 0;
    if (v17 == 0x80000000)
    {
      v31 = 0;
    }

    else
    {
      v31 = v17;
    }

    v32 = 1;
    do
    {
      v33 = *(a1 + 8 * v30);
      if (v33)
      {
        v34 = [v33 intValueForProperty:36];
      }

      else
      {
        v34 = 0x80000000;
      }

      v30 = v32;
      if (v32 >= a2)
      {
        break;
      }

      ++v32;
    }

    while (v34 == 0x80000000);
    if (v29 == INFINITY)
    {
      v29 = -1000.0;
    }

    v35 = v25 / 100.0;
    if ((v34 | 0x80000000) != 0x80000000)
    {
      v35 = v35 * 0.666666687;
    }
  }

  else
  {
    v55 = 0;
    v31 = 0;
    v29 = -1000.0;
    v35 = v9 * 12.0 / 100.0;
  }

  v36 = TSWPResolvePropertyForStyles(a1, a2, 43, 0);
  v37 = TSWPResolvePropertyForStyles(a1, a2, 53, 0);
  v38 = 1;
  v39 = TSWPResolvePropertyForStyles(a1, a2, 54, 1);
  v40 = TSWPResolvePropertyForStyles(a1, a2, 55, 1);
  if (a2)
  {
    v41 = 0;
    v42 = 1;
    do
    {
      v43 = *(a1 + 8 * v41);
      if (v43)
      {
        v44 = [v43 intValueForProperty:56];
      }

      else
      {
        v44 = 0x80000000;
      }

      v41 = v42;
      if (v42 >= a2)
      {
        break;
      }

      ++v42;
    }

    while (v44 == 0x80000000);
    v38 = v44 == 0x80000000 || v44 == 0;
  }

  v46 = *MEMORY[0x277CC4950];
  v47 = [objc_msgSend(v37 objectForKeyedSubscript:{*MEMORY[0x277CC4950]), "mutableCopy"}];
  v48 = v47;
  if (v39)
  {
    if (!v47)
    {
      v48 = objc_opt_new();
    }

    [v48 setObject:v39 forKeyedSubscript:*MEMORY[0x277CC4980]];
LABEL_64:
    v49 = 0;
    if (!v48)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  if (!v40)
  {
    goto LABEL_64;
  }

  v49 = [v37 mutableCopy];
  if (!v49)
  {
    v49 = objc_opt_new();
  }

  [v49 setObject:v40 forKeyedSubscript:*MEMORY[0x277CC48B8]];
  if (v48)
  {
LABEL_70:
    if (!v49)
    {
      v49 = [v37 mutableCopy];
      if (!v49)
      {
        v49 = objc_opt_new();
      }
    }

    [v49 setObject:v48 forKeyedSubscript:v46];
  }

LABEL_74:
  if (!v38)
  {
    if (v36)
    {
      v50 = v36;
    }

    else
    {
      v50 = MEMORY[0x277CBEBF8];
    }

    v51 = *MEMORY[0x277CC48C8];
    v56[0] = *MEMORY[0x277CC48D8];
    v56[1] = v51;
    v57[0] = &unk_287DDD920;
    v57[1] = &unk_287DDD938;
    v36 = [v50 arrayByAddingObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v57, v56, 2)}];
  }

  if (v49)
  {
    v37 = v49;
  }

  if (v29 == -1000.0)
  {
    v52 = *MEMORY[0x277D74418];
  }

  else
  {
    v52 = v29;
  }

  if (v6)
  {
    v53 = v6;
  }

  else
  {
    v53 = @"Helvetica";
  }

  return TSWPCreateFontWithNameAttributesTraitsAndWeight(v53, v55 != 0, v31 != 0, v37, v36, v29 != -1000.0, v35, v52);
}

const __CTFont *TSWPCreateFontWithNameAttributesTraitsAndWeight(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, char a6, double a7, double a8)
{
  if (!TSWPCreateFontWithNameAttributesTraitsAndWeight::gMissingFontNameCache || ([TSWPCreateFontWithNameAttributesTraitsAndWeight::gMissingFontNameCache containsObject:a1] & 1) == 0)
  {
    UIFontForLanguage = TSWPCreateFontWithNameAttributesAndWeight(a1, a4, a7, a8);
    if (UIFontForLanguage)
    {
      goto LABEL_8;
    }

    v17 = TSWPCreateFontWithNameAttributesTraitsAndWeight::gMissingFontNameCache;
    if (!TSWPCreateFontWithNameAttributesTraitsAndWeight::gMissingFontNameCache)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      TSWPCreateFontWithNameAttributesTraitsAndWeight::gMissingFontNameCache = v17;
    }

    [v17 addObject:a1];
  }

  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, a7, 0);
LABEL_8:
  SymbolicTraits = CTFontGetSymbolicTraits(UIFontForLanguage);
  v19 = SymbolicTraits;
  if (a6 & 1) != 0 || ((((SymbolicTraits & 2) == 0) ^ a2))
  {
    goto LABEL_17;
  }

  v20 = a2 ? 2 : 0;
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(UIFontForLanguage, a7, 0, SymbolicTraits & 0xFFFFFFFD | v20, 2u);
  if (!CopyWithSymbolicTraits)
  {
    goto LABEL_17;
  }

  v22 = CopyWithSymbolicTraits;
  if (UIFontForLanguage == CopyWithSymbolicTraits)
  {
    CFRelease(CopyWithSymbolicTraits);
LABEL_17:
    v22 = UIFontForLanguage;
    goto LABEL_18;
  }

  CFRelease(UIFontForLanguage);
LABEL_18:
  if ((v19 & 1) == a3)
  {
    goto LABEL_23;
  }

  v23 = CTFontCreateCopyWithSymbolicTraits(v22, a7, 0, v19 & 0xFFFFFFFE | a3, 1u);
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
  if (v22 == v23)
  {
    CFRelease(v23);
LABEL_23:
    v24 = v22;
    goto LABEL_24;
  }

  CFRelease(v22);
LABEL_24:
  if ([a5 count])
  {
    v25 = CTFontCopyFontDescriptor(v24);
    if (v25)
    {
      v26 = v25;
      v27 = objc_alloc(MEMORY[0x277CBEAC0]);
      v28 = [v27 initWithObjectsAndKeys:{a5, *MEMORY[0x277CC48D0], 0}];
      CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v26, v28);
      if (CopyWithAttributes)
      {
        v30 = CopyWithAttributes;
        v31 = CTFontCreateWithFontDescriptor(CopyWithAttributes, a7, 0);
        if (v31)
        {
          v32 = v31;
          CFRelease(v24);
          v24 = v32;
        }

        CFRelease(v30);
      }

      CFRelease(v26);
    }
  }

  return v24;
}

BOOL TSWPFontGetGlyphsForUnichars(uint64_t a1, const UniChar *a2, CGGlyph *a3, CFIndex a4)
{
  CTFontGetTypeID();
  v7 = TSUCFTypeCast();

  return CTFontGetGlyphsForCharacters(v7, a2, a3, a4);
}

double TSWPDefaultLineHeightForFont(const __CTFont *a1)
{
  Ascent = CTFontGetAscent(a1);
  Descent = CTFontGetDescent(a1);
  Leading = CTFontGetLeading(a1);
  BoundingBox = CTFontGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v9 = floor(Leading + 0.5);
  if (Leading <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  v19 = floor(Ascent + 0.5) + floor(Descent + 0.5);
  v11 = y;
  if (CGRectGetMaxY(BoundingBox) <= Ascent)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v12 = CGRectGetMinY(v23) < -(Descent + Leading);
  }

  else
  {
    v12 = 1;
  }

  v13 = v19 + v10;
  glyphs = 0;
  characters = 192;
  if (v12 && v10 == 0.0 && CTFontGetGlyphsForCharacters(a1, &characters, &glyphs, 1))
  {
    BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a1, kCTFontOrientationDefault, &glyphs, 0, 1);
    v14 = BoundingRectsForGlyphs.origin.x;
    v15 = BoundingRectsForGlyphs.origin.y;
    v16 = BoundingRectsForGlyphs.size.width;
    v17 = BoundingRectsForGlyphs.size.height;
    if (CGRectGetMaxY(BoundingRectsForGlyphs) > Ascent || (v25.origin.x = v14, v25.origin.y = v15, v25.size.width = v16, v25.size.height = v17, CGRectGetMinY(v25) < -Descent))
    {
      v13 = v13 + floor(v19 * 0.200000003 + 0.5);
    }
  }

  return fmax(v13, 1.0);
}

double TSWPAttachmentVAlignmentCorrection(int a1, uint64_t a2, void *a3, unint64_t a4)
{
  Ascent = 0.0;
  if (a2)
  {
    FontForStyle = TSWPFastCreateFontForStyle(a2, a3, a4);
    if (FontForStyle)
    {
      v7 = FontForStyle;
      if (a1 > 2)
      {
        if (a1 == 3)
        {
          Ascent = CTFontGetAscent(FontForStyle);
        }

        else if (a1 == 4)
        {
          v9 = CTFontGetAscent(FontForStyle);
          Ascent = v9 + CTFontGetDescent(v7);
        }
      }

      else if (a1 == 1)
      {
        v10 = CTFontGetAscent(FontForStyle);
        Ascent = v10 - CTFontGetCapHeight(v7);
      }

      else if (a1 == 2)
      {
        v8 = CTFontGetAscent(FontForStyle);
        Ascent = -(CTFontGetCapHeight(v7) - v8 * 1.5);
      }

      CFRelease(v7);
    }
  }

  return Ascent;
}

double TSWPFontHeightInfoForFont@<D0>(const __CTFont *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = +[TSWPFontHeightCache sharedCache];
  if (v4)
  {

    [v4 fontHeightInfoForFont:a1];
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double TSWPUnderlineAdornmentMetricsForFont(const __CTFont *a1, const __CTFont *a2, int a3, int a4, void *a5, int a6, double a7, double a8, double a9, double a10, double a11)
{
  v31 = 0.0;
  v22 = pAdjustedLineHeight(a1, &v31);
  UnderlineThickness = CTFontGetUnderlineThickness(a1);
  if (UnderlineThickness == 0.0)
  {
    v24 = v22 * 0.0440277313;
  }

  else
  {
    v24 = UnderlineThickness;
  }

  v25 = TSWPCJKLanguageForInputLanguageString(a5);
  if (a11 == 0.0)
  {
    a11 = v24;
  }

  v26 = fmax(a11, 1.0);
  if (a6 == 1)
  {
    v27 = -a8;
    if (a4)
    {
      v27 = -(a9 + a10 - (-a8 - a11) - ((a8 + a9) * 0.5 + a10));
    }

    if (a3 == 2)
    {
      v27 = a11 + v27;
    }

    if (a3 && !a4 && v25 != 6)
    {
      v27 = v27 - v26;
    }
  }

  else
  {
    if (a4)
    {
      a9 = -(a9 + a10 - (a11 + a9) - ((a8 + a9) * 0.5 + a10));
    }

    else
    {
      if (!a3 || v25 == 6)
      {
        UnderlinePosition = CTFontGetUnderlinePosition(a1);
        if (a1 != a2 && UnderlinePosition == 0.0)
        {
          UnderlinePosition = CTFontGetUnderlinePosition(a2);
        }

        a9 = -UnderlinePosition;
      }

      if (a9 < 1.0)
      {
        a9 = floor(v31) * 5.3636991 * 0.0880554625;
      }
    }

    v29 = fmax(fmax(a11, 1.75) - a11, 0.0) + a9;
    if (a4)
    {
      v29 = a9;
    }

    v27 = a9 - a11;
    if (a3 != 2)
    {
      v27 = a9;
    }

    if (a3 == 3)
    {
      v27 = v29;
    }
  }

  return v27 + a7;
}

double pAdjustedLineHeight(const __CTFont *a1, double *a2)
{
  v4 = +[TSWPFontHeightCache sharedCache];
  if (v4)
  {
    [v4 fontHeightInfoForFont:a1];
  }

  *a2 = 0.0 + 0.0;
  return fmin(rint(0.0 + 0.0) * 5.3636991, fmax(0.0, 0.0) + 0.0 + 0.0 + 0.0 + 0.0 + 0.0);
}

uint64_t TSWPCJKLanguageForInputLanguageString(void *a1)
{
  v1 = [a1 lowercaseString];
  if (TSWPCJKLanguageForInputLanguageString::onceToken != -1)
  {
    TSWPCJKLanguageForInputLanguageString_cold_1();
  }

  v2 = [TSWPCJKLanguageForInputLanguageString::sMappings objectForKeyedSubscript:v1];
  if (!v2 || (result = [v2 intValue], result == 6))
  {
    if ([v1 length] >= 2 && (v4 = objc_msgSend(v1, "substringWithRange:", 0, 2), (v5 = objc_msgSend(TSWPCJKLanguageForInputLanguageString::sMappings, "objectForKeyedSubscript:", v4)) != 0))
    {

      return [v5 intValue];
    }

    else
    {
      return 6;
    }
  }

  return result;
}

double TSWPRound(double a1)
{
  v1 = fabs(a1);
  v2 = v1 - floor(v1);
  v3 = a1 >= 0.0 || v2 > 0.5;
  if (v3 && (a1 >= 0.0 ? (v4 = v2 < 0.5) : (v4 = 1), v4))
  {
    return floor(a1);
  }

  else
  {
    return ceil(a1);
  }
}

double TSWPIntegralPoint(CGPoint a1)
{
  v1 = fabs(a1.x);
  v2 = v1 - floor(v1);
  v3 = a1.x >= 0.0 || v2 > 0.5;
  if (v3 && (a1.x >= 0.0 ? (v4 = v2 < 0.5) : (v4 = 1), v4))
  {
    return floor(a1.x);
  }

  else
  {
    return ceil(a1.x);
  }
}

double TSWPIntegralRect(CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  MaxX = CGRectGetMaxX(a1);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v10.y = CGRectGetMaxY(v12);
  v10.x = MaxX;
  v6 = TSWPIntegralPoint(v10);
  v11.x = x;
  v11.y = y;
  v7 = TSWPIntegralPoint(v11);
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

CGFloat TSWPRectWithPoints(CGPoint a1, CGPoint a2)
{
  if (a1.x >= a2.x)
  {
    return a2.x;
  }

  else
  {
    return a1.x;
  }
}

BOOL TSWPInsertionPointInRangeWithOptions(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = !(a5 & 1) + a3;
  v7 = a1 >= v5;
  v6 = a1 - v5;
  v7 = !v7 || v6 >= a4 + (a5 & 1) + ((a5 >> 1) & 1) - 1;
  return !v7;
}

void TSWPUnionRects(CGRect **a1)
{
  v1 = *MEMORY[0x277CBF398];
  v2 = *(MEMORY[0x277CBF398] + 8);
  v3 = *(MEMORY[0x277CBF398] + 16);
  v4 = *(MEMORY[0x277CBF398] + 24);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    *&v1 = CGRectUnion(*&v1, *v5++);
  }
}

uint64_t __TSWPCJKLanguageForInputLanguageString_block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"zh-hans", &unk_287DDD938, @"zh_hans", &unk_287DDD950, @"zh-hant", &unk_287DDD950, @"zh_hant", &unk_287DDD968, @"ja-jp", &unk_287DDD980, @"ko-ko", &unk_287DDD950, @"zh", &unk_287DDD968, @"ja", &unk_287DDD980, @"ko", 0}];
  TSWPCJKLanguageForInputLanguageString::sMappings = result;
  return result;
}

uint64_t TSWPListLanguageForInputLanguageString(void *a1)
{
  v1 = [a1 lowercaseString];
  if (TSWPListLanguageForInputLanguageString::onceToken != -1)
  {
    TSWPListLanguageForInputLanguageString_cold_1();
  }

  v2 = [TSWPListLanguageForInputLanguageString::sMappings objectForKeyedSubscript:v1];
  if (!v2 || (result = [v2 intValue], result == 6))
  {
    if ([v1 length] >= 2 && (v4 = objc_msgSend(v1, "substringWithRange:", 0, 2), (v5 = objc_msgSend(TSWPListLanguageForInputLanguageString::sMappings, "objectForKeyedSubscript:", v4)) != 0))
    {

      return [v5 intValue];
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t __TSWPListLanguageForInputLanguageString_block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"zh-hans", &unk_287DDD938, @"zh_hans", &unk_287DDD950, @"zh-hant", &unk_287DDD950, @"zh_hant", &unk_287DDD968, @"ja-jp", &unk_287DDD980, @"ko-ko", &unk_287DDD950, @"zh", &unk_287DDD968, @"ja", &unk_287DDD980, @"ko", &unk_287DDD998, @"ar", &unk_287DDD9B0, @"he", 0}];
  TSWPListLanguageForInputLanguageString::sMappings = result;
  return result;
}

id TSWPLocaleForCJKLanguage(int a1, void *a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = @"ja_JP";
      goto LABEL_13;
    }

    if (a1 == 3)
    {
      v2 = @"ko_KR";
      goto LABEL_13;
    }

    return 0;
  }

  if (!a1)
  {
    v2 = @"zh_CN";
    goto LABEL_13;
  }

  if (a1 != 1)
  {
    return 0;
  }

  if ([objc_msgSend(a2 objectForKey:{*MEMORY[0x277CBE690]), "isEqualToString:", @"TW"}])
  {
    v2 = @"zh_TW";
  }

  else
  {
    v2 = @"zh_HK";
  }

LABEL_13:
  v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v2];

  return v4;
}

void ApplyVerticalFormsToAttributedString(__CFAttributedString *a1, const unsigned __int16 *a2)
{
  Length = CFAttributedStringGetLength(a1);
  if (!a2)
  {
    String = CFAttributedStringGetString(a1);
    CharactersPtr = CFStringGetCharactersPtr(String);
    if (!CharactersPtr)
    {
      operator new[]();
    }

    a2 = CharactersPtr;
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  TSWPFillVerticalFacingRangesFromBuffer(a2, Length, &__p);
  v7 = CFAttributedStringGetLength(a1);
  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v8 = *MEMORY[0x277CC4838];
  while (longestEffectiveRange.length + longestEffectiveRange.location < v7)
  {
    v27.location = 0;
    v27.length = v7;
    AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(a1, longestEffectiveRange.length + longestEffectiveRange.location, v8, v27, &longestEffectiveRange);
    if (!AttributeAndLongestEffectiveRange)
    {
      break;
    }

    v10 = CTFontCopyPostScriptName(AttributeAndLongestEffectiveRange);
    if (CFEqual(v10, @"AppleColorEmoji"))
    {
      v21 = longestEffectiveRange;
      v22 = 1;
      std::vector<TSWPVerticalFacingRange>::push_back[abi:nn200100](&__p, &v21.location);
    }

    CFRelease(v10);
  }

  v11 = __p;
  if (v25 != __p)
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v25 - __p) >> 3);
    v14 = *MEMORY[0x277CC4AC8];
    v15 = *MEMORY[0x277CBED28];
    v16 = *MEMORY[0x277CBED10];
    v17 = 1;
    do
    {
      v18 = (__p + 24 * v12);
      if (LOBYTE(v18[1].location))
      {
        v19 = v15;
      }

      else
      {
        v19 = v16;
      }

      CFAttributedStringSetAttribute(a1, *v18, v14, v19);
      v12 = v17;
    }

    while (v13 > v17++);
    v11 = __p;
  }

  if (v11)
  {
    v25 = v11;
    operator delete(v11);
  }
}

void sub_26C98CEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPCTFontSupportsNativeSmallCaps(const __CTFont *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = CTFontCopyFeatures(a1);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v32;
    v5 = *MEMORY[0x277CC48D8];
    v22 = *MEMORY[0x277CC48E0];
    v6 = *MEMORY[0x277CC48C8];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 objectForKey:v5];
        if ([v9 integerValue] == 3)
        {
          v10 = [v8 objectForKey:v22];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
LABEL_9:
            v14 = 0;
            while (1)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([objc_msgSend(*(*(&v27 + 1) + 8 * v14) objectForKey:{v6), "integerValue"}] == 3)
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
                if (v12)
                {
                  goto LABEL_9;
                }

                goto LABEL_25;
              }
            }

LABEL_28:
            v20 = 1;
            goto LABEL_30;
          }
        }

        else if ([v9 integerValue] == 37)
        {
          v15 = [v8 objectForKey:v22];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v24;
LABEL_19:
            v19 = 0;
            while (1)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if ([objc_msgSend(*(*(&v23 + 1) + 8 * v19) objectForKey:{v6), "integerValue"}] == 1)
              {
                goto LABEL_28;
              }

              if (v17 == ++v19)
              {
                v17 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
                if (v17)
                {
                  goto LABEL_19;
                }

                break;
              }
            }
          }
        }

LABEL_25:
        ;
      }

      v3 = [(__CFArray *)v1 countByEnumeratingWithState:&v31 objects:v37 count:16];
      v20 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_30:

  return v20;
}

uint64_t TSWPGetAdornmentLocation(void *a1, int a2, int a3)
{
  v5 = TSWPCJKLanguageForInputLanguageString(a1);
  v6 = &dword_26CA67758;
  v7 = 20;
  while (v5 != *(v6 - 2) || *(v6 - 4) != a2 || *v6 != a3)
  {
    v6 += 4;
    if (!--v7)
    {
      return 0;
    }
  }

  return v6[1];
}

__CFString *TSWPGetPrimaryInputLanguage()
{
  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75920] "tswp_currentFirstResponder")];
  if (![v0 length])
  {
    v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  if ([v0 length])
  {
    return v0;
  }

  else
  {
    return @"en";
  }
}

uint64_t TSWPGetListNumberTypeForString(uint64_t a1)
{
  if (TSWPGetListNumberTypeForString::onceToken != -1)
  {
    TSWPGetListNumberTypeForString_cold_1();
  }

  v2 = [TSWPGetListNumberTypeForString::listNames objectForKey:a1];
  if (v2)
  {
    return [v2 integerValue];
  }

  else
  {
    return 62;
  }
}

uint64_t __TSWPGetListNumberTypeForString_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  v1 = 0;
  do
  {
    result = [v0 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", v1), TSWPStringFromTSWPListNumberType(v1)}];
    v1 = (v1 + 1);
  }

  while (v1 != 62);
  TSWPGetListNumberTypeForString::listNames = v0;
  return result;
}

uint64_t TSWPStringFromTSWPListNumberType(unsigned int a1)
{
  if (onceTokenTSWPListNumberType != -1)
  {
    TSWPStringFromTSWPListNumberType_cold_1();
  }

  v2 = s_TSWPListNumberTypeStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPListNumberType", v2, 0);
}

uint64_t TSWPGetCharacterFormattingOptions(void *a1)
{
  if (!TSUHasCJKLanguage())
  {
    a1 = 0;
  }

  v2 = &dword_279D4A0C8;
  v3 = 4;
  while (1)
  {
    v4 = *(v2 - 1);
    if (a1)
    {
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else if (!v4)
    {
      return *v2;
    }

    if ([a1 hasPrefix:?])
    {
      return *v2;
    }

LABEL_9:
    v2 += 4;
    if (!--v3)
    {
      return 0;
    }
  }
}

uint64_t TSWPStringFromEnumWithTableAndIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v7 = [a3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", a1)}];
  if (!v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Unknown %@ (%ld)]", v8, a1];

    v11[0] = v9;
    v11[1] = v9;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  }

  return [v7 objectAtIndexedSubscript:a4];
}

uint64_t TSWPStringFromTSWPListLabelType(unsigned int a1)
{
  if (onceTokenTSWPListLabelType != -1)
  {
    TSWPStringFromTSWPListLabelType_cold_1();
  }

  v2 = s_TSWPListLabelTypeStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPListLabelType", v2, 0);
}

id __TSWPStringFromTSWPListLabelType_block_invoke()
{
  result = (*(s_TSWPListLabelTypeStringsInitBlock + 2))();
  s_TSWPListLabelTypeStrings = result;
  return result;
}

uint64_t TSWPDisplayStringFromTSWPListLabelType(unsigned int a1)
{
  if (onceTokenTSWPListLabelType != -1)
  {
    TSWPDisplayStringFromTSWPListLabelType_cold_1();
  }

  v2 = s_TSWPListLabelTypeStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPListLabelType", v2, 1);
}

id __TSWPDisplayStringFromTSWPListLabelType_block_invoke()
{
  result = (*(s_TSWPListLabelTypeStringsInitBlock + 2))();
  s_TSWPListLabelTypeStrings = result;
  return result;
}

id __TSWPStringFromTSWPListNumberType_block_invoke()
{
  result = (*(s_TSWPListNumberTypeStringsInitBlock + 2))();
  s_TSWPListNumberTypeStrings = result;
  return result;
}

uint64_t TSWPDisplayStringFromTSWPListNumberType(unsigned int a1)
{
  if (onceTokenTSWPListNumberType != -1)
  {
    TSWPDisplayStringFromTSWPListNumberType_cold_1();
  }

  v2 = s_TSWPListNumberTypeStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPListNumberType", v2, 1);
}

id __TSWPDisplayStringFromTSWPListNumberType_block_invoke()
{
  result = (*(s_TSWPListNumberTypeStringsInitBlock + 2))();
  s_TSWPListNumberTypeStrings = result;
  return result;
}

uint64_t TSWPStringFromTSWPCapitalization(unsigned int a1)
{
  if (onceTokenTSWPCapitalization != -1)
  {
    TSWPStringFromTSWPCapitalization_cold_1();
  }

  v2 = s_TSWPCapitalizationStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPCapitalization", v2, 0);
}

id __TSWPStringFromTSWPCapitalization_block_invoke()
{
  result = (*(s_TSWPCapitalizationStringsInitBlock + 2))();
  s_TSWPCapitalizationStrings = result;
  return result;
}

uint64_t TSWPDisplayStringFromTSWPCapitalization(unsigned int a1)
{
  if (onceTokenTSWPCapitalization != -1)
  {
    TSWPDisplayStringFromTSWPCapitalization_cold_1();
  }

  v2 = s_TSWPCapitalizationStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPCapitalization", v2, 1);
}

id __TSWPDisplayStringFromTSWPCapitalization_block_invoke()
{
  result = (*(s_TSWPCapitalizationStringsInitBlock + 2))();
  s_TSWPCapitalizationStrings = result;
  return result;
}

uint64_t TSWPStringFromTSWPWritingDirection(int a1)
{
  if (onceTokenTSWPWritingDirection != -1)
  {
    TSWPStringFromTSWPWritingDirection_cold_1();
  }

  v2 = s_TSWPWritingDirectionStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPWritingDirection", v2, 0);
}

id __TSWPStringFromTSWPWritingDirection_block_invoke()
{
  result = (*(s_TSWPWritingDirectionStringsInitBlock + 2))();
  s_TSWPWritingDirectionStrings = result;
  return result;
}

uint64_t TSWPDisplayStringFromTSWPWritingDirection(int a1)
{
  if (onceTokenTSWPWritingDirection != -1)
  {
    TSWPDisplayStringFromTSWPWritingDirection_cold_1();
  }

  v2 = s_TSWPWritingDirectionStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPWritingDirection", v2, 1);
}

id __TSWPDisplayStringFromTSWPWritingDirection_block_invoke()
{
  result = (*(s_TSWPWritingDirectionStringsInitBlock + 2))();
  s_TSWPWritingDirectionStrings = result;
  return result;
}

uint64_t TSWPStringFromTSWPTOCScope(unsigned int a1)
{
  if (onceTokenTSWPTOCScope != -1)
  {
    TSWPStringFromTSWPTOCScope_cold_1();
  }

  v2 = s_TSWPTOCScopeStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPTOCScope", v2, 0);
}

id __TSWPStringFromTSWPTOCScope_block_invoke()
{
  result = (*(s_TSWPTOCScopeStringsInitBlock + 2))();
  s_TSWPTOCScopeStrings = result;
  return result;
}

uint64_t TSWPDisplayStringFromTSWPTOCScope(unsigned int a1)
{
  if (onceTokenTSWPTOCScope != -1)
  {
    TSWPDisplayStringFromTSWPTOCScope_cold_1();
  }

  v2 = s_TSWPTOCScopeStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPTOCScope", v2, 1);
}

id __TSWPDisplayStringFromTSWPTOCScope_block_invoke()
{
  result = (*(s_TSWPTOCScopeStringsInitBlock + 2))();
  s_TSWPTOCScopeStrings = result;
  return result;
}

uint64_t TSWPStringFromTSWPVerticalAlignment(unsigned int a1)
{
  if (onceTokenTSWPVerticalAlignment != -1)
  {
    TSWPStringFromTSWPVerticalAlignment_cold_1();
  }

  v2 = s_TSWPVerticalAlignmentStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPVerticalAlignment", v2, 0);
}

id __TSWPStringFromTSWPVerticalAlignment_block_invoke()
{
  result = (*(s_TSWPVerticalAlignmentStringsInitBlock + 2))();
  s_TSWPVerticalAlignmentStrings = result;
  return result;
}

uint64_t TSWPDisplayStringFromTSWPVerticalAlignment(unsigned int a1)
{
  if (onceTokenTSWPVerticalAlignment != -1)
  {
    TSWPDisplayStringFromTSWPVerticalAlignment_cold_1();
  }

  v2 = s_TSWPVerticalAlignmentStrings;

  return TSWPStringFromEnumWithTableAndIndex(a1, "TSWPVerticalAlignment", v2, 1);
}

id __TSWPDisplayStringFromTSWPVerticalAlignment_block_invoke()
{
  result = (*(s_TSWPVerticalAlignmentStringsInitBlock + 2))();
  s_TSWPVerticalAlignmentStrings = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPVerticalFacingRange>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void TSWPStorageTransaction::~TSWPStorageTransaction(TSWPStorageTransaction *this)
{
  std::vector<TSWPStorageTransactionObject>::clear[abi:nn200100](this);
  v2 = this;
  std::vector<TSWPStorageTransactionObject>::__destroy_vector::operator()[abi:nn200100](&v2);
}

{
  std::vector<TSWPStorageTransactionObject>::clear[abi:nn200100](this);
  v2 = this;
  std::vector<TSWPStorageTransactionObject>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::vector<TSWPStorageTransactionObject>::clear[abi:nn200100](TSWPStorageTransactionObject **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = (v2 - 32);
    do
    {
      if (*v4)
      {
        TSWPStorageTransactionObject::adjustRetainCount(v4, 0);
      }

      v5 = v4 == v3;
      v4 = (v4 - 32);
    }

    while (!v5);
  }

  a1[1] = v3;
}

void TSWPStorageTransaction::TSWPStorageTransaction(TSWPStorageTransaction *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(this + 24) = vnegq_f64(v1);
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(this + 24) = vnegq_f64(v1);
}

void TSWPStorageTransaction::TSWPStorageTransaction(TSWPStorageTransaction *this, const TSWPStorageTransaction *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<TSWPStorageTransactionObject>::__init_with_size[abi:nn200100]<TSWPStorageTransactionObject*,TSWPStorageTransactionObject*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 5);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *(this + 24) = vnegq_f64(v3);
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<TSWPStorageTransactionObject>::__init_with_size[abi:nn200100]<TSWPStorageTransactionObject*,TSWPStorageTransactionObject*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 5);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *(this + 24) = vnegq_f64(v3);
}

float64x2_t TSWPStorageTransaction::compress(TSWPStorageTransaction *this)
{
  std::vector<TSWPStorageTransactionObject>::resize(this, (*(this + 1) - *this) >> 5);
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  result = vnegq_f64(v2);
  *(this + 24) = result;
  return result;
}

void std::vector<TSWPStorageTransactionObject>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = (v3 - 32);
        do
        {
          if (*v7)
          {
            TSWPStorageTransactionObject::adjustRetainCount(v7, 0);
          }

          v8 = v7 == v6;
          v7 = (v7 - 32);
        }

        while (!v8);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<TSWPStorageTransactionObject>::__append(a1, v5);
  }
}

uint64_t TSWPStorageTransaction::operator==(unsigned __int16 **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = TSWPStorageTransactionObject::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 16;
    v4 += 16;
  }

  while (v2 != v3);
  return result;
}

uint64_t TSWPStorageTransaction::compressTransaction(void *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 5)
  {
    v5 = a1[4];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = *a1 + 32 * v5;
      result = 1;
      *(v6 + 4) |= 1 << a3;
      return result;
    }
  }

  if (a3)
  {
    return 0;
  }

  v8 = a1[1];
  if (v8 == *a1 || *(v8 - 32) != a2 || *(v8 - 28))
  {
    return 0;
  }

  if (a2 == 2)
  {
    v9 = *(v8 - 20);
    if (v9 + *(v8 - 24) == a4)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (a2 == 7)
  {
    v9 = *(v8 - 20);
    if (v9 + *(v8 - 24) == a4 && *(v8 - 16) == *(a5 + 8))
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (a2 != 3 || a1[3] != a4 || *(v8 - 16) != *(a5 + 8))
  {
    return 0;
  }

  v9 = *(v8 - 20);
LABEL_19:
  *(v8 - 20) = v9 + 1;
  return 1;
}

void TSWPStorageTransaction::appendToTransaction(void *a1, int a2, int a3, unint64_t a4, uint64_t a5, NSString *a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  v28 = 0;
  v27 = 0;
  v29 = 0;
  v17 = a2;
  LOWORD(v26) = a2;
  if (a2 != 1)
  {
    LODWORD(v27) = a3;
  }

  if ((TSWPStorageTransaction::compressTransaction(a1, a2, a3, a4, a5) & 1) == 0)
  {
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        TSWPStorageTransactionObject::setTextTransaction(&v26, a7, a6, a8);
        a1[4] = (a1[1] - *a1) >> 5;
        goto LABEL_39;
      }

      if (a2 != 2)
      {
        if (a2 == 3)
        {
          if (a3 <= 9)
          {
            if (!a3)
            {
              TSWPStorageTransactionObject::setCharIndexTransaction(&v26, *a5, 1uLL, *(a5 + 8));
              goto LABEL_39;
            }

            if (a3 == 1)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (a3 == 10)
            {
              goto LABEL_38;
            }

            if (a3 == 11 || a3 == 18)
            {
              goto LABEL_35;
            }
          }

          TSWPStorageTransactionObject::setAttributeIndexTransaction(&v26, a4, *a5, *(a5 + 8));
          goto LABEL_39;
        }

LABEL_31:
        v21 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPStorageTransaction::appendToTransaction(TSWPUndoKind, TSWPAttributeArrayKind, TSWPAttributeIndex, const TSWPAttributeRecord &, NSString *, TSWPCharIndex, NSUInteger, NSInteger)"}];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
        v24 = @"Bad undo kind for append to transaction.";
        v25 = 224;
LABEL_32:
        [v21 handleFailureInFunction:v22 file:v23 lineNumber:v25 description:v24];
        goto LABEL_39;
      }

      v20 = 0;
    }

    else
    {
      if (a2 <= 6)
      {
        if ((a2 - 4) < 2)
        {
          LOWORD(v26) = 4;
          TSWPStorageTransactionObject::setCharDeltaTransaction(&v26, *a5, a4, a9);
LABEL_39:
          std::vector<TSWPStorageTransactionObject>::push_back[abi:nn200100](a1, &v26);
          v17 = v26;
          goto LABEL_40;
        }

        if (a2 == 6)
        {
          TSWPStorageTransactionObject::setReplaceCharIndexTransaction(&v26, a4, *a5);
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (a2 != 7)
      {
        if (a2 == 8)
        {
          if (a3 <= 10)
          {
            if (a3 != 1 && a3 != 10)
            {
LABEL_43:
              v21 = [MEMORY[0x277D6C290] currentHandler];
              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPStorageTransaction::appendToTransaction(TSWPUndoKind, TSWPAttributeArrayKind, TSWPAttributeIndex, const TSWPAttributeRecord &, NSString *, TSWPCharIndex, NSUInteger, NSInteger)"}];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
              v24 = @"Bad undo kind: kUndoKindReplaceParagraphData.";
              v25 = 218;
              goto LABEL_32;
            }

LABEL_38:
            TSWPStorageTransactionObject::setParagraphDataTransaction(&v26, a4, *a5, *(a5 + 8), *(a5 + 10));
            goto LABEL_39;
          }

          if (a3 != 18 && a3 != 11)
          {
            goto LABEL_43;
          }

LABEL_35:
          TSWPStorageTransactionObject::setParagraphDataTransaction(&v26, a4, *a5, *(a5 + 8));
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (a3 <= 0x12 && ((1 << a3) & 0x40C02) != 0)
      {
        v18 = [MEMORY[0x277D6C290] currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPStorageTransaction::appendToTransaction(TSWPUndoKind, TSWPAttributeArrayKind, TSWPAttributeIndex, const TSWPAttributeRecord &, NSString *, TSWPCharIndex, NSUInteger, NSInteger)"}];
        [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"), 202, @"Bad undo kind: kUndoKindReplaceObject."}];
      }

      v20 = *(a5 + 8);
    }

    TSWPStorageTransactionObject::setInsertAttributeTransaction(&v26, a4, 1uLL, v20);
    goto LABEL_39;
  }

LABEL_40:
  a1[3] = a4;
  if (v17)
  {
    TSWPStorageTransactionObject::adjustRetainCount(&v26, 0);
  }
}

void sub_26C98EE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11)
{
  if (a11)
  {
    TSWPStorageTransactionObject::adjustRetainCount(&a11, 0);
  }

  _Unwind_Resume(exception_object);
}

void TSWPStorageTransactionObject::TSWPStorageTransactionObject(TSWPStorageTransactionObject *this)
{
  *this = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

{
  *this = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

NSString *TSWPStorageTransactionObject::setTextTransaction(TSWPStorageTransactionObject *this, unint64_t a2, NSString *a3, unint64_t a4)
{
  if (HIDWORD(a2))
  {
    TSWPStorageTransactionObject::setTextTransaction();
    LODWORD(a2) = -1;
  }

  *(this + 2) = a2;
  result = a3;
  *(this + 2) = result;
  if (HIDWORD(a4))
  {
    result = TSWPStorageTransactionObject::setTextTransaction();
    LODWORD(a4) = -1;
  }

  *(this + 3) = a4;
  return result;
}

objc_object *TSWPStorageTransactionObject::setInsertAttributeTransaction(TSWPStorageTransactionObject *this, unint64_t a2, unint64_t a3, objc_object *a4)
{
  if (HIDWORD(a2))
  {
    TSWPStorageTransactionObject::setInsertAttributeTransaction();
    LODWORD(a2) = -1;
  }

  *(this + 2) = a2;
  if (HIDWORD(a3))
  {
    TSWPStorageTransactionObject::setInsertAttributeTransaction();
    LODWORD(a3) = -1;
  }

  *(this + 3) = a3;
  result = a4;
  *(this + 2) = result;
  return result;
}

objc_object *TSWPStorageTransactionObject::setCharIndexTransaction(TSWPStorageTransactionObject *this, unint64_t a2, unint64_t a3, objc_object *a4)
{
  if (HIDWORD(a2))
  {
    TSWPStorageTransactionObject::setCharIndexTransaction();
    LODWORD(a2) = -1;
  }

  *(this + 2) = a2;
  if (HIDWORD(a3))
  {
    TSWPStorageTransactionObject::setCharIndexTransaction();
    LODWORD(a3) = -1;
  }

  *(this + 3) = a3;
  result = a4;
  *(this + 2) = result;
  return result;
}

uint64_t TSWPStorageTransactionObject::setParagraphDataTransaction(uint64_t this, unint64_t a2, unint64_t a3, __int16 a4, __int16 a5)
{
  v8 = this;
  if (HIDWORD(a2))
  {
    this = TSWPStorageTransactionObject::setParagraphDataTransaction();
    LODWORD(a2) = -1;
  }

  *(v8 + 8) = a2;
  *(v8 + 12) = a4;
  *(v8 + 14) = a5;
  if (HIDWORD(a3))
  {
    this = TSWPStorageTransactionObject::setParagraphDataTransaction();
    LODWORD(a3) = -1;
  }

  *(v8 + 16) = a3;
  return this;
}

_DWORD *TSWPStorageTransactionObject::setParagraphDataTransaction(_DWORD *this, unint64_t a2, unint64_t a3, int a4)
{
  v6 = this;
  if (HIDWORD(a2))
  {
    this = TSWPStorageTransactionObject::setParagraphDataTransaction();
    LODWORD(a2) = -1;
  }

  v6[2] = a2;
  v6[3] = a4;
  if (HIDWORD(a3))
  {
    this = TSWPStorageTransactionObject::setParagraphDataTransaction();
    LODWORD(a3) = -1;
  }

  v6[4] = a3;
  return this;
}

objc_object *TSWPStorageTransactionObject::setAttributeIndexTransaction(TSWPStorageTransactionObject *this, unint64_t a2, unint64_t a3, objc_object *a4)
{
  if (HIDWORD(a2))
  {
    TSWPStorageTransactionObject::setAttributeIndexTransaction();
    LODWORD(a2) = -1;
  }

  *(this + 2) = a2;
  if (HIDWORD(a3))
  {
    TSWPStorageTransactionObject::setAttributeIndexTransaction();
    LODWORD(a3) = -1;
  }

  *(this + 3) = a3;
  result = a4;
  *(this + 2) = result;
  return result;
}

_DWORD *TSWPStorageTransactionObject::setCharDeltaTransaction(_DWORD *this, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = this;
  if (HIDWORD(a2))
  {
    this = TSWPStorageTransactionObject::setCharDeltaTransaction();
    LODWORD(a2) = -1;
  }

  v6[2] = a2;
  if (HIDWORD(a3))
  {
    this = TSWPStorageTransactionObject::setCharDeltaTransaction();
    LODWORD(a3) = -1;
  }

  v6[3] = a3;
  if (a4 >= 0x80000000)
  {
    this = TSWPStorageTransactionObject::setCharDeltaTransaction();
    LODWORD(a4) = 0x7FFFFFFF;
  }

  else if (a4 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    this = TSWPStorageTransactionObject::setCharDeltaTransaction();
    LODWORD(a4) = 0x80000000;
  }

  v6[4] = a4;
  return this;
}

uint64_t TSWPStorageTransactionObject::setReplaceCharIndexTransaction(uint64_t this, unint64_t a2, unint64_t a3)
{
  v4 = this;
  if (HIDWORD(a2))
  {
    this = TSWPStorageTransactionObject::setReplaceCharIndexTransaction();
    LODWORD(a2) = -1;
  }

  *(v4 + 8) = a2;
  if (HIDWORD(a3))
  {
    this = TSWPStorageTransactionObject::setReplaceCharIndexTransaction();
    LODWORD(a3) = -1;
  }

  *(v4 + 12) = a3;
  *(v4 + 16) = 0;
  return this;
}

uint64_t std::vector<TSWPStorageTransactionObject>::push_back[abi:nn200100](uint64_t a1, const TSWPStorageTransactionObject *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TSWPStorageTransactionObject>::__emplace_back_slow_path<TSWPStorageTransactionObject const&>(a1, a2);
  }

  else
  {
    std::vector<TSWPStorageTransactionObject>::__construct_one_at_end[abi:nn200100]<TSWPStorageTransactionObject const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void TSWPStorageTransactionObject::~TSWPStorageTransactionObject(TSWPStorageTransactionObject *this)
{
  if (*this)
  {
    TSWPStorageTransactionObject::adjustRetainCount(this, 0);
  }
}

{
  if (*this)
  {
    TSWPStorageTransactionObject::adjustRetainCount(this, 0);
  }
}

void TSWPStorageTransaction::appendToTransaction(void *a1, int a2, NSString *a3, unint64_t a4, unint64_t a5)
{
  v5[0] = 0;
  v5[1] = 0;
  TSWPStorageTransaction::appendToTransaction(a1, a2, 0, 0x7FFFFFFFFFFFFFFFuLL, v5, a3, a4, a5, 0);
}

void TSWPStorageTransaction::appendToTransaction(uint64_t a1, __int16 a2, int a3, void *a4)
{
  v6 = 0;
  v8 = 0;
  v5[0] = a2;
  v7 = a3;
  v9 = a4;
  std::vector<TSWPStorageTransactionObject>::push_back[abi:nn200100](a1, v5);
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if (v5[0])
  {
    TSWPStorageTransactionObject::adjustRetainCount(v5, 0);
  }
}

void sub_26C98F30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9)
{
  if (a9)
  {
    TSWPStorageTransactionObject::adjustRetainCount(&a9, 0);
  }

  _Unwind_Resume(exception_object);
}

id TSWPStorageTransactionObject::setDOLCTransaction(uint64_t a1, int a2, void *a3)
{
  *(a1 + 8) = a2;
  result = a3;
  *(a1 + 16) = result;
  return result;
}

void TSWPStorageTransaction::appendToTransaction(uint64_t a1, __int16 a2, int a3, unint64_t a4, NSDate *a5)
{
  v8 = 0;
  v9 = 0;
  v6[0] = a2;
  v7 = a3;
  TSWPStorageTransactionObject::setCTDateTransaction(v6, a4, a5);
  std::vector<TSWPStorageTransactionObject>::push_back[abi:nn200100](a1, v6);
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if (v6[0])
  {
    TSWPStorageTransactionObject::adjustRetainCount(v6, 0);
  }
}

void sub_26C98F3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9)
{
  if (a9)
  {
    TSWPStorageTransactionObject::adjustRetainCount(&a9, 0);
  }

  _Unwind_Resume(exception_object);
}

NSDate *TSWPStorageTransactionObject::setCTDateTransaction(TSWPStorageTransactionObject *this, unint64_t a2, NSDate *a3)
{
  if (HIDWORD(a2))
  {
    TSWPStorageTransactionObject::setCTDateTransaction();
    LODWORD(a2) = -1;
  }

  *(this + 2) = a2;
  result = a3;
  *(this + 2) = result;
  return result;
}

TSWPStorageTransaction *TSWPStorageTransaction::swap(TSWPStorageTransaction *this, TSWPStorageTransaction *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v3 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t TSWPStorageTransaction::compressCoalescedTransaction(TSWPStorageTransaction *this, TSWPStorageTransaction *a2)
{
  v2 = *(this + 1);
  if (v2 != *this && *(v2 - 32) == 1)
  {
    v3 = *a2;
    if (*(a2 + 1) - *a2 == 32 && *v3 == 1)
    {
      v4 = *(v2 - 20);
      v5 = *(v2 - 16);
      if (v4)
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v12 = *(v3 + 12);
        if (v12)
        {
          v13 = *(v3 + 16) == 0;
        }

        else
        {
          v13 = 0;
        }

        if (!v13 || *(v2 - 24) + v4 != *(v3 + 8))
        {
          return 0;
        }

        *(v2 - 20) = v12 + v4;
        return 1;
      }

      if (v4)
      {
        return 0;
      }

      if (!v5 || *(v3 + 12) != 0)
      {
        return 0;
      }

      result = *(v3 + 16);
      if (!result)
      {
        return result;
      }

      v9 = *(v3 + 8);
      v10 = *(v2 - 24);
      if (v10 - [result length] == v9)
      {
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", *(v3 + 16), *(v2 - 16)];

        *(v2 - 16) = v11;
        *(v2 - 24) = *(v3 + 8);
        return 1;
      }

      if (*(v3 + 8) == *(v2 - 24))
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", *(v2 - 16), *(v3 + 16)];

        *(v2 - 16) = v14;
        return 1;
      }
    }
  }

  return 0;
}

void TSWPStorageTransaction::coalesceWithTransaction(TSWPStorageTransaction *this, TSWPStorageTransaction *a2)
{
  if ((TSWPStorageTransaction::compressCoalescedTransaction(this, a2) & 1) == 0)
  {
    for (i = *a2; i != *(a2 + 1); i = (i + 32))
    {
      std::vector<TSWPStorageTransactionObject>::push_back[abi:nn200100](this, i);
    }
  }

  std::vector<TSWPStorageTransactionObject>::clear[abi:nn200100](a2);
}

void TSWPStorageTransactionObject::TSWPStorageTransactionObject(TSWPStorageTransactionObject *this, const TSWPStorageTransactionObject *a2)
{
  v2 = *a2;
  *this = v2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2)
  {
    TSWPStorageTransactionObject::assignFrom(this, a2);
  }
}

{
  v2 = *a2;
  *this = v2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2)
  {
    TSWPStorageTransactionObject::assignFrom(this, a2);
  }
}

void TSWPStorageTransactionObject::assignFrom(TSWPStorageTransactionObject *this, const TSWPStorageTransactionObject *a2)
{
  v4 = *this;
  if (v4 > 5)
  {
    if (*this <= 7u)
    {
      if (v4 == 6)
      {
        goto LABEL_18;
      }

      if (v4 != 7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v4 == 8)
      {
        goto LABEL_14;
      }

      if (v4 != 9)
      {
        if (v4 == 10)
        {
          v5 = *(a2 + 2);

          v6 = *(a2 + 8);
          *(this + 3) = *(a2 + 3);
LABEL_19:
          *(this + 8) = v6;
          return;
        }

        goto LABEL_20;
      }
    }

LABEL_17:
    v9 = *(a2 + 2);

    goto LABEL_18;
  }

  if (*this <= 2u)
  {
    if (*this)
    {
      goto LABEL_17;
    }

LABEL_18:
    v6 = *(a2 + 8);
    goto LABEL_19;
  }

  if (v4 - 4 < 2)
  {
LABEL_14:
    v8 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v8;
    return;
  }

  if (v4 == 3)
  {
    v7 = *(this + 1);
    if (v7 > 0x12 || ((1 << v7) & 0x40C02) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_20:
  v10 = [MEMORY[0x277D6C290] currentHandler];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPStorageTransactionObject::assignFrom(const TSWPStorageTransactionObject &)"];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];

  [v10 handleFailureInFunction:v11 file:v12 lineNumber:1028 description:@"Bad undo kind for assign from."];
}

TSWPStorageTransactionObject *TSWPStorageTransactionObject::operator=(TSWPStorageTransactionObject *this, TSWPStorageTransactionObject *a2)
{
  if (*this)
  {
    TSWPStorageTransactionObject::adjustRetainCount(this, 0);
  }

  v4 = *a2;
  *this = v4;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v4)
  {
    TSWPStorageTransactionObject::assignFrom(this, a2);
  }

  return this;
}

void TSWPStorageTransactionObject::adjustRetainCount(TSWPStorageTransactionObject *this, int a2)
{
  v3 = *this;
  if (v3 > 0xA)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPStorageTransactionObject::adjustRetainCount(BOOL)"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1082 description:@"Bad undo kind for adjust retain count."];
  }

  else
  {
    v4 = 1 << v3;
    if ((v4 & 0x175) == 0)
    {
      if ((v4 & 0x682) != 0 || (v7 = *(this + 1), v7 > 0x12) || ((1 << v7) & 0x40C02) == 0)
      {
        v5 = *(this + 2);
        if (v5)
        {
          if (a2)
          {

            v6 = v5;
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t TSWPStorageTransactionObject::operator==(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  if (v3 != *(a2 + 1))
  {
    return 0;
  }

  v4 = 0;
  if (*a1 <= 5u)
  {
    if (*a1 <= 2u)
    {
      if (*a1)
      {
        goto LABEL_18;
      }

      if (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
      {
        return 0;
      }

      return *(a1 + 2) == *(a2 + 2);
    }

    if ((v2 - 4) < 2)
    {
      goto LABEL_13;
    }

    if (v2 != 3)
    {
      return v4;
    }

    if (v3 > 9)
    {
      if (v3 != 10)
      {
        if (v3 != 11 && v3 != 18)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_49:
      if (*(a1 + 2) != *(a2 + 2) || a1[6] != a2[6])
      {
        return 0;
      }

      v7 = a1[7];
      v8 = a2[7];
LABEL_15:
      if (v7 != v8)
      {
        return 0;
      }

      v9 = *(a1 + 4);
      v10 = *(a2 + 4);
      return v9 == v10;
    }

    if (v3 == 1)
    {
      goto LABEL_49;
    }

LABEL_18:
    if (*(a1 + 2) != *(a2 + 2))
    {
      return 0;
    }

    v5 = *(a1 + 3);
    v6 = *(a2 + 3);
    goto LABEL_20;
  }

  if (*a1 <= 7u)
  {
    if (v2 == 6)
    {
      if (*(a1 + 2) != *(a2 + 2))
      {
        return 0;
      }

      v9 = *(a1 + 3);
      v10 = *(a2 + 3);
      return v9 == v10;
    }

    goto LABEL_18;
  }

  if (v2 == 8)
  {
    v4 = 0;
    if (v3 > 10)
    {
      if (v3 == 11 || v3 == 18)
      {
LABEL_13:
        if (*(a1 + 2) != *(a2 + 2))
        {
          return 0;
        }

        v7 = *(a1 + 3);
        v8 = *(a2 + 3);
        goto LABEL_15;
      }
    }

    else if (v3 == 1 || v3 == 10)
    {
      goto LABEL_49;
    }
  }

  else if (v2 == 9 || v2 == 10)
  {
    v5 = *(a1 + 2);
    v6 = *(a2 + 2);
LABEL_20:
    if (v5 == v6)
    {
      v11 = *(a1 + 2);
      v12 = *(a2 + 2);
      if (v11 == v12 || v11 && v12 && ([v11 isEqual:?] & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4;
}

void std::vector<TSWPStorageTransactionObject>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TSWPStorageTransactionObject>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<TSWPStorageTransactionObject>::__init_with_size[abi:nn200100]<TSWPStorageTransactionObject*,TSWPStorageTransactionObject*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TSWPStorageTransactionObject>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<TSWPStorageTransactionObject>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

TSWPStorageTransactionObject *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>,TSWPStorageTransactionObject*,TSWPStorageTransactionObject*,TSWPStorageTransactionObject*>(int a1, TSWPStorageTransactionObject *a2, TSWPStorageTransactionObject *a3, TSWPStorageTransactionObject *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *this = v7;
      *(this + 1) = *(v6 + 1);
      *(this + 1) = 0;
      *(this + 2) = 0;
      if (v7)
      {
        TSWPStorageTransactionObject::assignFrom(this, v6);
      }

      v6 = (v6 + 32);
      this = (this + 32);
    }

    while (v6 != a3);
  }

  return this;
}

uint64_t std::vector<TSWPStorageTransactionObject>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 12) = 0;
        *(v4 + 4) = 0;
        *(v4 + 20) = 0;
        v4 += 32;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>>(result, v10);
    }

    v12 = 32 * v8;
    v18 = 0;
    v19 = 32 * v8;
    *(&v20 + 1) = 0;
    v13 = 32 * v8;
    do
    {
      *v13 = 0;
      *(v13 + 12) = 0;
      *(v13 + 4) = 0;
      *(v13 + 20) = 0;
      v13 += 32;
    }

    while (v13 != 32 * v8 + 32 * a2);
    *&v20 = v12 + 32 * a2;
    v14 = *(result + 8);
    v15 = (v12 + *result - v14);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>,TSWPStorageTransactionObject*>(result, *result, v14, v15);
    v16 = *v3;
    *v3 = v15;
    v17 = *(v3 + 16);
    *(v3 + 8) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<TSWPStorageTransactionObject>::~__split_buffer(&v18);
  }

  return result;
}

void sub_26C98FEE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSWPStorageTransactionObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>,TSWPStorageTransactionObject*>(int a1, TSWPStorageTransactionObject *this, TSWPStorageTransactionObject *a3, TSWPStorageTransactionObject *a4)
{
  if (this != a3)
  {
    v6 = this;
    v7 = this;
    do
    {
      v8 = *v7;
      *a4 = v8;
      *(a4 + 1) = *(v7 + 1);
      *(a4 + 1) = 0;
      *(a4 + 2) = 0;
      if (v8)
      {
        TSWPStorageTransactionObject::assignFrom(a4, v7);
      }

      v7 = (v7 + 32);
      a4 = (a4 + 32);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (*v6)
      {
        TSWPStorageTransactionObject::adjustRetainCount(v6, 0);
      }

      v6 = (v6 + 32);
    }
  }
}

uint64_t std::__split_buffer<TSWPStorageTransactionObject>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TSWPStorageTransactionObject>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

TSWPStorageTransactionObject *std::__split_buffer<TSWPStorageTransactionObject>::__destruct_at_end[abi:nn200100](uint64_t a1, TSWPStorageTransactionObject *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v5 = *(result - 16);
    result = (result - 32);
    *(a1 + 16) = result;
    if (v5)
    {
      TSWPStorageTransactionObject::adjustRetainCount(result, 0);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::vector<TSWPStorageTransactionObject>::__construct_one_at_end[abi:nn200100]<TSWPStorageTransactionObject const&>(uint64_t a1, const TSWPStorageTransactionObject *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *v3 = v4;
  *(v3 + 4) = *(a2 + 1);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  if (v4)
  {
    TSWPStorageTransactionObject::assignFrom(v3, a2);
  }

  *(a1 + 8) = v3 + 32;
}

uint64_t std::vector<TSWPStorageTransactionObject>::__emplace_back_slow_path<TSWPStorageTransactionObject const&>(uint64_t a1, const TSWPStorageTransactionObject *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = v8;
  v19 = (32 * v2);
  v9 = *a2;
  *v8 = v9;
  *(v8 + 4) = *(a2 + 1);
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  if (v9)
  {
    TSWPStorageTransactionObject::assignFrom(v8, a2);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPStorageTransactionObject>,TSWPStorageTransactionObject*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<TSWPStorageTransactionObject>::~__split_buffer(&v17);
  return v16;
}

void sub_26C990184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TSWPStorageTransactionObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t TSWPStorageTransactionObject::setTextTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setTextTransaction(TSWPCharIndex, NSString *, NSUInteger)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setTextTransaction(TSWPCharIndex, NSString *, NSUInteger)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t TSWPStorageTransactionObject::setInsertAttributeTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setInsertAttributeTransaction(TSWPAttributeIndex, TSWPAttributeCount, id)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setInsertAttributeTransaction(TSWPAttributeIndex, TSWPAttributeCount, id)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t TSWPStorageTransactionObject::setCharIndexTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setCharIndexTransaction(TSWPCharIndex, TSWPAttributeCount, id)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setCharIndexTransaction(TSWPCharIndex, TSWPAttributeCount, id)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t TSWPStorageTransactionObject::setParagraphDataTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt16, UInt16)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt16, UInt16)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt32)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setParagraphDataTransaction(TSWPAttributeIndex, TSWPCharIndex, UInt32)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t TSWPStorageTransactionObject::setAttributeIndexTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setAttributeIndexTransaction(TSWPAttributeIndex, TSWPCharIndex, id)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setAttributeIndexTransaction(TSWPAttributeIndex, TSWPCharIndex, id)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t TSWPStorageTransactionObject::setCharDeltaTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setCharDeltaTransaction(TSWPCharIndex, TSWPAttributeIndex, NSInteger)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t TSWPStorageTransactionObject::setReplaceCharIndexTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setReplaceCharIndexTransaction(TSWPAttributeIndex, TSWPCharIndex)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setReplaceCharIndexTransaction(TSWPAttributeIndex, TSWPCharIndex)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t TSWPStorageTransactionObject::setCTDateTransaction()
{
  [MEMORY[0x277D6C290] currentHandler];
  [OUTLINED_FUNCTION_0_4() stringWithUTF8String:{"void TSWPStorageTransactionObject::setCTDateTransaction(TSWPAttributeIndex, NSDate *)"}];
  [OUTLINED_FUNCTION_2_0() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageTransaction.mm"];
  v0 = OUTLINED_FUNCTION_1_1();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

void *TSWPSmartFieldAttributeArray::adoptStylesheetWithMapper(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[2];
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 8;
    do
    {
      result = *(v6[4] + v8);
      if (result)
      {
        result = [result adoptStylesheet:a2 withMapper:a3];
        v3 = v6[2];
      }

      ++v7;
      v8 += 16;
    }

    while (v7 < v3);
  }

  return result;
}

void TSWPSmartFieldAttributeArray::applyObjectToCharRange(TSWPAttributeArray *this, objc_object *a2, _NSRange a3, TSKAddedToDocumentContext *a4, TSWPStorageTransaction *a5)
{
  length = a3.length;
  location = a3.location;
  if (this->var1 == 12 && a3.location == TSWPAttributeArray::characterCount(this) && !length)
  {
    var2 = this->var2;
    v14 = location;
    v15 = a2;
    TSWPAttributeArray::insertAttribute(this, &v14, var2, a4, a5);
    v12 = this->var2;
    v14 = location + 1;
    v15 = 0;
    TSWPAttributeArray::insertAttribute(this, &v14, v12, a4, a5);
  }

  else
  {
    v13.location = location;
    v13.length = length;

    TSWPStyleAttributeArray::applyObjectToCharRange(this, a2, v13, a4, a5);
  }
}

void TSWPSmartFieldAttributeArray::willReplaceCharactersInRangeWithString(TSWPAttributeArray *this, _NSRange a2, uint64_t a3, uint64_t a4, uint64_t a5, TSWPStorageTransaction *a6)
{
  length = a2.length;
  location = a2.location;
  LOBYTE(this[1].var0) = 1;
  if (this->var1 == 7 && !TSWPStyleAttributeArray::deleteAttributesInRangeWithString(this, a2, a3, a4, a5, a6))
  {
    return;
  }

  if (!length || !a4)
  {
    v27.location = location;
    v27.length = length;

    TSWPStyleAttributeArray::willReplaceCharactersInRangeWithString(this, v27, a3, a4, a5, a6);
    return;
  }

  v33.location = location;
  v33.length = length;
  v13 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(this, v33);
  if (!v14)
  {
    return;
  }

  v15 = v13;
  v16 = v14;
  if (v13 >= this->var2)
  {
    p_var4 = &this->var4;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = TSWPAttributeArray::rangeForAttributeIndex(this, v13);
    v19 = v17;
    p_var4 = &this->var4;
    if (*(this->var4 + 2 * v15 + 1))
    {
      v21 = v17 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = v18;
      v32.location = location;
      v32.length = length;
      v34.location = v19;
      v34.length = v22;
      v23 = NSIntersectionRange(v32, v34);
      v24 = v23.location == *MEMORY[0x277D6C268] && v23.length == *(MEMORY[0x277D6C268] + 8);
      if (!v24 && (location > v19 || location + length < v19 + v22))
      {
        v25 = [MEMORY[0x277D6C290] currentHandler];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"virtual void TSWPSmartFieldAttributeArray::willReplaceCharactersInRangeWithString(NSRange, NSString *, NSUInteger, markerArray &, TSWPStorageTransaction *)"}];
        [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSmartFieldAttributeArray.mm"), 126, @"There should be no smart fields that overlap selections."}];
      }
    }
  }

  if (v19 != location)
  {
    goto LABEL_33;
  }

  v28 = *p_var4 + 16 * v15;
  if (!*(v28 + 8))
  {
    ++v15;
    goto LABEL_28;
  }

  if (v15)
  {
    if (*(v28 - 8))
    {
      v30[0] = location;
      v30[1] = 0;
      TSWPAttributeArray::insertAttribute(this, v30, v15++, 0, a6);
    }

    goto LABEL_33;
  }

  if (!*(*p_var4 + 1))
  {
    v15 = 1;
LABEL_28:
    if (!--v16)
    {
      return;
    }

    goto LABEL_33;
  }

  TSWPAttributeArray::replaceObjectForAttributeIndex(this, 0, 0, 0, a6);
  if (--v16)
  {
    v15 = 1;
LABEL_33:
    LOBYTE(this[1].var0) = 0;
    (*(this->var0 + 7))(this, v15, v16, a6);
    (*(this->var0 + 29))(this, v15, a6);
    return;
  }

  if (this->var2 >= 2 && !*(*p_var4 + 3))
  {
    v29 = *(this->var0 + 29);

    v29(this, 1, a6);
  }
}

void TSWPSmartFieldAttributeArray::didReplaceCharactersInRangeWithString(TSWPAttributeArray *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSWPStorageTransaction *a7, uint64_t a8)
{
  if (!a3 && a5)
  {
    v22 = (*(this->var0 + 35))(this, a8);
    v15 = LOBYTE(this[1].var0) ? 5 : 4;
    v16 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(this, a2);
    v17 = v16 >= this->var2 ? [this->var5 length] - a5 : TSWPAttributeArray::charIndexForAttributeIndex(this, v16);
    if (v17 == a2)
    {
      if (v16)
      {
        v18 = *(this->var4 + 2 * v16 - 1);
      }

      else
      {
        v18 = 0;
      }

      var2 = this->var2;
      if (v16 >= var2)
      {
        v20 = 0;
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v20 = *(this->var4 + 2 * v16 + 1);
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      if (!v20)
      {
        if ((v22 | 2) == 2)
        {
          if (v16 != var2)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

LABEL_30:
        if (v16 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v16;
        }

        if (v16)
        {
          v15 = v15;
        }

        else
        {
          v15 = 4;
        }

        v16 = v21;
LABEL_37:
        TSWPAttributeArray::adjustCharIndexStartingAtAttributeIndex(this, v15, v16, a5);
        return;
      }

LABEL_24:
      if (v18 && v20)
      {
        if (v22 == 2)
        {
LABEL_29:
          ++v16;
          LODWORD(v15) = 4;
          goto LABEL_30;
        }

        if (!v22)
        {
LABEL_28:
          v23 = a2;
          v24 = 0;
          TSWPAttributeArray::insertAttribute(this, &v23, v16, 0, a7);
          goto LABEL_29;
        }
      }

      else if (!v18 && v20)
      {
        if (v22 < 2)
        {
          if (!v16)
          {
            v23 = a2;
            v24 = 0;
            TSWPAttributeArray::insertAttribute(this, &v23, 0, 0, a7);
            v15 = 4;
            v16 = 1;
          }

          goto LABEL_37;
        }

        if (v22 == 2)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_30;
    }
  }

  TSWPStyleAttributeArray::didReplaceCharactersInRangeWithString(this, a2, a3, a4, a5, a6, a7);
}

TSWPAttributeArray *TSWPSmartFieldAttributeArray::didInsertAttribute(TSWPAttributeArray *this, id *a2, TSKAddedToDocumentContext *a3, TSWPStorageTransaction *a4)
{
  if (![(TSKAddedToDocumentContext *)a3 changeTrackingSubstorage])
  {
    [a2[1] setParentStorage:this->var5];
  }

  return TSWPAttributeArray::didInsertAttribute(this, a2, a3, a4);
}

TSWPAttributeArray *TSWPSmartFieldAttributeArray::willDeleteAttribute(TSWPAttributeArray *this, const TSWPAttributeRecord *a2, TSWPStorageTransaction *a3)
{
  result = TSWPAttributeArray::willDeleteAttribute(this, a2, a3);
  v6 = *(a2 + 1);
  if (v6)
  {
    result = [v6 parentStorage];
    if (result == this->var5)
    {

      return [v6 setParentStorage:0];
    }
  }

  return result;
}

uint64_t TSWPSmartFieldAttributeArray::shouldDeleteAttributeBeforeReplace(TSWPSmartFieldAttributeArray *this)
{
  objc_opt_class();
  v1 = TSUDynamicCast();

  return [v1 allowsEditing];
}

void TSWPSmartFieldAttributeArray::~TSWPSmartFieldAttributeArray(TSWPAttributeArray *this)
{
  TSWPStyleAttributeArray::~TSWPStyleAttributeArray(this);

  JUMPOUT(0x26D6A9A30);
}

void TSWPAttachmentAttributeArray::~TSWPAttachmentAttributeArray(TSWPAttributeArray *this)
{
  this->var0 = &unk_287D35E28;
  if (this->var2)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      if ([*(this->var4 + 2 * v2 + 1) parentStorage] == this->var5)
      {
        [*(this->var4 + 2 * v2 + 1) setParentStorage:0];
      }

      (*(this->var0 + 24))(this, this->var4 + 16 * v2);
      v2 = v3;
    }

    while (this->var2 > v3++);
  }

  TSWPAttributeArray::~TSWPAttributeArray(this);
}

{
  TSWPAttachmentAttributeArray::~TSWPAttachmentAttributeArray(this);

  JUMPOUT(0x26D6A9A30);
}

TSWPAttributeArray *TSWPAttachmentAttributeArray::insertAttributesForMarkers(TSWPAttributeArray *this, uint64_t a2, int a3, int a4, unint64_t a5, uint64_t *a6, TSWPStorageTransaction *a7)
{
  v8 = *a6;
  v7 = a6[1];
  if (*a6 != v7)
  {
    v13 = this;
    do
    {
      v14 = *(v8 + 8);
      if (v14 == 14)
      {
        if (v13->var1 != 5)
        {
          goto LABEL_7;
        }
      }

      else if (v14 != 65532 || v13->var1 != 4)
      {
        goto LABEL_7;
      }

      v15 = a5 + 1;
      v16[0] = *v8 + a2;
      v16[1] = 0;
      this = TSWPAttributeArray::insertAttribute(v13, v16, a5, 0, a7);
      v7 = a6[1];
      a5 = v15;
LABEL_7:
      v8 += 16;
    }

    while (v8 != v7);
  }

  return this;
}

uint64_t TSWPAttachmentAttributeArray::willInsertAttributeObject(uint64_t this, objc_object *a2, TSKAddedToDocumentContext *a3, TSWPStorageTransaction *a4)
{
  if (a2)
  {
    v6 = this;
    this = [*(this + 40) isDOLCSuppressed];
    if ((this & 1) == 0)
    {
      this = [*(v6 + 40) documentRoot];
      if (this)
      {

        return [(objc_object *)a2 willBeAddedToDocumentRoot:this context:a3];
      }
    }
  }

  return this;
}

uint64_t TSWPAttachmentAttributeArray::didInsertAttribute(uint64_t this, const TSWPAttributeRecord *a2, TSKAddedToDocumentContext *a3, TSWPStorageTransaction *a4)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v6 = this;
    [*(a2 + 1) setParentStorage:{*(this + 40), a4}];
    this = [*(v6 + 40) isDOLCSuppressed];
    if ((this & 1) == 0)
    {
      this = [*(v6 + 40) documentRoot];
      if (this)
      {

        return [v4 wasAddedToDocumentRoot:this context:a3];
      }
    }
  }

  return this;
}

uint64_t TSWPAttachmentAttributeArray::willDeleteAttribute(uint64_t this, const TSWPAttributeRecord *a2, TSWPStorageTransaction *a3)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = this;
    this = [*(a2 + 1) parentStorage];
    if (this == *(v4 + 40))
    {
      [v3 setParentStorage:0];
      this = [*(v4 + 40) isDOLCSuppressed];
      if ((this & 1) == 0)
      {
        this = [*(v4 + 40) documentRoot];
        if (this)
        {

          return [v3 willBeRemovedFromDocumentRoot:this];
        }
      }
    }
  }

  return this;
}

uint64_t TSWPAttachmentAttributeArray::didDeleteAttributeObject(uint64_t this, objc_object *a2, TSWPStorageTransaction *a3)
{
  if (a2)
  {
    v4 = this;
    this = [(objc_object *)a2 parentStorage];
    if (!this)
    {
      this = [*(v4 + 40) isDOLCSuppressed];
      if ((this & 1) == 0)
      {
        this = [*(v4 + 40) documentRoot];
        if (this)
        {

          return [(objc_object *)a2 wasRemovedFromDocumentRoot:this];
        }
      }
    }
  }

  return this;
}

void TSWPAttachmentAttributeArray::deleteAttributes(TSWPAttributeArray *this, unint64_t a2, unint64_t a3, TSWPStorageTransaction *a4)
{
  if ([this->var5 isDOLCSuppressed])
  {

    TSWPAttributeArray::deleteAttributes(this, a2, a3, a4);
  }

  else if (a3 == 1)
  {
    v23 = *(this->var4 + 2 * a2 + 1);
    v8 = v23;
    TSWPAttributeArray::deleteAttributes(this, a2, 1uLL, a4);
    (*(this->var0 + 33))(this, v23, a4);
  }

  else
  {
    __p = 0;
    v25 = 0;
    v26 = 0;
    std::vector<objc_object *>::reserve(&__p, a3);
    if (a3 + a2 > a2)
    {
      v9 = (16 * a2) | 8;
      v10 = a3;
      do
      {
        v11 = *(this->var4 + v9);
        if (v11)
        {
          v12 = v11;
          v13 = v25;
          if (v25 >= v26)
          {
            v15 = (v25 - __p) >> 3;
            if ((v15 + 1) >> 61)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v16 = (v26 - __p) >> 2;
            if (v16 <= v15 + 1)
            {
              v16 = v15 + 1;
            }

            if (v26 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(&__p, v17);
            }

            v18 = (8 * v15);
            *v18 = v11;
            v14 = 8 * v15 + 8;
            v19 = v18 - (v25 - __p);
            memcpy(v19, __p, v25 - __p);
            v20 = __p;
            __p = v19;
            v25 = v14;
            v26 = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          else
          {
            *v25 = v11;
            v14 = (v13 + 8);
          }

          v25 = v14;
        }

        v9 += 16;
        --v10;
      }

      while (v10);
    }

    TSWPAttributeArray::deleteAttributes(this, a2, a3, a4);
    v21 = __p;
    v22 = v25;
    if (__p != v25)
    {
      do
      {
        (*(this->var0 + 33))(this, *v21, a4);
      }

      while (v21 != v22);
      v21 = __p;
    }

    if (v21)
    {
      v25 = v21;
      operator delete(v21);
    }
  }
}

void sub_26C991920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TSWPAttachmentAttributeArray::adoptStylesheetWithMapper(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[2];
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 8;
    do
    {
      result = *(v6[4] + v8);
      if (result)
      {
        result = [result adoptStylesheet:a2 withMapper:a3];
        v3 = v6[2];
      }

      ++v7;
      v8 += 16;
    }

    while (v7 < v3);
  }

  return result;
}

void *TSWPAttachmentAttributeArray::willBeAddedToDocumentRoot(void *this, TSKDocumentRoot *a2, TSKAddedToDocumentContext *a3)
{
  v3 = this[2];
  if (v3)
  {
    v6 = this;
    v7 = 0;
    v8 = 8;
    do
    {
      this = *(v6[4] + v8);
      if (this)
      {
        this = [this willBeAddedToDocumentRoot:a2 context:a3];
        v3 = v6[2];
      }

      ++v7;
      v8 += 16;
    }

    while (v7 < v3);
  }

  return this;
}

void *TSWPAttachmentAttributeArray::wasAddedToDocumentRoot(void *this, TSKDocumentRoot *a2, TSKAddedToDocumentContext *a3)
{
  v3 = this[2];
  if (v3)
  {
    v6 = this;
    v7 = 0;
    v8 = 8;
    do
    {
      this = *(v6[4] + v8);
      if (this)
      {
        this = [this wasAddedToDocumentRoot:a2 context:a3];
        v3 = v6[2];
      }

      ++v7;
      v8 += 16;
    }

    while (v7 < v3);
  }

  return this;
}

void *TSWPAttachmentAttributeArray::willBeRemovedFromDocumentRoot(void *this, TSKDocumentRoot *a2)
{
  v2 = this[2];
  if (v2)
  {
    v4 = this;
    v5 = 0;
    v6 = 8;
    do
    {
      this = *(v4[4] + v6);
      if (this)
      {
        this = [this willBeRemovedFromDocumentRoot:a2];
        v2 = v4[2];
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < v2);
  }

  return this;
}

void *TSWPAttachmentAttributeArray::wasRemovedFromDocumentRoot(void *this, TSKDocumentRoot *a2)
{
  v2 = this[2];
  if (v2)
  {
    v4 = this;
    v5 = 0;
    v6 = 8;
    do
    {
      this = *(v4[4] + v6);
      if (this)
      {
        this = [this wasRemovedFromDocumentRoot:a2];
        v2 = v4[2];
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < v2);
  }

  return this;
}

uint64_t pSetupIndentAnimation(CABasicAnimation *a1, CALayer *a2, double a3)
{
  v6 = [(CALayer *)a2 presentationLayer];
  if (!v6)
  {
    v6 = a2;
  }

  [(CALayer *)v6 position];
  v8 = v7;
  v10 = v9 + a3;
  -[CABasicAnimation setFromValue:](a1, "setFromValue:", [MEMORY[0x277CCAE60] valueWithCGPoint:?]);
  -[CABasicAnimation setToValue:](a1, "setToValue:", [MEMORY[0x277CCAE60] valueWithCGPoint:{v10, v8}]);

  return [(CALayer *)a2 addAnimation:a1 forKey:@"position"];
}

uint64_t TSWPDropCapCTState::TSWPDropCapCTState(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *a1 = v5;
  *(a1 + 8) = *(a1 + 8) & 0xFE | [objc_msgSend(v5 "characterStyleOverridePropertyMap")];
  v6 = [*a1 charCount];
  v7 = [a3 length];
  v8 = [a3 charRangeMappedToStorage:{0, objc_msgSend(a3, "length")}];
  v9 = 1;
  if (!v7 || !v6)
  {
    goto LABEL_14;
  }

  v10 = v8;
  v11 = 0;
  v12 = 1;
  do
  {
    if ([a3 characterAtIndex:v12 - 1] == 65532 && (v13 = objc_msgSend(a3, "attachmentAtCharIndex:", v12 - 1), objc_msgSend(v13, "isDrawable")))
    {
      v14 = [v13 isAnchored];
      if (!v14)
      {
        ++v11;
      }

      v6 += v14;
    }

    else
    {
      ++v11;
    }

    if (v12 >= v7)
    {
      break;
    }
  }

  while (v12++ < v6);
  v9 = v11 == 0;
  if (!v11)
  {
LABEL_14:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v6;
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = v16;
  *(a1 + 16) = 0x3FF0000000000000;
  return a1;
}

void TSWPDropCapCTState::TSWPDropCapCTState(TSWPDropCapCTState *this, const TSWPDropCapCTState *a2)
{
  *this = *a2;
  v4 = *(a2 + 24);
  *(this + 8) = *(a2 + 8);
  *(this + 24) = v4;
}

{
  *this = *a2;
  v4 = *(a2 + 24);
  *(this + 8) = *(a2 + 8);
  *(this + 24) = v4;
}

uint64_t TSWPDropCapCTState::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {

    *a1 = *a2;
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  return a1;
}

void TSWPDropCapCTState::~TSWPDropCapCTState(id *this)
{
  *this = 0;
}

{

  *this = 0;
}

uint64_t TSWPDropCapCTState::isAffectingCTAttributesEquallyTo(TSWPDropCapCTState *this, const TSWPDropCapCTState *a2)
{
  v3 = *(this + 4);
  if (!v3)
  {
    v6 = a2 + 8;
    v4 = *(a2 + 4);
    if (v4 && (*(a2 + 2) != 1.0 || (*v6 & 1) != 0))
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (*(this + 2) == 1.0)
  {
    v4 = *(a2 + 4);
    if (!v4)
    {
      return 0;
    }

    v5 = *(this + 8);
  }

  else
  {
    v4 = *(a2 + 4);
    if (!v4)
    {
      return 0;
    }

    v5 = 1;
  }

  v6 = a2 + 8;
  if (*(a2 + 2) == 1.0)
  {
    if ((v5 & 1) == (*v6 & 1))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v7 = *(this + 3) == *(a2 + 3) && v3 == v4;
  if (!v7 || *(this + 2) != *(a2 + 2) || ((*v6 ^ *(this + 8)) & 1) != 0)
  {
    return 0;
  }

  v8 = [objc_msgSend(*this "characterStyleOverridePropertyMap")];
  v9 = [objc_msgSend(*a2 "characterStyleOverridePropertyMap")];
  if (v8 == v9)
  {
    return 1;
  }

  return [v8 isEqual:v9];
}

uint64_t TSWPDropCapCTState::textProperties(id *this)
{
  v1 = [*this characterStyleOverridePropertyMap];
  v2 = +[TSWPCharacterStyle properties];

  return [v1 propertyMapWithProperties:v2];
}

TSWPCharacterStyle *TSWPDropCapCTState::modifiedCharacterStyle(TSWPDropCapCTState *this, TSSStylesheet *a2, TSWPCharacterStyle *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    return a3;
  }

  if (a3)
  {
    v5 = [objc_msgSend(*this "characterStyleOverridePropertyMap")];

    return [(TSSStylesheet *)a2 variationOfStyle:a3 propertyMap:v5];
  }

  else
  {
    v7 = -[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]([TSWPCharacterStyle alloc], "initWithContext:name:overridePropertyMap:isVariation:", -[TSPObject context](a2, "context"), 0, [objc_msgSend(*this "characterStyleOverridePropertyMap")], 0);

    return v7;
  }
}

double TSWPDropCapCTState::clear(TSWPDropCapCTState *this)
{
  *this = 0;
  *(this + 8) &= ~1u;
  result = NAN;
  *(this + 24) = xmmword_26CA637B0;
  *(this + 2) = 0x3FF0000000000000;
  return result;
}

void TSWPDropCapCTState::prepareForRelayout(void **a1, void *a2, void *a3)
{
  if (*a1 != a2)
  {
    TSWPDropCapCTState::TSWPDropCapCTState(v4, a2, a3);
    TSWPDropCapCTState::operator=(a1, v4);
  }
}

void TSWPDropCapLayoutState::~TSWPDropCapLayoutState(id *this)
{
  *this = 0;
  v2 = this[32];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  this[1] = 0;
}

void sub_26C99F8D0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 256);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(a1);
}

uint64_t TSWPDropCapLayoutState::TSWPDropCapLayoutState(uint64_t a1, void *a2, void *a3)
{
  TSWPDropCapCTState::TSWPDropCapCTState(a1 + 8, a2, a3);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *a1 = a2;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = xmmword_26CA637B0;
  *(a1 + 232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 240) &= 0xE0u;
  *(a1 + 104) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  TSWPDropCapLayoutState::updateSpacing(a1, 0);
  TSWPDropCapLayoutState::validate(a1);
  return a1;
}

void sub_26C99F984(_Unwind_Exception *a1)
{
  v3 = *(v1 + 256);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(a1);
}

double TSWPDropCapLayoutState::clearIterationState(TSWPDropCapLayoutState *this)
{
  *(this + 26) = 0;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  return result;
}

void TSWPDropCapLayoutState::updateSpacing(TSWPDropCapLayoutState *this, unint64_t a2)
{
  if ([objc_msgSend(*this "spacings")] <= a2)
  {
    *(this + 6) = 0x7FFFFFFFFFFFFFFFLL;

    TSWPDropCapLayoutState::clear(this);
  }

  else
  {
    v4 = [objc_msgSend(*this "spacings")];
    *(this + 6) = a2;
    *(this + 7) = [v4 lineCount];
    *(this + 8) = [v4 elevatedLineCount];
    *(this + 9) = [v4 followingLineCount];
    *(this + 80) = [v4 allowSpanParagraphs];
    [v4 padding];
    *(this + 11) = v5;
    *(this + 12) = [*this computedFlagsForSpacing:v4];
    *(this + 26) = 0;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 9) = 0u;
    *(this + 20) = 0;
  }
}

void TSWPDropCapLayoutState::validate(id *this)
{
  if (this[7] < 2 || ![*this charCount] || this[8] >= this[7])
  {

    TSWPDropCapLayoutState::clear(this);
  }
}

void TSWPDropCapLayoutState::TSWPDropCapLayoutState(TSWPDropCapLayoutState *this, id *a2)
{
  *(this + 1) = a2[1];
  v4 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v4;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *this = *a2;
  *(this + 3) = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v7;
  *(this + 4) = v5;
  *(this + 5) = v6;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 11);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = v10;
  *(this + 8) = v8;
  *(this + 9) = v9;
  v11 = *(a2 + 12);
  v12 = *(a2 + 13);
  v13 = *(a2 + 14);
  *(this + 30) = a2[30];
  *(this + 13) = v12;
  *(this + 14) = v13;
  *(this + 12) = v11;
  v15 = a2[31];
  v14 = a2[32];
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = *(this + 32);
  *(this + 31) = v15;
  *(this + 32) = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_26C99FBB8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 256);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(a1);
}

uint64_t TSWPDropCapLayoutState::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {

    *a1 = *a2;
  }

  TSWPDropCapCTState::operator=(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v6;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  v10 = *(a2 + 192);
  v11 = *(a2 + 208);
  v12 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v11;
  *(a1 + 224) = v12;
  *(a1 + 192) = v10;
  v14 = *(a2 + 248);
  v13 = *(a2 + 256);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 256);
  *(a1 + 248) = v14;
  *(a1 + 256) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  return a1;
}

void TSWPDropCapLayoutState::clear(id *this)
{
  *this = 0;

  this[1] = 0;
  *(this + 16) &= ~1u;
  *(this + 2) = xmmword_26CA637B0;
  this[3] = 0x3FF0000000000000;
  this[7] = 0;
  this[8] = 0;
  this[9] = 0x7FFFFFFFFFFFFFFFLL;
  this[11] = 0;
  this[12] = 0;
  *(this + 80) = 1;
  this[23] = 0;
  this[25] = 0;
  this[26] = 0;
  *(this + 14) = xmmword_26CA66A30;
  *(this + 240) &= 0xE0u;
  *(this + 26) = 0;
  this[20] = 0;
  this[21] = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 7) = 0u;
  v2 = this[32];
  this[31] = 0;
  this[32] = 0;
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

BOOL TSWPDropCapLayoutState::impactsFragments(TSWPDropCapLayoutState *this, CGFloat a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  if (*(this + 240))
  {
    goto LABEL_3;
  }

  if (*(this + 28) < (v2 - *(this + 8)))
  {
    return 1;
  }

  if ((*(this + 96) & 8) == 0)
  {
LABEL_3:
    v3 = *(this + 31);
    return v3 && CGRectGetMaxY(*(v3 + 48)) > a2;
  }

  return 0;
}

void TSWPDropCapLayoutState::updateWithNewLineAdded(uint64_t a1, TSWPLineFragmentArray **a2, unint64_t a3, unint64_t a4, CGFloat a5, CGFloat a6)
{
  ++*(a1 + 224);
  if (!*(a1 + 248))
  {
    return;
  }

  v12 = TSWPLineFragmentArray::objectAtIndex(*a2, a3);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  v16 = *(v12 + 56);
  v17 = *(v12 + 64);
  v18 = *(v12 + 72);
  if ((*(v12 + 25) & 0x10) != 0)
  {
    MaxX = CGRectGetMaxX(*&v15);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v15);
  }

  v20 = *(a1 + 224);
  if (v20 == 1)
  {
    *(a1 + 168) = MaxX;
    *(a1 + 240) &= ~8u;
    v21 = *(v12 + 168);
    if (a4 >= 2)
    {
      v22 = a3 + a4;
      v23 = a3 + 1;
      if (v23 < v22)
      {
        v24 = a4 - 1;
        do
        {
          v21 = fmax(v21, *(TSWPLineFragmentArray::objectAtIndex(*a2, v23++) + 168));
          --v24;
        }

        while (v24);
      }
    }

    *(a1 + 160) = v21;
  }

  else if (v20 <= *(a1 + 56) - *(a1 + 64) && vabdd_f64(MaxX, *(a1 + 168)) >= 0.00999999978)
  {
    *(a1 + 240) |= 8u;
  }

  if ((*(a1 + 240) & 1) == 0)
  {
    v25 = *(a1 + 224);
    v26 = *(a1 + 56) - *(a1 + 64);
    if (v25 == v26 || v25 >= v26 && CGRectGetMaxY(*(*(a1 + 248) + 48)) > a5)
    {
      v27 = a6 - CGRectGetMinY(*(*(a1 + 248) + 48));
      if (v27 <= 0.0 || v27 <= CGRectGetHeight(*(*(a1 + 248) + 48)))
      {
        if (v25 != v26)
        {
          goto LABEL_26;
        }

        v28 = *(a1 + 248);
      }

      else
      {
        v28 = *(a1 + 248);
        *(v28 + 104) = *(v28 + 104) + v27 - *(v28 + 72);
        *(v28 + 72) = v27;
        if (v25 != v26)
        {
          goto LABEL_26;
        }
      }

      *(a1 + 128) = v13 + v14 - (*(a1 + 112) - *(a1 + 192));
      *(a1 + 144) = ceil(CGRectGetMaxY(*(v28 + 48)));
    }
  }

LABEL_26:
  if (CGRectGetMaxY(*(*(a1 + 248) + 48)) <= a6 && *(a1 + 232) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(a1 + 232) = 0;
  }

  if (CGRectGetMaxY(*(*(a1 + 248) + 48)) <= a5)
  {
    v29 = *(a1 + 232);
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29 + 1;
    }

    *(a1 + 232) = v30;
  }
}

void TSWPDropCapLayoutState::updateWithEndOfParagraph(TSWPDropCapLayoutState *this, double a2, int a3)
{
  if (a3)
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

  *(this + 240) = v3 | *(this + 240) & 0xFA;
  v4 = *(this + 31);
  if (v4 && *(this + 7) && (*(this + 80) != 1 || (a3 & 1) == 0))
  {
    fmax(a2, ceil(CGRectGetMaxY(*(v4 + 48))));
  }
}

BOOL TSWPDropCapLayoutState::isSatifyingRequirements(TSWPDropCapLayoutState *this)
{
  if (!*(this + 7))
  {
    return 1;
  }

  if ((*(this + 240) & 1) == 0)
  {
    return (*(this + 240) & 8) == 0;
  }

  v1 = *(this + 9);
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return (*(this + 240) & 8) == 0;
  }

  v2 = *(this + 29);
  if (v2 != 0x7FFFFFFFFFFFFFFFLL && v2 >= v1)
  {
    return (*(this + 240) & 8) == 0;
  }

  v4 = 0;
  if (*(this + 240) & 4) != 0 && (*(this + 80))
  {
    return (*(this + 240) & 8) == 0;
  }

  return v4;
}

BOOL TSWPDropCapLayoutState::needsLayoutIteration(TSWPDropCapLayoutState *this)
{
  if ((*(this + 240) & 1) != 0 || *(this + 28) != *(this + 7) - *(this + 8) || *(this + 26))
  {
    return 0;
  }

  if (vabdd_f64(*(this + 15), *(this + 16)) >= 0.00999999978 || vabdd_f64(*(this + 19), *(this + 20)) >= 0.00999999978)
  {
    return 1;
  }

  if ((*(this + 240) & 0x10) == 0)
  {
    return 0;
  }

  return vabdd_f64(*(this + 17), *(this + 18)) >= 0.00999999978;
}

uint64_t TSWPDropCapLayoutState::prepareForLayoutIteration(uint64_t this)
{
  ++*(this + 104);
  *(this + 184) = 0;
  *(this + 224) = 0;
  *(this + 168) = 0;
  *(this + 200) = 0;
  *(this + 208) = 0;
  *(this + 240) &= 0xE7u;
  return this;
}

uint64_t TSWPDropCapLayoutState::clearLayoutState(uint64_t this)
{
  *(this + 184) = 0;
  *(this + 224) = 0;
  *(this + 168) = 0;
  *(this + 200) = 0;
  *(this + 208) = 0;
  *(this + 240) &= 0xE7u;
  return this;
}

double TSWPDropCapLayoutState::reduceRequirements(TSWPDropCapLayoutState *this)
{
  v1 = *(this + 6);
  if (v1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    TSWPDropCapLayoutState::updateSpacing(this, v1 + 1);
    *(this + 3) = 0x3FF0000000000000;
    *(this + 23) = 0;
    *(this + 28) = 0;
    result = 0.0;
    *(this + 200) = 0u;
    *(this + 240) &= 0xE0u;
    *(this + 26) = 0;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 9) = 0u;
    *(this + 10) = 0u;
  }

  return result;
}

uint64_t TSWPDropCapLayoutState::dropCapHeightWithGuess(uint64_t this, double a2)
{
  if (*(this + 104) == 1)
  {
    a2 = *(this + 128);
  }

  *(this + 120) = a2;
  return this;
}

uint64_t TSWPDropCapLayoutState::lineCapHeightWithGuess(uint64_t this, double a2)
{
  if (*(this + 104) == 1)
  {
    a2 = *(this + 160);
  }

  *(this + 152) = a2;
  return this;
}

CGFloat TSWPDropCapLayoutState::dropCapBottom(TSWPDropCapLayoutState *this)
{
  v1 = *(this + 26);
  if (v1 == 1)
  {
    return *(this + 18);
  }

  result = 0.0;
  if (!v1)
  {
    v3 = *(this + 31);
    if (v3)
    {
      return CGRectGetMaxY(*(v3 + 48));
    }
  }

  return result;
}

uint64_t TSWPDropCapLayoutState::updateWithBaselineOffset(uint64_t this, double a2)
{
  if (*(this + 56) >= 2uLL && (*(this + 240) & 1) == 0 && !*(this + 224))
  {
    v2 = *(this + 176);
    if (v2 != a2)
    {
      v3 = *(this + 248);
      if (v3)
      {
        *(v3 + 40) = *(v3 + 40) - (a2 - v2);
        *(this + 176) = a2;
      }
    }
  }

  return this;
}

BOOL TSWPDropCapLayoutState::canFinalize(TSWPDropCapLayoutState *this)
{
  if (!*(this + 7))
  {
    return 0;
  }

  if ((*(this + 240) & 1) == 0)
  {
    return 0;
  }

  result = TSWPDropCapLayoutState::isSatifyingRequirements(this);
  if (result)
  {
    return *(this + 29) != 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

double TSWPDropCapLayoutState::adjustedAttachmentPosition(TSWPDropCapLayoutState *this, CGPoint a2, TSDLayout *a3, unint64_t a4)
{
  y = a2.y;
  x = a2.x;
  if (*(this + 7) && (*(this + 96) & 0x20) != 0 && *(this + 5) + *(this + 4) <= a4 && *(this + 31) && ceil(TSWPDropCapLayoutState::dropCapBottom(this)) > a2.y)
  {
    [(TSDAbstractLayout *)a3 frame];
    v10 = v8;
    v11 = v9;
    v12 = *(this + 31);
    v13 = *(v12 + 56);
    v14 = *(v12 + 72);
    v15 = *(v12 + 64) + 18.0;
    if ((*(v12 + 24) & 0x1000) != 0)
    {
      v16 = *(v12 + 48);
    }

    else
    {
      v16 = *(v12 + 48) + -18.0;
    }

    v17 = x;
    v18 = y;
    MaxX = CGRectGetMaxX(*(&v8 - 2));
    v28.origin.x = v16;
    v28.origin.y = v13;
    v28.size.width = v15;
    v28.size.height = v14;
    MinX = CGRectGetMinX(v28);
    v29.origin.x = v16;
    v29.origin.y = v13;
    v29.size.width = v15;
    v29.size.height = v14;
    v25 = CGRectGetMaxX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = v10;
    v30.size.height = v11;
    v24 = CGRectGetMinX(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = v10;
    v31.size.height = v11;
    MinY = CGRectGetMinY(v31);
    v32.origin.x = v16;
    v32.origin.y = v13;
    v32.size.width = v15;
    v32.size.height = v14;
    MidY = CGRectGetMidY(v32);
    v22 = MaxX > MinX && v25 > v24 && MinY > MidY;
    if (v22 && (*(this + 240) & 0x10) == 0)
    {
      *(this + 240) |= 0x10u;
      *(this + 17) = TSWPDropCapLayoutState::dropCapBottom(this);
    }
  }

  return x;
}

void sub_26C9A0D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
{
  a38 = &a22;
  std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:nn200100](&a38);
  _Unwind_Resume(a1);
}

void sub_26C9A1930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C9A1A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C9A282C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C9A3210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CGColorRef color, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  CGColorRelease(color);

  _Unwind_Resume(a1);
}

void TSWPRangeVector::TSWPRangeVector(TSWPRangeVector *this, const _NSRange *a2)
{
  this->__begin_ = 0;
  this->__end_ = 0;
  this->__cap_ = 0;
  std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(this, 1uLL);
}

void sub_26C9A34F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TSWPAdornmentLine>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TSWPAdornmentLine>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      CGColorRelease(*(v3 - 56));

      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void sub_26C9A3884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSWPChangeEnumerator::~TSWPChangeEnumerator(va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_26C9A392C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C9A3AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = *(v12 - 56);
  if (v14)
  {
    *(v12 - 48) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C9A53DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSTCellDictionarySetCellAtCellID(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellDictionarySetCellAtCellID(TSTCellDictionary *, TSTCellID, TSTCell *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellDictionary.m"), 100, @"can't insert an invalid cell ID"}];
  }

  pthread_rwlock_wrlock((a1 + 16));
  [*(a1 + 8) setObject:a3 forKey:(a2 << 16) | BYTE2(a2)];

  return pthread_rwlock_unlock((a1 + 16));
}

id TSTCellDictionaryCellAtCellID(uint64_t a1, int a2)
{
  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCell *TSTCellDictionaryCellAtCellID(TSTCellDictionary *, TSTCellID)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellDictionary.m"), 88, @"can't look up an invalid cell ID"}];
  }

  pthread_rwlock_rdlock((a1 + 16));
  v6 = [*(a1 + 8) objectForKey:(a2 << 16) | BYTE2(a2)];
  pthread_rwlock_unlock((a1 + 16));
  return v6;
}

uint64_t std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::find<SFUtility::ObjcSharedPtr<TSTTableDataObject>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if ([i[2] isEqual:*a2])
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__emplace_unique_key_args<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::pair<SFUtility::ObjcSharedPtr<TSTTableDataObject> const,unsigned int>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (([v11[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_26C9A761C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__erase_unique<SFUtility::ObjcSharedPtr<TSTTableDataObject>>(void *a1, id *a2)
{
  result = std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::find<SFUtility::ObjcSharedPtr<TSTTableDataObject>>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,std::__unordered_map_hasher<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectHasher,TSTTableDataObjectEqual,true>,std::__unordered_map_equal<SFUtility::ObjcSharedPtr<TSTTableDataObject>,std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>,TSTTableDataObjectEqual,TSTTableDataObjectHasher,true>,std::allocator<std::__hash_value_type<SFUtility::ObjcSharedPtr<TSTTableDataObject>,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_26C9A7F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 200), 8);
  _Block_object_dispose((v36 - 168), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_26C9A8740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9A88A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSTCellStorageHeaderFlagsForStorage(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

unsigned __int8 *TSTCellStorageFormatFlagsForStorage(unsigned __int8 *result)
{
  if (result)
  {
    if (*result < 2u)
    {
      return 0;
    }

    else
    {
      return *(result + 5);
    }
  }

  return result;
}

uint64_t p_TSTCellStorageExtraSizeForHeaderFlags(unsigned int a1, uint16x8_t a2)
{
  if (a1)
  {
    a2.i32[0] = a1;
    v2 = vshlq_u16(vdupq_n_s16(a1), xmmword_26CA679A0);
    v2.i16[0] = vshlq_u16(a2, xmmword_26CA67990).u16[0];
    v3.i64[0] = 0x4000400040004;
    v3.i64[1] = 0x4000400040004;
    v4 = vandq_s8(v2, v3);
    v4.i16[0] = vaddvq_s16(v4);
    return (v4.i32[0] + ((a1 >> 5) & 4) + (a1 & 4 | v2.i8[14] & 8) + ((a1 >> 3) & 8));
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

uint64_t p_TSTV1CellStorageSizeForHeaderFlags(unsigned int a1, uint16x8_t a2)
{
  if (a1)
  {
    return (p_TSTCellStorageExtraSizeForHeaderFlags(a1, a2) + 8);
  }

  else
  {
    return 8;
  }
}

uint64_t TSTCellStorageSizeForHeaderFlags(unsigned int a1, unsigned int a2, uint16x8_t a3)
{
  LOWORD(v3) = 12;
  if (a2 | a1)
  {
    v5 = p_TSTCellStorageExtraSizeForHeaderFlags(a1, a3);
    if (a2)
    {
      v6 = 16;
    }

    else
    {
      v6 = 12;
    }

    v7 = vdup_n_s16(a2);
    v8 = vshl_u16(v7, 0xFFFEFFFDFFFFFFFFLL);
    v8.i16[1] = vshl_u16(v7, 0x2000300010001).i16[1];
    v9 = vand_s8(v8, 0x4000400040004);
    v9.i16[0] = vaddv_s16(v9);
    return (v9.i32[0] + (a2 & 4) + ((a2 >> 4) & 4) + ((a2 >> 5) & 4) + v5 + v6);
  }

  return v3;
}

uint64_t TSTCellStorageHeaderFlagsForCell(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 56))
    {
      v1 = (2 * (*(a1 + 40) != 0)) | 0x80;
    }

    else
    {
      v1 = 2 * (*(a1 + 40) != 0);
    }

    if ((*(a1 + 104) - 1) < 0xFFFFFFFE)
    {
      v1 |= 4u;
    }

    if (*(a1 + 72) || *(a1 + 64))
    {
      v1 |= 0x200u;
    }

    if (*(a1 + 88) || *(a1 + 80))
    {
      v1 |= 0x1000u;
    }

    v2 = BYTE1(*(a1 + 8));
    if (v2 == 3)
    {
      v1 |= 0x10u;
    }
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  if ((v2 & 0xFFFFFFFB) == 2 || v2 == 7)
  {
    v1 |= 0x20u;
  }

  if (v2 == 5)
  {
    return v1 | 0x40;
  }

  else
  {
    return v1;
  }
}

uint64_t TSTCellStorageFormatFlagsForCell(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[19];
  if (v2)
  {
    [v2 getFormatStruct];
    v3 = (v12 - 1) < 0xFFFFFFFE;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[21];
  if (v4)
  {
    [v4 getFormatStruct];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 | 8;
    }
  }

  v5 = a1[25];
  if (v5)
  {
    [v5 getFormatStruct];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 | 2;
    }
  }

  v6 = a1[23];
  if (v6)
  {
    [v6 getFormatStruct];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 | 4;
    }
  }

  v7 = a1[27];
  if (v7)
  {
    [v7 getFormatStruct];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 | 0x10;
    }
  }

  v8 = a1[29];
  if (v8)
  {
    [v8 getFormatStruct];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 | 0x20;
    }
  }

  v9 = a1[31];
  if (v9)
  {
    [v9 getFormatStruct];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 | 0x40;
    }
  }

  v10 = a1[33];
  if (v10)
  {
    [v10 getFormatStruct];
    if ((v12 - 1) >= 0xFFFFFFFE)
    {
      return v3;
    }

    else
    {
      return v3 | 0x80;
    }
  }

  return v3;
}

unsigned __int8 *TSTCellStorageVersionAssert(unsigned __int8 *result)
{
  if (*result >= 4u)
  {
    v1 = result;
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTCellStorageVersionAssert(TSTCellStorage *)"];
    return [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 250, @"Can't parse cell storage header version %d!", *v1}];
  }

  return result;
}

uint64_t TSTCellToCellStorage(uint64_t a1, unsigned __int8 *a2)
{
  *a2 = 3;
  if (a1)
  {
    v4 = *(a1 + 9) << 8;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 1) = a2[1] | v4;
  v5 = *(a2 + 4) & 0xFFFFFFFFFFFF0000 | TSTCellStorageHeaderFlagsForCell(a1);
  *(a2 + 4) = v5;
  if (a1)
  {
    *(a2 + 4) = v5 & 0xFFFFFFFF0000FFFFLL | (*(a1 + 10) << 16);
    v6 = *(a1 + 272);
  }

  else
  {
    v6 = 0;
    *(a2 + 4) = v5 & 0xFFFFFFFF0000FFFFLL;
  }

  a2[3] = v6;
  v7 = TSTCellStorageFormatFlagsForCell(a1);
  v9 = v7;
  v10 = *(a2 + 4);
  *(a2 + 4) = v10 & 0xFFFFFFFFFFFFLL | (v7 << 48);
  if (!a1)
  {
    *(a2 + 4) = v10 | (v7 << 48);
    v14 = v10;
    v12 = v7;
    if ((v10 & 2) != 0)
    {
      *(a2 + 3) = 0;
      v17 = v10 & 0xFFFD;
      if ((v10 & 0x80) == 0)
      {
        v13 = 4;
        if ((v10 & 4) == 0)
        {
          goto LABEL_47;
        }

LABEL_38:
        v18 = &a2[v13 + 12];
        if (!a1)
        {
          v21 = 0;
          LOWORD(v14) = v17;
          goto LABEL_52;
        }

        LOWORD(v14) = v17;
LABEL_51:
        v21 = *(a1 + 100);
LABEL_52:
        *v18 = v21;
        v13 += 4;
        v14 &= 0xFFFBu;
        if ((v14 & 0x200) == 0)
        {
LABEL_57:
          if ((v14 & 0x1000) == 0)
          {
            if ((v14 & 0x10) != 0)
            {
              goto LABEL_123;
            }

            goto LABEL_59;
          }

          v40 = &a2[v13 + 12];
          if (a1)
          {
            goto LABEL_89;
          }

          v41 = 0;
LABEL_122:
          *v40 = v41;
          v13 += 4;
          v14 &= 0xEFFFu;
          if ((v14 & 0x10) != 0)
          {
LABEL_123:
            v49 = &a2[v13 + 12];
            if (!a1)
            {
              goto LABEL_128;
            }

            goto LABEL_124;
          }

LABEL_59:
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_130;
          }

          goto LABEL_60;
        }

LABEL_53:
        v22 = &a2[v13 + 12];
        if (!a1)
        {
          v23 = 0;
          goto LABEL_56;
        }

LABEL_54:
        v23 = *(a1 + 64);
LABEL_56:
        *v22 = v23;
        v13 += 4;
        v14 &= 0xFDFFu;
        goto LABEL_57;
      }

      v20 = 0;
      v19 = a2 + 16;
      v13 = 8;
      LOWORD(v14) = v14 & 0xFFFD;
    }

    else
    {
      if ((v10 & 0x80) == 0)
      {
        v13 = 0;
        if ((v10 & 4) == 0)
        {
          if ((v10 & 0x200) == 0)
          {
            if ((v10 & 0x1000) == 0)
            {
              if ((v10 & 0x10) == 0)
              {
                if ((v10 & 0x20) == 0)
                {
                  if ((v10 & 0x40) != 0)
                  {
                    v15 = 0;
                    v16 = a2 + 12;
                    goto LABEL_164;
                  }

                  goto LABEL_61;
                }

                v53 = a2 + 12;
                goto LABEL_153;
              }

              v49 = a2 + 12;
              goto LABEL_128;
            }

            v41 = 0;
            v40 = a2 + 12;
            goto LABEL_122;
          }

          v23 = 0;
          v22 = a2 + 12;
          goto LABEL_56;
        }

        v21 = 0;
        v18 = a2 + 12;
        goto LABEL_52;
      }

      v20 = 0;
      v19 = a2 + 12;
      v13 = 4;
    }

LABEL_46:
    *v19 = v20;
    v17 = v14 & 0xFF7F;
    if ((v14 & 4) == 0)
    {
LABEL_47:
      v14 = v17;
      if ((v17 & 0x200) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    }

    goto LABEL_38;
  }

  *(a2 + 4) = v10 | (v7 << 48) | (*(a1 + 96) << 32);
  v11 = v10;
  v12 = v7;
  if ((v10 & 2) == 0)
  {
    if ((v10 & 0x80) == 0)
    {
      v13 = 0;
      if ((v10 & 4) == 0)
      {
        if ((v10 & 0x200) == 0)
        {
          if ((v10 & 0x1000) == 0)
          {
            if ((v10 & 0x10) == 0)
            {
              if ((v10 & 0x20) == 0)
              {
                if ((v10 & 0x40) == 0)
                {
                  if (!v10)
                  {
                    goto LABEL_63;
                  }

LABEL_62:
                  v24 = [MEMORY[0x277D6C290] currentHandler];
                  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellToCellStorage(TSTCell *, TSTCellStorage *)"}];
                  [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 392, @"Failed to process all storage elements!"}];
                  goto LABEL_63;
                }

                v16 = a2 + 12;
LABEL_157:
                if (*(a1 + 9))
                {
                  if (*(a1 + 9) == 5)
                  {
                    v15 = *(a1 + 16);
LABEL_163:
                    LOWORD(v14) = v11;
LABEL_164:
                    [v15 timeIntervalSinceReferenceDate];
                    *v16 = v8.i64[0];
                    v13 += 8;
                    if ((v14 & 0xFFBF) != 0)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_63;
                  }

                  v60 = [MEMORY[0x277D6C290] currentHandler];
                  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate *TSTCellDateValue(TSTCell *)"];
                  [v60 handleFailureInFunction:v61 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1021, @"can't get date value from a non-date cell: %p", a1}];
                }

                v15 = 0;
                goto LABEL_163;
              }

              v53 = a2 + 12;
              goto LABEL_132;
            }

            v49 = a2 + 12;
            goto LABEL_125;
          }

          v40 = a2 + 12;
          LOWORD(v14) = v11;
          goto LABEL_89;
        }

        v22 = a2 + 12;
        LOWORD(v14) = v11;
        goto LABEL_54;
      }

      v18 = a2 + 12;
      LOWORD(v14) = v11;
      goto LABEL_51;
    }

    v19 = a2 + 12;
    v13 = 4;
    LOWORD(v14) = v11;
    goto LABEL_42;
  }

  *(a2 + 3) = *(a1 + 32);
  LOWORD(v14) = v10 & 0xFFFD;
  if ((v10 & 0x80) != 0)
  {
    v19 = a2 + 16;
    v13 = 8;
LABEL_42:
    v20 = *(a1 + 48);
    goto LABEL_46;
  }

  if ((v10 & 4) != 0)
  {
    v18 = a2 + 16;
    v13 = 4;
    goto LABEL_51;
  }

  if ((v10 & 0x200) != 0)
  {
    v22 = a2 + 16;
    v13 = 4;
    goto LABEL_54;
  }

  if ((v10 & 0x1000) != 0)
  {
    v40 = a2 + 16;
    v13 = 4;
LABEL_89:
    v41 = *(a1 + 80);
    goto LABEL_122;
  }

  if ((v10 & 0x10) != 0)
  {
    v49 = a2 + 16;
    v13 = 4;
LABEL_124:
    v11 = v14;
LABEL_125:
    if (*(a1 + 9) << 8 == 768)
    {
      v50 = *(a1 + 16);
      goto LABEL_129;
    }

    LOWORD(v14) = v11;
LABEL_128:
    v51 = [MEMORY[0x277D6C290] currentHandler];
    v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStringID(TSTCell *)"];
    [v51 handleFailureInFunction:v52 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 948, @"can't get string ID from non-string cell: %p", a1}];
    v50 = 0;
    v11 = v14;
LABEL_129:
    *v49 = v50;
    v13 += 4;
    v14 = v11 & 0xFFEF;
    if ((v11 & 0x20) != 0)
    {
LABEL_130:
      v53 = &a2[v13 + 12];
      if (a1)
      {
LABEL_131:
        v11 = v14;
LABEL_132:
        if ((*(a1 + 8) & 0xFB00) == 0x200 || BYTE1(*(a1 + 8)) == 7)
        {
          v55 = *(a1 + 16);
        }

        else
        {
          v55 = 0;
          if (BYTE1(*(a1 + 8)))
          {
            v56 = [MEMORY[0x277D6C290] currentHandler];
            v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
            [v56 handleFailureInFunction:v57 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
          }
        }

LABEL_154:
        *v53 = v55;
        v13 += 8;
        v14 = v11 & 0xFFDF;
        if ((v11 & 0x40) != 0)
        {
LABEL_155:
          v16 = &a2[v13 + 12];
          if (!a1)
          {
            v15 = 0;
            goto LABEL_164;
          }

          goto LABEL_156;
        }

LABEL_61:
        if (!v14)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

LABEL_153:
      v58 = [MEMORY[0x277D6C290] currentHandler];
      v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v58 handleFailureInFunction:v59 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 889, @"invalid nil value for '%s'", "cell"}];
      v55 = 0;
      v11 = v14;
      goto LABEL_154;
    }

LABEL_60:
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_155;
    }

    goto LABEL_61;
  }

  if ((v10 & 0x20) != 0)
  {
    v53 = a2 + 16;
    v13 = 4;
    goto LABEL_131;
  }

  if ((v10 & 0x40) != 0)
  {
    v16 = a2 + 16;
    v13 = 4;
LABEL_156:
    v11 = v14;
    goto LABEL_157;
  }

  v13 = 4;
  if ((v10 & 0xFFFD) != 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v9)
  {
    if (a1)
    {
      v36 = *(a1 + 144);
    }

    else
    {
      v36 = 0;
    }

    *&a2[v13 + 12] = v36;
    v13 += 4;
    v12 &= 0xFFFEu;
    if ((v12 & 8) == 0)
    {
LABEL_65:
      if ((v12 & 2) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_96;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_65;
  }

  if (a1)
  {
    v42 = *(a1 + 160);
  }

  else
  {
    v42 = 0;
  }

  *&a2[v13 + 12] = v42;
  v13 += 4;
  v12 &= ~8u;
  if ((v12 & 2) == 0)
  {
LABEL_66:
    if ((v12 & 4) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_100;
  }

LABEL_96:
  if (a1)
  {
    v43 = *(a1 + 192);
  }

  else
  {
    v43 = 0;
  }

  *&a2[v13 + 12] = v43;
  v13 += 4;
  v12 &= 0xFFFDu;
  if ((v12 & 4) == 0)
  {
LABEL_67:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_104;
  }

LABEL_100:
  if (a1)
  {
    v44 = *(a1 + 176);
  }

  else
  {
    v44 = 0;
  }

  *&a2[v13 + 12] = v44;
  v13 += 4;
  v12 &= 0xFFFBu;
  if ((v12 & 0x10) == 0)
  {
LABEL_68:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_108;
  }

LABEL_104:
  if (a1)
  {
    v45 = *(a1 + 208);
  }

  else
  {
    v45 = 0;
  }

  *&a2[v13 + 12] = v45;
  v13 += 4;
  v12 &= 0xFFEFu;
  if ((v12 & 0x20) == 0)
  {
LABEL_69:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_112;
  }

LABEL_108:
  if (a1)
  {
    v46 = *(a1 + 224);
  }

  else
  {
    v46 = 0;
  }

  *&a2[v13 + 12] = v46;
  v13 += 4;
  v12 &= 0xFFDFu;
  if ((v12 & 0x40) == 0)
  {
LABEL_70:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_116;
  }

LABEL_112:
  if (a1)
  {
    v47 = *(a1 + 240);
  }

  else
  {
    v47 = 0;
  }

  *&a2[v13 + 12] = v47;
  LOWORD(v13) = v13 + 4;
  v12 &= 0xFFBFu;
  if ((v12 & 0x80) == 0)
  {
LABEL_71:
    if (!v12)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_116:
  if (a1)
  {
    v48 = *(a1 + 256);
  }

  else
  {
    v48 = 0;
  }

  *&a2[v13 + 12] = v48;
  LOWORD(v13) = v13 + 4;
  if ((v12 & 0xFF7F) != 0)
  {
LABEL_72:
    v26 = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellToCellStorage(TSTCell *, TSTCellStorage *)"}];
    [v26 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 467, @"Failed to process all format storage elements!"}];
  }

LABEL_73:
  v28 = *(a2 + 4);
  v29 = v28;
  v30 = *a2;
  if (v30 <= 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = HIWORD(v28);
  }

  v33 = v13 + 12;
  if (v33 != TSTCellStorageSizeForHeaderFlags(*(a2 + 4), v31, v8))
  {
    NSLog(@"hate");
    v28 = *(a2 + 4);
    v30 = *a2;
    v29 = v28;
  }

  if (v30 <= 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = HIWORD(v28);
  }

  result = TSTCellStorageSizeForHeaderFlags(v29, v34, v32);
  if (v33 != result)
  {
    v37 = [MEMORY[0x277D6C290] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellToCellStorage(TSTCell *, TSTCellStorage *)"}];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"];

    return [v37 handleFailureInFunction:v38 file:v39 lineNumber:474 description:@"Size miscalculation!"];
  }

  return result;
}

uint64_t TSTV1CellStorageToCell(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 >= 2u)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell *)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 482, @"wrong version of the storage used here"}];
  }

  v6 = a1[2];
  TSTCellClearValue(a2);
  *(a2 + 9) = v6;
  *(a2 + 10) = *(a1 + 3);
  *(a2 + 272) = a1[3];
  v8 = *(a1 + 1);
  if ((v8 & 2) != 0)
  {
    *(a2 + 32) = *(a1 + 2);
    v10 = v8 & 0xFFFC;
    v9 = 4;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v10 = *(a1 + 1) & 0xFFFE;
  if ((v8 & 0x80) != 0)
  {
LABEL_7:
    *(a2 + 48) = *&a1[v9 + 8];
    v9 += 4;
    v10 &= 0xFF7Eu;
  }

LABEL_8:
  if ((v10 & 4) != 0)
  {
    *(a2 + 100) = *&a1[v9 + 8];
    v9 += 4;
    v10 &= ~4u;
    if ((v10 & 0x200) == 0)
    {
LABEL_10:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_10;
  }

  *(a2 + 64) = *&a1[v9 + 8];
  v9 += 4;
  v10 &= 0xFDFFu;
  if ((v10 & 0x1000) == 0)
  {
LABEL_11:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 80) = *&a1[v9 + 8];
  v9 += 4;
  v10 &= 0xEFFFu;
  if ((v10 & 0x10) == 0)
  {
LABEL_12:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_21:
  if (*(a2 + 9) << 8 == 768)
  {
    *(a2 + 16) = *&a1[v9 + 8];
  }

  else
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringID(TSTCell *, TSTTableDataListKey)"}];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 958, @"can't set string ID on non-string cell: %p", a2}];
  }

  v9 += 4;
  v10 &= 0xFFEFu;
  if ((v10 & 0x20) == 0)
  {
LABEL_13:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_30:
  v20 = a1[2];
  v21 = *&a1[v9 + 8];
  if (v20 == 7)
  {
    v23 = *(a2 + 8);
    if ((v23 & 0xFF00) == 0)
    {
      TSTCellClearValue(a2);
      *(a2 + 9) = 7;
      v23 = *(a2 + 8);
    }

    if ((v23 & 0xFF00) != 0x700)
    {
      v24 = [MEMORY[0x277D6C290] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDurationValue(TSTCell *, NSTimeInterval)"}];
      [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1080, @"can't set duration value on a non-duration cell: %p", a2}];
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v20 != 6)
  {
    v26 = *(a2 + 8);
    if ((v26 & 0xFF00) == 0)
    {
      TSTCellClearValue(a2);
      *(a2 + 9) = 2;
      v26 = *(a2 + 8);
    }

    if ((v26 & 0xFF00) != 0x200)
    {
      v29 = [MEMORY[0x277D6C290] currentHandler];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDoubleValue(TSTCell *, double)"}];
      [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 912, @"can't set value to non-value cell: %p", a2}];
      goto LABEL_48;
    }

LABEL_45:
    *(a2 + 16) = v21;
    goto LABEL_48;
  }

  v22 = *(a2 + 8);
  if ((v22 & 0xFF00) == 0)
  {
    TSTCellClearValue(a2);
    *(a2 + 9) = 6;
    v22 = *(a2 + 8);
  }

  if ((v22 & 0xFF00) == 0x600)
  {
    v7.i64[0] = 0;
    if (v21 != 0.0)
    {
      *v7.i64 = 1.0;
    }

    *(a2 + 16) = v7.i64[0];
  }

  else
  {
    v27 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetBoolValue(TSTCell *, BOOL)"}];
    [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 939, @"can't set BOOL value to non-BOOL cell: %p", a2}];
  }

LABEL_48:
  v9 += 8;
  v10 &= 0xFFDFu;
  if ((v10 & 0x40) == 0)
  {
LABEL_14:
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_49:
  v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*&a1[v9 + 8]];
  v32 = *(a2 + 8);
  if ((v32 & 0xFF00) == 0)
  {
    TSTCellClearValue(a2);
    *(a2 + 9) = 5;
    v32 = *(a2 + 8);
  }

  if ((v32 & 0xFF00) == 0x500)
  {
    v33 = *(a2 + 16);
    if (v33 != v31)
    {

      *(a2 + 16) = v31;
    }
  }

  else
  {
    v34 = [MEMORY[0x277D6C290] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDateValue(TSTCell *, NSDate *)"}];
    [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1038, @"can't set date value on a non-date cell: %p", a2}];
  }

  v9 += 8;
  if ((v10 & 0xFFBF) != 0)
  {
LABEL_15:
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell *)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 602, @"Failed to process all storage elements!"}];
  }

LABEL_16:
  result = *(a1 + 2);
  if (*(a1 + 2))
  {
    result = p_TSTCellStorageExtraSizeForHeaderFlags(result, v7);
    v14 = (result + 8);
  }

  else
  {
    v14 = 8;
  }

  if (v9 + 8 != v14)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell *)"}];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"];

    return [v15 handleFailureInFunction:v16 file:v17 lineNumber:605 description:@"Size miscalculation!"];
  }

  return result;
}

void TSTCellStorageToCell(unsigned __int8 *a1, uint64_t a2)
{
  TSTCellStorageVersionAssert(a1);
  TSTCellClear(a2);
  if (!a1)
  {
    return;
  }

  if (*a1 <= 1u)
  {

    TSTV1CellStorageToCell(a1, a2);
    return;
  }

  v4 = a1[2];
  TSTCellClearValue(a2);
  *(a2 + 9) = v4;
  *(a2 + 10) = *(a1 + 3);
  *(a2 + 272) = a1[3];
  *(a2 + 96) = *(a1 + 2);
  v6 = *(a1 + 4);
  v7 = v6;
  if ((v6 & 2) != 0)
  {
    *(a2 + 32) = *(a1 + 3);
    v7 = v6 & 0xFFFD;
    v8 = 4;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = 0;
  if ((v6 & 0x80) != 0)
  {
LABEL_10:
    *(a2 + 48) = *&a1[v8 + 12];
    v8 += 4;
    v7 &= 0xFF7Fu;
  }

LABEL_11:
  if ((v7 & 4) != 0)
  {
    *(a2 + 100) = *&a1[v8 + 12];
    v8 += 4;
    v7 &= 0xFFFBu;
    if ((v7 & 0x200) == 0)
    {
LABEL_13:
      if ((v7 & 0x1000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_13;
  }

  *(a2 + 64) = *&a1[v8 + 12];
  v8 += 4;
  v7 &= 0xFDFFu;
  if ((v7 & 0x1000) == 0)
  {
LABEL_14:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 80) = *&a1[v8 + 12];
  v8 += 4;
  v7 &= 0xEFFFu;
  if ((v7 & 0x10) == 0)
  {
LABEL_15:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_43;
    }

LABEL_24:
    v11 = a1[2];
    v12 = *&a1[v8 + 12];
    if (v11 == 7)
    {
      v14 = *(a2 + 8);
      if ((v14 & 0xFF00) == 0)
      {
        TSTCellClearValue(a2);
        *(a2 + 9) = 7;
        v14 = *(a2 + 8);
      }

      if ((v14 & 0xFF00) != 0x700)
      {
        v15 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDurationValue(TSTCell *, NSTimeInterval)"}];
        [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1080, @"can't set duration value on a non-duration cell: %p", a2}];
LABEL_42:
        v8 += 8;
        v7 &= 0xFFDFu;
        goto LABEL_43;
      }
    }

    else
    {
      if (v11 == 6)
      {
        v13 = *(a2 + 8);
        if ((v13 & 0xFF00) == 0)
        {
          TSTCellClearValue(a2);
          *(a2 + 9) = 6;
          v13 = *(a2 + 8);
        }

        if ((v13 & 0xFF00) == 0x600)
        {
          v5.i64[0] = 0;
          if (v12 != 0.0)
          {
            *v5.i64 = 1.0;
          }

          *(a2 + 16) = v5.i64[0];
        }

        else
        {
          v18 = [MEMORY[0x277D6C290] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetBoolValue(TSTCell *, BOOL)"}];
          [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 939, @"can't set BOOL value to non-BOOL cell: %p", a2}];
        }

        goto LABEL_42;
      }

      v17 = *(a2 + 8);
      if ((v17 & 0xFF00) == 0)
      {
        TSTCellClearValue(a2);
        *(a2 + 9) = 2;
        v17 = *(a2 + 8);
      }

      if ((v17 & 0xFF00) != 0x200)
      {
        v20 = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDoubleValue(TSTCell *, double)"}];
        [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 912, @"can't set value to non-value cell: %p", a2}];
        goto LABEL_42;
      }
    }

    *(a2 + 16) = v12;
    goto LABEL_42;
  }

LABEL_20:
  if (*(a2 + 9) << 8 == 768)
  {
    *(a2 + 16) = *&a1[v8 + 12];
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringID(TSTCell *, TSTTableDataListKey)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 958, @"can't set string ID on non-string cell: %p", a2}];
  }

  v8 += 4;
  v7 &= 0xFFEFu;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_43:
  v22 = HIWORD(v6);
  if ((v7 & 0x40) != 0)
  {
    v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*&a1[v8 + 12]];
    v33 = *(a2 + 8);
    if ((v33 & 0xFF00) == 0)
    {
      TSTCellClearValue(a2);
      *(a2 + 9) = 5;
      v33 = *(a2 + 8);
    }

    if ((v33 & 0xFF00) == 0x500)
    {
      v34 = *(a2 + 16);
      if (v34 != v32)
      {

        *(a2 + 16) = v32;
      }
    }

    else
    {
      v38 = [MEMORY[0x277D6C290] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDateValue(TSTCell *, NSDate *)"}];
      [v38 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1038, @"can't set date value on a non-date cell: %p", a2}];
    }

    v8 += 8;
    v7 &= 0xFFBFu;
    if ((v6 & 0x1000000000000) == 0)
    {
LABEL_45:
      if ((v6 & 0x8000000000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_76;
    }
  }

  else if ((v6 & 0x1000000000000) == 0)
  {
    goto LABEL_45;
  }

  *(a2 + 144) = *&a1[v8 + 12];
  v8 += 4;
  LODWORD(v22) = HIWORD(v6) & 0xFFFE;
  if ((v6 & 0x8000000000000) == 0)
  {
LABEL_46:
    if ((v22 & 2) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a2 + 160) = *&a1[v8 + 12];
  v8 += 4;
  LODWORD(v22) = v22 & 0xFFFFFFF7;
  if ((v22 & 2) == 0)
  {
LABEL_47:
    if ((v22 & 4) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a2 + 192) = *&a1[v8 + 12];
  v8 += 4;
  LODWORD(v22) = v22 & 0xFFFD;
  if ((v22 & 4) == 0)
  {
LABEL_48:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a2 + 176) = *&a1[v8 + 12];
  v8 += 4;
  LODWORD(v22) = v22 & 0xFFFB;
  if ((v22 & 0x10) == 0)
  {
LABEL_49:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a2 + 208) = *&a1[v8 + 12];
  v8 += 4;
  LODWORD(v22) = v22 & 0xFFEF;
  if ((v22 & 0x20) == 0)
  {
LABEL_50:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_51;
    }

LABEL_81:
    *(a2 + 240) = *&a1[v8 + 12];
    LOWORD(v8) = v8 + 4;
    LODWORD(v22) = v22 & 0xFFBF;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_80:
  *(a2 + 224) = *&a1[v8 + 12];
  v8 += 4;
  LODWORD(v22) = v22 & 0xFFDF;
  if ((v22 & 0x40) != 0)
  {
    goto LABEL_81;
  }

LABEL_51:
  if ((v22 & 0x80) != 0)
  {
LABEL_52:
    *(a2 + 256) = *&a1[v8 + 12];
    LOWORD(v8) = v8 + 4;
    LODWORD(v22) = v22 & 0xFF7F;
  }

LABEL_53:
  if (v22 | v7)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellStorageToCell(TSTCellStorage *, TSTCell *)"}];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 831, @"Failed to process all storage elements!"}];
  }

  v25 = *(a1 + 4);
  v26 = v25;
  v27 = *a1;
  if (v27 <= 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = HIWORD(v25);
  }

  v30 = v8 + 12;
  if (v30 != TSTCellStorageSizeForHeaderFlags(*(a1 + 4), v28, v5))
  {
    NSLog(@"hate");
    v25 = *(a1 + 4);
    v27 = *a1;
    v26 = v25;
  }

  if (v27 <= 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = HIWORD(v25);
  }

  if (v30 != TSTCellStorageSizeForHeaderFlags(v26, v31, v29))
  {
    v35 = [MEMORY[0x277D6C290] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellStorageToCell(TSTCellStorage *, TSTCell *)"}];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"];

    [v35 handleFailureInFunction:v36 file:v37 lineNumber:838 description:@"Size miscalculation!"];
  }
}

uint64_t TSTCellStorageGetElement(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if ((v3 & 2) != 0)
  {
    if (a2 == 2)
    {
      return a1 + 12;
    }

    v4 = 4;
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  if (a2 == 128)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 0x400) == 0)
  {
LABEL_4:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_18:
  if (a2 == 1024)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 0x800) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_20:
  if (a2 == 2048)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_22:
  if (a2 == 4)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 8) == 0)
  {
LABEL_7:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_24:
  if (a2 == 8)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 0x100) == 0)
  {
LABEL_8:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (a2 == 256)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 0x200) == 0)
  {
LABEL_9:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    if (a2 == 4096)
    {
      return a1 + v4 + 12;
    }

    v4 += 4;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_28:
  if (a2 == 512)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (a2 != 32)
    {
      v4 += 8;
      goto LABEL_36;
    }

    return a1 + v4 + 12;
  }

LABEL_32:
  if (a2 == 16)
  {
    return a1 + v4 + 12;
  }

  v4 += 4;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  if (a2 == 64 && (v3 & 0x40) != 0)
  {
    return a1 + v4 + 12;
  }

  v6 = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellStorageDataElement *TSTCellStorageGetElement(TSTCellStorage *, TSTCellStorageHeaderFlags)"}];
  [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 942, @"Can't get offset for unknown element 0x%02x!", a2}];
  return 0;
}

uint64_t TSTCellStorageGetElementForFormat(uint64_t a1, uint64_t a2, uint16x8_t a3)
{
  v5 = HIWORD(*(a1 + 4));
  v6 = p_TSTCellStorageExtraSizeForHeaderFlags(*(a1 + 4), a3);
  if (v5)
  {
    if (a2 == 1)
    {
      v7 = a1 + v6;
      return v7 + 12;
    }

    LOWORD(v6) = v6 + 4;
  }

  if ((v5 & 8) != 0)
  {
    if (a2 == 8)
    {
      goto LABEL_25;
    }

    LOWORD(v6) = v6 + 4;
  }

  if ((v5 & 2) != 0)
  {
    if (a2 == 2)
    {
      goto LABEL_25;
    }

    LOWORD(v6) = v6 + 4;
  }

  if ((v5 & 4) != 0)
  {
    if (a2 == 4)
    {
      goto LABEL_25;
    }

    LOWORD(v6) = v6 + 4;
  }

  if ((v5 & 0x10) != 0)
  {
    if (a2 == 16)
    {
      goto LABEL_25;
    }

    LOWORD(v6) = v6 + 4;
  }

  if ((v5 & 0x20) != 0)
  {
    if (a2 == 32)
    {
      goto LABEL_25;
    }

    LOWORD(v6) = v6 + 4;
  }

  if ((v5 & 0x40) != 0)
  {
    if (a2 != 64)
    {
      LOWORD(v6) = v6 + 4;
      goto LABEL_23;
    }

LABEL_25:
    v7 = a1 + v6;
    return v7 + 12;
  }

LABEL_23:
  if (a2 == 128 && (v5 & 0x80) != 0)
  {
    goto LABEL_25;
  }

  v9 = [MEMORY[0x277D6C290] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellStorageDataElement *TSTCellStorageGetElementForFormat(TSTCellStorage *, TSTCellStorageFormatFlags)"}];
  [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.mm"), 1021, @"Can't get offset for unknown element 0x%02x!", a2}];
  return 0;
}

uint64_t TSTBundle()
{
  if (TSTBundle::onceToken != -1)
  {
    TSTBundle_cold_1();
  }

  return TSTBundle::bundle;
}

uint64_t __TSTBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  TSTBundle::bundle = result;
  return result;
}

unint64_t TSTCellRangeUnionCellRange(unint64_t a1, unint64_t a2)
{
  if (a1 == 0xFFFF || (a1 & 0xFF0000) == 0xFF0000 || (v2 = HIWORD(a1)) == 0 || (a1 & 0xFFFF00000000) == 0)
  {
    v3 = a2 >> 16;
    v4 = HIDWORD(a2);
    LOWORD(a1) = a2;
    v2 = HIWORD(a2);
    return (v4 << 32) | (v2 << 48) | a2 & 0xFF000000 | (v3 << 16) | a1;
  }

  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000 || !HIWORD(a2) || (a2 & 0xFFFF00000000) == 0)
  {
    v3 = a1 >> 16;
    v4 = HIDWORD(a1);
LABEL_32:
    LODWORD(a2) = a1;
    return (v4 << 32) | (v2 << 48) | a2 & 0xFF000000 | (v3 << 16) | a1;
  }

  if (a1 <= a2 && (a1 + HIWORD(a1) - 1) >= a2)
  {
    v3 = a1 >> 16;
    if (BYTE2(a2) >= BYTE2(a1))
    {
      v4 = HIDWORD(a1);
      v5 = (BYTE4(a1) + BYTE2(a1) - 1);
      if (v5 >= BYTE2(a2) && v5 >= (BYTE4(a2) + BYTE2(a2) - 1) && (a1 + HIWORD(a1) - 1) >= (a2 + HIWORD(a2) - 1))
      {
        goto LABEL_32;
      }
    }
  }

  v6 = a2;
  if (a2 <= a1 && (a2 + HIWORD(a2) - 1) >= a1 && (v3 = a2 >> 16, BYTE2(a1) >= BYTE2(a2)) && (v4 = HIDWORD(a2), v7 = (BYTE4(a2) + BYTE2(a2) - 1), v7 >= BYTE2(a1)) && v7 >= (BYTE4(a1) + BYTE2(a1) - 1) && (a2 + HIWORD(a2) - 1) >= (a1 + HIWORD(a1) - 1))
  {
    LOWORD(a1) = a2;
    v2 = HIWORD(a2);
  }

  else
  {
    LOWORD(v3) = BYTE2(a1);
    if (BYTE2(a1) >= BYTE2(a2))
    {
      LOWORD(v3) = BYTE2(a2);
    }

    if (a1 < a2)
    {
      v6 = a1;
    }

    v8 = a1 + HIWORD(a1);
    LOWORD(a1) = v6;
    LODWORD(v4) = (BYTE4(a1) + BYTE2(a1) - 1);
    if (v4 <= (BYTE4(a2) + BYTE2(a2) - 1))
    {
      LOWORD(v4) = (BYTE4(a2) + BYTE2(a2) - 1);
    }

    v9 = (v8 - 1);
    if (v9 <= (a2 + HIWORD(a2) - 1))
    {
      LOWORD(v9) = a2 + HIWORD(a2) - 1;
    }

    LOWORD(v4) = v4 - v3 + 1;
    v2 = (v9 - v6 + 1);
    LODWORD(a2) = 0;
  }

  return (v4 << 32) | (v2 << 48) | a2 & 0xFF000000 | (v3 << 16) | a1;
}

uint64_t TSTTableRepGetCellIDForCanvasPointIgnoringFreezeHeaders(void *a1, char a2, double a3, CGFloat a4)
{
  v7 = [a1 tableLayout];
  if (a2)
  {
    Space = TSTLayoutGetSpace(v7);
    GridPointHitByCanvasPoint = TSTLayoutSpaceGetGridPointHitByCanvasPoint(Space, 0, a3, a4);
    v10 = GridPointHitByCanvasPoint << 16;
    if (GridPointHitByCanvasPoint == -1)
    {
      v10 = 16711680;
    }

    return v10 | WORD2(GridPointHitByCanvasPoint);
  }

  else
  {

    return TSTLayoutGetCellIDHitByCanvasPoint(v7, a3, a4);
  }
}

uint64_t TSTTableRepGetCellIDForCanvasPoint(void *a1, CGFloat a2, double a3)
{
  v5 = [a1 tableLayout];

  return TSTLayoutGetCellIDHitByCanvasPoint(v5, a2, a3);
}

uint64_t TSTTableRepGetClosestCellIDForCanvasPoint(void *a1)
{
  v1 = [a1 tableLayout];

  return TSTLayoutGetCellIDNearbyCanvasPoint(v1);
}

void TSTTableRepSetupUserSpaceToDeviceSpaceTransform(TSTTableRep *a1, CGFloat a2, double a3)
{
  a1->mCurrentScreenScale = a3;
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeScale(&v12, a3, a3);
  [(TSTTableRep *)a1 layerFrameInScaledCanvas];
  t1 = v12;
  CGAffineTransformTranslate(&v11, &t1, -v5, -v6);
  v12 = v11;
  t1 = v11;
  CGAffineTransformScale(&v11, &t1, a2, a2);
  v12 = v11;
  v7 = [(TSDRep *)a1 layout];
  if (v7)
  {
    [(TSDAbstractLayout *)v7 transformInRoot];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v9 = v12;
  CGAffineTransformConcat(&v11, &t1, &v9);
  v12 = v11;
  Space = TSTLayoutGetSpace([(TSTTableRep *)a1 tableLayout]);
  v11 = v12;
  TSTLayoutSpaceSetUserSpaceToDeviceSpaceTransform(Space, &v11);
}

void TSTTableRepGetStrokeFrameForRange(void *a1, unint64_t a2)
{
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = BYTE2(a2);
  }

  if (WORD2(a2))
  {
    v3 = WORD2(a2) + v2 - 1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (HIWORD(a2))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xFFFFFFFF00000000;
  }

  Space = TSTLayoutGetSpace([a1 tableLayout]);
  TSTLayoutSpaceGetStrokeFrameForGridRange(Space, v5, v7 | v3);
}