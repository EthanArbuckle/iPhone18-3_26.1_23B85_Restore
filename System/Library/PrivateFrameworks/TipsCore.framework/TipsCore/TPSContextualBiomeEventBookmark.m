@interface TPSContextualBiomeEventBookmark
+ (id)bookmarkWithSinkBookmark:(id)a3;
- (TPSContextualBiomeEventBookmark)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSContextualBiomeEventBookmark

+ (id)bookmarkWithSinkBookmark:(id)a3
{
  v3 = a3;
  v4 = [(TPSContextualEventBookmark *)[TPSContextualBiomeEventBookmark alloc] initWithDataVersion:1];
  [(TPSContextualBiomeEventBookmark *)v4 setSinkBookmark:v3];

  return v4;
}

- (TPSContextualBiomeEventBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TPSContextualBiomeEventBookmark;
  v5 = [(TPSContextualEventBookmark *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkData"];
    if (v6)
    {
      v7 = [MEMORY[0x1E696ACD0] unarchiveObjectWithData:v6];
      sinkBookmark = v5->_sinkBookmark;
      v5->_sinkBookmark = v7;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TPSContextualBiomeEventBookmark;
  [(TPSContextualEventBookmark *)&v10 encodeWithCoder:v4];
  sinkBookmark = self->_sinkBookmark;
  if (sinkBookmark)
  {
    v9 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sinkBookmark requiringSecureCoding:0 error:&v9];
    v7 = v9;
    if (v6)
    {
      [v4 encodeObject:v6 forKey:@"bookmarkData"];
    }

    else
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TPSContextualBiomeEventBookmark encodeWithCoder:];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualBiomeEventBookmark;
  v4 = [(TPSContextualEventBookmark *)&v6 copyWithZone:a3];
  [v4 setSinkBookmark:self->_sinkBookmark];
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v8.receiver = self;
  v8.super_class = TPSContextualBiomeEventBookmark;
  v4 = [(TPSContextualEventBookmark *)&v8 description];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSContextualBiomeEventBookmark *)self sinkBookmark];
  [v5 appendFormat:@"; %@ = %@", @"bookmarkData", v6];

  return v5;
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1C00A7000, v0, OS_LOG_TYPE_ERROR, "Error secureUnarchiving key %@, exception: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1C00A7000, v0, OS_LOG_TYPE_ERROR, "Failed to archive key %@, error: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end