@interface PSTaskInput
+ (PSTaskInput)inputWithKey:(id)a3;
+ (PSTaskInput)inputWithKey:(id)a3 type:(int64_t)a4;
+ (PSTaskInput)inputWithKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5;
+ (PSTaskInput)inputWitheKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5;
- (PSTaskInput)initWithKey:(char *)a3 type:(int64_t)a4 capacity:(unint64_t)a5;
- (PSTaskInput)initWithResourceKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5;
- (PSTaskInput)initWithResourceKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5 forwardingCount:(unint64_t)a6;
- (PSTaskInput)initWithResourceKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5 sourceInput:(id)a6 forwardingCount:(unint64_t)a7;
- (id)description;
- (id)getInputResourceForGraph:(id)a3;
@end

@implementation PSTaskInput

+ (PSTaskInput)inputWithKey:(id)a3
{
  v3 = a3;
  v4 = [[PSTaskInput alloc] initWithResourceKey:v3 type:0 capacity:1];

  return v4;
}

+ (PSTaskInput)inputWithKey:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = [[PSTaskInput alloc] initWithResourceKey:v5 type:a4 capacity:1];

  return v6;
}

+ (PSTaskInput)inputWithKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5
{
  v7 = a3;
  v8 = [[PSTaskInput alloc] initWithResourceKey:v7 type:a4 capacity:a5];

  return v8;
}

+ (PSTaskInput)inputWitheKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5
{
  v7 = a3;
  v8 = [[PSTaskInput alloc] initWithResourceKey:v7 type:a4 capacity:a5];

  return v8;
}

- (PSTaskInput)initWithKey:(char *)a3 type:(int64_t)a4 capacity:(unint64_t)a5
{
  if (a4 == 3)
  {
    v11 = [PSTaskInput initWithKey:? type:? capacity:?];
    return [(PSTaskInput *)v11 initWithResourceKey:v12 type:v13 capacity:v14, v15];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
    v9 = [(PSTaskInput *)self initWithResourceKey:v8 type:a4 capacity:a5 sourceInput:0 forwardingCount:0];

    return v9;
  }
}

- (PSTaskInput)initWithResourceKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5
{
  v8 = a3;
  if (a4 == 3)
  {
    v12 = [PSTaskInput initWithResourceKey:? type:? capacity:?];
    return [(PSTaskInput *)v12 initSyncedInputWithResourceKey:v13 withSourceInput:v14, v15];
  }

  else
  {
    v9 = v8;
    v10 = [(PSTaskInput *)self initWithResourceKey:v8 type:a4 capacity:a5 sourceInput:0 forwardingCount:0];

    return v10;
  }
}

- (PSTaskInput)initWithResourceKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5 sourceInput:(id)a6 forwardingCount:(unint64_t)a7
{
  v13 = a3;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PSTaskInput;
  v15 = [(PSTaskInput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resourceKey, a3);
    objc_storeStrong(&v16->_resolvedResourceKey, a3);
    v16->_key = [v13 UTF8String];
    v16->_type = a4;
    v16->_capacity = a5;
    v16->_forwardingCount = a7;
    objc_storeStrong(&v16->_sourceInputResourceKey, a6);
    v16->_sourceInputKey = [v14 UTF8String];
    v16->_bufferExpiryOffset = -1;
  }

  return v16;
}

- (id)getInputResourceForGraph:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->_resourceKey isEqualToString:@"timer"];
  if (v4 && v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"timer%03d", objc_msgSend(v4, "frequency")];
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

- (PSTaskInput)initWithResourceKey:(id)a3 type:(int64_t)a4 capacity:(unint64_t)a5 forwardingCount:(unint64_t)a6
{
  v10 = a3;
  if (a4 == 3)
  {
    v14 = [PSTaskInput(Roya) initWithResourceKey:? type:? capacity:? forwardingCount:?];
    return [(PSTaskOutput *)v14 outputWithKey:v15, v16];
  }

  else
  {
    v11 = v10;
    v12 = [(PSTaskInput *)self initWithResourceKey:v10 type:a4 capacity:a5 sourceInput:0 forwardingCount:a6];

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