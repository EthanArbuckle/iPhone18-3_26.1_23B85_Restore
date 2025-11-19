@interface WebDownload
- (WebDownload)init;
- (WebDownload)initWithRequest:(id)a3 delegate:(id)a4;
- (id)_initWithLoadingConnection:(id)a3 request:(id)a4 response:(id)a5 delegate:(id)a6 proxy:(id)a7;
- (id)_initWithRequest:(id)a3 delegate:(id)a4 directory:(id)a5;
- (void)_setRealDelegate:(id)a3;
- (void)dealloc;
@end

@implementation WebDownload

- (void)_setRealDelegate:(id)a3
{
  if (!self->_webInternal)
  {
    v5 = objc_alloc_init(WebDownloadInternal);
    self->_webInternal = v5;

    [(WebDownloadInternal *)v5 setRealDelegate:a3];
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

- (WebDownload)initWithRequest:(id)a3 delegate:(id)a4
{
  [(WebDownload *)self _setRealDelegate:a4];
  webInternal = self->_webInternal;
  v8.receiver = self;
  v8.super_class = WebDownload;
  return [(NSURLDownload *)&v8 initWithRequest:a3 delegate:webInternal];
}

- (id)_initWithLoadingConnection:(id)a3 request:(id)a4 response:(id)a5 delegate:(id)a6 proxy:(id)a7
{
  [(WebDownload *)self _setRealDelegate:a6];
  webInternal = self->_webInternal;
  v14.receiver = self;
  v14.super_class = WebDownload;
  return [(NSURLDownload *)&v14 _initWithLoadingConnection:a3 request:a4 response:a5 delegate:webInternal proxy:a7];
}

- (id)_initWithRequest:(id)a3 delegate:(id)a4 directory:(id)a5
{
  [(WebDownload *)self _setRealDelegate:a4];
  webInternal = self->_webInternal;
  v10.receiver = self;
  v10.super_class = WebDownload;
  return [(NSURLDownload *)&v10 _initWithRequest:a3 delegate:webInternal directory:a5];
}

@end