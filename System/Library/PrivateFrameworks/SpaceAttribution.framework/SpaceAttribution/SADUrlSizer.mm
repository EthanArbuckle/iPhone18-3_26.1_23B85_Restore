@interface SADUrlSizer
+ (id)newWithOptions:(unint64_t)options;
- (SADUrlSizer)initWithOptions:(unint64_t)options;
- (void)scanURLs:(id)ls withSizer:(id)sizer;
@end

@implementation SADUrlSizer

- (SADUrlSizer)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = SADUrlSizer;
  result = [(SADUrlSizer *)&v5 init];
  if (result)
  {
    result->_scanOptions = options;
  }

  return result;
}

+ (id)newWithOptions:(unint64_t)options
{
  v4 = [self alloc];

  return [v4 initWithOptions:options];
}

- (void)scanURLs:(id)ls withSizer:(id)sizer
{
  lsCopy = ls;
  sizerCopy = sizer;
  v6 = objc_opt_new();
  v27 = objc_opt_new();
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F7FC(v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = lsCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v29;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v12);
        v15 = objc_autoreleasePoolPush();
        path = [v14 path];
        v17 = [v27 getItemSizeAtPath:path];

        v10 = +[SAURLSize newWithSize:mayBePartOfCloneChain:](SAURLSize, "newWithSize:mayBePartOfCloneChain:", [v17 dataSize], objc_msgSend(v17, "cloneSize") > 0);
        [v6 addURL:v14 withSizeInfo:v10];
        if ((self->_scanOptions & 2) != 0)
        {
          [sizerCopy callHandlerWithResults:v6 error:0];
        }

        v18 = SALog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          path2 = [v14 path];
          dataSize = [v17 dataSize];
          cloneSize = [v17 cloneSize];
          purgeableSize = [v17 purgeableSize];
          *buf = 136316162;
          v33 = "[SADUrlSizer scanURLs:withSizer:]";
          v34 = 2112;
          v35 = path2;
          v36 = 2048;
          v37 = dataSize;
          v38 = 2048;
          v39 = cloneSize;
          v40 = 2048;
          v41 = purgeableSize;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s path %@, data %llu, clone %llu, purge %llu", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v15);
        v12 = v12 + 1;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
    }

    while (v9);
  }

  if (self->_scanOptions)
  {
    [sizerCopy callHandlerWithResults:v6 error:0];
  }

  v22 = SALog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F880(v22);
  }
}

@end