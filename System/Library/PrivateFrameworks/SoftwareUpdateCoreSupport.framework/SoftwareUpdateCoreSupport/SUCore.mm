@interface SUCore
+ (BOOL)arrayIsEqual:(id)a3 to:(id)a4;
+ (BOOL)dataIsEqual:(id)a3 to:(id)a4;
+ (BOOL)dateIsEqual:(id)a3 to:(id)a4;
+ (BOOL)dictionaryIsEqual:(id)a3 to:(id)a4;
+ (BOOL)errorIsEqual:(id)a3 to:(id)a4;
+ (BOOL)numberIsEqual:(id)a3 to:(id)a4;
+ (BOOL)objectIsEqual:(id)a3 to:(id)a4;
+ (BOOL)setFileMetadata:(const char *)a3 forKey:(id)a4 value:(id)a5;
+ (BOOL)stringIsEqual:(id)a3 to:(id)a4;
+ (id)beginTransactionWithName:(id)a3;
+ (id)getFileMetadata:(const char *)a3 forKey:(id)a4;
+ (id)limitString:(id)a3 toMaxLength:(unint64_t)a4 providingSubstitutionMap:(id)a5;
+ (id)sharedCore;
+ (id)sharedSUCoreDomainAppending:(id)a3;
+ (id)stringFromDate:(id)a3;
+ (id)stringFromTriState:(int64_t)a3;
+ (void)endTransaction:(id)a3 withName:(id)a4;
- (SUCore)init;
- (id)commonDomain;
- (id)commonFilesystemBaseDir;
- (id)selectCompletionQueue:(id)a3;
- (id)selectDelegateCallbackQueue:(id)a3;
- (void)useDomain:(id)a3;
- (void)useFilesystemBaseDir:(id)a3;
@end

@implementation SUCore

+ (id)sharedCore
{
  if (sharedCore_coreOnce != -1)
  {
    +[SUCore sharedCore];
  }

  v3 = sharedCore_core;

  return v3;
}

- (SUCore)init
{
  v23.receiver = self;
  v23.super_class = SUCore;
  v2 = [(SUCore *)&v23 init];
  v3 = v2;
  if (v2)
  {
    baseDomain = v2->_baseDomain;
    v2->_baseDomain = 0;

    filesystemBaseDir = v3->_filesystemBaseDir;
    v3->_filesystemBaseDir = 0;

    v6 = [@"com.apple.su.completions" UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v8;

    v10 = [@"com.apple.su.delegate_callbacks" UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    delegateCallbackQueue = v3->_delegateCallbackQueue;
    v3->_delegateCallbackQueue = v12;

    v14 = [@"com.apple.su.waited_operations" UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    waitedOperationQueue = v3->_waitedOperationQueue;
    v3->_waitedOperationQueue = v16;

    v18 = [@"com.apple.su.misc_tasks" UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    miscellaneousTaksQueue = v3->_miscellaneousTaksQueue;
    v3->_miscellaneousTaksQueue = v20;
  }

  return v3;
}

uint64_t __20__SUCore_sharedCore__block_invoke()
{
  sharedCore_core = objc_alloc_init(SUCore);

  return MEMORY[0x1EEE66BB8]();
}

- (void)useDomain:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SUCore *)v4 setBaseDomain:v5];
  objc_sync_exit(v4);
}

- (id)commonDomain
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUCore *)v2 baseDomain];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"com.apple.su";
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)useFilesystemBaseDir:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SUCore *)v4 setFilesystemBaseDir:v5];
  objc_sync_exit(v4);
}

- (id)commonFilesystemBaseDir
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUCore *)v2 filesystemBaseDir];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"/var/tmp/SoftwareUpdateCore";
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)selectCompletionQueue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [(SUCore *)self completionQueue];
  }

  return v5;
}

- (id)selectDelegateCallbackQueue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [(SUCore *)self delegateCallbackQueue];
  }

  return v5;
}

+ (id)beginTransactionWithName:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [SUCore sharedSUCoreDomainAppending:a3];
  v4 = +[SUCoreLog sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1E0F71000, v5, OS_LOG_TYPE_DEFAULT, "[TRANSACTION] BEGIN with domain %{public}@", &v9, 0xCu);
  }

  [v3 UTF8String];
  v6 = os_transaction_create();

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (void)endTransaction:(id)a3 withName:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [SUCore sharedSUCoreDomainAppending:a4];
  v7 = +[SUCoreLog sharedLogger];

  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NOTNULL";
    if (!v5)
    {
      v9 = @"NULL";
    }

    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1E0F71000, v8, OS_LOG_TYPE_DEFAULT, "[TRANSACTION] END   with domain %{public}@ (transaction=%{public}@)", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)sharedSUCoreDomainAppending:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ![v3 isEqualToString:&stru_1F5BDE410])
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = +[SUCore sharedCore];
    v7 = [v6 commonDomain];
    v8 = [v9 initWithFormat:@"%@.%@", v7, v4];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = +[SUCore sharedCore];
    v7 = [v6 commonDomain];
    v8 = [v5 initWithString:v7];
  }

  v10 = v8;

  return v10;
}

+ (BOOL)stringIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [v5 isEqualToString:v7];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)dictionaryIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [v5 isEqualToDictionary:v7];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)arrayIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [v5 isEqualToArray:v7];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)numberIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [v5 isEqualToNumber:v7];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)dataIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [v5 isEqualToData:v7];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)dateIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [v5 isEqualToDate:v7];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)errorIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = *MEMORY[0x1E696AA08];
  v10 = 10;
  v11 = v8;
  v12 = v7;
  while (v12 | v11)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    if (!v11)
    {
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v13 = [v12 domain];
    v14 = [v11 domain];
    v15 = [v13 isEqualToString:v14];

    if (!v15 || (v16 = [v12 code], v16 != objc_msgSend(v11, "code")))
    {
LABEL_11:
      v21 = 0;
      goto LABEL_12;
    }

    v17 = [v12 userInfo];
    v18 = [v17 safeObjectForKey:v9 ofClass:objc_opt_class()];

    v19 = [v11 userInfo];
    v20 = [v19 safeObjectForKey:v9 ofClass:objc_opt_class()];

    v11 = v20;
    v12 = v18;
    if (!--v10)
    {
      v21 = 1;
      v12 = v18;
      v11 = v20;
      goto LABEL_12;
    }
  }

  v12 = 0;
  v11 = 0;
  v21 = 1;
LABEL_12:

  return v21;
}

+ (BOOL)objectIsEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)limitString:(id)a3 toMaxLength:(unint64_t)a4 providingSubstitutionMap:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = v9;
  v11 = v9;
  if (a4)
  {
    v11 = v9;
    if ([(__CFString *)v9 length]> a4)
    {
      if (v8)
      {
        v12 = [v8 count] + 1;
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"KEYMAP(%llu)", v12];

        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"  %@ = %@", v11, v10];
        if (v13)
        {
          [v8 addObject:v13];
        }
      }

      else
      {
        v11 = @"(present)";
        v14 = [@"(present)" length];

        if (v14 > a4)
        {
          v11 = @"X";
        }
      }
    }
  }

  return v11;
}

+ (id)stringFromDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (stringFromDate__onceToken == -1)
  {
    if (v3)
    {
LABEL_3:
      v5 = [stringFromDate____dateFormatter stringFromDate:v4];
      goto LABEL_6;
    }
  }

  else
  {
    +[SUCore stringFromDate:];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = @"none";
LABEL_6:

  return v5;
}

void __25__SUCore_stringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = stringFromDate____dateFormatter;
  stringFromDate____dateFormatter = v0;

  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [stringFromDate____dateFormatter setLocale:v4];
  [stringFromDate____dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v2 = stringFromDate____dateFormatter;
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v2 setCalendar:v3];
}

+ (id)stringFromTriState:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"SUCoreTriStateUnknown";
  }

  else
  {
    return off_1E86FC8B0[a3];
  }
}

+ (id)getFileMetadata:(const char *)a3 forKey:(id)a4
{
  v5 = [a4 UTF8String];
  v6 = getxattr(a3, v5, 0, 0, 0, 1);
  if (v6 < 0)
  {
    v10 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [MEMORY[0x1E695DF88] dataWithLength:v6];
    v9 = getxattr(a3, v5, [v8 mutableBytes], v7, 0, 1);
    if (v9 < 0)
    {
      v10 = 0;
    }

    else
    {
      [v8 setLength:v9];
      v10 = v8;
    }
  }

  return v10;
}

+ (BOOL)setFileMetadata:(const char *)a3 forKey:(id)a4 value:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a4 UTF8String];
  v11 = [v9 bytes];
  v12 = [v9 length];

  return setxattr(a3, v10, v11, v12, 0, 1) == 0;
}

@end