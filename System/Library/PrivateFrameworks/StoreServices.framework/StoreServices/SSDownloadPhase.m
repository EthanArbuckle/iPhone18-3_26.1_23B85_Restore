@interface SSDownloadPhase
- (SSDownloadPhase)initWithOperationProgress:(id)a3;
- (SSDownloadPhase)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (int64_t)phaseType;
- (void)dealloc;
@end

@implementation SSDownloadPhase

- (SSDownloadPhase)initWithOperationProgress:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSDownloadPhase;
  v4 = [(SSDownloadPhase *)&v6 init];
  if (v4)
  {
    v4->_operationProgress = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadPhase;
  [(SSDownloadPhase *)&v3 dealloc];
}

- (int64_t)phaseType
{
  v2 = [(SSOperationProgress *)self->_operationProgress operationType];
  if ((v2 - 1) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1D4B38E10[v2 - 1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(SSOperationProgress *)self->_operationProgress copyWithZone:a3];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_operationProgress);
  return v3;
}

- (SSDownloadPhase)initWithXPCEncoding:(id)a3
{
  if (!a3 || MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {

    return 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SSDownloadPhase;
    v5 = [(SSDownloadPhase *)&v7 init];
    if (v5)
    {
      v5->_operationProgress = [[SSOperationProgress alloc] initWithXPCEncoding:xpc_dictionary_get_value(a3, "0")];
    }
  }

  return v5;
}

@end