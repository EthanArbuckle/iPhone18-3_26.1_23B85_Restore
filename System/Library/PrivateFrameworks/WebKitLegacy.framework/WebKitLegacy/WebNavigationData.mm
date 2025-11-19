@interface WebNavigationData
- (WebNavigationData)initWithURLString:(id)a3 title:(id)a4 originalRequest:(id)a5 response:(id)a6 hasSubstituteData:(BOOL)a7 clientRedirectSource:(id)a8;
- (void)dealloc;
@end

@implementation WebNavigationData

- (WebNavigationData)initWithURLString:(id)a3 title:(id)a4 originalRequest:(id)a5 response:(id)a6 hasSubstituteData:(BOOL)a7 clientRedirectSource:(id)a8
{
  v31.receiver = self;
  v31.super_class = WebNavigationData;
  v14 = [(WebNavigationData *)&v31 init];
  if (v14)
  {
    v15 = objc_alloc_init(WebNavigationDataPrivate);
    v14->_private = v15;
    if (a3)
    {
      v16 = a3;
    }

    m_ptr = v15->url.m_ptr;
    v15->url.m_ptr = a3;
    if (m_ptr)
    {
    }

    v18 = v14->_private;
    if (a4)
    {
      v19 = a4;
    }

    v20 = v18->title.m_ptr;
    v18->title.m_ptr = a4;
    if (v20)
    {
    }

    v21 = v14->_private;
    if (a5)
    {
      v22 = a5;
    }

    v23 = v21->originalRequest.m_ptr;
    v21->originalRequest.m_ptr = a5;
    if (v23)
    {
    }

    v24 = v14->_private;
    if (a6)
    {
      v25 = a6;
    }

    v26 = v24->response.m_ptr;
    v24->response.m_ptr = a6;
    if (v26)
    {
    }

    v14->_private->hasSubstituteData = a7;
    v27 = v14->_private;
    if (a8)
    {
      v28 = a8;
    }

    v29 = v27->clientRedirectSource.m_ptr;
    v27->clientRedirectSource.m_ptr = a8;
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