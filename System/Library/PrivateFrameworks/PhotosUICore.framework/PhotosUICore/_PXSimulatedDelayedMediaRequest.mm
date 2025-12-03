@interface _PXSimulatedDelayedMediaRequest
- (_PXSimulatedDelayedMediaRequest)initWithWrappedMediaRequest:(id)request delay:(double)delay;
- (void)_handleDelayFraction:(double)fraction;
- (void)_produceFinalCallback;
- (void)handleOriginalProgress:(double)progress error:(id)error stop:(BOOL *)stop info:(id)info;
- (void)handleOriginalResult:(id)result info:(id)info;
@end

@implementation _PXSimulatedDelayedMediaRequest

- (void)_produceFinalCallback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(_PXSimulatedDelayedMediaRequest *)selfCopy _handleDelayFraction:1.0];
  lastOriginalResult = selfCopy->_lastOriginalResult;
  lastOriginalInfo = selfCopy->_lastOriginalInfo;
  v5.receiver = selfCopy;
  v5.super_class = _PXSimulatedDelayedMediaRequest;
  [(_PXSimulatedMediaRequest *)&v5 handleOriginalResult:lastOriginalResult info:lastOriginalInfo];
  objc_sync_exit(selfCopy);
}

- (void)_handleDelayFraction:(double)fraction
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_delayFraction = fraction;
  [(_PXSimulatedDelayedMediaRequest *)selfCopy _simulatedProgressForProgress:selfCopy->_originalProgress];
  v6 = 0;
  v5.receiver = selfCopy;
  v5.super_class = _PXSimulatedDelayedMediaRequest;
  [(_PXSimulatedMediaRequest *)&v5 handleOriginalProgress:0 error:&v6 stop:0 info:?];
  objc_sync_exit(selfCopy);
}

- (void)handleOriginalResult:(id)result info:(id)info
{
  resultCopy = result;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v16.receiver = selfCopy;
    v16.super_class = _PXSimulatedDelayedMediaRequest;
    [(_PXSimulatedMediaRequest *)&v16 handleOriginalResult:resultCopy info:infoCopy];
  }

  else
  {
    objc_storeStrong(&selfCopy->_lastOriginalResult, result);
    objc_storeStrong(&selfCopy->_lastOriginalInfo, info);
    if (!selfCopy->_didScheduleFinalCallback)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __61___PXSimulatedDelayedMediaRequest_handleOriginalResult_info___block_invoke;
      aBlock[3] = &unk_1E7743F48;
      aBlock[4] = selfCopy;
      v12 = _Block_copy(aBlock);
      v12[2](0.25);
      (v12[2])(v12, 0.5);
      (v12[2])(v12, 0.75);
      v13 = dispatch_time(0, (selfCopy->_delay * 1000000000.0));
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61___PXSimulatedDelayedMediaRequest_handleOriginalResult_info___block_invoke_3;
      v14[3] = &unk_1E774C648;
      v14[4] = selfCopy;
      dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
      selfCopy->_didScheduleFinalCallback = 1;
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)handleOriginalProgress:(double)progress error:(id)error stop:(BOOL *)stop info:(id)info
{
  errorCopy = error;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_originalProgress = progress;
  [(_PXSimulatedDelayedMediaRequest *)selfCopy _simulatedProgressForProgress:progress];
  v13.receiver = selfCopy;
  v13.super_class = _PXSimulatedDelayedMediaRequest;
  [(_PXSimulatedMediaRequest *)&v13 handleOriginalProgress:errorCopy error:stop stop:infoCopy info:?];
  objc_sync_exit(selfCopy);
}

- (_PXSimulatedDelayedMediaRequest)initWithWrappedMediaRequest:(id)request delay:(double)delay
{
  result = [(_PXSimulatedMediaRequest *)self initWithWrappedMediaRequest:request];
  if (result)
  {
    result->_delay = delay;
  }

  return result;
}

@end