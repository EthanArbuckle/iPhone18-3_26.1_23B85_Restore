@interface NSIndexSet
+ (id)tsu_indexSetWithIndices:(unint64_t *)a3 count:(unint64_t)a4;
- (BOOL)tsu_intersectsIndexesInIndexSet:(id)a3;
- (BOOL)tsu_isSingleContiguousRange;
- (_NSRange)tsu_boundingRange;
- (_NSRange)tsu_leadingRangeInRange:(_NSRange)a3;
- (_NSRange)tsu_trailingRangeInRange:(_NSRange)a3;
- (id)tsu_indexSetByAddingIndex:(unint64_t)a3;
- (id)tsu_indexSetByAddingIndexes:(id)a3;
- (id)tsu_indexSetByExcludingIndex:(unint64_t)a3;
- (id)tsu_indexSetByExcludingIndexes:(id)a3;
- (id)tsu_indexSetByInsertingIndexes:(id)a3 inRange:(_NSRange)a4;
- (id)tsu_indexSetByIntersectingWithIndexes:(id)a3;
- (id)tsu_indexSetByIntersectingWithRange:(_NSRange)a3;
- (id)tsu_indexSetByOutsettingRangesBy:(unint64_t)a3;
- (id)tsu_indexSetChunkIndex:(unint64_t)a3 ofChunkCount:(unint64_t)a4;
- (id)tsu_initWithIndices:(unint64_t *)a3 count:(unint64_t)a4;
- (id)tsu_localizedDescription;
- (unint64_t)tsu_firstCommonIndexWithIndexes:(id)a3;
- (unint64_t)tsu_indexAtPosition:(unint64_t)a3;
- (unint64_t)tsu_nsIndexSetConcurrencyFactor;
- (unint64_t)tsu_positionOfIndex:(unint64_t)a3;
- (void)tsu_enumerateIndexesAndPositionsUsingBlock:(id)a3;
- (void)tsu_enumeratePowerSetIncludingEmptySet:(BOOL)a3 usingBlock:(id)a4;
- (void)tsu_enumerateRangesConcurrentlyUsingBeginBlock:(id)a3 concurrentBlock:(id)a4 finalBlock:(id)a5;
- (void)tsu_enumerateSkippedIndexesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)tsu_enumerateSkippedRangesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation NSIndexSet

+ (id)tsu_indexSetWithIndices:(unint64_t *)a3 count:(unint64_t)a4
{
  v4 = [[NSIndexSet alloc] tsu_initWithIndices:a3 count:a4];

  return v4;
}

- (id)tsu_initWithIndices:(unint64_t *)a3 count:(unint64_t)a4
{
  for (i = +[NSMutableIndexSet indexSet];
  {
    v8 = *a3++;
    [i addIndex:v8];
  }

  v9 = self;
  v10 = [(NSIndexSet *)v9 initWithIndexSet:i];

  return v10;
}

- (id)tsu_indexSetByAddingIndex:(unint64_t)a3
{
  v4 = [(NSIndexSet *)self mutableCopy];
  [v4 addIndex:a3];
  v5 = [v4 copy];

  return v5;
}

- (id)tsu_indexSetByAddingIndexes:(id)a3
{
  v4 = a3;
  v5 = [(NSIndexSet *)self mutableCopy];
  [v5 addIndexes:v4];
  v6 = [v5 copy];

  return v6;
}

- (BOOL)tsu_isSingleContiguousRange
{
  v3 = [(NSIndexSet *)self count];
  if (v3)
  {
    v4 = [(NSIndexSet *)self lastIndex];
    v5 = v4 - [(NSIndexSet *)self firstIndex]+ 1;
    LOBYTE(v3) = v5 == [(NSIndexSet *)self count];
  }

  return v3;
}

- (BOOL)tsu_intersectsIndexesInIndexSet:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (-[NSIndexSet count](self, "count") && [v4 count])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A9934;
    v7[3] = &unk_1001CE8B8;
    v8 = v4;
    v9 = &v10;
    [(NSIndexSet *)self enumerateRangesUsingBlock:v7];
  }

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)tsu_indexSetByInsertingIndexes:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if (v7 && length)
  {
    v8 = [(NSIndexSet *)self mutableCopy];
    [v8 shiftIndexesStartingAtIndex:location by:length];
    v9 = [v7 mutableCopy];
    [v9 shiftIndexesStartingAtIndex:0 by:location];
    [v8 addIndexes:v9];
  }

  else
  {
    v8 = [(NSIndexSet *)self copy];
  }

  return v8;
}

- (id)tsu_indexSetByIntersectingWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000A9BA4;
  v14 = sub_1000A9BB4;
  v15 = +[NSMutableIndexSet indexSet];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A9BBC;
  v9[3] = &unk_1001CE8E0;
  v9[4] = &v10;
  [(NSIndexSet *)self enumerateRangesInRange:location options:length usingBlock:0, v9];
  v6 = [NSIndexSet alloc];
  v7 = [v6 initWithIndexSet:v11[5]];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)tsu_indexSetByIntersectingWithIndexes:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000A9BA4;
  v20 = sub_1000A9BB4;
  v21 = +[NSMutableIndexSet indexSet];
  v5 = [(NSIndexSet *)self count];
  if (v5 >= [v4 count])
  {
    v8 = [(NSIndexSet *)self firstIndex];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A9EA0;
    v12[3] = &unk_1001CE8B8;
    v12[4] = self;
    v12[5] = &v16;
    [v4 enumerateRangesInRange:v8 options:-[NSIndexSet lastIndex](self usingBlock:{"lastIndex") - v8 + 1, 0, v12}];
  }

  else
  {
    v6 = [v4 firstIndex];
    v7 = ([v4 lastIndex] - v6);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A9E08;
    v13[3] = &unk_1001CE8B8;
    v14 = v4;
    v15 = &v16;
    [(NSIndexSet *)self enumerateRangesInRange:v6 options:v7 + 1 usingBlock:0, v13];
  }

  v9 = [NSIndexSet alloc];
  v10 = [v9 initWithIndexSet:v17[5]];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)tsu_indexSetByExcludingIndex:(unint64_t)a3
{
  v4 = [NSIndexSet indexSetWithIndex:a3];
  v5 = [(NSIndexSet *)self tsu_indexSetByExcludingIndexes:v4];

  return v5;
}

- (id)tsu_indexSetByExcludingIndexes:(id)a3
{
  v4 = a3;
  v5 = [(NSIndexSet *)self mutableCopy];
  [v5 removeIndexes:v4];
  v6 = [v5 copy];

  return v6;
}

- (unint64_t)tsu_indexAtPosition:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSIndexSet *)self count]> a3)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000AA148;
    v7[3] = &unk_1001CE908;
    v7[4] = v8;
    v7[5] = &v9;
    v7[6] = a3;
    [(NSIndexSet *)self enumerateIndexesUsingBlock:v7];
    _Block_object_dispose(v8, 8);
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (unint64_t)tsu_positionOfIndex:(unint64_t)a3
{
  v5 = [(NSIndexSet *)self count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AA270;
  v9[3] = &unk_1001CE930;
  v9[4] = &v10;
  v9[5] = a3;
  [(NSIndexSet *)self enumerateIndexesUsingBlock:v9];
  if (v11[3] >= v6)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)tsu_enumerateIndexesAndPositionsUsingBlock:(id)a3
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AA37C;
  v5[3] = &unk_1001CE958;
  v6 = a3;
  v7 = v8;
  v4 = v6;
  [(NSIndexSet *)self enumerateIndexesUsingBlock:v5];

  _Block_object_dispose(v8, 8);
}

- (_NSRange)tsu_leadingRangeInRange:(_NSRange)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = sub_1000AA4DC;
  v13 = nullsub_1;
  v14 = &unk_10018361A;
  location = a3.location;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA4EC;
  v8[3] = &unk_1001CE8E0;
  v8[4] = &v9;
  [(NSIndexSet *)self enumerateRangesInRange:a3.location options:a3.length usingBlock:0, v8];
  if (v10[7])
  {
    v3 = (v10 + 6);
  }

  else
  {
    v3 = &TSUInvalidRange;
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)tsu_trailingRangeInRange:(_NSRange)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4012000000;
  v11 = sub_1000AA4DC;
  v12 = nullsub_1;
  v13 = &unk_10018361A;
  v14 = a3.location + a3.length;
  v15 = 0;
  [NSIndexSet enumerateRangesInRange:"enumerateRangesInRange:options:usingBlock:" options:? usingBlock:?];
  if (v9[7])
  {
    v3 = (v9 + 6);
  }

  else
  {
    v3 = &TSUInvalidRange;
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  _Block_object_dispose(&v8, 8);
  v6 = v4;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (unint64_t)tsu_firstCommonIndexWithIndexes:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA7B8;
  v7[3] = &unk_1001CE8B8;
  v8 = a3;
  v9 = &v10;
  v4 = v8;
  [(NSIndexSet *)self enumerateRangesUsingBlock:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (id)tsu_localizedDescription
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AA95C;
  v6[3] = &unk_1001CE9A8;
  v3 = objc_opt_new();
  v7 = v3;
  [(NSIndexSet *)self enumerateRangesUsingBlock:v6];
  v4 = [v3 tsu_localizedList];

  return v4;
}

- (_NSRange)tsu_boundingRange
{
  if ([(NSIndexSet *)self count])
  {
    v3 = [(NSIndexSet *)self firstIndex];
    v4 = [(NSIndexSet *)self lastIndex];
    v5 = v4 - [(NSIndexSet *)self firstIndex]+ 1;
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = 0;
  }

  v6 = v3;
  result.length = v5;
  result.location = v6;
  return result;
}

- (void)tsu_enumeratePowerSetIncludingEmptySet:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(NSIndexSet *)self count];
  v8 = v7;
  if (v7 >= 0x40)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160B84();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160B98();
    }

    v15 = [NSString stringWithUTF8String:"[NSIndexSet(TSUAdditions) tsu_enumeratePowerSetIncludingEmptySet:usingBlock:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSIndexSet_TSUAdditions.mm"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:245 isFatal:0 description:"too many indexes!"];
    goto LABEL_23;
  }

  if (!v6)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160C38();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160C4C();
    }

    v15 = [NSString stringWithUTF8String:"[NSIndexSet(TSUAdditions) tsu_enumeratePowerSetIncludingEmptySet:usingBlock:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSIndexSet_TSUAdditions.mm"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:249 isFatal:0 description:"invalid nil value for '%{public}s'", "block"];
LABEL_23:

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_24;
  }

  v9 = ~(-1 << v7);
  v10 = !v4;
  if (v10 <= v9)
  {
    do
    {
      v11 = objc_alloc_init(NSMutableIndexSet);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          if ((v10 & (1 << i)) != 0)
          {
            [v11 addIndex:{-[NSIndexSet tsu_indexAtPosition:](self, "tsu_indexAtPosition:", i)}];
          }
        }
      }

      v17 = 0;
      v6[2](v6, v11, &v17);
      v13 = v17;

      if (v13)
      {
        break;
      }
    }

    while (v10++ != v9);
  }

LABEL_24:
}

- (id)tsu_indexSetChunkIndex:(unint64_t)a3 ofChunkCount:(unint64_t)a4
{
  v7 = [(NSIndexSet *)self firstIndex];
  v8 = [(NSIndexSet *)self lastIndex]- v7 + 1;
  if (v8 % a4)
  {
    v9 = a4 - v8 % a4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 + v9;
  if (v10 < a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 / a4;
  }

  return [(NSIndexSet *)self tsu_indexSetByIntersectingWithRange:v7 + v11 * a3];
}

- (unint64_t)tsu_nsIndexSetConcurrencyFactor
{
  if (qword_1001EB058 != -1)
  {
    sub_100160CFC();
  }

  return qword_1001EB050;
}

- (void)tsu_enumerateRangesConcurrentlyUsingBeginBlock:(id)a3 concurrentBlock:(id)a4 finalBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSIndexSet *)self firstIndex];
  v12 = [(NSIndexSet *)self lastIndex];
  v13 = [(NSIndexSet *)self tsu_nsIndexSetConcurrencyFactor];
  v30 = 0;
  v31 = &v30;
  v32 = 0x4812000000;
  v33 = sub_1000AB264;
  v34 = sub_1000AB288;
  v35 = &unk_10018361A;
  memset(v36, 0, sizeof(v36));
  sub_1000AB2B4(v36, v13);
  v14 = v12 - v11 + 1;
  v15 = v14 % v13;
  v16 = v13 + v14 - v14 % v13;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12 - v11 + 1;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000AB33C;
  v24[3] = &unk_1001CEA58;
  if (v13 > v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 / v13;
  }

  v28 = v11;
  v29 = v18;
  v24[4] = self;
  v19 = v8;
  v25 = v19;
  v20 = v9;
  v26 = v20;
  v27 = &v30;
  v21 = objc_retainBlock(v24);
  dispatch_apply(v13, 0, v21);
  v22 = [NSMutableArray arrayWithCapacity:v13];
  v23 = 0;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  do
  {
    if (*(v31[6] + 8 * v23))
    {
      [v22 addObject:?];
    }

    ++v23;
  }

  while (v13 != v23);
  v10[2](v10, v22);

  _Block_object_dispose(&v30, 8);
  v37 = v36;
  sub_1000ABAA8(&v37);
}

- (void)tsu_enumerateSkippedRangesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AB544;
  v6[3] = &unk_1001CEA80;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(NSIndexSet *)v7 enumerateRangesWithOptions:a3 usingBlock:v6];
}

- (void)tsu_enumerateSkippedIndexesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AB680;
  v6[3] = &unk_1001CEA80;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(NSIndexSet *)v7 enumerateRangesWithOptions:a3 usingBlock:v6];
}

- (id)tsu_indexSetByOutsettingRangesBy:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000A9BA4;
  v12 = sub_1000A9BB4;
  v13 = +[NSMutableIndexSet indexSet];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AB830;
  v7[3] = &unk_1001CEAA8;
  v7[4] = &v8;
  v7[5] = a3;
  [(NSIndexSet *)self enumerateRangesUsingBlock:v7];
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end