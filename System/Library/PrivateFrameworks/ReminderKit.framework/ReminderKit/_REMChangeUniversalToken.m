@interface _REMChangeUniversalToken
+ (id)universalToken;
- (BOOL)isEqual:(id)a3;
- (_REMChangeUniversalToken)initWithCoder:(id)a3;
- (int64_t)compareToken:(id)a3 error:(id *)a4;
@end

@implementation _REMChangeUniversalToken

+ (id)universalToken
{
  if (universalToken_once != -1)
  {
    +[_REMChangeUniversalToken universalToken];
  }

  v3 = universalToken_sUniversalToken;

  return v3;
}

- (int64_t)compareToken:(id)a3 error:(id *)a4
{
  v5 = +[REMLog changeTracking];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [_REMChangeUniversalToken compareToken:v5 error:?];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:0];
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [_REMChangeUniversalToken isEqual:v4];
  }

  v5 = objc_opt_class();
  v6 = REMSpecificCast(v5, v3);

  return v6 != 0;
}

- (_REMChangeUniversalToken)initWithCoder:(id)a3
{
  if (([a3 decodeBoolForKey:@"isUniversal"] & 1) == 0)
  {
    [_REMChangeUniversalToken initWithCoder:];
  }

  v4 = [objc_opt_class() universalToken];

  return v4;
}

- (void)initWithCoder:.cold.1()
{
  v0 = +[REMLog changeTracking];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!isUniversal) -- isUniversal == NO on decoded universal change token", v1, 2u);
  }
}

@end