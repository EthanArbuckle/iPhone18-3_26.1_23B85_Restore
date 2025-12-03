@interface SPRMonitor
- (BOOL)signalWithEvent:(id)event error:(id *)error;
- (BOOL)signalWithEvent:(unsigned __int16)event data:(id)data error:(id *)error;
@end

@implementation SPRMonitor

- (BOOL)signalWithEvent:(id)event error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)signalWithEvent:(unsigned __int16)event data:(id)data error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, data, error);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end