@interface PLResult
+ (id)failureWithError:(id)error;
+ (id)successWithResult:(id)result;
- (id)initForSubclasses;
- (id)resultByWrappingUnderlyingErrorWithDomain:(id)domain code:(int64_t)code debugDescription:(id)description;
@end

@implementation PLResult

- (id)initForSubclasses
{
  v3.receiver = self;
  v3.super_class = PLResult;
  return [(PLResult *)&v3 init];
}

- (id)resultByWrappingUnderlyingErrorWithDomain:(id)domain code:(int64_t)code debugDescription:(id)description
{
  domainCopy = domain;
  descriptionCopy = description;
  if ([(PLResult *)self isSuccess])
  {
    selfCopy = self;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A278]];
    error = [(PLResult *)self error];
    [v11 setObject:error forKeyedSubscript:*MEMORY[0x1E696AA08]];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:domainCopy code:code userInfo:v11];
    selfCopy = [objc_opt_class() failureWithError:v13];
  }

  return selfCopy;
}

+ (id)failureWithError:(id)error
{
  errorCopy = error;
  v4 = [[PLResultFailure alloc] initWithError:errorCopy];

  return v4;
}

+ (id)successWithResult:(id)result
{
  resultCopy = result;
  v4 = [[PLResultSuccess alloc] initWithResult:resultCopy];

  return v4;
}

@end