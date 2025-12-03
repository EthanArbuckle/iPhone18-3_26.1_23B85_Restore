@interface APWebProcessDiagnosticJSO
- (APWebProcessDiagnosticJSO)init;
- (APWebProcessDiagnosticJSODelegate)delegate;
- (id)reportStatusOfTemplate:(id)template status:(id)status;
@end

@implementation APWebProcessDiagnosticJSO

- (APWebProcessDiagnosticJSO)init
{
  v3.receiver = self;
  v3.super_class = APWebProcessDiagnosticJSO;
  result = [(APWebProcessDiagnosticJSO *)&v3 init];
  if (result)
  {
    result->_requestCount = 0;
  }

  return result;
}

- (id)reportStatusOfTemplate:(id)template status:(id)status
{
  templateCopy = template;
  statusCopy = status;
  v8 = [NSMutableString stringWithFormat:@"Max report limit is reached. Aborted."];
  requestCount = [(APWebProcessDiagnosticJSO *)self requestCount];
  if (requestCount == 10)
  {
    v10 = sub_2E2C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_6D94();
    }

    [(APWebProcessDiagnosticJSO *)self setRequestCount:([(APWebProcessDiagnosticJSO *)self requestCount]+ 1)];
  }

  else
  {
    if (requestCount < 0xB)
    {
      if ([templateCopy length] >= 0x33)
      {
        v12 = [NSMutableString stringWithFormat:@"reportStatusOfTemplate must be called with a name under %d characters limit. Aborted.", 50];

        v13 = sub_2E2C();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_6D94();
        }

        v14 = v12;
        goto LABEL_23;
      }

      if ([statusCopy length] < 0x1F5)
      {
        v16 = v8;
      }

      else
      {
        v15 = [statusCopy substringToIndex:500];

        v16 = [NSMutableString stringWithFormat:@"Status is truncated to 500 characters."];

        v17 = sub_2E2C();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138478083;
          v24 = objc_opt_class();
          v25 = 2114;
          v26 = v16;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "[%{private}@] %{public}@", buf, 0x16u);
        }

        statusCopy = v15;
      }

      delegate = [(APWebProcessDiagnosticJSO *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        delegate2 = [(APWebProcessDiagnosticJSO *)self delegate];
        [delegate2 webProcessDiagnosticJSOStatusReported:templateCopy status:statusCopy];

        [(APWebProcessDiagnosticJSO *)self setRequestCount:([(APWebProcessDiagnosticJSO *)self requestCount]+ 1)];
        v21 = 0;
        goto LABEL_24;
      }

      v8 = [NSMutableString stringWithFormat:@"Delegate is not responding. Aborted."];

      v11 = sub_2E2C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_6D94();
      }
    }

    else
    {
      v11 = sub_2E2C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        v24 = objc_opt_class();
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "[%{private}@] %{public}@", buf, 0x16u);
      }
    }
  }

  v14 = v8;
LABEL_23:
  v16 = v14;
  v21 = v14;
LABEL_24:

  return v21;
}

- (APWebProcessDiagnosticJSODelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end