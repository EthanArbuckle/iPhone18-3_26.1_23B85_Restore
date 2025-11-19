@interface NSPropertyListSerialization
+ (id)tsu_localizedPropertyListWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (id)tsu_propertyListWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (void)tsu_processLocalizedPropertyList:(id)a3;
@end

@implementation NSPropertyListSerialization

+ (id)tsu_propertyListWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v7 = [NSInputStream inputStreamWithURL:a3];
  v8 = v7;
  if (v7)
  {
    [v7 open];
    v9 = [NSPropertyListSerialization propertyListWithStream:v8 options:a4 format:0 error:a5];
    [v8 close];
  }

  else if (a5)
  {
    [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)tsu_processLocalizedPropertyList:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 objectForKey:@"_LOCALIZABLE_"];
    if (v6)
    {
      [v5 removeObjectForKey:@"_LOCALIZABLE_"];
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AF714;
    v18[3] = &unk_1001CEE20;
    v18[4] = a1;
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_1001615F8();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100161620();
        }

        v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSPropertyListSerialization(TSUtility) tsu_processLocalizedPropertyList:]");
        v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSPropertyListSerialization_TSUtility.m"];
        [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:47 isFatal:0 description:"Expected a dictionary as a child of %{public}@", @"_LOCALIZABLE_"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      [v5 addEntriesFromDictionary:v6];
    }

LABEL_21:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [a1 tsu_processLocalizedPropertyList:*(*(&v14 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v11);
    }

    goto LABEL_21;
  }

LABEL_22:
}

+ (id)tsu_localizedPropertyListWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a4 - 1 >= 2)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001616D4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001616E8();
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSPropertyListSerialization(TSUtility) tsu_localizedPropertyListWithContentsOfURL:options:error:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSPropertyListSerialization_TSUtility.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:65 isFatal:0 description:"Need mutable containers to process a localizable property list"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = [a1 tsu_propertyListWithContentsOfURL:v8 options:a4 error:a5];
  [a1 tsu_processLocalizedPropertyList:v11];

  return v11;
}

@end