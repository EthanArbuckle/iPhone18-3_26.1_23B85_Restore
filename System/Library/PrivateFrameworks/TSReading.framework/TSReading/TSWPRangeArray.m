@interface TSWPRangeArray
- (BOOL)isEmpty;
- (TSWPRangeArray)init;
- (TSWPRangeArray)initWithRange:(_NSRange)a3;
- (TSWPRangeArray)initWithRangeVector:(const void *)a3;
- (_NSRange)rangeAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)finish;
- (unint64_t)start;
- (void)dealloc;
- (void)enumerateRangesInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)enumerateRangesUsingBlock:(id)a3;
@end

@implementation TSWPRangeArray

- (TSWPRangeArray)init
{
  v3.receiver = self;
  v3.super_class = TSWPRangeArray;
  if ([(TSWPRangeArray *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (TSWPRangeArray)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPRangeArray *)self init];
  v6 = v5;
  if (v5)
  {
    rangeVectorOpaque = v5->_rangeVectorOpaque;
    v9 = *(rangeVectorOpaque + 1);
    v8 = *(rangeVectorOpaque + 2);
    if (v9 >= v8)
    {
      v11 = *rangeVectorOpaque;
      v12 = v9 - *rangeVectorOpaque;
      v13 = v12 >> 4;
      v14 = (v12 >> 4) + 1;
      if (v14 >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
      v17 = 0xFFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(v5->_rangeVectorOpaque, v17);
      }

      v18 = (16 * v13);
      *v18 = location;
      v18[1] = length;
      v10 = 16 * v13 + 16;
      memcpy(0, v11, v12);
      v19 = *rangeVectorOpaque;
      *rangeVectorOpaque = 0;
      *(rangeVectorOpaque + 1) = v10;
      *(rangeVectorOpaque + 2) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = location;
      v9[1] = length;
      v10 = (v9 + 2);
    }

    *(rangeVectorOpaque + 1) = v10;
  }

  return v6;
}

- (TSWPRangeArray)initWithRangeVector:(const void *)a3
{
  v4.receiver = self;
  v4.super_class = TSWPRangeArray;
  if ([(TSWPRangeArray *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  rangeVectorOpaque = self->_rangeVectorOpaque;
  if (rangeVectorOpaque)
  {
    v4 = *rangeVectorOpaque;
    if (*rangeVectorOpaque)
    {
      rangeVectorOpaque[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x26D6A9A30](rangeVectorOpaque, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = TSWPRangeArray;
  [(TSWPRangeArray *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSWPRangeArray allocWithZone:a3];
  rangeVectorOpaque = self->_rangeVectorOpaque;

  return [(TSWPRangeArray *)v4 initWithRangeVector:rangeVectorOpaque];
}

- (_NSRange)rangeAtIndex:(unint64_t)a3
{
  v4 = *self->_rangeVectorOpaque;
  v5 = (*(self->_rangeVectorOpaque + 1) - v4) >> 4;
  if (v5 <= a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRangeArray rangeAtIndex:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRangeArray.mm"), 83, @"Bogus range index"}];
    v4 = *self->_rangeVectorOpaque;
    v5 = (*(self->_rangeVectorOpaque + 1) - v4) >> 4;
  }

  if (v5 <= a3)
  {
    v11 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = (v4 + 16 * a3);
    v10 = *v9;
    v11 = v9[1];
  }

  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)isEmpty
{
  v2 = *self->_rangeVectorOpaque;
  v3 = (*(self->_rangeVectorOpaque + 1) - v2) >> 4;
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return *(v2 + 8) == 0;
  }

  return 0;
}

- (unint64_t)finish
{
  rangeVectorOpaque = self->_rangeVectorOpaque;
  if (*rangeVectorOpaque == rangeVectorOpaque[1])
  {
    return 0;
  }

  else
  {
    return **rangeVectorOpaque;
  }
}

- (unint64_t)start
{
  rangeVectorOpaque = self->_rangeVectorOpaque;
  v4 = *rangeVectorOpaque;
  v3 = rangeVectorOpaque[1];
  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 - 8) + *(v3 - 16);
  }
}

- (void)enumerateRangesUsingBlock:(id)a3
{
  v11 = 0;
  v5 = [(TSWPRangeArray *)self rangeCount];
  if (v5)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      v8 = [(TSWPRangeArray *)self rangeAtIndex:v7 - 1];
      (*(a3 + 2))(a3, v8, v9, v7 - 1, &v11);
      if (v11)
      {
        break;
      }
    }

    while (v7++ < v6);
  }
}

- (void)enumerateRangesInRange:(_NSRange)a3 usingBlock:(id)a4
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TSWPRangeArray_enumerateRangesInRange_usingBlock___block_invoke;
  v4[3] = &unk_279D497C8;
  v5 = a3;
  v4[4] = a4;
  v4[5] = v6;
  [(TSWPRangeArray *)self enumerateRangesUsingBlock:v4];
  _Block_object_dispose(v6, 8);
}

NSUInteger __52__TSWPRangeArray_enumerateRangesInRange_usingBlock___block_invoke(NSRange *a1, NSRange range2, uint64_t a3, _BYTE *a4)
{
  v7 = NSIntersectionRange(a1[3], range2);
  result = v7.location;
  v8 = *(a1[2].length + 8);
  if (v7.length)
  {
    *(v8 + 24) = 1;
    v9 = *(a1[2].location + 16);

    return v9();
  }

  else
  {
    *a4 = *(v8 + 24);
  }

  return result;
}

@end