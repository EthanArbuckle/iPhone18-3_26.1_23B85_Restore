@interface SSDownloadPhase
- (SSDownloadPhase)initWithOperationProgress:(id)progress;
- (SSDownloadPhase)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (int64_t)phaseType;
- (void)dealloc;
@end

@implementation SSDownloadPhase

- (SSDownloadPhase)initWithOperationProgress:(id)progress
{
  v6.receiver = self;
  v6.super_class = SSDownloadPhase;
  v4 = [(SSDownloadPhase *)&v6 init];
  if (v4)
  {
    v4->_operationProgress = [progress copy];
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
  operationType = [(SSOperationProgress *)self->_operationProgress operationType];
  if ((operationType - 1) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1D4B38E10[operationType - 1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(SSOperationProgress *)self->_operationProgress copyWithZone:zone];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_operationProgress);
  return v3;
}

- (SSDownloadPhase)initWithXPCEncoding:(id)encoding
{
  if (!encoding || MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
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
      v5->_operationProgress = [[SSOperationProgress alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "0")];
    }
  }

  return v5;
}

@end