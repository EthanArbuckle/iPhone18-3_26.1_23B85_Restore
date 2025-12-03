@interface NSArray
+ (id)tsu_arrayByUnioningArray:(id)array withArray:(id)withArray;
+ (id)tsu_arrayWithCGFloats:(const double *)floats count:(unint64_t)count;
+ (id)tsu_arrayWithInts:(const int *)ints count:(unint64_t)count;
+ (id)tsu_arrayWithNonNilObject:(id)object;
+ (id)tsu_arrayWithUIntegers:(const unint64_t *)integers count:(unint64_t)count;
- (BOOL)tsu_allObjectsPassTest:(id)test;
- (BOOL)tsu_conformsToAnyUTType:(id)type;
- (BOOL)tsu_containsObjectPassingTest:(id)test;
- (BOOL)tsu_isHomogeneousForClass:(Class)class;
- (id)tsu_UTTypes;
- (id)tsu_arrayByAddingNonContainedObjectsFromArray:(id)array;
- (id)tsu_arrayByFlattening;
- (id)tsu_arrayByMappingObjectsUsingBlock:(id)block;
- (id)tsu_arrayByRemovingFirstObject;
- (id)tsu_arrayByRemovingObjectsAtIndexes:(id)indexes;
- (id)tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:(id)array;
- (id)tsu_arrayByReversingOrder;
- (id)tsu_arrayByTransformingWithBlock:(id)block;
- (id)tsu_arrayOfObjectsPassingTest:(id)test;
- (id)tsu_arrayWithObjectsInHashTable:(id)table;
- (id)tsu_arrayWithObjectsInSet:(id)set;
- (id)tsu_firstObjectPassingTest:(id)test;
- (id)tsu_indexesOfObjects:(id)objects;
- (id)tsu_initWithCGFloats:(const double *)floats count:(unint64_t)count;
- (id)tsu_initWithInts:(const int *)ints count:(unint64_t)count;
- (id)tsu_initWithUIntegers:(const unint64_t *)integers count:(unint64_t)count;
- (id)tsu_intersectionWithArray:(id)array;
- (id)tsu_localizedList;
- (id)tsu_objectPriorToObject:(id)object;
- (id)tsu_onlyObject;
- (id)tsu_rangeCheckedObjectAtIndex:(unint64_t)index;
- (unint64_t)tsu_indexOfSmallestObject;
- (void)tsu_enumerateSnapshotObjectsUsingBlock:(id)block;
@end

@implementation NSArray

- (id)tsu_initWithCGFloats:(const double *)floats count:(unint64_t)count
{
  if (count < 0x11)
  {
    if (!count)
    {
      return [(NSArray *)self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [NSNumber numberWithDouble:floats[v8]];
      ++v8;
    }

    while (count != v8);
    v9 = [(NSArray *)self initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [(NSArray *)self initWithObjects:0 count:count];
}

+ (id)tsu_arrayWithCGFloats:(const double *)floats count:(unint64_t)count
{
  v4 = [[self alloc] tsu_initWithCGFloats:floats count:count];

  return v4;
}

- (id)tsu_initWithInts:(const int *)ints count:(unint64_t)count
{
  if (count < 0x11)
  {
    if (!count)
    {
      return [(NSArray *)self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [NSNumber numberWithInt:ints[v8]];
      ++v8;
    }

    while (count != v8);
    v9 = [(NSArray *)self initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [(NSArray *)self initWithObjects:0 count:count];
}

+ (id)tsu_arrayWithInts:(const int *)ints count:(unint64_t)count
{
  v4 = [[self alloc] tsu_initWithInts:ints count:count];

  return v4;
}

+ (id)tsu_arrayByUnioningArray:(id)array withArray:(id)withArray
{
  if (array)
  {
    return [array tsu_arrayByAddingNonContainedObjectsFromArray:withArray];
  }

  else
  {
    return withArray;
  }
}

- (id)tsu_initWithUIntegers:(const unint64_t *)integers count:(unint64_t)count
{
  if (count < 0x11)
  {
    if (!count)
    {
      return [(NSArray *)self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [NSNumber numberWithInteger:integers[v8]];
      ++v8;
    }

    while (count != v8);
    v9 = [(NSArray *)self initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [(NSArray *)self initWithObjects:0 count:count];
}

+ (id)tsu_arrayWithUIntegers:(const unint64_t *)integers count:(unint64_t)count
{
  v4 = [[self alloc] tsu_initWithUIntegers:integers count:count];

  return v4;
}

- (id)tsu_rangeCheckedObjectAtIndex:(unint64_t)index
{
  if ([(NSArray *)self count]<= index)
  {
    return 0;
  }

  return [(NSArray *)self objectAtIndex:index];
}

- (id)tsu_objectPriorToObject:(id)object
{
  v4 = [(NSArray *)self indexOfObject:object];
  if (!v4 || v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSArray *)self objectAtIndex:v4 - 1];
}

- (unint64_t)tsu_indexOfSmallestObject
{
  v3 = [(NSArray *)self count];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v8 = [(NSArray *)self objectAtIndex:v5];
    v9 = v8;
    if (!v6 || [v8 compare:v6] == -1)
    {
      v6 = v9;
      v7 = v5;
    }

    ++v5;
  }

  while (v4 != v5);
  return v7;
}

- (id)tsu_indexesOfObjects:(id)objects
{
  v5 = +[NSMutableIndexSet indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [objects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(objects);
        }

        v10 = [(NSArray *)self indexOfObject:*(*(&v12 + 1) + 8 * v9)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [objects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)tsu_arrayWithObjectsInSet:(id)set
{
  v5 = +[NSMutableArray array];
  if (set)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([set containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (id)tsu_arrayWithObjectsInHashTable:(id)table
{
  v5 = +[NSMutableArray array];
  if (table)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([table containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (id)tsu_intersectionWithArray:(id)array
{
  v5 = +[NSMutableArray array];
  if (array)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([array indexOfObject:v10] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (id)tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:(id)array
{
  v5 = [array count];
  if (!v5)
  {
    return self;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  p_super = self;
  do
  {
    v10 = [array objectAtIndex:v7];
    v11 = [(NSArray *)p_super indexOfObjectIdenticalTo:v10];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v11; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSArray *)p_super indexOfObjectIdenticalTo:v10])
      {
        if (!v8)
        {
          v8 = [NSMutableArray arrayWithArray:self];
          p_super = &v8->super;
        }

        [(NSMutableArray *)v8 removeObjectAtIndex:i];
      }
    }

    ++v7;
  }

  while (v7 != v6);
  return p_super;
}

- (id)tsu_arrayByAddingNonContainedObjectsFromArray:(id)array
{
  if (array && (v5 = [array count]) != 0)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [array objectAtIndex:v8];
      if (![(NSArray *)self containsObject:v9])
      {
        if (!v7)
        {
          v7 = [NSMutableArray arrayWithCapacity:&v6[[(NSArray *)self count]]];
          [(NSMutableArray *)v7 addObjectsFromArray:self];
        }

        [(NSMutableArray *)v7 addObject:v9];
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return self;
  }
}

- (id)tsu_arrayByReversingOrder
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [(NSArray *)self reverseObjectEnumerator];
  v5 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [(NSMutableArray *)v3 addObject:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)tsu_arrayByRemovingFirstObject
{
  if (![(NSArray *)self count])
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C44C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C460();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can't remove the first object of an empty array!", v6, v7, v8, v9, v10, v11, v12, "[NSArray(TSUAdditions) tsu_arrayByRemovingFirstObject]");
    TSUCrashBreakpoint([TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSArray(TSUAdditions) tsu_arrayByRemovingFirstObject]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSArrayAdditions.m"] lineNumber:245 isFatal:1 description:"Can't remove the first object of an empty array!"]);
    abort();
  }

  v3 = [NSMutableArray arrayWithArray:self];
  [(NSMutableArray *)v3 removeObjectAtIndex:0];
  v4 = objc_opt_class();

  return [v4 arrayWithArray:v3];
}

- (id)tsu_arrayByRemovingObjectsAtIndexes:(id)indexes
{
  if (![indexes count])
  {
    return self;
  }

  v5 = [(NSArray *)self mutableCopy];
  [v5 removeObjectsAtIndexes:indexes];
  v6 = [NSArray arrayWithArray:v5];

  return v6;
}

- (void)tsu_enumerateSnapshotObjectsUsingBlock:(id)block
{
  v4 = [(NSArray *)self copy];
  [v4 enumerateObjectsUsingBlock:block];
}

- (id)tsu_firstObjectPassingTest:(id)test
{
  if (!test)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(self);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ((*(test + 2))(test, v9))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_4;
      }

      return v9;
    }
  }
}

- (BOOL)tsu_containsObjectPassingTest:(id)test
{
  if (test)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(self);
          }

          if ((*(test + 2))(test, *(*(&v10 + 1) + 8 * i)))
          {
            LOBYTE(v5) = 1;
            return v5;
          }
        }

        v6 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)tsu_isHomogeneousForClass:(Class)class
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)tsu_allObjectsPassTest:(id)test
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(self);
      }

      v9 = (*(test + 2))(test, *(*(&v11 + 1) + 8 * v8));
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)tsu_arrayOfObjectsPassingTest:(id)test
{
  if (test)
  {
    selfCopy = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10008D0D8;
    v9[3] = &unk_1001CD270;
    v9[4] = test;
    v5 = [(NSArray *)self indexesOfObjectsPassingTest:v9];
    if (!v5)
    {
      return +[NSArray array];
    }

    v6 = v5;
    if (![(NSIndexSet *)v5 count])
    {
      return +[NSArray array];
    }

    if ([(NSIndexSet *)v6 containsIndexesInRange:0, [(NSArray *)selfCopy count]])
    {
      return selfCopy;
    }

    return [(NSArray *)selfCopy objectsAtIndexes:v6];
  }

  return +[NSArray array];
}

- (id)tsu_arrayByTransformingWithBlock:(id)block
{
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008D190;
  v7[3] = &unk_1001CD298;
  v7[4] = v5;
  v7[5] = block;
  [(NSArray *)self enumerateObjectsUsingBlock:v7];
  return v5;
}

- (id)tsu_arrayByMappingObjectsUsingBlock:(id)block
{
  v14 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSArray *)self countByEnumeratingWithState:&v15 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = (*(block + 2))(block, v8);
        if (v9)
        {
          [(NSMutableArray *)v14 addObject:v9];
        }

        else
        {
          v10 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_10015C4F4();
          }

          v11 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v20 = v10;
            v21 = 2082;
            v22 = "[NSArray(TSUAdditions) tsu_arrayByMappingObjectsUsingBlock:]";
            v23 = 2082;
            v24 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSArrayAdditions.m";
            v25 = 1024;
            v26 = 376;
            v27 = 2112;
            v28 = v8;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Block returned a nil object for %@.", buf, 0x2Cu);
          }

          [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSArray(TSUAdditions) tsu_arrayByMappingObjectsUsingBlock:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSArrayAdditions.m"] lineNumber:376 isFatal:0 description:"Block returned a nil object for %@.", v8];
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)self countByEnumeratingWithState:&v15 objects:v29 count:16];
    }

    while (v5);
  }

  return [(NSMutableArray *)v14 copy];
}

- (id)tsu_arrayByFlattening
{
  v3 = +[NSMutableArray array];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_10008D574;
  v6[4] = sub_10008D584;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008D590;
  v5[3] = &unk_1001CD2E0;
  v5[4] = v6;
  v6[5] = v5;
  sub_10008D590(v5, self, v3);
  _Block_object_dispose(v6, 8);
  return v3;
}

- (id)tsu_onlyObject
{
  if ([(NSArray *)self count]>= 2)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C51C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C530();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSArray(TSUAdditions) tsu_onlyObject]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSArrayAdditions.m"] lineNumber:406 isFatal:0 description:"As this method returns the only object in the array, it only makes sense if the array has at most one object."];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return [(NSArray *)self firstObject];
}

- (id)tsu_localizedList
{
  v3 = +[NSMutableString string];
  v4 = [(NSArray *)self count];
  if (v4)
  {
    v5 = v4;
    v6 = 2;
    for (i = v4; i; --i)
    {
      [v3 appendFormat:@"%@", objc_msgSend(-[NSArray objectAtIndexedSubscript:](self, "objectAtIndexedSubscript:", v6 - 2), "description")];
      if (i < 3)
      {
        if (v5 >= 3 && i == 2)
        {
          v8 = SFUMainBundle();
          v9 = @"TSU_LIST_SEPARATOR_FINAL";
          v10 = @", and ";
        }

        else
        {
          if (v5 != 2 || v6 != 2)
          {
            goto LABEL_12;
          }

          v8 = SFUMainBundle();
          v9 = @"TSU_LIST_SEPARATOR_TWO_ITEMS";
          v10 = @" and ";
        }
      }

      else
      {
        v8 = SFUMainBundle();
        v9 = @"TSU_LIST_SEPARATOR";
        v10 = @", ";
      }

      [v3 appendFormat:@"%@", objc_msgSend(v8, "localizedStringForKey:value:table:", v9, v10, @"TSUtility"];
LABEL_12:
      ++v6;
    }
  }

  v11 = [v3 copy];

  return v11;
}

+ (id)tsu_arrayWithNonNilObject:(id)object
{
  if (!object)
  {
    return &__NSArray0__struct;
  }

  objectCopy = object;
  return [NSArray arrayWithObjects:&objectCopy count:1];
}

- (id)tsu_UTTypes
{
  if ([(NSArray *)self tsu_isHomogeneousForClass:objc_opt_class()])
  {
    v3 = [(NSArray *)self tsu_arrayByTransformingWithBlock:&stru_1001CDA50];
  }

  else
  {
    v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015DE1C();
    }

    v5 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015DE30(v4, v5);
    }

    v6 = [NSString stringWithUTF8String:"[NSArray(TSUUTIUtilities) tsu_UTTypes]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUUTIUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:161 isFatal:0 description:"Expecting an array of strings."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (BOOL)tsu_conformsToAnyUTType:(id)type
{
  typeCopy = type;
  if ([typeCopy count])
  {
    [(NSArray *)self tsu_UTTypes];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) tsu_conformsToAnyUTType:{typeCopy, v10}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end