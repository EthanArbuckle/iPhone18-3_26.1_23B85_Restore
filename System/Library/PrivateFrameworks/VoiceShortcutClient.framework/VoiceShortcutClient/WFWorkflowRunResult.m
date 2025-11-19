@interface WFWorkflowRunResult
- (BOOL)isCancelled;
- (NSError)error;
- (WFWorkflowRunResult)initWithCoder:(id)a3;
- (WFWorkflowRunResult)initWithError:(id)a3;
- (id)description;
- (id)resultBySettingError:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowRunResult

- (NSError)error
{
  if ([(WFWorkflowRunResult *)self isCancelled])
  {
    v3 = 0;
  }

  else
  {
    if (self)
    {
      internalError = self->_internalError;
    }

    else
    {
      internalError = 0;
    }

    v3 = internalError;
  }

  return v3;
}

- (BOOL)isCancelled
{
  if (self)
  {
    internalError = self->_internalError;
  }

  else
  {
    internalError = 0;
  }

  v4 = internalError;
  v5 = [(NSError *)v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
  {
    if (self)
    {
      v6 = self->_internalError;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(NSError *)v6 code]== 3072;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    internalError = self->_internalError;
  }

  else
  {
    internalError = 0;
  }

  v8 = [v3 stringWithFormat:@"<%@: %p Error: %@>", v5, self, internalError];

  return v8;
}

- (WFWorkflowRunResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = WFAllowedClassesForDecodingNSError();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"error"];

  v7 = [(WFWorkflowRunResult *)self initWithError:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (self && (v4 = self->_internalError) != 0)
  {
    v5 = v4;
    v6 = self->_internalError;
    v7 = WFEncodableError(v6);
    [v8 encodeObject:v7 forKey:@"error"];
  }

  else
  {
    [v8 encodeObject:0 forKey:@"error"];
    v5 = 0;
  }
}

- (id)resultBySettingError:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithError:v3];

  return v4;
}

- (WFWorkflowRunResult)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFWorkflowRunResult;
  v6 = [(WFWorkflowRunResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalError, a3);
    v8 = v7;
  }

  return v7;
}

@end