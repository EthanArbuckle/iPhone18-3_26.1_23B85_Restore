@interface WebDownload
- (WebDownload)init;
- (WebDownload)initWithRequest:(id)request delegate:(id)delegate;
- (id)_initWithLoadingConnection:(id)connection request:(id)request response:(id)response delegate:(id)delegate proxy:(id)proxy;
- (id)_initWithRequest:(id)request delegate:(id)delegate directory:(id)directory;
- (void)_setRealDelegate:(id)delegate;
- (void)dealloc;
@end

@implementation WebDownload

- (void)_setRealDelegate:(id)delegate
{
  if (!self->_webInternal)
  {
    v5 = objc_alloc_init(WebDownloadInternal);
    self->_webInternal = v5;

    [(WebDownloadInternal *)v5 setRealDelegate:delegate];
  }
}

- (WebDownload)init
{
  v5.receiver = self;
  v5.super_class = WebDownload;
  result = [(NSURLDownload *)&v5 init];
  if (result)
  {
    if (!result->_webInternal)
    {
      v3 = result;
      v4 = objc_alloc_init(WebDownloadInternal);
      result = v3;
      v3->_webInternal = v4;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebDownload;
  [(NSURLDownload *)&v3 dealloc];
}

- (WebDownload)initWithRequest:(id)request delegate:(id)delegate
{
  [(WebDownload *)self _setRealDelegate:delegate];
  webInternal = self->_webInternal;
  v8.receiver = self;
  v8.super_class = WebDownload;
  return [(NSURLDownload *)&v8 initWithRequest:request delegate:webInternal];
}

- (id)_initWithLoadingConnection:(id)connection request:(id)request response:(id)response delegate:(id)delegate proxy:(id)proxy
{
  [(WebDownload *)self _setRealDelegate:delegate];
  webInternal = self->_webInternal;
  v14.receiver = self;
  v14.super_class = WebDownload;
  return [(NSURLDownload *)&v14 _initWithLoadingConnection:connection request:request response:response delegate:webInternal proxy:proxy];
}

- (id)_initWithRequest:(id)request delegate:(id)delegate directory:(id)directory
{
  [(WebDownload *)self _setRealDelegate:delegate];
  webInternal = self->_webInternal;
  v10.receiver = self;
  v10.super_class = WebDownload;
  return [(NSURLDownload *)&v10 _initWithRequest:request delegate:webInternal directory:directory];
}

@end