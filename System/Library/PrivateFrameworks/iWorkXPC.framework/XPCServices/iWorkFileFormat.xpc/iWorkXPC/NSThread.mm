@interface NSThread
+ (id)tsu_currentThreadName;
+ (id)tsu_stringForQualityOfService:(int64_t)service;
+ (id)tsu_stringForQualityOfServiceClass:(unsigned int)class;
- (unsigned)tsu_qualityOfServiceClass;
@end

@implementation NSThread

+ (id)tsu_currentThreadName
{
  v2 = +[NSThread isMainThread];
  v3 = v2;
  v4 = @"MT";
  if (v2)
  {
    v5 = @"MT";
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ((v3 & 1) == 0 && (+[NSOperationQueue currentQueue](NSOperationQueue, "currentQueue"), v7 = objc_claimAutoreleasedReturnValue(), [v7 name], v4 = objc_claimAutoreleasedReturnValue(), v7, !v4) || !-[__CFString length](v4, "length"))
  {
    label = dispatch_queue_get_label(0);
    if (label)
    {
      v9 = [NSString stringWithCString:label encoding:1];

      v4 = v9;
    }

    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (![(__CFString *)v4 length])
  {
LABEL_13:
    v33 = 0u;
    memset(v34, 0, 28);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = pthread_self();
    pthread_getname_np(v10, &v17, 0x12CuLL);
    if (v17)
    {
      v11 = [NSString stringWithCString:&v17 encoding:1];

      v4 = v11;
    }

    if (!v4)
    {
      goto LABEL_23;
    }
  }

  if (![(__CFString *)v4 length:v17])
  {
LABEL_23:
    v12 = +[NSThread currentThread];
    name = [v12 name];

    v4 = name;
    if (!name)
    {
      goto LABEL_17;
    }
  }

  if (![(__CFString *)v4 length])
  {
LABEL_17:
    v14 = +[NSThread currentThread];
    v15 = [v14 description];

    v4 = v15;
  }

  return v4;
}

- (unsigned)tsu_qualityOfServiceClass
{
  qualityOfService = [(NSThread *)self qualityOfService];
  if (qualityOfService == NSQualityOfServiceUserInteractive)
  {
    v3 = 33;
  }

  else
  {
    v3 = 0;
  }

  if (qualityOfService == NSQualityOfServiceUserInitiated)
  {
    v4 = 25;
  }

  else
  {
    v4 = v3;
  }

  if (qualityOfService == NSQualityOfServiceUtility)
  {
    v5 = 17;
  }

  else
  {
    v5 = v4;
  }

  if (qualityOfService == NSQualityOfServiceBackground)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  if (qualityOfService == NSQualityOfServiceDefault)
  {
    v7 = 21;
  }

  else
  {
    v7 = v6;
  }

  if (qualityOfService <= 16)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

+ (id)tsu_stringForQualityOfService:(int64_t)service
{
  v3 = @"NSQualityOfServiceUtility";
  v4 = @"NSQualityOfServiceUserInitiated";
  v5 = @"NSQualityOfServiceUserInteractive";
  if (service != 33)
  {
    v5 = 0;
  }

  if (service != 25)
  {
    v4 = v5;
  }

  if (service != 17)
  {
    v3 = v4;
  }

  v6 = @"NSQualityOfServiceDefault";
  v7 = @"NSQualityOfServiceBackground";
  if (service != 9)
  {
    v7 = 0;
  }

  if (service != -1)
  {
    v6 = v7;
  }

  if (service <= 16)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (id)tsu_stringForQualityOfServiceClass:(unsigned int)class
{
  v3 = @"QOS_CLASS_DEFAULT";
  v4 = @"QOS_CLASS_USER_INITIATED";
  v5 = @"QOS_CLASS_USER_INTERACTIVE";
  if (class != 33)
  {
    v5 = 0;
  }

  if (class != 25)
  {
    v4 = v5;
  }

  if (class != 21)
  {
    v3 = v4;
  }

  v6 = @"QOS_CLASS_UTILITY";
  if (class != 17)
  {
    v6 = 0;
  }

  if (class == 9)
  {
    v6 = @"QOS_CLASS_BACKGROUND";
  }

  if (!class)
  {
    v6 = @"QOS_CLASS_UNSPECIFIED";
  }

  if (class <= 20)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

@end