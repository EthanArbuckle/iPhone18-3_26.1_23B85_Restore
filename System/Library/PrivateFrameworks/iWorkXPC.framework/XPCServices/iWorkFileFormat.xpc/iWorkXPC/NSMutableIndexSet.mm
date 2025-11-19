@interface NSMutableIndexSet
- (void)tsu_intersectionWithIndexSet:(id)a3;
- (void)tsu_moveIndexesInRange:(_NSRange)a3 toOffset:(unint64_t)a4;
@end

@implementation NSMutableIndexSet

- (void)tsu_moveIndexesInRange:(_NSRange)a3 toOffset:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  if (a4 < a3.location || a4 - a3.location >= a3.length)
  {
    v8 = a3.location + a3.length;
    if (a3.location + a3.length != a4 && [(NSMutableIndexSet *)self firstIndex]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v8 >= a4)
      {
        v9 = 0;
      }

      else
      {
        v9 = length;
      }

      v10 = a4 - v9;
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1000AB9B0;
      v15 = &unk_1001CEAD0;
      v11 = objc_alloc_init(NSMutableIndexSet);
      v16 = v11;
      v17 = location;
      v18 = length;
      v19 = v10;
      [(NSMutableIndexSet *)self enumerateRangesInRange:location options:length usingBlock:0, &v12];
      [(NSMutableIndexSet *)self shiftIndexesStartingAtIndex:location + length by:-length, v12, v13, v14, v15];
      [(NSMutableIndexSet *)self shiftIndexesStartingAtIndex:v10 by:length];
      [(NSMutableIndexSet *)self addIndexes:v11];
    }
  }
}

- (void)tsu_intersectionWithIndexSet:(id)a3
{
  v5 = a3;
  if ([(NSMutableIndexSet *)self count])
  {
    v4 = [[NSMutableIndexSet alloc] initWithIndexesInRange:{-[NSMutableIndexSet firstIndex](self, "firstIndex"), -[NSMutableIndexSet lastIndex](self, "lastIndex") - -[NSMutableIndexSet firstIndex](self, "firstIndex") + 1}];
    [v4 removeIndexes:v5];
    [(NSMutableIndexSet *)self removeIndexes:v4];
  }
}

@end