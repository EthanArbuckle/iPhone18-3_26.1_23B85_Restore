@interface YIbYnDZMoU7hwSYC
+ (id)propertySets;
+ (id)sharedInstance;
- (YIbYnDZMoU7hwSYC)init;
- (id)_extractPHAssetPropertySets:(id)sets;
- (id)_uTjOtNxowyWuuBCA:(id)a N3UHg1ij3irF9uUu:(id)uu;
- (void)ZkTXckPDVjRWZuVM:(id)m QsX3tfdMvsGwvY0F:(int64_t)f oMKZEzaKOVd8YlLk:(id)lk withCompletion:(id)completion;
- (void)y8DihfZYjxGbiiEE:(id)e QsX3tfdMvsGwvY0F:(int64_t)f withCompletion:(id)completion;
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

- (void)y8DihfZYjxGbiiEE:(id)e QsX3tfdMvsGwvY0F:(int64_t)f withCompletion:(id)completion
{
  eCopy = e;
  completionCopy = completion;
  queue = [(YIbYnDZMoU7hwSYC *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D0DC;
  block[3] = &unk_10068F340;
  v15 = completionCopy;
  fCopy = f;
  v14 = eCopy;
  v11 = completionCopy;
  v12 = eCopy;
  dispatch_async(queue, block);
}

- (id)_uTjOtNxowyWuuBCA:(id)a N3UHg1ij3irF9uUu:(id)uu
{
  aCopy = a;
  uuCopy = uu;
  v7 = objc_alloc_init(NSMutableDictionary);
  v32 = v7;
  v34 = +[YIbYnDZMoU7hwSYC propertySets];
  v31 = [@"PHAssetPropertySet" length];
  v8 = 0;
  v33 = 0;
  v30 = aCopy;
  while ([uuCopy count] > v8)
  {
    v9 = [uuCopy objectAtIndexedSubscript:v8];
    v10 = [v9 componentsSeparatedByString:@"."];
    if ([v10 count] < 2)
    {
      v23 = [aCopy valueForKey:v9];
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
        lowercaseString = [v15 lowercaseString];

        v16 = [v14 substringFromIndex:1];
        v17 = +[NSMutableString string];
        [v17 appendString:lowercaseString];
        [v17 appendString:v16];
        [v17 appendString:@"Properties"];
        v18 = NSSelectorFromString(v17);
        if (objc_opt_respondsToSelector())
        {
          v19 = ([aCopy methodForSelector:v18])(aCopy, v18);
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

          aCopy = v30;
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

- (id)_extractPHAssetPropertySets:(id)sets
{
  setsCopy = sets;
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(setsCopy, "count")}];
  v4 = +[YIbYnDZMoU7hwSYC propertySets];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = setsCopy;
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

- (void)ZkTXckPDVjRWZuVM:(id)m QsX3tfdMvsGwvY0F:(int64_t)f oMKZEzaKOVd8YlLk:(id)lk withCompletion:(id)completion
{
  mCopy = m;
  lkCopy = lk;
  completionCopy = completion;
  queue = [(YIbYnDZMoU7hwSYC *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF30;
  block[3] = &unk_10068F388;
  v21 = completionCopy;
  fCopy = f;
  v18 = mCopy;
  selfCopy = self;
  v20 = lkCopy;
  v14 = completionCopy;
  v15 = lkCopy;
  v16 = mCopy;
  dispatch_async(queue, block);
}

@end