@interface YIbYnDZMoU7hwSYC
+ (id)propertySets;
+ (id)sharedInstance;
- (YIbYnDZMoU7hwSYC)init;
- (id)_extractPHAssetPropertySets:(id)a3;
- (id)_uTjOtNxowyWuuBCA:(id)a3 N3UHg1ij3irF9uUu:(id)a4;
- (void)ZkTXckPDVjRWZuVM:(id)a3 QsX3tfdMvsGwvY0F:(int64_t)a4 oMKZEzaKOVd8YlLk:(id)a5 withCompletion:(id)a6;
- (void)y8DihfZYjxGbiiEE:(id)a3 QsX3tfdMvsGwvY0F:(int64_t)a4 withCompletion:(id)a5;
@end

@implementation YIbYnDZMoU7hwSYC

+ (id)sharedInstance
{
  if (qword_1006D7C88 != -1)
  {
    sub_10059355C();
  }

  v3 = qword_1006D7C80;

  return v3;
}

- (YIbYnDZMoU7hwSYC)init
{
  v6.receiver = self;
  v6.super_class = YIbYnDZMoU7hwSYC;
  v2 = [(YIbYnDZMoU7hwSYC *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ASPKHelperQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)y8DihfZYjxGbiiEE:(id)a3 QsX3tfdMvsGwvY0F:(int64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(YIbYnDZMoU7hwSYC *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D0DC;
  block[3] = &unk_10068F340;
  v15 = v9;
  v16 = a4;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);
}

- (id)_uTjOtNxowyWuuBCA:(id)a3 N3UHg1ij3irF9uUu:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v32 = v7;
  v34 = +[YIbYnDZMoU7hwSYC propertySets];
  v31 = [@"PHAssetPropertySet" length];
  v8 = 0;
  v33 = 0;
  v30 = v5;
  while ([v6 count] > v8)
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
    v10 = [v9 componentsSeparatedByString:@"."];
    if ([v10 count] < 2)
    {
      v23 = [v5 valueForKey:v9];
      if (v23)
      {
        [v7 setObject:v23 forKey:v9];
      }

      else
      {
        v25 = v33;
        if (!v33)
        {
          v25 = 165015;
        }

        v33 = v25;
      }
    }

    else
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v34 containsObject:v11];

      if (v12)
      {
        v13 = [v10 objectAtIndexedSubscript:0];
        v14 = [v13 substringFromIndex:v31];

        v15 = [v14 substringToIndex:1];
        v35 = [v15 lowercaseString];

        v16 = [v14 substringFromIndex:1];
        v17 = +[NSMutableString string];
        [v17 appendString:v35];
        [v17 appendString:v16];
        [v17 appendString:@"Properties"];
        v18 = NSSelectorFromString(v17);
        if (objc_opt_respondsToSelector())
        {
          v19 = ([v5 methodForSelector:v18])(v5, v18);
          if (v19)
          {
            v20 = [v10 objectAtIndexedSubscript:1];
            v21 = NSSelectorFromString(v20);

            if (objc_opt_respondsToSelector())
            {
              v22 = ([v19 methodForSelector:v21])(v19, v21);
              if (v22)
              {
                if ([PJXBDBF1h0EU80dy canSerialize:v22])
                {
                  [v32 setObject:v22 forKey:v9];
                }

                else
                {
                  v26 = [0 description];
                  [v32 setObject:v26 forKey:v9];
                }
              }
            }
          }

          v5 = v30;
        }

        v23 = 0;
        v7 = v32;
      }

      else
      {
        v24 = qword_1006DF770;
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Ignoring unsupported PropertySet", buf, 2u);
        }

        v23 = 0;
      }
    }

    ++v8;
  }

  v27 = [NSNumber numberWithInteger:v33];
  [v7 setObject:v27 forKeyedSubscript:@"ec"];

  v28 = [NSDictionary dictionaryWithDictionary:v7];

  return v28;
}

+ (id)propertySets
{
  if (qword_1006D7C98 != -1)
  {
    sub_1005935E8();
  }

  v3 = qword_1006D7C90;

  return v3;
}

- (id)_extractPHAssetPropertySets:(id)a3
{
  v17 = a3;
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v17, "count")}];
  v4 = +[YIbYnDZMoU7hwSYC propertySets];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v17;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [v9 componentsSeparatedByString:@"."];
        if ([v10 count] < 2)
        {
          [v3 addObject:v9];
        }

        else
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v4 containsObject:v11];

          if (v12)
          {
            v13 = [v10 objectAtIndexedSubscript:0];
            [v3 addObject:v13];
          }

          else
          {
            v14 = qword_1006DF770;
            if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
            {
              sub_1005935FC(&buf, v19, v14);
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v15 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v15;
    }

    while (v15);
  }

  return v3;
}

- (void)ZkTXckPDVjRWZuVM:(id)a3 QsX3tfdMvsGwvY0F:(int64_t)a4 oMKZEzaKOVd8YlLk:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(YIbYnDZMoU7hwSYC *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF30;
  block[3] = &unk_10068F388;
  v21 = v12;
  v22 = a4;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

@end