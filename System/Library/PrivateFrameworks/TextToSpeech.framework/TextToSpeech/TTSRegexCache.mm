@interface TTSRegexCache
+ (id)sharedInstance;
- (TTSRegexCache)init;
- (id)regexForString:(id)a3 atStart:(BOOL)a4;
@end

@implementation TTSRegexCache

+ (id)sharedInstance
{
  if (qword_1ED970EA0 != -1)
  {
    sub_1A9579C24();
  }

  v3 = qword_1ED970410;

  return v3;
}

- (TTSRegexCache)init
{
  v12.receiver = self;
  v12.super_class = TTSRegexCache;
  v6 = [(TTSRegexCache *)&v12 init];
  if (v6)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4, v5);
    objc_msgSend_setCache_(v6, v8, v7, v9, v10);

    v6->_regexCacheLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (id)regexForString:(id)a3 atStart:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v10 = v9;
  if (v4)
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"^%@", v7, v8, v9);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1A936B660;
  v28 = sub_1A936B670;
  v29 = 0;
  v21[1] = MEMORY[0x1E69E9820];
  v21[2] = 3221225472;
  v21[3] = sub_1A936B678;
  v21[4] = &unk_1E7880DF8;
  v23 = &v24;
  v21[5] = self;
  v11 = v10;
  v22 = v11;
  AX_PERFORM_WITH_LOCK();
  v12 = v25[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E696AE70]);
    v21[0] = 0;
    v16 = objc_msgSend_initWithPattern_options_error_(v14, v15, v11, 1, v21);
    v17 = v21[0];
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A9579C38(v17);
      }

      v13 = 0;
    }

    else
    {
      v19 = v16;
      v20 = v11;
      AX_PERFORM_WITH_LOCK();
      v13 = v19;
    }
  }

  _Block_object_dispose(&v24, 8);

  return v13;
}

@end