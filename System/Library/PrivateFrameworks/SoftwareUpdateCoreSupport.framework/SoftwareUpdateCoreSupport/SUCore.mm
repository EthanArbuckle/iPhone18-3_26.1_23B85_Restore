@interface SUCore
+ (BOOL)arrayIsEqual:(id)equal to:(id)to;
+ (BOOL)dataIsEqual:(id)equal to:(id)to;
+ (BOOL)dateIsEqual:(id)equal to:(id)to;
+ (BOOL)dictionaryIsEqual:(id)equal to:(id)to;
+ (BOOL)errorIsEqual:(id)equal to:(id)to;
+ (BOOL)numberIsEqual:(id)equal to:(id)to;
+ (BOOL)objectIsEqual:(id)equal to:(id)to;
+ (BOOL)setFileMetadata:(const char *)metadata forKey:(id)key value:(id)value;
+ (BOOL)stringIsEqual:(id)equal to:(id)to;
+ (id)beginTransactionWithName:(id)name;
+ (id)getFileMetadata:(const char *)metadata forKey:(id)key;
+ (id)limitString:(id)string toMaxLength:(unint64_t)length providingSubstitutionMap:(id)map;
+ (id)sharedCore;
+ (id)sharedSUCoreDomainAppending:(id)appending;
+ (id)stringFromDate:(id)date;
+ (id)stringFromTriState:(int64_t)state;
+ (void)endTransaction:(id)transaction withName:(id)name;
- (SUCore)init;
- (id)commonDomain;
- (id)commonFilesystemBaseDir;
- (id)selectCompletionQueue:(id)queue;
- (id)selectDelegateCallbackQueue:(id)queue;
- (void)useDomain:(id)domain;
- (void)useFilesystemBaseDir:(id)dir;
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

    uTF8String = [@"com.apple.su.completions" UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v8;

    uTF8String2 = [@"com.apple.su.delegate_callbacks" UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String2, v11);
    delegateCallbackQueue = v3->_delegateCallbackQueue;
    v3->_delegateCallbackQueue = v12;

    uTF8String3 = [@"com.apple.su.waited_operations" UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String3, v15);
    waitedOperationQueue = v3->_waitedOperationQueue;
    v3->_waitedOperationQueue = v16;

    uTF8String4 = [@"com.apple.su.misc_tasks" UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String4, v19);
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

- (void)useDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCore *)selfCopy setBaseDomain:domainCopy];
  objc_sync_exit(selfCopy);
}

- (id)commonDomain
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  baseDomain = [(SUCore *)selfCopy baseDomain];
  if (baseDomain)
  {
    v4 = baseDomain;
  }

  else
  {
    v4 = @"com.apple.su";
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)useFilesystemBaseDir:(id)dir
{
  dirCopy = dir;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCore *)selfCopy setFilesystemBaseDir:dirCopy];
  objc_sync_exit(selfCopy);
}

- (id)commonFilesystemBaseDir
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  filesystemBaseDir = [(SUCore *)selfCopy filesystemBaseDir];
  if (filesystemBaseDir)
  {
    v4 = filesystemBaseDir;
  }

  else
  {
    v4 = @"/var/tmp/SoftwareUpdateCore";
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)selectCompletionQueue:(id)queue
{
  queueCopy = queue;
  completionQueue = queueCopy;
  if (!queueCopy)
  {
    completionQueue = [(SUCore *)self completionQueue];
  }

  return completionQueue;
}

- (id)selectDelegateCallbackQueue:(id)queue
{
  queueCopy = queue;
  delegateCallbackQueue = queueCopy;
  if (!queueCopy)
  {
    delegateCallbackQueue = [(SUCore *)self delegateCallbackQueue];
  }

  return delegateCallbackQueue;
}

+ (id)beginTransactionWithName:(id)name
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [SUCore sharedSUCoreDomainAppending:name];
  v4 = +[SUCoreLog sharedLogger];
  oslog = [v4 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[TRANSACTION] BEGIN with domain %{public}@", &v9, 0xCu);
  }

  [v3 UTF8String];
  v6 = os_transaction_create();

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (void)endTransaction:(id)transaction withName:(id)name
{
  v15 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v6 = [SUCore sharedSUCoreDomainAppending:name];
  v7 = +[SUCoreLog sharedLogger];

  oslog = [v7 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NOTNULL";
    if (!transactionCopy)
    {
      v9 = @"NULL";
    }

    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[TRANSACTION] END   with domain %{public}@ (transaction=%{public}@)", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)sharedSUCoreDomainAppending:(id)appending
{
  appendingCopy = appending;
  v4 = appendingCopy;
  if (appendingCopy && ![appendingCopy isEqualToString:&stru_1F5BDE410])
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = +[SUCore sharedCore];
    commonDomain = [v6 commonDomain];
    v8 = [v9 initWithFormat:@"%@.%@", commonDomain, v4];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = +[SUCore sharedCore];
    commonDomain = [v6 commonDomain];
    v8 = [v5 initWithString:commonDomain];
  }

  v10 = v8;

  return v10;
}

+ (BOOL)stringIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = toCopy;
  if (equalCopy | toCopy)
  {
    v8 = 0;
    if (equalCopy && toCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [equalCopy isEqualToString:v7];
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

+ (BOOL)dictionaryIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = toCopy;
  if (equalCopy | toCopy)
  {
    v8 = 0;
    if (equalCopy && toCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [equalCopy isEqualToDictionary:v7];
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

+ (BOOL)arrayIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = toCopy;
  if (equalCopy | toCopy)
  {
    v8 = 0;
    if (equalCopy && toCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [equalCopy isEqualToArray:v7];
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

+ (BOOL)numberIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = toCopy;
  if (equalCopy | toCopy)
  {
    v8 = 0;
    if (equalCopy && toCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [equalCopy isEqualToNumber:v7];
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

+ (BOOL)dataIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = toCopy;
  if (equalCopy | toCopy)
  {
    v8 = 0;
    if (equalCopy && toCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [equalCopy isEqualToData:v7];
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

+ (BOOL)dateIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = toCopy;
  if (equalCopy | toCopy)
  {
    v8 = 0;
    if (equalCopy && toCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [equalCopy isEqualToDate:v7];
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

+ (BOOL)errorIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = equalCopy;
  v8 = toCopy;
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

    domain = [v12 domain];
    domain2 = [v11 domain];
    v15 = [domain isEqualToString:domain2];

    if (!v15 || (v16 = [v12 code], v16 != objc_msgSend(v11, "code")))
    {
LABEL_11:
      v21 = 0;
      goto LABEL_12;
    }

    userInfo = [v12 userInfo];
    v18 = [userInfo safeObjectForKey:v9 ofClass:objc_opt_class()];

    userInfo2 = [v11 userInfo];
    v20 = [userInfo2 safeObjectForKey:v9 ofClass:objc_opt_class()];

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

+ (BOOL)objectIsEqual:(id)equal to:(id)to
{
  equalCopy = equal;
  toCopy = to;
  v7 = toCopy;
  if (equalCopy | toCopy)
  {
    v8 = 0;
    if (equalCopy && toCopy)
    {
      v8 = [equalCopy isEqual:toCopy];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)limitString:(id)string toMaxLength:(unint64_t)length providingSubstitutionMap:(id)map
{
  stringCopy = string;
  mapCopy = map;
  v9 = stringCopy;
  v10 = v9;
  v11 = v9;
  if (length)
  {
    v11 = v9;
    if ([(__CFString *)v9 length]> length)
    {
      if (mapCopy)
      {
        v12 = [mapCopy count] + 1;
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"KEYMAP(%llu)", v12];

        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"  %@ = %@", v11, v10];
        if (v13)
        {
          [mapCopy addObject:v13];
        }
      }

      else
      {
        v11 = @"(present)";
        v14 = [@"(present)" length];

        if (v14 > length)
        {
          v11 = @"X";
        }
      }
    }
  }

  return v11;
}

+ (id)stringFromDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (stringFromDate__onceToken == -1)
  {
    if (dateCopy)
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

+ (id)stringFromTriState:(int64_t)state
{
  if (state > 2)
  {
    return @"SUCoreTriStateUnknown";
  }

  else
  {
    return off_1E86FC8B0[state];
  }
}

+ (id)getFileMetadata:(const char *)metadata forKey:(id)key
{
  uTF8String = [key UTF8String];
  v6 = getxattr(metadata, uTF8String, 0, 0, 0, 1);
  if (v6 < 0)
  {
    v10 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [MEMORY[0x1E695DF88] dataWithLength:v6];
    v9 = getxattr(metadata, uTF8String, [v8 mutableBytes], v7, 0, 1);
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

+ (BOOL)setFileMetadata:(const char *)metadata forKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  uTF8String = [key UTF8String];
  bytes = [valueCopy bytes];
  v12 = [valueCopy length];

  return setxattr(metadata, uTF8String, bytes, v12, 0, 1) == 0;
}

@end