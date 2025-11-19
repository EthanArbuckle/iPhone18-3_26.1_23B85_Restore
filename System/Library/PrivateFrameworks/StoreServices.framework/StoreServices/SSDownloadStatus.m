@interface SSDownloadStatus
- (BOOL)isPausable;
- (SSDownloadStatus)initWithXPCEncoding:(id)a3;
- (float)percentComplete;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)setOperationProgress:(id)a3;
- (void)setOperationType:(int64_t)a3;
- (void)setPausable:(BOOL)a3;
- (void)setPercentComplete:(float)a3;
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
  v2 = [(SSDownloadPhase *)self->_activePhase operationProgress];

  return [(SSOperationProgress *)v2 canPause];
}

- (float)percentComplete
{
  v2 = [(SSDownloadPhase *)self->_activePhase operationProgress];
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    v5 = [(SSOperationProgress *)v2 normalizedCurrentValue];
    v6 = [(SSOperationProgress *)v4 normalizedMaxValue];
    if (v6 >= 1)
    {
      return v5 / v6;
    }
  }

  return v3;
}

- (void)setOperationProgress:(id)a3
{
  if (a3)
  {
    v5 = [[SSDownloadPhase alloc] initWithOperationProgress:a3];
  }

  else
  {
    v5 = 0;
  }

  self->_activePhase = v5;
}

- (void)setOperationType:(int64_t)a3
{
  v4 = [(SSDownloadPhase *)self->_activePhase operationProgress];

  [(SSOperationProgress *)v4 setOperationType:a3];
}

- (void)setPausable:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSDownloadPhase *)self->_activePhase operationProgress];

  [(SSOperationProgress *)v4 setCanPause:v3];
}

- (void)setPercentComplete:(float)a3
{
  v4 = [(SSDownloadPhase *)self->_activePhase operationProgress];
  v5 = ([(SSOperationProgress *)v4 normalizedMaxValue]* a3);

  [(SSOperationProgress *)v4 setNormalizedCurrentValue:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(SSDownloadPhase *)self->_activePhase copyWithZone:a3];
  *(v5 + 16) = self->_contentRestricted;
  *(v5 + 24) = [(NSError *)self->_error copyWithZone:a3];
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

- (SSDownloadStatus)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSDownloadStatus;
    v5 = [(SSDownloadStatus *)&v7 init];
    if (v5)
    {
      v5->_activePhase = [[SSDownloadPhase alloc] initWithXPCEncoding:xpc_dictionary_get_value(a3, "0")];
      v5->_error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a3, "1")}];
      v5->_contentRestricted = xpc_dictionary_get_BOOL(a3, "4");
      v5->_failed = xpc_dictionary_get_BOOL(a3, "2");
      v5->_paused = xpc_dictionary_get_BOOL(a3, "3");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end