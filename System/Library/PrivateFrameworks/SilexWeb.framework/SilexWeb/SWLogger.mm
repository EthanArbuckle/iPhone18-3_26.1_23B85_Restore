@interface SWLogger
- (SWLogger)init;
- (id)constructLogWithMessage:(id)a3;
- (void)bindValue:(id)a3 forKey:(id)a4;
- (void)log:(id)a3;
- (void)logError:(id)a3;
- (void)logSensitive:(id)a3;
@end

@implementation SWLogger

- (SWLogger)init
{
  v6.receiver = self;
  v6.super_class = SWLogger;
  v2 = [(SWLogger *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    values = v2->_values;
    v2->_values = v3;
  }

  return v2;
}

- (void)bindValue:(id)a3 forKey:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(SWLogger *)self values];
    [v8 setObject:v7 forKey:v6];
  }
}

- (void)log:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = SWDefaultLog;
  if (os_log_type_enabled(SWDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SWLogger *)self constructLogWithMessage:a3];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1D7635000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)logError:(id)a3
{
  v5 = SWDefaultLog;
  if (os_log_type_enabled(SWDefaultLog, OS_LOG_TYPE_ERROR))
  {
    [(SWLogger *)v5 logError:a3];
  }
}

- (void)logSensitive:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = SWDefaultLog;
  if (os_log_type_enabled(SWDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SWLogger *)self constructLogWithMessage:a3];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D7635000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)constructLogWithMessage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SWLogger *)self values];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(SWLogger *)self values];
        v12 = [v11 objectForKey:v10];
        [v4 appendFormat:@"%@=%@", v10, v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"] "];
  [v4 appendString:v15];

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)logError:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 constructLogWithMessage:a3];
  v8 = 138543362;
  v9 = v6;
  _os_log_error_impl(&dword_1D7635000, v5, OS_LOG_TYPE_ERROR, "%{public}@", &v8, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end