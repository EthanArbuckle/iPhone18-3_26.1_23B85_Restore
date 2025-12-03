@interface SSDownloadStatus
- (BOOL)isPausable;
- (SSDownloadStatus)initWithXPCEncoding:(id)encoding;
- (float)percentComplete;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)setOperationProgress:(id)progress;
- (void)setOperationType:(int64_t)type;
- (void)setPausable:(BOOL)pausable;
- (void)setPercentComplete:(float)complete;
@end

@implementation SSDownloadStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadStatus;
  [(SSDownloadStatus *)&v3 dealloc];
}

- (BOOL)isPausable
{
  operationProgress = [(SSDownloadPhase *)self->_activePhase operationProgress];

  return [(SSOperationProgress *)operationProgress canPause];
}

- (float)percentComplete
{
  operationProgress = [(SSDownloadPhase *)self->_activePhase operationProgress];
  v3 = 0.0;
  if (operationProgress)
  {
    v4 = operationProgress;
    normalizedCurrentValue = [(SSOperationProgress *)operationProgress normalizedCurrentValue];
    normalizedMaxValue = [(SSOperationProgress *)v4 normalizedMaxValue];
    if (normalizedMaxValue >= 1)
    {
      return normalizedCurrentValue / normalizedMaxValue;
    }
  }

  return v3;
}

- (void)setOperationProgress:(id)progress
{
  if (progress)
  {
    v5 = [[SSDownloadPhase alloc] initWithOperationProgress:progress];
  }

  else
  {
    v5 = 0;
  }

  self->_activePhase = v5;
}

- (void)setOperationType:(int64_t)type
{
  operationProgress = [(SSDownloadPhase *)self->_activePhase operationProgress];

  [(SSOperationProgress *)operationProgress setOperationType:type];
}

- (void)setPausable:(BOOL)pausable
{
  pausableCopy = pausable;
  operationProgress = [(SSDownloadPhase *)self->_activePhase operationProgress];

  [(SSOperationProgress *)operationProgress setCanPause:pausableCopy];
}

- (void)setPercentComplete:(float)complete
{
  operationProgress = [(SSDownloadPhase *)self->_activePhase operationProgress];
  v5 = ([(SSOperationProgress *)operationProgress normalizedMaxValue]* complete);

  [(SSOperationProgress *)operationProgress setNormalizedCurrentValue:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(SSDownloadPhase *)self->_activePhase copyWithZone:zone];
  *(v5 + 16) = self->_contentRestricted;
  *(v5 + 24) = [(NSError *)self->_error copyWithZone:zone];
  *(v5 + 32) = self->_failed;
  *(v5 + 33) = self->_paused;
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_activePhase);
  SSXPCDictionarySetCFObject(v3, "1", self->_error);
  xpc_dictionary_set_BOOL(v3, "4", self->_contentRestricted);
  xpc_dictionary_set_BOOL(v3, "2", self->_failed);
  xpc_dictionary_set_BOOL(v3, "3", self->_paused);
  return v3;
}

- (SSDownloadStatus)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSDownloadStatus;
    v5 = [(SSDownloadStatus *)&v7 init];
    if (v5)
    {
      v5->_activePhase = [[SSDownloadPhase alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "0")];
      v5->_error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(encoding, "1")}];
      v5->_contentRestricted = xpc_dictionary_get_BOOL(encoding, "4");
      v5->_failed = xpc_dictionary_get_BOOL(encoding, "2");
      v5->_paused = xpc_dictionary_get_BOOL(encoding, "3");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end