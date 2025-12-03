@interface WBSAsynchronousRequestHelper
- (WBSAsynchronousRequestHelper)initWithRequest:(id)request queue:(id)queue completionHandler:(id)handler;
- (void)cancel;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
- (void)sendRequest;
@end

@implementation WBSAsynchronousRequestHelper

- (WBSAsynchronousRequestHelper)initWithRequest:(id)request queue:(id)queue completionHandler:(id)handler
{
  requestCopy = request;
  queueCopy = queue;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = WBSAsynchronousRequestHelper;
  v11 = [(WBSAsynchronousRequestHelper *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v13 = [handlerCopy copy];
    handler = v12->_handler;
    v12->_handler = v13;

    v15 = [objc_alloc(MEMORY[0x1E695AC40]) initWithRequest:requestCopy delegate:v12 startImmediately:0];
    connection = v12->_connection;
    v12->_connection = v15;

    v17 = v12;
  }

  return v12;
}

- (void)dealloc
{
  [(NSURLConnection *)self->_connection cancel];
  v3.receiver = self;
  v3.super_class = WBSAsynchronousRequestHelper;
  [(WBSAsynchronousRequestHelper *)&v3 dealloc];
}

- (void)sendRequest
{
  connection = self->_connection;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(NSURLConnection *)connection scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  [(NSURLConnection *)self->_connection start];

  objc_storeStrong(&self->_lifetimeExtender, self);
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  errorCopy = error;
  [(NSURLConnection *)self->_connection cancel];
  v6 = _Block_copy(self->_handler);
  v7 = self->_response;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__WBSAsynchronousRequestHelper_connection_didFailWithError___block_invoke;
  v13[3] = &unk_1E7CF2AA8;
  v15 = errorCopy;
  v16 = v6;
  v14 = v7;
  v9 = errorCopy;
  v10 = v7;
  v11 = v6;
  [(NSOperationQueue *)queue addOperationWithBlock:v13];
  lifetimeExtender = self->_lifetimeExtender;
  self->_lifetimeExtender = 0;
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  responseCopy = response;
  response = self->_response;
  p_response = &self->_response;
  if (!response)
  {
    v9 = responseCopy;
    objc_storeStrong(p_response, response);
    responseCopy = v9;
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  data = self->_data;
  if (data)
  {

    [(NSMutableData *)data appendData:data];
  }

  else
  {
    v6 = [data mutableCopy];
    v7 = self->_data;
    self->_data = v6;
  }
}

- (void)connectionDidFinishLoading:(id)loading
{
  [(NSURLConnection *)self->_connection cancel];
  v4 = _Block_copy(self->_handler);
  v5 = self->_response;
  v6 = self->_data;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__WBSAsynchronousRequestHelper_connectionDidFinishLoading___block_invoke;
  v12[3] = &unk_1E7CF2AA8;
  v14 = v6;
  v15 = v4;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  [(NSOperationQueue *)queue addOperationWithBlock:v12];
  lifetimeExtender = self->_lifetimeExtender;
  self->_lifetimeExtender = 0;
}

- (void)cancel
{
  [(NSURLConnection *)self->_connection cancel];
  handler = self->_handler;
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:89 userInfo:0];
  (*(handler + 2))(handler, 0, 0, v4);

  lifetimeExtender = self->_lifetimeExtender;
  self->_lifetimeExtender = 0;
}

@end