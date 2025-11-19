@interface TSWPRangeMap
- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 affinity:(int)a5;
- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 isBackwardAffinities:(const void *)a5;
- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedPairIndexes:(const void *)a4;
- (_NSRange)mappedCharRange:(_NSRange)a3;
- (_NSRange)subRange;
- (_NSRange)unmappedCharRange:(_NSRange)a3;
- (id).cxx_construct;
- (unint64_t)mappedCharIndex:(unint64_t)a3;
- (unint64_t)p_extendBackwardMappedIndex:(unint64_t)a3;
- (unint64_t)p_extendForwardMappedIndex:(unint64_t)a3;
- (unint64_t)unmappedCharIndex:(unint64_t)a3;
- (vector<_TSWPCharIndexAndAffinity,)mappedIndexes;
- (vector<_TSWPCharIndexAndAffinity,)unmappedIndexes;
- (void)adjustByDelta:(int64_t)a3 startingAt:(unint64_t)a4;
- (void)setMappedIndexes:()vector<_TSWPCharIndexAndAffinity;
- (void)setUnmappedIndexes:()vector<_TSWPCharIndexAndAffinity;
@end

@implementation TSWPRangeMap

- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedPairIndexes:(const void *)a4
{
  length = a3.length;
  location = a3.location;
  v7 = objc_msgSend_initWithSubRange_unmappedIndexes_affinity_(self, a2, a3.location, a3.length, a4, 0);
  v9 = v7;
  if (v7)
  {
    *(v7 + 8) = location;
    *(v7 + 16) = length;
    v10 = *(a4 + 1) - *a4;
    if ((v10 & 8) != 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPRangeMap initWithSubRange:unmappedPairIndexes:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 35, 0, "expected an even number of indexes");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }

    begin = v9->_unmappedIndexes.__begin_;
    end = v9->_unmappedIndexes.__end_;
    v20 = (end - begin) >> 4;
    if (v20 != v10 >> 3 || v10 >> 3 != (v9->_mappedIndexes.__end_ - v9->_mappedIndexes.__begin_) >> 4)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPRangeMap initWithSubRange:unmappedPairIndexes:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 36, 0, "index vector size is wrong");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      begin = v9->_unmappedIndexes.__begin_;
      end = v9->_unmappedIndexes.__end_;
      v20 = (end - begin) >> 4;
    }

    if (end != begin)
    {
      v28 = 0;
      v29 = (v9->_mappedIndexes.__begin_ + 24);
      v30 = (begin + 24);
      do
      {
        *(v30 - 4) = 2;
        *v30 = 1;
        v30 += 8;
        *(v29 - 4) = 2;
        *v29 = 1;
        v29 += 8;
        v28 += 2;
      }

      while (v28 < v20);
    }
  }

  return v9;
}

- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 isBackwardAffinities:(const void *)a5
{
  length = a3.length;
  location = a3.location;
  v9 = objc_msgSend_initWithSubRange_unmappedIndexes_affinity_(self, a2, a3.location, a3.length, a4, 0);
  v11 = v9;
  if (v9)
  {
    v9->_subRange.location = location;
    v9->_subRange.length = length;
    v13 = *a4;
    v12 = *(a4 + 1);
    v14 = (v12 - *a4) >> 3;
    if (v14 != (v9->_unmappedIndexes.__end_ - v9->_unmappedIndexes.__begin_) >> 4 || v14 != (v9->_mappedIndexes.__end_ - v9->_mappedIndexes.__begin_) >> 4)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPRangeMap initWithSubRange:unmappedIndexes:isBackwardAffinities:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 56, 0, "index vector size is wrong");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    if (v12 != v13)
    {
      v22 = 0;
      v23 = *a5;
      if (v14 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v14;
      }

      v25 = (v11->_unmappedIndexes.__begin_ + 8);
      v26 = (v11->_mappedIndexes.__begin_ + 8);
      do
      {
        if ((*(v23 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22))
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        *v25 = v27;
        v25 += 4;
        *v26 = v27;
        v26 += 4;
        ++v22;
      }

      while (v24 != v22);
    }
  }

  return v11;
}

- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 affinity:(int)a5
{
  length = a3.length;
  location = a3.location;
  v42.receiver = self;
  v42.super_class = TSWPRangeMap;
  v9 = [(TSWPRangeMap *)&v42 init];
  v10 = v9;
  if (v9)
  {
    v9->_subRange.location = location;
    v9->_subRange.length = length;
    v12 = *a4;
    v11 = *(a4 + 1);
    v13 = (v11 - *a4) >> 3;
    sub_276E49FD4(&v9->_unmappedIndexes.__begin_, v13);
    sub_276E49FD4(&v10->_mappedIndexes.__begin_, v13);
    v38 = v13;
    if (v11 != v12)
    {
      v15 = 0;
      if (v38 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v38;
      }

      v17 = 0x277D81000uLL;
      v18 = 0x277CCA000uLL;
      v37 = a5;
      do
      {
        v19 = *(*a4 + 8 * v15);
        v20 = v10->_subRange.location;
        v21 = v10->_subRange.length;
        v22 = v19 - v20 < v21 && v19 >= v20;
        v23 = v21 + v20;
        if (!v22 && v19 != v23)
        {
          v25 = *(v17 + 336);
          v39 = objc_msgSend_stringWithUTF8String_(*(v18 + 3240), v14, "[TSWPRangeMap initWithSubRange:unmappedIndexes:affinity:]");
          v26 = v16;
          v27 = a4;
          v28 = v17;
          v29 = v18;
          v31 = objc_msgSend_stringWithUTF8String_(*(v18 + 3240), v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
          v32 = NSStringFromRange(v10->_subRange);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v39, v31, 82, 0, "index is out of bounds: %lu : %{public}@ (%lu)", v19, v32, v38);

          v17 = v28;
          objc_msgSend_logBacktraceThrottled(*(v28 + 336), v34, v35);
          a4 = v27;
          v16 = v26;
          a5 = v37;
          v18 = v29;
        }

        *&v41 = v19;
        *(&v41 + 1) = a5;
        sub_276E4A074(&v10->_unmappedIndexes, &v41);
        *&v40 = v15 + v19 - v10->_subRange.location;
        *(&v40 + 1) = a5;
        sub_276E4A074(&v10->_mappedIndexes, &v40);
        ++v15;
      }

      while (v16 != v15);
    }
  }

  return v10;
}

- (unint64_t)mappedCharIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRangeMap mappedCharIndex:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 102, 0, "shouldn't be trying to map NSNotFound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = a3 - objc_msgSend_subRange(self, a2, a3);
  objc_msgSend_subRange(self, v13, v14);
  if (v12 > v15)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  begin = self->_unmappedIndexes.__begin_;
  end = self->_unmappedIndexes.__end_;
  if (end != begin)
  {
    v20 = (end - begin) >> 4;
    end = self->_unmappedIndexes.__begin_;
    do
    {
      v21 = v20 >> 1;
      v22 = (end + 16 * (v20 >> 1));
      v24 = *v22;
      v23 = (v22 + 2);
      v20 += ~(v20 >> 1);
      if (v24 > a3)
      {
        v20 = v21;
      }

      else
      {
        end = v23;
      }
    }

    while (v20);
  }

  return a3 - objc_msgSend_subRange(self, v15, v16) + ((end - begin) >> 4);
}

- (unint64_t)unmappedCharIndex:(unint64_t)a3
{
  v3 = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRangeMap unmappedCharIndex:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 118, 0, "shouldn't be trying to map NSNotFound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  begin = self->_mappedIndexes.__begin_;
  end = self->_mappedIndexes.__end_;
  if (end == begin)
  {
    v15 = self->_mappedIndexes.__end_;
  }

  else
  {
    v14 = (end - begin) >> 4;
    v15 = self->_mappedIndexes.__begin_;
    do
    {
      v16 = v14 >> 1;
      v17 = (v15 + 16 * (v14 >> 1));
      v19 = *v17;
      v18 = (v17 + 2);
      v14 += ~(v14 >> 1);
      if (v19 < v3)
      {
        v15 = v18;
      }

      else
      {
        v14 = v16;
      }
    }

    while (v14);
  }

  if (end == v15 || *v15 != v3)
  {
    return v3 - ((v15 - begin) >> 4) + objc_msgSend_subRange(self, a2, a3);
  }

  v20 = *(v15 + 2);
  if (v20 == 2)
  {
    ++v3;
  }

  else if (v20 == 1)
  {
    --v3;
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRangeMap unmappedCharIndex:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 135, 0, "bad affinity");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  return objc_msgSend_unmappedCharIndex_(self, a2, v3);
}

- (unint64_t)p_extendBackwardMappedIndex:(unint64_t)a3
{
  if (a3)
  {
    begin = self->_mappedIndexes.__begin_;
    end = self->_mappedIndexes.__end_;
    if (end != begin)
    {
      v5 = a3 - 1;
      v6 = (end - begin) >> 4;
      do
      {
        v7 = v6 >> 1;
        v8 = (begin + 16 * (v6 >> 1));
        v10 = *v8;
        v9 = (v8 + 2);
        v6 += ~(v6 >> 1);
        if (v10 < v5)
        {
          begin = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
      if (begin != end && *begin == v5 && *(begin + 2) == 2)
      {
        --a3;
      }
    }
  }

  return a3;
}

- (unint64_t)p_extendForwardMappedIndex:(unint64_t)a3
{
  begin = self->_mappedIndexes.__begin_;
  end = self->_mappedIndexes.__end_;
  if (end != begin)
  {
    v5 = a3 + 1;
    v6 = (end - begin) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = (begin + 16 * (v6 >> 1));
      v10 = *v8;
      v9 = (v8 + 2);
      v6 += ~(v6 >> 1);
      if (v10 < v5)
      {
        begin = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    if (begin != end && *begin == v5 && *(begin + 2) == 1)
    {
      ++a3;
    }
  }

  return a3;
}

- (_NSRange)mappedCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v39.location = objc_msgSend_subRange(self, a2, a3.location);
  v39.length = v6;
  v35.location = location;
  v35.length = length;
  v8 = NSIntersectionRange(v35, v39);
  if (v8.length)
  {
    v9 = objc_msgSend_subRange(self, v8.length, v7);
    if (location <= v9)
    {
      v11 = objc_msgSend_mappedCharIndex_(self, v10, v9);
    }

    else
    {
      v11 = objc_msgSend_mappedCharIndex_(self, v10, location);
    }

    v13 = objc_msgSend_p_extendBackwardMappedIndex_(self, v12, v11);
    v16 = objc_msgSend_subRange(self, v14, v15);
    v18 = &v17[v16];
    if (&v17[v16] >= location + length)
    {
      v18 = (location + length);
    }

    v19 = objc_msgSend_mappedCharIndex_(self, v17, (v18 - 1));
    v22 = objc_msgSend_p_extendForwardMappedIndex_(self, v20, v19) - v13 + 1;
  }

  else if (location >= objc_msgSend_subRange(self, 0, v7))
  {
    objc_msgSend_subRange(self, v21, v23);
    v22 = 0;
    v13 = &v21[(self->_mappedIndexes.__end_ - self->_mappedIndexes.__begin_) >> 4];
  }

  else
  {
    v13 = 0;
    v22 = 0;
  }

  if (v22 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPRangeMap mappedCharRange:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeMap.mm");
    v36.location = location;
    v36.length = length;
    v28 = NSStringFromRange(v36);
    v37.location = v13;
    v37.length = v22;
    v29 = NSStringFromRange(v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v27, 195, 0, "Bad range mapping: %{public}@ -> %{public}@", v28, v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  if (v22 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v33 = v13;
  }

  else
  {
    v33 = *MEMORY[0x277D81490];
  }

  if (v22 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v34 = v22;
  }

  else
  {
    v34 = *(MEMORY[0x277D81490] + 8);
  }

  result.length = v34;
  result.location = v33;
  return result;
}

- (_NSRange)unmappedCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_msgSend_unmappedCharIndex_(self, a2, a3.location);
  v8 = v6;
  if (length)
  {
    v9 = objc_msgSend_unmappedCharIndex_(self, v7, length + location - 1) + 1;
  }

  else
  {
    v9 = v6;
  }

  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v10 - v11;
  result.length = v12;
  result.location = v11;
  return result;
}

- (void)adjustByDelta:(int64_t)a3 startingAt:(unint64_t)a4
{
  if (objc_msgSend_subRange(self, a2, a3) >= a4)
  {
    self->_subRange.location += a3;
  }

  begin = self->_unmappedIndexes.__begin_;
  end = self->_unmappedIndexes.__end_;
  while (begin != end)
  {
    if (*begin >= a4)
    {
      *begin += a3;
    }

    begin = (begin + 16);
  }
}

- (_NSRange)subRange
{
  length = self->_subRange.length;
  location = self->_subRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (vector<_TSWPCharIndexAndAffinity,)unmappedIndexes
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_276E4A910(retstr, self->_unmappedIndexes.__begin_, self->_unmappedIndexes.__end_, (self->_unmappedIndexes.__end_ - self->_unmappedIndexes.__begin_) >> 4);
}

- (void)setUnmappedIndexes:()vector<_TSWPCharIndexAndAffinity
{
  p_unmappedIndexes = &self->_unmappedIndexes;
  if (p_unmappedIndexes != a3)
  {
    sub_276E4AA10(p_unmappedIndexes, a3->__begin_, a3->__end_, (a3->__end_ - a3->__begin_) >> 4);
  }
}

- (vector<_TSWPCharIndexAndAffinity,)mappedIndexes
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_276E4A910(retstr, self->_mappedIndexes.__begin_, self->_mappedIndexes.__end_, (self->_mappedIndexes.__end_ - self->_mappedIndexes.__begin_) >> 4);
}

- (void)setMappedIndexes:()vector<_TSWPCharIndexAndAffinity
{
  p_mappedIndexes = &self->_mappedIndexes;
  if (p_mappedIndexes != a3)
  {
    sub_276E4AA10(p_mappedIndexes, a3->__begin_, a3->__end_, (a3->__end_ - a3->__begin_) >> 4);
  }
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end