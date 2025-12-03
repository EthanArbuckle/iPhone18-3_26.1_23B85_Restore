@interface PSTaskInput
+ (PSTaskInput)inputWithKey:(id)key;
+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type;
+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity;
+ (PSTaskInput)inputWitheKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity;
- (PSTaskInput)initWithKey:(char *)key type:(int64_t)type capacity:(unint64_t)capacity;
- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity;
- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity forwardingCount:(unint64_t)count;
- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity sourceInput:(id)input forwardingCount:(unint64_t)count;
- (id)description;
- (id)getInputResourceForGraph:(id)graph;
@end

@implementation PSTaskInput

+ (PSTaskInput)inputWithKey:(id)key
{
  keyCopy = key;
  v4 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:0 capacity:1];

  return v4;
}

+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type
{
  keyCopy = key;
  v6 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:type capacity:1];

  return v6;
}

+ (PSTaskInput)inputWithKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity
{
  keyCopy = key;
  v8 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:type capacity:capacity];

  return v8;
}

+ (PSTaskInput)inputWitheKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity
{
  keyCopy = key;
  v8 = [[PSTaskInput alloc] initWithResourceKey:keyCopy type:type capacity:capacity];

  return v8;
}

- (PSTaskInput)initWithKey:(char *)key type:(int64_t)type capacity:(unint64_t)capacity
{
  if (type == 3)
  {
    v11 = [PSTaskInput initWithKey:? type:? capacity:?];
    return [(PSTaskInput *)v11 initWithResourceKey:v12 type:v13 capacity:v14, v15];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
    v9 = [(PSTaskInput *)self initWithResourceKey:v8 type:type capacity:capacity sourceInput:0 forwardingCount:0];

    return v9;
  }
}

- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity
{
  keyCopy = key;
  if (type == 3)
  {
    v12 = [PSTaskInput initWithResourceKey:? type:? capacity:?];
    return [(PSTaskInput *)v12 initSyncedInputWithResourceKey:v13 withSourceInput:v14, v15];
  }

  else
  {
    v9 = keyCopy;
    v10 = [(PSTaskInput *)self initWithResourceKey:keyCopy type:type capacity:capacity sourceInput:0 forwardingCount:0];

    return v10;
  }
}

- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity sourceInput:(id)input forwardingCount:(unint64_t)count
{
  keyCopy = key;
  inputCopy = input;
  v18.receiver = self;
  v18.super_class = PSTaskInput;
  v15 = [(PSTaskInput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resourceKey, key);
    objc_storeStrong(&v16->_resolvedResourceKey, key);
    v16->_key = [keyCopy UTF8String];
    v16->_type = type;
    v16->_capacity = capacity;
    v16->_forwardingCount = count;
    objc_storeStrong(&v16->_sourceInputResourceKey, input);
    v16->_sourceInputKey = [inputCopy UTF8String];
    v16->_bufferExpiryOffset = -1;
  }

  return v16;
}

- (id)getInputResourceForGraph:(id)graph
{
  graphCopy = graph;
  v5 = [(NSString *)self->_resourceKey isEqualToString:@"timer"];
  if (graphCopy && v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"timer%03d", objc_msgSend(graphCopy, "frequency")];
  }

  else
  {
    v6 = self->_resourceKey;
  }

  v7 = v6;

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  resourceKey = self->_resourceKey;
  capacity = self->_capacity;
  return [v3 stringWithFormat:@". . . <%@: %@> Type:%lu Capacity:%lu FwdCount:%lu", v4, resourceKey, self->_type, capacity, self->_forwardingCount];
}

- (PSTaskInput)initWithResourceKey:(id)key type:(int64_t)type capacity:(unint64_t)capacity forwardingCount:(unint64_t)count
{
  keyCopy = key;
  if (type == 3)
  {
    v14 = [PSTaskInput(Roya) initWithResourceKey:? type:? capacity:? forwardingCount:?];
    return [(PSTaskOutput *)v14 outputWithKey:v15, v16];
  }

  else
  {
    v11 = keyCopy;
    v12 = [(PSTaskInput *)self initWithResourceKey:keyCopy type:type capacity:capacity sourceInput:0 forwardingCount:count];

    return v12;
  }
}

- (uint64_t)initWithKey:(char *)a1 type:capacity:.cold.1(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.");
  v1 = __PSGraphLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EC85000, v2, v3, "%s:%d PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v15 = OUTLINED_FUNCTION_0();
  return [PSTaskInput initWithResourceKey:v15 type:? capacity:?];
}

- (uint64_t)initWithResourceKey:(char *)a1 type:capacity:.cold.1(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.");
  v1 = __PSGraphLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EC85000, v2, v3, "%s:%d PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v15 = OUTLINED_FUNCTION_0();
  return [PSTaskInput(Roya) initWithResourceKey:v15 type:? capacity:? forwardingCount:?];
}

@end