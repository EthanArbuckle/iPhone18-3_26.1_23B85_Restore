@interface SSHTTPServerRequestHandler
- (BOOL)_handleReceivedDataWithError:(id *)error;
- (BOOL)_shouldKeepRunning;
- (SSHTTPServerRequestHandler)initWithReadStream:(id)stream writeStream:(id)writeStream runLoop:(id)loop;
- (SSHTTPServerRequestHandlerDelegate)delegate;
- (id)_errorResponseDataWithStatus:(signed __int16)status message:(id)message;
- (int64_t)_throttledWriteSpeed;
- (int64_t)_writeResponseData:(id)data error:(id *)error;
- (void)_close;
- (void)_respondWithRequest:(id)request error:(id)error;
- (void)close;
- (void)dealloc;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation SSHTTPServerRequestHandler

- (SSHTTPServerRequestHandler)initWithReadStream:(id)stream writeStream:(id)writeStream runLoop:(id)loop
{
  streamCopy = stream;
  writeStreamCopy = writeStream;
  loopCopy = loop;
  v16.receiver = self;
  v16.super_class = SSHTTPServerRequestHandler;
  v12 = [(SSHTTPServerRequestHandler *)&v16 init];
  if (v12)
  {
    v13 = dispatch_queue_create("com.apple.StoreServices.HTTPServerResponse", 0);
    requestQueue = v12->_requestQueue;
    v12->_requestQueue = v13;

    objc_storeStrong(&v12->_output, writeStream);
    [(NSOutputStream *)v12->_output open];
    objc_storeStrong(&v12->_input, stream);
    [(NSInputStream *)v12->_input scheduleInRunLoop:loopCopy forMode:*MEMORY[0x1E695D918]];
    [(NSInputStream *)v12->_input setDelegate:v12];
    [(NSInputStream *)v12->_input open];
  }

  return v12;
}

- (void)dealloc
{
  [(SSHTTPServerRequestHandler *)self _close];
  incommingMessage = self->_incommingMessage;
  if (incommingMessage)
  {
    CFRelease(incommingMessage);
    self->_incommingMessage = 0;
  }

  v4.receiver = self;
  v4.super_class = SSHTTPServerRequestHandler;
  [(SSHTTPServerRequestHandler *)&v4 dealloc];
}

- (void)close
{
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSHTTPServerRequestHandler_close__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_sync(requestQueue, block);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  requestQueue = self->_requestQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SSHTTPServerRequestHandler_stream_handleEvent___block_invoke;
  v5[3] = &unk_1E84ADDB8;
  v5[4] = self;
  v5[5] = event;
  dispatch_async(requestQueue, v5);
}

void __49__SSHTTPServerRequestHandler_stream_handleEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 16:
      v5 = 0;
      v4 = 1;
      break;
    case 8:
      v5 = [*(*(a1 + 32) + 32) streamError];
      v4 = 0;
      break;
    case 2:
      v3 = *(a1 + 32);
      v11 = 0;
      v4 = [v3 _handleReceivedDataWithError:&v11];
      v5 = v11;
      break;
    default:
      v4 = 0;
      v5 = 0;
      break;
  }

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (*(v6 + 40))
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [*(v6 + 32) setDelegate:0];
    [*(*(a1 + 32) + 32) close];
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;

    [*(a1 + 32) _respondWithRequest:*(*(a1 + 32) + 48) error:v5];
  }
}

- (BOOL)_handleReceivedDataWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_requestQueue);
  if ([(NSInputStream *)self->_input hasBytesAvailable])
  {
    v5 = *MEMORY[0x1E695E480];
    while (1)
    {
      v6 = [(NSInputStream *)self->_input read:v26 maxLength:1024];
      if (v6 < 0)
      {
        break;
      }

      v7 = v6;
      if (!v6)
      {
        return 1;
      }

      if (self->_incommingHeadersComplete)
      {
        incommingMessageBody = self->_incommingMessageBody;
        if (!incommingMessageBody)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF88]);
          v10 = self->_incommingMessageBody;
          self->_incommingMessageBody = v9;

          incommingMessageBody = self->_incommingMessageBody;
        }

        [(NSMutableData *)incommingMessageBody appendBytes:v26 length:v7];
      }

      else
      {
        incommingMessage = self->_incommingMessage;
        if (!incommingMessage)
        {
          incommingMessage = CFHTTPMessageCreateEmpty(v5, 1u);
          self->_incommingMessage = incommingMessage;
        }

        CFHTTPMessageAppendBytes(incommingMessage, v26, v7);
        if (CFHTTPMessageIsHeaderComplete(self->_incommingMessage))
        {
          self->_incommingHeadersComplete = 1;
          v12 = objc_alloc_init(MEMORY[0x1E696AD68]);
          request = self->_request;
          self->_request = v12;

          v14 = CFHTTPMessageCopyRequestURL(self->_incommingMessage);
          v15 = CFHTTPMessageCopyRequestMethod(self->_incommingMessage);
          v16 = CFHTTPMessageCopyAllHeaderFields(self->_incommingMessage);
          [(NSMutableURLRequest *)self->_request setURL:v14];
          [(NSMutableURLRequest *)self->_request setHTTPMethod:v15];
          [(NSMutableURLRequest *)self->_request setAllHTTPHeaderFields:v16];
          v17 = CFHTTPMessageCopyBody(self->_incommingMessage);
          v18 = v17;
          if (v17 && [(__CFData *)v17 length])
          {
            v19 = self->_incommingMessageBody;
            if (!v19)
            {
              v20 = objc_alloc_init(MEMORY[0x1E695DF88]);
              v21 = self->_incommingMessageBody;
              self->_incommingMessageBody = v20;

              v19 = self->_incommingMessageBody;
            }

            [(NSMutableData *)v19 appendData:v18];
          }
        }
      }

      if (![(NSInputStream *)self->_input hasBytesAvailable])
      {
        goto LABEL_19;
      }
    }

    if (error)
    {
      *error = SSError(@"SSHTTPServerResponseErrorDomain", 500, @"Socket Read Error", @"Length < 0");
    }
  }

  else
  {
LABEL_19:
    if (!self->_incommingHeadersComplete)
    {
      return 0;
    }

    allHTTPHeaderFields = [(NSMutableURLRequest *)self->_request allHTTPHeaderFields];
    v23 = [allHTTPHeaderFields objectForKeyedSubscript:@"Content-Length"];
    integerValue = [v23 integerValue];

    if ([(NSMutableData *)self->_incommingMessageBody length]< integerValue)
    {
      return 0;
    }

    [(NSMutableURLRequest *)self->_request setHTTPBody:self->_incommingMessageBody];
  }

  return 1;
}

- (void)_respondWithRequest:(id)request error:(id)error
{
  v50 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_requestQueue);
  delegate = [(SSHTTPServerRequestHandler *)self delegate];
  v9 = [requestCopy URL];
  path = [v9 path];
  v11 = [delegate responseBlockForPath:path];

  v41 = v11;
  v42 = requestCopy;
  if (errorCopy)
  {
    v12 = -[SSHTTPServerResponse initWithStatusCode:]([SSHTTPServerResponse alloc], "initWithStatusCode:", [errorCopy code]);
    code = [errorCopy code];
    v14 = [errorCopy description];
    v15 = [(SSHTTPServerRequestHandler *)self _errorResponseDataWithStatus:code message:v14];
    [(SSHTTPServerResponse *)v12 setBody:v15];
  }

  else if (v11)
  {
    v12 = (*(v11 + 16))(v11, requestCopy);
  }

  else
  {
    v12 = [[SSHTTPServerResponse alloc] initWithStatusCode:404];
    v16 = [(SSHTTPServerRequestHandler *)self _errorResponseDataWithStatus:404 message:@"Page Not Found"];
    [(SSHTTPServerResponse *)v12 setBody:v16];
  }

  copyHTTPMessage = [(SSHTTPServerResponse *)v12 copyHTTPMessage];
  v18 = CFHTTPMessageCopySerializedMessage(copyHTTPMessage);
  CFRelease(copyHTTPMessage);
  v43 = 0;
  v19 = [(SSHTTPServerRequestHandler *)self _writeResponseData:v18 error:&v43];
  v20 = v43;
  v21 = +[SSLogConfig sharedStoreServicesConfig];
  v22 = v21;
  if (!v20)
  {
    if (!v21)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v30 = shouldLog;
    }

    else
    {
      v30 = shouldLog & 2;
    }

    if (v30)
    {
      v31 = objc_opt_class();
      v44 = 138412546;
      v45 = v31;
      v46 = 2114;
      selfCopy = self;
      v28 = v31;
      LODWORD(v40) = 22;
      goto LABEL_26;
    }

LABEL_28:
    v33 = v42;
    goto LABEL_29;
  }

  if (!v21)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = shouldLog2 | 2;
  }

  else
  {
    v24 = shouldLog2;
  }

  oSLogObject = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 2;
  }

  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = objc_opt_class();
  v44 = 138412802;
  v45 = v27;
  v46 = 2048;
  selfCopy = v19;
  v48 = 2112;
  v49 = v20;
  v28 = v27;
  LODWORD(v40) = 32;
LABEL_26:
  v32 = _os_log_send_and_compose_impl();

  if (!v32)
  {
    v33 = v42;
    goto LABEL_31;
  }

  v33 = v42;
  oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:{4, &v44, v40}];
  free(v32);
  SSFileLog(v22, @"%@", v34, v35, v36, v37, v38, v39, oSLogObject);
LABEL_29:

LABEL_31:
  [(SSHTTPServerRequestHandler *)self _close];
}

- (void)_close
{
  input = self->_input;
  if (input)
  {
    [(NSInputStream *)input close];
    v4 = self->_input;
    self->_input = 0;
  }

  output = self->_output;
  if (output)
  {
    [(NSOutputStream *)output close];
    v6 = self->_output;
    self->_output = 0;
  }

  delegate = [(SSHTTPServerRequestHandler *)self delegate];
  [delegate requestDidFinish:self];
}

- (id)_errorResponseDataWithStatus:(signed __int16)status message:(id)message
{
  statusCopy = status;
  messageCopy = message;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v6 appendFormat:@"<html><head><title>%d</title></head><body><div align='center'><h1>%d</h1>", statusCopy, statusCopy];
  if (messageCopy)
  {
    [v6 appendFormat:@"<p>%@</p>", messageCopy];
  }

  [v6 appendString:@"</div></body></html>"];
  v7 = [v6 dataUsingEncoding:4];

  return v7;
}

- (int64_t)_throttledWriteSpeed
{
  dispatch_assert_queue_V2(self->_requestQueue);
  v3 = self->_downloadSpeed - 1;
  if (v3 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1D4B39138[v3];
  }
}

- (BOOL)_shouldKeepRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  requestQueue = self->_requestQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SSHTTPServerRequestHandler__shouldKeepRunning__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(requestQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__SSHTTPServerRequestHandler__shouldKeepRunning__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 40) != 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (int64_t)_writeResponseData:(id)data error:(id *)error
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_requestQueue);
  if (dataCopy && [dataCopy length])
  {
    _throttledWriteSpeed = [(SSHTTPServerRequestHandler *)self _throttledWriteSpeed];
    v8 = 0;
    v9 = vcvtd_n_f64_u64(_throttledWriteSpeed, 1uLL);
    if (_throttledWriteSpeed)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (_throttledWriteSpeed)
    {
      v11 = 0.5;
    }

    else
    {
      v11 = 0.0;
    }

    while (1)
    {
      if (v8 >= [dataCopy length])
      {
        v18 = 0;
        goto LABEL_26;
      }

      date = [MEMORY[0x1E695DF00] date];
      v13 = v10;
      if (v10 >= [dataCopy length] - v8)
      {
        v13 = [dataCopy length] - v8;
      }

      v14 = -[NSOutputStream write:maxLength:](self->_output, "write:maxLength:", [dataCopy bytes] + v8, v13);
      if (v14 < 0)
      {
        break;
      }

      v8 += v14;
      [date timeIntervalSinceNow];
      if (v15 >= 0.0)
      {
        [date timeIntervalSinceNow];
      }

      else
      {
        [date timeIntervalSinceNow];
        v17 = -v16;
      }

      if (v11 - v17 > 0.0)
      {
        [MEMORY[0x1E696AF00] sleepForTimeInterval:?];
      }
    }

    v18 = SSError(@"SSHTTPServerResponseErrorDomain", 500, @"Write Error", @"Error writing data to socket. [2]");

    if (error && v18)
    {
      v19 = v18;
      *error = v18;
    }

LABEL_26:
  }

  else if (error)
  {
    SSError(@"SSHTTPServerResponseErrorDomain", 500, @"Write Error", @"No data to write");
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SSHTTPServerRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end