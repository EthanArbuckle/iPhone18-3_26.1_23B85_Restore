@interface WebDataSource
+ (Class)_representationClassForMIMEType:(id)a3 allowingPlugins:(BOOL)a4;
+ (id)_repTypesAllowImageTypeOmission:(BOOL)a3;
- (BOOL)_isDocumentHTML;
- (NSArray)subresources;
- (NSData)data;
- (NSMutableURLRequest)request;
- (NSString)pageTitle;
- (NSString)textEncodingName;
- (NSURL)unreachableURL;
- (WebArchive)webArchive;
- (WebDataSource)initWithRequest:(NSURLRequest *)request;
- (WebFrame)webFrame;
- (WebResource)mainResource;
- (WebResource)subresourceForURL:(NSURL *)URL;
- (id)_URL;
- (id)_documentFragmentWithArchive:(id)a3;
- (id)_documentFragmentWithImageResource:(id)a3;
- (id)_imageElementWithImageResource:(id)a3;
- (id)_initWithDocumentLoader:(void *)a3;
- (id)_responseMIMEType;
- (id)_webView;
- (void)_addSubframeArchives:(id)a3;
- (void)_finishedLoading;
- (void)_makeRepresentation;
- (void)_receivedData:(id)a3;
- (void)_replaceSelectionWithArchive:(id)a3 selectReplacement:(BOOL)a4;
- (void)_setMainDocumentError:(id)a3;
- (void)_setOverrideTextEncodingName:(id)a3;
- (void)_setQuickLookContent:(id)a3;
- (void)_setQuickLookPreviewLoaderClient:(void *)a3;
- (void)_setRepresentation:(id)a3;
- (void)addSubresource:(WebResource *)subresource;
- (void)dealloc;
@end

@implementation WebDataSource

- (void)_setRepresentation:(id)a3
{
  v5 = self->_private;
  if (a3)
  {
    v6 = a3;
  }

  v7 = v5[1];
  v5[1] = a3;
  if (v7)
  {
  }

  *(self->_private + 16) = 0;
}

+ (Class)_representationClassForMIMEType:(id)a3 allowingPlugins:(BOOL)a4
{
  v5 = 0;
  if ([WebView _viewClass:0 andRepresentationClass:&v5 forMIMEType:a3 allowingPlugins:a4])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)_addSubframeArchives:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v8 + 1) + 8 * v7) _coreLegacyWebArchive];
        WebCore::DocumentLoader::addAllArchiveResources();
        ++v7;
      }

      while (v5 != v7);
      v5 = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_responseMIMEType
{
  v2 = [(WebDataSource *)self response];

  return [(NSURLResponse *)v2 MIMEType];
}

- (void)_setOverrideTextEncodingName:(id)a3
{
  v3 = *self->_private;
  MEMORY[0x1CCA63A40](&v8, a3);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *(v3 + 1640);
  *(v3 + 1640) = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }
}

- (void)_finishedLoading
{
  *(self->_private + 16) = 1;
  v3 = [(WebDataSource *)self representation];

  [v3 finishedLoadingWithDataSource:self];
}

- (void)_receivedData:(id)a3
{
  v5 = self;
  if (self)
  {
    v4 = self;
    self = v5;
  }

  [-[WebDataSource representation](self "representation")];
  [(NSView *)[(WebFrameView *)[(WebFrame *)[(WebDataSource *)v5 webFrame] frameView] documentView] dataSourceUpdated:v5];
  if (v5)
  {
  }
}

- (void)_setMainDocumentError:(id)a3
{
  v4 = self->_private;
  if ((v4[16] & 1) == 0)
  {
    v4[16] = 1;
    v7 = [(WebDataSource *)self representation];

    [v7 receivedError:a3 withDataSource:self];
  }
}

+ (id)_repTypesAllowImageTypeOmission:(BOOL)a3
{
  if (_MergedGlobals_10 == 1)
  {
    v3 = qword_1ED6A60F8;
    if (byte_1ED6A60F1)
    {
      return v3;
    }
  }

  else
  {
    v9 = a3;
    +[WebDataSource(WebInternal) _repTypesAllowImageTypeOmission:]::$_3::operator()(&v10);
    a3 = v9;
    v3 = v10;
    qword_1ED6A60F8 = v10;
    _MergedGlobals_10 = 1;
    if (byte_1ED6A60F1)
    {
      return v3;
    }
  }

  if (!a3)
  {
    v4 = objc_opt_class();
    v5 = [+[WebHTMLRepresentation supportedImageMIMETypes](WebHTMLRepresentation "supportedImageMIMETypes")];
    v6 = [v5 nextObject];
    if (v6)
    {
      v7 = v6;
      do
      {
        if (![v3 objectForKey:v7])
        {
          [v3 setObject:v4 forKey:v7];
        }

        v7 = [v5 nextObject];
      }

      while (v7);
    }

    byte_1ED6A60F1 = 1;
    return qword_1ED6A60F8;
  }

  return v3;
}

- (void)_replaceSelectionWithArchive:(id)a3 selectReplacement:(BOOL)a4
{
  v4 = a4;
  v6 = [(WebDataSource *)self _documentFragmentWithArchive:a3];
  if (v6)
  {
    v7 = v6;
    v8 = [(WebDataSource *)self webFrame];

    [(WebFrame *)v8 _replaceSelectionWithFragment:v7 selectReplacement:v4 smartReplace:0 matchStyle:0];
  }
}

- (id)_documentFragmentWithArchive:(id)a3
{
  result = [a3 mainResource];
  if (result)
  {
    v6 = result;
    v7 = [result MIMEType];
    if ([WebView canShowMIMETypeAsHTML:v7])
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:objc_msgSend(v6 encoding:{"data"), 4}];
      [a3 _coreLegacyWebArchive];
      WebCore::DocumentLoader::addAllArchiveResources();
      result = -[WebFrame _documentFragmentWithMarkupString:baseURLString:](-[WebDataSource webFrame](self, "webFrame"), "_documentFragmentWithMarkupString:baseURLString:", v8, [objc_msgSend(v6 "URL")]);
      if (v8)
      {
        v9 = result;

        return v9;
      }
    }

    else
    {
      MEMORY[0x1CCA63A40](&v14, v7);
      isSupportedImageMIMEType = WebCore::MIMETypeRegistry::isSupportedImageMIMEType(&v14, v10);
      v13 = v14;
      v14 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }

      if (isSupportedImageMIMEType)
      {
        return [(WebDataSource *)self _documentFragmentWithImageResource:v6];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)_documentFragmentWithImageResource:(id)a3
{
  v4 = [(WebDataSource *)self _imageElementWithImageResource:a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [[(WebFrame *)[(WebDataSource *)self webFrame] DOMDocument] createDocumentFragment];
  [(DOMNode *)v6 appendChild:v5];
  return v6;
}

- (id)_imageElementWithImageResource:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [(WebDataSource *)self addSubresource:?];
  v5 = [[(WebFrame *)[(WebDataSource *)self webFrame] DOMDocument] createElement:@"img"];
  v6 = [a3 URL];
  if ([v6 isFileURL])
  {
    v7 = [v6 absoluteString];
  }

  else
  {
    v7 = [v6 _web_originalDataAsString];
  }

  [(DOMElement *)v5 setAttribute:@"src" value:v7];
  return v5;
}

- (id)_URL
{
  v2 = WebCore::ResourceRequestBase::url((*self->_private + 880));
  if (!*v2 || !*(*v2 + 4))
  {
    return 0;
  }

  WTF::URL::createCFURL(&v7, v2);
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v7;
    v7 = 0;
    if (v5)
    {
    }
  }

  return v3;
}

- (id)_webView
{
  v2 = [(WebDataSource *)self webFrame];

  return [(WebFrame *)v2 webView];
}

- (BOOL)_isDocumentHTML
{
  v2 = [(WebDataSource *)self _responseMIMEType];

  return [WebView canShowMIMETypeAsHTML:v2];
}

- (void)_makeRepresentation
{
  v3 = [objc_opt_class() _representationClassForMIMEType:-[WebDataSource _responseMIMEType](self allowingPlugins:{"_responseMIMEType"), 0}];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v3 _representationClassForWebFrame:{-[WebDataSource webFrame](self, "webFrame")}];
  }

  [(WebDataSource *)self representation];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v3)
    {
      v3 = objc_alloc_init(v3);
    }

    [(WebDataSource *)self _setRepresentation:v3];
    if (v3)
    {
    }
  }

  [*(self->_private + 1) setDataSource:self];
  v4 = *self->_private;
  MEMORY[0x1CCA63A40](&v7, [(WebDataSource *)self _responseMIMEType]);
  WebCore::DocumentLoader::setResponseMIMEType(v4, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (id)_initWithDocumentLoader:(void *)a3
{
  v4.receiver = self;
  v4.super_class = WebDataSource;
  if ([(WebDataSource *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)_setQuickLookContent:(id)a3
{
  v4 = [a3 copy];
  v5 = self->_private;
  v6 = v5[4];
  v5[4] = v4;
  if (v6)
  {
  }
}

- (void)_setQuickLookPreviewLoaderClient:(void *)a3
{
  v3 = self->_private;
  if (a3)
  {
    ++*(a3 + 2);
  }

  v4 = v3[5];
  v3[5] = a3;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 8))();
    }

    else
    {
      --v4[2];
    }
  }
}

- (WebDataSource)initWithRequest:(NSURLRequest *)request
{
  MEMORY[0x1CCA65390](v25, request);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  *v19 = 0u;
  v20 = 0u;
  WebCore::SubstituteData::SubstituteData(v19);
  v4 = WTF::fastMalloc(0xE40);
  WebDocumentLoaderMac::WebDocumentLoaderMac();
  v30 = v4;
  v6 = [(WebDataSource *)self _initWithDocumentLoader:&v30];
  v7 = v30;
  v30 = 0;
  if (v7)
  {
    if (v7[6] == 1)
    {
      (*(*v7 + 24))(v7);
      v8 = *(&v23 + 1);
      *(&v23 + 1) = 0;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    --v7[6];
  }

  v8 = *(&v23 + 1);
  *(&v23 + 1) = 0;
  if (v8)
  {
LABEL_5:
  }

LABEL_6:
  WebCore::ResourceResponseBase::~ResourceResponseBase(v22, v5);
  v10 = v19[1];
  v19[1] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = v19[0];
  v19[0] = 0;
  if (!v11 || atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
  {
    v12 = v29;
    v29 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  atomic_store(1u, v11 + 2);
  (*(*v11 + 8))(v11);
  v12 = v29;
  v29 = 0;
  if (v12)
  {
LABEL_12:
  }

LABEL_13:
  v13 = v28;
  v28 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      v15 = MEMORY[0x1CCA67F60](v13, v9);
      bmalloc::api::tzoneFree(v15, v16);
      v14 = v27;
      v27 = 0;
      if (!v14)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    --*v13;
  }

  v14 = v27;
  v27 = 0;
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v9);
  }

LABEL_21:
  v17 = v26;
  v26 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v9);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(v25, v9);
  return v6;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    v4 = self->_private;
    if (v4 && v4[17] == 1)
    {
      --WebDataSourceCount;
    }

    v5 = [(NSURLResponse *)[(WebDataSource *)self response] URL];
    if (v5)
    {
      WebCore::removeQLPreviewConverterForURL(v5, v6);
    }

    v7 = self->_private;
    if (!v7)
    {
      goto LABEL_22;
    }

    *(*v7 + 3608) = 0;
    v8 = v7[5];
    v7[5] = 0;
    if (v8)
    {
      if (v8[2] == 1)
      {
        (*(*v8 + 8))(v8);
        v9 = v7[4];
        v7[4] = 0;
        if (!v9)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      --v8[2];
    }

    v9 = v7[4];
    v7[4] = 0;
    if (!v9)
    {
LABEL_13:
      v10 = v7[1];
      v7[1] = 0;
      if (v10)
      {
      }

      v11 = *v7;
      *v7 = 0;
      if (v11)
      {
        if (v11[6] == 1)
        {
          (*(*v11 + 24))(v11);
        }

        else
        {
          --v11[6];
        }
      }

      MEMORY[0x1CCA6A890](v7, 0x10A0C40FB70404BLL);
LABEL_22:
      v12.receiver = self;
      v12.super_class = WebDataSource;
      [(WebDataSource *)&v12 dealloc];
      return;
    }

LABEL_12:

    goto LABEL_13;
  }
}

- (NSData)data
{
  WebCore::DocumentLoader::mainResourceData(&v10, *self->_private);
  if (!v10)
  {
    return 0;
  }

  WebCore::FragmentedSharedBuffer::makeContiguous(&v8, v10);
  WebCore::SharedBuffer::createNSData(&v9, v8);
  v2 = v9;
  v9 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v9;
    v9 = 0;
    if (v4)
    {
    }
  }

  v5 = v8;
  v8 = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
    v6 = v10;
    v10 = 0;
    if (!v6)
    {
      return v2;
    }
  }

  else
  {
    v6 = v10;
    v10 = 0;
    if (!v6)
    {
      return v2;
    }
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) != 1)
  {
    return v2;
  }

  atomic_store(1u, v6 + 2);
  (*(*v6 + 8))(v6);
  return v2;
}

- (WebFrame)webFrame
{
  v2 = *(*self->_private + 16);
  if (v2 && (v3 = *(v2 + 8)) != 0 && (v4 = *(*(v3 + 208) + 16), (((*v4)[64]._private)(v4, a2) & 1) == 0))
  {
    return v4[3];
  }

  else
  {
    return 0;
  }
}

- (NSMutableURLRequest)request
{
  v2 = WebCore::DocumentLoader::frameLoader(*self->_private);
  if (!v2 || !WebCore::FrameLoader::frameHasLoaded(v2))
  {
    return 0;
  }

  return WebCore::ResourceRequest::nsURLRequest();
}

- (NSString)textEncodingName
{
  v2 = *(*self->_private + 1640);
  if (!v2)
  {
    v5 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
LABEL_5:
    v13 = 0;
LABEL_11:
    v9 = v5;
    v10 = v13;
    v13 = 0;
    if (v10)
    {
    }

    return &v5->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v13, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v4);
  }

  v5 = v13;
  if (v13)
  {
    goto LABEL_5;
  }

  v6 = [(NSURLResponse *)[(WebDataSource *)self response] textEncodingName];
  v5 = v6;
  if (v6)
  {
    v7 = v6;
  }

  v8 = v13;
  v13 = v5;
  if (v8)
  {

    v5 = v13;
  }

  v13 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  return &v5->isa;
}

- (NSString)pageTitle
{
  v2 = [(WebDataSource *)self representation];

  return [v2 title];
}

- (NSURL)unreachableURL
{
  v2 = *self->_private;
  v3 = *(v2 + 368);
  if (!v3 || !*(v3 + 4))
  {
    return 0;
  }

  WTF::URL::createCFURL(&v8, (v2 + 368));
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v8;
    v8 = 0;
    if (v6)
    {
    }
  }

  return v4;
}

- (WebArchive)webArchive
{
  if (*(*self->_private + 3583) != 1)
  {
    return 0;
  }

  v3 = [WebArchive alloc];
  v4 = [(WebDataSource *)self webFrame];
  WebCore::LegacyWebArchive::create(&v11, v4->_private->coreFrame.m_ptr, v5);
  result = [(WebArchive *)v3 _initWithCoreLegacyWebArchive:&v11];
  if (result)
  {
    v7 = result;
    v8 = result;
    result = v7;
  }

  v9 = v11;
  v11 = 0;
  if (v9)
  {
    if (v9[2] == 1)
    {
      v10 = result;
      (*(*v9 + 8))(v9);
      return v10;
    }

    else
    {
      --v9[2];
    }
  }

  return result;
}

- (WebResource)mainResource
{
  WebCore::DocumentLoader::mainResource(&v10, *self->_private);
  if (!v10)
  {
    return 0;
  }

  v2 = [WebResource alloc];
  v9 = v10;
  v10 = 0;
  v3 = [(WebResource *)v2 _initWithCoreResource:&v9];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v9;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v6[2] != 1)
  {
    --v6[2];
LABEL_7:
    v7 = v10;
    v10 = 0;
    if (!v7)
    {
      return v4;
    }

    goto LABEL_8;
  }

  (*(*v6 + 8))(v6);
  v7 = v10;
  v10 = 0;
  if (!v7)
  {
    return v4;
  }

LABEL_8:
  if (v7[2] != 1)
  {
    --v7[2];
    return v4;
  }

  (*(*v7 + 8))(v7);
  return v4;
}

- (NSArray)subresources
{
  WebCore::DocumentLoader::subresources(&v13, *self->_private);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v2 initWithCapacity:v15];
  if (v15)
  {
    v5 = v13;
    v6 = 8 * v15;
    do
    {
      v7 = [[WebResource alloc] _initWithCoreResource:v5];
      if (v7)
      {
        [(NSArray *)v4 addObject:v7];
      }

      v5 = (v5 + 8);
      v6 -= 8;
    }

    while (v6);
  }

  if (v4)
  {
    v8 = v4;
  }

  v9 = v13;
  if (v15)
  {
    v10 = 8 * v15;
    do
    {
      v11 = *v9;
      *v9 = 0;
      if (v11)
      {
        if (v11[2] == 1)
        {
          (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[2];
        }
      }

      v9 = (v9 + 8);
      v10 -= 8;
    }

    while (v10);
    v9 = v13;
  }

  if (v9)
  {
    v13 = 0;
    v14 = 0;
    WTF::fastFree(v9, v3);
  }

  return v4;
}

- (WebResource)subresourceForURL:(NSURL *)URL
{
  v3 = *self->_private;
  MEMORY[0x1CCA63960](v13, URL);
  WebCore::DocumentLoader::subresource(&v14, v3, v13);
  v5 = v13[0];
  v13[0] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  if (!v14)
  {
    return 0;
  }

  v6 = [WebResource alloc];
  v13[0] = v14;
  v14 = 0;
  v7 = [(WebResource *)v6 _initWithCoreResource:v13];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v13[0];
  v13[0] = 0;
  if (!v10)
  {
    goto LABEL_10;
  }

  if (*(v10 + 2) != 1)
  {
    --*(v10 + 2);
LABEL_10:
    v11 = v14;
    v14 = 0;
    if (!v11)
    {
      return v8;
    }

    goto LABEL_11;
  }

  (*(*v10 + 8))(v10);
  v11 = v14;
  v14 = 0;
  if (!v11)
  {
    return v8;
  }

LABEL_11:
  if (*(v11 + 2) != 1)
  {
    --*(v11 + 2);
    return v8;
  }

  (*(*v11 + 8))(v11);
  return v8;
}

- (void)addSubresource:(WebResource *)subresource
{
  v3.var0 = [(WebResource *)subresource _coreResource];
  ++*(v3.var0 + 2);
  var0 = v3.var0;
  WebCore::DocumentLoader::addArchiveResource();
  if (var0)
  {
    if (*(var0 + 2) == 1)
    {
      (*(*var0 + 8))(var0);
    }

    else
    {
      --*(var0 + 2);
    }
  }
}

@end