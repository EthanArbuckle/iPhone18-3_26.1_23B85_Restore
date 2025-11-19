@interface NSSet
+ (BOOL)tsu_set:(id)a3 isEqualToSet:(id)a4;
+ (id)tsu_intersectionOfSets:(id)a3;
+ (id)tsu_setWithSelectors:(SEL)a3;
- (BOOL)tsu_containsKindOfClass:(Class)a3;
- (BOOL)tsu_containsObjectIdenticalTo:(id)a3;
- (BOOL)tsu_containsObjectPassingTest:(id)a3;
- (BOOL)tsu_isHomogeneousForClass:(Class)a3;
- (id)tsu_onlyObject;
- (id)tsu_setByIntersectingSet:(id)a3;
- (id)tsu_setByMappingObjectsUsingBlock:(id)a3;
- (id)tsu_setBySubtractingSet:(id)a3;
- (id)tsu_sortedArray;
@end

@implementation NSSet

+ (id)tsu_setWithSelectors:(SEL)a3
{
  v4 = objc_alloc_init(NSMutableSet);
  v9 = &v11;
  if (a3)
  {
    do
    {
      v5 = NSStringFromSelector(a3);
      [v4 addObject:v5];

      v6 = v9++;
      a3 = *v6;
    }

    while (*v6);
  }

  v7 = [v4 copy];

  return v7;
}

+ (BOOL)tsu_set:(id)a3 isEqualToSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
    goto LABEL_6;
  }

  if (!v5)
  {
    v5 = +[NSSet set];
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = +[NSSet set];
    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = [v5 isEqualToSet:v7];
LABEL_6:

  return v8;
}

+ (id)tsu_intersectionOfSets:(id)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v11 + 1) + 8 * i);
      if (v6)
      {
        [v6 intersectSet:v9];
      }

      else
      {
        v6 = [NSMutableSet setWithSet:v9];
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_12:
    v6 = +[NSMutableSet set];
  }

  return v6;
}

- (BOOL)tsu_containsObjectIdenticalTo:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        if (*(*(&v10 + 1) + 8 * i) == v4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)tsu_containsObjectPassingTest:(id)a3
{
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = v4[2](v4, *(*(&v12 + 1) + 8 * v9), &v16);
      if (v10 & 1) != 0 || (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        v10 = 0;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)tsu_containsKindOfClass:(Class)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)tsu_sortedArray
{
  v2 = [(NSSet *)self allObjects];
  v3 = [v2 sortedArrayUsingSelector:"compare:"];

  return v3;
}

- (id)tsu_setByMappingObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = TSUFileIOChannel;
  if (!v4)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100158DD8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100158DEC();
    }

    v6 = [NSString stringWithUTF8String:"[NSSet(TSUAdditions) tsu_setByMappingObjectsUsingBlock:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSSetAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:114 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "block != nil"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v22 = [NSMutableSet setWithCapacity:[(NSSet *)self count]];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self;
  v8 = [(NSSet *)obj countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = v4[2](v4, *(*(&v23 + 1) + 8 * v11));
        if (v12)
        {
          [v22 addObject:v12];
        }

        else
        {
          v13 = [&v5[30] _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_100158E9C();
          }

          v14 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v28 = v13;
            v29 = 2082;
            v30 = "[NSSet(TSUAdditions) tsu_setByMappingObjectsUsingBlock:]";
            v31 = 2082;
            v32 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSSetAdditions.m";
            v33 = 1024;
            v34 = 124;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Block returned a nil object.", buf, 0x22u);
          }

          v15 = v5 + 30;
          v16 = [NSString stringWithUTF8String:"[NSSet(TSUAdditions) tsu_setByMappingObjectsUsingBlock:]"];
          [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSSetAdditions.m"];
          v18 = v17 = v5;
          [(__objc2_class *)v15 handleFailureInFunction:v16 file:v18 lineNumber:124 isFatal:0 description:"Block returned a nil object."];

          v5 = v17;
          [&v17[30] logBacktraceThrottled];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSSet *)obj countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v9);
  }

  v19 = [v22 copy];

  return v19;
}

- (BOOL)tsu_isHomogeneousForClass:(Class)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (id)tsu_onlyObject
{
  if ([(NSSet *)self count]>= 2)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100158EC4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100158ED8();
    }

    v3 = [NSString stringWithUTF8String:"[NSSet(TSUAdditions) tsu_onlyObject]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSSetAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:145 isFatal:0 description:"As this method returns the only object in the set, it only makes sense if the set has at most one object."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = [(NSSet *)self anyObject];

  return v5;
}

- (id)tsu_setByIntersectingSet:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet setWithSet:self];
  [v5 intersectSet:v4];

  v6 = [NSSet setWithSet:v5];

  return v6;
}

- (id)tsu_setBySubtractingSet:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [NSMutableSet setWithSet:self];
    [v5 minusSet:v4];
    v6 = [NSSet setWithSet:v5];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

@end