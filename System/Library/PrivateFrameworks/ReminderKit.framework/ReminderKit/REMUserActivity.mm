@interface REMUserActivity
+ (REMUserActivity)userActivityWithDictionaryData:(id)data error:(id *)error;
+ (REMUserActivity)userActivityWithUserActivity:(id)activity completion:(id)completion;
+ (id)dataFromUserActivity:(id)activity;
+ (id)stringForActivityType:(int64_t)type;
+ (id)stringForFlags:(int64_t)flags;
- (BOOL)isEqual:(id)equal;
- (REMUserActivity)initWithCoder:(id)coder;
- (REMUserActivity)initWithSiriIntent:(id)intent;
- (REMUserActivity)initWithType:(int64_t)type storage:(id)storage flags:(int64_t)flags;
- (REMUserActivity)initWithUniversalLink:(id)link;
- (REMUserActivity)initWithUserActivity:(id)activity;
- (REMUserActivity)userActivityWithFlags:(int64_t)flags;
- (id)archivedDictionaryData;
- (id)debugDescription;
- (id)debugDescriptionDetails;
- (id)decodeStorageIfNeededWithBlock:(id)block;
- (id)siriIntent;
- (id)universalLink;
- (id)userActivity;
- (id)userActivityData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMUserActivity

- (REMUserActivity)initWithType:(int64_t)type storage:(id)storage flags:(int64_t)flags
{
  storageCopy = storage;
  v14.receiver = self;
  v14.super_class = REMUserActivity;
  v10 = [(REMUserActivity *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_storage, storage);
    v11->_ivarLock._os_unfair_lock_opaque = 0;
    l_decodedStorage = v11->_l_decodedStorage;
    v11->_flags = flags;
    v11->_l_decodedStorage = 0;
  }

  return v11;
}

- (REMUserActivity)initWithUniversalLink:(id)link
{
  absoluteString = [link absoluteString];
  v5 = [absoluteString dataUsingEncoding:4];

  if (v5)
  {
    self = [(REMUserActivity *)self initWithType:1 storage:v5 flags:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (REMUserActivity)initWithUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = [REMUserActivity dataFromUserActivity:activityCopy];
  if (v5)
  {
    self = [(REMUserActivity *)self initWithType:2 storage:v5 flags:0];
    selfCopy = self;
  }

  else
  {
    v7 = +[REMLog siriKit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [REMUserActivity initWithUserActivity:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (REMUserActivity)initWithSiriIntent:(id)intent
{
  intentCopy = intent;
  v11 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:intentCopy requiringSecureCoding:1 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v8 = +[REMLog siriKit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMUserActivity initWithSiriIntent:];
    }

    selfCopy = 0;
  }

  else
  {
    self = [(REMUserActivity *)self initWithType:3 storage:v5 flags:0];
    selfCopy = self;
  }

  return selfCopy;
}

- (REMUserActivity)userActivityWithFlags:(int64_t)flags
{
  v5 = [REMUserActivity alloc];
  type = [(REMUserActivity *)self type];
  storage = [(REMUserActivity *)self storage];
  v8 = [(REMUserActivity *)v5 initWithType:type storage:storage flags:flags];

  return v8;
}

+ (REMUserActivity)userActivityWithUserActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__REMUserActivity_userActivityWithUserActivity_completion___block_invoke;
  v8[3] = &unk_1E75098C8;
  v9 = completionCopy;
  v6 = completionCopy;
  [activity _createUserActivityDataWithOptions:0 completionHandler:v8];

  return result;
}

void __59__REMUserActivity_userActivityWithUserActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = +[REMLog siriKit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__REMUserActivity_userActivityWithUserActivity_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [[REMUserActivity alloc] initWithType:2 storage:v5 flags:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (unint64_t)hash
{
  type = [(REMUserActivity *)self type];
  storage = [(REMUserActivity *)self storage];
  v5 = [storage hash];
  v6 = type ^ [(REMUserActivity *)self flags];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
    goto LABEL_9;
  }

  v6 = equalCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  type = [(REMUserActivity *)self type];
  if (type != [(REMUserActivity *)v6 type])
  {
    goto LABEL_6;
  }

  storage = [(REMUserActivity *)self storage];
  storage2 = [(REMUserActivity *)v6 storage];
  v10 = storage2;
  if (storage == storage2)
  {

    goto LABEL_11;
  }

  storage3 = [(REMUserActivity *)self storage];
  storage4 = [(REMUserActivity *)v6 storage];
  v13 = [storage3 isEqual:storage4];

  if (v13)
  {
LABEL_11:
    flags = [(REMUserActivity *)self flags];
    v14 = flags == [(REMUserActivity *)v6 flags];
    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:

LABEL_9:
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMUserActivity type](self forKey:{"type"), @"type"}];
  storage = [(REMUserActivity *)self storage];
  [coderCopy encodeObject:storage forKey:@"storage"];

  [coderCopy encodeInteger:-[REMUserActivity flags](self forKey:{"flags"), @"flags"}];
}

- (REMUserActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if ((v5 - 1) >= 3)
  {
    v6 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [REMUserActivity initWithCoder:];
    }

    v5 = 1;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storage"];
  v8 = [coderCopy decodeIntegerForKey:@"flags"];

  v9 = [[REMUserActivity alloc] initWithType:v5 storage:v7 flags:v8];
  return v9;
}

+ (REMUserActivity)userActivityWithDictionaryData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v14 = 0;
  v7 = [[v5 alloc] initForReadingFromData:dataCopy error:&v14];

  v8 = v14;
  v9 = [[REMUserActivity alloc] initWithCoder:v7];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = +[REMLog siriKit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[REMUserActivity userActivityWithDictionaryData:error:];
    }

    if (error)
    {
      v12 = v8;
      *error = v8;
    }
  }

  return v9;
}

- (id)archivedDictionaryData
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(REMUserActivity *)self encodeWithCoder:v3];
  encodedData = [v3 encodedData];
  if (!encodedData)
  {
    v5 = +[REMLog siriKit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [REMUserActivity archivedDictionaryData];
    }
  }

  return encodedData;
}

+ (id)dataFromUserActivity:(id)activity
{
  activityCopy = activity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  v4 = dispatch_semaphore_create(0);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__REMUserActivity_dataFromUserActivity___block_invoke;
  v13 = &unk_1E75098F0;
  v15 = &v16;
  v5 = v4;
  v14 = v5;
  [activityCopy _createUserActivityDataWithOptions:0 completionHandler:&v10];
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6) >= 1)
  {
    v7 = [REMLog siriKit:v10];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[REMUserActivity dataFromUserActivity:];
    }
  }

  v8 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __40__REMUserActivity_dataFromUserActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[REMLog siriKit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__REMUserActivity_userActivityWithUserActivity_completion___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)universalLink
{
  if ([(REMUserActivity *)self type]== 1)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    storage = [(REMUserActivity *)self storage];
    v5 = [v3 initWithData:storage encoding:4];

    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userActivity
{
  if ([(REMUserActivity *)self type]== 2)
  {
    v3 = [(REMUserActivity *)self decodeStorageIfNeededWithBlock:&__block_literal_global_42];
    v4 = objc_opt_class();
    v5 = REMDynamicCast(v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __31__REMUserActivity_userActivity__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69636A8];
  v3 = a2;
  v4 = [[v2 alloc] _initWithUserActivityData:v3];

  if (!v4)
  {
    v5 = +[REMLog siriKit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __31__REMUserActivity_userActivity__block_invoke_cold_1();
    }
  }

  return v4;
}

- (id)userActivityData
{
  if ([(REMUserActivity *)self type]== 2)
  {
    storage = [(REMUserActivity *)self storage];
  }

  else
  {
    storage = 0;
  }

  return storage;
}

- (id)siriIntent
{
  if ([(REMUserActivity *)self type]== 3)
  {
    v3 = [(REMUserActivity *)self decodeStorageIfNeededWithBlock:&__block_literal_global_16_0];
    v4 = objc_opt_class();
    v5 = REMDynamicCast(v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __29__REMUserActivity_siriIntent__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ACD0];
  v3 = a2;
  v9 = 0;
  v4 = [v2 unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];

  v5 = v9;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = +[REMLog siriKit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __29__REMUserActivity_siriIntent__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (id)decodeStorageIfNeededWithBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__REMUserActivity_decodeStorageIfNeededWithBlock___block_invoke;
  v8[3] = &unk_1E7509938;
  v8[4] = self;
  v5 = blockCopy;
  v9 = v5;
  v10 = &v11;
  __50__REMUserActivity_decodeStorageIfNeededWithBlock___block_invoke(v8);
  os_unfair_lock_unlock(&self->_ivarLock);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __50__REMUserActivity_decodeStorageIfNeededWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) l_decodedStorage];

  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) storage];
    v5 = (*(v3 + 16))(v3, v4);

    if (!v5)
    {
      v5 = [MEMORY[0x1E695DFB0] null];
    }

    [*(a1 + 32) setL_decodedStorage:v5];
  }

  v6 = [*(a1 + 32) l_decodedStorage];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8]();
}

- (id)debugDescription
{
  v13.receiver = self;
  v13.super_class = REMUserActivity;
  v3 = [(REMUserActivity *)&v13 debugDescription];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [objc_opt_class() stringForActivityType:{-[REMUserActivity type](self, "type")}];
  v6 = MEMORY[0x1E696AD98];
  storage = [(REMUserActivity *)self storage];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(storage, "length")}];
  v9 = [objc_opt_class() stringForFlags:{-[REMUserActivity flags](self, "flags")}];
  debugDescriptionDetails = [(REMUserActivity *)self debugDescriptionDetails];
  v11 = [v4 stringWithFormat:@"%@ (type=%@, bytes=%@, flags=%@, details=%@)", v3, v5, v8, v9, debugDescriptionDetails];

  return v11;
}

- (id)debugDescriptionDetails
{
  type = [(REMUserActivity *)self type];
  switch(type)
  {
    case 3:
      siriIntent = [(REMUserActivity *)self siriIntent];
      absoluteString = [siriIntent debugDescription];
      goto LABEL_7;
    case 2:
      siriIntent = [(REMUserActivity *)self userActivity];
      v6 = MEMORY[0x1E696AEC0];
      activityType = [siriIntent activityType];
      title = [siriIntent title];
      webpageURL = [siriIntent webpageURL];
      userInfo = [siriIntent userInfo];
      v11 = [v6 stringWithFormat:@"{type: %@, title: %@, URL: %@, userInfo: %@}", activityType, title, webpageURL, userInfo];

      goto LABEL_9;
    case 1:
      siriIntent = [(REMUserActivity *)self universalLink];
      absoluteString = [siriIntent absoluteString];
LABEL_7:
      v11 = absoluteString;
      goto LABEL_9;
  }

  v18.receiver = self;
  v18.super_class = REMUserActivity;
  siriIntent = [(REMUserActivity *)&v18 debugDescription];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [objc_opt_class() stringForActivityType:{-[REMUserActivity type](self, "type")}];
  v14 = MEMORY[0x1E696AD98];
  storage = [(REMUserActivity *)self storage];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(storage, "length")}];
  v11 = [v12 stringWithFormat:@"%@ (type=%@, bytes=%@)", siriIntent, v13, v16];

LABEL_9:

  return v11;
}

+ (id)stringForActivityType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown REMUserActivityType %ld", type];
  }

  else
  {
    type = off_1E7509958[type - 1];
  }

  return type;
}

+ (id)stringForFlags:(int64_t)flags
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (flags)
  {
    [array addObject:@"prefersHiddenInRemindersList"];
    flags &= ~1uLL;
  }

  if (flags)
  {
    flags = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknownFlag(0x%lx)", flags];
    [v5 addObject:flags];
  }

  if ([v5 count])
  {
    v7 = [v5 componentsJoinedByString:{@", "}];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", v7];
  }

  else
  {
    v8 = @"none";
  }

  return v8;
}

- (void)initWithUserActivity:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Error when archiving NSUserActivity. {userActivity: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithSiriIntent:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_19A0DB000, v1, OS_LOG_TYPE_FAULT, "Error when archiving Siri Intent. {siriIntent: %@, error: %@}", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __59__REMUserActivity_userActivityWithUserActivity_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Unknown REMUserActivityType %ld", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)userActivityWithDictionaryData:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __29__REMUserActivity_siriIntent__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end