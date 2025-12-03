@interface _UITableViewPrefetchContext
- (_NSRange)_offsetAndValidateRange:(_NSRange)range firstIndexOffset:(int64_t)offset lastIndexOffset:(int64_t)indexOffset;
- (_NSRange)_validatedRangeWithLocation:(int64_t)location length:(int64_t)length;
- (id)description;
- (int)_effectiveRefreshDirectionForProposedVisibleIndexRange:(_NSRange)range withContentOffset:(double)offset;
- (uint64_t)cancelWithNewMaxIndex:(uint64_t)result;
- (uint64_t)pruneCellsForVisibleIndexRange:(uint64_t)range;
- (void)initWithMaxIndex:(uint64_t)index prefetchItemCount:(uint64_t)count refreshPrefetchThresholdCount:(uint64_t)thresholdCount cancelThresholdCount:;
- (void)schedulePrefetchRequestAfterNextCACommit:(uint64_t)commit;
- (void)updateVisibleIndexRange:(unint64_t)range withContentOffset:(double)offset;
@end

@implementation _UITableViewPrefetchContext

- (void)initWithMaxIndex:(uint64_t)index prefetchItemCount:(uint64_t)count refreshPrefetchThresholdCount:(uint64_t)thresholdCount cancelThresholdCount:
{
  if (!self)
  {
    return 0;
  }

  v19.receiver = self;
  v19.super_class = _UITableViewPrefetchContext;
  v9 = objc_msgSendSuper2(&v19, sel_init);
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11 = v9[6];
    v9[6] = v10;

    v9[7] = a2;
    if (index)
    {
      v12 = count == 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = v12 || index < count;
    v15 = v14 == 0;
    indexCopy = 20;
    if (v15)
    {
      indexCopy = index;
    }

    countCopy = 10;
    if (v15)
    {
      countCopy = count;
    }

    v9[9] = indexCopy;
    v9[10] = countCopy;
    if (!thresholdCount || indexCopy > thresholdCount)
    {
      thresholdCount = indexCopy + index / 2;
    }

    v9[12] = 0;
    v9[13] = 0;
    v9[11] = thresholdCount;
    v9[8] = 0x7FEFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (void)updateVisibleIndexRange:(unint64_t)range withContentOffset:(double)offset
{
  if (!self || (*(self + 8) & 1) != 0 || !range)
  {
    return;
  }

  v7 = a2 + range;
  if (a2 + range - 1 > *(self + 56))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v60 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v60, OS_LOG_TYPE_FAULT, "UIKit internal bug: table view prefetch context updated with an out-of-bounds visible range; the _maxIndex is probably stale", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &updateVisibleIndexRange_withContentOffset____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "UIKit internal bug: table view prefetch context updated with an out-of-bounds visible range; the _maxIndex is probably stale", buf, 2u);
      }
    }

    return;
  }

  v10 = [self _effectiveRefreshDirectionForProposedVisibleIndexRange:a2 withContentOffset:range];
  *(self + 96) = a2;
  *(self + 104) = range;
  *(self + 64) = offset;
  [*(self + 48) removeIndexesInRange:{a2, range}];
  if (v10 == 3)
  {
    return;
  }

  v11 = *(self + 24);
  v65 = v7;
  if (v11)
  {
  }

  else if (!*(self + 16))
  {
    v36 = 0;
    v66 = 0;
    goto LABEL_62;
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__197;
  v72 = __Block_byref_object_dispose__197;
  v73 = 0;
  if ([*(self + 48) count])
  {
    v12 = [self _offsetAndValidateRange:a2 firstIndexOffset:range lastIndexOffset:-*(self + 88)];
    v14 = v13;
    firstIndex = [*(self + 48) firstIndex];
    lastIndex = [*(self + 48) lastIndex];
    firstIndex2 = [*(self + 48) firstIndex];
    if (v12 > firstIndex || v12 + v14 < firstIndex + lastIndex - firstIndex2 + 1)
    {
      v18 = *(self + 48);
      *buf = MEMORY[0x1E69E9820];
      v75 = 3221225472;
      v76 = __74___UITableViewPrefetchContext_computeIndexesToCancelForVisibleIndexRange___block_invoke;
      v77 = &unk_1E7123C38;
      v79 = v12;
      v80 = v14;
      selfCopy = &v68;
      [v18 enumerateIndexesUsingBlock:buf];
      v19 = v69[5];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __74___UITableViewPrefetchContext_computeIndexesToCancelForVisibleIndexRange___block_invoke_2;
      v67[3] = &unk_1E7123C60;
      v67[4] = self;
      [v19 enumerateObjectsUsingBlock:v67];
    }
  }

  v66 = v69[5];
  _Block_object_dispose(&v68, 8);

  v20 = *(self + 80) + 1;
  if ((v10 | 2) == 2)
  {
    v21 = [self _validatedRangeWithLocation:a2 - v20 length:*(self + 80) + 1];
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  if (v10 > 1)
  {
    v24 = 0;
    v26 = 0;
  }

  else
  {
    v24 = [self _validatedRangeWithLocation:v7 length:v20];
    v26 = v25;
  }

  *buf = MEMORY[0x1E69E9820];
  v75 = 3221225472;
  v76 = __91___UITableViewPrefetchContext_shouldRefreshForVisibleIndexRange_effectiveRefreshDirection___block_invoke;
  v77 = &unk_1E7123C88;
  selfCopy = self;
  switch(v10)
  {
    case 0u:
      v40 = [*(self + 48) countOfIndexesInRange:{v21, v23}];
      if (v40 <= selfCopy[10] || (v76(buf, v24, v26) & 1) != 0)
      {
        v41 = [self _offsetAndValidateRange:a2 firstIndexOffset:range lastIndexOffset:-*(self + 72)];
        v36 = v42;
        if (v42)
        {
          v63 = v42;
          v64 = v41;
          v43 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{v41, v42}];
          [v43 removeIndexesInRange:{a2, range}];
          v44 = [v43 count] >> 1;
          v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v44 + 1];
          v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v44 + 1];
          *buf = MEMORY[0x1E69E9820];
          v75 = 3221225472;
          v76 = __101___UITableViewPrefetchContext_computeIndexesToRefreshForVisibleIndexRange_effectiveRefreshDirection___block_invoke;
          v77 = &unk_1E70FA898;
          v80 = a2;
          rangeCopy = range;
          v47 = v45;
          selfCopy = v47;
          v48 = v46;
          v79 = v48;
          [v43 enumerateIndexesUsingBlock:buf];
          v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v43, "count")}];
          v62 = v47;
          objectEnumerator = [v47 objectEnumerator];
          v61 = v48;
          objectEnumerator2 = [v48 objectEnumerator];
          nextObject = 0;
          v52 = 0;
          do
          {
            v53 = nextObject;
            nextObject = [objectEnumerator2 nextObject];

            if (nextObject)
            {
              [v36 addObject:nextObject];
            }

            nextObject2 = [objectEnumerator nextObject];

            if (nextObject2)
            {
              [v36 addObject:nextObject2];
            }

            v52 = nextObject2;
          }

          while (nextObject | nextObject2);

          v10 = 0;
LABEL_56:
          v35 = v63;
          v34 = v64;
LABEL_59:
          [*(self + 48) addIndexesInRange:{v34, v35}];
          [*(self + 48) removeIndexesInRange:{a2, range}];
          goto LABEL_62;
        }
      }

      else
      {
        v36 = 0;
      }

      v10 = 0;
      goto LABEL_62;
    case 1u:
      v31 = [*(self + 48) countOfIndexesInRange:{v24, v26}];
      if (v31 <= selfCopy[10])
      {
        v30 = 0;
        v28 = *(self + 72);
        rangeCopy2 = range;
LABEL_30:
        v32 = [self _offsetAndValidateRange:a2 firstIndexOffset:range lastIndexOffset:{rangeCopy2, v28}];
        if (v33)
        {
          v34 = v32;
          v35 = v33;
          if (v32 < &v33[v32])
          {
            v36 = 0;
            v63 = v33;
            v64 = v32;
            v37 = v33;
            v38 = v32;
            while (1)
            {
              if (a2 <= v38 && v38 - a2 < range || ([*(self + 48) containsIndex:{v38, v35}] & 1) != 0)
              {
                goto LABEL_43;
              }

              if (!v36)
              {
                v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              if (v30)
              {
                break;
              }

              if (v10 == 1)
              {
                v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
                [v36 addObject:v39];
                goto LABEL_42;
              }

LABEL_43:
              ++v38;
              if (!--v37)
              {
                goto LABEL_56;
              }
            }

            v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
            [v36 insertObject:v39 atIndex:0];
LABEL_42:

            goto LABEL_43;
          }

          v36 = 0;
          goto LABEL_59;
        }
      }

      break;
    case 2u:
      v27 = [*(self + 48) countOfIndexesInRange:{v21, v23}];
      if (v27 <= selfCopy[10])
      {
        v28 = 0;
        rangeCopy2 = -*(self + 72);
        v30 = 1;
        goto LABEL_30;
      }

      break;
  }

  v36 = 0;
LABEL_62:
  v55 = _isNotifyingIdleObservers;
  if ([v66 count])
  {
    v56 = *(self + 24);
    if (v56)
    {
      (*(v56 + 16))(v56, v66);
    }
  }

  if (![v36 count])
  {
    goto LABEL_72;
  }

  v57 = *(self + 16);
  if (!v57)
  {
    goto LABEL_72;
  }

  if (v55)
  {
LABEL_71:
    (*(v57 + 16))(v57, v36);
LABEL_72:
    if (v55 && *(self + 32))
    {
      v58 = v10 == 2 ? a2 - 1 : v65;
      [self _validatedRangeWithLocation:v58 length:1];
      if (v59 == 1)
      {
        (*(*(self + 32) + 16))();
      }
    }

    goto LABEL_79;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v57 = *(self + 16);
    goto LABEL_71;
  }

  [(_UITableViewPrefetchContext *)self schedulePrefetchRequestAfterNextCACommit:v36];
LABEL_79:
}

- (void)schedulePrefetchRequestAfterNextCACommit:(uint64_t)commit
{
  v3 = a2;
  *(commit + 8) = 1;
  v4 = UIApp;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72___UITableViewPrefetchContext_schedulePrefetchRequestAfterNextCACommit___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = commit;
  v5 = v3;
  v7 = v5;
  [v4 _performBlockAfterCATransactionCommits:v6];
}

- (uint64_t)pruneCellsForVisibleIndexRange:(uint64_t)range
{
  if (result)
  {
    v3 = result;
    result = *(result + 40);
    if (result)
    {
      if (a2 <= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = a2;
      }

      v5 = *(v3 + 56);
      if (v5 >= a2 + range)
      {
        v5 = a2 + range;
      }

      return (*(result + 16))(result, v4 - 1, v5 - v4 + 2);
    }
  }

  return result;
}

- (uint64_t)cancelWithNewMaxIndex:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    *(result + 8) = 0;
    v4 = *(result + 24);
    if (v4)
    {
      v5 = v4;
      v6 = [*(v3 + 48) count];

      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(v3 + 48), "count")}];
        v8 = *(v3 + 48);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __53___UITableViewPrefetchContext_cancelWithNewMaxIndex___block_invoke;
        v10[3] = &unk_1E70F3B48;
        v11 = v7;
        v9 = v7;
        [v8 enumerateIndexesUsingBlock:v10];
        (*(*(v3 + 24) + 16))();
      }
    }

    result = [*(v3 + 48) removeAllIndexes];
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 56) = a2;
    *(v3 + 64) = 0x7FEFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, self->_outstandingRequests];;

  return v6;
}

- (int)_effectiveRefreshDirectionForProposedVisibleIndexRange:(_NSRange)range withContentOffset:(double)offset
{
  location = self->_lastVisibleIndexRange.location;
  length = self->_lastVisibleIndexRange.length;
  if (location != range.location || length != range.length)
  {
    if (!range.location)
    {
      return 1;
    }

    maxIndex = self->_maxIndex;
    v9 = maxIndex >= range.location;
    v8 = maxIndex - range.location;
    v9 = !v9 || v8 >= range.length;
    if (!v9)
    {
      return 2;
    }

    if (length && range.length)
    {
      if (location != range.location)
      {
        if (range.location > location)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      if (range.length > length)
      {
        return 1;
      }
    }

    else if (!length && range.length)
    {
      return 0;
    }
  }

  lastContentOffset = self->_lastContentOffset;
  if (lastContentOffset == 1.79769313e308 || vabdd_f64(offset, lastContentOffset) <= 0.01)
  {
    return 3;
  }

  if (lastContentOffset < offset)
  {
    return 1;
  }

  return 2;
}

- (_NSRange)_offsetAndValidateRange:(_NSRange)range firstIndexOffset:(int64_t)offset lastIndexOffset:(int64_t)indexOffset
{
  maxIndex = range.length + range.location + indexOffset - 1;
  v6 = (range.location + offset) & ~((range.location + offset) >> 63);
  if (maxIndex >= self->_maxIndex)
  {
    maxIndex = self->_maxIndex;
  }

  v7 = maxIndex < v6;
  v8 = maxIndex - v6;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (range.location + offset) & ~((range.location + offset) >> 63);
  }

  result.length = v9;
  result.location = v10;
  return result;
}

- (_NSRange)_validatedRangeWithLocation:(int64_t)location length:(int64_t)length
{
  locationCopy = 0;
  lengthCopy = 0;
  if ((location & 0x8000000000000000) == 0 && length >= 1)
  {
    v7 = location + length - 1;
    maxIndex = self->_maxIndex;
    if (v7 <= maxIndex)
    {
      locationCopy = location;
    }

    else
    {
      locationCopy = 0;
    }

    if (v7 <= maxIndex)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = 0;
    }
  }

  result.length = lengthCopy;
  result.location = locationCopy;
  return result;
}

@end