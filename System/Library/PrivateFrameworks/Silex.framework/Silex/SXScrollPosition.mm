@interface SXScrollPosition
- (NSString)jsonRepresentation;
- (SXScrollPosition)initWithCoder:(id)a3;
- (SXScrollPosition)initWithJSONRepresentation:(id)a3;
- (void)jsonRepresentation;
@end

@implementation SXScrollPosition

- (SXScrollPosition)initWithJSONRepresentation:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696ACB0];
  v6 = [v4 dataUsingEncoding:4];
  v14 = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:&v14];
  v8 = v14;

  if (!v8)
  {
    if ([SXTextComponentScrollPosition jsonDictionaryRepresentationIsValid:v7 exactly:1])
    {
      v11 = SXTextComponentScrollPosition;
    }

    else
    {
      if (![SXComponentScrollPosition jsonDictionaryRepresentationIsValid:v7 exactly:1])
      {
        v13 = SXDefaultLog;
        if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_ERROR))
        {
          [(SXScrollPosition *)v4 initWithJSONRepresentation:v13];
        }

        goto LABEL_4;
      }

      v11 = SXComponentScrollPosition;
    }

    v10 = [[v11 alloc] initWithDictionaryRepresentation:v7 exactly:1];
    goto LABEL_10;
  }

  v9 = SXDefaultLog;
  if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_ERROR))
  {
    [(SXScrollPosition *)v4 initWithJSONRepresentation:v9];
  }

LABEL_4:
  v10 = 0;
LABEL_10:

  return v10;
}

- (NSString)jsonRepresentation
{
  v2 = [(SXScrollPosition *)self dictionaryRepresentation];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v10 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v10];
    v6 = v10;
    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    }

    else
    {
      v8 = SXDefaultLog;
      if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_FAULT))
      {
        [(SXScrollPosition *)v6 jsonRepresentation];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SXScrollPosition)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SXScrollPosition;
  return [(SXScrollPosition *)&v4 init];
}

- (void)initWithJSONRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D825C000, a2, OS_LOG_TYPE_ERROR, "Got an error creating the dictionary representation of %{public}@", &v2, 0xCu);
}

- (void)initWithJSONRepresentation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D825C000, a2, OS_LOG_TYPE_ERROR, "Failed to create scroll position from invalid JSON: %{public}@", &v2, 0xCu);
}

- (void)jsonRepresentation
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1D825C000, a2, OS_LOG_TYPE_FAULT, "Failed to convert scroll position to JSON with error: %{public}@", &v2, 0xCu);
}

@end