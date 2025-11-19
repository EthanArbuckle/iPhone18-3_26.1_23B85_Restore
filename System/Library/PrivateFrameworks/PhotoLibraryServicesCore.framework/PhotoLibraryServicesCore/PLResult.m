@interface PLResult
+ (id)failureWithError:(id)a3;
+ (id)successWithResult:(id)a3;
- (id)initForSubclasses;
- (id)resultByWrappingUnderlyingErrorWithDomain:(id)a3 code:(int64_t)a4 debugDescription:(id)a5;
@end

@implementation PLResult

- (id)initForSubclasses
{
  v3.receiver = self;
  v3.super_class = PLResult;
  return [(PLResult *)&v3 init];
}

- (id)resultByWrappingUnderlyingErrorWithDomain:(id)a3 code:(int64_t)a4 debugDescription:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PLResult *)self isSuccess])
  {
    v10 = self;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A278]];
    v12 = [(PLResult *)self error];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696AA08]];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:v8 code:a4 userInfo:v11];
    v10 = [objc_opt_class() failureWithError:v13];
  }

  return v10;
}

+ (id)failureWithError:(id)a3
{
  v3 = a3;
  v4 = [[PLResultFailure alloc] initWithError:v3];

  return v4;
}

+ (id)successWithResult:(id)a3
{
  v3 = a3;
  v4 = [[PLResultSuccess alloc] initWithResult:v3];

  return v4;
}

@end