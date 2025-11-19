void sub_26C9223EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TSWPLFCharIndexData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFCharIndexData>>(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

uint64_t TSWPLineFragment::truncatedCharIndex(TSWPLineFragment *this)
{
  if ((*(this + 26) & 0x80) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  GlyphRuns = CTLineGetGlyphRuns(**(this + 24));
  if (!GlyphRuns)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = GlyphRuns;
  Count = CFArrayGetCount(GlyphRuns);
  if (Count < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    Attributes = CTRunGetAttributes(ValueAtIndex);
    if (CFDictionaryContainsKey(Attributes, @"__TSWPTruncationKey"))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  location = CTRunGetStringRange(ValueAtIndex).location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = location;
  v12 = *(this + 23);

  return [v12 charIndexMappedToStorage:v11];
}

unint64_t TSWPLineFragment::nextOrPreviousNonAnchoredDataIndexForDirection(uint64_t a1, unint64_t a2, void *a3, int a4, void *a5)
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v5;
  }

  v7 = a2;
  if (a3[1] == *a3)
  {
    return v7;
  }

  v10 = [a5 length];
  v11 = v10;
  if (a4 != 2)
  {
    if (a4 == 3)
    {
      v12 = (v7 << 6) - 64;
      do
      {
        v5 = v7;
        if (!v7)
        {
          break;
        }

        if (*(*a3 + v12) >= v11)
        {
          break;
        }

        v12 -= 64;
        --v7;
      }

      while (([a5 anchoredDrawableAttachmentCharacterAtCharIndex:?] & 1) != 0);
      return v5;
    }

    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPLineFragment::nextOrPreviousNonAnchoredDataIndexForDirection(TSWPCharIndex, vector<TSWPLFCharIndexData> &, TSWPTextLayoutDirection, TSWPStorage *) const"}];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2530, @"This routine supports left and right only."}];
    return v7;
  }

  if (v7 >= (a3[1] - *a3) >> 6)
  {
    goto LABEL_22;
  }

  if (*(*a3 + (v7 << 6)) >= v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = (v7 << 6) + 64;
    do
    {
      if (![a5 anchoredDrawableAttachmentCharacterAtCharIndex:?])
      {
        break;
      }

      if (++v7 >= (a3[1] - *a3) >> 6)
      {
        return v7;
      }

      v15 = *(*a3 + v14);
      v14 += 64;
      v13 = 1;
    }

    while (v15 < v11);
  }

  v5 = v7;
  if ((v13 & 1) == 0)
  {
LABEL_22:
    v19 = (v7 << 6) + 64;
    do
    {
      v5 = v7++;
      if (v7 >= (a3[1] - *a3) >> 6)
      {
        break;
      }

      if (*(*a3 + v19) >= v11)
      {
        break;
      }

      v19 += 64;
    }

    while (([a5 anchoredDrawableAttachmentCharacterAtCharIndex:?] & 1) != 0);
  }

  return v5;
}

uint64_t TSWPLineFragment::nextOrPreviousCharIndexForDirection(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (*(a1 + 24))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = *(a1 + 8);
  if (!*(a1 + 184))
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPLineFragment::nextOrPreviousCharIndexForDirection(TSWPCharIndex, TSWPTextLayoutDirection, TSWPStorage *) const"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2547, @"invalid nil value for '%s'", "_textSource"}];
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<TSWPLFCharIndexData>::reserve(&__p, v8);
  TSWPLineFragment::fillCharIndicesAndOffsets(a1, &__p);
  v12 = __p;
  v11 = v33;
  v13 = [*(a1 + 184) charIndexRemappedFromStorage:a2];
  v14 = (v11 - v12) >> 6;
  if (v11 == v12)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = (__p + 64 * v15);
      v19 = *v17;
      v18 = v17[1];
      v21 = v13 >= v19;
      v20 = v13 - v19;
      v21 = !v21 || v20 >= v18;
      if (!v21)
      {
        break;
      }

      v15 = v16;
      if (v14 <= v16++)
      {
        if ((*(a1 + 25) & 0x10) != 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14 - 1;
        }

        break;
      }
    }
  }

  v24 = TSWPLineFragment::nextOrPreviousNonAnchoredDataIndexForDirection(v13, v15, &__p, a3, a4);
  v25 = v24;
  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 == 3)
    {
      if (v24)
      {
        v27 = __p;
        v28 = __p + 64 * v25 - 64;
        goto LABEL_24;
      }
    }

    else if (a3 == 2)
    {
      v26 = v24 + 1;
      if (v24 + 1 < v14)
      {
        v27 = __p;
        v28 = __p + 64 * v26;
LABEL_24:
        v23 = *v28;
LABEL_27:
        v33 = v27;
        operator delete(v27);
        return v23;
      }
    }

    else
    {
      v29 = [MEMORY[0x277D6C290] currentHandler];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPLineFragment::nextOrPreviousCharIndexForDirection(TSWPCharIndex, TSWPTextLayoutDirection, TSWPStorage *) const"}];
      [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2601, @"This routine supports left and right only."}];
    }
  }

  v27 = __p;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if (__p)
  {
    goto LABEL_27;
  }

  return v23;
}

void sub_26C9229B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPLineFragment::countOfGlyphRuns(TSWPLineFragment *this)
{
  v2 = *(this + 24);
  if (*(this + 25) == v2)
  {
    return 0;
  }

  GlyphRuns = CTLineGetGlyphRuns(*v2);

  return [(__CFArray *)GlyphRuns count];
}

CFIndex TSWPLineFragment::glyphCountForRunIndex(TSWPLineFragment *this, unsigned int a2)
{
  v2 = *(this + 24);
  if (*(this + 25) == v2)
  {
    return 0;
  }

  GlyphRuns = CTLineGetGlyphRuns(*v2);
  if ([(__CFArray *)GlyphRuns count]<= a2)
  {
    return 0;
  }

  v5 = [(__CFArray *)GlyphRuns objectAtIndexedSubscript:a2];

  return CTRunGetGlyphCount(v5);
}

uint64_t TSWPLineFragment::isRunIndexLeftToRight(TSWPLineFragment *this, unsigned int a2)
{
  v2 = *(this + 24);
  if (*(this + 25) == v2)
  {
    v5 = 1;
  }

  else
  {
    GlyphRuns = CTLineGetGlyphRuns(*v2);
    if ([(__CFArray *)GlyphRuns count]<= a2)
    {
      v5 = 1;
    }

    else
    {
      v5 = CTRunGetStatus([(__CFArray *)GlyphRuns objectAtIndexedSubscript:a2]) ^ 1;
    }
  }

  return v5 & 1;
}

uint64_t TSWPLineFragment::characterCountOfGlyphAtCharIndex(TSWPLineFragment *this, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(this + 24);
  if (*(this + 25) == v2)
  {
    return 1;
  }

  if (*(this + 1) < 2uLL)
  {
    return 1;
  }

  line = *v2;
  v4 = TSWPNextCharFromTextSource(a2, *(this + 23));
  v19 = *(this + 1) + *this;
  if (v4 >= v19)
  {
    return 1;
  }

  else
  {
    v5 = v4;
    v21 = 1;
    do
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      GlyphRuns = CTLineGetGlyphRuns(line);
      v7 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        v8 = *v24;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(GlyphRuns);
            }

            v10 = *(*(&v23 + 1) + 8 * i);
            GlyphCount = CTRunGetGlyphCount(v10);
            if (GlyphCount - 65537 <= 0xFFFFFFFFFFFEFFFFLL)
            {
              v16 = [MEMORY[0x277D6C290] currentHandler];
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"uint TSWPLineFragment::characterCountOfGlyphAtCharIndex(TSWPCharIndex) const"];
              [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2694, @"bad glyph count: %ld", GlyphCount}];
              goto LABEL_23;
            }

            std::vector<long>::vector[abi:ne200100](buffer, GlyphCount);
            v29.location = 0;
            v29.length = GlyphCount;
            CTRunGetStringIndices(v10, v29, buffer[0]);
            if (!*(this + 23))
            {
              v12 = [MEMORY[0x277D6C290] currentHandler];
              v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"uint TSWPLineFragment::characterCountOfGlyphAtCharIndex(TSWPCharIndex) const"];
              [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2700, @"invalid nil value for '%s'", "_textSource"}];
            }

            v14 = 0;
            v15 = 1;
            do
            {
              if ([*(this + 23) charIndexMappedToStorage:buffer[0][v14]] == v5)
              {
                break;
              }

              v15 = GlyphCount > ++v14;
            }

            while (GlyphCount != v14);
            if (buffer[0])
            {
              buffer[1] = buffer[0];
              operator delete(buffer[0]);
            }

            if (v15)
            {
              return v21;
            }
          }

          v7 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
      v5 = TSWPNextCharFromTextSource(v5, *(this + 23));
      ++v21;
    }

    while (v5 < v19);
  }

  return v21;
}

void sub_26C922DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double TSWPLineFragment::adjustGlyphsForAlignment(uint64_t a1, int a2, double a3)
{
  if ((a2 - 1) <= 1)
  {
    v6 = *(a1 + 192);
    if (*(a1 + 200) == v6 || CTLineGetGlyphCount(*v6) != 1 || (v7 = a3, (*(a1 + 25) & 8) == 0))
    {
      v8 = *(a1 + 192);
      if (*(a1 + 200) == v8)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = CTLineGetTrailingWhitespaceWidth(*v8) + a3 - *(a1 + 216);
      }
    }

    if (a2 == 2)
    {
      v7 = v7 * 0.5;
    }

    v9 = *(a1 + 192);
    v10 = *(a1 + 200) - v9;
    if (v10)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = (v9 + 8);
      do
      {
        *v12 = v7 + *v12;
        v12 += 6;
        --v11;
      }

      while (v11);
    }

    v13 = *(a1 + 224);
    v14 = *(a1 + 232) - v13;
    if (v14)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = (v13 + 8);
      do
      {
        *v16 = v7 + *v16;
        v16 += 6;
        --v15;
      }

      while (v15);
    }

    v17 = *(a1 + 272);
    v18 = *(a1 + 280) - v17;
    if (v18)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * (v18 >> 4);
      v20 = 1;
      do
      {
        *v17 = v7 + *v17;
        v17 += 10;
        v21 = v19 > v20++;
      }

      while (v21);
    }

    v22 = *(a1 + 296);
    v23 = *(a1 + 304) - v22;
    if (v23)
    {
      v24 = 0xCCCCCCCCCCCCCCCDLL * (v23 >> 4);
      v25 = 1;
      do
      {
        *v22 = v7 + *v22;
        v22 += 10;
        v21 = v24 > v25++;
      }

      while (v21);
    }

    v26 = *(a1 + 320);
    v27 = *(a1 + 328) - v26;
    if (v27)
    {
      v28 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 4);
      v29 = 1;
      do
      {
        *v26 = v7 + *v26;
        v26 += 10;
        v21 = v28 > v29++;
      }

      while (v21);
    }

    v30 = *(a1 + 344);
    v31 = *(a1 + 352) - v30;
    if (v31)
    {
      v32 = 0xCCCCCCCCCCCCCCCDLL * (v31 >> 4);
      v33 = 1;
      do
      {
        *v30 = v7 + *v30;
        v30 += 10;
        v21 = v32 > v33++;
      }

      while (v21);
    }

    *(a1 + 216) = v7 + *(a1 + 216);
  }

  v34 = *(a1 + 64);
  if (v34 == 4294967300.0)
  {
    v34 = 0.0;
  }

  result = *(a1 + 96) - (v34 - a3);
  *(a1 + 96) = result;
  *(a1 + 64) = a3;
  return result;
}

BOOL TSWPLineFragment::shareLineRefs(TSWPLineFragment *this, const TSWPLineFragment *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*this != *a2 || *(this + 1) != *(a2 + 1) || *(a2 + 25) == *(a2 + 24))
  {
    return 0;
  }

  result = 0;
  if ((*(a2 + 6) & 4) == 0 && ((*(this + 25) & 0x20) == 0) != (*(a2 + 6) & 0x2000u) >> 13)
  {
    v5.origin.x = *(a2 + 6);
    v5.origin.y = *(a2 + 7);
    v5.size.width = *(a2 + 8);
    v5.size.height = *(a2 + 9);
    result = CGRectEqualToRect(v5, *(this + 48));
    if (result)
    {
      if (this != a2)
      {
        std::vector<TSWPLineRef>::__assign_with_size[abi:ne200100]<TSWPLineRef*,TSWPLineRef*>(this + 192, *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 4));
      }

      *(this + 27) = *(a2 + 27);
      return 1;
    }
  }

  return result;
}

uint64_t TSWPLineFragment::isInsideTateChuYokoLineAtCharIndex(TSWPLineFragment *this, uint64_t a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(this + 32) != *(this + 31))
  {
    v14 = *(this + 23);
    if (!v14)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLineFragment::isInsideTateChuYokoLineAtCharIndex(TSWPCharIndex, CGFloat &, CGFloat &, CGFloat &, CGFloat &, CGFloat &) const"}];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2821, @"invalid nil value for '%s'", "_textSource"}];
      v14 = *(this + 23);
    }

    v17 = [v14 charIndexMappedFromStorage:a2];
    v18 = *(this + 31);
    v19 = *(this + 32) - v18;
    if (v19)
    {
      v20 = 0;
      v21 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v22 = 1;
      while (1)
      {
        v23 = v18 + 48 * v20;
        v24 = *(v23 + 24);
        if (v17 > v24 && v17 < *(v23 + 32) + v24)
        {
          break;
        }

        v20 = v22;
        v34 = v21 > v22++;
        if (!v34)
        {
          return 0;
        }
      }

      v26 = v17 - v24 + CTLineGetStringRange(*v23).location;
      *a3 = CTLineGetOffsetForStringIndex(*v23, v26, 0);
      *a4 = CTLineGetTypographicBounds(*v23, 0, 0, 0);
      CTLineGetGlyphRuns(*v23);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      GlyphRuns = CTLineGetGlyphRuns(*v23);
      v28 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v46;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v46 != v30)
            {
              objc_enumerationMutation(GlyphRuns);
            }

            v32 = *(*(&v45 + 1) + 8 * i);
            StringRange = CTRunGetStringRange(v32);
            v34 = StringRange.location >= v26 || v26 > StringRange.location + StringRange.length;
            if (!v34)
            {
              Attributes = CTRunGetAttributes(v32);
              Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              TSWPFontHeightInfoForFont(Value, &v41);
              v39 = *(&v42 + 1);
              *a5 = v42;
              *a6 = v39;
              *a7 = v43;
              return 1;
            }
          }

          v29 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v29);
      }

      v35 = [MEMORY[0x277D6C290] currentHandler];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLineFragment::isInsideTateChuYokoLineAtCharIndex(TSWPCharIndex, CGFloat &, CGFloat &, CGFloat &, CGFloat &, CGFloat &) const"}];
      [v35 handleFailureInFunction:v36 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2860, @"Could not find the CTRun for the tate chu yoko run."}];
    }
  }

  return 0;
}

TSWPLineFragment *TSWPLineFragment::setHyphenated(TSWPLineFragment *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 6) = *(this + 6) & 0xFFFFFFFD | v2;
  return this;
}

BOOL TSWPLineFragment::isDifferentFromLineFragment(TSWPLineFragment *this, const TSWPLineFragment *a2, uint64_t a3)
{
  if (a2 == this)
  {
    return 0;
  }

  v16.origin.x = *(this + 6);
  v16.origin.y = *(this + 7);
  v16.size.width = *(this + 8);
  v16.size.height = *(this + 9);
  v17.origin.x = *(a2 + 6);
  v17.origin.y = *(a2 + 7);
  v17.size.width = *(a2 + 8);
  v17.size.height = *(a2 + 9);
  if (!CGRectEqualToRect(v16, v17))
  {
    return 1;
  }

  if (!CGRectEqualToRect(*(this + 80), *(a2 + 80)))
  {
    return 1;
  }

  if (*(this + 4) != *(a2 + 4))
  {
    return 1;
  }

  if (*(this + 5) != *(a2 + 5))
  {
    return 1;
  }

  if (*this != *a2 + a3)
  {
    return 1;
  }

  if (*(this + 2) != *(a2 + 2) + a3)
  {
    return 1;
  }

  if (*(this + 1) != *(a2 + 1))
  {
    return 1;
  }

  if (*(this + 6) != *(a2 + 6))
  {
    return 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 25);
  v8 = v6 - v7;
  if (v6 - v7 != *(this + 25) - *(this + 24))
  {
    return 1;
  }

  if (v6 != v7)
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
    v11 = 1;
    while ((operator==(*(a2 + 24) + 48 * v9, *(this + 24) + 48 * v9) & 1) != 0)
    {
      v9 = v11;
      if (v10 <= v11++)
      {
        goto LABEL_15;
      }
    }

    return 1;
  }

LABEL_15:
  v13 = *(this + 22);
  v14 = *(a2 + 22);
  if (!v13)
  {
    return v14 || (*(this + 24) & 1) != 0;
  }

  return !v14 || (TSWPListLabel::isEqual(v13, v14) & 1) == 0;
}

double TSWPLineFragmentCalculateOffsetForNextLine(double *a1, char a2, int a3, double a4)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[1];
  v7 = a1[2];
  v8 = v4 + v5 + fmax(v6, v7);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = v8 + a1[5];
        if (v8 < a4)
        {
          v8 = a4;
        }
      }
    }

    else
    {
      if ((a2 & 0x10) != 0)
      {
        v9 = v4 + v6;
      }

      else if (a4 <= 1.0)
      {
        v9 = v8 * a4;
        if (v9 < v6)
        {
          v9 = a1[1];
        }
      }

      else
      {
        v9 = v8 + (a4 + -1.0) * (v5 + v7 + v4);
      }

      v8 = v9 + a1[5];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v8 = a4;
        break;
      case 3:
        v8 = fmin(v8 + a1[5], a4);
        break;
      case 4:
        v8 = fmax(v8 + a1[5] + a4, 0.0);
        break;
    }
  }

  return v8 + *a1 + a1[6];
}

double TSWPLineFragment::heightForHeightInfo(double *a1, int a2, char a3, double a4)
{
  v4 = a1[14];
  v5 = a1[20];
  if (a2 == 2)
  {
    v9 = v4 + a4 + v5;
  }

  else
  {
    v7 = a1[17];
    v6 = a1[18];
    v8 = a1[16];
    v9 = v5 + v4 + a1[19] + v7 + v6 + fmax(a1[15], v8);
    if (a2 == 1)
    {
      v9 = fmax(v9, a4);
    }

    else if (!a2 && a4 > 1.0 && (a3 & 1) == 0)
    {
      v9 = v9 + (a4 + -1.0) * (v6 + v8 + v7);
    }
  }

  if (v9 <= 0.0)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::heightForHeightInfo(TSWPLineSpacingMode, CGFloat, BOOL) const"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3039, @"bad lineheight"}];
  }

  return v9;
}

BOOL TSWPLineFragment::preventWidowCorrection(TSWPLineFragment *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v10.origin.x = *(this + 6);
  v10.origin.y = *(this + 7);
  v10.size.width = *(this + 8);
  v10.size.height = *(this + 9);
  v7 = round(CGRectGetMinX(v10));
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (v7 != round(CGRectGetMinX(v11)))
  {
    return 1;
  }

  v9 = round(CGRectGetMaxX(*(this + 48)));
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  return v9 != round(CGRectGetMaxX(v12));
}

CGFloat TSWPLineFragment::offsetBy(TSWPLineFragment *this, CGPoint a2)
{
  y = a2.y;
  *(this + 3) = vaddq_f64(a2, *(this + 3));
  *(this + 5) = vaddq_f64(a2, *(this + 5));
  result = a2.y + *(this + 4);
  *(this + 4) = result;
  return result;
}

uint64_t TSWPLineFragment::hintForAttachmentLayout(TSWPLineFragment *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    return 0;
  }

  v1 = *(this + 54);
  if (!v1)
  {
    return 0;
  }

  v2 = [objc_msgSend(*(this + 54) "info")];

  return [v2 hintForLayout:v1];
}

TSWPLineFragment *TSWPLineFragment::setTypesetterPos(TSWPLineFragment *this, double a2, double a3)
{
  *(this + 50) = a2;
  *(this + 51) = a3;
  return this;
}

double TSWPLineFragment::getTypesetterPos(TSWPLineFragment *this, double *a2, double *a3)
{
  *a2 = *(this + 50);
  result = *(this + 51);
  *a3 = result;
  return result;
}

void TSWPLineFragment::setHyphenInfo(TSWPLineFragment *this, CFTypeRef cf, int a3)
{
  v6 = *(this + 49);
  if (!v6)
  {
    operator new();
  }

  if (cf)
  {
    CFRetain(cf);
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    CFRelease(v7);
  }

  *(v6 + 16) = cf;
  *(*(this + 49) + 24) = a3;
}

TSWPLineFragment *TSWPLineFragment::getHyphenInfo(TSWPLineFragment *this, const __CFDictionary **a2, unsigned int *a3)
{
  v5 = this;
  v6 = *(this + 49);
  if (v6 || (v7 = [MEMORY[0x277D6C290] currentHandler], v8 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "void TSWPLineFragment::getHyphenInfo(CFDictionaryRef &, UTF32Char &) const"), this = objc_msgSend(v7, "handleFailureInFunction:file:lineNumber:description:", v8, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3104, @"Typesetter state not initialized"), (v6 = *(v5 + 49)) != 0))
  {
    *a2 = *(v6 + 16);
    LODWORD(v6) = *(*(v5 + 49) + 24);
  }

  else
  {
    *a2 = 0;
  }

  *a3 = v6;
  return this;
}

uint64_t TSWPLineFragment::setOikomiSquish(TSWPLineFragment *this, char a2)
{
  result = *(this + 49);
  if (!result)
  {
    operator new();
  }

  *(result + 28) = a2;
  return result;
}

uint64_t TSWPLineFragment::getOikomiSquish(TSWPLineFragment *this)
{
  v1 = *(this + 49);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 28);
  }

  return v1 & 1;
}

TSWPLineFragment *TSWPLineFragment::clearTypesetterState(TSWPLineFragment *this)
{
  v1 = this;
  v2 = *(this + 49);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    this = MEMORY[0x26D6A9A30](v2, 0x1060C4051B6AA0BLL);
  }

  *(v1 + 49) = 0;
  return this;
}

TSWPLineFragment *TSWPLineFragment::saveLayoutState(TSWPLineFragment *this)
{
  v1 = this;
  *(this + 120) = *(this + 6);
  if (*(this + 24) != *(this + 25))
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    this = [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3148, @"bad starting line fragment state: line vector"}];
  }

  if (*(v1 + 55) != *(v1 + 56))
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    this = [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3149, @"bad starting line fragment state: adornments"}];
  }

  if (*(v1 + 34) != *(v1 + 35))
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    this = [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3150, @"bad starting line fragment state: _underlines positions"}];
  }

  if (*(v1 + 37) != *(v1 + 38))
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    this = [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3151, @"bad starting line fragment state: _strikesthrough positions"}];
  }

  if (*(v1 + 40) != *(v1 + 41))
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    this = [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3152, @"bad starting line fragment state: _textBackgrounds positions"}];
  }

  if (*(v1 + 43) != *(v1 + 44))
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    this = [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3153, @"bad starting line fragment state: _textHighlights positions"}];
  }

  if (*(v1 + 58))
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    this = [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3154, @"expected nil value for '%s'", "_breakLine"}];
  }

  if (*(v1 + 64))
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::saveLayoutState()"];
    return [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3155, @"expected nil value for '%s'", "_paragraphString"}];
  }

  return this;
}

void TSWPLineFragment::restoreLayoutState(TSWPLineFragment *this)
{
  v2 = this + 192;
  v3 = *(this + 24);
  *(this + 6) = *(this + 120) & 0xFFFFFFFD;
  for (i = *(this + 25); i != v3; std::allocator<TSWPLineRef>::destroy[abi:ne200100](v2, i))
  {
    i -= 6;
  }

  *(this + 25) = v3;
  v6 = *(this + 55);
    ;
  }

  *(this + 56) = v6;
  std::vector<TSWPAdornmentLine>::clear[abi:ne200100](this + 34);
  std::vector<TSWPAdornmentLine>::clear[abi:ne200100](this + 37);
  std::vector<TSWPAdornmentLine>::clear[abi:ne200100](this + 40);
  std::vector<TSWPAdornmentLine>::clear[abi:ne200100](this + 43);

  *(this + 64) = 0;
  v7 = *(this + 58);
  if (v7)
  {
    CGColorRelease(*(v7 + 24));

    MEMORY[0x26D6A9A30](v7, 0x10A0C406E8A3FE5);
    *(this + 58) = 0;
  }
}

void std::vector<TSWPAdornmentLine>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    CGColorRelease(*(i - 56));
  }

  a1[1] = v2;
}

void TSWPLineFragment::adjustBreakLine(TSWPLineFragment *this)
{
  v2 = *(this + 58);
  if (v2)
  {
    *(v2 + 8) = (*(this + 17) - *(this + 16)) * 0.5;
  }

  v3 = *(this + 56) - *(this + 55);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0x8F5C28F5C28F5C29 * (v3 >> 3);
    do
    {
      v7 = *(this + 55) + 200 * v4;
      if (*v7 == 2)
      {
        if ((*(v7 + 112) - *(v7 + 104)) >> 4 != (*(v7 + 64) - *(v7 + 56)) >> 1)
        {
          v8 = [MEMORY[0x277D6C290] currentHandler];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::adjustBreakLine()"];
          [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3191, @"invisibles count mismatch"}];
        }

        v10 = *(this + 6);
        if ((v10 & 0x800) != 0)
        {
          v11 = *(v7 + 112);
          if (v11 != *(v7 + 104))
          {
            v12 = 0;
            v13 = *(v11 - 16);
            v14 = &word_280CDBA38;
            while (1)
            {
              v15 = *v14;
              v14 += 20;
              if (v15 == *(*(v7 + 64) - 2))
              {
                break;
              }

              if (++v12 == 10)
              {
                v16 = [MEMORY[0x277D6C290] currentHandler];
                v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::adjustBreakLine()"];
                [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 3207, @"Failed to find glyph index"}];
                v10 = *(this + 6);
                LODWORD(v12) = 10;
                break;
              }
            }

            v18 = v13 + *(*(this + 24) + 8);
            v19 = *(this + 6);
            v21 = *(this + 8);
            if ((v10 & 0x1000) != 0)
            {
              v26 = fmin(v18, 0.0);
              v25 = v21 - v26;
              v19 = v19 + v26;
            }

            else
            {
              if (v12 <= 9)
              {
                v23 = v12;
              }

              else
              {
                v23 = 3;
              }

              v24 = v18 + *(&gInvisibles + 5 * v23 + 1);
              if (v21 >= v24)
              {
                v25 = *(this + 8);
              }

              else
              {
                v25 = v24;
              }
            }

            v20 = *(this + 7);
            v22 = *(this + 9);
            *(this + 80) = CGRectUnion(*(this + 80), *&v19);
          }
        }
      }

      v4 = ++v5;
    }

    while (v6 > v5);
  }
}

uint64_t TSWPLineFragment::appendAdornment(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 528);
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      *(v3 + 528) = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

uint64_t TSWPLineFragment::defaultMarkupColor(TSWPLineFragment *this)
{
  if (TSWPLineFragment::defaultMarkupColor(void)const::onceChangeTrackingColor != -1)
  {
    TSWPLineFragment::defaultMarkupColor();
  }

  return TSWPLineFragment::defaultMarkupColor(void)const::sDefaultChangeTrackingColor;
}

id ___ZNK16TSWPLineFragment18defaultMarkupColorEv_block_invoke()
{
  result = [MEMORY[0x277D6C2A8] colorWithWhite:0.156800002 alpha:1.0];
  TSWPLineFragment::defaultMarkupColor(void)const::sDefaultChangeTrackingColor = result;
  return result;
}

uint64_t TSWPLineFragment::changeAdornmentMarkupColor(TSWPLineFragment *this)
{
  result = *(this + 59);
  if (!result)
  {
    if (TSWPLineFragment::defaultMarkupColor(void)const::onceChangeTrackingColor != -1)
    {
      TSWPLineFragment::defaultMarkupColor();
    }

    return TSWPLineFragment::defaultMarkupColor(void)const::sDefaultChangeTrackingColor;
  }

  return result;
}

TSWPLineFragment *TSWPLineFragment::setChangeAdornmentMarkupColor(TSWPLineFragment *this, TSUColor *a2)
{
  v2 = *(this + 59);
  if (v2 != a2)
  {
    v4 = this;

    this = a2;
    *(v4 + 59) = this;
  }

  return this;
}

CGColor *TSWPLineFragment::setSingleColor(TSWPLineFragment *this, CGColor *a2)
{
  result = *(this + 67);
  if (result != a2)
  {
    CGColorRelease(result);
    result = CGColorRetain(a2);
    *(this + 67) = result;
  }

  return result;
}

void TSWPLineFragment::topOfCap(TSWPLineFragment *this)
{
  if ((*(this + 27) & 2) != 0)
  {
    v1.origin.x = *(this + 6);
    v1.origin.y = *(this + 7);
    v1.size.width = *(this + 8);
    v1.size.height = *(this + 9);
    fmin(*(this + 4) + *(this + 5) - *(this + 21), CGRectGetMinY(v1) + *(this + 68));
  }
}

void TSWPLineRef::~TSWPLineRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = CFEqual(*a1, *a2);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

void std::vector<TSWPLineRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
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
        v4 -= 6;
        std::allocator<TSWPLineRef>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TSWPAdornmentLine>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TSWPUIAttachmentData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TSWPUIAttachmentData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TSWPUIAttachmentData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

void std::vector<TSWPAdornments>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        TSWPAdornments::~TSWPAdornments(v4 - 25);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26C924634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26C9246AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFWritingDirectionRun>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFCharIndexData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,false>(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = &a2[-8];
  v11 = &a2[-12];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 6;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if ((*a3)(a2 - 4, v12))
        {
          goto LABEL_77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v127 = (*a3)(v12 + 4, v12);
      v128 = (*a3)(v12 + 8, v12 + 4);
      if (v127)
      {
        if (v128)
        {
          v247 = v12[2];
          v274 = v12[3];
          v193 = *v12;
          v220 = v12[1];
          v129 = v12[9];
          *v12 = v12[8];
          v12[1] = v129;
          v130 = v12[11];
          v12[2] = v12[10];
          v12[3] = v130;
          v12[10] = v247;
          v12[11] = v274;
          v12[8] = v193;
          v12[9] = v220;
        }

        else
        {
          v249 = v12[2];
          v276 = v12[3];
          v195 = *v12;
          v222 = v12[1];
          v146 = v12[5];
          *v12 = v12[4];
          v12[1] = v146;
          v147 = v12[7];
          v12[2] = v12[6];
          v12[3] = v147;
          v12[6] = v249;
          v12[7] = v276;
          v12[4] = v195;
          v12[5] = v222;
          if ((*a3)(v12 + 8, v12 + 4))
          {
            v149 = v12[6];
            v148 = v12[7];
            v151 = v12[4];
            v150 = v12[5];
            v152 = v12[9];
            v12[4] = v12[8];
            v12[5] = v152;
            v153 = v12[11];
            v12[6] = v12[10];
            v12[7] = v153;
            v12[8] = v151;
            v12[9] = v150;
            v12[10] = v149;
            v12[11] = v148;
          }
        }
      }

      else if (v128)
      {
        v139 = v12[6];
        v138 = v12[7];
        v141 = v12[4];
        v140 = v12[5];
        v142 = v12[9];
        v12[4] = v12[8];
        v12[5] = v142;
        v143 = v12[11];
        v12[6] = v12[10];
        v12[7] = v143;
        v12[8] = v141;
        v12[9] = v140;
        v12[10] = v139;
        v12[11] = v138;
        if ((*a3)(v12 + 4, v12))
        {
          v248 = v12[2];
          v275 = v12[3];
          v194 = *v12;
          v221 = v12[1];
          v144 = v12[5];
          *v12 = v12[4];
          v12[1] = v144;
          v145 = v12[7];
          v12[2] = v12[6];
          v12[3] = v145;
          v12[6] = v248;
          v12[7] = v275;
          v12[4] = v194;
          v12[5] = v221;
        }
      }

      if (!(*a3)(v9, v12 + 8))
      {
        return result;
      }

      v155 = v12[10];
      v154 = v12[11];
      v157 = v12[8];
      v156 = v12[9];
      v158 = v9[3];
      v160 = *v9;
      v159 = v9[1];
      v12[10] = v9[2];
      v12[11] = v158;
      v12[8] = v160;
      v12[9] = v159;
      *v9 = v157;
      v9[1] = v156;
      v9[2] = v155;
      v9[3] = v154;
      if (!(*a3)(v12 + 8, v12 + 4))
      {
        return result;
      }

      v162 = v12[6];
      v161 = v12[7];
      v164 = v12[4];
      v163 = v12[5];
      v165 = v12[9];
      v12[4] = v12[8];
      v12[5] = v165;
      v166 = v12[11];
      v12[6] = v12[10];
      v12[7] = v166;
      v12[8] = v164;
      v12[9] = v163;
      v12[10] = v162;
      v12[11] = v161;
LABEL_102:
      if ((*a3)(v12 + 4, v12))
      {
        v250 = v12[2];
        v277 = v12[3];
        v196 = *v12;
        v223 = v12[1];
        v167 = v12[5];
        *v12 = v12[4];
        v12[1] = v167;
        v168 = v12[7];
        v12[2] = v12[6];
        v12[3] = v168;
        result = v196;
        v12[6] = v250;
        v12[7] = v277;
        v12[4] = v196;
        v12[5] = v223;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,0>(v12, v12 + 4, v12 + 8, v12 + 12, a2 - 4, a3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(v12, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,TSWPLFCharIndexData*>(v12, a2, a2, a3, result);
      }

      return result;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = *a3;
    if (v15 >= 0x81)
    {
      v18 = v17(&v12[4 * (v15 >> 1)], v12);
      v19 = (*a3)(a2 - 4, v16);
      if (v18)
      {
        if (v19)
        {
          v224 = a1[2];
          v251 = a1[3];
          v170 = *a1;
          v197 = a1[1];
          v20 = *v9;
          v21 = a2[-3];
          v22 = a2[-1];
          a1[2] = a2[-2];
          a1[3] = v22;
          *a1 = v20;
          a1[1] = v21;
          goto LABEL_27;
        }

        v230 = a1[2];
        v257 = a1[3];
        v176 = *a1;
        v203 = a1[1];
        v40 = *v16;
        v41 = v16[1];
        v42 = v16[3];
        a1[2] = v16[2];
        a1[3] = v42;
        *a1 = v40;
        a1[1] = v41;
        v16[2] = v230;
        v16[3] = v257;
        *v16 = v176;
        v16[1] = v203;
        if ((*a3)(a2 - 4, v16))
        {
          v224 = v16[2];
          v251 = v16[3];
          v170 = *v16;
          v197 = v16[1];
          v43 = *v9;
          v44 = a2[-3];
          v45 = a2[-1];
          v16[2] = a2[-2];
          v16[3] = v45;
          *v16 = v43;
          v16[1] = v44;
LABEL_27:
          *v9 = v170;
          a2[-3] = v197;
          a2[-2] = v224;
          a2[-1] = v251;
        }
      }

      else if (v19)
      {
        v226 = v16[2];
        v253 = v16[3];
        v172 = *v16;
        v199 = v16[1];
        v28 = *v9;
        v29 = a2[-3];
        v30 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v30;
        *v16 = v28;
        v16[1] = v29;
        *v9 = v172;
        a2[-3] = v199;
        a2[-2] = v226;
        a2[-1] = v253;
        if ((*a3)(v16, a1))
        {
          v227 = a1[2];
          v254 = a1[3];
          v173 = *a1;
          v200 = a1[1];
          v31 = *v16;
          v32 = v16[1];
          v33 = v16[3];
          a1[2] = v16[2];
          a1[3] = v33;
          *a1 = v31;
          a1[1] = v32;
          v16[2] = v227;
          v16[3] = v254;
          *v16 = v173;
          v16[1] = v200;
        }
      }

      v46 = &v16[-4];
      v47 = (*a3)(v16 - 4, a1 + 4);
      v48 = (*a3)(a2 - 8, v16 - 4);
      if (v47)
      {
        if (v48)
        {
          v50 = a1[6];
          v49 = a1[7];
          v52 = a1[4];
          v51 = a1[5];
          v53 = a2[-5];
          v55 = *v10;
          v54 = a2[-7];
          a1[6] = a2[-6];
          a1[7] = v53;
          a1[4] = v55;
          a1[5] = v54;
          *v10 = v52;
          a2[-7] = v51;
          a2[-6] = v50;
          goto LABEL_39;
        }

        v180 = a1[4];
        v207 = a1[5];
        v234 = a1[6];
        v261 = a1[7];
        v69 = v16[-2];
        v68 = v16[-1];
        v70 = v16[-3];
        a1[4] = *v46;
        a1[5] = v70;
        a1[6] = v69;
        a1[7] = v68;
        v16[-2] = v234;
        v16[-1] = v261;
        *v46 = v180;
        v16[-3] = v207;
        if ((*a3)(a2 - 8, v16 - 4))
        {
          v235 = v16[-2];
          v262 = v16[-1];
          v181 = *v46;
          v208 = v16[-3];
          v71 = *v10;
          v72 = a2[-7];
          v73 = a2[-5];
          v16[-2] = a2[-6];
          v16[-1] = v73;
          *v46 = v71;
          v16[-3] = v72;
          *v10 = v181;
          a2[-7] = v208;
          a2[-6] = v235;
          v49 = v262;
LABEL_39:
          a2[-5] = v49;
        }
      }

      else if (v48)
      {
        v231 = v16[-2];
        v258 = v16[-1];
        v177 = *v46;
        v204 = v16[-3];
        v56 = *v10;
        v57 = a2[-7];
        v58 = a2[-5];
        v16[-2] = a2[-6];
        v16[-1] = v58;
        *v46 = v56;
        v16[-3] = v57;
        *v10 = v177;
        a2[-7] = v204;
        a2[-6] = v231;
        a2[-5] = v258;
        if ((*a3)(v16 - 4, a1 + 4))
        {
          v178 = a1[4];
          v205 = a1[5];
          v232 = a1[6];
          v259 = a1[7];
          v60 = v16[-2];
          v59 = v16[-1];
          v61 = v16[-3];
          a1[4] = *v46;
          a1[5] = v61;
          a1[6] = v60;
          a1[7] = v59;
          v16[-2] = v232;
          v16[-1] = v259;
          *v46 = v178;
          v16[-3] = v205;
        }
      }

      v74 = (*a3)(v16 + 4, a1 + 8);
      v75 = (*a3)(a2 - 12, v16 + 4);
      if (v74)
      {
        if (v75)
        {
          v77 = a1[10];
          v76 = a1[11];
          v79 = a1[8];
          v78 = a1[9];
          v80 = a2[-9];
          v82 = *v11;
          v81 = a2[-11];
          a1[10] = a2[-10];
          a1[11] = v80;
          a1[8] = v82;
          a1[9] = v81;
          *v11 = v79;
          a2[-11] = v78;
          a2[-10] = v77;
          goto LABEL_48;
        }

        v184 = a1[8];
        v211 = a1[9];
        v238 = a1[10];
        v265 = a1[11];
        v90 = v16[6];
        v89 = v16[7];
        v91 = v16[5];
        a1[8] = v16[4];
        a1[9] = v91;
        a1[10] = v90;
        a1[11] = v89;
        v16[6] = v238;
        v16[7] = v265;
        v16[4] = v184;
        v16[5] = v211;
        if ((*a3)(a2 - 12, v16 + 4))
        {
          v239 = v16[6];
          v266 = v16[7];
          v185 = v16[4];
          v212 = v16[5];
          v92 = *v11;
          v93 = a2[-11];
          v94 = a2[-9];
          v16[6] = a2[-10];
          v16[7] = v94;
          v16[4] = v92;
          v16[5] = v93;
          *v11 = v185;
          a2[-11] = v212;
          a2[-10] = v239;
          v76 = v266;
LABEL_48:
          a2[-9] = v76;
        }
      }

      else if (v75)
      {
        v236 = v16[6];
        v263 = v16[7];
        v182 = v16[4];
        v209 = v16[5];
        v83 = *v11;
        v84 = a2[-11];
        v85 = a2[-9];
        v16[6] = a2[-10];
        v16[7] = v85;
        v16[4] = v83;
        v16[5] = v84;
        *v11 = v182;
        a2[-11] = v209;
        a2[-10] = v236;
        a2[-9] = v263;
        if ((*a3)(v16 + 4, a1 + 8))
        {
          v183 = a1[8];
          v210 = a1[9];
          v237 = a1[10];
          v264 = a1[11];
          v87 = v16[6];
          v86 = v16[7];
          v88 = v16[5];
          a1[8] = v16[4];
          a1[9] = v88;
          a1[10] = v87;
          a1[11] = v86;
          v16[6] = v237;
          v16[7] = v264;
          v16[4] = v183;
          v16[5] = v210;
        }
      }

      v95 = (*a3)(v16, v16 - 4);
      v96 = (*a3)(v16 + 4, v16);
      if (v95)
      {
        if (v96)
        {
          v240 = v16[-2];
          v267 = v16[-1];
          v186 = *v46;
          v213 = v16[-3];
          v97 = v16[5];
          *v46 = v16[4];
          v16[-3] = v97;
          v98 = v16[7];
          v16[-2] = v16[6];
          v16[-1] = v98;
          goto LABEL_57;
        }

        v243 = v16[-2];
        v270 = v16[-1];
        v189 = *v46;
        v216 = v16[-3];
        v103 = v16[1];
        *v46 = *v16;
        v16[-3] = v103;
        v104 = v16[3];
        v16[-2] = v16[2];
        v16[-1] = v104;
        v16[2] = v243;
        v16[3] = v270;
        *v16 = v189;
        v16[1] = v216;
        if ((*a3)(v16 + 4, v16))
        {
          v240 = v16[2];
          v267 = v16[3];
          v186 = *v16;
          v213 = v16[1];
          v105 = v16[5];
          *v16 = v16[4];
          v16[1] = v105;
          v106 = v16[7];
          v16[2] = v16[6];
          v16[3] = v106;
LABEL_57:
          v16[6] = v240;
          v16[7] = v267;
          v16[4] = v186;
          v16[5] = v213;
        }
      }

      else if (v96)
      {
        v241 = v16[2];
        v268 = v16[3];
        v187 = *v16;
        v214 = v16[1];
        v99 = v16[5];
        *v16 = v16[4];
        v16[1] = v99;
        v100 = v16[7];
        v16[2] = v16[6];
        v16[3] = v100;
        v16[6] = v241;
        v16[7] = v268;
        v16[4] = v187;
        v16[5] = v214;
        if ((*a3)(v16, v16 - 4))
        {
          v242 = v16[-2];
          v269 = v16[-1];
          v188 = *v46;
          v215 = v16[-3];
          v101 = v16[1];
          *v46 = *v16;
          v16[-3] = v101;
          v102 = v16[3];
          v16[-2] = v16[2];
          v16[-1] = v102;
          v16[2] = v242;
          v16[3] = v269;
          *v16 = v188;
          v16[1] = v215;
        }
      }

      v244 = a1[2];
      v271 = a1[3];
      v190 = *a1;
      v217 = a1[1];
      v107 = *v16;
      v108 = v16[1];
      v109 = v16[3];
      a1[2] = v16[2];
      a1[3] = v109;
      *a1 = v107;
      a1[1] = v108;
      v16[2] = v244;
      v16[3] = v271;
      *v16 = v190;
      v16[1] = v217;
      goto LABEL_59;
    }

    v23 = v17(v12, &v12[4 * (v15 >> 1)]);
    v24 = (*a3)(a2 - 4, a1);
    if (v23)
    {
      if (v24)
      {
        v225 = v16[2];
        v252 = v16[3];
        v171 = *v16;
        v198 = v16[1];
        v25 = *v9;
        v26 = a2[-3];
        v27 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v27;
        *v16 = v25;
        v16[1] = v26;
LABEL_36:
        *v9 = v171;
        a2[-3] = v198;
        a2[-2] = v225;
        a2[-1] = v252;
        goto LABEL_59;
      }

      v233 = v16[2];
      v260 = v16[3];
      v179 = *v16;
      v206 = v16[1];
      v62 = *a1;
      v63 = a1[1];
      v64 = a1[3];
      v16[2] = a1[2];
      v16[3] = v64;
      *v16 = v62;
      v16[1] = v63;
      a1[2] = v233;
      a1[3] = v260;
      *a1 = v179;
      a1[1] = v206;
      if ((*a3)(a2 - 4, a1))
      {
        v225 = a1[2];
        v252 = a1[3];
        v171 = *a1;
        v198 = a1[1];
        v65 = *v9;
        v66 = a2[-3];
        v67 = a2[-1];
        a1[2] = a2[-2];
        a1[3] = v67;
        *a1 = v65;
        a1[1] = v66;
        goto LABEL_36;
      }
    }

    else if (v24)
    {
      v228 = a1[2];
      v255 = a1[3];
      v174 = *a1;
      v201 = a1[1];
      v34 = *v9;
      v35 = a2[-3];
      v36 = a2[-1];
      a1[2] = a2[-2];
      a1[3] = v36;
      *a1 = v34;
      a1[1] = v35;
      *v9 = v174;
      a2[-3] = v201;
      a2[-2] = v228;
      a2[-1] = v255;
      if ((*a3)(a1, v16))
      {
        v229 = v16[2];
        v256 = v16[3];
        v175 = *v16;
        v202 = v16[1];
        v37 = *a1;
        v38 = a1[1];
        v39 = a1[3];
        v16[2] = a1[2];
        v16[3] = v39;
        *v16 = v37;
        v16[1] = v38;
        a1[2] = v229;
        a1[3] = v256;
        *a1 = v175;
        a1[1] = v202;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 4, a1) & 1) == 0)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TSWPLFCharIndexData *,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v110 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TSWPLFCharIndexData *,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&)>(a1, a2, a3);
    if ((v111 & 1) == 0)
    {
      goto LABEL_64;
    }

    v112 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(a1, v110, a3);
    v12 = &v110[4];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(v110 + 4, a2, a3))
    {
      a4 = -v14;
      a2 = v110;
      if (v112)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v112)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,false>(a1, v110, a3, -v14, a5 & 1);
      v12 = &v110[4];
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v113 = (*a3)(v12 + 4, v12);
  v114 = (*a3)(v9, v12 + 4);
  if ((v113 & 1) == 0)
  {
    if (!v114)
    {
      return result;
    }

    v132 = v12[6];
    v131 = v12[7];
    v134 = v12[4];
    v133 = v12[5];
    v135 = v9[3];
    v137 = *v9;
    v136 = v9[1];
    v12[6] = v9[2];
    v12[7] = v135;
    v12[4] = v137;
    v12[5] = v136;
    *v9 = v134;
    v9[1] = v133;
    v9[2] = v132;
    v9[3] = v131;
    goto LABEL_102;
  }

  if (v114)
  {
LABEL_77:
    v246 = v12[2];
    v273 = v12[3];
    v192 = *v12;
    v219 = v12[1];
    v124 = *v9;
    v125 = v9[1];
    v126 = v9[3];
    v12[2] = v9[2];
    v12[3] = v126;
    *v12 = v124;
    v12[1] = v125;
    *v9 = v192;
    v9[1] = v219;
    v9[2] = v246;
    result = v273;
    v9[3] = v273;
    return result;
  }

  v245 = v12[2];
  v272 = v12[3];
  v191 = *v12;
  v218 = v12[1];
  v115 = v12[5];
  *v12 = v12[4];
  v12[1] = v115;
  v116 = v12[7];
  v12[2] = v12[6];
  v12[3] = v116;
  v12[6] = v245;
  v12[7] = v272;
  v12[4] = v191;
  v12[5] = v218;
  if ((*a3)(v9, v12 + 4))
  {
    v117 = v12[6];
    result = v12[7];
    v119 = v12[4];
    v118 = v12[5];
    v120 = v9[3];
    v122 = *v9;
    v121 = v9[1];
    v12[6] = v9[2];
    v12[7] = v120;
    v12[4] = v122;
    v12[5] = v121;
    *v9 = v119;
    v9[1] = v118;
    v9[2] = v117;
    v9[3] = result;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = a1[2];
      v14 = a1[3];
      v17 = *a1;
      v16 = a1[1];
      v18 = a3[3];
      v20 = *a3;
      v19 = a3[1];
      a1[2] = a3[2];
      a1[3] = v18;
      *a1 = v20;
      a1[1] = v19;
LABEL_9:
      *a3 = v17;
      a3[1] = v16;
      a3[2] = v15;
      a3[3] = v14;
      goto LABEL_10;
    }

    v36 = a1[2];
    v35 = a1[3];
    v38 = *a1;
    v37 = a1[1];
    v39 = a2[3];
    v41 = *a2;
    v40 = a2[1];
    a1[2] = a2[2];
    a1[3] = v39;
    *a1 = v41;
    a1[1] = v40;
    *a2 = v38;
    a2[1] = v37;
    a2[2] = v36;
    a2[3] = v35;
    if ((*a6)(a3, a2))
    {
      v15 = a2[2];
      v14 = a2[3];
      v17 = *a2;
      v16 = a2[1];
      v42 = a3[3];
      v44 = *a3;
      v43 = a3[1];
      a2[2] = a3[2];
      a2[3] = v42;
      *a2 = v44;
      a2[1] = v43;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v22 = a2[2];
    v21 = a2[3];
    v24 = *a2;
    v23 = a2[1];
    v25 = a3[3];
    v27 = *a3;
    v26 = a3[1];
    a2[2] = a3[2];
    a2[3] = v25;
    *a2 = v27;
    a2[1] = v26;
    *a3 = v24;
    a3[1] = v23;
    a3[2] = v22;
    a3[3] = v21;
    if ((*a6)(a2, a1))
    {
      v29 = a1[2];
      v28 = a1[3];
      v31 = *a1;
      v30 = a1[1];
      v32 = a2[3];
      v34 = *a2;
      v33 = a2[1];
      a1[2] = a2[2];
      a1[3] = v32;
      *a1 = v34;
      a1[1] = v33;
      *a2 = v31;
      a2[1] = v30;
      a2[2] = v29;
      a2[3] = v28;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v46 = a3[2];
    v45 = a3[3];
    v48 = *a3;
    v47 = a3[1];
    v49 = a4[3];
    v51 = *a4;
    v50 = a4[1];
    a3[2] = a4[2];
    a3[3] = v49;
    *a3 = v51;
    a3[1] = v50;
    *a4 = v48;
    a4[1] = v47;
    a4[2] = v46;
    a4[3] = v45;
    if ((*a6)(a3, a2))
    {
      v53 = a2[2];
      v52 = a2[3];
      v55 = *a2;
      v54 = a2[1];
      v56 = a3[3];
      v58 = *a3;
      v57 = a3[1];
      a2[2] = a3[2];
      a2[3] = v56;
      *a2 = v58;
      a2[1] = v57;
      *a3 = v55;
      a3[1] = v54;
      a3[2] = v53;
      a3[3] = v52;
      if ((*a6)(a2, a1))
      {
        v60 = a1[2];
        v59 = a1[3];
        v62 = *a1;
        v61 = a1[1];
        v63 = a2[3];
        v65 = *a2;
        v64 = a2[1];
        a1[2] = a2[2];
        a1[3] = v63;
        *a1 = v65;
        a1[1] = v64;
        *a2 = v62;
        a2[1] = v61;
        a2[2] = v60;
        a2[3] = v59;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v68 = a4[2];
    v67 = a4[3];
    v70 = *a4;
    v69 = a4[1];
    v71 = a5[3];
    v73 = *a5;
    v72 = a5[1];
    a4[2] = a5[2];
    a4[3] = v71;
    *a4 = v73;
    a4[1] = v72;
    *a5 = v70;
    a5[1] = v69;
    a5[2] = v68;
    a5[3] = v67;
    if ((*a6)(a4, a3))
    {
      v75 = a3[2];
      v74 = a3[3];
      v77 = *a3;
      v76 = a3[1];
      v78 = a4[3];
      v80 = *a4;
      v79 = a4[1];
      a3[2] = a4[2];
      a3[3] = v78;
      *a3 = v80;
      a3[1] = v79;
      *a4 = v77;
      a4[1] = v76;
      a4[2] = v75;
      a4[3] = v74;
      if ((*a6)(a3, a2))
      {
        v82 = a2[2];
        v81 = a2[3];
        v84 = *a2;
        v83 = a2[1];
        v85 = a3[3];
        v87 = *a3;
        v86 = a3[1];
        a2[2] = a3[2];
        a2[3] = v85;
        *a2 = v87;
        a2[1] = v86;
        *a3 = v84;
        a3[1] = v83;
        a3[2] = v82;
        a3[3] = v81;
        if ((*a6)(a2, a1))
        {
          v88 = a1[2];
          result = a1[3];
          v90 = *a1;
          v89 = a1[1];
          v91 = a2[3];
          v93 = *a2;
          v92 = a2[1];
          a1[2] = a2[2];
          a1[3] = v91;
          *a1 = v93;
          a1[1] = v92;
          *a2 = v90;
          a2[1] = v89;
          a2[2] = v88;
          a2[3] = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v25 = v3;
    v26 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v12 = v10[1];
          v21 = *v10;
          v22 = v12;
          v13 = v10[3];
          v23 = v10[2];
          v24 = v13;
          v14 = v9;
          while (1)
          {
            v15 = (v6 + v14);
            v16 = *(v6 + v14 + 16);
            v15[4] = *(v6 + v14);
            v15[5] = v16;
            v17 = *(v6 + v14 + 48);
            v15[6] = *(v6 + v14 + 32);
            v15[7] = v17;
            if (!v14)
            {
              break;
            }

            v14 -= 64;
            result = (*a3)(&v21, v6 + v14);
            if ((result & 1) == 0)
            {
              v18 = (v6 + v14 + 64);
              goto LABEL_10;
            }
          }

          v18 = v6;
LABEL_10:
          v19 = v22;
          *v18 = v21;
          v18[1] = v19;
          v20 = v24;
          v18[2] = v23;
          v18[3] = v20;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (result != a2)
  {
    v22 = v3;
    v23 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = (result - 64);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v11 = v6[1];
          v18 = *v6;
          v19 = v11;
          v12 = v6[3];
          v20 = v6[2];
          v21 = v12;
          v13 = v9;
          do
          {
            v14 = v13[5];
            v13[8] = v13[4];
            v13[9] = v14;
            v15 = v13[7];
            v13[10] = v13[6];
            v13[11] = v15;
            result = (*a3)(&v18, v13);
            v13 -= 4;
          }

          while ((result & 1) != 0);
          v16 = v19;
          v13[8] = v18;
          v13[9] = v16;
          v17 = v21;
          v13[10] = v20;
          v13[11] = v17;
        }

        v7 = v6 + 4;
        v9 += 4;
      }

      while (v6 + 4 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TSWPLFCharIndexData *,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  if ((*a3)(&v28, a2 - 4))
  {
    v8 = a1;
    do
    {
      v8 += 4;
    }

    while (((*a3)(&v28, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 4;
    do
    {
      v8 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v10 = (*a3)(&v28, v9);
      v9 = v8 + 4;
    }

    while (!v10);
  }

  if (v8 < v4)
  {
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = v8[3];
    v34 = v8[2];
    v35 = v13;
    v32 = v11;
    v33 = v12;
    v14 = *v4;
    v15 = v4[1];
    v16 = v4[3];
    v8[2] = v4[2];
    v8[3] = v16;
    *v8 = v14;
    v8[1] = v15;
    v17 = v32;
    v18 = v33;
    v19 = v35;
    v4[2] = v34;
    v4[3] = v19;
    *v4 = v17;
    v4[1] = v18;
    do
    {
      v8 += 4;
    }

    while (!(*a3)(&v28, v8));
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  v20 = v8 - 4;
  if (v8 - 4 != a1)
  {
    v21 = *v20;
    v22 = *(v8 - 3);
    v23 = *(v8 - 1);
    a1[2] = *(v8 - 2);
    a1[3] = v23;
    *a1 = v21;
    a1[1] = v22;
  }

  v24 = v28;
  v25 = v29;
  v26 = v31;
  *(v8 - 2) = v30;
  *(v8 - 1) = v26;
  *v20 = v24;
  *(v8 - 3) = v25;
  return v8;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TSWPLFCharIndexData *,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  do
  {
    v6 += 4;
  }

  while (((*a3)(&a1[v6], &v27) & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 4];
  if (v6 == 4)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 4;
    }

    while (((*a3)(a2, &v27) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 4;
    }

    while (!(*a3)(a2, &v27));
  }

  if (v9 < a2)
  {
    v11 = &a1[v6];
    v12 = a2;
    do
    {
      v14 = v11[1];
      v31 = *v11;
      v13 = v31;
      v32 = v14;
      v16 = v11[3];
      v33 = v11[2];
      v15 = v33;
      v34 = v16;
      v18 = v12[2];
      v17 = v12[3];
      v19 = v12[1];
      *v11 = *v12;
      v11[1] = v19;
      v11[2] = v18;
      v11[3] = v17;
      v12[2] = v15;
      v12[3] = v16;
      *v12 = v13;
      v12[1] = v14;
      do
      {
        v11 += 4;
      }

      while (((*a3)(v11, &v27) & 1) != 0);
      do
      {
        v12 -= 4;
      }

      while (!(*a3)(v12, &v27));
    }

    while (v11 < v12);
    v10 = v11 - 4;
  }

  if (v10 != a1)
  {
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[3];
    a1[2] = v10[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
  }

  v23 = v27;
  v24 = v28;
  v25 = v30;
  v10[2] = v29;
  v10[3] = v25;
  *v10 = v23;
  v10[1] = v24;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2 - 4;
      v17 = (*a3)(a1 + 4, a1);
      v18 = (*a3)(v16, a1 + 4);
      if (v17)
      {
        if (v18)
        {
          v20 = a1[2];
          v19 = a1[3];
          v22 = *a1;
          v21 = a1[1];
          v23 = v16[3];
          v25 = *v16;
          v24 = v16[1];
          a1[2] = v16[2];
          a1[3] = v23;
          *a1 = v25;
          a1[1] = v24;
        }

        else
        {
          v76 = a1[2];
          v75 = a1[3];
          v78 = *a1;
          v77 = a1[1];
          v79 = a1[5];
          *a1 = a1[4];
          a1[1] = v79;
          v80 = a1[7];
          a1[2] = a1[6];
          a1[3] = v80;
          a1[4] = v78;
          a1[5] = v77;
          a1[6] = v76;
          a1[7] = v75;
          if (!(*a3)(v16, a1 + 4))
          {
            return 1;
          }

          v20 = a1[6];
          v19 = a1[7];
          v22 = a1[4];
          v21 = a1[5];
          v81 = v16[3];
          v83 = *v16;
          v82 = v16[1];
          a1[6] = v16[2];
          a1[7] = v81;
          a1[4] = v83;
          a1[5] = v82;
        }

        *v16 = v22;
        v16[1] = v21;
        result = 1;
        v16[2] = v20;
        v16[3] = v19;
        return result;
      }

      if (!v18)
      {
        return 1;
      }

      v45 = a1[6];
      v44 = a1[7];
      v47 = a1[4];
      v46 = a1[5];
      v48 = v16[3];
      v50 = *v16;
      v49 = v16[1];
      a1[6] = v16[2];
      a1[7] = v48;
      a1[4] = v50;
      a1[5] = v49;
      *v16 = v47;
      v16[1] = v46;
      v16[2] = v45;
      v16[3] = v44;
LABEL_50:
      if ((*a3)(a1 + 4, a1))
      {
        v126 = a1[2];
        v125 = a1[3];
        v128 = *a1;
        v127 = a1[1];
        v129 = a1[5];
        *a1 = a1[4];
        a1[1] = v129;
        v130 = a1[7];
        a1[2] = a1[6];
        a1[3] = v130;
        a1[4] = v128;
        a1[5] = v127;
        a1[6] = v126;
        a1[7] = v125;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4, a3);
      return 1;
    }

    v35 = a2 - 4;
    v36 = (*a3)(a1 + 4, a1);
    v37 = (*a3)(a1 + 8, a1 + 4);
    if ((v36 & 1) == 0)
    {
      if (v37)
      {
        v64 = a1[6];
        v63 = a1[7];
        v66 = a1[4];
        v65 = a1[5];
        v67 = a1[9];
        a1[4] = a1[8];
        a1[5] = v67;
        v68 = a1[11];
        a1[6] = a1[10];
        a1[7] = v68;
        a1[8] = v66;
        a1[9] = v65;
        a1[10] = v64;
        a1[11] = v63;
        if ((*a3)(a1 + 4, a1))
        {
          v70 = a1[2];
          v69 = a1[3];
          v72 = *a1;
          v71 = a1[1];
          v73 = a1[5];
          *a1 = a1[4];
          a1[1] = v73;
          v74 = a1[7];
          a1[2] = a1[6];
          a1[3] = v74;
          a1[4] = v72;
          a1[5] = v71;
          a1[6] = v70;
          a1[7] = v69;
        }
      }

      goto LABEL_47;
    }

    if (v37)
    {
      v39 = a1[2];
      v38 = a1[3];
      v41 = *a1;
      v40 = a1[1];
      v42 = a1[9];
      *a1 = a1[8];
      a1[1] = v42;
      v43 = a1[11];
      a1[2] = a1[10];
      a1[3] = v43;
    }

    else
    {
      v105 = a1[2];
      v104 = a1[3];
      v107 = *a1;
      v106 = a1[1];
      v108 = a1[5];
      *a1 = a1[4];
      a1[1] = v108;
      v109 = a1[7];
      a1[2] = a1[6];
      a1[3] = v109;
      a1[4] = v107;
      a1[5] = v106;
      a1[6] = v105;
      a1[7] = v104;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_47;
      }

      v39 = a1[6];
      v38 = a1[7];
      v41 = a1[4];
      v40 = a1[5];
      v110 = a1[9];
      a1[4] = a1[8];
      a1[5] = v110;
      v111 = a1[11];
      a1[6] = a1[10];
      a1[7] = v111;
    }

    a1[8] = v41;
    a1[9] = v40;
    a1[10] = v39;
    a1[11] = v38;
LABEL_47:
    if (!(*a3)(v35, a1 + 8))
    {
      return 1;
    }

    v113 = a1[10];
    v112 = a1[11];
    v115 = a1[8];
    v114 = a1[9];
    v116 = v35[3];
    v118 = *v35;
    v117 = v35[1];
    a1[10] = v35[2];
    a1[11] = v116;
    a1[8] = v118;
    a1[9] = v117;
    *v35 = v115;
    v35[1] = v114;
    v35[2] = v113;
    v35[3] = v112;
    if (!(*a3)(a1 + 8, a1 + 4))
    {
      return 1;
    }

    v120 = a1[6];
    v119 = a1[7];
    v122 = a1[4];
    v121 = a1[5];
    v123 = a1[9];
    a1[4] = a1[8];
    a1[5] = v123;
    v124 = a1[11];
    a1[6] = a1[10];
    a1[7] = v124;
    a1[8] = v122;
    a1[9] = v121;
    a1[10] = v120;
    a1[11] = v119;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 4;
    if ((*a3)(a2 - 4, a1))
    {
      v9 = a1[2];
      v8 = a1[3];
      v11 = *a1;
      v10 = a1[1];
      v12 = a2[-1];
      v14 = *v7;
      v13 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v12;
      *a1 = v14;
      a1[1] = v13;
      *v7 = v11;
      a2[-3] = v10;
      result = 1;
      a2[-2] = v9;
      a2[-1] = v8;
      return result;
    }

    return 1;
  }

LABEL_13:
  v26 = a1 + 8;
  v27 = (*a3)(a1 + 4, a1);
  v28 = (*a3)(a1 + 8, a1 + 4);
  if (v27)
  {
    if (v28)
    {
      v30 = a1[2];
      v29 = a1[3];
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[9];
      *a1 = *v26;
      a1[1] = v33;
      v34 = a1[11];
      a1[2] = a1[10];
      a1[3] = v34;
    }

    else
    {
      v85 = a1[2];
      v84 = a1[3];
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[5];
      *a1 = a1[4];
      a1[1] = v88;
      v89 = a1[7];
      a1[2] = a1[6];
      a1[3] = v89;
      a1[4] = v87;
      a1[5] = v86;
      a1[6] = v85;
      a1[7] = v84;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_33;
      }

      v30 = a1[6];
      v29 = a1[7];
      v32 = a1[4];
      v31 = a1[5];
      v90 = a1[9];
      a1[4] = *v26;
      a1[5] = v90;
      v91 = a1[11];
      a1[6] = a1[10];
      a1[7] = v91;
    }

    *v26 = v32;
    a1[9] = v31;
    a1[10] = v30;
    a1[11] = v29;
  }

  else if (v28)
  {
    v52 = a1[6];
    v51 = a1[7];
    v54 = a1[4];
    v53 = a1[5];
    v55 = a1[9];
    a1[4] = *v26;
    a1[5] = v55;
    v56 = a1[11];
    a1[6] = a1[10];
    a1[7] = v56;
    *v26 = v54;
    a1[9] = v53;
    a1[10] = v52;
    a1[11] = v51;
    if ((*a3)(a1 + 4, a1))
    {
      v58 = a1[2];
      v57 = a1[3];
      v60 = *a1;
      v59 = a1[1];
      v61 = a1[5];
      *a1 = a1[4];
      a1[1] = v61;
      v62 = a1[7];
      a1[2] = a1[6];
      a1[3] = v62;
      a1[4] = v60;
      a1[5] = v59;
      a1[6] = v58;
      a1[7] = v57;
    }
  }

LABEL_33:
  v92 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v93 = 0;
  v94 = 0;
  while (1)
  {
    if ((*a3)(v92, v26))
    {
      v95 = v92[1];
      v131 = *v92;
      v132 = v95;
      v96 = v92[3];
      v133 = v92[2];
      v134 = v96;
      v97 = v93;
      while (1)
      {
        v98 = (a1 + v97);
        v99 = *(a1 + v97 + 144);
        v98[12] = *(a1 + v97 + 128);
        v98[13] = v99;
        v100 = *(a1 + v97 + 176);
        v98[14] = *(a1 + v97 + 160);
        v98[15] = v100;
        if (v97 == -128)
        {
          break;
        }

        v97 -= 64;
        if (((*a3)(&v131, v98 + 4) & 1) == 0)
        {
          v101 = (a1 + v97 + 192);
          goto LABEL_41;
        }
      }

      v101 = a1;
LABEL_41:
      v102 = v132;
      *v101 = v131;
      v101[1] = v102;
      v103 = v134;
      v101[2] = v133;
      v101[3] = v103;
      if (++v94 == 8)
      {
        return &v92[4] == a2;
      }
    }

    v26 = v92;
    v93 += 64;
    v92 += 4;
    if (v92 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,TSWPLFCharIndexData*>(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 6;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + (v10 << 6));
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(a1, a4, v9, v12);
        v12 -= 4;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          v15 = v13[2];
          v14 = v13[3];
          v17 = *v13;
          v16 = v13[1];
          v18 = *(a1 + 48);
          v20 = *a1;
          v19 = *(a1 + 16);
          v13[2] = *(a1 + 32);
          v13[3] = v18;
          *v13 = v20;
          v13[1] = v19;
          *a1 = v17;
          *(a1 + 16) = v16;
          *(a1 + 32) = v15;
          *(a1 + 48) = v14;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(a1, a4, v9, a1);
        }

        v13 += 4;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v36 = v7;
        v21 = 0;
        v37 = *a1;
        v38 = *(a1 + 16);
        v39 = *(a1 + 32);
        v40 = *(a1 + 48);
        v22 = a1;
        do
        {
          v23 = &v22[4 * v21];
          v24 = v23 + 4;
          v25 = (2 * v21) | 1;
          v26 = 2 * v21 + 2;
          if (v26 < v9)
          {
            v27 = v23 + 8;
            if ((*a4)(v23 + 4, v23 + 8))
            {
              v24 = v27;
              v25 = v26;
            }
          }

          v28 = *v24;
          v29 = v24[1];
          v30 = v24[3];
          v22[2] = v24[2];
          v22[3] = v30;
          *v22 = v28;
          v22[1] = v29;
          v22 = v24;
          v21 = v25;
        }

        while (v25 <= ((v9 - 2) >> 1));
        v7 = v36 - 4;
        if (v24 == &v36[-4])
        {
          v24[2] = v39;
          v24[3] = v40;
          *v24 = v37;
          v24[1] = v38;
        }

        else
        {
          v31 = *v7;
          v32 = v36[-3];
          v33 = v36[-1];
          v24[2] = v36[-2];
          v24[3] = v33;
          *v24 = v31;
          v24[1] = v32;
          *v7 = v37;
          v36[-3] = v38;
          v36[-2] = v39;
          v36[-1] = v40;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(a1, &v24[4], a4, (&v24[4] - a1) >> 6);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 4))
      {
        v14 += 4;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v17 = v7[1];
        v27 = *v7;
        v28 = v17;
        v18 = v7[3];
        v29 = v7[2];
        v30 = v18;
        do
        {
          v19 = v14;
          v20 = *v14;
          v21 = v14[1];
          v22 = v14[3];
          v7[2] = v14[2];
          v7[3] = v22;
          *v7 = v20;
          v7[1] = v21;
          if (v9 < v13)
          {
            break;
          }

          v23 = (2 * v13) | 1;
          v14 = (a1 + (v23 << 6));
          v24 = 2 * v13 + 2;
          if (v24 < a3)
          {
            if ((*a2)((a1 + (v23 << 6)), v14 + 4))
            {
              v14 += 4;
              v23 = v24;
            }
          }

          v7 = v19;
          v13 = v23;
        }

        while (!(*a2)(v14, &v27));
        result = v27;
        v25 = v28;
        v26 = v30;
        v19[2] = v29;
        v19[3] = v26;
        *v19 = result;
        v19[1] = v25;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + (v6 >> 1 << 6));
    v11 = (a2 - 64);
    if ((*a3)(v10, (a2 - 64)))
    {
      v13 = v11[1];
      v21 = *v11;
      v22 = v13;
      v14 = v11[3];
      v23 = v11[2];
      v24 = v14;
      do
      {
        v15 = v10;
        v16 = *v10;
        v17 = v10[1];
        v18 = v10[3];
        v11[2] = v10[2];
        v11[3] = v18;
        *v11 = v16;
        v11[1] = v17;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + (v9 << 6));
        v11 = v15;
      }

      while (((*a3)(v10, &v21) & 1) != 0);
      v19 = v22;
      *v15 = v21;
      v15[1] = v19;
      result = *&v23;
      v20 = v24;
      v15[2] = v23;
      v15[3] = v20;
    }
  }

  return result;
}

void *std::vector<TSWPLFCharIndexData>::__assign_with_size[abi:ne200100]<TSWPLFCharIndexData*,TSWPLFCharIndexData*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 6)
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

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TSWPLFCharIndexData>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 6)
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
  return result;
}

void std::vector<TSWPLFCharIndexData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFCharIndexData>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

__n128 std::__split_buffer<TSWPLFCharIndexData>::emplace_back<TSWPLFCharIndexData const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 5;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFCharIndexData>>(a1[4], v11);
    }

    v7 = ((v6 >> 6) + 1) / -2;
    v8 = ((v6 >> 6) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
    a1[2] = &v9[v10];
  }

  result = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v4[2] = a2[2];
  v4[3] = v14;
  *v4 = result;
  v4[1] = v13;
  a1[2] += 4;
  return result;
}

void std::vector<TSWPLineRef>::__assign_with_size[abi:ne200100]<TSWPLineRef*,TSWPLineRef*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<TSWPLineRef>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TSWPLineRef>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<TSWPLineRef *,TSWPLineRef *,TSWPLineRef *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 6;
        std::allocator<TSWPLineRef>::destroy[abi:ne200100](a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<TSWPLineRef *,TSWPLineRef *,TSWPLineRef *>(&v15, a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TSWPLineRef>,TSWPLineRef*,TSWPLineRef*,TSWPLineRef*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void std::vector<TSWPLineRef>::__vdeallocate(CFTypeRef **a1)
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
        v3 -= 6;
        std::allocator<TSWPLineRef>::destroy[abi:ne200100](a1, v3);
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

void std::vector<TSWPLineRef>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLineRef>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TSWPLineRef>,TSWPLineRef*,TSWPLineRef*,TSWPLineRef*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      *(v4 + 24) = *(v6 + 24);
      *(v4 + 40) = *(v6 + 40);
      if (v7)
      {
        CFRetain(v7);
        v4 = v12;
      }

      v6 += 48;
      v4 += 48;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPLineRef>,TSWPLineRef*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPLineRef>,TSWPLineRef*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TSWPLineRef>,TSWPLineRef*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TSWPLineRef>,TSWPLineRef*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 6;
      std::allocator<TSWPLineRef>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::allocator<TSWPLineRef>::destroy[abi:ne200100](uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<TSWPLineRef *,TSWPLineRef *,TSWPLineRef *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*v5)
      {
        CFRetain(*v5);
      }

      if (*a4)
      {
        CFRelease(*a4);
      }

      *a4 = *v5;
      *(a4 + 40) = *(v5 + 40);
      *(a4 + 8) = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      v5 += 48;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLineRef>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void TSWPAdornments::~TSWPAdornments(CGColorRef *this)
{
  CGColorRelease(this[2]);
  v2 = this[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = this[16];
  if (v3)
  {
    this[17] = v3;
    operator delete(v3);
  }

  v4 = this[13];
  if (v4)
  {
    this[14] = v4;
    operator delete(v4);
  }

  v5 = this[10];
  if (v5)
  {
    this[11] = v5;
    operator delete(v5);
  }

  v6 = this[7];
  if (v6)
  {
    this[8] = v6;
    operator delete(v6);
  }

  v7 = this[4];
  if (v7)
  {
    this[5] = v7;
    operator delete(v7);
  }
}

uint64_t compareHyperlinkRangeValues(void *a1, void *a2)
{
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{kTSWPDataDetectorRangeKey), "rangeValue"}];
  v4 = [objc_msgSend(a2 objectForKeyedSubscript:{kTSWPDataDetectorRangeKey), "rangeValue"}];
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v3 > v4;
  }
}

__CFString *NSStringFromTSWPSelectionType(uint64_t a1)
{
  if (a1 < 8)
  {
    return off_279D49A80[a1];
  }

  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromTSWPSelectionType(TSWPSelectionType)"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 53, @"Unknown selection type: %d", a1}];
  return @"<UNKNOWN SELECTION TYPE>";
}

void *std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGPoint>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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
  return result;
}

void sub_26C92DA84(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C92DC28(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C92F200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_26C930474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C932368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int *polygonFromRect(CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v17[8] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040B05087B7uLL);
  v15 = 4;
  v16 = v17;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MinY = CGRectGetMinY(v19);
  *v17 = MinX;
  *&v17[1] = MinY;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v9 = CGRectGetMinY(v21);
  *&v17[2] = MaxX;
  *&v17[3] = v9;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v10 = CGRectGetMaxX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  *&v17[4] = v10;
  *&v17[5] = MaxY;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetMinX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v13 = CGRectGetMaxY(v25);
  *&v17[6] = v12;
  *&v17[7] = v13;
  TSDgpc_add_contour(v5, &v15, 0);
  return v5;
}

uint64_t compareRects(objc_object *a1, objc_object *a2, void *a3)
{
  [(objc_object *)a1 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(objc_object *)a2 CGRectValue];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  rect = v5;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  if (MinX < CGRectGetMinX(v25))
  {
    return -1;
  }

  v26.origin.x = rect;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v22 = CGRectGetMinX(v26);
  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v17;
  v27.size.height = v19;
  return v22 > CGRectGetMinX(v27);
}

uint64_t TSWPOverlapsRectHorizontally(CGRect a1, CGRect a2)
{
  result = 0;
  if (a1.size.width > 0.0 && a2.size.width > 0.0)
  {
    if (a1.origin.x >= a2.origin.x)
    {
      if (a2.origin.x + a2.size.width <= a1.origin.x)
      {
        return 0;
      }
    }

    else if (a1.origin.x + a1.size.width <= a2.origin.x)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void *mergeRects(NSArray *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [(NSArray *)a1 objectEnumerator];
  v4 = [(NSEnumerator *)v3 nextObject];
  if (v4)
  {
    [v4 CGRectValue];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    while (1)
    {
      do
      {
        v13 = [(NSEnumerator *)v3 nextObject];
        if (!v13)
        {
          [v2 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", v6, v8, v10, v12)}];
          return v2;
        }

        [v13 CGRectValue];
        x = v19.origin.x;
        y = v19.origin.y;
        width = v19.size.width;
        height = v19.size.height;
      }

      while (CGRectGetWidth(v19) == 0.0);
      if (width <= 0.0 || v10 <= 0.0)
      {
        goto LABEL_9;
      }

      if (x >= v6)
      {
        if (v6 + v10 > x)
        {
          goto LABEL_11;
        }

LABEL_9:
        [v2 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", v6, v8, v10, v12)}];
        v6 = x;
        v8 = y;
        v10 = width;
        v12 = height;
      }

      else
      {
        if (x + width <= v6)
        {
          goto LABEL_9;
        }

LABEL_11:
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        v22.origin.x = v6;
        v22.origin.y = v8;
        v22.size.width = v10;
        v22.size.height = v12;
        v21 = CGRectUnion(v20, v22);
        v6 = v21.origin.x;
        v8 = v21.origin.y;
        v10 = v21.size.width;
        v12 = v21.size.height;
      }
    }
  }

  return v2;
}

unint64_t wrappedSubrectsFromPolygon(int *a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [MEMORY[0x277CBEB18] array];
  if (*a1 >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      -[NSArray addObject:](v12, "addObject:", [MEMORY[0x277CCAE60] valueWithCGRect:boundsForVertexList(*(a1 + 2) + v13)]);
      ++v14;
      v13 += 16;
    }

    while (v14 < *a1);
  }

  [(NSArray *)v12 sortUsingFunction:compareRects context:0];
  v15 = mergeRects(v12);
  v16 = [v15 count];
  if (!v16)
  {
    *a2 = a3;
    a2[1] = a4;
    v26 = 1;
    a2[2] = a5;
    a2[3] = a6;
    return v26;
  }

  v17 = v16;
  v18 = [v15 objectEnumerator];
  v19 = malloc_type_calloc(v17, 0x10uLL, 0x1000040451B5BE8uLL);
  v20 = [v18 nextObject];
  if (v20)
  {
    v21 = v19 + 1;
    do
    {
      [v20 CGRectValue];
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      *(v21 - 1) = CGRectGetMinX(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      *v21 = CGRectGetMaxX(v45);
      v21 += 2;
      v20 = [v18 nextObject];
    }

    while (v20);
  }

  v26 = 0;
  v27 = v19 - 1;
  v28 = 1;
  do
  {
    if (v28 != 1)
    {
      MinX = *v27;
      v50.origin.x = a3;
      v50.origin.y = a4;
      v50.size.width = a5;
      v50.size.height = a6;
      MinY = CGRectGetMinY(v50);
      v33 = v27[1] - *v27;
      goto LABEL_13;
    }

    v29 = *v19;
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    if (v29 > CGRectGetMinX(v46))
    {
      v47.origin.x = a3;
      v47.origin.y = a4;
      v47.size.width = a5;
      v47.size.height = a6;
      MinX = CGRectGetMinX(v47);
      v48.origin.x = a3;
      v48.origin.y = a4;
      v48.size.width = a5;
      v48.size.height = a6;
      MinY = CGRectGetMinY(v48);
      v32 = *v19;
      v49.origin.x = a3;
      v49.origin.y = a4;
      v49.size.width = a5;
      v49.size.height = a6;
      v33 = v32 - CGRectGetMinX(v49);
LABEL_13:
      v51.origin.x = a3;
      v51.origin.y = a4;
      v51.size.width = a5;
      v51.size.height = a6;
      v34 = CGRectGetHeight(v51);
      v35 = &a2[4 * v26];
      *v35 = MinX;
      v35[1] = MinY;
      ++v26;
      v35[2] = v33;
      v35[3] = v34;
    }

    if (v28 >= v17)
    {
      break;
    }

    ++v28;
    v27 += 2;
  }

  while (v26 < 0x80);
  v36 = &v19[2 * v17];
  v37 = *(v36 - 1);
  v52.origin.x = a3;
  v52.origin.y = a4;
  v52.size.width = a5;
  v52.size.height = a6;
  if (v37 < CGRectGetMaxX(v52) && v26 < 0x80)
  {
    v38 = *(v36 - 1);
    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = a5;
    v53.size.height = a6;
    v39 = CGRectGetMinY(v53);
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    v40 = CGRectGetMaxX(v54) - *(v36 - 1);
    v55.origin.x = a3;
    v55.origin.y = a4;
    v55.size.width = a5;
    v55.size.height = a6;
    v41 = CGRectGetHeight(v55);
    v42 = &a2[4 * v26];
    *v42 = v38;
    v42[1] = v39;
    ++v26;
    v42[2] = v40;
    v42[3] = v41;
  }

  free(v19);
  return v26;
}

uint64_t TSWPTextWrapMarkerCompare(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t std::vector<TSWPAdornmentRect>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TSWPAdornmentRect>::__emplace_back_slow_path<TSWPAdornmentRect const&>(a1, a2);
  }

  else
  {
    std::vector<TSWPAdornmentRect>::__construct_one_at_end[abi:ne200100]<TSWPAdornmentRect const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void sub_26C938440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C93866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C9387E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C9396D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C93AB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C93ABFC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C93B430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TSWPDrawingState::~TSWPDrawingState(TSWPDrawingState *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }
}

void std::shared_ptr<TSWPLineFragmentArray>::shared_ptr[abi:ne200100]<TSWPLineFragmentArray,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26C93B644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TSWPLineFragmentArray>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<TSWPLineFragmentArray>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x26D6A9A30](v2, 0x1020C40D1034F40);
  }

  return a1;
}

void std::__shared_ptr_pointer<TSWPLineFragmentArray *,std::shared_ptr<TSWPLineFragmentArray>::__shared_ptr_default_delete<TSWPLineFragmentArray,TSWPLineFragmentArray>,std::allocator<TSWPLineFragmentArray>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6A9A30);
}

uint64_t std::default_delete<TSWPLineFragmentArray>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::__destroy_vector::operator()[abi:nn200100](&v4);
    return MEMORY[0x26D6A9A30](a2, 0x1020C40D1034F40);
  }

  return result;
}

void std::vector<TSWPAdornmentRect>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TSWPAdornmentRect>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

__n128 std::vector<TSWPAdornmentRect>::__construct_one_at_end[abi:ne200100]<TSWPAdornmentRect const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<TSWPAdornmentRect>::__emplace_back_slow_path<TSWPAdornmentRect const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPAdornmentRect>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v8 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v8;
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPAdornmentRect>,TSWPAdornmentRect*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<TSWPAdornmentRect>::~__split_buffer(&v15);
  return v14;
}

void sub_26C93B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TSWPAdornmentRect>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPAdornmentRect>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPAdornmentRect>,TSWPAdornmentRect*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      *v4 = *v8;
      *(v4 + 8) = *(v8 + 8);
      *(v4 + 16) = *(v8 + 16);
      v9 = *(v8 + 24);
      *(v4 + 40) = *(v8 + 40);
      *(v4 + 24) = v9;
      v8 += 56;
      v4 = v14 + 56;
      v14 += 56;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<TSWPAdornmentRect>>::destroy[abi:ne200100]<TSWPAdornmentRect,0>(a1, v6);
      v6 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentRect>,TSWPAdornmentRect*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentRect>,TSWPAdornmentRect*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentRect>,TSWPAdornmentRect*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TSWPAdornmentRect>,TSWPAdornmentRect*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator_traits<std::allocator<TSWPAdornmentRect>>::destroy[abi:ne200100]<TSWPAdornmentRect,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<TSWPAdornmentRect>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TSWPAdornmentRect>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TSWPAdornmentRect>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 56;
    std::allocator_traits<std::allocator<TSWPAdornmentRect>>::destroy[abi:ne200100]<TSWPAdornmentRect,0>(v5, v4 - 56);
  }
}

void std::vector<TSWPAdornmentRect>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<TSWPAdornmentRect>>::destroy[abi:ne200100]<TSWPAdornmentRect,0>(a1, i))
  {
    i -= 56;
  }

  *(a1 + 8) = a2;
}

char *std::vector<CGRect>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CGRect*>,std::__wrap_iter<CGRect*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::segment_data<double>>>(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 5;
  if (v18 >= a5)
  {
    v31 = &__dst[32 * a5];
    v32 = (v10 - 32 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[1];
      v32 += 2;
      *v33 = v34;
      v33[1] = v35;
      v33 += 2;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v31);
    }

    v30 = 32 * a5;
    v28 = v5;
    v29 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[32 * a5];
    v23 = v10 + v20;
    if (&v21[-32 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -32 * a5];
      do
      {
        v26 = (v24 - v7);
        v27 = *(v25 - v7 + 16);
        *v26 = *(v25 - v7);
        v26[1] = v27;
        v25 += 32;
        v24 += 32;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[32 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v28 = v5;
      v29 = v7;
      v30 = v10 - v5;
LABEL_29:
      memmove(v28, v29, v30);
    }
  }

  return v5;
}

double TSWPAttributeArray::TSWPAttributeArray(uint64_t a1, int a2)
{
  *a1 = &unk_287D35170;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

TSWPAttributeArray *TSWPAttributeArray::setCapacity(TSWPAttributeArray *this, unint64_t a2)
{
  if (this->var2 < a2)
  {
    v2 = this;
    this->var3 = a2;
    this = malloc_type_realloc(this->var4, 16 * a2, 0x10820408DE112D3uLL);
    v2->var4 = this;
  }

  return this;
}

uint64_t TSWPAttributeArray::charIndexForAttributeIndex(TSWPAttributeArray *this, unint64_t a2)
{
  var2 = this->var2;
  if (var2 <= a2)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSWPCharIndex TSWPAttributeArray::charIndexForAttributeIndex(TSWPAttributeIndex) const"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPAttributeArray.mm"), 67, @"TSWPAttributeArray: charIndexForAttributeIndex: bad index."}];
    var2 = this->var2;
  }

  if (var2 <= a2)
  {
    return 0;
  }

  else
  {
    return *(this->var4 + 2 * a2);
  }
}

unint64_t TSWPAttributeArray::effectiveAttributeIndexForCharIndex(TSWPAttributeArray *this, unint64_t a2)
{
  var2 = this->var2;
  if (!var2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  var4 = this->var4;
  v4 = var4;
  v5 = this->var2;
  do
  {
    v6 = v5 >> 1;
    v7 = (v4 + 16 * (v5 >> 1));
    v9 = *v7;
    v8 = (v7 + 2);
    v5 += ~(v5 >> 1);
    if (v9 < a2)
    {
      v4 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  v10 = (v4 - var4) >> 4;
  if (v10 >= var2)
  {
    return var2 - 1;
  }

  if (TSWPAttributeArray::charIndexForAttributeIndex(this, (v4 - var4) >> 4) != a2)
  {
    if (v4 == var4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      --v10;
    }
  }

  return v10;
}

unint64_t TSWPAttributeArray::exactAttributeIndexForCharIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v4 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    if (TSWPAttributeArray::charIndexForAttributeIndex(this, v4) == a2)
    {
      return v6;
    }
  }

  return v5;
}

unint64_t TSWPAttributeArray::findObject(TSWPAttributeArray *this, objc_object *a2, unint64_t a3)
{
  var2 = this->var2;
  if (var2 <= a3)
  {
    if (!var2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (*(this->var4 + 2 * a3 + 1) == a2)
  {
    return a3;
  }

  a3 = 0;
  for (i = (this->var4 + 8); *i != a2; i += 2)
  {
    if (var2 == ++a3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return a3;
}

unint64_t TSWPAttributeArray::characterCount(TSWPAttributeArray *this)
{
  var5 = this->var5;
  if (var5)
  {
    return [var5 characterCount];
  }

  else
  {
    return this->var6;
  }
}

uint64_t TSWPAttributeArray::rangeForAttributeIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v4 = TSWPAttributeArray::charIndexForAttributeIndex(this, a2);
  if (a2 + 1 >= this->var2)
  {
    var5 = this->var5;
    if (var5)
    {
      [var5 characterCount];
    }
  }

  else
  {
    TSWPAttributeArray::charIndexForAttributeIndex(this, a2 + 1);
  }

  return v4;
}

uint64_t TSWPAttributeArray::rangeForCharIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v3 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v4 = TSWPAttributeArray::charIndexForAttributeIndex(this, v3);
    v5 = v6 + 1;
  }

  if (v5 >= this->var2)
  {
    var5 = this->var5;
    if (var5)
    {
      [var5 characterCount];
    }
  }

  else
  {
    TSWPAttributeArray::charIndexForAttributeIndex(this, v5);
  }

  return v4;
}

TSWPAttributeArray *TSWPAttributeArray::willInsertAttributeObject(TSWPAttributeArray *this, objc_object *a2, TSKAddedToDocumentContext *a3, TSWPStorageTransaction *a4)
{
  var1 = this->var1;
  v5 = var1 > 0x11;
  v6 = (1 << var1) & 0x38100;
  if (!v5 && v6 != 0 && a2 != 0)
  {
    v11 = this;
    this = [this->var5 isDOLCSuppressed];
    if ((this & 1) == 0)
    {
      this = [v11->var5 documentRoot];
      if (this)
      {

        return [(objc_object *)a2 willBeAddedToDocumentRoot:this context:a3];
      }
    }
  }

  return this;
}

TSWPAttributeArray *TSWPAttributeArray::didInsertAttribute(TSWPAttributeArray *this, const TSWPAttributeRecord *a2, TSKAddedToDocumentContext *a3, TSWPStorageTransaction *a4)
{
  var1 = this->var1;
  v5 = var1 > 0x11;
  v6 = (1 << var1) & 0x38100;
  if (!v5 && v6 != 0)
  {
    v8 = *(a2 + 1);
    if (v8)
    {
      v10 = this;
      this = [(TSKAddedToDocumentContext *)a3 changeTrackingSubstorage];
      if ((this & 1) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          [v8 setParentStorage:v10->var5];
        }

        this = [v10->var5 isDOLCSuppressed];
        if ((this & 1) == 0)
        {
          this = [v10->var5 documentRoot];
          if (this)
          {

            return [v8 wasAddedToDocumentRoot:this context:a3];
          }
        }
      }
    }
  }

  return this;
}

TSWPAttributeArray *TSWPAttributeArray::willDeleteAttribute(TSWPAttributeArray *this, const TSWPAttributeRecord *a2, TSWPStorageTransaction *a3)
{
  var1 = this->var1;
  v4 = var1 > 0x11;
  v5 = (1 << var1) & 0x38100;
  if (!v4 && v5 != 0)
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      v8 = this;
      if (objc_opt_respondsToSelector())
      {
        this = [v7 parentStorage];
        if (this != v8->var5)
        {
          return this;
        }

        [v7 setParentStorage:0];
      }

      this = [v8->var5 isDOLCSuppressed];
      if ((this & 1) == 0)
      {
        this = [v8->var5 documentRoot];
        if (this)
        {

          return [v7 willBeRemovedFromDocumentRoot:this];
        }
      }
    }
  }

  return this;
}

TSWPAttributeArray *TSWPAttributeArray::didDeleteAttributeObject(TSWPAttributeArray *this, objc_object *a2, TSWPStorageTransaction *a3)
{
  var1 = this->var1;
  v4 = var1 > 0x11;
  v5 = (1 << var1) & 0x38100;
  if (!v4 && v5 != 0 && a2 != 0)
  {
    v9 = this;
    if ((objc_opt_respondsToSelector() & 1) == 0 || (this = [(objc_object *)a2 parentStorage]) == 0)
    {
      this = [v9->var5 isDOLCSuppressed];
      if ((this & 1) == 0)
      {
        this = [v9->var5 documentRoot];
        if (this)
        {

          return [(objc_object *)a2 wasRemovedFromDocumentRoot:this];
        }
      }
    }
  }

  return this;
}

uint64_t TSWPAttributeArray::insertAttribute(TSWPAttributeArray *this, const TSWPAttributeRecord *a2, unint64_t a3, TSKAddedToDocumentContext *a4, TSWPStorageTransaction *a5)
{
  if (this->var2 < a3)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPAttributeArray::insertAttribute(const TSWPAttributeRecord &, TSWPAttributeIndex, TSKAddedToDocumentContext *, TSWPStorageTransaction *)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPAttributeArray.mm"), 327, @"insertAttribute: bad count."}];
  }

  if ((*(this->var0 + 3))(this))
  {
    (*(this->var0 + 30))(this, *(a2 + 1), a4, a5);
  }

  (*(this->var0 + 23))(this, a2);
  var2 = this->var2;
  v13 = 2 * var2 + 2;
  if (var2 + 1 > this->var3 && var2 < v13)
  {
    this->var3 = v13;
    this->var4 = malloc_type_realloc(this->var4, 16 * v13, 0x10820408DE112D3uLL);
    var2 = this->var2;
  }

  memmove(this->var4 + 16 * a3 + 16, this->var4 + 16 * a3, 16 * (var2 - a3));
  *(this->var4 + a3) = *a2;
  ++this->var2;
  v15 = *(this->var0 + 31);

  return v15(this, a2, a4, a5);
}

void *TSWPAttributeArray::p_deleteAttributes(TSWPAttributeArray *this, unint64_t a2, uint64_t a3, TSWPStorageTransaction *a4)
{
  v8 = a3 + a2;
  if (a3 + a2 > this->var2)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPAttributeArray::p_deleteAttributes(TSWPAttributeIndex, TSWPAttributeCount, TSWPStorageTransaction *)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPAttributeArray.mm"), 355, @"deleteAttributes: bad input."}];
  }

  if (v8 > a2)
  {
    v11 = 16 * a2;
    v12 = a3;
    do
    {
      (*(this->var0 + 32))(this, this->var4 + v11, a4);
      (*(this->var0 + 24))(this, this->var4 + v11);
      v11 += 16;
      --v12;
    }

    while (v12);
  }

  result = memmove(this->var4 + 16 * a2, this->var4 + 16 * v8, 16 * (this->var2 - v8));
  this->var2 -= a3;
  return result;
}

void TSWPAttributeArray::deleteAttributes(TSWPAttributeArray *this, unint64_t a2, unint64_t a3, TSWPStorageTransaction *a4)
{
  var1 = this->var1;
  v9 = var1 > 0x11;
  v10 = (1 << var1) & 0x38100;
  v11 = v9 || v10 == 0;
  if (v11 || [this->var5 isDOLCSuppressed])
  {

    TSWPAttributeArray::p_deleteAttributes(this, a2, a3, a4);
  }

  else if (a3 == 1)
  {
    v27 = *(this->var4 + 2 * a2 + 1);
    v12 = v27;
    TSWPAttributeArray::p_deleteAttributes(this, a2, 1, a4);
    (*(this->var0 + 33))(this, v27, a4);
  }

  else
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    std::vector<objc_object *>::reserve(&__p, a3);
    if (a3 + a2 > a2)
    {
      v13 = (16 * a2) | 8;
      v14 = a3;
      do
      {
        v15 = *(this->var4 + v13);
        if (v15)
        {
          v16 = v15;
          v17 = v29;
          if (v29 >= v30)
          {
            v19 = (v29 - __p) >> 3;
            if ((v19 + 1) >> 61)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v20 = (v30 - __p) >> 2;
            if (v20 <= v19 + 1)
            {
              v20 = v19 + 1;
            }

            if (v30 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v21 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(&__p, v21);
            }

            v22 = (8 * v19);
            *v22 = v15;
            v18 = 8 * v19 + 8;
            v23 = v22 - (v29 - __p);
            memcpy(v23, __p, v29 - __p);
            v24 = __p;
            __p = v23;
            v29 = v18;
            v30 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v29 = v15;
            v18 = (v17 + 8);
          }

          v29 = v18;
        }

        v13 += 16;
        --v14;
      }

      while (v14);
    }

    TSWPAttributeArray::p_deleteAttributes(this, a2, a3, a4);
    v25 = __p;
    v26 = v29;
    if (__p != v29)
    {
      do
      {
        (*(this->var0 + 33))(this, *v25, a4);
      }

      while (v25 != v26);
      v25 = __p;
    }

    if (v25)
    {
      v29 = v25;
      operator delete(v25);
    }
  }
}

void sub_26C93CB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<objc_object *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t TSWPAttributeArray::adjustCharIndexStartingAtAttributeIndex(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  v5 = v4 > a3;
  v6 = v4 - a3;
  if (v5)
  {
    v7 = (*(result + 32) + 16 * a3);
    do
    {
      *v7 += a4;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

void TSWPAttributeArray::replaceObjectForAttributeIndex(TSWPAttributeArray *this, objc_object *a2, uint64_t a3, TSKAddedToDocumentContext *a4, TSWPStorageTransaction *a5)
{
  v5 = this->var4 + 16 * a3;
  v6 = *(v5 + 1);
  if (v6 != a2)
  {
    (*(this->var0 + 30))(this);
    v10 = v6;
    v11 = a2;
    (*(this->var0 + 32))(this, v5, a5);
    (*(this->var0 + 24))(this, v5);
    *(v5 + 1) = a2;
    (*(this->var0 + 23))(this, v5);
    (*(this->var0 + 33))(this, v6, a5);
    (*(this->var0 + 31))(this, v5, a4, a5);
  }
}

TSWPAttributeArray *TSWPAttributeArray::replaceObjectForAttributeIndexForShallowCopy(TSWPAttributeArray *this, objc_object *a2, uint64_t a3)
{
  v3 = this->var4 + 16 * a3;
  if (*(v3 + 1) != a2)
  {
    v5 = this;
    (*(this->var0 + 24))(this, this->var4 + 16 * a3);
    *(v3 + 1) = a2;
    v6 = *(v5->var0 + 23);

    return v6(v5, v3);
  }

  return this;
}

TSWPAttributeArray *TSWPAttributeArray::willReplaceCharactersInRangeWithString(TSWPAttributeArray *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v10 = result;
    v11 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(result, a2);
    result = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(v10, a2 + a3);
    if (result != v11)
    {
      v12 = *(v10->var0 + 7);

      return v12(v10, v11, result - v11, a7);
    }
  }

  return result;
}

unint64_t TSWPAttributeArray::calculateAttributeRangeForCharacterRange(TSWPAttributeArray *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  v5 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(this, a2.location);
  TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(this, location + length);
  return v5;
}

unint64_t TSWPAttributeArray::adjustCharIndexForCharRangeWithString(TSWPAttributeArray *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(a1, a3);
  if (a6 != a4 && result != 0x7FFFFFFFFFFFFFFFLL)
  {
    var2 = a1->var2;
    v11 = var2 > result;
    v12 = var2 - result;
    if (v11)
    {
      v13 = (a1->var4 + 16 * result);
      do
      {
        *v13 += a6 - a4;
        v13 += 2;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

unint64_t TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(TSWPAttributeArray *this, unint64_t a2)
{
  v4 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  result = this->var2;
  if (v6 < result)
  {
    if (TSWPAttributeArray::charIndexForAttributeIndex(this, v6) >= a2)
    {
      return v6;
    }

    else
    {
      return v6 + 1;
    }
  }

  return result;
}

uint64_t TSWPAttributeArray::didReplaceCharactersInRangeWithString(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = result;
    result = (*(*result + 80))(result, 5, a2, a3, a4, a5);
    if (a5)
    {
      v13 = result;
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        result = (*(*v12 + 168))(v12);
        if (result)
        {
          v14 = *(*v12 + 160);

          return v14(v12, a2, a3, a5, v13, a6, a7);
        }
      }
    }
  }

  return result;
}

TSWPAttributeArray *TSWPAttributeArray::willBeAddedToDocumentRoot(TSWPAttributeArray *this, TSKDocumentRoot *a2, TSKAddedToDocumentContext *a3)
{
  var1 = this->var1;
  v4 = var1 > 0x11;
  v5 = (1 << var1) & 0x38100;
  if (!v4 && v5 != 0)
  {
    v7 = this;
    var2 = this->var2;
    if (var2)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        this = *(v7->var4 + v12);
        if (this)
        {
          this = [(TSWPAttributeArray *)this willBeAddedToDocumentRoot:a2 context:a3];
          var2 = v7->var2;
        }

        ++v11;
        v12 += 16;
      }

      while (v11 < var2);
    }
  }

  return this;
}

TSWPAttributeArray *TSWPAttributeArray::wasAddedToDocumentRoot(TSWPAttributeArray *this, TSKDocumentRoot *a2, TSKAddedToDocumentContext *a3)
{
  var1 = this->var1;
  v4 = var1 > 0x11;
  v5 = (1 << var1) & 0x38100;
  if (!v4 && v5 != 0)
  {
    v7 = this;
    var2 = this->var2;
    if (var2)
    {
      v11 = 0;
      v12 = 8;
      do
      {
        this = *(v7->var4 + v12);
        if (this)
        {
          this = [(TSWPAttributeArray *)this wasAddedToDocumentRoot:a2 context:a3];
          var2 = v7->var2;
        }

        ++v11;
        v12 += 16;
      }

      while (v11 < var2);
    }
  }

  return this;
}

TSWPAttributeArray *TSWPAttributeArray::willBeRemovedFromDocumentRoot(TSWPAttributeArray *this, TSKDocumentRoot *a2)
{
  var1 = this->var1;
  v3 = var1 > 0x11;
  v4 = (1 << var1) & 0x38100;
  if (!v3 && v4 != 0)
  {
    v6 = this;
    var2 = this->var2;
    if (var2)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        this = *(v6->var4 + v10);
        if (this)
        {
          this = [(TSWPAttributeArray *)this willBeRemovedFromDocumentRoot:a2];
          var2 = v6->var2;
        }

        ++v9;
        v10 += 16;
      }

      while (v9 < var2);
    }
  }

  return this;
}

TSWPAttributeArray *TSWPAttributeArray::wasRemovedFromDocumentRoot(TSWPAttributeArray *this, TSKDocumentRoot *a2)
{
  var1 = this->var1;
  v3 = var1 > 0x11;
  v4 = (1 << var1) & 0x38100;
  if (!v3 && v4 != 0)
  {
    v6 = this;
    var2 = this->var2;
    if (var2)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        this = *(v6->var4 + v10);
        if (this)
        {
          this = [(TSWPAttributeArray *)this wasRemovedFromDocumentRoot:a2];
          var2 = v6->var2;
        }

        ++v9;
        v10 += 16;
      }

      while (v9 < var2);
    }
  }

  return this;
}

void *TSWPAttributeArray::description(TSWPAttributeArray *this)
{
  v2 = [MEMORY[0x277CCAB68] string];
  var1 = this->var1;
  if (var1 >= 0x13)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSWPAttributeArrayKind-%lu", this->var1];
  }

  else
  {
    v4 = off_279D49BB0[var1];
  }

  [v2 appendFormat:@"%s <%p> %@: Count: %lu.\n", (*(this->var0 + 22))(this), this, v4, this->var2];
  if (this->var2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if ((*(this->var0 + 3))(this))
      {
        v7 = *(this->var4 + 2 * v5 + 1);
      }

      else
      {
        v7 = 0;
      }

      v8 = this->var1 - 13;
      v9 = TSWPAttributeArray::charIndexForAttributeIndex(this, v5);
      if (v8 >= 2)
      {
        v10 = @"\t%d CharIndex: %lu, Object: %p\n");
      }

      else
      {
        v10 = @"\t%d CharIndex: %lu, Object: %@\n");
      }

      [v2 appendFormat:v10, v6, v9, v7];
      v5 = (v6 + 1);
      v6 = v5;
    }

    while (this->var2 > v5);
  }

  return v2;
}

uint64_t TSWPAttributeArray::collapseAttributesAroundAttributeIndex(TSWPAttributeArray *this, unint64_t a2, TSWPStorageTransaction *a3)
{
  result = (*(this->var0 + 25))(this);
  if (result)
  {
    var2 = this->var2;
    if (a2 + 1 < var2)
    {
      result = (*(this->var0 + 28))(this);
      var2 = this->var2;
    }

    if (var2 > a2)
    {
      v8 = *(this->var0 + 28);

      return v8(this, a2, a3);
    }
  }

  return result;
}

TSWPAttributeArray *TSWPAttributeArray::enumerateObjectAttributes(TSWPAttributeArray *this, uint64_t a2)
{
  v3 = this;
  v4 = 0;
  v10 = 0;
  v5 = 8;
  do
  {
    if (v4 >= v3->var2)
    {
      break;
    }

    v6 = TSWPAttributeArray::rangeForAttributeIndex(v3, v4);
    v8 = v7;
    v9 = (*(v3->var0 + 2))(v3) ? v8 : 1;
    this = (*(a2 + 16))(a2, *(v3->var4 + v5), v4++, v6, v9, &v10);
    v5 += 16;
  }

  while ((v10 & 1) == 0);
  return this;
}

TSWPAttributeArray *TSWPAttributeArray::enumerateObjectAttributesInCharacterRange(TSWPAttributeArray *result, unint64_t a2, NSUInteger a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a2);
    result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, a3 + a2 - 1);
    v15 = 0;
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = result;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      if (v8 <= result)
      {
        v10 = (16 * v8) | 8;
        do
        {
          v11 = TSWPAttributeArray::rangeForAttributeIndex(v7, v8);
          v13 = v12;
          if (!(*(v7->var0 + 2))(v7))
          {
            v13 = 1;
          }

          v16.location = a2;
          v16.length = a3;
          v17.location = v11;
          v17.length = v13;
          v14 = NSIntersectionRange(v16, v17);
          result = v14.location;
          if (v14.length)
          {
            result = (*(a4 + 16))(a4, *(v7->var4 + v10), v8, v11, v13, &v15);
          }

          if (++v8 > v9)
          {
            break;
          }

          v10 += 16;
        }

        while ((v15 & 1) == 0);
      }
    }
  }

  return result;
}

unint64_t TSWPAttributeArray::begin@<X0>(TSWPAttributeArray *this@<X0>, const _NSRange *a2@<X1>, TSWPAttributeArray **a3@<X8>)
{
  result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2->location);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  *a3 = this;
  a3[1] = v6;
  return result;
}

unint64_t TSWPAttributeArray::end@<X0>(TSWPAttributeArray *this@<X0>, const _NSRange *a2@<X1>, TSWPAttributeArray **a3@<X8>)
{
  v6 = a2->length + a2->location;
  result = [this->var5 length];
  if (v6 == result)
  {
    var2 = this->var2;
  }

  else
  {
    result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v6 - (a2->length != 0));
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      var2 = 0;
    }

    else
    {
      var2 = result + 1;
    }
  }

  *a3 = this;
  a3[1] = var2;
  return result;
}

void sub_26C93F26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__list_imp<TSWPRepBoundsAnalyzer::Span>::clear(va);
  _Unwind_Resume(a1);
}

void TSWPRepBoundsAnalyzer::addSingleColorBounds(TSWPRepBoundsAnalyzer *this, CGColor *a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = floor(CGRectGetMinY(a3));
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v10[0] = v9;
  v10[1] = ceil(CGRectGetMaxY(v13));
  color = CGColorRetain(a2);
  v12 = 0;
  TSWPRepBoundsAnalyzer::insertSpan(this, v10);
  CGColorRelease(color);
}

void TSWPRepBoundsAnalyzer::addMultipleColorBounds(TSWPRepBoundsAnalyzer *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v7 = floor(CGRectGetMinY(a2));
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8[0] = v7;
  v8[1] = ceil(CGRectGetMaxY(v11));
  color = CGColorRetain(0);
  v10 = 0;
  TSWPRepBoundsAnalyzer::insertSpan(this, v8);
  CGColorRelease(color);
}

void TSWPRepBoundsAnalyzer::finalize(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  std::vector<TSWPRepBoundsAnalyzer::Info>::erase(a2, *a2, *(a2 + 8));
  v16 = *(a1 + 8);
  v17 = *(v16 + 32);
  if (v16 != a1)
  {
    v18 = *(a1 + 8);
    v19 = v18;
    while (1)
    {
      if (v18 != v19)
      {
        if (*(v19 + 40) != *(v18 + 40))
        {
          if (!*(v18 + 40))
          {
            goto LABEL_13;
          }

          goto LABEL_9;
        }

        v20 = *(v19 + 32);
        v21 = *(v18 + 32);
        if (v20 != v21 && !CGColorEqualToColor(v20, v21))
        {
          if ((*(v18 + 40) & 1) == 0)
          {
LABEL_13:
            if (*(v19 + 40) != 1)
            {
              goto LABEL_16;
            }

            v22 = *(v18 + 32);
            if (!v22)
            {
              goto LABEL_16;
            }

LABEL_15:
            v19 = v18;
            v17 = v22;
            goto LABEL_17;
          }

LABEL_9:
          if ((*(v19 + 40) & 1) != 0 || (v22 = *(v19 + 32)) == 0)
          {
LABEL_16:
            v23 = *(v16 + 16);
            v29.origin.x = a3;
            v29.origin.y = a4;
            v29.size.width = a5;
            v29.size.height = a6;
            Width = CGRectGetWidth(v29);
            TSWPRepBoundsAnalyzer::insertTilesForRect(a1, a2, v17, a3, v23, Width, *(v19 + 24) - *(v16 + 16), a7, a8);
            v17 = *(v18 + 32);
            v19 = v18;
            v16 = v18;
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        v19 = v18;
      }

LABEL_17:
      v18 = *(v18 + 8);
      if (v18 == a1)
      {
        goto LABEL_20;
      }
    }
  }

  v19 = *(a1 + 8);
LABEL_20:
  v25 = *(v16 + 16);
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  v26 = CGRectGetWidth(v30);
  v27 = *(v19 + 24) - *(v16 + 16);

  TSWPRepBoundsAnalyzer::insertTilesForRect(a1, a2, v17, a3, v25, v26, v27, a7, a8);
}

void TSWPRepBoundsAnalyzer::TSWPRepBoundsAnalyzer(TSWPRepBoundsAnalyzer *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  *this = this;
  *(this + 1) = this;
  *(this + 2) = 0;
  CGRectGetMinY(a2);
  v6.origin.x = x;
  v6.origin.y = y;
  v6.size.width = width;
  v6.size.height = height;
  ceil(CGRectGetMaxY(v6));
  CGColorRetain(0);
  std::__list_imp<TSWPRepBoundsAnalyzer::Span>::__create_node[abi:nn200100]<TSWPRepBoundsAnalyzer::Span>();
}

void sub_26C93F7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CGColorRef color)
{
  CGColorRelease(color);
  std::__list_imp<TSWPRepBoundsAnalyzer::Span>::clear(v11);
  _Unwind_Resume(a1);
}

void std::__list_imp<TSWPRepBoundsAnalyzer::Span>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        CGColorRelease(v2[4]);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void TSWPRepBoundsAnalyzer::insertSpan(uint64_t a1, double *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    v5 = 0;
    v6 = a2[1];
    v7 = *(a1 + 8);
    do
    {
      ++v5;
      v7 = *(v7 + 8);
    }

    while (v7 != a1);
    do
    {
      v8 = v5 >> 1;
      v9 = v2;
      if (v5 != 1)
      {
        v10 = v8 + 1;
        v9 = v2;
        do
        {
          v9 = v9[1];
          --v10;
        }

        while (v10 > 1);
      }

      if (*(v9 + 3) < *a2)
      {
        v2 = v9[1];
        v8 = v5 + ~v8;
      }

      v5 = v8;
    }

    while (v8);
    if (v2 != a1)
    {
      v11 = 0;
      v12 = v2;
      while (*(v12 + 16) < v6)
      {
        v20 = 0;
        v21 = 0;
        v23 = 0;
        color = 0;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        v27 = 0;
        v29 = 0;
        v30 = 0;
        v28 = 0;
        v31 = 0;
        v13 = TSWPRepBoundsAnalyzer::Span::split(v12 + 16, a2, &v20);
        if (v13)
        {
          if (v13 != 1)
          {
            std::__list_imp<TSWPRepBoundsAnalyzer::Span>::__create_node[abi:nn200100]<TSWPRepBoundsAnalyzer::Span const&>();
          }

          v14 = v20;
          v15 = v21;
          v16 = v23;
          v17 = color;
          CGColorRetain(color);
          *(v12 + 16) = v14;
          *(v12 + 24) = v15;
          *(v12 + 40) = v16;
          v18 = *(v12 + 32);
          *(v12 + 32) = v17;
          CGColorRelease(v18);
          v11 = 1;
        }

        for (i = 80; i != -16; i -= 32)
        {
          CGColorRelease(*(&v20 + i));
        }

        v12 = *(v12 + 8);
        if (v12 == a1)
        {
          v12 = a1;
          break;
        }
      }

      if (v11)
      {
        TSWPRepBoundsAnalyzer::collapse(a1, v2, v12);
      }
    }
  }
}

uint64_t TSWPRepBoundsAnalyzer::Span::split(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) <= *a1 || *a2 >= *(a1 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  if (v6 == *(a2 + 24))
  {
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    if (v7 == v8 || CGColorEqualToColor(v7, v8))
    {
      return 0;
    }

    v6 = *(a1 + 24);
  }

  if ((v6 & 1) == 0 && !*(a1 + 16))
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a2;
  if (*a1 == *a2)
  {
    v11 = *(a1 + 8);
    v12 = *(a2 + 8);
    if (v11 == v12)
    {
      if (v6)
      {
        v13 = *(a2 + 24);
        v14 = *(a2 + 16);
        if ((v13 & 1) != 0 || v14)
        {
          CGColorRetain(v14);
          *a3 = v10;
          *(a3 + 8) = v12;
          *(a3 + 24) = v13;
          v15 = *(a3 + 16);
          *(a3 + 16) = v14;
LABEL_15:
          CGColorRelease(v15);
          return 1;
        }

        goto LABEL_28;
      }

      v25 = *(a1 + 16);
      if (!v25)
      {
        v28 = 0;
        goto LABEL_36;
      }

      v26 = *(a2 + 24);
      v27 = *(a2 + 16);
      if ((v26 & 1) == 0 && !v27)
      {
LABEL_28:
        v28 = *(a1 + 16);
LABEL_36:
        CGColorRetain(v28);
        *a3 = v9;
        *(a3 + 8) = v11;
        *(a3 + 24) = v6;
        v44 = *(a3 + 16);
        *(a3 + 16) = v28;
        CGColorRelease(v44);
        CGColorRelease(*(a3 + 16));
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        return 1;
      }

      if (v6 == v26)
      {
        if (v25 == v27)
        {
LABEL_42:
          CGColorRetain(v25);
          *a3 = v9;
          *(a3 + 8) = v11;
          *(a3 + 24) = v6;
          v15 = *(a3 + 16);
          *(a3 + 16) = v25;
          goto LABEL_15;
        }

        v45 = CGColorEqualToColor(*(a1 + 16), v27);
        v9 = *a1;
        v11 = *(a1 + 8);
        LOBYTE(v6) = *(a1 + 24);
        if (v45)
        {
          v25 = *(a1 + 16);
          goto LABEL_42;
        }
      }

      v46 = *(a1 + 16);
      CGColorRetain(v46);
      *a3 = v9;
      *(a3 + 8) = v11;
      *(a3 + 24) = v6;
      v47 = *(a3 + 16);
      *(a3 + 16) = v46;
      CGColorRelease(v47);
      CGColorRelease(*(a3 + 16));
      v16 = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      return v16;
    }
  }

  if (v9 >= v10)
  {
    v20 = 0;
  }

  else
  {
    v18 = CGColorRetain(*(a1 + 16));
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 24) = v6;
    v19 = *(a3 + 16);
    *(a3 + 16) = v18;
    CGColorRelease(v19);
    v6 = *(a1 + 24);
    v20 = 1;
  }

  v21 = *(a2 + 24);
  if (v6 == v21)
  {
    v22 = *(a1 + 16);
    v23 = *(a2 + 16);
    if (v22 == v23)
    {
      v24 = 1;
      LOBYTE(v21) = v6;
    }

    else
    {
      v24 = CGColorEqualToColor(v22, v23);
      LOBYTE(v21) = *(a2 + 24);
      LOBYTE(v6) = *(a1 + 24);
    }
  }

  else
  {
    v24 = 0;
  }

  v29 = v6 & v21 & v24;
  if ((v6 | v24))
  {
    v30 = *(a2 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = v29 & 1;
  v32 = a3 + 32 * v20;
  v33 = *a2;
  v34.i64[0] = *a1;
  v34.i64[1] = *(a2 + 8);
  v33.i64[1] = *(a1 + 8);
  v48 = vbslq_s8(vcgtq_f64(*a1, *a2), v34, v33);
  v35 = CGColorRetain(v30);
  *v32 = v48;
  *(v32 + 24) = v31;
  v36 = *(v32 + 16);
  *(v32 + 16) = v35;
  CGColorRelease(v36);
  v16 = v20 + 1;
  v37 = *(a2 + 8);
  v38 = *(a1 + 8);
  if (v37 < v38)
  {
    v39 = *(a1 + 16);
    v40 = *(a1 + 24);
    v41 = CGColorRetain(v39);
    v42 = a3 + 32 * v16;
    *v42 = v37;
    *(v42 + 8) = v38;
    *(v42 + 24) = v40;
    v43 = *(v42 + 16);
    *(v42 + 16) = v41;
    CGColorRelease(v43);
    return v20 | 2;
  }

  return v16;
}

void TSWPRepBoundsAnalyzer::collapse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  if (*(a1 + 8) != a2)
  {
    v3 = *a2;
  }

  v5 = a1;
  if (a3 != a1)
  {
    v5 = *(a3 + 8);
  }

  while (v3 != v5)
  {
    v6 = v3;
    v3 = v3[1];
    if (v3 != a1 && *(v6 + 40) == *(v3 + 40))
    {
      v7 = v6[4];
      v8 = v3[4];
      if (v7 == v8)
      {
        v9 = v3;
LABEL_11:
        v3[2] = v6[2];
        v10 = *v6;
        *(v10 + 8) = v9;
        *v9 = v10;
        --*(a1 + 16);
        CGColorRelease(v7);
        operator delete(v6);
      }

      else if (CGColorEqualToColor(v7, v8))
      {
        v9 = v6[1];
        v7 = v6[4];
        goto LABEL_11;
      }
    }
  }
}

uint64_t std::vector<TSWPRepBoundsAnalyzer::Info>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = v7 - 40;
        CGColorRelease(*(v7 - 8));
        v7 = v8;
      }

      while (v8 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void TSWPRepBoundsAnalyzer::insertTilesForRect(int a1, uint64_t *a2, CGColorRef color, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  v15 = fmax(ceil(a9), 32.0);
  v26 = fmax(ceil(a8), 32.0);
  v24 = v15;
  if (a6 > v26 || a6 > v15)
  {
    v17 = a4;
    MinY = CGRectGetMinY(*(&a5 - 1));
    v32.origin.x = a4;
    v32.origin.y = a5;
    v32.size.width = a6;
    v32.size.height = a7;
    MaxY = CGRectGetMaxY(v32);
    while (MinY < MaxY)
    {
      v33.origin.x = a4;
      v33.origin.y = a5;
      v33.size.width = a6;
      v33.size.height = a7;
      v25 = fmin(CGRectGetMaxY(v33), v24 + MinY);
      v34.origin.x = a4;
      v34.origin.y = a5;
      v34.size.width = a6;
      v34.size.height = a7;
      MinX = CGRectGetMinX(v34);
      v35.origin.x = a4;
      v35.origin.y = a5;
      v35.size.width = a6;
      v35.size.height = a7;
      if (MinX < CGRectGetMaxX(v35))
      {
        do
        {
          v21 = MinX;
          v36.origin.x = a4;
          v36.origin.y = a5;
          v36.size.width = a6;
          v36.size.height = a7;
          MinX = fmin(CGRectGetMaxX(v36), v26 + MinX);
          v22 = a2[1];
          v27 = v21;
          v28 = MinY;
          v29 = MinX - v21;
          v30 = v25 - MinY;
          colora = CGColorRetain(color);
          std::vector<TSWPRepBoundsAnalyzer::Info>::insert(a2, v22, &v27);
          CGColorRelease(colora);
          v37.origin.x = a4;
          v37.origin.y = a5;
          v37.size.width = a6;
          v37.size.height = a7;
        }

        while (MinX < CGRectGetMaxX(v37));
      }

      v38.origin.x = a4;
      v38.origin.y = a5;
      v38.size.width = a6;
      v38.size.height = a7;
      MaxY = CGRectGetMaxY(v38);
      MinY = v25;
    }
  }

  else
  {
    v23 = a2[1];
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a7;
    colora = CGColorRetain(color);
    std::vector<TSWPRepBoundsAnalyzer::Info>::insert(a2, v23, &v27);
    CGColorRelease(colora);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v10 = *v5;
      v11 = v5[1];
      v7 = CGColorRetain(*(v5 + 4));
      *a4 = v10;
      *(a4 + 16) = v11;
      v8 = *(a4 + 32);
      *(a4 + 32) = v7;
      CGColorRelease(v8);
      v5 = (v5 + 40);
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<TSWPRepBoundsAnalyzer::Info>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v12 = *a1;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) + 1;
    if (v13 > 0x666666666666666)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = a2 - v12;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v12) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) + 1;
    }

    if (v15 >= 0x333333333333333)
    {
      v17 = 0x666666666666666;
    }

    else
    {
      v17 = v16;
    }

    v24 = a1;
    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPRepBoundsAnalyzer::Info>>(a1, v17);
    }

    v20 = 0;
    v21 = 8 * (v14 >> 3);
    v22 = v21;
    v23 = 0;
    std::__split_buffer<TSWPRepBoundsAnalyzer::Info>::emplace_back<TSWPRepBoundsAnalyzer::Info>(&v20, a3);
    v4 = std::vector<TSWPRepBoundsAnalyzer::Info>::__swap_out_circular_buffer(a1, &v20, v4);
    std::__split_buffer<TSWPRepBoundsAnalyzer::Info>::~__split_buffer(&v20);
  }

  else if (a2 == v7)
  {
    v18 = *(a3 + 16);
    *v7 = *a3;
    *(v7 + 16) = v18;
    *(v7 + 32) = CGColorRetain(*(a3 + 32));
    a1[1] = v7 + 40;
  }

  else
  {
    std::vector<TSWPRepBoundsAnalyzer::Info>::__move_range(a1, a2, a1[1], a2 + 40);
    v8 = *(a3 + 16);
    v25 = *a3;
    v26 = v8;
    v9 = CGColorRetain(*(a3 + 32));
    v10 = v26;
    *v4 = v25;
    *(v4 + 16) = v10;
    v11 = *(v4 + 32);
    *(v4 + 32) = v9;
    CGColorRelease(v11);
  }

  return v4;
}

uint64_t std::vector<TSWPRepBoundsAnalyzer::Info>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      v11 = *(v10 + 16);
      *v8 = *v10;
      *(v8 + 16) = v11;
      *(v8 + 32) = CGColorRetain(*(v10 + 32));
      v10 += 40;
      v8 += 40;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *>(&v13, a2, v7, v6);
}

CGColorRef std::__split_buffer<TSWPRepBoundsAnalyzer::Info>::emplace_back<TSWPRepBoundsAnalyzer::Info>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x999999999999999ALL * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v13[4] = a1[4];
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPRepBoundsAnalyzer::Info>>(v10, v9);
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3) + 1 + ((0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -5 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *>(v13, v5, v4, v5 - 40 * (v6 >> 1));
    v4 = v8;
    a1[1] += 8 * v7;
    a1[2] = v8;
  }

  v11 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v11;
  result = CGColorRetain(*(a2 + 32));
  *(v4 + 32) = result;
  a1[2] += 40;
  return result;
}

void sub_26C940624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSWPRepBoundsAnalyzer::Info>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TSWPRepBoundsAnalyzer::Info>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPRepBoundsAnalyzer::Info>,TSWPRepBoundsAnalyzer::Info*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPRepBoundsAnalyzer::Info>,TSWPRepBoundsAnalyzer::Info*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *,TSWPRepBoundsAnalyzer::Info *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = v7 - 40;
      v12 = *(v7 - 40);
      v13 = *(v7 - 24);
      v9 = CGColorRetain(*(v7 - 8));
      *(a4 - 40) = v12;
      *(a4 - 24) = v13;
      v10 = *(a4 - 8);
      *(a4 - 8) = v9;
      CGColorRelease(v10);
      a4 -= 40;
      v7 = v8;
    }

    while (v8 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPRepBoundsAnalyzer::Info>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPRepBoundsAnalyzer::Info>,TSWPRepBoundsAnalyzer::Info*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 32) = CGColorRetain(*(v7 + 32));
      v7 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      CGColorRelease(*(v6 + 32));
      v6 += 40;
    }
  }
}

uint64_t std::__split_buffer<TSWPRepBoundsAnalyzer::Info>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    CGColorRelease(*(i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<TSWPRepBoundsAnalyzer::Info>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
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
        v6 = v4 - 5;
        CGColorRelease(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t _shapePackageStringByPresetKind(void)
{
  if (_shapePackageStringByPresetKindonceToken != -1)
  {
    _shapePackageStringByPresetKind();
  }

  return _shapePackageStringByPresetKindsingleton;
}

id ___Z31_shapePackageStringByPresetKindv_block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v1[0] = String;
  v1[1] = String;
  v2[0] = @"line";
  v2[1] = @"shape";
  v1[2] = String;
  v1[3] = TSWPFieldEditorPresetKind;
  v2[2] = @"textbox";
  v2[3] = @"fieldeditor";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:4];
  _shapePackageStringByPresetKindsingleton = result;
  return result;
}

uint64_t _presetKindByShapePackageString(void)
{
  if (_presetKindByShapePackageStringonceToken != -1)
  {
    _presetKindByShapePackageString();
  }

  return _presetKindByShapePackageStringsingleton;
}

id ___Z31_presetKindByShapePackageStringv_block_invoke()
{
  v0 = MEMORY[0x277CBEAC0];
  if (_shapePackageStringByPresetKindonceToken != -1)
  {
    _shapePackageStringByPresetKind();
  }

  result = [v0 tsu_dictionaryByInvertingDictionary:_shapePackageStringByPresetKindsingleton];
  _presetKindByShapePackageStringsingleton = result;
  return result;
}

uint64_t TSWPShapePackageStringForPresetKind(uint64_t a1)
{
  if (_shapePackageStringByPresetKindonceToken != -1)
  {
    _shapePackageStringByPresetKind();
  }

  v2 = [_shapePackageStringByPresetKindsingleton objectForKeyedSubscript:a1];
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSWPShapePackageStringForPresetKind(TSSPresetKind)"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeInfo.mm"), 97, @"Unexpected preset kind %@ in TSWPShapeStylePackageStringForPresetKind()", a1}];
  }

  return v2;
}

uint64_t TSWPShapePresetKindForPackageString(void *a1)
{
  if (_presetKindByShapePackageStringonceToken != -1)
  {
    _presetKindByShapePackageString();
  }

  v2 = [_presetKindByShapePackageStringsingleton objectForKeyedSubscript:a1];
  if (!v2)
  {
    v2 = String;
    if (([a1 isEqualToString:@"tableName"] & 1) == 0)
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSSPresetKind TSWPShapePresetKindForPackageString(NSString *)"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeInfo.mm"), 124, @"Unknown package string %@.", a1}];
    }
  }

  return v2;
}

void TSWPLayoutChore::TSWPLayoutChore(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = &unk_287D352D0;
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((a1 + 104));
  bzero((a1 + 80), 0x2B0uLL);
  TSWPTopicNumberHints::TSWPTopicNumberHints(a1 + 768, [a4 styleProvider]);
  TSWPTopicNumberHints::TSWPTopicNumberHints(a1 + 816, [a4 styleProvider]);
  TSWPDropCapLayoutState::TSWPDropCapLayoutState(a1 + 864, 0, 0);
  TSWPLineBalancingLayoutState::TSWPLineBalancingLayoutState((a1 + 1128));
  TSWPLineStylingLayoutState::TSWPLineStylingLayoutState(a1 + 1928, 0, 0);
  *(a1 + 2016) = 0;
  *(a1 + 2000) = 0u;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a6;
  *(a1 + 2032) = a7;
  *(a1 + 2040) = a8;
  *(a1 + 2048) = a9;
  *(a1 + 56) = [a2 wpKind];
  *(a1 + 64) = [a2 characterCount];
  *(a1 + 72) = [a2 attachmentCount];
  *&v16 = 0xFFFFFFFFLL;
  *(&v16 + 1) = 0xFFFFFFFFLL;
  *(a1 + 40) = v16;
  if (objc_opt_respondsToSelector())
  {
    [a3 forceWesternLineBreaking];
  }

  operator new();
}

{
  TSWPLayoutChore::TSWPLayoutChore(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_26C94296C(_Unwind_Exception *a1)
{
  TSWPLineBalancingLayoutState::~TSWPLineBalancingLayoutState(&v1[23]._charIndex);
  TSWPDropCapLayoutState::~TSWPDropCapLayoutState(&v1[18]);
  TSWPTopicNumberHints::~TSWPTopicNumberHints(v1 + 17);
  TSWPTopicNumberHints::~TSWPTopicNumberHints(v1 + 16);
  TSWPLayoutState::~TSWPLayoutState(&v1[1]._validThroughCharIndex);
  _Unwind_Resume(a1);
}

void *TSWPLayoutState::setPreviousPartHint(void *result, void *a2)
{
  v2 = result[85];
  if (v2 != a2)
  {
    v4 = result;

    result = a2;
    v4[85] = result;
  }

  return result;
}

void TSWPLayoutChore::~TSWPLayoutChore(TSWPLayoutChore *this)
{
  *this = &unk_287D352D0;
  (*(**(this + 253) + 24))(*(this + 253));
  v2 = *(this + 253);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 258);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = (this + 2000);
  std::vector<TSWPLayoutState>::__destroy_vector::operator()[abi:ne200100](&v4);
  TSWPLineStylingLayoutState::~TSWPLineStylingLayoutState((this + 1928));
  TSWPLineBalancingLayoutState::~TSWPLineBalancingLayoutState((this + 1128));
  TSWPDropCapLayoutState::~TSWPDropCapLayoutState((this + 864));
  TSWPTopicNumberHints::~TSWPTopicNumberHints(this + 17);
  TSWPTopicNumberHints::~TSWPTopicNumberHints(this + 16);
  TSWPLayoutState::~TSWPLayoutState((this + 80));
}

{
  TSWPLayoutChore::~TSWPLayoutChore(this);

  JUMPOUT(0x26D6A9A30);
}

uint64_t TSWPLayoutChore::setStorageRange(TSWPLayoutChore *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  *(this + 8) = a2.location + a2.length;
  v5 = *(this + 1);
  v6 = [*(this + 3) styleProvider];
  if (v5)
  {
    [v5 paragraphEnumeratorForCharRange:location styleProvider:{length, v6}];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  v7 = *&v10.var2;
  *(this + 104) = *&v10.var0;
  *(this + 120) = v7;
  *(this + 136) = *&v10.var4;
  *(this + 152) = v10.var6;
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v10);
  result = [*(this + 1) attachmentIndexRangeForTextRange:{0, *(this + 8)}];
  *(this + 9) = v9;
  *(this + 10) = location;
  return result;
}

TSWPTopicNumberHints *TSWPLayoutChore::setTopicNumbers(TSWPLayoutChore *this, TSWPTopicNumberHints *a2)
{
  TSWPTopicNumberHints::operator=(this + 17, a2);
  TSWPTopicNumberHints::advanceToCharIndex(this + 17, *(this + 10), *(this + 1));

  return TSWPTopicNumberHints::operator=(this + 16, this + 17);
}

uint64_t TSWPLayoutChore::layoutIntoTarget(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v9 = (a1 + 80);
  v8 = *(a1 + 80);
  v10 = *(a1 + 64);
  if (v8 > v10)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLayoutChore::layoutIntoTarget(TSDLayout<TSWPLayoutTarget> *, TSWPLayoutFlags, BOOL *)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 220, @"Attempt to lay out past end of storage"}];
    v8 = *(a1 + 80);
    v10 = *(a1 + 64);
  }

  if (v8 > v10)
  {
    return 0;
  }

  if (*(a1 + 792) != 0x7FFFFFFFFFFFFFFFLL)
  {
    TSWPTopicNumberHints::operator=((a1 + 816), (a1 + 768));
    v8 = *(a1 + 80);
  }

  TSWPTopicNumberHints::advanceToCharIndex((a1 + 816), v8, *(a1 + 8));
  TSWPTopicNumberHints::operator=((a1 + 768), (a1 + 816));
  v13 = *(a1 + 32);
  [a2 currentSize];
  if ((v13 & 0x10) != 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [a2 columns];
  if (![v17 count])
  {
    v18 = *(a1 + 8);
    v19 = *(a1 + 80);
    v20 = [*(a1 + 24) styleProvider];
    LOBYTE(v37) = (*(a1 + 32) & 0x10) != 0;
    [TSWPLayoutManager fixColumnBoundsForTarget:a2 storage:v18 charIndex:v19 firstColumnIndex:0 precedingHeight:0 height:v20 alreadyHasMargins:0.0 styleProvider:v16 vertical:v37];
  }

  if (![v17 count])
  {
    v21 = [MEMORY[0x277D6C290] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLayoutChore::layoutIntoTarget(TSDLayout<TSWPLayoutTarget> *, TSWPLayoutFlags, BOOL *)"}];
    [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 239, @"No columns to lay out into"}];
  }

  if (objc_opt_respondsToSelector())
  {
    if ([a2 ignoresEquationAlignment])
    {
      a3 = a3 | 0x20000;
    }

    else
    {
      a3 = a3;
    }
  }

  if (![v17 count])
  {
    return 0;
  }

  TSWPLayoutChore::protectedSetupLayoutState(a1, a2, 0, *(a1 + 80), *(a1 + 760));
  TSWPLayoutState::TSWPLayoutState(v45, v9);
  TSWPLayoutChore::pPushLayoutState(a1, v45);
  [*(a1 + 680) removeAllFootnoteReferenceStorages];
  v44 = 0;
  v42 = 0;
  if ([a2 shouldPositionAttachmentsIteratively])
  {
    v23 = [a2 iterativeAttachmentPositioningMaxPassCount] != 0;
  }

  else
  {
    v23 = 0;
  }

  v25 = rint(v16);
  while (1)
  {
    v41 = 0.0;
    v40 = 1;
    v39 = 0;
    v26 = v25;
    v43 = 0;
    do
    {
      v27 = TSWPLayoutChore::pLayoutPiece(a1, a2, a3, &v41, &v40, &v43, &v39, v16, v26);
      v26 = rint(v16 - v41);
      if (v26 <= 0.0)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }
    }

    while (v28 != 1);
    v29 = [v17 count];
    if (v29 > v39)
    {
      [v17 removeObjectsInRange:{v39, v29 - v39}];
    }

    TSWPLayoutChore::pSetTargetColumnsTransform(a1);
    HasOverlaps = TSWPLayoutChore::targetHasOverlaps(a1, &v44, &v42, a2);
    v31 = v23 ? TSWPLayoutChore::pPerformIterativeAttachmentPositioning(a1, &v44 + 1, a2) : 1;
    if (!(HasOverlaps & 1 | ((v31 & 1) == 0)))
    {
      break;
    }

    v32 = *(a1 + 744);
    TSWPLayoutChore::pRestoreStateFromOldState(a1, v45);
    *(a1 + 744) = v32;
    TSWPTopicNumberHints::operator=((a1 + 768), (a1 + 816));
    [*(a1 + 680) removeAllFootnoteReferenceStorages];
  }

  TSWPLayoutChore::postProcessDrawableAttachments(a1, a2);
  TSWPLayoutChore::pPopLayoutState(a1, v38);
  TSWPLayoutState::~TSWPLayoutState(v38);
  TSWPLayoutChore::pHandleSync(a1, a2, a4);
  if (*(a1 + 80) < *(a1 + 64) || ((v33 = v43, v34 = IsParagraphBreakingCharacter(v43), v33 == 8232) ? (v35 = 1) : (v35 = v34), (v35 & 1) != 0 || *(a1 + 88) < *(a1 + 64)))
  {
    ColumnContainsOnlyOneAnchoredDrawable = 1;
  }

  else
  {
    ColumnContainsOnlyOneAnchoredDrawable = TSWPLayoutChore::pLastColumnContainsOnlyOneAnchoredDrawable(a1, a2);
  }

  TSWPLayoutState::~TSWPLayoutState(v45);
  return ColumnContainsOnlyOneAnchoredDrawable;
}

void TSWPLayoutChore::protectedSetupLayoutState(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  *(a1 + 2056) = a2;
  v10 = a5;
  TSWPParagraphEnumerator::TSWPParagraphEnumerator(v44);
  bzero(v43, 0x2B0uLL);
  TSWPLayoutState::operator=((a1 + 80), v43);
  TSWPLayoutState::setPreviousPartHint((a1 + 80), a5);

  *(a1 + 80) = a4;
  v11 = [v8 columns];
  if ([v11 count])
  {
    *(a1 + 184) = [v11 objectAtIndexedSubscript:a3];
    v12 = *(a1 + 8);
    v13 = *(a1 + 80);
    v14 = [*(a1 + 24) styleProvider];
    if (v12)
    {
      [v12 paragraphEnumeratorAtCharIndex:v13 styleProvider:v14];
    }

    else
    {
      memset(&v42, 0, sizeof(v42));
    }

    v15 = *&v42.var2;
    *(a1 + 104) = *&v42.var0;
    *(a1 + 120) = v15;
    *(a1 + 136) = *&v42.var4;
    *(a1 + 152) = v42.var6;
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v42);
  }

  *(a1 + 88) = a4;
  if (a3)
  {
    if ([v11 count])
    {
      v16 = [objc_msgSend(v11 objectAtIndexedSubscript:{a3 - 1), "anchoredRange"}];
LABEL_11:
      *(a1 + 88) = v16 + v17;
    }
  }

  else
  {
    v18 = [v8 previousTargetLastColumn];
    if (v18)
    {
      v16 = [v18 anchoredRange];
      goto LABEL_11;
    }
  }

  *(a1 + 96) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 680) = [v8 footnoteHeightMeasurer];
  *(a1 + 688) = [v8 footnoteMarkProvider];
  TSWPLayoutChore::pSetupStateForParagraphIndex(a1, 0);
  TSWPLayoutChore::pSetupStateForColumnMetrics(a1);
  v19 = *(a1 + 184);
  if (v19)
  {
    v20 = [v19 columnIndex];
    *(a1 + 240) = v20;
    if (v20 != a3)
    {
      v21 = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPLayoutChore::protectedSetupLayoutState(TSDLayout<TSWPLayoutTarget> *, NSUInteger, TSWPCharIndex, id<TSDHint>, uint)"}];
      [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 706, @"Column index mismatch"}];
    }
  }

  *(a1 + 712) = [*(a1 + 16) textWrapper];
  v23 = [*(a1 + 16) lineHintsForTarget:v8];
  *(a1 + 720) = v23;
  if (v23)
  {
    if (([v23 valid] & 1) == 0)
    {
      v24 = [MEMORY[0x277D6C290] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPLayoutChore::protectedSetupLayoutState(TSDLayout<TSWPLayoutTarget> *, NSUInteger, TSWPCharIndex, id<TSDHint>, uint)"}];
      [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 714, @"lintHints %p invalid:\n%@", *(a1 + 720), objc_msgSend(*(a1 + 720), "descriptionWithStorage:", *(a1 + 8))}];
    }

    if (([*(a1 + 720) valid] & 1) == 0)
    {
      *(a1 + 720) = 0;
    }
  }

  objc_opt_class();
  v26 = TSUDynamicCast();
  if (v26)
  {
    if (objc_opt_respondsToSelector())
    {
      v26 = [*(a1 + 16) textColorOverride];
    }

    else
    {
      v26 = 0;
    }
  }

  *(a1 + 728) = v26;
  [v8 position];
  v28 = v27;
  v30 = v29;
  v31 = [v8 maxSize];
  v33.n128_u64[0] = v32;
  v35.n128_u64[0] = v34;
  v36.n128_u64[0] = v28;
  *(a1 + 648) = TSDRectWithOriginAndSize(v31, v36, v30, v33, v35);
  *(a1 + 656) = v37;
  *(a1 + 664) = v38;
  *(a1 + 672) = v39;
  *(a1 + 414) = (*(a1 + 32) & 0x20) != 0;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [*(a1 + 8) documentRoot];
  }

  *(a1 + 425) = [v8 shouldHyphenate];
  if (*(a1 + 56) >= 3u)
  {
    v41 = *(a1 + 184);
    if (v41)
    {
      [v41 frameBounds];
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0xFFF0000000000000;
  }

  *(a1 + 400) = v40;
  TSWPLayoutState::~TSWPLayoutState(v43);
}

void sub_26C943444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  TSWPLayoutState::~TSWPLayoutState(va);
  _Unwind_Resume(a1);
}

uint64_t TSWPLayoutChore::pPushLayoutState(TSWPLayoutChore *this, const TSWPLayoutState *a2)
{
  v4 = *(this + 251);
  if (0x82FA0BE82FA0BE83 * ((v4 - *(this + 250)) >> 4) < 6 || (v5 = [MEMORY[0x277D6C290] currentHandler], v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "void TSWPLayoutChore::pPushLayoutState(const TSWPLayoutState &)"), result = objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 743, @"Too many layoutStates pushed"), v4 = *(this + 251), 0x82FA0BE82FA0BE83 * ((v4 - *(this + 250)) >> 4) <= 5))
  {
    if (v4 >= *(this + 252))
    {
      result = std::vector<TSWPLayoutState>::__emplace_back_slow_path<TSWPLayoutState const&>(this + 2000, a2);
    }

    else
    {
      TSWPLayoutState::TSWPLayoutState(v4, a2);
      result = v4 + 688;
      *(this + 251) = v4 + 688;
    }

    *(this + 251) = result;
  }

  return result;
}

uint64_t TSWPLayoutChore::pLayoutPiece(uint64_t a1, void *a2, uint64_t a3, double *a4, _DWORD *a5, _WORD *a6, unsigned int *a7, double a8, double a9)
{
  v9 = a7;
  v12 = a9;
  v15 = 0;
  v137 = *MEMORY[0x277D85DE8];
  v135 = a9;
  v134 = 0x4028000000000000;
  v16 = MEMORY[0x277CBF3A0];
  do
  {
    v17 = &v136[v15];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = *v16;
    v19 = v16[1];
    *(v17 + 1) = *v16;
    *(v17 + 2) = v19;
    *(v17 + 3) = v18;
    *(v17 + 4) = v19;
    *(v17 + 10) = 0;
    v15 += 88;
  }

  while (v15 != 880);
  TSWPLayoutChore::pCacheErasableInfos(a1, a2, *a7, v136);
  if (*(a1 + 232) < 2uLL || v20 == 0.0)
  {
    v23 = 0;
    v115 = 0;
    v21 = v12;
  }

  else
  {
    v21 = rint(v20 + *(a1 + 216) * 2.0);
    v22 = rint(v12);
    v23 = v21 < v22;
    if (v21 >= v22)
    {
      v21 = v12;
    }

    v115 = v23;
  }

  v133 = v21;
  v132 = v23;
  TSWPLayoutState::TSWPLayoutState(v130, (a1 + 80));
  TSWPLayoutChore::pPushLayoutState(a1, v130);
  v118 = v23;
  TSWPTopicNumberHints::TSWPTopicNumberHints(&v129, (a1 + 768));
  v24 = 0;
  v25 = 0;
  v116 = 0;
  LOBYTE(v117) = 0;
  v26 = 0;
  v27 = 0x277CCA000uLL;
  v111 = a3;
  v28 = a3;
  v113 = a6;
  v121 = v9;
  while (1)
  {
    v29 = v28;
    *a6 = 0;
    v127 = 0;
    *(a1 + 240) = *v9;
    v128 = v24 + 1;
    if (v25)
    {
      v30 = *(a1 + 80);
      if (v130[0] <= v30)
      {
        v31 = *(a1 + 80);
      }

      else
      {
        v31 = v130[0];
      }

      if (v130[0] >= v30)
      {
        v32 = *(a1 + 80);
      }

      else
      {
        v32 = v130[0];
      }

      TSWPLayoutChore::pRestoreStateFromOldState(a1, v130);
      TSWPTopicNumberHints::operator=((a1 + 768), &v129);
      if (*(a1 + 680))
      {
        v138.length = v31 - v32;
        v138.location = v32;
        TSWPLayoutChore::removeFootnotesInRange(a1, v138);
      }

      TSWPCoreTextTypesetter::endParagraphLayout(*(a1 + 2024));
    }

    v33 = *(a1 + 80);
    if (v33 > *(a1 + 64))
    {
      [objc_msgSend(MEMORY[0x277D6C290] "currentHandler")];
      v33 = *(a1 + 80);
    }

    v34 = *(a1 + 2056);
    v35 = *(a1 + 8);
    v36 = *v121;
    v37 = *a4;
    v38 = v133;
    v39 = [*(a1 + 24) styleProvider];
    LOBYTE(v109) = (*(a1 + 32) & 0x10) != 0;
    [TSWPLayoutManager fixColumnBoundsForTarget:v34 storage:v35 charIndex:v33 firstColumnIndex:v36 precedingHeight:0 height:v39 alreadyHasMargins:v37 styleProvider:v38 vertical:v109];
    v126 = 0;
    v125 = 0;
    v9 = v121;
    v40 = *v121;
    v41 = *(a1 + 232);
    v28 = v29;
    [objc_msgSend(objc_msgSend(a2 "columns")];
    v122 = v41 + v40;
    if (v42 <= 0.0 && ([a2 autosizeFlags] & 1) == 0)
    {
      v67 = 1;
      goto LABEL_59;
    }

    v44 = v116;
    if (!(v26 & 1 | ((v118 & v116 & 1) == 0)))
    {
      if (*(a1 + 414))
      {
        v28 = v29;
      }

      else
      {
        v28 = v29 | 0x10000;
      }
    }

    v45 = *v121;
    if (v122 <= v45)
    {
      v46 = *v121;
    }

    else
    {
      v46 = v122;
    }

    if (v122 >= v45)
    {
      v47 = *v121;
    }

    else
    {
      v47 = v122;
    }

    v117 = TSWPLayoutChore::pLayoutColumns(a1, v28 & 0xFFFFFFFE, v47, v46 - v47, *(a1 + 2056), a6, &v127, &v126, &v125);
    if (*(a1 + 56) == 2)
    {
      goto LABEL_43;
    }

    v49 = *(a1 + 680);
    if (!v49)
    {
      goto LABEL_43;
    }

    [v49 footnoteHeight];
    if (v50 <= 0.0)
    {
      goto LABEL_43;
    }

    v51 = *(a1 + 672);
    v52 = *a4;
    v53 = v50 + *a4;
    v54 = v51 - v53;
    if (v38 <= v51 - v53)
    {
      goto LABEL_43;
    }

    v114 = v28;
    v133 = v51 - v53;
    v55 = *(a1 + 2056);
    v56 = *(a1 + 8);
    v57 = *(a1 + 80);
    v58 = *v121;
    v59 = [*(a1 + 24) styleProvider];
    LOBYTE(v110) = (*(a1 + 32) & 0x10) != 0;
    [TSWPLayoutManager fixColumnBoundsForTarget:v55 storage:v56 charIndex:v57 firstColumnIndex:v58 precedingHeight:0 height:v59 alreadyHasMargins:v52 styleProvider:v54 vertical:v110];
    if (v46 - v47 >= 2)
    {
      break;
    }

    v12 = v54;
    a6 = v113;
    v9 = v121;
    v27 = 0x277CCA000;
    v28 = v114;
    v44 = v116;
LABEL_43:
    v60 = v127;
    if (*a6 == 5)
    {
      v60 = 0;
    }

    v61 = TSWPLayoutChore::pHandleLayoutBreaksAndColumnBalancing(a1, v60 & (v117 ^ 1u), *v9, v130, v136, v12, v48, v122, v115, &v134, &v135, &v133, a4, &v132, &v128);
    v118 = v132;
    if ((v61 & 1) == 0)
    {
LABEL_57:
      v67 = 0;
      goto LABEL_59;
    }

    if (!(v44 & 1 | !v132))
    {
      v62 = [a2 columns];
      if (v46 <= v47)
      {
        v26 = 0;
      }

      else
      {
        v63 = v62;
        do
        {
          v64 = [objc_msgSend(v63 objectAtIndexedSubscript:{v47), "requiresGlyphVectorsForHeightMeasurement"}];
          v26 = v64;
          if (v46 - 1 == v47++)
          {
            v66 = 1;
          }

          else
          {
            v66 = v64;
          }
        }

        while ((v66 & 1) == 0);
      }

      v116 = 1;
    }

LABEL_56:
    v24 = v128;
    v25 = 1;
    if (v128 >= 0x10)
    {
      goto LABEL_57;
    }
  }

  if (*a5 < 2u || (v139.location = v47, v139.length = v46 - v47, v43 = TSWPLayoutChore::pMinimumLayoutHeightForColumnRange(a1, v139, 0), v43 <= v54))
  {
    *(a1 + 640) = 1;
    v12 = v54;
    a6 = v113;
    v9 = v121;
    v27 = 0x277CCA000;
    v28 = v114;
    goto LABEL_56;
  }

  v67 = 1;
  v12 = v54;
  a6 = v113;
  v27 = 0x277CCA000;
  LOBYTE(v28) = v114;
LABEL_59:
  if (v118)
  {
    LOBYTE(v28) = v111;
    if ((v111 & 0x10000) == 0)
    {
      TSWPLayoutState::TSWPLayoutState(v124, v130);
      TSWPLayoutChore::pCreateLineRefsAfterColumnBalancing(a1, v124, v111);
      TSWPLayoutState::~TSWPLayoutState(v124);
    }
  }

  if (*a5 >= 2u)
  {
    v68 = v28;
    v69 = a6;
    v126 = 0;
    v70 = *v121;
    if (v122 <= v70)
    {
      v71 = *v121;
    }

    else
    {
      v71 = v122;
    }

    if (v122 >= v70)
    {
      v72 = *v121;
    }

    else
    {
      v72 = v122;
    }

    v73 = [*(a1 + 2056) columns];
    v140.length = v71 - v72;
    v140.location = v72;
    v43 = TSWPLayoutChore::pMinimumLayoutHeightForColumnRange(a1, v140, &v126);
    if (v43 <= v12 && v126)
    {
      if (v130[19] == 1 && (v74 = [v73 objectAtIndexedSubscript:v130[20]], objc_msgSend(v74, "textHeight"), v76 = v75, objc_msgSend(v74, "countLines") == 1))
      {
        v77 = v131;
        v43 = v12 - v76;
        if (v12 - v76 >= v76)
        {
          v77 = 0;
        }

        if (((v67 | v77) & 1) == 0)
        {
LABEL_76:
          LOBYTE(v28) = v68;
          goto LABEL_78;
        }
      }

      else if (!v67)
      {
        goto LABEL_76;
      }
    }

    if (*(a1 + 56) != 2 && *(a1 + 680) && v122 != v70)
    {
      v99 = [v73 objectAtIndexedSubscript:v72];
      if (!v99)
      {
        [objc_msgSend(MEMORY[0x277D6C290] "currentHandler")];
      }

      v100 = [v73 objectAtIndexedSubscript:v71 - 1];
      if (!v100)
      {
        [objc_msgSend(MEMORY[0x277D6C290] "currentHandler")];
      }

      v101 = [v99 range];
      v102 = [v100 range];
      if (v101 <= v102 + v103)
      {
        v104 = v102 + v103;
      }

      else
      {
        v104 = v101;
      }

      if (v101 >= v102 + v103)
      {
        v105.location = v102 + v103;
      }

      else
      {
        v105.location = v101;
      }

      v105.length = v104 - v105.location;
      TSWPLayoutChore::removeFootnotesInRange(a1, v105);
    }

    TSWPLayoutChore::pRestoreStateFromOldState(a1, v130);
    *v69 = 10;
    goto LABEL_111;
  }

  if (v67)
  {
    goto LABEL_111;
  }

LABEL_78:
  v78 = [*(a1 + 2056) columns];
  if (*(a1 + 232))
  {
    v79 = v78;
    v80 = 0;
    v81 = 0;
    do
    {
      v82 = *v121;
      v83 = v81 + *v121;
      if ([v79 count] > v83 && (v84 = objc_msgSend(v79, "objectAtIndexedSubscript:", v81 + v82), (v85 = v84) != 0))
      {
        if (v28)
        {
          [(TSWPColumn *)v84 wpBounds];
          v142.origin.x = v86;
          v142.origin.y = v87;
          v142.size.width = v88;
          v142.size.height = v89;
          v90 = &v136[88 * v80];
          if (CGRectEqualToRect(*(v90 + 16), v142))
          {
            TSWPLayoutChore::pCompareLineFragments(a1, &v136[88 * v80], [(TSWPColumn *)v85 lineFragmentArray], v85, v28, *(v90 + 10));
          }

          else
          {
            [(TSWPColumn *)v85 erasableBounds:1];
            v143.origin.x = v93;
            v143.origin.y = v94;
            v143.size.width = v95;
            v143.size.height = v96;
            v144 = CGRectUnion(*(v90 + 48), v143);
            v141 = CGRectUnion(v144, v144);
            [*(a1 + 2056) setNeedsDisplayInTargetRect:{v141.origin.x, v141.origin.y, v141.size.width, v141.size.height}];
          }
        }
      }

      else
      {
        v91 = [MEMORY[0x277D6C290] currentHandler];
        v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLayoutChore::pLayoutPiece(TSDLayout<TSWPLayoutTarget> *, TSWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)"}];
        [v91 handleFailureInFunction:v92 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 3737, @"Invalid columnIndex: %lu columns.count: %lu", v83, objc_msgSend(v79, "count")}];
      }

      v80 = ++v81;
    }

    while (*(a1 + 232) > v81);
  }

  *v121 = v122;
  if (v127)
  {
    TSWPLayoutChore::pSetupStateForColumnMetrics(a1);
    v97 = *v121;
    *(a1 + 224) = v97;
    *(a1 + 240) = v97;
    v98 = 1;
    if (!((*v113 == 5) | v117 & 1) && *a4 < a8 && *(a1 + 80) < *(a1 + 40) && ([*(a1 + 192) alwaysStartsNewTarget] & 1) == 0)
    {
      v98 = 0;
      ++*a5;
    }
  }

  else
  {
LABEL_111:
    v98 = 1;
  }

  TSWPLayoutChore::pPopLayoutState(a1, v123);
  TSWPLayoutState::~TSWPLayoutState(v123);
  TSWPTopicNumberHints::~TSWPTopicNumberHints(&v129);
  TSWPLayoutState::~TSWPLayoutState(v130);
  for (i = 800; i != -80; i -= 88)
  {
    v107 = *&v136[i];
    if (v107)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v107);
    }
  }

  return v98;
}

void sub_26C943F64(_Unwind_Exception *a1)
{
  TSWPTopicNumberHints::~TSWPTopicNumberHints(&STACK[0x5F0]);
  TSWPLayoutState::~TSWPLayoutState(&STACK[0x620]);
  v2 = 800;
  while (1)
  {
    v3 = *(&STACK[0x8F0] + v2);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v2 -= 88;
    if (v2 == -80)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t TSWPLayoutChore::pSetTargetColumnsTransform(id *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [this[257] columns];
  if ((this[4] & 0x10) != 0)
  {
    if (([this[257] autosizeFlags] & 3) != 0)
    {
      v5 = [v2 count];
      v6 = 0.0;
      if (v5 == 1)
      {
        [this[24] adjustedInsets];
        v8 = v7;
        [objc_msgSend(v2 objectAtIndexedSubscript:{0), "wpBounds"}];
        v6 = v8 + CGRectGetMaxY(v23);
      }
    }

    else
    {
      [this[257] currentSize];
    }

    CGAffineTransformMakeTranslation(&v20, v6, 0.0);
    v18 = v20;
    CGAffineTransformRotate(&v19, &v18, 1.57079633);
    *&v20.a = *&v19.a;
    *&v20.c = *&v19.c;
    v4 = *&v19.tx;
  }

  else
  {
    v3 = *(MEMORY[0x277CBF2C0] + 16);
    *&v20.a = *MEMORY[0x277CBF2C0];
    *&v20.c = v3;
    v4 = *(MEMORY[0x277CBF2C0] + 32);
  }

  *&v20.tx = v4;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [v2 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v2);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        v19 = v20;
        [v13 setTransformFromWP:&v19];
        ++v12;
      }

      while (v10 != v12);
      result = [v2 countByEnumeratingWithState:&v14 objects:v21 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

uint64_t TSWPLayoutChore::targetHasOverlaps(uint64_t a1, unsigned int *a2, unint64_t *a3, void *a4)
{
  v7 = *a2;
  v8 = *a2 + 1;
  *a2 = v8;
  if (v7)
  {
    if (v8 <= 1)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLayoutChore::targetHasOverlaps(uint &, TSWPCharIndex &, TSDLayout<TSWPLayoutTarget> *, NSString *&)"}];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 6386, @"Bad passCount"}];
    }

    v11 = *(a1 + 88);
    if (v11 <= *a3)
    {
      v11 = *a3;
    }

    *(a1 + 88) = v11;
    v12 = [objc_msgSend(a4 "columns")];
    [v12 setAnchoredCharCount:{*(a1 + 88) - objc_msgSend(v12, "anchoredRange")}];
    return 0;
  }

  *a3 = *(a1 + 88);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![*(a1 + 16) textWrapper])
  {
    return 0;
  }

  return TSWPLayoutChore::pAnchoredGraphicAndTextCollisionsInTarget();
}

uint64_t TSWPLayoutChore::pPerformIterativeAttachmentPositioning(uint64_t a1, _DWORD *a2, void *a3)
{
  if ([*(a1 + 8) attachmentCount])
  {
    v5 = 0;
    v55 = 1;
    while (1)
    {
      v56 = 0;
      [*(a1 + 8) attachmentAtAttachmentIndex:v5 outCharIndex:&v56];
      objc_opt_class();
      v6 = TSUDynamicCast();
      v7 = [*(a1 + 2056) validatedLayoutForAnchoredDrawable:{-[TSWPDrawableAttachment drawable](v6, "drawable")}];
      if (v6)
      {
        v8 = v7;
        v9 = [*(a1 + 2056) iterativeAttachmentPositioningMaxPassCount];
        v10 = [v8 iterativePositioningState];
        if ([v10 passCount] != v9 && !objc_msgSend(v8, "hasFinishedIterativePositioning"))
        {
          if (objc_opt_respondsToSelector())
          {
            [a3 drawableAttachment:v6 willStartNewIterationWithIndex:{objc_msgSend(v10, "passCount")}];
          }

          v11 = [a3 validatedLayoutForAnchoredDrawable:{-[TSWPDrawableAttachment drawable](v6, "drawable")}];
          if (![objc_msgSend(a3 "columns")])
          {
            goto LABEL_7;
          }

          v12 = 0;
          while (1)
          {
            v13 = [objc_msgSend(a3 "columns")];
            v14 = [v13 range];
            if (v14 <= v56)
            {
              v15 = [v13 range];
              [v13 range];
              v17 = v16 + v15;
              v18 = v56;
              if (v17 > v56)
              {
                break;
              }
            }

            if (++v12 >= [objc_msgSend(a3 "columns")])
            {
              goto LABEL_7;
            }
          }

          v19 = [v8 iterativePositioningState];
          if ([v19 hasLoopInLastPasses])
          {
            [v19 bestPosition];
            v21 = v20;
            v23 = round(v22 + 0.5);
            [v8 finishIterativePositioning];
            if (v23 < 0.0)
            {
              *(a1 + 744) = -v23;
              v23 = 0.0;
            }

            [v19 smallestMismatch];
            [v19 setPosition:v21 mismatch:{v23, v24}];
            if (objc_opt_respondsToSelector())
            {
              v25 = a3;
              v26 = v6;
              v27 = v21;
              v28 = v23;
              goto LABEL_39;
            }
          }

          else
          {
            if (v18)
            {
              v29 = v18 - 1;
            }

            else
            {
              v29 = 1;
            }

            [v13 topOfLineAtCharIndex:v29];
            v31 = TSWPLayoutChore::pAdjustAnchorYPositionForVerticalAlignment(a1, v6, v29, v30);
            if (objc_opt_respondsToSelector())
            {
              v32 = [a3 drawableAttachment:v6 withLayout:v8 shouldPositionIterativelyInColumn:v13];
            }

            else
            {
              v32 = 1;
            }

            [(TSWPDrawableAttachment *)v6 attachmentAnchorY];
            v34 = v33;
            [v11 frame];
            v36 = v31 - v34 * v35;
            v37 = v36;
            *&v34 = roundf(v37);
            [v11 frame];
            v39 = v38;
            v40 = roundf(v39);
            v41 = [v8 iterativePositioningState];
            if (*&v34 == v40 || v32 == 0)
            {
              if (!v41)
              {
                if (objc_opt_respondsToSelector())
                {
                  [a3 startedIterativePositioningProcessForDrawableAttachment:v6];
                }

                v43 = objc_alloc_init(TSWPIterativeAttachmentPositioningState);
                [v8 setIterativePositioningState:v43];
              }

              [v8 finishIterativePositioning];
              v44 = [v8 iterativePositioningState];
              [v11 frame];
              [v44 setPosition:? mismatch:?];
              if (objc_opt_respondsToSelector())
              {
                [v11 frame];
                v25 = a3;
                v26 = v6;
LABEL_39:
                [v25 drawableAttachment:v26 didFinalizePosition:{v27, v28}];
              }
            }

            else
            {
              if (!v41)
              {
                if (objc_opt_respondsToSelector())
                {
                  [a3 startedIterativePositioningProcessForDrawableAttachment:v6];
                }

                v45 = objc_alloc_init(TSWPIterativeAttachmentPositioningState);
                [v8 setIterativePositioningState:v45];

                v46 = [v8 iterativePositioningState];
                [v11 frame];
                [v46 setPosition:? mismatch:?];
              }

              [v11 frame];
              v48 = v36 - v47;
              v49 = [v8 iterativePositioningState];
              [v11 frame];
              v51 = v50;
              [v11 frame];
              [v49 setPosition:v51 mismatch:{v48 + v52, v48}];
            }
          }

          v55 = 0;
          goto LABEL_7;
        }

        [v8 finishIterativePositioning];
      }

LABEL_7:
      if (++v5 >= [*(a1 + 8) attachmentCount])
      {
        goto LABEL_47;
      }
    }
  }

  v55 = 1;
LABEL_47:
  ++*a2;
  return v55 & 1;
}

id *TSWPLayoutChore::pRestoreStateFromOldState(TSWPLayoutChore *this, id *a2)
{
  v4 = (this + 80);
  v5 = *(this + 640);
  if ((this + 80) == a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLayoutChore::pRestoreStateFromOldState(const TSWPLayoutState &)"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 6152, @"We should not restore from our own object."}];
  }

  if (a2[10] == *(this + 20) && a2[11] == *(this + 21))
  {
    v11 = *(this + 284);
    v12 = *(this + 73);
    result = TSWPLayoutState::operator=(v4, a2);
    *(this + 284) = v11;
    v10 = *(this + 72);
    if (!v10)
    {
      *(this + 72) = v12;
      v10 = v12;
    }
  }

  else
  {
    result = TSWPLayoutState::operator=(v4, a2);
    v10 = *(this + 72);
  }

  *(this + 640) = v5;
  v13 = *(this + 21);
  if (v10 > v13 || *(this + 73) > v13)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLayoutChore::pRestoreStateFromOldState(const TSWPLayoutState &)"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"];

    return [v14 handleFailureInFunction:v15 file:v16 lineNumber:6175 description:@"Bad _typesetterCharIndex"];
  }

  return result;
}

void TSWPLayoutChore::postProcessDrawableAttachments(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D6C268];
  v3 = *MEMORY[0x277D6C268];
  v4 = *(MEMORY[0x277D6C268] + 8);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [a2 columns];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = v3;
    v10 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        location = [v12 range];
        v15.location = location;
        v15.length = length;
        if (v9 != *v2 || v10 != v2[1])
        {
          v31.location = v9;
          v31.length = v10;
          v17 = NSUnionRange(v31, v15);
          length = v17.length;
          location = v17.location;
        }

        v9 = location;
        v10 = length;
        v18 = [v12 anchoredRange];
        v20.location = v18;
        v20.length = v19;
        if (v3 != *v2 || v4 != v2[1])
        {
          v32.location = v3;
          v32.length = v4;
          v22 = NSUnionRange(v32, v20);
          v19 = v22.length;
          v18 = v22.location;
        }

        v3 = v18;
        v4 = v19;
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = v3;
    v10 = v4;
  }

  TSWPLayoutChore::p_postProcessDrawableAttachments_removeLeftovers(a1, v9, v10, *(a1 + 8), 0, a2);
  TSWPLayoutChore::p_postProcessDrawableAttachments_removeLeftovers(a1, v3, v4, *(a1 + 8), 1, a2);
}

void TSWPLayoutChore::pPopLayoutState(TSWPLayoutChore *this@<X0>, uint64_t a2@<X8>)
{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((a2 + 24));
  bzero(a2, 0x2B0uLL);
  v4 = *(this + 251);
  v5 = *(this + 250);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const TSWPLayoutState TSWPLayoutChore::pPopLayoutState()"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 754, @"Too many layoutStates popped"}];
    TSWPLayoutState::operator=(a2, this + 10);
  }

  else
  {
    TSWPLayoutState::operator=(a2, (v4 - 688));
    v7 = (*(this + 250) + v6);
    v8 = (v7 - 688);
    v9 = *(this + 251);
    if (v7 != v9)
    {
      do
      {
        TSWPLayoutState::operator=(v8, v8 + 86);
        v8 += 86;
      }

      while (v8 + 86 != v9);
      v9 = *(this + 251);
    }

    while (v9 != v8)
    {
      v9 = (v9 - 688);
      TSWPLayoutState::~TSWPLayoutState(v9);
    }

    *(this + 251) = v8;
  }
}

uint64_t TSWPLayoutChore::pHandleSync(uint64_t result, void *a2, char *a3)
{
  if (a3)
  {
    v5 = result;
    *a3 = 0;
    v6 = *(result + 2032);
    v7 = *(result + 80);
    if ((v6 == 0x7FFFFFFFFFFFFFFFLL || v7 >= *(result + 2040) + v6) && v7 < *(result + 64))
    {
      result = [*(result + 2056) nextTargetTopicNumbers];
      if (!result || (result = TSWPTopicNumberHints::equivalentState(result, (v5 + 768)), result))
      {
        if (*(v5 + 536))
        {
          v8 = *(v5 + 641);
LABEL_9:
          *a3 = v8;
          return result;
        }

        result = [a2 nextTargetFirstColumn];
        if (result)
        {
          v9 = result;
          result = [result startCharIndex];
          if (result == *(v5 + 80) - *(v5 + 2048))
          {
            result = [v9 startAnchoredCharIndex];
            if (result == *(v5 + 88) - *(v5 + 2048) && (*(v5 + 640) & 1) == 0)
            {
              v10 = [*(v5 + 2056) nextTargetFirstChildHint];
              result = objc_opt_respondsToSelector();
              if ((result & 1) == 0 || (result = [v10 isFirstHint], result))
              {
                v8 = 1;
                goto LABEL_9;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *TSWPLayoutChore::pLastColumnContainsOnlyOneAnchoredDrawable(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "columns")];
  if (result)
  {
    v3 = [result lineFragmentArray];

    return TSWPLayoutChore::pContainsOnlyOneAnchoredDrawable(v3, v3);
  }

  return result;
}

uint64_t TSWPLayoutChore::pLayoutColumns(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v13 = [a5 columns];
  v14 = v13;
  if (*(a1 + 248) == 1)
  {
    v15 = [objc_msgSend(v13 objectAtIndexedSubscript:{0), "scaleTextPercent"}];
    v16 = v15 < 0x64;
    if (v15 >= 0x64)
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 + 1;
    }
  }

  else
  {
    v16 = 0;
    v18 = *(a1 + 256);
    if (v18 == 0.0)
    {
      v17 = 100;
    }

    else
    {
      v17 = (v18 * 100.0);
    }
  }

  TSWPLayoutState::TSWPLayoutState(v46, (a1 + 80));
  TSWPLayoutChore::pPushLayoutState(a1, v46);
  v43 = v14;
  TSWPTopicNumberHints::TSWPTopicNumberHints(&v45, (a1 + 768));
  v19 = 0;
  v20 = a3 + a4;
  v21 = 100;
  v35 = 40;
  v22 = v16;
  v36 = v16;
  v38 = a3;
  while (1)
  {
    v41 = v19;
    v23 = v22;
    v24 = v22;
    v39 = v21;
    v37 = v22;
    while (1)
    {
      v40 = v23;
      if (v24)
      {
        TSWPCoreTextTypesetter::endParagraphLayout(*(a1 + 2024));
        [objc_msgSend(v43 objectAtIndexedSubscript:{0), "setScaleTextPercent:", v17}];
        TSWPLayoutChore::pSetupStateForParagraphIndex(a1, 0);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 2056) scaleTextPercentDidChange:v17];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v25 = [*(a1 + 2056) anchoredDrawablesForRelayout];
      }

      else
      {
        v25 = 0;
      }

      v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v25 copyItems:0];
      if (a3 < v20)
      {
        v27 = a3;
        do
        {
          *(a1 + 240) = v27;
          v28 = [v43 objectAtIndexedSubscript:v27];
          *(a1 + 184) = v28;
          [v28 setScaleTextPercent:v17];
          v29 = *(a1 + 184);
          v30 = *(a1 + 80);
          if (*a8 != 1)
          {
            [v29 setStartCharIndex:v30];
            [a5 maxSize];
            [*(a1 + 184) maxSize];
            [*(a1 + 8) wpKind];
            TSWPLayoutChore::pLayoutColumn(a1);
          }

          if (*a9)
          {
            v31 = 16;
          }

          else
          {
            v31 = 0;
          }

          [v29 makeEmpty:v30 layoutResultFlags:v31];
          ++v27;
        }

        while (v27 != v20);
      }

      a3 = v38;
      v21 = v39;
      v19 = v41 + 1;
      if (*(a1 + 248) == 1)
      {
        break;
      }

      v23 = 1;
      ++v41;
      v24 = v37;
      if ((v40 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v32 = [objc_msgSend(v43 "lastObject")] & 3;
    if (!(v40 & 1 | (v32 != 0)))
    {
      break;
    }

    if (((v41 == 0) & v36) == 1)
    {
      if (v32)
      {
        v21 = v17 - 1;
        v36 = 1;
        --v17;
      }

      else
      {
        v36 = 0;
        v17 = 100;
      }
    }

    else
    {
      if (((v19 == 2) & v36) == 1 && !v32)
      {
        break;
      }

      v33 = v35;
      if ((v39 - v35) > 1)
      {
        v36 = 0;
        if (v32)
        {
          v21 = v17;
        }

        else
        {
          v33 = v17;
        }

        v35 = v33;
        v17 = (v33 + v21) >> 1;
      }

      else
      {
        if (!v32 || v17 == v35)
        {
          break;
        }

        v36 = 0;
        v17 = v35;
      }
    }

    TSWPLayoutChore::pRestoreStateFromOldState(a1, v46);
    TSWPTopicNumberHints::operator=((a1 + 768), &v45);
    *a8 = 0;
    v22 = 1;
  }

LABEL_44:
  TSWPLayoutChore::pPopLayoutState(a1, v44);
  TSWPLayoutState::~TSWPLayoutState(v44);
  TSWPTopicNumberHints::~TSWPTopicNumberHints(&v45);
  TSWPLayoutState::~TSWPLayoutState(v46);
  return 0;
}

void sub_26C9452B8(_Unwind_Exception *a1)
{
  TSWPTopicNumberHints::~TSWPTopicNumberHints(&STACK[0x328]);
  TSWPLayoutState::~TSWPLayoutState(&STACK[0x358]);
  _Unwind_Resume(a1);
}

id TSWPLayoutChore::pSetupStateForParagraphIndex(TSWPLayoutChore *this, TSWPLayoutState *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = (this + 80);
  }

  if (!TSWPParagraphEnumerator::paragraphStyle((v3 + 24), 0))
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLayoutChore::pSetupStateForParagraphIndex(TSWPLayoutState *)"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 5845, @"Bad paragraphEnumerator"}];
  }

  *(v3 + 62) = 0;
  *(v3 + 63) = 0;
  *(v3 + 59) = 0x7FFFFFFFFFFFFFFFLL;
  v6 = TSWPParagraphEnumerator::paragraphStyle((v3 + 24), v3 + 5);
  v7 = *(v3 + 10);
  v8 = *(this + 8);
  if (*(v3 + 11) + v7 > v8)
  {
    *(v3 + 11) = v8 - v7;
  }

  *(v3 + 24) = TSWPParagraphEnumerator::paragraphLevel((v3 + 24));
  *(v3 + 512) = *v3 == *(v3 + 10);
  v9 = [*(this + 23) scaleTextPercent];
  if (v6 != *(v3 + 12))
  {
    *(v3 + 12) = v6;
    [v6 floatValueForProperty:87];
    *(v3 + 35) = v10;
    [v6 floatValueForProperty:88];
    *(v3 + 36) = v11;
    v12 = [v6 valueForProperty:85];
    v13 = v12;
    if (v12)
    {
      [v12 amount];
    }

    else
    {
      v14 = 1.0;
    }

    *(v3 + 34) = v14;
    *(v3 + 64) = [v13 mode];
    [v13 baselineRule];
    *(v3 + 33) = v15;
    [v6 floatValueForProperty:81];
    *(v3 + 26) = v16;
    [v6 floatValueForProperty:82];
    *(v3 + 27) = v17;
    [v6 floatValueForProperty:80];
    *(v3 + 28) = v18;
    *(v3 + 384) = [v6 intValueForProperty:91] != 0;
    *(v3 + 328) = [v6 intValueForProperty:92] != 0;
    *(v3 + 329) = [v6 intValueForProperty:89] != 0;
    *(v3 + 330) = [v6 intValueForProperty:90] != 0;
    v19 = [v6 valueForProperty:98];
    if (v19)
    {
      v20 = v19 != [MEMORY[0x277CBEB68] null];
    }

    else
    {
      v20 = 0;
    }

    *(v3 + 368) = v20;
    *(v3 + 87) = [v6 intValueForProperty:102];
    v21 = [v6 valueForProperty:103];
    if (v21)
    {
      v22 = v21;
      if (v21 == [MEMORY[0x277CBEB68] null])
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }
    }

    else
    {
      v23 = 0;
    }

    if (*(v3 + 87))
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *(v3 + 44) = v24;
    if (v24)
    {
      [v24 width];
      v25 = *(v3 + 44);
      *(v3 + 47) = v26;
      if (v25)
      {
        [objc_msgSend(v6 valueForProperty:{105), "sizeValue"}];
        goto LABEL_28;
      }
    }

    else
    {
      *(v3 + 47) = 0;
    }

    v27 = 0;
LABEL_28:
    *(v3 + 45) = v27;
    *(v3 + 346) = [v6 intValueForProperty:93] != 0;
    v28 = [v6 intValueForProperty:94];
    if (v28 == 0x80000000)
    {
      v29 = 2;
    }

    else
    {
      v29 = v28;
    }

    *(v3 + 54) = v29;
    v30 = [v6 intValueForProperty:95];
    if (v30 == 0x80000000)
    {
      v31 = 3;
    }

    else
    {
      v31 = v30;
    }

    *(v3 + 55) = v31;
    v32 = [v6 intValueForProperty:96];
    if (v32 == 0x80000000)
    {
      v33 = 3;
    }

    else
    {
      v33 = v32;
    }

    *(v3 + 56) = v33;
    [v6 floatValueForProperty:97];
    if (v34 == INFINITY)
    {
      v34 = 18.0;
    }

    *(v3 + 52) = v34;
    *(v3 + 49) = [v6 valueForProperty:84];
    [v6 floatValueForProperty:83];
    v36 = v35;
    v37 = v35 == 0.0;
    v38 = 36.0;
    if (!v37)
    {
      v38 = v36;
    }

    *(v3 + 50) = v38;
    v39 = [*(v3 + 49) count];
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = 1;
      while ([objc_msgSend(*(v3 + 49) tabAtIndex:{v41), "alignment"}] != 3)
      {
        v41 = v42;
        if (v40 <= v42++)
        {
          goto LABEL_47;
        }
      }

      *(v3 + 51) = [v6 valueForProperty:101];
    }

LABEL_47:
    v44 = *(this + 258);
    if (v44)
    {
      CFRelease(v44);
      *(this + 258) = 0;
    }

    if (*(v3 + 346) == 1)
    {
      v45 = [v6 valueForProperty:39];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [(__CFString *)v45 isEqualToString:@"__multilingual"])
      {
        System = [objc_msgSend(*(this + 1) "documentRoot")];
        *(this + 258) = System;
        if (!System)
        {
          System = CFLocaleGetSystem();
          *(this + 258) = System;
        }

        CFRetain(System);
      }

      else if (v45 && ([(__CFString *)v45 isEqualToString:@"__none"]& 1) == 0)
      {
        v47 = CFLocaleCreate(*MEMORY[0x277CBECE8], v45);
        *(this + 258) = v47;
        if (v47)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    v47 = *(this + 258);
    if (v47)
    {
LABEL_57:
      *(v3 + 53) = v47;
      goto LABEL_58;
    }

LABEL_56:
    *(v3 + 346) = 0;
    goto LABEL_57;
  }

LABEL_58:
  v48 = v9 / 100.0;
  *(this + 24) = vmulq_n_f64(*(this + 360), v48);
  v49 = *(this + 44) * v48;
  if (!*(this + 84))
  {
    v49 = *(this + 44);
  }

  *(this + 47) = v49;
  v50 = TSWPParagraphEnumerator::paragraphListStyle((v3 + 24));
  *(v3 + 23) = v50;
  [v50 labelIndentForLevel:*(v3 + 24)];
  *(v3 + 30) = v51;
  v52 = *(v3 + 23);
  v53 = *(v3 + 24);
  [*(v3 + 12) floatValueForProperty:17];
  [v52 textIndentForLevel:v53 fontSize:(v48 * v54)];
  v56 = v55 + *(v3 + 30);
  *(v3 + 29) = v56;
  *(v3 + 31) = v56 + *(v3 + 26);
  if (*(v3 + 23) && (TSWPParagraphEnumerator::isFirstParagraph((v3 + 24)) || [*(this + 1) characterAtIndex:*(v3 + 10) - 1] != 11))
  {
    *(v3 + 332) = [*(v3 + 23) labelTypeForLevel:*(v3 + 24)] != 0;
    *(v3 + 344) = TSWPParagraphEnumerator::listRunsRightToLeft((v3 + 24));
  }

  else
  {
    *(v3 + 332) = 0;
    *(v3 + 344) = 0;
  }

  *(v3 + 333) = TSWPParagraphEnumerator::paragraphRunsRightToLeft((v3 + 24));
  v57 = [v6 intValueForProperty:86];
  if (*(this + 257) && v57 == 4)
  {
    v57 = [*(this + 257) naturalAlignment];
  }

  *(v3 + 97) = v57;
  if (v57 == 4)
  {
    *(v3 + 97) = *(v3 + 333);
  }

  *(v3 + 244) = 0;
  v59 = *(v3 + 10);
  v58 = *(v3 + 11);
  if (v59 != TSWPCoreTextTypesetter::paragraphRange(*(this + 253)) || v58 != v60)
  {
    (*(**(this + 253) + 24))(*(this + 253));
  }

  if (TSWPCoreTextTypesetter::isParagraphSetUp(*(this + 253)))
  {
    v61 = [*(this + 1) attachmentIndexRangeForTextRange:{*(v3 + 10), *(v3 + 11)}];
    if (v61 < v61 + v62)
    {
      v63 = v61;
      v64 = v62;
      do
      {
        if (*(v3 + 488) == 1)
        {
          break;
        }

        v72 = 0x7FFFFFFFFFFFFFFFLL;
        [*(this + 1) attachmentAtAttachmentIndex:v63 outCharIndex:&v72];
        if (v72 != 0x7FFFFFFFFFFFFFFFLL && [*(this + 1) characterAtIndex:?] == 65532)
        {
          *(v3 + 488) = 1;
        }

        ++v63;
        --v64;
      }

      while (v64);
    }

    v65 = [*(this + 1) footnoteRangeForTextRange:{*(v3 + 10), *(v3 + 11)}];
    if (v65 < v65 + v66)
    {
      v67 = v65;
      v68 = v66;
      do
      {
        if (*(v3 + 489))
        {
          break;
        }

        v72 = 0x7FFFFFFFFFFFFFFFLL;
        [*(this + 1) footnoteAtFootnoteIndex:v67 outCharIndex:&v72];
        if (v72 != 0x7FFFFFFFFFFFFFFFLL && [*(this + 1) characterAtIndex:?] == 14)
        {
          *(v3 + 489) = 1;
        }

        ++v67;
        --v68;
      }

      while (v68);
    }
  }

  result = *(this + 1);
  *(this + 35) = result;
  if (__CFADD__(*(v3 + 10), *(v3 + 11)))
  {
    v70 = [MEMORY[0x277D6C290] currentHandler];
    v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLayoutChore::pSetupStateForParagraphIndex(TSWPLayoutState *)"];
    return [v70 handleFailureInFunction:v71 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 6065, @"Bad _state.paragraphRange.length"}];
  }

  return result;
}

void TSWPLayoutChore::pLayoutColumn(uint64_t a1)
{
  [*(a1 + 2056) autosizeFlags];
  if (*(a1 + 56) >= 3u)
  {
    v3 = *(a1 + 184);
    if (v3)
    {
      [v3 frameBounds];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0xFFF0000000000000;
  }

  *(a1 + 400) = v2;
  TSWPLayoutState::TSWPLayoutState(v7, (a1 + 80));
  TSWPLayoutChore::pPushLayoutState(a1, v7);
  TSWPTopicNumberHints::TSWPTopicNumberHints(&v6, (a1 + 768));
  v4 = *([*(a1 + 184) lineFragmentArray] + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  [*(a1 + 184) contentBottom];
  v5 = *(a1 + 248);
  *(a1 + 249) = (([*(a1 + 184) layoutResultFlags] >> 8) & 1) != v5;
  operator new();
}

void sub_26C9460CC(_Unwind_Exception *a1)
{
  if (STACK[0x300])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x300]);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  TSWPTopicNumberHints::~TSWPTopicNumberHints(&STACK[0x318]);
  TSWPLayoutState::~TSWPLayoutState(&STACK[0x348]);
  _Unwind_Resume(a1);
}

unint64_t TSWPLayoutChore::pUpdateSmartFieldsForCurrentColumn(id *a1)
{
  v2 = [a1[23] range];
  v4 = v3;
  result = [a1[1] characterCount];
  if (v2 + v4 < result)
  {

    return TSWPLayoutChore::pIsLastColumn(a1);
  }

  return result;
}

void *TSWPLayoutChore::validatedLayoutForInlineAttachment(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 2056) layoutForInlineDrawable:{objc_msgSend(a2, "drawable")}];
  if (a3 && a4)
  {
    [*(a3 + 104) wpBounds];
    Width = CGRectGetWidth(v11);
    if (([*(a1 + 2056) autosizeFlags] & 0xC) != 0)
    {
      [*(a1 + 2056) maxSize];
      Width = v9;
    }

    [v7 willLayoutInlineWithTextAttributes:a4 columnWidth:{fmax(Width - *(a3 + 248) - *(a3 + 216), 18.0)}];
  }

  [objc_msgSend(v7 "layoutController")];
  return v7;
}

uint64_t TSWPLayoutChore::validatedLayoutForAnchoredAttachment(TSWPLayoutChore *this, TSWPDrawableAttachment *a2)
{
  v2 = *(this + 257);
  v3 = [(TSWPDrawableAttachment *)a2 drawable];

  return [v2 validatedLayoutForAnchoredDrawable:v3];
}

uint64_t TSWPLayoutChore::protectedLayoutColumnsWithFlags(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  TSWPLayoutChore::pLayoutColumns(a1, a2, a3, a4, a5, &v9, &v8 + 1, &v8, &v7);

  return [a5 setNeedsDisplay];
}

id *TSWPLayoutState::operator=(id *a1, id *a2)
{
  if (a2 != a1)
  {
    v4 = a2[85];

    memcpy(a1, a2, 0x2B0uLL);
    v5 = a1[85];
  }

  return a1;
}

uint64_t TSWPLayoutChore::pSetupStateForColumnMetrics(id *this)
{
  result = [this[257] columnMetricsForCharIndex:this[10] outRange:this + 25];
  if (result)
  {
    if (result != this[24])
    {
      this[24] = result;
      this[32] = 0;
      [result adjustedInsets];
      this[27] = v3;
      this[29] = [this[24] columnCount];
      *(this + 248) = [this[24] shrinkTextToFit];
      result = objc_opt_respondsToSelector();
      if (result)
      {
        result = [this[24] textScaleFactor];
        this[32] = v4;
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLayoutChore::pSetupStateForColumnMetrics()"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 5814, @"invalid nil value for '%s'", "newColumnMetrics"}];
    this[24] = 0;
    this[32] = 0;
    this[27] = 0;
    result = [this[1] characterCount];
    this[25] = 0;
    this[26] = result;
    this[29] = 1;
    *(this + 248) = 0;
  }

  this[30] = 0;
  return result;
}

uint64_t TSWPLayoutChore::pResetPrevLineBlockEnd(uint64_t this)
{
  v1 = this;
  if (*(this + 56) >= 3u)
  {
    this = *(this + 184);
    if (this)
    {
      this = [this frameBounds];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0xFFF0000000000000;
  }

  *(v1 + 400) = v2;
  return this;
}

void sub_26C949CF0(_Unwind_Exception *a1)
{
  TSWPLayoutState::~TSWPLayoutState(&STACK[0xE60]);
  TSWPLayoutState::~TSWPLayoutState(&STACK[0x1130]);
  if (STACK[0x1438])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x1438]);
  }

  _Unwind_Resume(a1);
}

void TSWPLayoutChore::addParagraphAdornmentsToColumn(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 lineFragmentArray];
  v7 = [v5 storage];
  v157 = *MEMORY[0x277D6C268];
  v8 = [v5 range];
  v145 = v9;
  v10 = [v7 selectionRangeForCharIndex:v8];
  v143 = v11;
  v144 = v10;
  if (v7)
  {
    [v7 paragraphEnumeratorAtCharIndex:v8 styleProvider:a3];
  }

  else
  {
    memset(&v184, 0, sizeof(v184));
  }

  [v5 wpBounds];
  r1 = v12;
  v140 = v14;
  v141 = v13;
  rect = v15;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v18 = *MEMORY[0x277D6C268];
  v175 = *(MEMORY[0x277D6C268] + 8);
  v19 = [v7 wpKind];
  v20 = 6.0;
  if (v19 == 5)
  {
    v20 = 0.0;
  }

  v162 = v20;
  v149 = *MEMORY[0x277CBF3A8];
  v165 = *(MEMORY[0x277CBF3A8] + 8);
  v146 = v165;
  if (a2)
  {
    [a2 adjustedInsets];
    v146 = v21;
  }

  v142 = v8;
  v22 = **v6;
  v152 = *(*v6 + 1);
  if (v22 == v152)
  {
    v82 = 0;
    v106 = 0;
    v107 = 0;
    r1_8 = x;
    r1_16 = width;
    r1_24 = y;
    v25 = height;
    goto LABEL_91;
  }

  v138 = v6;
  v139 = v7;
  v150 = 0;
  v171 = 0;
  v173 = 0;
  v23 = 0;
  v159 = 0.0;
  v160 = 0.0;
  v24 = v157;
  v158 = 0.0;
  v163 = 0.0;
  v25 = height;
  r1_16 = width;
  r1_24 = y;
  r1_8 = x;
  v148 = v5;
  do
  {
    v26 = *v22;
    v27 = **v22;
    r2 = *(*v22 + 1);
    if (v27 < v18 || v27 - v18 >= v175)
    {
      v29 = TSWPParagraphEnumerator::paragraphTextRange(&v184);
      if (v27 >= v29 + v30 && !TSWPParagraphEnumerator::isLastParagraph(&v184))
      {
        TSWPParagraphEnumerator::operator++(&v184);
        if (v27 != TSWPParagraphEnumerator::paragraphTextRange(&v184))
        {
          v31 = [MEMORY[0x277D6C290] currentHandler];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *, id<TSWPColumnMetrics>, id<TSWPStyleProvider>)"}];
          [v31 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 1012, @"paragraph enumerator is out of sync with line fragments"}];
        }
      }

      v33 = TSWPParagraphEnumerator::paragraphTextRange(&v184);
      v175 = v34;
      v18 = v33;
      v35 = TSWPParagraphEnumerator::paragraphStyle(&v184, 0);
      v36 = [v35 valueForProperty:98];
      if (v171 && ([v171 isEqual:v36] & 1) == 0)
      {
        v177 = 1;
        v178 = 0;
        v179 = v171;
        v180 = r1_8;
        v181 = r1_24;
        v182 = r1_16;
        v183 = v25;
        [v5 addAdornmentRect:&v177];
        v157 = *MEMORY[0x277D6C268];
      }

      v37 = v36 == [MEMORY[0x277CBEB68] null] ? 0 : v36;
      v171 = v37;
      if (v35 != v150)
      {
        v38 = [v35 intValueForProperty:102];
        v39 = v38;
        v41 = v23 == 4 && v38 != 4;
        v151 = v41;
        if (v38)
        {
          v42 = [v35 valueForProperty:103];
          if (v42)
          {
            v43 = [MEMORY[0x277CBEB68] null];
            v44 = v42 != v43;
            if (v42 == v43)
            {
              v42 = 0;
            }
          }

          else
          {
            v44 = 0;
          }

          [objc_msgSend(v35 valueForProperty:{105), "sizeValue"}];
          v45 = v47;
          v46 = v48;
          v163 = 0.0;
          if (v44)
          {
            [v42 width];
            v163 = v49 * 0.5;
          }

          if (v23 == 4)
          {
            v5 = v148;
            if (v173)
            {
              if (v45 != v149)
              {
                goto LABEL_48;
              }

              if (v46 != v165)
              {
                goto LABEL_48;
              }

              v5 = v148;
              if (([v173 isEqual:v42] & 1) == 0)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            v5 = v148;
          }
        }

        else
        {
          v42 = 0;
          v45 = *MEMORY[0x277CBF3A8];
          v46 = *(MEMORY[0x277CBF3A8] + 8);
        }

        if (!v151)
        {
LABEL_49:
          if ((v39 - 1) > 2)
          {
            v165 = v46;
          }

          else
          {
            [v35 floatValueForProperty:82];
            v55 = v54;
            [v35 floatValueForProperty:80];
            v57 = v56;
            [v35 floatValueForProperty:81];
            v59 = v58;
            [v35 floatValueForProperty:104];
            if (v57 >= v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = v57;
            }

            v165 = v46;
            v159 = v61;
            v160 = rect - v61 - v55;
            v158 = v160 * v60;
          }

          v149 = v45;
          v23 = v39;
          v173 = v42;
          v150 = v35;
          goto LABEL_56;
        }

LABEL_48:
        [v173 width];
        v51 = v50 * 0.5;
        v52 = -(v162 + v149 + v51);
        v53 = -(v162 + v165 + v51);
        v185.origin.x = x;
        v185.origin.y = y;
        v185.size.width = width;
        v185.size.height = height;
        v186 = CGRectInset(v185, v52, v53);
        x = v186.origin.x;
        y = v186.origin.y;
        width = v186.size.width;
        height = v186.size.height;
        v177 = 2;
        v178 = v173;
        v179 = 0;
        v180 = x;
        v181 = y;
        v182 = width;
        v183 = height;
        [v5 addAdornmentRect:&v177];
        v24 = *MEMORY[0x277D6C268];

        goto LABEL_49;
      }
    }

LABEL_56:
    if (v27 == v18 && (v23 & 0xFFFFFFFD) == 1)
    {
      v63 = v25;
      v64 = v26[15];
      v65 = v26[16];
      v66 = v26[18];
      v67 = v26[4];
      v68 = v26[5];
      v177 = 2;
      v69 = v173;
      v70 = v65 + v66;
      if (v65 + v66 < v64)
      {
        v70 = v64;
      }

      v178 = v69;
      v179 = 0;
      v180 = r1 + v159 + (v160 - v158) * 0.5;
      v181 = v67 + v68 - (v163 + v165 + v162 + v70);
      v182 = v158;
      v183 = 0.0;
      [v5 addAdornmentRect:{&v177, v138, v139}];

      v25 = v63;
    }

    v71 = r2 + v27;
    if (r2 + v27 == v175 + v18 && (v23 & 0xFFFFFFFE) == 2)
    {
      v73 = v25;
      v74 = v26[17];
      v75 = v26[4];
      v76 = v26[5];
      v177 = 2;
      v178 = v173;
      v179 = 0;
      v180 = r1 + v159 + (v160 - v158) * 0.5;
      v181 = v163 + v165 + v162 + v74 + v75 + v76;
      v182 = v158;
      v183 = 0.0;
      [v5 addAdornmentRect:&v177];

      v25 = v73;
    }

    if (v171)
    {
      v78 = v26[7];
      v80 = v26[20] + v26[17] + v26[4] + v26[5];
      v81 = v80 - v78;
      if (v157 == 0x7FFFFFFFFFFFFFFFLL)
      {
        r1_8 = v26[6];
        r1_16 = v26[8];
        r1_24 = v26[7];
        v25 = v80 - v78;
        v157 = v27;
      }

      else
      {
        v187.origin.x = r1_8;
        v187.size.width = r1_16;
        v187.origin.y = r1_24;
        v187.size.height = v25;
        v77 = *(v26 + 6);
        v79 = *(v26 + 8);
        v188 = CGRectUnion(v187, *(&v78 - 1));
        r1_8 = v188.origin.x;
        r1_16 = v188.size.width;
        r1_24 = v188.origin.y;
        v25 = v188.size.height;
      }
    }

    v82 = v23 == 4;
    if (v23 != 4 || !v173)
    {
      v27 = v24;
      goto LABEL_88;
    }

    v83 = v25;
    v84 = v26[20];
    v85 = v26[6];
    v86 = v26[7];
    v87 = v26[8];
    v88 = v26[4] + v26[5];
    v89 = v84 + v26[17] + v88 - v86;
    r2a = v87;
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v90 = v26[18];
      v91 = v26[15];
      v92 = v26[16];
      v93 = *(v26 + 6);
      v94 = *(v26 + 7);
      v95 = v89;
      MaxY = CGRectGetMaxY(*(&v87 - 2));
      v97 = v90 + v92;
      if (v90 + v92 < v91)
      {
        v97 = v91;
      }

      v86 = v88 - v97;
      v89 = MaxY - (v88 - v97);
      x = *MEMORY[0x277CBF398];
      y = *(MEMORY[0x277CBF398] + 8);
      width = *(MEMORY[0x277CBF398] + 16);
      height = *(MEMORY[0x277CBF398] + 24);
      v25 = v83;
    }

    else
    {
      if (v71 != v175 + v18)
      {
        v27 = v24;
        v25 = v83;
        goto LABEL_85;
      }

      v98 = *(v26 + 6);
      v99 = *(v26 + 7);
      v100 = v84 + v26[17] + v88 - v86;
      v25 = v83;
      v89 = CGRectGetMaxY(*(&v87 - 2)) - v84 - v86;
      v27 = v24;
    }

    v87 = r2a;
LABEL_85:
    v101 = v85;
    v102 = v86;
    v103 = v89;
    if (CGRectIsEmpty(*(&v87 - 2)))
    {
      v104 = [MEMORY[0x277D6C290] currentHandler];
      v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static void TSWPLayoutChore::addParagraphAdornmentsToColumn(TSWPColumn *, id<TSWPColumnMetrics>, id<TSWPStyleProvider>)"}];
      [v104 handleFailureInFunction:v105 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 1136, @"Adding empty border stroke rect"}];
    }

    v189.origin.x = x;
    v189.origin.y = y;
    v189.size.width = width;
    v189.size.height = height;
    v200.origin.x = v85;
    v200.origin.y = v86;
    v200.size.width = r2a;
    v200.size.height = v89;
    v190 = CGRectUnion(v189, v200);
    x = v190.origin.x;
    y = v190.origin.y;
    width = v190.size.width;
    height = v190.size.height;
LABEL_88:
    v22 += 2;
    v24 = v27;
  }

  while (v22 != v152);
  v6 = v138;
  v7 = v139;
  v107 = v171;
  v106 = v173;
LABEL_91:
  if (v107 | v106)
  {
    v108 = v25;
    Object = TSWPLineFragmentArray::lastObject(*v6);
    v110 = Object[16];
    v111 = Object[17];
    v174 = Object[15];
    v176 = Object[18];
    v112 = Object[20];
    v113 = Object[4];
    v114 = Object[5];
    v191.origin.x = r1;
    v191.size.height = v140;
    v191.origin.y = v141;
    v191.size.width = rect;
    v115 = CGRectGetMaxY(v191);
    v116 = v112 + v111 + v113 + v114;
    v117 = v146 + v115;
    v118 = v146 + v115 - v116;
    if (v107)
    {
      v119 = v142 + v145;
      v120 = v144 + v143;
      v121 = v108;
      if (v142 + v145 <= v144 || v119 >= v120 || (v122 = [v7 characterAtIndex:v119 - 1], v122 <= 0xF) && ((1 << v122) & 0x9070) != 0)
      {
        if (v119 == v120 && v118 > 0.0 && v118 < v111 + v110 + v176)
        {
          v192.origin.x = r1_8;
          v192.size.width = r1_16;
          v192.origin.y = r1_24;
          v192.size.height = v108;
          v121 = v117 - CGRectGetMinY(v192);
        }
      }

      else
      {
        v161 = *MEMORY[0x277CBF398];
        r2b = *(MEMORY[0x277CBF398] + 8);
        v130 = *(MEMORY[0x277CBF398] + 24);
        v164 = *(MEMORY[0x277CBF398] + 16);
        v194.origin.x = r1;
        v194.size.height = v140;
        v194.origin.y = v141;
        v194.size.width = rect;
        v172 = CGRectGetMaxY(v194);
        v195.origin.x = r1_8;
        v195.size.width = r1_16;
        v195.origin.y = r1_24;
        v195.size.height = v121;
        v131 = v146 + v172 - CGRectGetMinY(v195);
        if (v121 < v131)
        {
          v121 = v131;
        }

        if (v130 != 0.0)
        {
          v196.origin.x = v161;
          v196.origin.y = r2b;
          v196.size.width = v164;
          v196.size.height = v130;
          v132 = CGRectGetMinY(v196) - r1_24;
          if (v132 < v121)
          {
            v121 = v132;
          }
        }
      }

      v177 = 1;
      v178 = 0;
      v179 = v107;
      v180 = r1_8;
      v181 = r1_24;
      v182 = r1_16;
      v183 = v121;
      [v5 addAdornmentRect:&v177];
    }

    if (v106 && v82)
    {
      v125 = v142 + v145;
      v126 = v144 + v143;
      if (v142 + v145 <= v144 || v125 >= v126 || (v127 = [v7 characterAtIndex:v125 - 1], v127 <= 0xF) && ((1 << v127) & 0x9070) != 0)
      {
        if (v125 != v126)
        {
          goto LABEL_127;
        }

        v128 = v106;
        if (v118 > 0.0)
        {
          v129 = v174;
          if (v110 >= v174)
          {
            v129 = v110;
          }

          if (v118 < v111 + v176 + v129)
          {
            v193.origin.x = x;
            v193.origin.y = y;
            v193.size.width = width;
            v193.size.height = height;
            height = v117 - CGRectGetMinY(v193);
            goto LABEL_127;
          }
        }
      }

      else
      {
        v197.origin.x = r1;
        v197.size.height = v140;
        v197.origin.y = v141;
        v197.size.width = rect;
        v133 = v146 + CGRectGetMaxY(v197) - y;
        if (height < v133)
        {
          height = v133;
        }

LABEL_127:
        v128 = v106;
      }

      v198.origin.x = x;
      v198.origin.y = y;
      v198.size.width = width;
      v198.size.height = height;
      v199 = CGRectInset(v198, -v162 - v149, -v162 - v165);
      v134 = v199.origin.x;
      v135 = v199.origin.y;
      v136 = v199.size.width;
      v137 = v199.size.height;
      v177 = 2;
      v178 = v128;
      v179 = 0;
      v180 = v134;
      v181 = v135;
      v182 = v136;
      v183 = v137;
      [v5 addAdornmentRect:&v177];
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v184);
}