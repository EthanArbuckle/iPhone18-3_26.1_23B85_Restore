@interface _UITableViewPrefetchContext
- (_NSRange)_offsetAndValidateRange:(_NSRange)a3 firstIndexOffset:(int64_t)a4 lastIndexOffset:(int64_t)a5;
- (_NSRange)_validatedRangeWithLocation:(int64_t)a3 length:(int64_t)a4;
- (id)description;
- (int)_effectiveRefreshDirectionForProposedVisibleIndexRange:(_NSRange)a3 withContentOffset:(double)a4;
- (uint64_t)cancelWithNewMaxIndex:(uint64_t)result;
- (uint64_t)pruneCellsForVisibleIndexRange:(uint64_t)a3;
- (void)initWithMaxIndex:(uint64_t)a3 prefetchItemCount:(uint64_t)a4 refreshPrefetchThresholdCount:(uint64_t)a5 cancelThresholdCount:;
- (void)schedulePrefetchRequestAfterNextCACommit:(uint64_t)a1;
- (void)updateVisibleIndexRange:(unint64_t)a3 withContentOffset:(double)a4;
@end

@implementation _UITableViewPrefetchContext

- (void)initWithMaxIndex:(uint64_t)a3 prefetchItemCount:(uint64_t)a4 refreshPrefetchThresholdCount:(uint64_t)a5 cancelThresholdCount:
{
  if (!a1)
  {
    return 0;
  }

  v19.receiver = a1;
  v19.super_class = _UITableViewPrefetchContext;
  v9 = objc_msgSendSuper2(&v19, sel_init);
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11 = v9[6];
    v9[6] = v10;

    v9[7] = a2;
    if (a3)
    {
      v12 = a4 == 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = v12 || a3 < a4;
    v15 = v14 == 0;
    v16 = 20;
    if (v15)
    {
      v16 = a3;
    }

    v17 = 10;
    if (v15)
    {
      v17 = a4;
    }

    v9[9] = v16;
    v9[10] = v17;
    if (!a5 || v16 > a5)
    {
      a5 = v16 + a3 / 2;
    }

    v9[12] = 0;
    v9[13] = 0;
    v9[11] = a5;
    v9[8] = 0x7FEFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (void)updateVisibleIndexRange:(unint64_t)a3 withContentOffset:(double)a4
{
  if (!a1 || (*(a1 + 8) & 1) != 0 || !a3)
  {
    return;
  }

  v7 = a2 + a3;
  if (a2 + a3 - 1 > *(a1 + 56))
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

  v10 = [a1 _effectiveRefreshDirectionForProposedVisibleIndexRange:a2 withContentOffset:a3];
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 64) = a4;
  [*(a1 + 48) removeIndexesInRange:{a2, a3}];
  if (v10 == 3)
  {
    return;
  }

  v11 = *(a1 + 24);
  v65 = v7;
  if (v11)
  {
  }

  else if (!*(a1 + 16))
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
  if ([*(a1 + 48) count])
  {
    v12 = [a1 _offsetAndValidateRange:a2 firstIndexOffset:a3 lastIndexOffset:-*(a1 + 88)];
    v14 = v13;
    v15 = [*(a1 + 48) firstIndex];
    v16 = [*(a1 + 48) lastIndex];
    v17 = [*(a1 + 48) firstIndex];
    if (v12 > v15 || v12 + v14 < v15 + v16 - v17 + 1)
    {
      v18 = *(a1 + 48);
      *buf = MEMORY[0x1E69E9820];
      v75 = 3221225472;
      v76 = __74___UITableViewPrefetchContext_computeIndexesToCancelForVisibleIndexRange___block_invoke;
      v77 = &unk_1E7123C38;
      v79 = v12;
      v80 = v14;
      v78 = &v68;
      [v18 enumerateIndexesUsingBlock:buf];
      v19 = v69[5];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __74___UITableViewPrefetchContext_computeIndexesToCancelForVisibleIndexRange___block_invoke_2;
      v67[3] = &unk_1E7123C60;
      v67[4] = a1;
      [v19 enumerateObjectsUsingBlock:v67];
    }
  }

  v66 = v69[5];
  _Block_object_dispose(&v68, 8);

  v20 = *(a1 + 80) + 1;
  if ((v10 | 2) == 2)
  {
    v21 = [a1 _validatedRangeWithLocation:a2 - v20 length:*(a1 + 80) + 1];
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
    v24 = [a1 _validatedRangeWithLocation:v7 length:v20];
    v26 = v25;
  }

  *buf = MEMORY[0x1E69E9820];
  v75 = 3221225472;
  v76 = __91___UITableViewPrefetchContext_shouldRefreshForVisibleIndexRange_effectiveRefreshDirection___block_invoke;
  v77 = &unk_1E7123C88;
  v78 = a1;
  switch(v10)
  {
    case 0u:
      v40 = [*(a1 + 48) countOfIndexesInRange:{v21, v23}];
      if (v40 <= v78[10] || (v76(buf, v24, v26) & 1) != 0)
      {
        v41 = [a1 _offsetAndValidateRange:a2 firstIndexOffset:a3 lastIndexOffset:-*(a1 + 72)];
        v36 = v42;
        if (v42)
        {
          v63 = v42;
          v64 = v41;
          v43 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{v41, v42}];
          [v43 removeIndexesInRange:{a2, a3}];
          v44 = [v43 count] >> 1;
          v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v44 + 1];
          v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v44 + 1];
          *buf = MEMORY[0x1E69E9820];
          v75 = 3221225472;
          v76 = __101___UITableViewPrefetchContext_computeIndexesToRefreshForVisibleIndexRange_effectiveRefreshDirection___block_invoke;
          v77 = &unk_1E70FA898;
          v80 = a2;
          v81 = a3;
          v47 = v45;
          v78 = v47;
          v48 = v46;
          v79 = v48;
          [v43 enumerateIndexesUsingBlock:buf];
          v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v43, "count")}];
          v62 = v47;
          v49 = [v47 objectEnumerator];
          v61 = v48;
          v50 = [v48 objectEnumerator];
          v51 = 0;
          v52 = 0;
          do
          {
            v53 = v51;
            v51 = [v50 nextObject];

            if (v51)
            {
              [v36 addObject:v51];
            }

            v54 = [v49 nextObject];

            if (v54)
            {
              [v36 addObject:v54];
            }

            v52 = v54;
          }

          while (v51 | v54);

          v10 = 0;
LABEL_56:
          v35 = v63;
          v34 = v64;
LABEL_59:
          [*(a1 + 48) addIndexesInRange:{v34, v35}];
          [*(a1 + 48) removeIndexesInRange:{a2, a3}];
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
      v31 = [*(a1 + 48) countOfIndexesInRange:{v24, v26}];
      if (v31 <= v78[10])
      {
        v30 = 0;
        v28 = *(a1 + 72);
        v29 = a3;
LABEL_30:
        v32 = [a1 _offsetAndValidateRange:a2 firstIndexOffset:a3 lastIndexOffset:{v29, v28}];
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
              if (a2 <= v38 && v38 - a2 < a3 || ([*(a1 + 48) containsIndex:{v38, v35}] & 1) != 0)
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
      v27 = [*(a1 + 48) countOfIndexesInRange:{v21, v23}];
      if (v27 <= v78[10])
      {
        v28 = 0;
        v29 = -*(a1 + 72);
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
    v56 = *(a1 + 24);
    if (v56)
    {
      (*(v56 + 16))(v56, v66);
    }
  }

  if (![v36 count])
  {
    goto LABEL_72;
  }

  v57 = *(a1 + 16);
  if (!v57)
  {
    goto LABEL_72;
  }

  if (v55)
  {
LABEL_71:
    (*(v57 + 16))(v57, v36);
LABEL_72:
    if (v55 && *(a1 + 32))
    {
      v58 = v10 == 2 ? a2 - 1 : v65;
      [a1 _validatedRangeWithLocation:v58 length:1];
      if (v59 == 1)
      {
        (*(*(a1 + 32) + 16))();
      }
    }

    goto LABEL_79;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v57 = *(a1 + 16);
    goto LABEL_71;
  }

  [(_UITableViewPrefetchContext *)a1 schedulePrefetchRequestAfterNextCACommit:v36];
LABEL_79:
}

- (void)schedulePrefetchRequestAfterNextCACommit:(uint64_t)a1
{
  v3 = a2;
  *(a1 + 8) = 1;
  v4 = UIApp;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72___UITableViewPrefetchContext_schedulePrefetchRequestAfterNextCACommit___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = a1;
  v5 = v3;
  v7 = v5;
  [v4 _performBlockAfterCATransactionCommits:v6];
}

- (uint64_t)pruneCellsForVisibleIndexRange:(uint64_t)a3
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
      if (v5 >= a2 + a3)
      {
        v5 = a2 + a3;
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

- (int)_effectiveRefreshDirectionForProposedVisibleIndexRange:(_NSRange)a3 withContentOffset:(double)a4
{
  location = self->_lastVisibleIndexRange.location;
  length = self->_lastVisibleIndexRange.length;
  if (location != a3.location || length != a3.length)
  {
    if (!a3.location)
    {
      return 1;
    }

    maxIndex = self->_maxIndex;
    v9 = maxIndex >= a3.location;
    v8 = maxIndex - a3.location;
    v9 = !v9 || v8 >= a3.length;
    if (!v9)
    {
      return 2;
    }

    if (length && a3.length)
    {
      if (location != a3.location)
      {
        if (a3.location > location)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      if (a3.length > length)
      {
        return 1;
      }
    }

    else if (!length && a3.length)
    {
      return 0;
    }
  }

  lastContentOffset = self->_lastContentOffset;
  if (lastContentOffset == 1.79769313e308 || vabdd_f64(a4, lastContentOffset) <= 0.01)
  {
    return 3;
  }

  if (lastContentOffset < a4)
  {
    return 1;
  }

  return 2;
}

- (_NSRange)_offsetAndValidateRange:(_NSRange)a3 firstIndexOffset:(int64_t)a4 lastIndexOffset:(int64_t)a5
{
  maxIndex = a3.length + a3.location + a5 - 1;
  v6 = (a3.location + a4) & ~((a3.location + a4) >> 63);
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
    v10 = (a3.location + a4) & ~((a3.location + a4) >> 63);
  }

  result.length = v9;
  result.location = v10;
  return result;
}

- (_NSRange)_validatedRangeWithLocation:(int64_t)a3 length:(int64_t)a4
{
  v5 = 0;
  v6 = 0;
  if ((a3 & 0x8000000000000000) == 0 && a4 >= 1)
  {
    v7 = a3 + a4 - 1;
    maxIndex = self->_maxIndex;
    if (v7 <= maxIndex)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    if (v7 <= maxIndex)
    {
      v6 = a4;
    }

    else
    {
      v6 = 0;
    }
  }

  result.length = v6;
  result.location = v5;
  return result;
}

@end