@interface _PXSimulatedFailingMediaRequest
- (_PXSimulatedFailingMediaRequest)initWithWrappedMediaRequest:(id)request error:(id)error;
- (void)handleOriginalResult:(id)result info:(id)info;
@end

@implementation _PXSimulatedFailingMediaRequest

- (void)handleOriginalResult:(id)result info:(id)info
{
  resultCopy = result;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v15.receiver = selfCopy;
    v15.super_class = _PXSimulatedFailingMediaRequest;
    [(_PXSimulatedMediaRequest *)&v15 handleOriginalResult:resultCopy info:infoCopy];
  }

  else if (!selfCopy->_didReturnError)
  {
    v11 = [infoCopy mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14 = v13;

    [v14 setObject:selfCopy->_error forKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v16.receiver = selfCopy;
    v16.super_class = _PXSimulatedFailingMediaRequest;
    [(_PXSimulatedMediaRequest *)&v16 handleOriginalResult:0 info:v14];
    selfCopy->_didReturnError = 1;
  }

  objc_sync_exit(selfCopy);
}

- (_PXSimulatedFailingMediaRequest)initWithWrappedMediaRequest:(id)request error:(id)error
{
  errorCopy = error;
  v8 = [(_PXSimulatedMediaRequest *)self initWithWrappedMediaRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

@end