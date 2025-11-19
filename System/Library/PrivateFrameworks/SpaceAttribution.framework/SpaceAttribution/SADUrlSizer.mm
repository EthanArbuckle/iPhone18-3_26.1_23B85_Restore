@interface SADUrlSizer
+ (id)newWithOptions:(unint64_t)a3;
- (SADUrlSizer)initWithOptions:(unint64_t)a3;
- (void)scanURLs:(id)a3 withSizer:(id)a4;
@end

@implementation SADUrlSizer

- (SADUrlSizer)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SADUrlSizer;
  result = [(SADUrlSizer *)&v5 init];
  if (result)
  {
    result->_scanOptions = a3;
  }

  return result;
}

+ (id)newWithOptions:(unint64_t)a3
{
  v4 = [a1 alloc];

  return [v4 initWithOptions:a3];
}

- (void)scanURLs:(id)a3 withSizer:(id)a4
{
  v5 = a3;
  v24 = a4;
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
  obj = v5;
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
        v16 = [v14 path];
        v17 = [v27 getItemSizeAtPath:v16];

        v10 = +[SAURLSize newWithSize:mayBePartOfCloneChain:](SAURLSize, "newWithSize:mayBePartOfCloneChain:", [v17 dataSize], objc_msgSend(v17, "cloneSize") > 0);
        [v6 addURL:v14 withSizeInfo:v10];
        if ((self->_scanOptions & 2) != 0)
        {
          [v24 callHandlerWithResults:v6 error:0];
        }

        v18 = SALog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v14 path];
          v23 = [v17 dataSize];
          v20 = [v17 cloneSize];
          v21 = [v17 purgeableSize];
          *buf = 136316162;
          v33 = "[SADUrlSizer scanURLs:withSizer:]";
          v34 = 2112;
          v35 = v19;
          v36 = 2048;
          v37 = v23;
          v38 = 2048;
          v39 = v20;
          v40 = 2048;
          v41 = v21;
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
    [v24 callHandlerWithResults:v6 error:0];
  }

  v22 = SALog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F880(v22);
  }
}

@end