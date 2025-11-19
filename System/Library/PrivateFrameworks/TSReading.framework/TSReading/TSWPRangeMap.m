@interface TSWPRangeMap
- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 affinity:(int)a5;
- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedPairIndexes:(const void *)a4;
- (_NSRange)mappedCharRange:(_NSRange)a3;
- (_NSRange)unmappedCharRange:(_NSRange)a3;
- (id).cxx_construct;
- (unint64_t)mappedCharIndex:(unint64_t)a3;
- (unint64_t)p_extendLeftMappedIndex:(unint64_t)a3;
- (unint64_t)p_extendRightMappedIndex:(unint64_t)a3;
- (unint64_t)unmappedCharIndex:(unint64_t)a3;
- (void)adjustByDelta:(int64_t)a3;
@end

@implementation TSWPRangeMap

- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedPairIndexes:(const void *)a4
{
  length = a3.length;
  location = a3.location;
  v7 = [(TSWPRangeMap *)self initWithSubRange:a3.location unmappedIndexes:a3.length affinity:a4, 0];
  v8 = v7;
  if (v7)
  {
    v7->_subRange.location = location;
    v7->_subRange.length = length;
    v9 = *(a4 + 1) - *a4;
    v10 = v9 >> 3;
    if ((v9 & 8) != 0)
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeMap initWithSubRange:unmappedPairIndexes:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeMap.mm"), 43, @"expected an even number of indexes"}];
    }

    begin = v8->_unmappedIndexes.__begin_;
    end = v8->_unmappedIndexes.__end_;
    if (v10 != (end - begin) >> 4 || v10 != (v8->_mappedIndexes.__end_ - v8->_mappedIndexes.__begin_) >> 4)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeMap initWithSubRange:unmappedPairIndexes:]"];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeMap.mm"), 45, @"index vector size is wrong"}];
      begin = v8->_unmappedIndexes.__begin_;
      end = v8->_unmappedIndexes.__end_;
    }

    if (end != begin)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(*a4 + 8 * v18);
        v20 = v8->_subRange.location;
        v21 = v8->_subRange.length;
        v22 = v19 - v20 < v21 && v19 >= v20;
        v23 = v21 + v20;
        if (!v22 && v19 != v23)
        {
          v25 = [MEMORY[0x277D6C290] currentHandler];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeMap initWithSubRange:unmappedPairIndexes:]"];
          [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeMap.mm"), 50, @"index is out of bounds"}];
          begin = v8->_unmappedIndexes.__begin_;
          end = v8->_unmappedIndexes.__end_;
        }

        v27 = begin + v17;
        *(v27 + 2) = 2;
        *(v27 + 6) = 1;
        v28 = v8->_mappedIndexes.__begin_ + v17;
        *(v28 + 2) = 2;
        *(v28 + 6) = 1;
        v18 += 2;
        v17 += 32;
      }

      while (v18 < (end - begin) >> 4);
    }
  }

  return v8;
}

- (TSWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 affinity:(int)a5
{
  length = a3.length;
  location = a3.location;
  v27.receiver = self;
  v27.super_class = TSWPRangeMap;
  v9 = [(TSWPRangeMap *)&v27 init];
  v10 = v9;
  if (v9)
  {
    v9->_subRange.location = location;
    v9->_subRange.length = length;
    v12 = *a4;
    v11 = *(a4 + 1);
    v13 = (v11 - *a4) >> 3;
    std::vector<_TSWPCharIndexAndAffinity>::reserve(&v9->_unmappedIndexes.__begin_, v13);
    std::vector<_TSWPCharIndexAndAffinity>::reserve(&v10->_mappedIndexes.__begin_, v13);
    if (v11 != v12)
    {
      v14 = 0;
      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      do
      {
        v16 = *(*a4 + 8 * v14);
        v17 = v10->_subRange.location;
        v18 = v10->_subRange.length;
        v19 = v16 - v17 < v18 && v16 >= v17;
        v20 = v18 + v17;
        if (!v19 && v16 != v20)
        {
          v22 = [MEMORY[0x277D6C290] currentHandler];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeMap initWithSubRange:unmappedIndexes:affinity:]"];
          [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeMap.mm"), 81, @"index is out of bounds"}];
        }

        *&v26 = v16;
        *(&v26 + 1) = a5;
        std::vector<_TSWPCharIndexAndAffinity>::push_back[abi:nn200100](&v10->_unmappedIndexes, &v26);
        *&v25 = v14 + v16 - v10->_subRange.location;
        *(&v25 + 1) = a5;
        std::vector<_TSWPCharIndexAndAffinity>::push_back[abi:nn200100](&v10->_mappedIndexes, &v25);
        ++v14;
      }

      while (v15 != v14);
    }
  }

  return v10;
}

- (unint64_t)mappedCharIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeMap mappedCharIndex:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeMap.mm"), 102, @"shouldn't be trying to map NSNotFound"}];
  }

  v7 = a3 - self->_subRange.location;
  if (v7 > self->_subRange.length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  begin = self->_unmappedIndexes.__begin_;
  end = self->_unmappedIndexes.__end_;
  if (end != begin)
  {
    v11 = (end - begin) >> 4;
    end = self->_unmappedIndexes.__begin_;
    do
    {
      v12 = v11 >> 1;
      v13 = (end + 16 * (v11 >> 1));
      v15 = *v13;
      v14 = (v13 + 2);
      v11 += ~(v11 >> 1);
      if (v15 > a3)
      {
        v11 = v12;
      }

      else
      {
        end = v14;
      }
    }

    while (v11);
  }

  return v7 + ((end - begin) >> 4);
}

- (unint64_t)unmappedCharIndex:(unint64_t)a3
{
  v3 = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeMap unmappedCharIndex:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeMap.mm"), 121, @"shouldn't be trying to map NSNotFound"}];
  }

  begin = self->_mappedIndexes.__begin_;
  end = self->_mappedIndexes.__end_;
  if (end == begin)
  {
    v10 = self->_mappedIndexes.__end_;
  }

  else
  {
    v9 = (end - begin) >> 4;
    v10 = self->_mappedIndexes.__begin_;
    do
    {
      v11 = v9 >> 1;
      v12 = (v10 + 16 * (v9 >> 1));
      v14 = *v12;
      v13 = (v12 + 2);
      v9 += ~(v9 >> 1);
      if (v14 < v3)
      {
        v10 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    while (v9);
  }

  if (end == v10 || *v10 != v3)
  {
    return v3 - ((v10 - begin) >> 4) + self->_subRange.location;
  }

  v15 = *(v10 + 2);
  if (v15 == 2)
  {
    ++v3;
  }

  else if (v15 == 1)
  {
    --v3;
  }

  else
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeMap unmappedCharIndex:]"];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeMap.mm"), 140, @"bad affinity"}];
  }

  return [(TSWPRangeMap *)self unmappedCharIndex:v3];
}

- (unint64_t)p_extendLeftMappedIndex:(unint64_t)a3
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

- (unint64_t)p_extendRightMappedIndex:(unint64_t)a3
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
  subRange = self->_subRange;
  v12.location = location;
  v12.length = length;
  if (NSIntersectionRange(v12, subRange).length)
  {
    if (location <= self->_subRange.location)
    {
      v6 = self->_subRange.location;
    }

    else
    {
      v6 = location;
    }

    v7 = [(TSWPRangeMap *)self p_extendLeftMappedIndex:[(TSWPRangeMap *)self mappedCharIndex:v6]];
    v8 = location + length;
    v9 = self->_subRange.length;
    if (v9 + self->_subRange.location < location + length)
    {
      v8 = v9 + self->_subRange.location;
    }

    v10 = [(TSWPRangeMap *)self p_extendRightMappedIndex:[(TSWPRangeMap *)self mappedCharIndex:v8 - 1]]- v7 + 1;
  }

  else if (location >= self->_subRange.location)
  {
    v10 = 0;
    v7 = self->_subRange.length + ((self->_mappedIndexes.__end_ - self->_mappedIndexes.__begin_) >> 4);
  }

  else
  {
    v7 = 0;
    v10 = 0;
  }

  v11 = v7;
  result.length = v10;
  result.location = v11;
  return result;
}

- (_NSRange)unmappedCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TSWPRangeMap *)self unmappedCharIndex:?];
  v7 = v6;
  if (length)
  {
    v8 = [(TSWPRangeMap *)self unmappedCharIndex:length + location - 1]+ 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v9 - v10;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)adjustByDelta:(int64_t)a3
{
  self->_subRange.location += a3;
  begin = self->_unmappedIndexes.__begin_;
  end = self->_unmappedIndexes.__end_;
  while (begin != end)
  {
    *begin += a3;
    begin = (begin + 16);
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