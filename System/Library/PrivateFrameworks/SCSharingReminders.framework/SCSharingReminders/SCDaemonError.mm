@interface SCDaemonError
+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors;
- (SCDaemonError)init;
- (id)toError;
@end

@implementation SCDaemonError

+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors
{
  errorsCopy = errors;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([errorsCopy count])
  {
    [dictionary setObject:errorsCopy forKeyedSubscript:*MEMORY[0x277CCA578]];
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:SCDaemonErrorDomain code:code userInfo:dictionary];

  return v7;
}

- (SCDaemonError)init
{
  v6.receiver = self;
  v6.super_class = SCDaemonError;
  v2 = [(SCDaemonError *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SCDaemonError *)v2 setCode:0];
    array = [MEMORY[0x277CBEB18] array];
    [(SCDaemonError *)v3 setUnderlyingErrors:array];
  }

  return v3;
}

- (id)toError
{
  if (-[SCDaemonError code](self, "code") || (-[SCDaemonError underlyingErrors](self, "underlyingErrors"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    code = [(SCDaemonError *)self code];
    underlyingErrors = [(SCDaemonError *)self underlyingErrors];
    v7 = [SCDaemonError errorWithCode:code underlyingErrors:underlyingErrors];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end