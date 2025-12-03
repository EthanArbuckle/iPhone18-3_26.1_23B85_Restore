@interface WebNavigationData
- (WebNavigationData)initWithURLString:(id)string title:(id)title originalRequest:(id)request response:(id)response hasSubstituteData:(BOOL)data clientRedirectSource:(id)source;
- (void)dealloc;
@end

@implementation WebNavigationData

- (WebNavigationData)initWithURLString:(id)string title:(id)title originalRequest:(id)request response:(id)response hasSubstituteData:(BOOL)data clientRedirectSource:(id)source
{
  v31.receiver = self;
  v31.super_class = WebNavigationData;
  v14 = [(WebNavigationData *)&v31 init];
  if (v14)
  {
    v15 = objc_alloc_init(WebNavigationDataPrivate);
    v14->_private = v15;
    if (string)
    {
      stringCopy = string;
    }

    m_ptr = v15->url.m_ptr;
    v15->url.m_ptr = string;
    if (m_ptr)
    {
    }

    v18 = v14->_private;
    if (title)
    {
      titleCopy = title;
    }

    v20 = v18->title.m_ptr;
    v18->title.m_ptr = title;
    if (v20)
    {
    }

    v21 = v14->_private;
    if (request)
    {
      requestCopy = request;
    }

    v23 = v21->originalRequest.m_ptr;
    v21->originalRequest.m_ptr = request;
    if (v23)
    {
    }

    v24 = v14->_private;
    if (response)
    {
      responseCopy = response;
    }

    v26 = v24->response.m_ptr;
    v24->response.m_ptr = response;
    if (v26)
    {
    }

    v14->_private->hasSubstituteData = data;
    v27 = v14->_private;
    if (source)
    {
      sourceCopy = source;
    }

    v29 = v27->clientRedirectSource.m_ptr;
    v27->clientRedirectSource.m_ptr = source;
    if (v29)
    {
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebNavigationData;
  [(WebNavigationData *)&v3 dealloc];
}

@end