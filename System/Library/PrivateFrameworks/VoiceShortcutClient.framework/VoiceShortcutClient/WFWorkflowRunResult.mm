@interface WFWorkflowRunResult
- (BOOL)isCancelled;
- (NSError)error;
- (WFWorkflowRunResult)initWithCoder:(id)coder;
- (WFWorkflowRunResult)initWithError:(id)error;
- (id)description;
- (id)resultBySettingError:(id)error;
- (void)encodeWithCoder:(id)coder;
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
  domain = [(NSError *)v4 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
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

  internalError = [v3 stringWithFormat:@"<%@: %p Error: %@>", v5, self, internalError];

  return internalError;
}

- (WFWorkflowRunResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = WFAllowedClassesForDecodingNSError();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"error"];

  v7 = [(WFWorkflowRunResult *)self initWithError:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self && (v4 = self->_internalError) != 0)
  {
    v5 = v4;
    v6 = self->_internalError;
    v7 = WFEncodableError(v6);
    [coderCopy encodeObject:v7 forKey:@"error"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"error"];
    v5 = 0;
  }
}

- (id)resultBySettingError:(id)error
{
  errorCopy = error;
  v4 = [objc_alloc(objc_opt_class()) initWithError:errorCopy];

  return v4;
}

- (WFWorkflowRunResult)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = WFWorkflowRunResult;
  v6 = [(WFWorkflowRunResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalError, error);
    v8 = v7;
  }

  return v7;
}

@end