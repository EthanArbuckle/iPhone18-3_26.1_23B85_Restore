@interface REMChangeToken
+ (BOOL)supportsSecureCoding;
- (BOOL)isEqual:(id)equal;
- (REMChangeToken)initWithCoder:(id)coder;
- (int64_t)compareToken:(id)token error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMChangeToken

- (int64_t)compareToken:(id)token error:(id *)error
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"Abstract method called -[%@ %@]", v8, v9}];

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:0];
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  equalCopy = equal;
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"Abstract method called -[%@ %@]", v8, v9}];

  return self == equalCopy;
}

+ (BOOL)supportsSecureCoding
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (REMChangeToken)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"Abstract method called -[%@ %@]", v7, v8}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Abstract method called -[%@ %@]", v6, v7}];
}

@end