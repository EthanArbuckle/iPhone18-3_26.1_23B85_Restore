__int128 *std::__split_buffer<std::shared_ptr<TSUStringChunk>>::emplace_back<std::shared_ptr<TSUStringChunk> const&>(__int128 *result, void *a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    v5 = *(result + 1);
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = *(result + 4);
      v11[4] = *(v3 + 4);
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(v9, v8);
    }

    v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    *(v3 + 1) -= 16 * v6;
    *(v3 + 2) = v7;
  }

  *v4 = *a2;
  v10 = a2[1];
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 16;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t TSUHasListLanguage(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"ko") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"ar"))
    {
      return 1;
    }

    else
    {

      return [v1 hasPrefix:@"he"];
    }
  }

  return result;
}

uint64_t TSUHasCJKLanguage(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"zh"))
    {
      return 1;
    }

    else
    {

      return [v1 hasPrefix:@"ko"];
    }
  }

  return result;
}

void *TSULocalizedPList(void *a1)
{
  do
  {
    v2 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CBEB18] array];
      v6 = [a1 objectEnumerator];
      v7 = v6;
      while ([v6 nextObject])
      {
        [v5 addObject:(TSULocalizedPList)()];
        v6 = v7;
      }

      return v5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return v2;
    }

    v3 = [a1 objectForKey:@"_LOCALIZABLE_"];
    if (!v3)
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v8 = [a1 keyEnumerator];
      v9 = [v8 nextObject];
      if (v9)
      {
        v10 = v9;
        do
        {
          [v5 setObject:TSULocalizedPList(objc_msgSend(v2 forKey:{"objectForKey:", v10)), v10}];
          v10 = [v8 nextObject];
        }

        while (v10);
      }

      return v5;
    }

    a1 = v3;
  }

  while ([v2 count] == 1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v26 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [MEMORY[0x277CBEB18] array];
    }

    else
    {
      v11 = +[TSUAssertionHandler currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSULocalizedPList(id)"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSULocalization.mm"), 79, @"TSULocalizedPList() - unexpected type"}];
      v26 = 0;
    }

    v4 = 0;
  }

  v13 = [v2 objectEnumerator];
  for (i = [v13 nextObject]; i; i = objc_msgSend(v13, "nextObject"))
  {
    v15 = TSULocalizedPList(i);
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = +[TSUAssertionHandler currentHandler];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSULocalizedPList(id)"];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSULocalization.mm"];
        v19 = v16;
        v20 = v17;
        v21 = 90;
        v22 = @"TSULocalizedPList() - expected dictionary";
LABEL_26:
        [v19 handleFailureInFunction:v20 file:v18 lineNumber:v21 description:v22];
        continue;
      }

      [v4 addEntriesFromDictionary:v15];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = +[TSUAssertionHandler currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSULocalizedPList(id)"];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSULocalization.mm"];
        v19 = v23;
        v20 = v24;
        v21 = 97;
        v22 = @"TSULocalizedPList() - expected array";
        goto LABEL_26;
      }

      [v26 addObjectsFromArray:v15];
    }
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return v26;
  }
}

NSMutableArray *p_arrayByAddingLanguage(NSString *a1, NSMutableArray *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NSMutableArray *)a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if ([*(*(&v10 + 1) + 8 * v7) hasPrefix:a1])
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [(NSMutableArray *)a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      [(NSMutableArray *)a2 addObject:a1];
    }

    return a2;
  }

  else
  {
    v9 = MEMORY[0x277CBEB18];

    return [v9 arrayWithObject:a1];
  }
}

NSMutableArray *TSUFindInputLanguagesWithBlock(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [MEMORY[0x277D75BF0] activeInputModes];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) primaryLanguage];
        if ((*(a1 + 16))(a1, v8))
        {
          v5 = p_arrayByAddingLanguage(v8, v5);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = [objc_msgSend(MEMORY[0x277CBEAF8] "preferredLanguages")];
  if ((*(a1 + 16))(a1, v9))
  {
    return p_arrayByAddingLanguage(v9, v5);
  }

  return v5;
}

void sub_26CBB77C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MOFullMethodName(uint64_t a1, const char *a2)
{
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCACA8];
  if (v4 == a1)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"+[%@ %@]", a1, NSStringFromSelector(a2)];
  }

  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"-[%@ %@]", v6, NSStringFromSelector(a2)];
}

CFDataRef _createASCIIData(const __CFString *a1, UInt8 a2, CFIndex a3, CFIndex a4)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  if (CStringPtr)
  {
    v9 = *MEMORY[0x277CBED00];

    return CFDataCreateWithBytesNoCopy(0, &CStringPtr[a3], a4, v9);
  }

  else
  {
    if (a4 < 1)
    {
      return 0;
    }

    Mutable = CFDataCreateMutable(0, a4);
    CFDataSetLength(Mutable, a4);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v14.location = a3;
    v14.length = a4;
    if (a4 != CFStringGetBytes(a1, v14, 0x600u, a2, 0, MutableBytePtr, a4, 0))
    {
      NSLog(@"*** %s: Unexpected string conversion error", "NSData *_createASCIIData(CFStringRef, UInt8, CFRange)");
    }

    return Mutable;
  }
}

uint64_t TSUOperatorStringAddition()
{
  result = TSUOperatorStringAddition_sOperatorString;
  if (!TSUOperatorStringAddition_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 43];
    TSUOperatorStringAddition_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringSubtraction()
{
  result = TSUOperatorStringSubtraction_sOperatorString;
  if (!TSUOperatorStringSubtraction_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8722];
    TSUOperatorStringSubtraction_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringMultiplication()
{
  result = TSUOperatorStringMultiplication_sOperatorString;
  if (!TSUOperatorStringMultiplication_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 215];
    TSUOperatorStringMultiplication_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringDivision()
{
  result = TSUOperatorStringDivision_sOperatorString;
  if (!TSUOperatorStringDivision_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 247];
    TSUOperatorStringDivision_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringPower()
{
  result = TSUOperatorStringPower_sOperatorString;
  if (!TSUOperatorStringPower_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 94];
    TSUOperatorStringPower_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringConcatenation()
{
  result = TSUOperatorStringConcatenation_sOperatorString;
  if (!TSUOperatorStringConcatenation_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 38];
    TSUOperatorStringConcatenation_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringGreaterThan()
{
  result = TSUOperatorStringGreaterThan_sOperatorString;
  if (!TSUOperatorStringGreaterThan_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 62];
    TSUOperatorStringGreaterThan_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringGreaterThanOrEqualTo()
{
  result = TSUOperatorStringGreaterThanOrEqualTo_sOperatorString;
  if (!TSUOperatorStringGreaterThanOrEqualTo_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8805];
    TSUOperatorStringGreaterThanOrEqualTo_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringLessThan()
{
  result = TSUOperatorStringLessThan_sOperatorString;
  if (!TSUOperatorStringLessThan_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 60];
    TSUOperatorStringLessThan_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringLessThanOrEqualTo()
{
  result = TSUOperatorStringLessThanOrEqualTo_sOperatorString;
  if (!TSUOperatorStringLessThanOrEqualTo_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8804];
    TSUOperatorStringLessThanOrEqualTo_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringEqualTo()
{
  result = TSUOperatorStringEqualTo_sOperatorString;
  if (!TSUOperatorStringEqualTo_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 61];
    TSUOperatorStringEqualTo_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringNotEqualTo()
{
  result = TSUOperatorStringNotEqualTo_sOperatorString;
  if (!TSUOperatorStringNotEqualTo_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8800];
    TSUOperatorStringNotEqualTo_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringPercent()
{
  result = TSUOperatorStringPercent_sOperatorString;
  if (!TSUOperatorStringPercent_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 37];
    TSUOperatorStringPercent_sOperatorString = result;
  }

  return result;
}

uint64_t TSUOperatorStringColon()
{
  result = TSUOperatorStringColon_sOperatorString;
  if (!TSUOperatorStringColon_sOperatorString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 58];
    TSUOperatorStringColon_sOperatorString = result;
  }

  return result;
}

void *TSUBlockCleanup::TSUBlockCleanup(void *a1, void *a2)
{
  *a1 = a2;
  v3 = a2;
  return a1;
}

{
  *a1 = a2;
  v3 = a2;
  return a1;
}

void TSUBlockCleanup::~TSUBlockCleanup(id *this)
{
  (*(*this + 2))();
}

{
  (*(*this + 2))();
}

void sub_26CBBB0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSUImageSourceOrientation(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = [-[__CFDictionary objectForKey:](v1 objectForKey:{*MEMORY[0x277CD3410]), "intValue"}];

  result = 0;
  if ((v2 - 1) <= 7)
  {
    return TSUImageSourceOrientation___orientationMapping[v2 - 1];
  }

  return result;
}

uint64_t TSUImageOrientationApplyFlips(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return result;
    }

    return TSUImageOrientationApplyFlips_vFlippedOrientations[result];
  }

  result = TSUImageOrientationApplyFlips_hFlippedOrientations[result];
  if (a3)
  {
    return TSUImageOrientationApplyFlips_vFlippedOrientations[result];
  }

  return result;
}

CGAffineTransform *TSUImageOrientationTransform@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  if (!result)
  {
    v21 = MEMORY[0x277CBF2C0];
    v22 = *(MEMORY[0x277CBF2C0] + 16);
    *a3 = *MEMORY[0x277CBF2C0];
    *(a3 + 16) = v22;
    v23 = *(v21 + 32);
    goto LABEL_28;
  }

  v13 = dword_26CBEEC80[result];
  v14 = MEMORY[0x277CBF2C0];
  v15 = *MEMORY[0x277CBF2C0];
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v16;
  v17 = *(v14 + 32);
  *(a3 + 32) = v17;
  v18 = 0xCCuLL >> result;
  if ((0xCCuLL >> result))
  {
    *&v42.a = v15;
    *&v42.c = v16;
    *&v42.tx = v17;
    result = CGAffineTransformScale(a3, &v42, a6 / a7, a7 / a6);
  }

  if (v13 <= 4)
  {
    if (v13 == 2)
    {
LABEL_17:
      v27 = *(a3 + 16);
      *&v41.a = *a3;
      *&v41.c = v27;
      *&v41.tx = *(a3 + 32);
      v28 = -1.0;
      v29 = 1.0;
LABEL_20:
      result = CGAffineTransformScale(&v42, &v41, v28, v29);
LABEL_23:
      v34 = *&v42.c;
      *a3 = *&v42.a;
      *(a3 + 16) = v34;
      *(a3 + 32) = *&v42.tx;
      goto LABEL_24;
    }

    if (v13 == 3)
    {
      v33 = *(a3 + 16);
      *&v41.a = *a3;
      *&v41.c = v33;
      *&v41.tx = *(a3 + 32);
      v20 = 3.14159265;
      goto LABEL_22;
    }

    if (v13 != 4)
    {
      goto LABEL_24;
    }

LABEL_19:
    v32 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v32;
    *&v41.tx = *(a3 + 32);
    v28 = 1.0;
    v29 = -1.0;
    goto LABEL_20;
  }

  if (v13 <= 6)
  {
    if (v13 != 5)
    {
      v19 = *(a3 + 16);
      *&v41.a = *a3;
      *&v41.c = v19;
      *&v41.tx = *(a3 + 32);
      v20 = 1.57079633;
LABEL_22:
      result = CGAffineTransformRotate(&v42, &v41, v20);
      goto LABEL_23;
    }

    v25 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v25;
    *&v41.tx = *(a3 + 32);
    CGAffineTransformRotate(&v42, &v41, -1.57079633);
    v26 = *&v42.c;
    *a3 = *&v42.a;
    *(a3 + 16) = v26;
    *(a3 + 32) = *&v42.tx;
    goto LABEL_17;
  }

  if (v13 == 7)
  {
    v30 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v30;
    *&v41.tx = *(a3 + 32);
    CGAffineTransformRotate(&v42, &v41, -1.57079633);
    v31 = *&v42.c;
    *a3 = *&v42.a;
    *(a3 + 16) = v31;
    *(a3 + 32) = *&v42.tx;
    goto LABEL_19;
  }

  if (v13 == 8)
  {
    v24 = *(a3 + 16);
    *&v41.a = *a3;
    *&v41.c = v24;
    *&v41.tx = *(a3 + 32);
    v20 = -1.57079633;
    goto LABEL_22;
  }

LABEL_24:
  if (!a2)
  {
    return result;
  }

  v43.origin.x = a4;
  v43.origin.y = a5;
  v43.size.width = a6;
  v43.size.height = a7;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = a4;
  v44.origin.y = a5;
  v44.size.width = a6;
  v44.size.height = a7;
  MidY = CGRectGetMidY(v44);
  memset(&v42, 0, sizeof(v42));
  CGAffineTransformMakeTranslation(&v42, MidX, MidY);
  if (v18)
  {
    t1 = v42;
    CGAffineTransformRotate(&v41, &t1, 3.14159265);
    v42 = v41;
  }

  v37 = *(a3 + 16);
  *&t1.a = *a3;
  *&t1.c = v37;
  *&t1.tx = *(a3 + 32);
  v39 = v42;
  CGAffineTransformConcat(&v41, &t1, &v39);
  v42 = v41;
  t1 = v41;
  result = CGAffineTransformTranslate(&v41, &t1, -MidX, -MidY);
  v38 = *&v41.c;
  v23 = *&v41.tx;
  v42 = v41;
  *a3 = *&v41.a;
  *(a3 + 16) = v38;
LABEL_28:
  *(a3 + 32) = v23;
  return result;
}

BOOL TSUCGImageIsEmpty(CGImage *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  memset(data, 0, sizeof(data));
  v2 = CGBitmapContextCreateWithData(data, 1uLL, 1uLL, 8uLL, 1uLL, 0, 7u, 0, 0);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  CGContextDrawImage(v2, v6, a1);
  CFRelease(v2);
  return LOBYTE(data[0]) == 0;
}

void TSUSplitRectIntoSlices(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = *(MEMORY[0x277CBF398] + 16);
  v22 = *MEMORY[0x277CBF398];
  remainder.origin = v22;
  remainder.size = v21;
  slice.origin = v22;
  slice.size = v21;
  v28.origin = v22;
  v28.size = v21;
  v29.origin = v22;
  v29.size = v21;
  v24.origin = v22;
  v24.size = v21;
  v25.origin = v22;
  v25.size = v21;
  v26.origin = v22;
  v26.size = v21;
  CGRectDivide(*&a2, &slice, &remainder, a8, CGRectMinYEdge);
  CGRectDivide(remainder, &v29, &v28, a9, CGRectMaxYEdge);
  remainder.origin = v22;
  remainder.size = v21;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectDivide(v31, &v24, &remainder, a6, CGRectMinXEdge);
  CGRectDivide(remainder, &v26, &v25, a7, CGRectMaxXEdge);
  v17 = 0;
  v18 = a1 + 16;
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      *(v20 - 16) = CGRectIntersection(*(&slice + v19), *(&v24 + v17));
      v20 += 96;
      v19 += 32;
    }

    while (v19 != 96);
    ++v17;
    v18 += 32;
  }

  while (v17 != 3);
}

UIImage *TSUCGImagePNGRepresentationWithProperties(uint64_t a1)
{
  result = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:a1];
  if (result)
  {
    v2 = result;
    v3 = UIImagePNGRepresentation(result);

    return v3;
  }

  return result;
}

UIImage *TSUCGImagePNGRepresentationWithOrientation(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CD3410];
  v5[0] = [MEMORY[0x277CCABB0] numberWithInt:EXIFOrientationValueForTSUImageOrientation(a2)];
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  return TSUCGImagePNGRepresentationWithProperties(a1);
}

uint64_t EXIFOrientationValueForTSUImageOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_26CBEECA0[a1 - 1];
  }
}

UIImage *TSUCGImageJPEGRepresentation(uint64_t a1, CGFloat a2)
{
  result = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:a1];
  if (result)
  {
    v4 = result;
    v5 = UIImageJPEGRepresentation(result, a2);

    return v5;
  }

  return result;
}

uint64_t TSUCGImageJPEGRepresentationWithOrientation(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CD2D48];
  v5[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4[1] = *MEMORY[0x277CD3410];
  v5[1] = [MEMORY[0x277CCABB0] numberWithInt:EXIFOrientationValueForTSUImageOrientation(a2)];
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  return 0;
}

__CFData *TSUCGImageTIFFRepresentation(CGImage *a1)
{
  v2 = [MEMORY[0x277CBEB28] data];
  v3 = CGImageDestinationCreateWithData(v2, *MEMORY[0x277CC2180], 1uLL, 0);
  CGImageDestinationAddImage(v3, a1, 0);
  v4 = CGImageDestinationFinalize(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double TSUMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double TSURoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v20.origin.x = TSUMultiplyRectScalar(a1, a2, a3, a4, a5);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MinX = CGRectGetMinX(v20);
  v11 = TSURound(MinX);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinY = CGRectGetMinY(v21);
  v13 = TSURound(MinY);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxX = CGRectGetMaxX(v22);
  v15 = TSURound(MaxX) - v11;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  v17 = TSURound(MaxY) - v13;

  return TSUMultiplyRectScalar(v11, v13, v15, v17, 1.0 / a5);
}

double TSUCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double TSUPointFromNormalizedRect(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  MinX = CGRectGetMinX(v14);
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  v12 = MinX + a1 * CGRectGetWidth(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetMinY(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetHeight(v17);
  return v12;
}

double TSUScaleSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double TSUShrinkSizeToFitInSize(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

uint64_t TSUFormat::isMergableWithFormatType(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0xFFFFFFFC) == 0x100)
  {
    v3 = (a2 & 0xFFFFFFFC) == 256;
  }

  else
  {
    v3 = v2 == a2;
  }

  v4 = v2 == 1 || v3;
  if (a2 == 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void TSUFormat::TSUFormat(TSUFormat *this)
{
  *this = &unk_287DDF1A0;
  *(this + 2) = 1;
  *(this + 12) = 1;
  *(this + 6) = 0;
}

{
  *this = &unk_287DDF1A0;
  *(this + 2) = 1;
  *(this + 12) = 1;
  *(this + 6) = 0;
}

uint64_t TSUFormat::TSUFormat(uint64_t a1, int *a2)
{
  *a1 = &unk_287DDF1A0;
  v4 = *a2;
  *(a1 + 8) = *a2;
  *(a1 + 12) = 1;
  if (v4 == 257)
  {
    v5 = TSUGetCurrentLocale();
    Value = CFLocaleGetValue(v5, *MEMORY[0x277CBEEA0]);
    if (Value)
    {
      v7 = Value;
    }

    else
    {
      v7 = @"USD";
    }

    defaultFractionDigits = 0;
    DecimalInfoForCurrencyCode = CFNumberFormatterGetDecimalInfoForCurrencyCode(v7, &defaultFractionDigits, 0);
    v9 = v7;
    v10 = defaultFractionDigits;
    if (!DecimalInfoForCurrencyCode)
    {
      v10 = 2;
    }
  }

  else
  {
    v9 = 0;
    v10 = 253;
  }

  *(a1 + 16) = v9;
  *(a1 + 24) = v10 & 0xFFFFFFFFFFFFF8FFLL;
  v11 = v9;
  *(a1 + 48) = 0;
  v12 = *a2 - 261;
  v13 = v12 > 8;
  v14 = (1 << v12) & 0x183;
  if (!v13 && v14 != 0)
  {
    v16 = +[TSUAssertionHandler currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormat::TSUFormat(const TSUFormatType &)"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 62, @"Use the constructor for this type of struct instead of this one (unless you want a number struct value)."}];
  }

  return a1;
}

uint64_t TSUFormat::TSUFormat(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  *a1 = &unk_287DDF1A0;
  *(a1 + 8) = *a2;
  *(a1 + 12) = 1;
  *(a1 + 16) = *a3;
  v5 = *(a1 + 16);
  *(a1 + 48) = 0;
  if ((*a2 & 0xFFFFFFFC) != 0x100)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUFormat::TSUFormat(const TSUFormatType &, const TSUFormatStructNumber &)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 71, @"Creating a non-number formatType but initializing the numberStruct variable."}];
  }

  return a1;
}

{
  *a1 = &unk_287DDF1A0;
  *(a1 + 8) = *a2;
  *(a1 + 12) = 1;
  v5 = +[TSUAssertionHandler currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUFormat::TSUFormat(const TSUFormatType &, const TSUFormatStructControl &)"}];
  [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 142, @"Formula engine formats should never use stepper/sliders. Some caller needs to get the display format."}];
  v7 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 32) = v7;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t TSUFormat::TSUFormat(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = &unk_287DDF1A0;
  v5 = *a2;
  *(a1 + 8) = *a2;
  *(a1 + 12) = a3;
  *(a1 + 48) = a4;
  if (v5 != -999 && v5 != 1)
  {
    if ((v5 & 0xFFFFFFFC) == 0x100)
    {
      *(a1 + 16) = *(a2 + 8);
      v8 = *(a1 + 16);
LABEL_7:
      v9 = v8;
      return a1;
    }

    if (v5 > 267)
    {
      if (v5 == 268)
      {
        goto LABEL_16;
      }

      if (v5 == 269)
      {
        v10 = *(a2 + 8);
        *(a1 + 18) = *(a2 + 10);
        *(a1 + 16) = v10;
        return a1;
      }
    }

    else
    {
      if (v5 == 261)
      {
        *(a1 + 16) = *(a2 + 8);
        v8 = *(a1 + 24);
        goto LABEL_7;
      }

      if (v5 == 262)
      {
        *(a1 + 16) = *(a2 + 8);
        return a1;
      }
    }

    if ((v5 - 270) > 2)
    {
      if ((v5 - 264) < 2)
      {
        v13 = +[TSUAssertionHandler currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUFormat::TSUFormat(const TSUFormatStruct &, BOOL, const TSUCustomFormat *)"}];
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 100, @"Formula engine formats should never use stepper/sliders. Some caller needs to get the display format."}];
        v11 = *(a2 + 8);
        *(a1 + 32) = *(a2 + 24);
        goto LABEL_17;
      }

      if (v5 != 266)
      {
        return a1;
      }
    }

LABEL_16:
    v11 = *(a2 + 8);
LABEL_17:
    *(a1 + 16) = v11;
  }

  return a1;
}

uint64_t TSUFormat::TSUFormat(uint64_t result, _DWORD *a2)
{
  *result = &unk_287DDF1A0;
  *(result + 8) = 262;
  *(result + 12) = 1;
  *(result + 16) = *a2;
  *(result + 48) = 0;
  return result;
}

{
  *result = &unk_287DDF1A0;
  *(result + 8) = 262;
  *(result + 12) = 1;
  *(result + 16) = *a2;
  *(result + 48) = 0;
  return result;
}

uint64_t TSUFormat::TSUFormat(uint64_t result, __int16 *a2)
{
  *result = &unk_287DDF1A0;
  *(result + 8) = 269;
  *(result + 12) = 1;
  v2 = *a2;
  *(result + 18) = *(a2 + 2);
  *(result + 16) = v2;
  *(result + 48) = 0;
  return result;
}

{
  *result = &unk_287DDF1A0;
  *(result + 8) = 269;
  *(result + 12) = 1;
  v2 = *a2;
  *(result + 18) = *(a2 + 2);
  *(result + 16) = v2;
  *(result + 48) = 0;
  return result;
}

uint64_t TSUFormat::TSUFormat(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_287DDF1A0;
  *(a1 + 8) = 261;
  *(a1 + 12) = 1;
  *(a1 + 16) = *a2;
  v3 = *(a1 + 24);
  *(a1 + 48) = 0;
  return a1;
}

{
  *a1 = &unk_287DDF1A0;
  *(a1 + 8) = 261;
  *(a1 + 12) = 1;
  *(a1 + 16) = *a2;
  v3 = *(a1 + 24);
  *(a1 + 48) = 0;
  return a1;
}

__n128 TSUFormat::TSUFormat(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &unk_287DDF1A0;
  a1->n128_u32[2] = 268;
  a1->n128_u8[12] = 1;
  result = *a2;
  a1[1] = *a2;
  a1[3].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[0] = &unk_287DDF1A0;
  a1->n128_u32[2] = 268;
  a1->n128_u8[12] = 1;
  result = *a2;
  a1[1] = *a2;
  a1[3].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[0] = &unk_287DDF1A0;
  a1->n128_u32[2] = 266;
  a1->n128_u8[12] = 1;
  result = *a2;
  a1[1] = *a2;
  a1[3].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[0] = &unk_287DDF1A0;
  a1->n128_u32[2] = 266;
  a1->n128_u8[12] = 1;
  result = *a2;
  a1[1] = *a2;
  a1[3].n128_u64[0] = 0;
  return result;
}

uint64_t TSUFormat::TSUFormat(uint64_t a1, _DWORD *a2, _OWORD *a3, uint64_t a4)
{
  *a1 = &unk_287DDF1A0;
  *(a1 + 8) = *a2;
  *(a1 + 12) = 1;
  *(a1 + 48) = a4;
  *(a1 + 16) = *a3;
  if ((*a2 - 270) >= 3)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUFormat::TSUFormat(const TSUFormatType &, const TSUFormatStructCustom &, const TSUCustomFormat *)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 137, @"Creating a non-custom formatType but initializing the customStruct variable."}];
  }

  return a1;
}

void TSUFormat::TSUFormat(TSUFormat *this, const TSUFormat *a2)
{
  *this = &unk_287DDF1A0;
  v2 = *(a2 + 2);
  *(this + 2) = v2;
  *(this + 12) = *(a2 + 12);
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *(this + 6) = *(a2 + 6);
  if ((v2 & 0xFFFFFFFC) == 0x100)
  {
    v4 = (this + 16);
  }

  else
  {
    if (v2 != 261)
    {
      return;
    }

    v4 = (this + 24);
  }

  v5 = *v4;
}

uint64_t TSUFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if ((v4 & 0xFFFFFFFC) == 0x100)
    {
      v5 = 16;
    }

    else
    {
      if (v4 != 261)
      {
        goto LABEL_7;
      }

      v5 = 24;
    }

    v6 = *(a2 + v5);
LABEL_7:
    v7 = *(a1 + 8);
    if ((v7 & 0xFFFFFFFC) == 0x100)
    {
      v8 = 16;
    }

    else
    {
      if (v7 != 261)
      {
LABEL_12:
        *(a1 + 12) = *(a2 + 12);
        v9 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v9;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 48) = *(a2 + 48);
        return a1;
      }

      v8 = 24;
    }

    goto LABEL_12;
  }

  return a1;
}

void TSUFormat::~TSUFormat(TSUFormat *this)
{
  *this = &unk_287DDF1A0;
  v2 = *(this + 2);
  if ((v2 & 0xFFFFFFFC) == 0x100)
  {
    v3 = 16;
  }

  else
  {
    if (v2 != 261)
    {
      return;
    }

    v3 = 24;
  }

  *(this + v3) = 0;
}

void TSUFormat::formatByMergingWithFormat(TSUFormat *this@<X0>, const TSUFormat *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  if (v4 == 254)
  {
    goto LABEL_3;
  }

  v5 = a2;
  v6 = *(a2 + 2);
  if (v6 == 254)
  {
    goto LABEL_3;
  }

  v9 = v4 == 1 || v6 == 1;
  if (!v9)
  {
    if ((v4 & 0xFFFFFFFC) == 0x100)
    {
      if ((v6 & 0xFFFFFFFC) != 0x100)
      {
        goto LABEL_3;
      }
    }

    else if (v4 != v6)
    {
      goto LABEL_3;
    }
  }

  if (*(this + 12) == 1)
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(a2 + 12))
  {
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    if (v6 != 271)
    {
LABEL_20:
      v10 = a3;
      goto LABEL_21;
    }

LABEL_28:
    v7 = 260;
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    if (v4 == 271)
    {
      goto LABEL_28;
    }

LABEL_17:
    v10 = a3;
    a2 = this;
LABEL_21:

    TSUFormat::TSUFormat(v10, a2);
    return;
  }

  if ((v4 & 0xFFFFFFFC) != 0x100)
  {
    if (v4 <= 268)
    {
      switch(v4)
      {
        case 261:
          v32 = *(this + 3);
          if (v32 != *(a2 + 3))
          {
            v32 = TSUDefaultDateTimeFormat();
          }

          v33 = *(v5 + 16) & *(this + 16) & 3;
          *a3 = &unk_287DDF1A0;
          *(a3 + 8) = 261;
          *(a3 + 12) = 1;
          *(a3 + 16) = v33;
          *(a3 + 24) = v32;
          v34 = v32;
          break;
        case 262:
          v41 = *(this + 16);
          if (v41 != *(a2 + 16))
          {
            v41 = 0;
          }

          *a3 = &unk_287DDF1A0;
          *(a3 + 8) = 262;
          *(a3 + 12) = 1;
          *(a3 + 16) = v41;
          break;
        case 268:
          v22 = *(this + 5);
          v23 = *(this + 6);
          v24 = *(a2 + 5);
          v25 = *(a2 + 6);
          if (v22 <= v24)
          {
            v26 = *(a2 + 5);
          }

          else
          {
            v26 = *(this + 5);
          }

          if (!v24)
          {
            v26 = *(this + 5);
          }

          if (v22)
          {
            v27 = v26;
          }

          else
          {
            v27 = *(a2 + 5);
          }

          if (v23 >= v25)
          {
            v28 = *(a2 + 6);
          }

          else
          {
            v28 = *(this + 6);
          }

          if (!v25)
          {
            v28 = *(this + 6);
          }

          if (v23)
          {
            v29 = v28;
          }

          else
          {
            v29 = *(a2 + 6);
          }

          v30 = *(this + 7);
          if (v30 != *(a2 + 7))
          {
            v30 = 1;
          }

          *a3 = &unk_287DDF1A0;
          *(a3 + 8) = 268;
          *(a3 + 12) = 1;
          *(a3 + 20) = v27;
          *(a3 + 24) = v29;
          *(a3 + 28) = v30;
          break;
        default:
          goto LABEL_17;
      }
    }

    else
    {
      if (v4 > 270)
      {
        if (v4 == 271)
        {
          goto LABEL_28;
        }

        if (v4 != 272)
        {
          goto LABEL_17;
        }

        goto LABEL_81;
      }

      if (v4 != 269)
      {
LABEL_81:
        if (*(this + 4) == *(a2 + 4))
        {
          goto LABEL_17;
        }

LABEL_3:
        v7 = 254;
LABEL_4:
        LODWORD(v42) = v7;
        TSUFormat::TSUFormat(a3, &v42);
        return;
      }

      v35 = *(this + 8);
      v36 = *(a2 + 8) ^ v35;
      v37 = v35;
      if (*(a2 + 8) != v35)
      {
        v37 = 255;
      }

      v38 = v35 & 0xFF00;
      if ((v36 & 0xFF00) != 0)
      {
        v38 = -256;
      }

      v39 = v37 | v38;
      v40 = *(this + 18);
      v9 = ((*(a2 + 18) ^ v40) & 1) == 0;
      *a3 = &unk_287DDF1A0;
      *(a3 + 8) = 269;
      if (!v9)
      {
        v40 = kTSUDefaultBaseUseMinusSign;
      }

      *(a3 + 12) = 1;
      *(a3 + 16) = v39;
      *(a3 + 18) = v40 & 1;
    }

    *(a3 + 48) = 0;
    return;
  }

  if (v4 != v6)
  {
    v4 = 256;
  }

  v43 = v4;
  v11 = *(this + 12);
  v12 = *(this + 12);
  v13 = *(a2 + 12);
  v14 = *(a2 + 12);
  if (v12 == v14)
  {
    v15 = *(this + 12);
  }

  else
  {
    v15 = 255;
  }

  if (v14 == 254)
  {
    v15 = *(this + 12);
  }

  if (v12 == 254)
  {
    v16 = *(a2 + 12);
  }

  else
  {
    v16 = v15;
  }

  v17 = (v11 >> 8) & 7;
  if (v17 == ((v13 >> 8) & 7))
  {
    v18 = v17 << 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = v11 & 0x800;
  if (((v13 >> 11) & 1) == v19 >> 11)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(this + 2);
  if (v21 != *(a2 + 2))
  {
    if ([v21 isEqualToString:?])
    {
      v21 = *(this + 2);
    }

    else
    {
      v21 = 0;
    }
  }

  *&v42 = v21;
  v31 = *(this + 12) & 0x1000;
  if (((*(v5 + 12) >> 12) & 1) != v31 >> 12)
  {
    LOWORD(v31) = 0;
  }

  WORD4(v42) = v31 | v20 | v18 | v16;
  TSUFormat::TSUFormat(a3, &v43, &v42);
}

void TSUFormat::formatByUnsettingDecimalPlacesIfPresent(TSUFormat *this@<X0>, TSUFormat *a2@<X8>)
{
  if (((**this)(this) & 0xFFFFFFFC) == 0x100)
  {
    v5 = *(this + 1);
    BYTE8(v5) = -2;
    v4 = (**this)(this);
    TSUFormat::TSUFormat(a2, &v4, &v5);
  }

  else
  {

    TSUFormat::TSUFormat(a2, this);
  }
}

TSUCustomFormat *TSUFormat::customConditionalFormatStructForDouble@<X0>(TSUCustomFormat **this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = -1;
  if ((**this)(this) != 270)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStruct TSUFormat::customConditionalFormatStructForDouble(double) const"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 338, @"This only works for Custom Numbers"}];
  }

  result = (**this)(this);
  if (result == 270)
  {
    result = this[6];
    if (result)
    {
      *a3 = *(this + 2);
      *(a3 + 8) = *(this + 4);
      result = TSUCustomFormat::formatByEvaluatingConditionsWithDouble(result, a2);
      *(a3 + 16) = result;
    }
  }

  return result;
}

uint64_t TSUFormat::isEqual(TSUFormat *this, const TSUFormat *a2)
{
  v2 = *(this + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  result = 1;
  switch(v2)
  {
    case 0xFEu:
      goto LABEL_29;
    case 0xFFu:
      goto LABEL_6;
    case 0x100u:
    case 0x102u:
      goto LABEL_25;
    case 0x101u:
      v15 = *(this + 2);
      if (v15 != *(a2 + 2))
      {
        result = [v15 isEqualToString:?];
        if (!result)
        {
          return result;
        }
      }

      if (((*(a2 + 12) ^ *(this + 12)) & 0x1000) != 0)
      {
        return 0;
      }

LABEL_25:
      v16 = *(a2 + 12) ^ *(this + 12);
      if ((v16 & 0xF00) != 0)
      {
        return 0;
      }

LABEL_28:
      if (v16)
      {
        return 0;
      }

LABEL_29:
      result = 1;
      break;
    case 0x103u:
      v16 = *(a2 + 12) ^ *(this + 12);
      goto LABEL_28;
    case 0x104u:
    case 0x107u:
    case 0x10Bu:
      return result;
    case 0x105u:
      result = [*(this + 3) isEqualToString:*(a2 + 3)];
      if (!result)
      {
        return result;
      }

      v14 = *(a2 + 16) ^ *(this + 16);
      v11 = (v14 & 2) == 0;
      v12 = (v14 & 1) == 0;
      return v12 && v11;
    case 0x106u:
      v6 = *(this + 16);
      v7 = *(a2 + 16);
      return v6 == v7;
    case 0x108u:
    case 0x109u:
      if (*(this + 2) != *(a2 + 2) || *(this + 3) != *(a2 + 3) || *(this + 4) != *(a2 + 4) || *(this + 10) != *(a2 + 10))
      {
        return 0;
      }

      v10 = *(a2 + 44) ^ *(this + 44);
      v11 = (v10 & 0xC) == 0;
      v12 = (v10 & 3) == 0;
      return v12 && v11;
    case 0x10Au:
      if (*(this + 4) != *(a2 + 4))
      {
        return 0;
      }

      v6 = *(this + 5);
      v7 = *(a2 + 5);
      return v6 == v7;
    case 0x10Cu:
      if (*(this + 5) != *(a2 + 5) || *(this + 6) != *(a2 + 6))
      {
        return 0;
      }

      v6 = *(this + 7);
      v7 = *(a2 + 7);
      return v6 == v7;
    case 0x10Du:
      if (*(this + 8) != *(a2 + 8))
      {
        return 0;
      }

      return ((*(a2 + 18) ^ *(this + 18)) & 1) == 0;
    case 0x10Eu:
    case 0x10Fu:
    case 0x110u:
      v6 = *(this + 4);
      v7 = *(a2 + 4);
      return v6 == v7;
    default:
      if (v2 < 2 || v2 == -999)
      {
        return result;
      }

LABEL_6:
      v8 = +[TSUAssertionHandler currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormat::isEqual(const TSUFormat &) const"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 412, @"We should have dealt with any types earlier."}];
      return 0;
  }

  return result;
}

uint64_t TSUFormat::numberStruct(TSUFormat *this)
{
  if ((*(this + 2) & 0xFFFFFFFC) != 0x100)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructNumber TSUFormat::numberStruct() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 423, @"Format is not of this type.  Can't return this."}];
  }

  return *(this + 2);
}

uint64_t TSUFormat::fractionFormatStruct(TSUFormat *this)
{
  if (*(this + 2) != 262)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructFraction TSUFormat::fractionFormatStruct() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 429, @"Format is not of this type.  Can't return this."}];
  }

  return *(this + 4);
}

uint64_t TSUFormat::baseFormatStruct(TSUFormat *this)
{
  if (*(this + 2) != 269)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructBase TSUFormat::baseFormatStruct() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 436, @"Format is not of this type.  Can't return this."}];
  }

  return *(this + 8) | (*(this + 18) << 16);
}

uint64_t TSUFormat::dateFormatStruct(TSUFormat *this)
{
  if (*(this + 2) != 261)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructDate TSUFormat::dateFormatStruct() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 443, @"Format is not of this type.  Can't return this."}];
  }

  v4 = *(this + 3);
  return *(this + 2);
}

uint64_t TSUFormat::durationFormatStruct(TSUFormat *this)
{
  if (*(this + 2) != 268)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructDuration TSUFormat::durationFormatStruct() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 451, @"Format is not of this type.  Can't return this."}];
  }

  return *(this + 2);
}

uint64_t TSUFormat::customFormatStruct(TSUFormat *this)
{
  if ((*(this + 2) - 270) >= 3)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructCustom TSUFormat::customFormatStruct() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 457, @"Format is not of this type.  Can't return this."}];
  }

  return *(this + 2);
}

__n128 TSUFormat::controlFormatStruct@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  if (this->n128_u32[2] - 263 >= 5)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructControl TSUFormat::controlFormatStruct() const"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 463, @"Format is not of this type.  Can't return this."}];
  }

  result = this[1];
  v7 = this[2];
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t TSUFormat::multipleChoiceListStruct(TSUFormat *this)
{
  if (*(this + 2) != 266)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructMultipleChoiceList TSUFormat::multipleChoiceListStruct() const"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormat.mm"), 469, @"Format is not of this type.  Can't return this."}];
  }

  return *(this + 2);
}

__n128 TSUFormat::formatStruct@<Q0>(__n128 *this@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = this->n128_i32[2];
  *a2 = v3;
  if ((v3 & 0xFFFFFFFC) == 0x100)
  {
    goto LABEL_2;
  }

  if (v3 <= 267)
  {
    if (v3 != 261)
    {
      if (v3 == 262)
      {
        *(a2 + 8) = this[1].n128_u32[0];
        return result;
      }

      goto LABEL_10;
    }

LABEL_2:
    result = this[1];
    *(a2 + 8) = result;
    return result;
  }

  if (v3 == 268)
  {
    goto LABEL_2;
  }

  if (v3 == 269)
  {
    *(a2 + 8) = this[1].n128_u16[0];
    *(a2 + 10) = this[1].n128_u8[2];
    return result;
  }

LABEL_10:
  if ((v3 - 270) <= 2)
  {
    goto LABEL_2;
  }

  if ((v3 - 263) <= 4)
  {
    result = this[1];
    v4 = this[2];
    *(a2 + 8) = result;
    *(a2 + 24) = v4;
  }

  return result;
}

void TSUFormatStructRelease(int *a1)
{
  v1 = *a1;
  if ((*a1 & 0xFFFFFFFC) == 0x100)
  {
    v2 = 2;
LABEL_5:

    return;
  }

  v2 = 4;
  if (v1 == 266 || v1 == 261)
  {
    goto LABEL_5;
  }
}

int *TSUFormatStructRetain(int *result)
{
  v1 = *result;
  if ((*result & 0xFFFFFFFC) == 0x100)
  {
    v2 = 2;
    return *&result[v2];
  }

  v2 = 4;
  if (v1 == 266 || v1 == 261)
  {
    return *&result[v2];
  }

  return result;
}

__CFString *NSStringForTSUFormatType(int a1)
{
  if (a1 <= 0)
  {
    if (a1 == -999)
    {
      return @"TSUFormatTypeUnknown";
    }

    else if (a1 == -1)
    {
      return @"TSUFormatTypeInvalid";
    }

    else if (a1)
    {
      return @"Unknown TSU format type";
    }

    else
    {
      return @"TSUFormatTypeUnsupported";
    }
  }

  else
  {
    v1 = a1 - 254;
    result = @"TSUFormatTypeDecimal";
    switch(v1)
    {
      case 0:
        result = @"TSUFormatTypeConflicting";
        break;
      case 1:
        return @"Unknown TSU format type";
      case 2:
        return result;
      case 3:
        result = @"TSUFormatTypeCurrency";
        break;
      case 4:
        result = @"TSUFormatTypePercent";
        break;
      case 5:
        result = @"TSUFormatTypeScientific";
        break;
      case 6:
        result = @"TSUFormatTypeText";
        break;
      case 7:
        result = @"TSUFormatTypeDateTime";
        break;
      case 8:
        result = @"TSUFormatTypeFraction";
        break;
      case 9:
        result = @"TSUFormatTypeCheckbox";
        break;
      case 10:
        result = @"TSUFormatTypeStepper";
        break;
      case 11:
        result = @"TSUFormatTypeSlider";
        break;
      case 12:
        result = @"TSUFormatTypeMultipleChoiceList";
        break;
      case 13:
        result = @"TSUFormatTypeRating";
        break;
      case 14:
        result = @"TSUFormatTypeDuration";
        break;
      case 15:
        result = @"TSUFormatTypeBase";
        break;
      case 16:
        result = @"TSUFormatTypeCustomNumber";
        break;
      case 17:
        result = @"TSUFormatTypeCustomText";
        break;
      case 18:
        result = @"TSUFormatTypeCustomDateTime";
        break;
      default:
        if (@"TSUFormatTypeDecimal" != 1)
        {
          return @"Unknown TSU format type";
        }

        result = @"TSUFormatTypeNotSet";
        break;
    }
  }

  return result;
}

__CFString *DisplayNSStringForTSUFormatType(int a1)
{
  if (a1 <= 0)
  {
    if (a1 == -999)
    {
      v1 = @"Unknown";
    }

    else if (a1 == -1)
    {
      v1 = @"Invalid";
    }

    else
    {
      if (a1)
      {
        return @"Unknown TSU format type";
      }

      v1 = @"Unsupported";
    }
  }

  else
  {
    v1 = @"Number";
    switch(a1)
    {
      case 254:
        v1 = @"Conflicting";
        break;
      case 255:
        v1 = @"Automatic";
        break;
      case 256:
        break;
      case 257:
        v1 = @"Currency";
        break;
      case 258:
        v1 = @"Percentage";
        break;
      case 259:
        v1 = @"Scientific";
        break;
      case 260:
        v1 = @"Text";
        break;
      case 261:
        v1 = @"Date & Time";
        break;
      case 262:
        v1 = @"Fraction";
        break;
      case 263:
        v1 = @"Checkbox";
        break;
      case 264:
        v1 = @"Stepper";
        break;
      case 265:
        v1 = @"Slider";
        break;
      case 266:
        v1 = @"Pop-Up Menu";
        break;
      case 267:
        v1 = @"Star Rating";
        break;
      case 268:
        v1 = @"Duration";
        break;
      case 269:
        v1 = @"Numeral System";
        break;
      case 270:
      case 271:
      case 272:
        v1 = @"Custom";
        break;
      default:
        if (a1 != 1)
        {
          return @"Unknown TSU format type";
        }

        v1 = @"Not Set";
        break;
    }
  }

  v3 = SFUBundle();

  return [v3 localizedStringForKey:v1 value:&stru_287DDF830 table:@"TSUtility"];
}

uint64_t TSUFormatTypeForDisplayNSString(void *a1)
{
  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Number", &stru_287DDF830, @"TSUtility"}] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Number", &stru_287DDF830, @"TSUtility")))
  {
    return 256;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Scientific", &stru_287DDF830, @"TSUtility"}])
  {
    return 259;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Fraction", &stru_287DDF830, @"TSUtility"}])
  {
    return 262;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Currency", &stru_287DDF830, @"TSUtility"}])
  {
    return 257;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Percentage", &stru_287DDF830, @"TSUtility"}])
  {
    return 258;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Date & Time", &stru_287DDF830, @"TSUtility"}])
  {
    return 261;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Duration", &stru_287DDF830, @"TSUtility"}])
  {
    return 268;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Text", &stru_287DDF830, @"TSUtility"}])
  {
    return 260;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Unknown", &stru_287DDF830, @"TSUtility"}])
  {
    return 4294966297;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Not Set", &stru_287DDF830, @"TSUtility"}])
  {
    return 1;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Invalid", &stru_287DDF830, @"TSUtility"}])
  {
    return 0xFFFFFFFFLL;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Conflicting", &stru_287DDF830, @"TSUtility"}])
  {
    return 254;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Unsupported", &stru_287DDF830, @"TSUtility"}])
  {
    return 0;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Checkbox", &stru_287DDF830, @"TSUtility"}])
  {
    return 263;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Stepper", &stru_287DDF830, @"TSUtility"}])
  {
    return 264;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Slider", &stru_287DDF830, @"TSUtility"}])
  {
    return 265;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Pop-Up Menu", &stru_287DDF830, @"TSUtility"}])
  {
    return 266;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Star Rating", &stru_287DDF830, @"TSUtility"}])
  {
    return 267;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Numeral System", &stru_287DDF830, @"TSUtility"}])
  {
    return 269;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Custom", &stru_287DDF830, @"TSUtility"}])
  {
    return 270;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Custom", &stru_287DDF830, @"TSUtility"}])
  {
    return 271;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Custom", &stru_287DDF830, @"TSUtility"}])
  {
    return 272;
  }

  if ([a1 isEqualToString:{objc_msgSend(SFUBundle(), "localizedStringForKey:value:table:", @"Automatic", &stru_287DDF830, @"TSUtility"}])
  {
    return 255;
  }

  return 4294966297;
}

uint64_t TSUFormatStructEquals(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    if ((v2 & 0xFFFFFFFC) == 0x100)
    {
      v3 = *(a2 + 16) ^ *(a1 + 16);
      if ((v3 & 0x1800) != 0)
      {
        return 0;
      }

      if (*(a2 + 16) != *(a1 + 16) || (v3 & 0x700) != 0)
      {
        return 0;
      }

      v5 = *(a1 + 8);
      v6 = *(a2 + 8);
      return [v5 isEqual:v6];
    }

    if (v2 > 267)
    {
      if (v2 == 268)
      {
        v9 = *(a1 + 16);
        v10 = *(a2 + 16);
        if ((*(a2 + 8) ^ *(a1 + 8)) >> 32)
        {
          v11 = 0;
        }

        else
        {
          v11 = v9 == v10;
        }

        if (!v11)
        {
          return 0;
        }

        return (v10 ^ v9) >> 32 == 0;
      }

      else
      {
        if (v2 != 269)
        {
          goto LABEL_18;
        }

        return (((*(a2 + 8) | (*(a2 + 10) << 16)) ^ (*(a1 + 8) | (*(a1 + 10) << 16))) & 0x1FFFF) == 0;
      }
    }

    if (v2 != 261)
    {
      if (v2 == 262)
      {
        return *(a2 + 8) == *(a1 + 8);
      }

LABEL_18:
      if ((v2 - 270) > 2)
      {
        if ((v2 - 263) > 4)
        {
          return 1;
        }

        v12 = 0;
        if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
        {
          return ((*(a1 + 36) ^ *(a2 + 36)) & 3) == 0 && ((*(a1 + 36) ^ *(a2 + 36)) & 0xC) == 0;
        }

        return v12;
      }

      return *(a1 + 8) == *(a2 + 8);
    }

    if (((*(a2 + 8) ^ *(a1 + 8)) & 3) == 0)
    {
      v6 = *(a2 + 16);
      v5 = *(a1 + 16);
      return [v5 isEqual:v6];
    }
  }

  return 0;
}

uint64_t TSUFormatStructNumberEquals(void *a1, int a2, uint64_t a3, int a4)
{
  if (((a4 ^ a2) & 0x1800) != 0 || a4 != a2 || ((a4 ^ a2) & 0x700) != 0)
  {
    return 0;
  }

  else
  {
    return [a1 isEqual:?];
  }
}

uint64_t TSUFormatStructDateEquals(unsigned int a1, void *a2, int a3, uint64_t a4)
{
  if (((a3 ^ a1) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return [a2 isEqual:a4];
  }
}

BOOL TSUFormatStructDurationEquals(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 ^ a1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 == a4;
  }

  return v4 && (a4 ^ a2) >> 32 == 0;
}

BOOL TSUFormatStructControlEquals(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (((*(a2 + 28) ^ *(a1 + 28)) & 3) != 0)
  {
    return 0;
  }

  return ((*(a2 + 28) ^ *(a1 + 28)) & 0xC) == 0;
}

uint64_t TSUFormatStructMultipleChoiceListEquals(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  v6 = [a2 choices];
  v7 = [a4 choices];

  return [v6 isEqual:v7];
}

unint64_t TSUFormatStructHash(unsigned int *a1, double a2, uint16x4_t a3)
{
  v3 = *a1;
  if ((v3 & 0xFFFFFFFC) == 0x100)
  {
    a3.i32[0] = *(a1 + 8);
    v4 = vshl_u16(vdup_n_s16(a3.u32[0]), 0xFFF4FFF6FFFAFFFBLL);
    v4.i16[0] = vshl_u16(a3, 0xC000A00060005).u16[0];
    v5 = vand_s8(v4, 0x10002001C1FE0);
    return [*(a1 + 1) hash] ^ v3 ^ (v5.i16[0] | v5.i16[2] | ((v5.i32[0] | v5.i32[1]) >> 16));
  }

  if (v3 > 267)
  {
    if (v3 == 268)
    {
      v7 = (4 * (a1[3] | *(a1 + 2))) | HIDWORD(*(a1 + 2));
      v8 = 268;
      return v7 ^ v8;
    }

    if (v3 == 269)
    {
      return (((*(a1 + 4) >> 7) | (*(a1 + 4) << 9)) & 0x1FFFELL | *(a1 + 10) & 1) ^ 0x10D;
    }
  }

  else
  {
    if (v3 == 261)
    {
      v3 = __rbit32(a1[2]) >> 30;
      v9 = [*(a1 + 2) hash] ^ 0x105;
      return v9 ^ v3;
    }

    if (v3 == 262)
    {
      v7 = *(a1 + 8);
      v8 = 262;
      return v7 ^ v8;
    }
  }

  if ((v3 - 270) <= 2)
  {
    v9 = a1[2];
    return v9 ^ v3;
  }

  if ((v3 - 264) < 2)
  {
    v10 = *(a1 + 6);
    v13[0] = *(a1 + 2);
    v13[1] = v10;
    return TSUFormatStructControlHash(v13) ^ v3;
  }

  if (v3 != 266)
  {
    return v3;
  }

  v11 = *(a1 + 1);
  v12 = [objc_msgSend(*(a1 + 2) "choices")];
  v7 = v11 ^ HIDWORD(v11);
  v8 = v12 ^ 0x10A;
  return v7 ^ v8;
}

uint64_t TSUFormatStructNumberHash(void *a1, uint64_t a2)
{
  v2 = vshl_u16(vdup_n_s16(a2), 0xFFF4FFF6FFFAFFFBLL);
  v2.i16[0] = vshl_u16(a2, 0xC000A00060005).u16[0];
  v3 = vand_s8(v2, 0x10002001C1FE0);
  return [a1 hash] ^ (v3.i16[0] | v3.i16[2] | ((v3.i32[0] | v3.i32[1]) >> 16));
}

unint64_t TSUFormatStructControlHash(uint64_t a1)
{
  v2 = TSUHash(a1, 8);
  v3 = TSUHash((a1 + 8), 8) ^ v2;
  return v3 ^ TSUHash((a1 + 16), 8) ^ *(a1 + 24) ^ ((*(a1 + 28) >> 2) & 3 | (4 * (*(a1 + 28) & 3)));
}

void TSUFormatInit(void)
{
  if ((sTSUFormatIsInitted & 1) == 0)
  {
    v0 = CFLocaleCopyCurrent();
    v1 = CFNumberFormatterCreate(0, v0, kCFNumberFormatterCurrencyStyle);
    sTSUFormatCurrencyString = [(__CFString *)CFNumberFormatterGetFormat(v1) copy];
    CFRelease(v1);
    sTSUFormatCurrencyStringMinus = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatCurrencyString transformedForNegativeStyle:{0), "copy"}];
    sTSUFormatCurrencyStringRedOnly = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatCurrencyString transformedForNegativeStyle:{1), "copy"}];
    sTSUFormatCurrencyStringWithParens = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatCurrencyString transformedForNegativeStyle:{2), "copy"}];
    v2 = CFNumberFormatterCreate(0, v0, kCFNumberFormatterPercentStyle);
    sTSUFormatPercentageString = [(__CFString *)CFNumberFormatterGetFormat(v2) copy];
    CFRelease(v2);
    sTSUFormatPercentageStringMinus = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatPercentageString transformedForNegativeStyle:{0), "copy"}];
    sTSUFormatPercentageStringRedOnly = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatPercentageString transformedForNegativeStyle:{1), "copy"}];
    sTSUFormatPercentageStringWithParens = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatPercentageString transformedForNegativeStyle:{2), "copy"}];
    v3 = CFNumberFormatterCreate(0, v0, kCFNumberFormatterNoStyle);
    CFNumberFormatterSetFormat(v3, @"#.##E+00");
    sTSUFormatScientificString = [(__CFString *)CFNumberFormatterGetFormat(v3) copy];
    CFRelease(v3);
    sTSUFormatScientificStringMinus = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatScientificString transformedForNegativeStyle:{0), "copy"}];
    sTSUFormatScientificStringRedOnly = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatScientificString transformedForNegativeStyle:{1), "copy"}];
    sTSUFormatScientificStringWithParens = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatScientificString transformedForNegativeStyle:{2), "copy"}];
    v4 = CFNumberFormatterCreate(0, v0, kCFNumberFormatterDecimalStyle);
    sTSUFormatDecimalString = [(__CFString *)CFNumberFormatterGetFormat(v4) copy];
    CFRelease(v4);
    sTSUFormatDecimalStringMinus = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatDecimalString transformedForNegativeStyle:{0), "copy"}];
    sTSUFormatDecimalStringRedOnly = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatDecimalString transformedForNegativeStyle:{1), "copy"}];
    sTSUFormatDecimalStringWithParens = [+[TSUNumberFormatter formatString:transformedForNegativeStyle:](TSUNumberFormatter formatString:sTSUFormatDecimalString transformedForNegativeStyle:{2), "copy"}];
    sTSUFormatIsInitted = 1;
    CFRelease(v0);

    TSUDateFormatterInit();
  }
}

uint64_t TSUFormatDefaultFormatStringForValueType(int a1, int a2)
{
  if (a1 > 258)
  {
    if (a1 != 259)
    {
      if (a1 == 261)
      {
        return 0;
      }

LABEL_11:
      if ((a2 - 2) < 2)
      {
        return sTSUFormatDecimalStringWithParens;
      }

      if (a2 == 1)
      {
        return sTSUFormatDecimalStringRedOnly;
      }

      if (a2)
      {
        return sTSUFormatDecimalString;
      }

      return sTSUFormatDecimalStringMinus;
    }

    if ((a2 - 2) < 2)
    {
      return sTSUFormatScientificStringWithParens;
    }

    else if (a2 == 1)
    {
      return sTSUFormatScientificStringRedOnly;
    }

    else if (a2)
    {
      return sTSUFormatScientificString;
    }

    else
    {
      return sTSUFormatScientificStringMinus;
    }
  }

  else
  {
    if (a1 != 257)
    {
      if (a1 == 258)
      {
        if ((a2 - 2) < 2)
        {
          return sTSUFormatPercentageStringWithParens;
        }

        if (a2 == 1)
        {
          return sTSUFormatPercentageStringRedOnly;
        }

        if (a2)
        {
          return sTSUFormatPercentageString;
        }

        return sTSUFormatPercentageStringMinus;
      }

      goto LABEL_11;
    }

    if ((a2 - 2) < 2)
    {
      return sTSUFormatCurrencyStringWithParens;
    }

    else if (a2 == 1)
    {
      return sTSUFormatCurrencyStringRedOnly;
    }

    else if (a2)
    {
      return sTSUFormatCurrencyString;
    }

    else
    {
      return sTSUFormatCurrencyStringMinus;
    }
  }
}

uint64_t TSUFormatTypeToTSUNumberValueType(int a1)
{
  if ((a1 - 256) > 0xE)
  {
    return 4294966297;
  }

  else
  {
    return dword_26CBEED18[a1 - 256];
  }
}

uint64_t TSUFormatTypeFromTSUNumberValueType(unsigned int a1)
{
  if (a1 > 5)
  {
    return 4294966297;
  }

  else
  {
    return dword_26CBEED54[a1];
  }
}

__CFString *TSUFormatStructStringFromDouble(uint64_t a1, double a2)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFC;
  if (v5 == 256)
  {
    v6 = *(a1 + 16);
    if (*(a1 + 16) == 253 || (~v6 & 0xFE) == 0)
    {
      v8 = kTSUNumberFormatterDecimalPlacesAsManyAsNecessary;
    }

    else
    {
      v8 = *(a1 + 16);
    }

    v9 = (v6 >> 8) & 7;
    v10 = v9 != 0;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
  }

  v11 = TSUFormatTypeToTSUNumberValueType(*a1);
  if (v11 == -999)
  {
    return &stru_287DDF830;
  }

  v13 = v11;
  v14 = TSUFormatDefaultFormatStringForValueType(v4, v9);
  return TSUNumberFormatStringFromDouble(v13, v8, v8, v10, v14, *(a1 + 8), v5 == 256, 0, a2, 1.0, 0, 0, v10, 0, 0, 0, (*(a1 + 16) & 0x800) != 0, (*(a1 + 16) & 0x1000) != 0, 0, *(a1 + 8), BYTE1(*(a1 + 8)), WORD1(*(a1 + 8)) & 1, *(a1 + 8));
}

__CFString *TSUFormatCustomStringFromDouble(uint64_t a1, double a2)
{
  if (*a1 == 270)
  {
    v4 = (a1 + 16);
    v5 = *(a1 + 16);
    v6 = v5;
  }

  else
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUFormatCustomStringFromDouble(TSUFormatStruct *, double)"}];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatUtilities.mm"), 289, @"Not a custom number format."}];
    v4 = (a1 + 16);
    v6 = *(a1 + 16);
    if ((*a1 - 270) >= 3)
    {
      v9 = +[TSUAssertionHandler currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const TSUCustomFormatDataStruct *TSUFormatGetCustomFormatData(const TSUFormatStruct)"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 579, @"Accessor requires a custom format."}];
      v5 = *(a1 + 16);
      if ((*a1 - 270) >= 3)
      {
        v11 = +[TSUAssertionHandler currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUFormatGetCustomFormatString(const TSUFormatStruct)"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 592, @"Accessor requires a custom format."}];
      }
    }

    else
    {
      v5 = *(a1 + 16);
    }
  }

  if (v5)
  {
    v13 = *(v5 + 8);
  }

  else
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUFormatGetCustomFormatString(const TSUFormatStruct)"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 593, @"Custom format is not correctly populated."}];
    v13 = 0;
  }

  if (![v13 length])
  {
    return v13;
  }

  if ([v13 characterAtIndex:0] == 39 && objc_msgSend(v13, "characterAtIndex:", objc_msgSend(v13, "length") - 1) == 39)
  {
    v16 = [v13 substringFromIndex:1];
    v17 = [v16 rangeOfString:@"'"];
    if (v17 == [v16 length] - 1)
    {
      v18 = [v16 substringToIndex:{objc_msgSend(v16, "length") - 1}];

      return v18;
    }
  }

  v20 = *(v6 + 56);
  v21 = *a1;
  if ((v20 & 0x20) != 0)
  {
    v26 = TSUFormatTypeToTSUNumberValueType(v21);
    if (v26 != -999)
    {
      HIBYTE(v55) = (v20 & 4) != 0;
      LOBYTE(v55) = (v20 & 0x10) != 0;
      HIWORD(v54) = *(v6 + 53);
      WORD2(v54) = *(v6 + 54);
      LODWORD(v54) = *(v6 + 49);
      return TSUNumberFormatStringFromDouble(v26, 0, 0, (v20 >> 3) & 1, *(v6 + 8), *(v6 + 16), 1, *(v6 + 24), a2, *(v6 + 40), *(v6 + 32), v54, (v20 & 8) != 0, 0, 0x101u, v55, v20 & 1, (v20 & 2) != 0, 0, 0, 0, 0, *(v6 + 48));
    }

    return &stru_287DDF830;
  }

  v22 = *v4;
  if (v21 != 270)
  {
    v23 = +[TSUAssertionHandler currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSUFormatGetCustomNumberFormatScaleFactor(const TSUFormatStruct)"];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 614, @"Accessor requires a custom number format."}];
  }

  if (v22)
  {
    v25 = *(v22 + 40);
  }

  else
  {
    v27 = +[TSUAssertionHandler currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSUFormatGetCustomNumberFormatScaleFactor(const TSUFormatStruct)"];
    [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 615, @"Custom format is not correctly populated."}];
    v25 = 1.0;
  }

  v29 = *(a1 + 16);
  if ((*a1 - 270) >= 3)
  {
    v30 = +[TSUAssertionHandler currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUFormatGetCustomFormatString(const TSUFormatStruct)"];
    [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 592, @"Accessor requires a custom format."}];
  }

  if (v29)
  {
    v32 = *(v29 + 8);
  }

  else
  {
    v33 = +[TSUAssertionHandler currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUFormatGetCustomFormatString(const TSUFormatStruct)"];
    [v33 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 593, @"Custom format is not correctly populated."}];
    v32 = 0;
  }

  v35 = *(a1 + 16);
  if (*a1 != 270)
  {
    v36 = +[TSUAssertionHandler currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormatGetCustomNumberFormatShowThousandsSeparator(const TSUFormatStruct)"];
    [v36 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 624, @"Accessor requires a custom number format."}];
  }

  if (v35)
  {
    v38 = *(v35 + 56);
  }

  else
  {
    v39 = +[TSUAssertionHandler currentHandler];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormatGetCustomNumberFormatShowThousandsSeparator(const TSUFormatStruct)"];
    [v39 handleFailureInFunction:v40 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 625, @"Custom format is not correctly populated."}];
    v38 = 0;
  }

  v41 = *(a1 + 16);
  if (*a1 != 270)
  {
    v42 = +[TSUAssertionHandler currentHandler];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUFormatGetCustomNumberFormatCurrencyCode(const TSUFormatStruct)"];
    [v42 handleFailureInFunction:v43 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 603, @"Accessor requires a custom number format."}];
  }

  if (v41)
  {
    v44 = *(v41 + 16);
  }

  else
  {
    v45 = +[TSUAssertionHandler currentHandler];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUFormatGetCustomNumberFormatCurrencyCode(const TSUFormatStruct)"];
    [v45 handleFailureInFunction:v46 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 604, @"Custom format is not correctly populated."}];
    v44 = 0;
  }

  v47 = *(a1 + 16);
  if (*a1 != 270)
  {
    v48 = +[TSUAssertionHandler currentHandler];
    v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormatGetCustomNumberFormatIsConditional(const TSUFormatStruct)"];
    [v48 handleFailureInFunction:v49 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 664, @"Accessor requires a custom number format."}];
  }

  v50 = v25 * a2;
  if (v47)
  {
    v51 = (*(v47 + 56) >> 3) & 1;
  }

  else
  {
    v52 = +[TSUAssertionHandler currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormatGetCustomNumberFormatIsConditional(const TSUFormatStruct)"];
    [v52 handleFailureInFunction:v53 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatTypes.h"), 665, @"Custom format is not correctly populated."}];
    v51 = 0;
  }

  return TSUNumberFormatterStringFromDoubleWithFormat(v32, 0, 0, 0, v38 & 1, v44, v51, v50);
}

TSUNumberFormat *TSUFormatStructNumberToTSUNumberFormat(int a1, uint64_t a2)
{
  if (*(a2 + 8) - 253 >= 2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = kTSUNumberFormatterDecimalPlacesAsManyAsNecessary;
  }

  v5 = [TSUNumberFormat alloc];
  v6 = TSUFormatTypeToTSUNumberValueType(a1);
  v7 = *(a2 + 8);
  HIDWORD(v10) = -3;
  LOBYTE(v10) = (v7 & 0x800) != 0;
  v8 = [(TSUNumberFormat *)v5 initWithValueType:v6 formatString:0 decimalPlaces:v4 currencyCode:*a2 useAccountingStyle:(v7 >> 12) & 1 negativeStyle:(v7 >> 8) & 7 showThousandsSeparator:v10 fractionAccuracy:?];

  return v8;
}

TSUNumberFormat *TSUFormatStructFractionToTSUNumberFormat(int a1, char *a2)
{
  v4 = [TSUNumberFormat alloc];
  v5 = TSUFormatTypeToTSUNumberValueType(a1);
  HIDWORD(v8) = *a2;
  LOBYTE(v8) = 0;
  v6 = [(TSUNumberFormat *)v4 initWithValueType:v5 formatString:0 decimalPlaces:0 currencyCode:0 useAccountingStyle:0 negativeStyle:0 showThousandsSeparator:v8 fractionAccuracy:?];

  return v6;
}

TSUNumberFormat *TSUFormatStructBaseToTSUNumberFormat(int a1, uint64_t a2)
{
  v4 = [TSUNumberFormat alloc];
  v5 = TSUFormatTypeToTSUNumberValueType(a1);
  BYTE4(v9) = *(a2 + 2) & 1;
  WORD1(v9) = HIBYTE(*a2);
  LOBYTE(v9) = *a2;
  HIDWORD(v8) = -3;
  LOBYTE(v8) = 0;
  v6 = [TSUNumberFormat initWithValueType:v4 formatString:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:base:basePlaces:baseUseMinusSign:" decimalPlaces:v5 currencyCode:0 useAccountingStyle:0 negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:0 base:v8 basePlaces:v9 baseUseMinusSign:?];

  return v6;
}

TSUDateFormat *TSUFormatStructDateToTSUDateFormat(uint64_t a1)
{
  v1 = [[TSUDateFormat alloc] initWithFormat:*(a1 + 8) name:&stru_287DDF830];

  return v1;
}

TSUDurationFormat *TSUFormatStructDurationToTSUDurationFormat(uint64_t a1)
{
  v1 = [[TSUDurationFormat alloc] initWithFormat:TSUDurationFormatterFormatFromDurationUnits(*(a1 + 8) name:*(a1 + 12), 1), &stru_287DDF830];

  return v1;
}

void TSUCustomFormat::TSUCustomFormat(TSUCustomFormat *this)
{
  *this = 0;
  *(this + 10) = 0;
  *(this + 2) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v1 = +[TSUAssertionHandler currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUCustomFormat::TSUCustomFormat()"];
  [v1 handleFailureInFunction:v2 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 17, @"Using default constructor for TSUCustomFormat. Use TSUCustomFormat(NSString* name, TSUFormatType formatType, NSString* format)."}];
}

void sub_26CBC1BA0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t TSUCustomFormat::TSUCustomFormat(uint64_t a1, void *a2, int a3, __int128 *a4)
{
  *a1 = a2;
  v7 = a2;
  *(a1 + 8) = a3;
  v8 = a4[2];
  v9 = a4[3];
  v11 = *a4;
  v10 = a4[1];
  *(a1 + 80) = 0;
  *(a1 + 48) = v8;
  *(a1 + 64) = v9;
  *(a1 + 16) = v11;
  *(a1 + 32) = v10;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if ((a3 - 270) >= 3)
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUCustomFormat::TSUCustomFormat(NSString *, TSUFormatType, TSUCustomFormatDataStruct)"}];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 23, @"Creating a custom format without a correct custom format type."}];
  }

  v14 = *(a4 + 1);
  if (!v14)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUCustomFormat::TSUCustomFormat(NSString *, TSUFormatType, TSUCustomFormatDataStruct)"}];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 25, @"Creating a custom format with null format."}];
    v14 = *(a4 + 1);
  }

  v17 = v14;
  v18 = *(a4 + 2);
  v19 = *(a4 + 3);
  v20 = *(a4 + 4);
  *(a1 + 16) = *a1;
  *(a1 + 72) &= ~8u;
  return a1;
}

void sub_26CBC1D1C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void TSUCustomFormat::TSUCustomFormat(TSUCustomFormat *this, const TSUCustomFormat *a2)
{
  *this = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  if ((*(a2 + 2) - 270) >= 3)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUCustomFormat::TSUCustomFormat(const TSUCustomFormat &)"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 36, @"Creating a custom format without a correct custom format type."}];
  }

  if (!*(a2 + 3))
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUCustomFormat::TSUCustomFormat(const TSUCustomFormat &)"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 38, @"Creating a custom format with nullformat."}];
  }

  SFUtility::ObjcSharedPtr<NSString>::reset(this, *a2);
  *(this + 2) = *(a2 + 2);
  v8 = *(a2 + 4);
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v8;
  *(this + 1) = v10;
  *(this + 2) = v9;
  v11 = *(this + 3);
  v12 = *(this + 4);
  v13 = *(this + 5);
  v14 = *(this + 6);
  *(this + 2) = *this;
  v15 = *(a2 + 11) - *(a2 + 10);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 4);
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      v20 = *(a2 + 10);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 11) - v20) >> 4) <= v17)
      {
        std::vector<TSUCustomFormatCondition>::__throw_out_of_range[abi:nn200100]();
      }

      v21 = v20 + v16;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 32);
      v26[0] = *(v21 + 16);
      v26[1] = v24;
      v25 = *(v21 + 64);
      v26[2] = *(v21 + 48);
      v26[3] = v25;
      TSUCustomFormat::addConditionalFormat(this, v22, v26, v23);
      ++v17;
      v16 += 80;
    }

    while (v19 != v17);
  }
}

void sub_26CBC1F44(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t TSUCustomFormat::addConditionalFormat(uint64_t a1, int a2, __int128 *a3, double a4)
{
  *(a1 + 8) = 270;
  v8 = *(a3 + 1);
  if (!v8)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSInteger TSUCustomFormat::addConditionalFormat(TSUCustomFormatNumberFormatConditionType, double, TSUCustomFormatDataStruct)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 156, @"Tried to set a null format."}];
    if (*(a1 + 8) != 270)
    {
      return -1;
    }

    v8 = *(a3 + 1);
  }

  *a3 = *a1;
  v11 = v8;
  v12 = *(a3 + 2);
  v13 = *(a3 + 3);
  v14 = *(a3 + 4);
  *(a3 + 56) |= 8u;
  v32 = *a3;
  v33 = a3[1];
  v34 = a3[2];
  v35 = a3[3];
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  if (v15 >= v16)
  {
    v18 = *(a1 + 80);
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v18) >> 4);
    v20 = v19 + 1;
    if (v19 + 1 > 0x333333333333333)
    {
      std::vector<TSUCustomFormatCondition>::__throw_out_of_range[abi:nn200100]();
    }

    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v18) >> 4);
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    if (v21 >= 0x199999999999999)
    {
      v22 = 0x333333333333333;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSUCustomFormatCondition>>(a1 + 80, v22);
    }

    v24 = 80 * v19;
    *v24 = a2;
    *(v24 + 4) = 0;
    *(v24 + 8) = a4;
    *(v24 + 16) = v32;
    *(v24 + 32) = v33;
    *(v24 + 48) = v34;
    *(v24 + 64) = v35;
    v17 = 80 * v19 + 80;
    v25 = *(a1 + 80);
    v26 = *(a1 + 88) - v25;
    v27 = v24 - v26;
    memcpy((v24 - v26), v25, v26);
    v28 = *(a1 + 80);
    *(a1 + 80) = v27;
    *(a1 + 88) = v17;
    *(a1 + 96) = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v15 = a2;
    *(v15 + 4) = 0;
    *(v15 + 8) = a4;
    *(v15 + 16) = v32;
    *(v15 + 32) = v33;
    v17 = v15 + 80;
    *(v15 + 48) = v34;
    *(v15 + 64) = v35;
  }

  *(a1 + 88) = v17;
  v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *(a1 + 80)) >> 4);
  if (v23 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = +[TSUAssertionHandler currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSInteger TSUCustomFormat::addConditionalFormat(TSUCustomFormatNumberFormatConditionType, double, TSUCustomFormatDataStruct)"}];
    [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 168, @"condition list size overflow"}];
  }

  return v23;
}

uint64_t TSUCustomFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    SFUtility::ObjcSharedPtr<NSString>::reset(a1, *a2);
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v8 = *(a2 + 64);
    v10 = *(a2 + 16);
    v9 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v8;
    *(a1 + 16) = v10;
    *(a1 + 32) = v9;
    *(a1 + 16) = *a1;
    v11 = *(a1 + 80);
    v12 = *(a1 + 88) - v11;
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 4) <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 4);
      }

      do
      {
        v16 = *(a1 + 80);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 88) - v16) >> 4) <= v14)
        {
          goto LABEL_16;
        }

        v17 = v16 + v13;
        v18 = *(v17 + 32);

        ++v14;
        v13 += 80;
      }

      while (v15 != v14);
      v11 = *(a1 + 80);
    }

    *(a1 + 88) = v11;
    v19 = *(a2 + 88) - *(a2 + 80);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0xCCCCCCCCCCCCCCCDLL * (v19 >> 4);
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      while (1)
      {
        v24 = *(a2 + 80);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 88) - v24) >> 4) <= v21)
        {
          break;
        }

        v25 = v24 + v20;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 32);
        v31[0] = *(v25 + 16);
        v31[1] = v28;
        v29 = *(v25 + 64);
        v31[2] = *(v25 + 48);
        v31[3] = v29;
        TSUCustomFormat::addConditionalFormat(a1, v26, v31, v27);
        ++v21;
        v20 += 80;
        if (v23 == v21)
        {
          return a1;
        }
      }

LABEL_16:
      std::vector<TSUCustomFormatCondition>::__throw_out_of_range[abi:nn200100]();
    }
  }

  return a1;
}

void TSUCustomFormat::~TSUCustomFormat(id *this)
{
  this[3] = 0;

  this[4] = 0;
  this[5] = 0;

  this[6] = 0;
  v2 = this[10];
  v3 = this[11];
  if (v3 != v2)
  {
    v4 = 0;
    v5 = 0;
    if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 4) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 4);
    }

    do
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 4) <= v5 || (*&v2[v4 + 24], v7 = this[10], 0xCCCCCCCCCCCCCCCDLL * ((this[11] - v7) >> 4) <= v5) || (v8 = &v7[v4], *(v8 + 3) = 0, *(v8 + 4), v9 = this[10], 0xCCCCCCCCCCCCCCCDLL * ((this[11] - v9) >> 4) <= v5) || (v10 = &v9[v4], *(v10 + 4) = 0, *(v10 + 5), v11 = this[10], 0xCCCCCCCCCCCCCCCDLL * ((this[11] - v11) >> 4) <= v5) || (v12 = &v11[v4], *(v12 + 5) = 0, *(v12 + 6), v2 = this[10], v3 = this[11], 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 4) <= v5))
      {
        std::vector<TSUCustomFormatCondition>::__throw_out_of_range[abi:nn200100]();
      }

      *&v2[v4 + 48] = 0;
      ++v5;
      v4 += 80;
    }

    while (v6 != v5);
    this[11] = v2;
    goto LABEL_13;
  }

  if (v2)
  {
LABEL_13:
    this[11] = v2;
    operator delete(v2);
  }
}

void sub_26CBC2518(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void TSUCustomFormat::setFormatName(void **this, id a2)
{
  v3 = a2;
  SFUtility::ObjcSharedPtr<NSString>::reset(this, a2);
}

BOOL TSUCustomFormat::conditionalFormatAtIndex(uint64_t a1, unint64_t a2, _DWORD *a3, void *a4, int **a5)
{
  v5 = *(a1 + 80);
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 88) - v5) >> 4);
  if (v6 <= a2)
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v7 = (v5 + 80 * a2);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v7 + 4;
  }

  *a3 = v8;
  result = v6 > a2;
  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t TSUCustomFormat::formatByEvaluatingConditionsWithDouble(TSUCustomFormat *this, double a2)
{
  if (*(this + 2) != 270)
  {
    return 0;
  }

  v29 = v15;
  v30 = v14;
  v31 = v11;
  v32 = v10;
  v33 = v9;
  v34 = v8;
  v35 = v7;
  v36 = v6;
  v37 = v5;
  v38 = v4;
  v39 = v3;
  v40 = v2;
  v41 = v12;
  v42 = v13;
  v18 = *(this + 10);
  v17 = *(this + 11);
  if (v17 == v18)
  {
    return this + 16;
  }

  v20 = 0;
  v21 = 1;
  while (1)
  {
    v22 = v18 + 80 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    if (*v22 > 1)
    {
      switch(v23)
      {
        case 2:
          if (v24 >= a2)
          {
            return v22 + 16;
          }

          break;
        case 3:
          if (v24 < a2)
          {
            return v22 + 16;
          }

          break;
        case 4:
          if (v24 <= a2)
          {
            return v22 + 16;
          }

          break;
        default:
          goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (!v23)
    {
      break;
    }

    if (v23 != 1)
    {
LABEL_20:
      v25 = [TSUAssertionHandler currentHandler:v24];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const TSUCustomFormatDataStruct *TSUCustomFormat::formatByEvaluatingConditionsWithDouble(double) const"];
      [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormat.mm"), 243, @"Unexpected condition type in conditional number format!"}];
      v18 = *(this + 10);
      v17 = *(this + 11);
      goto LABEL_21;
    }

    if (v24 > a2)
    {
      return v22 + 16;
    }

LABEL_21:
    v20 = v21;
    if (0xCCCCCCCCCCCCCCCDLL * ((v17 - v18) >> 4) <= v21++)
    {
      return this + 16;
    }
  }

  if (vabdd_f64(a2, v24) >= 1.0e-14)
  {
    goto LABEL_21;
  }

  return v22 + 16;
}

uint64_t TSUCustomFormat::customFormatIsEqual(TSUCustomFormat *this, TSUCustomFormat *a2)
{
  if (*(this + 2) != *(a2 + 2))
  {
    return 0;
  }

  v32 = v4;
  v33 = v3;
  v34 = v2;
  if (*(this + 11) - *(this + 10) != *(a2 + 11) - *(a2 + 10))
  {
    return 0;
  }

  v12 = *this;
  if (*this && *a2)
  {
    v13 = [v12 length];
    v14 = [*a2 length];
    v15 = v13 >= v14 ? v14 : v13;
    v12 = [*this compare:*a2 options:0 range:{0, v15, v7, v6, v5, v32, v33, v34, v8, v9}];
    if (v12)
    {
      return 0;
    }
  }

  result = TSUCustomFormat::customFormatDataIsEqual(v12, this + 16, a2 + 16);
  if (result)
  {
    v17 = *(this + 11) - *(this + 10);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v17 >> 4);
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      while (1)
      {
        v22 = *(a2 + 10);
        v23 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 11) - v22) >> 4);
        if (v23 > v19)
        {
          v27 = v22 + v18;
          v24 = *(v22 + v18);
          v26 = *(v27 + 8);
          v25 = v27 + 16;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0.0;
        }

        v28 = *(this + 10);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 11) - v28) >> 4) <= v19)
        {
          break;
        }

        v29 = v28 + v18;
        v30 = v23 > v19 && *v29 == v24;
        v31 = v30 && *(v29 + 8) == v26;
        if (!v31 || (TSUCustomFormat::customFormatDataIsEqual(result, v29 + 16, v25) & 1) == 0)
        {
          break;
        }

        ++v19;
        v18 += 80;
        result = 1;
        if (v21 == v19)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t TSUCustomFormat::customFormatDataIsEqual(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(a3 + 56) ^ *(a2 + 56)) & 0x3F) != 0)
  {
    return 0;
  }

  if (*(a2 + 48) != *(a3 + 48) || *(a2 + 49) != *(a3 + 49) || *(a2 + 50) != *(a3 + 50) || *(a2 + 51) != *(a3 + 51) || *(a2 + 52) != *(a3 + 52) || *(a2 + 53) != *(a3 + 53) || *(a2 + 54) != *(a3 + 54) || *(a2 + 55) != *(a3 + 55) || *(a2 + 40) != *(a3 + 40))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v7 = *(a3 + 8);
  if (v6)
  {
    if (([v6 isEqualToString:v7] & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  if (v8)
  {
    if (([v8 isEqualToString:v9] & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 24);
  v11 = *(a3 + 24);
  if (v10)
  {
    if (([v10 isEqualToArray:v11] & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a2 + 32);
  v13 = *(a3 + 32);
  if (v12)
  {
    if ([v12 isEqualToIndexSet:v13])
    {
      return 1;
    }
  }

  else if (!v13)
  {
    return 1;
  }

  return 0;
}

uint64_t TSUCustomFormat::customFormatNameIsEqual(void **this, TSUCustomFormat *a2)
{
  if (a2 && (v2 = *this) != 0)
  {
    return [v2 isEqualToString:*a2];
  }

  else
  {
    return 0;
  }
}

void TSUCustomFormat_TestCode(void)
{
  v3 = 0;
  v2 = 0uLL;
  v0[0] = 0;
  *(v0 + 3) = 0;
  v1[0] = 0;
  *(v1 + 3) = 0;
  operator new();
}

void SFUtility::ObjcSharedPtr<NSString>::reset(void **a1, void *a2)
{
  if (*a1 != a2)
  {
    v5 = a2;
    v6 = *a1;
    *a1 = a2;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSUCustomFormatCondition>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<TSUCustomFormatCondition>::__throw_out_of_range[abi:nn200100]();
}

void sub_26CBC3D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CBC3FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CBC4248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSUCustomNumberFormatTokenIdentifierCharacterForTokenType(unsigned int a1)
{
  if (a1 >= 7)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"unichar TSUCustomNumberFormatTokenIdentifierCharacterForTokenType(TSUCustomNumberFormatTokenType)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormatNumberTokenDelegate.m"), 59, @"Invalid custom number format token type!"}];
    v1 = &TSUCustomNumberFormatTokenScaleIdentifierCharacter;
  }

  else
  {
    v1 = (&off_279D66200)[a1];
  }

  return *v1;
}

uint64_t TSUPerformBlockOnNextRunloop(void *a1)
{
  v1 = [a1 copy];

  return [v1 performSelector:sel_tsu_runBlock withObject:0 afterDelay:0.0];
}

void sub_26CBC5AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AMOFullMethodName(uint64_t a1, const char *a2)
{
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCACA8];
  if (v4 == a1)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"+[%@ %@]", a1, NSStringFromSelector(a2)];
  }

  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"-[%@ %@]", v6, NSStringFromSelector(a2)];
}

BOOL SFUEqualCryptoKeys(unint64_t a1, unint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  v5 = a1 != 0;
  if (a2)
  {
    v6 = a1 != 0;
  }

  else
  {
    v6 = 1;
  }

  if (a2)
  {
    v5 = 0;
  }

  if (!v5 && v6)
  {
    v7 = [a1 keyLength];
    return v7 == [a2 keyLength] && memcmp(objc_msgSend(a1, "keyData"), objc_msgSend(a2, "keyData"), v7) == 0;
  }

  return result;
}

void sub_26CBC84A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t SFUDeriveAes128Key(uint64_t a1, unint64_t a2, unsigned int a3, char *a4, uint64_t a5, void *a6, size_t a7)
{
  if (a4)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = !v7 && a5 == 16 && a3 > 0x3E7 && HIDWORD(a2) == 0;
  v11 = v10;
  if (v10)
  {
    v18 = a7 + 4;
    if (a7 + 4 <= 0x14)
    {
      v18 = 20;
    }

    v19 = malloc_type_calloc(1uLL, v18 + 40, 0x100004077774924uLL);
    pbkdf2(hmacsha1, 20, a1, a2, a6, a7, a3, a4, 0x10u, v19);
    free(v19);
  }

  return v11;
}

uint64_t SFUXmlReaderIORead(void *a1, uint64_t a2, int a3)
{
  v3 = [a1 readToBuffer:a2 size:a3];
  if (v3 >= 0x80000000)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int SFUXmlReaderIORead(void *, char *, int)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUDataRepresentation.m"), 557, @"Overflow in SFUXmlReaderIORead"}];
  }

  return v3;
}

uint64_t SFUXmlReaderIOClose(void *a1)
{
  [a1 close];

  return 0;
}

void sub_26CBCB344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUDataRepresentation readIntoData:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUDataRepresentation.m"), 283, @"Caught exception trying to read storage into NSMutableData: %@"}];
    [v9 setLength:v10];
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t SFUCGDataProviderSkipForward(void *a1, uint64_t a2)
{
  v4 = [a1 offset];
  [a1 seekToOffset:v4 + a2];
  return [a1 offset] - v4;
}

void SFUCGDataProviderReleaseInfo(void *a1)
{
  [a1 closeLocalStream];
}

void sub_26CBCBC68(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

FILE *SFUFileOpen(void *a1, const char *a2)
{
  v3 = fopen([a1 fileSystemRepresentation], a2);
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFileOpenError" format:{@"Could not open %@", a1}];
  }

  return v3;
}

FILE *SFUFdOpen(uint64_t a1, const char *a2)
{
  v3 = fdopen(a1, a2);
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFdOpenError" format:{@"Could not fdopen %d", a1}];
  }

  return v3;
}

uint64_t SFUOpen(void *a1, int a2, uint64_t a3)
{
  v4 = open([a1 fileSystemRepresentation], a2, a3);
  if (v4 == -1)
  {
    [MEMORY[0x277CBEAD8] errnoRaise:@"SFUOpenError" format:{@"Could not open %@", a1}];
  }

  return v4;
}

uint64_t SFUDup(uint64_t a1)
{
  v2 = dup(a1);
  if (v2 == -1)
  {
    [MEMORY[0x277CBEAD8] errnoRaise:@"SFUDupError" format:{@"Could not dup %d", a1}];
  }

  return v2;
}

void sub_26CBCD390(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_26CBCD88C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    free(v3);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSUStandardizedAPFSPath(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [objc_msgSend(a1 "stringByStandardizingPath")];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (![v7 isEqualToString:@"/"])
        {
          if (![v7 fileSystemRepresentation])
          {
            continue;
          }

          if (APFSMakeCompatibleName())
          {
            continue;
          }

          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
          if (![v7 length])
          {
            continue;
          }
        }

        [v2 addObject:v7];
      }

      v4 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = [v2 count];
  if (v8 == [v1 count])
  {
    return [MEMORY[0x277CCACA8] pathWithComponents:v2];
  }

  else
  {
    return 0;
  }
}

uint64_t TSUOpen(void *a1, int a2, uint64_t a3)
{
  v6 = [objc_msgSend(a1 "stringByStandardizingPath")];
  if (!v6 || (result = open(v6, a2, a3), result == -1))
  {
    if (*__error() == 92 && (v8 = [TSUStandardizedAPFSPath(a1) fileSystemRepresentation]) != 0)
    {
      return open(v8, a2, a3);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t TSULink(void *a1, void *a2)
{
  v4 = [objc_msgSend(a1 "stringByStandardizingPath")];
  v5 = [objc_msgSend(a2 "stringByStandardizingPath")];
  if (!v4 || !v5 || (result = link(v4, v5), result == -1))
  {
    if (*__error() == 92)
    {
      v7 = [TSUStandardizedAPFSPath(a1) fileSystemRepresentation];
      v8 = [TSUStandardizedAPFSPath(a2) fileSystemRepresentation];
      result = 0xFFFFFFFFLL;
      if (v7 && v8)
      {

        return link(v7, v8);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t TSUMkdir(void *a1, mode_t a2)
{
  v4 = [objc_msgSend(a1 "stringByStandardizingPath")];
  if (!v4 || (result = mkdir(v4, a2), result == -1))
  {
    if (*__error() == 92 && (v6 = [TSUStandardizedAPFSPath(a1) fileSystemRepresentation]) != 0)
    {

      return mkdir(v6, a2);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_26CBCE274(void *a1)
{
  objc_begin_catch(a1);
  free(v1);
  objc_exception_rethrow();
}

void sub_26CBCF91C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x26CBCF8D0);
  }

  _Unwind_Resume(a1);
}

void sub_26CBCFB48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_26CBD07CC(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x26CBD0758);
}

uint64_t SFUZipCurrentDosTime()
{
  v4 = time(0);
  v0 = localtime(&v4);
  tm_year = v0->tm_year;
  v2 = (tm_year << 25) + 1610612736;
  if (tm_year <= 81)
  {
    v2 = 0x2000000;
  }

  return v2 | ((v0->tm_mon << 21) + 0x200000) | (v0->tm_mday << 16) | (v0->tm_hour << 11) | (32 * v0->tm_min) | (v0->tm_sec >> 1);
}

void sub_26CBD3210(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_26CBD3670(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_26CBD3C38(void *a1)
{
  objc_begin_catch(a1);
  fclose(v1);
  objc_exception_rethrow();
}

uint64_t SFUHashWithSeed(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    do
    {
      v4 = *a1++;
      a3 = (16777619 * a3) ^ v4;
      --a2;
    }

    while (a2);
  }

  else
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"unsigned int SFUHashWithSeed(const char *, size_t, unsigned int)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUHash.m"), 24, @"SFUHash must have at least one byte of input."}];
  }

  return a3;
}

void SFUStopwatch::SFUStopwatch(SFUStopwatch *this, const char *a2, int a3)
{
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = a2;
  if ((SFUStopwatch::smInitialized & 1) == 0)
  {
    SFUStopwatch::Initialize(this);
  }

  if (a3)
  {
    if (!*(this + 8))
    {
      *(this + 5) = SFUStopwatch::GetMicroseconds(this);
      *(this + 8) = 1;
    }
  }
}

void sub_26CBD769C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double SFUStopwatch::Initialize(SFUStopwatch *this)
{
  v1 = mach_timebase_info(&info);
  LODWORD(v3) = info.numer;
  LODWORD(v2) = info.denom;
  *&SFUStopwatch::smDivisor = v2 / v3 * 1000.0;
  SFUStopwatch::smInitialized = 1;
  Microseconds = SFUStopwatch::GetMicroseconds(v1);
  result = (SFUStopwatch::GetMicroseconds(v5) - Microseconds) / 10.0;
  SFUStopwatch::smMethodCallOverhead = *&result;
  return result;
}

void SFUStopwatch::Start(SFUStopwatch *this)
{
  if (!*(this + 8))
  {
    *(this + 5) = SFUStopwatch::GetMicroseconds(this);
    *(this + 8) = 1;
  }
}

void SFUStopwatch::~SFUStopwatch(SFUStopwatch *this)
{
  if (*(this + 8) == 1)
  {
    *(this + 6) = SFUStopwatch::GetMicroseconds(this);
    *(this + 8) = 2;
  }

  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void sub_26CBD77C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SFUStopwatch::Stop(SFUStopwatch *this)
{
  if (*(this + 8) == 1)
  {
    *(this + 6) = SFUStopwatch::GetMicroseconds(this);
    *(this + 8) = 2;
  }
}

double SFUStopwatch::GetMicroseconds(SFUStopwatch *this)
{
  v1 = mach_absolute_time();
  v2 = v1;
  if ((SFUStopwatch::smInitialized & 1) == 0)
  {
    SFUStopwatch::Initialize(v1);
  }

  return v2 / *&SFUStopwatch::smDivisor;
}

uint64_t SFUStopwatch::Reset(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

void SFUStopwatch::Lap(double **this)
{
  Microseconds = SFUStopwatch::GetMicroseconds(this);
  if (*(this + 8) == 1)
  {
    v4 = this[2];
    v3 = this[3];
    if (v4 >= v3)
    {
      v6 = this[1];
      v7 = v4 - v6;
      v8 = v4 - v6;
      v9 = v8 + 1;
      if ((v8 + 1) >> 61)
      {
        std::vector<TSUCustomFormatCondition>::__throw_out_of_range[abi:nn200100]();
      }

      v10 = v3 - v6;
      if (v10 >> 2 > v9)
      {
        v9 = v10 >> 2;
      }

      v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v9;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<double>>((this + 1), v12);
      }

      v13 = v4 - v6;
      v14 = (8 * v8);
      v15 = (8 * v8 - 8 * v13);
      *v14 = Microseconds;
      v5 = v14 + 1;
      memcpy(v15, v6, v7);
      v16 = this[1];
      this[1] = v15;
      this[2] = v5;
      this[3] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v4 = Microseconds;
      v5 = v4 + 1;
    }

    this[2] = v5;
  }
}

double SFUStopwatch::StartTime(SFUStopwatch *this)
{
  if (*(this + 8) < 1)
  {
    return -1.0;
  }

  else
  {
    return *(this + 5);
  }
}

double SFUStopwatch::StopTime(SFUStopwatch *this)
{
  if (*(this + 8) < 1)
  {
    return -1.0;
  }

  else
  {
    return *(this + 6);
  }
}

double SFUStopwatch::ElapsedTime(SFUStopwatch *this)
{
  v1 = -1.0;
  if (*(this + 8) == 2)
  {
    v1 = *(this + 6) - *(this + 5);
  }

  result = v1 - *&SFUStopwatch::smMethodCallOverhead;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double SFUStopwatch::LapTime(SFUStopwatch *this, unint64_t a2)
{
  v2 = *(this + 1);
  result = -1.0;
  if (a2 <= (*(this + 2) - v2) >> 3)
  {
    return *(v2 + 8 * a2 - 8);
  }

  return result;
}

void SFUStopwatch::LogElapsedTime(SFUStopwatch *this)
{
  v3 = -1.0;
  if (*(this + 8) == 2)
  {
    v3 = *(this + 6) - *(this + 5);
  }

  v4 = v3 - *&SFUStopwatch::smMethodCallOverhead;
  if (v4 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 > 1000.0;
  v7 = v5 / 1000.0;
  if (v5 <= 1000.0)
  {
    v7 = v5;
  }

  if (v7 > 1000.0)
  {
    v6 = 2;
    if (v5 <= 1000.0)
    {
      v6 = 1;
    }

    v7 = v7 / 1000.0;
  }

  NSLog(@"%s: %p [ %f %s ]", *this, this, *&v7, off_279D66318[v6], v1, v2);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<TSUCustomFormatCondition>::__throw_out_of_range[abi:nn200100]();
}

uint64_t (*pbkdf2(uint64_t (*result)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, char *a8, unsigned int a9, char *a10))(uint64_t, uint64_t, char *, uint64_t, char *)
{
  v16 = result;
  v17 = a9 / a2;
  v24 = a9 % a2;
  v18 = &a10[a2];
  if (a2 <= a9)
  {
    v25 = a2;
    v19 = 1;
    do
    {
      v26 = a8;
      v23 = a8;
      v20 = a2;
      v21 = v18;
      v22 = v17;
      result = F(v16, a2, a3, a4, __src, __n, a7, v19, v23, v18);
      v17 = v22;
      v18 = v21;
      a2 = v20;
      a8 = &v26[v25];
      ++v19;
    }

    while (v19 <= v17);
  }

  else
  {
    v19 = 1;
  }

  if (v24)
  {
    F(v16, a2, a3, a4, __src, __n, a7, v19, a10, v18);

    return memcpy(a8, a10, v24);
  }

  return result;
}

void *F(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, int a8, void *a9, char *a10)
{
  v11 = __n;
  v16 = a2;
  v17 = a10;
  v18 = &a10[a2];
  memcpy(v18, __src, __n);
  v18[v11] = HIBYTE(a8);
  v18[v11 + 1] = BYTE2(a8);
  v18[v11 + 2] = BYTE1(a8);
  v18[v11 + 3] = a8;
  a1(a3, a4, v18, (v11 + 4), a10);
  v19 = v16;
  result = memcpy(a9, a10, v16);
  if (a7 >= 2)
  {
    v21 = 2;
    do
    {
      v22 = v18;
      result = a1(a3, a4, v17, a2, v18);
      if (a2)
      {
        v23 = v19;
        v24 = a9;
        v25 = v18;
        do
        {
          v26 = *v25++;
          *v24++ ^= v26;
          --v23;
        }

        while (v23);
      }

      ++v21;
      v18 = v17;
      v17 = v22;
    }

    while (v21 <= a7);
  }

  return result;
}

double TSUCPUUsed(mach_msg_type_number_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  act_list = 0;
  act_listCnt = 0;
  v2 = task_threads(*MEMORY[0x277D85F48], &act_list, &act_listCnt);
  if (v2)
  {
    v3 = mach_error_string(v2);
    NSLog(@"Unable to get threads: %s", v3);
    return 0.0;
  }

  v5 = act_listCnt;
  if (!act_listCnt)
  {
    v4 = 0.0;
    if (!a1)
    {
      return v4;
    }

    goto LABEL_10;
  }

  v6 = 0;
  v4 = 0.0;
  do
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *thread_info_out = 0u;
    v12 = 0u;
    thread_info_outCnt = 32;
    if (!thread_info(act_list[v6], 3u, thread_info_out, &thread_info_outCnt) && (BYTE12(v12) & 2) == 0)
    {
      v4 = v4 + v12 / 1000.0 * 100.0;
    }

    ++v6;
    v5 = act_listCnt;
  }

  while (v6 < act_listCnt);
  if (a1)
  {
LABEL_10:
    *a1 = v5;
  }

  return v4;
}

void TSULogSink(uint64_t a1, NSString *format, ...)
{
  va_start(va, format);
  if (g_logSinkBlock)
  {
    (*(g_logSinkBlock + 16))();
  }

  else
  {
    NSLogv(format, va);
  }
}

void *TSULogSinkSetBlock(void *aBlock)
{
  result = g_logSinkBlock;
  if (g_logSinkBlock != aBlock)
  {
    if (g_logSinkBlock)
    {
      _Block_release(g_logSinkBlock);
    }

    if (aBlock)
    {
      result = _Block_copy(aBlock);
    }

    else
    {
      result = 0;
    }

    g_logSinkBlock = result;
  }

  return result;
}

void sub_26CBDC58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CBDDF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26CBDEEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26CBE40E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 128), 8);
  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CBE4F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 136), 8);
  _Unwind_Resume(a1);
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x28210EEA0](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
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