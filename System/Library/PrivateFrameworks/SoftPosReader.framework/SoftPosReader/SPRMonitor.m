@interface SPRMonitor
- (BOOL)signalWithEvent:(id)a3 error:(id *)a4;
- (BOOL)signalWithEvent:(unsigned __int16)a3 data:(id)a4 error:(id *)a5;
@end

@implementation SPRMonitor

- (BOOL)signalWithEvent:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)signalWithEvent:(unsigned __int16)a3 data:(id)a4 error:(id *)a5
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, a5);

  if (a5 && v6)
  {
    *a5 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end