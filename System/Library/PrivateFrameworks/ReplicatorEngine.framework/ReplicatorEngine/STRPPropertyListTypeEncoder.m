@interface STRPPropertyListTypeEncoder
- (STRPPropertyListTypeEncoder)init;
- (id)_encodeRawObject:(id)a3;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeConditionalObject:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation STRPPropertyListTypeEncoder

- (STRPPropertyListTypeEncoder)init
{
  v6.receiver = self;
  v6.super_class = STRPPropertyListTypeEncoder;
  v2 = [(STRPPropertyListTypeEncoder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([v6 conformsToProtocol:&unk_1F5A28760])
    {
      v8 = [(STRPPropertyListTypeEncoder *)self _encodeRawObject:v6];
      [(NSMutableDictionary *)self->_storage setObject:v8 forKey:v7];
    }

    else
    {
      v9 = STRPLogCoding();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [STRPPropertyListTypeEncoder encodeObject:v7 forKey:v9];
      }
    }
  }
}

- (void)encodeConditionalObject:(id)a3 forKey:(id)a4
{
  v4 = a4;
  v5 = STRPLogCoding();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [STRPPropertyListTypeEncoder encodeConditionalObject:v4 forKey:v5];
  }
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  storage = self->_storage;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(NSMutableDictionary *)storage setObject:v8 forKey:v7];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  storage = self->_storage;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(NSMutableDictionary *)storage setObject:v9 forKey:v7];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  storage = self->_storage;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(NSMutableDictionary *)storage setObject:v8 forKey:v7];
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  v8 = MEMORY[0x1E695DEF0];
  v9 = a5;
  v10 = [v8 dataWithBytes:a3 length:a4];
  [(NSMutableDictionary *)self->_storage setObject:v10 forKey:v9];
}

- (id)_encodeRawObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 UUIDString];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E696AD98];
    [v4 timeIntervalSinceReferenceDate];
    v5 = [v8 numberWithDouble:?];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    v10 = [v9 count];
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v12 = [v9 objectAtIndexedSubscript:i];
        v13 = [(STRPPropertyListTypeEncoder *)self _encodeRawObject:v12];
        [v6 setObject:v13 atIndexedSubscript:i];
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v4;
      v15 = [v14 count];
      v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v15];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __48__STRPPropertyListTypeEncoder__encodeRawObject___block_invoke;
      v19[3] = &unk_1E86A2A20;
      v17 = v16;
      v20 = v17;
      v21 = self;
      [v14 enumerateKeysAndObjectsUsingBlock:v19];

      v6 = v17;
    }

    else
    {
      v18 = objc_alloc_init(objc_opt_class());
      [v4 encodeWithCoder:v18];
      v6 = [v18[1] copy];
    }
  }

LABEL_7:

  return v6;
}

void __48__STRPPropertyListTypeEncoder__encodeRawObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _encodeRawObject:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (void)encodeObject:(uint64_t)a1 forKey:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1DEE0F000, a2, OS_LOG_TYPE_FAULT, "Must conform to secure coding. key='%{public}@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)encodeConditionalObject:(uint64_t)a1 forKey:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1DEE0F000, a2, OS_LOG_TYPE_FAULT, "-encodeConditionalObject: is not supported. key='%{public}@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end