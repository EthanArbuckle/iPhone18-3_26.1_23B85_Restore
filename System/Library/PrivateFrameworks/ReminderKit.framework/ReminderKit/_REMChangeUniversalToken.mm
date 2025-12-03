@interface _REMChangeUniversalToken
+ (id)universalToken;
- (BOOL)isEqual:(id)equal;
- (_REMChangeUniversalToken)initWithCoder:(id)coder;
- (int64_t)compareToken:(id)token error:(id *)error;
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

- (int64_t)compareToken:(id)token error:(id *)error
{
  v5 = +[REMLog changeTracking];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [_REMChangeUniversalToken compareToken:v5 error:?];
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:0];
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [_REMChangeUniversalToken isEqual:v4];
  }

  v5 = objc_opt_class();
  v6 = REMSpecificCast(v5, equalCopy);

  return v6 != 0;
}

- (_REMChangeUniversalToken)initWithCoder:(id)coder
{
  if (([coder decodeBoolForKey:@"isUniversal"] & 1) == 0)
  {
    [_REMChangeUniversalToken initWithCoder:];
  }

  universalToken = [objc_opt_class() universalToken];

  return universalToken;
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