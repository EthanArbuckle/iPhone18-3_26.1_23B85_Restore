@interface NSArray(Cinematography)
- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography;
- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography startIndex:lastIfEqual:timeSelector:;
- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography timeSelector:;
- (uint64_t)_indexAtOrBeforeTime:()Cinematography;
- (uint64_t)_indexAtOrBeforeTime:()Cinematography timeSelector:;
- (uint64_t)_indexNearestTime:()Cinematography;
- (uint64_t)_indexNearestTime:()Cinematography timeSelector:;
- (uint64_t)_indexRangeOfTimeRange:()Cinematography;
- (uint64_t)_indexRangeOfTimeRange:()Cinematography timeSelector:;
- (unint64_t)_firstIndexAfterTime:()Cinematography startIndex:timeSelector:;
- (void)_timeForObject:()Cinematography timeSelector:;
- (void)_timeRangeOfIndexRange:()Cinematography timeSelector:;
@end

@implementation NSArray(Cinematography)

- (uint64_t)_indexNearestTime:()Cinematography
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return [self _indexNearestTime:&v4 timeSelector:sel_time];
}

- (uint64_t)_indexAtOrBeforeTime:()Cinematography
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return [self _indexAtOrBeforeTime:&v4 timeSelector:sel_time];
}

- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return [self _firstIndexAtOrAfterTime:&v4 timeSelector:sel_time];
}

- (uint64_t)_indexRangeOfTimeRange:()Cinematography
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [self _indexRangeOfTimeRange:v5 timeSelector:sel_time];
}

- (uint64_t)_indexNearestTime:()Cinematography timeSelector:
{
  v16 = *a3;
  v7 = [self _firstIndexAtOrAfterTime:&v16 startIndex:0 lastIfEqual:1 timeSelector:a4];
  if (v7 >= 1)
  {
    if (v7 >= [self count])
    {
      --v7;
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
      v8 = [self objectAtIndexedSubscript:v7 - 1];
      [self _timeForObject:v8 timeSelector:a4];

      memset(&v15, 0, sizeof(v15));
      v9 = [self objectAtIndexedSubscript:v7];
      [self _timeForObject:v9 timeSelector:a4];

      memset(&v14, 0, sizeof(v14));
      lhs = *a3;
      rhs = v16;
      CMTimeSubtract(&v14, &lhs, &rhs);
      memset(&lhs, 0, sizeof(lhs));
      rhs = v15;
      v11 = *a3;
      CMTimeSubtract(&lhs, &rhs, &v11);
      rhs = v14;
      v11 = lhs;
      if (CMTimeCompare(&rhs, &v11) == -1)
      {
        --v7;
      }
    }
  }

  return v7;
}

- (uint64_t)_indexAtOrBeforeTime:()Cinematography timeSelector:
{
  time2 = *a3;
  v7 = [self _firstIndexAtOrAfterTime:&time2 timeSelector:?];
  if (v7 == [self count])
  {
    if (v7)
    {
      --v7;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = [self objectAtIndexedSubscript:v7];
    [self _timeForObject:v8 timeSelector:a4];
    v12 = *a3;
    v9 = CMTimeCompare(&v12, &time2);

    v10 = v7 - 1;
    if (!v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v9 < 0)
    {
      return v10;
    }
  }

  return v7;
}

- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography timeSelector:
{
  v5 = *a3;
  v6 = *(a3 + 2);
  return [self _firstIndexAtOrAfterTime:&v5 startIndex:0 lastIfEqual:0 timeSelector:a4];
}

- (uint64_t)_indexRangeOfTimeRange:()Cinematography timeSelector:
{
  memset(&v11, 0, sizeof(v11));
  lhs = *a3;
  v9 = *(a3 + 24);
  CMTimeAdd(&v11, &lhs, &v9);
  lhs = *a3;
  v7 = [self _firstIndexAtOrAfterTime:&lhs timeSelector:a4];
  lhs = v11;
  if ([self _firstIndexAfterTime:&lhs startIndex:v7 timeSelector:a4] <= v7)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (void)_timeRangeOfIndexRange:()Cinematography timeSelector:
{
  if (a2 >= [self count])
  {
    v13 = MEMORY[0x277CC08E0];
    v14 = *(MEMORY[0x277CC08E0] + 16);
    *a5 = *MEMORY[0x277CC08E0];
    *(a5 + 16) = v14;
    *(a5 + 32) = *(v13 + 32);
  }

  else
  {
    v10 = [self objectAtIndex:a2];
    memset(&v18, 0, sizeof(v18));
    [self _timeForObject:v10 timeSelector:a4];
    v11 = a2 + a3;
    if (v11 >= [self count])
    {
      v17 = v18;
      start = **&MEMORY[0x277CC08B0];
      CMTimeRangeMake(a5, &v17, &start);
    }

    else
    {
      v12 = [self objectAtIndex:v11];
      memset(&v17, 0, sizeof(v17));
      [self _timeForObject:v12 timeSelector:a4];
      start = v18;
      v15 = v17;
      CMTimeRangeFromTimeToTime(a5, &start, &v15);
    }
  }
}

- (void)_timeForObject:()Cinematography timeSelector:
{
  selfCopy = self;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      ([selfCopy methodForSelector:a2])(selfCopy, a2);
    }

    else
    {
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_TimeforobjectE.isa, selfCopy, v6);

      v7 = MEMORY[0x277CC08F0];
      *a3 = *MEMORY[0x277CC08F0];
      a3[2] = *(v7 + 16);
    }

    goto LABEL_7;
  }

  v5 = selfCopy;
  if (selfCopy)
  {
    [selfCopy CMTimeValue];
LABEL_7:
    v5 = selfCopy;
    goto LABEL_8;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_8:
}

- (uint64_t)_firstIndexAtOrAfterTime:()Cinematography startIndex:lastIfEqual:timeSelector:
{
  v16 = *a3;
  v17 = *(a3 + 2);
  v10 = [MEMORY[0x277CCAE60] valueWithCMTime:&v16];
  v11 = [self count] - a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__NSArray_Cinematography___firstIndexAtOrAfterTime_startIndex_lastIfEqual_timeSelector___block_invoke;
  v15[3] = &unk_2785234F8;
  if (a5)
  {
    v12 = 1536;
  }

  else
  {
    v12 = 1280;
  }

  v15[4] = self;
  v15[5] = a6;
  v13 = [self indexOfObject:v10 inSortedRange:a4 options:v11 usingComparator:{v12, v15}];

  return v13;
}

- (unint64_t)_firstIndexAfterTime:()Cinematography startIndex:timeSelector:
{
  v13 = *a3;
  v8 = [self _firstIndexAtOrAfterTime:&v13 startIndex:a4 lastIfEqual:1 timeSelector:a5];
  if (v8 < [self count])
  {
    memset(&v13, 0, sizeof(v13));
    v9 = [self objectAtIndexedSubscript:v8];
    [self _timeForObject:v9 timeSelector:a5];

    time1 = *a3;
    v11 = v13;
    if (!CMTimeCompare(&time1, &v11))
    {
      ++v8;
    }
  }

  return v8;
}

@end