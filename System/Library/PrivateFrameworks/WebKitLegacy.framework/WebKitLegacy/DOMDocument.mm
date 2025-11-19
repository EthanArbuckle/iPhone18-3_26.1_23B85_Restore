@interface DOMDocument
- (BOOL)execCommand:(NSString *)command userInterface:(BOOL)userInterface value:(NSString *)value;
- (BOOL)hasFocus;
- (BOOL)hidden;
- (BOOL)queryCommandEnabled:(NSString *)command;
- (BOOL)queryCommandIndeterm:(NSString *)command;
- (BOOL)queryCommandState:(NSString *)command;
- (BOOL)queryCommandSupported:(NSString *)command;
- (BOOL)webkitFullScreenKeyboardInputAllowed;
- (BOOL)webkitFullscreenEnabled;
- (BOOL)webkitIsFullScreen;
- (BOOL)xmlStandalone;
- (DOMAbstractView)defaultView;
- (DOMAttr)createAttribute:(NSString *)name;
- (DOMAttr)createAttributeNS:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName;
- (DOMCDATASection)createCDATASection:(NSString *)data;
- (DOMCSSRuleList)getMatchedCSSRules:(DOMElement *)element pseudoElement:(NSString *)pseudoElement authorOnly:(BOOL)authorOnly;
- (DOMCSSStyleDeclaration)createCSSStyleDeclaration;
- (DOMCSSStyleDeclaration)getComputedStyle:(DOMElement *)element pseudoElement:(NSString *)pseudoElement;
- (DOMComment)createComment:(NSString *)data;
- (DOMDocumentFragment)createDocumentFragment;
- (DOMDocumentType)doctype;
- (DOMElement)activeElement;
- (DOMElement)createElement:(NSString *)tagName;
- (DOMElement)createElementNS:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName;
- (DOMElement)documentElement;
- (DOMElement)elementFromPoint:(int)x y:(int)y;
- (DOMElement)getElementById:(NSString *)elementId;
- (DOMElement)querySelector:(NSString *)selectors;
- (DOMEvent)createEvent:(NSString *)eventType;
- (DOMHTMLCollection)anchors;
- (DOMHTMLCollection)applets;
- (DOMHTMLCollection)forms;
- (DOMHTMLCollection)images;
- (DOMHTMLCollection)links;
- (DOMHTMLElement)body;
- (DOMImplementation)implementation;
- (DOMNode)adoptNode:(DOMNode *)source;
- (DOMNode)importNode:(DOMNode *)importedNode deep:(BOOL)deep;
- (DOMNodeIterator)createNodeIterator:(DOMNode *)root whatToShow:(unsigned int)whatToShow filter:(id)filter expandEntityReferences:(BOOL)expandEntityReferences;
- (DOMNodeList)getElementsByClassName:(NSString *)classNames;
- (DOMNodeList)getElementsByName:(NSString *)elementName;
- (DOMNodeList)getElementsByTagName:(NSString *)tagname;
- (DOMNodeList)getElementsByTagNameNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (DOMNodeList)querySelectorAll:(NSString *)selectors;
- (DOMProcessingInstruction)createProcessingInstruction:(NSString *)target data:(NSString *)data;
- (DOMRange)createRange;
- (DOMStyleSheetList)styleSheets;
- (DOMText)createTextNode:(NSString *)data;
- (DOMTreeWalker)createTreeWalker:(DOMNode *)root whatToShow:(unsigned int)whatToShow filter:(id)filter expandEntityReferences:(BOOL)expandEntityReferences;
- (DOMXPathExpression)createExpression:(NSString *)expression resolver:(id)resolver;
- (DOMXPathResult)evaluate:(NSString *)expression contextNode:(DOMNode *)contextNode resolver:(id)resolver type:(unsigned __int16)type inResult:(DOMXPathResult *)inResult;
- (NSString)URL;
- (NSString)characterSet;
- (NSString)charset;
- (NSString)cookie;
- (NSString)defaultCharset;
- (NSString)documentURI;
- (NSString)domain;
- (NSString)inputEncoding;
- (NSString)lastModified;
- (NSString)queryCommandValue:(NSString *)command;
- (NSString)readyState;
- (NSString)referrer;
- (NSString)title;
- (NSString)xmlEncoding;
- (NSString)xmlVersion;
- (NSURL)URLWithAttributeString:(NSString *)string;
- (WebFrame)webFrame;
- (id)_documentRange;
- (id)caretRangeFromPoint:(int)a3 y:(int)a4;
- (id)children;
- (id)compatMode;
- (id)contentType;
- (id)createNSResolver:(DOMNode *)nodeResolver;
- (id)currentScript;
- (id)dir;
- (id)firstElementChild;
- (id)head;
- (id)lastElementChild;
- (id)origin;
- (id)scrollingElement;
- (id)visibilityState;
- (id)webkitCurrentFullScreenElement;
- (id)webkitFullscreenElement;
- (unsigned)childElementCount;
- (void)setBody:(DOMHTMLElement *)body;
- (void)setCharset:(NSString *)charset;
- (void)setCookie:(NSString *)cookie;
- (void)setDir:(id)a3;
- (void)setDocumentURI:(NSString *)documentURI;
- (void)setTitle:(NSString *)title;
- (void)setXmlStandalone:(BOOL)xmlStandalone;
- (void)setXmlVersion:(NSString *)xmlVersion;
- (void)webkitCancelFullScreen;
- (void)webkitExitFullscreen;
@end

@implementation DOMDocument

- (DOMDocumentType)doctype
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Document::doctype(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (DOMImplementation)implementation
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Document::implementation(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (DOMElement)documentElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super.super._internal + 167));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (NSString)inputEncoding
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v9[0] = WebCore::Document::characterSetWithUTF8Fallback(self->super.super._internal);
  v9[1] = v3;
  WTF::ASCIILiteral::createNSString(&v10, v9);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (NSString)xmlEncoding
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super.super._internal + 221);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (NSString)xmlVersion
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super.super._internal + 222);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (void)setXmlVersion:(NSString *)xmlVersion
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v9, xmlVersion);
  WebCore::Document::setXMLVersion(&v10, internal, &v9);
  if (v12 == 1)
  {
    v13[80] = v10;
    v8 = v11;
    v11 = 0;
    v14 = v8;
    raiseDOMErrorException();
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
}

- (BOOL)xmlStandalone
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = *(self->super.super._internal + 3534) == 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setXmlStandalone:(BOOL)xmlStandalone
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::Document::setXMLStandalone(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (NSString)documentURI
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::documentURI(&v11, self->super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (void)setDocumentURI:(NSString *)documentURI
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v8, documentURI);
  WebCore::Document::setDocumentURI(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (DOMAbstractView)defaultView
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v3 = WebCore::Document::windowProxy(self->super.super._internal);
  if (v3 && (v5 = WebCore::WindowProxy::window(v3)) != 0 && (*(v5 + 56) & 1) == 0)
  {
    v6 = kit(v5);
  }

  else
  {
    v6 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
  return v6;
}

- (DOMStyleSheetList)styleSheets
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Document::styleSheets(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (id)contentType
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::contentType(&v11, self->super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (NSString)title
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super.super._internal + 190);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (void)setTitle:(NSString *)title
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  MEMORY[0x1CCA63A40](&v6, title);
  WebCore::Document::setTitle();
  v5 = v6;
  v6 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
}

- (id)dir
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::dir(self->super.super._internal);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (void)setDir:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Document::setDir();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)referrer
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::referrer(&v11, self->super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (NSString)domain
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::domain(&v11, self->super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (NSString)URL
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::urlForBindings(self->super.super._internal);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (NSString)cookie
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  v3 = WebCore::Document::cookie(&v13, self->super.super._internal);
  if (v15)
  {
    if (v15 == 1)
    {
      v17[80] = v13;
      v12 = v14;
      v14 = 0;
      v18 = v12;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v4 = v13;
  v13 = 0;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v6 = v16;
  v16 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v16;
    v16 = 0;
    if (v8)
    {
    }
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
  }

  if (v15 != 255)
  {
    if (v15)
    {
      v9 = v14;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = v13;
      v13 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

LABEL_18:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v5);
  return v6;
}

- (void)setCookie:(NSString *)cookie
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v9, cookie);
  WebCore::Document::setCookie(&v10, internal, &v9);
  if (v12 == 1)
  {
    v13[80] = v10;
    v8 = v11;
    v11 = 0;
    v14 = v8;
    raiseDOMErrorException();
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
}

- (DOMHTMLElement)body
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Document::bodyOrFrameset(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (void)setBody:(DOMHTMLElement *)body
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (body)
  {
    internal = body->super.super.super._internal;
    if (internal)
    {
      *(internal + 7) += 2;
    }
  }

  else
  {
    internal = 0;
  }

  v7 = internal;
  WebCore::Document::setBodyOrFrameset();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
LABEL_9:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
    return;
  }

  WebCore::Node::removedLastRef(v7);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (id)head
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Document::head(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (DOMHTMLCollection)images
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67EA0](&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMHTMLCollection)applets
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Document::applets(&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMHTMLCollection)links
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67E50](&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMHTMLCollection)forms
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67E40](&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMHTMLCollection)anchors
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67EC0](&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (NSString)lastModified
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::lastModified(&v11, self->super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (NSString)charset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  v3 = *(self->super.super._internal + 227);
  if (v3)
  {
    v4 = (*v3)++;
    v17 = &unk_1F472B448;
    v5 = *(v3 + 32);
    v18 = *(v3 + 16);
    LOWORD(v19) = v5;
    if (v4)
    {
      *v3 = v4;
    }

    else
    {
      WebCore::TextResourceDecoder::~TextResourceDecoder(v3);
      WTF::fastFree(v6, v7);
    }
  }

  else
  {
    v19 = 0;
    v17 = &unk_1F472B448;
    v18 = 0uLL;
  }

  v14[0] = PAL::TextEncoding::domName(&v17);
  v14[1] = v8;
  WTF::ASCIILiteral::createNSString(&v15, v14);
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    v11 = v10;
    v12 = v15;
    v15 = 0;
    if (v12)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v9);
  return v10;
}

- (void)setCharset:(NSString *)charset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v8, charset);
  WebCore::Document::setCharset(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (NSString)defaultCharset
{
  WebCore::Document::defaultCharsetForLegacyBindings(&v10, self->super.super._internal);
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v4 = v11;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v11;
    v11 = 0;
    if (v6)
    {
    }
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  return v4;
}

- (NSString)readyState
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v4 = *(self->super.super._internal + 3523);
  if (v4 > 2)
  {
    v5 = @"complete";
  }

  else
  {
    v5 = *(&off_1E82C7530 + v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return &v5->isa;
}

- (NSString)characterSet
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v9[0] = WebCore::Document::characterSetWithUTF8Fallback(self->super.super._internal);
  v9[1] = v3;
  WTF::ASCIILiteral::createNSString(&v10, v9);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (DOMElement)activeElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  active = WebCore::Document::activeElement(self->super.super._internal);
  v4 = kit(active);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (id)compatMode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::compatMode(&v11, self->super.super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (BOOL)webkitIsFullScreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  WebCore::Document::protectedFullscreen(&v11, self->super.super._internal);
  v3 = WebCore::DocumentFullscreen::fullscreenElement(v11);
  v5 = v11;
  v11 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(*(v5 + 1) + 8);
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      v7 = v3;
      WebCore::Node::removedLastRef(v6);
      v3 = v7;
    }

    else
    {
      *(v6 + 7) -= 2;
    }

LABEL_6:
    v8 = v3 != 0;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v4);
    return v8;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

- (BOOL)webkitFullScreenKeyboardInputAllowed
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  WebCore::Document::protectedFullscreen(&v10, self->super.super._internal);
  v3 = v10;
  if (WebCore::DocumentFullscreen::fullscreenElement(v10))
  {
    v5 = *(v3 + 64);
    v6 = v10;
    v10 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    v6 = v10;
    v10 = 0;
    if (!v6)
    {
LABEL_9:
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
      return v5 & 1;
    }
  }

  v7 = *(*(v6 + 1) + 8);
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v7);
    }

    else
    {
      *(v7 + 7) -= 2;
    }

    goto LABEL_9;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

- (id)webkitCurrentFullScreenElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = WebCore::DocumentFullscreen::webkitFullscreenElement(self->super.super._internal, v3);
  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (BOOL)webkitFullscreenEnabled
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Document::protectedFullscreen(&v9, self->super.super._internal);
  v4 = WebCore::DocumentFullscreen::enabledByPermissionsPolicy(v9);
  v5 = v9;
  v9 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(*(v5 + 1) + 8);
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
    }

    else
    {
      *(v6 + 7) -= 2;
    }

LABEL_6:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
    return v4;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

- (id)webkitFullscreenElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = WebCore::DocumentFullscreen::webkitFullscreenElement(self->super.super._internal, v3);
  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (id)visibilityState
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  if (WebCore::Document::visibilityState(self->super.super._internal))
  {
    v4 = @"visible";
  }

  else
  {
    v4 = @"hidden";
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v3);
  return v4;
}

- (BOOL)hidden
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::Document::hidden(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (id)currentScript
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  v5 = *(internal + 423);
  if (v5 && (v6 = *(*(internal + 210) + 8 * v5 - 8)) != 0 && (*(v6 + 32) & 0x10) != 0 && *(*(v6 + 104) + 24) == *(*MEMORY[0x1E69E2DD0] + 24))
  {
    v7 = kit(v6);
  }

  else
  {
    v7 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v3);
  return v7;
}

- (id)origin
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  v3 = WebCore::SecurityContext::securityOrigin((self->super.super._internal + 208));
  WebCore::SecurityOrigin::toString(&v12, v3);
  v4 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v6 = v13;
  v13 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v13;
    v13 = 0;
    if (v8)
    {
    }
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
  return v6;
}

- (id)scrollingElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Document::scrollingElementForAPI(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (id)children
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::ContainerNode::children(&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (id)firstElementChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  ElementChild = WebCore::ContainerNode::firstElementChild(self->super.super._internal);
  v4 = kit(ElementChild);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (id)lastElementChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  ElementChild = WebCore::ContainerNode::lastElementChild(self->super.super._internal);
  v4 = kit(ElementChild);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (unsigned)childElementCount
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::ContainerNode::childElementCount(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMElement)createElement:(NSString *)tagName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WTF::AtomStringImpl::add(v14, tagName, v4);
  v9 = v14[0];
  ElementForBindings = WebCore::Document::createElementForBindings();
  if (v12)
  {
    if (v12 == 1)
    {
      LOBYTE(v14[0]) = v10;
      v14[1] = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(ElementForBindings);
  }

  v7 = kit(v10);
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
    }

    else
    {
      *(v10 + 7) -= 2;
    }
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
  return v7;
}

- (DOMDocumentFragment)createDocumentFragment
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Document::createDocumentFragment(&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMText)createTextNode:(NSString *)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  MEMORY[0x1CCA63A40](&v9, data);
  WebCore::Document::createTextNode();
  v5 = kit(v10);
  v6 = v10;
  v10 = 0;
  if (!v6)
  {
LABEL_4:
    v7 = v9;
    v9 = 0;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    goto LABEL_4;
  }

  WebCore::Node::removedLastRef(v6);
  v7 = v9;
  v9 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

LABEL_7:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (DOMComment)createComment:(NSString *)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v11, data);
  MEMORY[0x1CCA67B60](&v12, internal, &v11);
  v7 = kit(v12);
  v8 = v12;
  v12 = 0;
  if (!v8)
  {
LABEL_4:
    v9 = v11;
    v11 = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v8 + 7) != 2)
  {
    *(v8 + 7) -= 2;
    goto LABEL_4;
  }

  WebCore::Node::removedLastRef(v8);
  v9 = v11;
  v11 = 0;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

LABEL_7:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
  return v7;
}

- (DOMCDATASection)createCDATASection:(NSString *)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  MEMORY[0x1CCA63A40](&v14, data);
  CDATASection = WebCore::Document::createCDATASection();
  if (v17)
  {
    if (v17 == 1)
    {
      v18[80] = v15;
      v13 = v16;
      v16 = 0;
      v19 = v13;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(CDATASection);
  }

  v5 = v15;
  v15 = 0;
  v7 = kit(v5);
  if (!v5)
  {
LABEL_5:
    v8 = v17;
    if (v17 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v5);
  v8 = v17;
  if (v17 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v8)
  {
    v10 = v16;
    v16 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v6);
    }
  }

  else
  {
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      if (*(v9 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v9);
      }

      else
      {
        *(v9 + 7) -= 2;
      }
    }
  }

LABEL_16:
  v17 = -1;
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v6);
  return v7;
}

- (DOMProcessingInstruction)createProcessingInstruction:(NSString *)target data:(NSString *)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v22);
  MEMORY[0x1CCA63A40](&v18, target);
  MEMORY[0x1CCA63A40](&v17, data);
  ProcessingInstruction = WebCore::Document::createProcessingInstruction();
  if (v21)
  {
    if (v21 == 1)
    {
      v22[80] = v19;
      v16 = v20;
      v20 = 0;
      v23 = v16;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(ProcessingInstruction);
  }

  v7 = v19;
  v19 = 0;
  v9 = kit(v7);
  if (!v7)
  {
LABEL_5:
    v10 = v21;
    if (v21 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v7);
  v10 = v21;
  if (v21 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v10)
  {
    v12 = v20;
    v20 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }
  }

  else
  {
    v11 = v19;
    v19 = 0;
    if (v11)
    {
      if (*(v11 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v11);
      }

      else
      {
        *(v11 + 7) -= 2;
      }
    }
  }

LABEL_16:
  v21 = -1;
  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  v14 = v18;
  v18 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v22, v8);
  return v9;
}

- (DOMAttr)createAttribute:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WTF::AtomStringImpl::add(v14, name, v4);
  v9 = v14[0];
  Attribute = WebCore::Document::createAttribute();
  if (v12)
  {
    if (v12 == 1)
    {
      LOBYTE(v14[0]) = v10;
      v14[1] = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(Attribute);
  }

  v7 = kit(v10);
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
    }

    else
    {
      *(v10 + 7) -= 2;
    }
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
  return v7;
}

- (DOMNodeList)getElementsByTagName:(NSString *)tagname
{
  if (tagname)
  {
    WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
    WTF::AtomStringImpl::add(&v12, tagname, v4);
    v9 = v12;
    WebCore::ContainerNode::getElementsByTagName();
    v6 = kit(v10);
    if (v10)
    {
      if (*(v10 + 4) == 1)
      {
        (*(*v10 + 8))();
        v7 = v9;
        if (v9)
        {
LABEL_6:
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v5);
          }
        }

LABEL_8:
        WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
        return v6;
      }

      --*(v10 + 4);
    }

    v7 = v9;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  return 0;
}

- (DOMNode)importNode:(DOMNode *)importedNode deep:(BOOL)deep
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  if (!importedNode)
  {
    raiseTypeErrorException();
  }

  v5 = WebCore::Document::importNode();
  if (v11)
  {
    if (v11 == 1)
    {
      v12[80] = v9;
      v13 = v10;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v5);
  }

  v7 = kit(v9);
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
    }

    else
    {
      *(v9 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v6);
  return v7;
}

- (DOMElement)createElementNS:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  WTF::AtomStringImpl::add(v18, namespaceURI, v6);
  v13 = v18[0];
  WTF::AtomStringImpl::add(v18, qualifiedName, v7);
  v12 = v18[0];
  ElementNS = WebCore::Document::createElementNS();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v18[0]) = v14;
      v18[1] = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(ElementNS);
  }

  v10 = kit(v14);
  if (v14)
  {
    if (*(v14 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v14);
    }

    else
    {
      *(v14 + 7) -= 2;
    }
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v9);
  return v10;
}

- (DOMAttr)createAttributeNS:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  WTF::AtomStringImpl::add(v18, namespaceURI, v6);
  v13 = v18[0];
  WTF::AtomStringImpl::add(v18, qualifiedName, v7);
  v12 = v18[0];
  AttributeNS = WebCore::Document::createAttributeNS();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v18[0]) = v14;
      v18[1] = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(AttributeNS);
  }

  v10 = kit(v14);
  if (v14)
  {
    if (*(v14 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v14);
    }

    else
    {
      *(v14 + 7) -= 2;
    }
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v9);
  return v10;
}

- (DOMNodeList)getElementsByTagNameNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  if (!localName)
  {
    return 0;
  }

  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  WTF::AtomStringImpl::add(&v16, namespaceURI, v6);
  v13 = v16;
  WTF::AtomStringImpl::add(&v16, localName, v7);
  v12 = v16;
  WebCore::ContainerNode::getElementsByTagNameNS();
  v9 = kit(v14);
  if (!v14)
  {
LABEL_5:
    v10 = v12;
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (*(v14 + 4) != 1)
  {
    --*(v14 + 4);
    goto LABEL_5;
  }

  (*(*v14 + 8))();
  v10 = v12;
  if (v12)
  {
LABEL_6:
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

LABEL_8:
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v8);
  return v9;
}

- (DOMNode)adoptNode:(DOMNode *)source
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  if (!source)
  {
    raiseTypeErrorException();
  }

  v5 = WebCore::Document::adoptNode(&v14, self->super.super._internal, source->super._internal);
  if (v16)
  {
    if (v16 == 1)
    {
      v17[80] = v14;
      v13 = v15;
      v15 = 0;
      v18 = v13;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v5);
  }

  v6 = v14;
  v14 = 0;
  v8 = kit(v6);
  if (!v6)
  {
LABEL_6:
    v9 = v16;
    if (v16 == 255)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    goto LABEL_6;
  }

  WebCore::Node::removedLastRef(v6);
  v9 = v16;
  if (v16 == 255)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (v9)
  {
    v11 = v15;
    v15 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }
  }

  else
  {
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (*(v10 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v10);
      }

      else
      {
        *(v10 + 7) -= 2;
      }
    }
  }

LABEL_17:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v7);
  return v8;
}

- (DOMEvent)createEvent:(NSString *)eventType
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v16, eventType);
  Event = WebCore::Document::createEvent(&v17, internal, &v16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20[80] = v17;
      v15 = v18;
      v18 = 0;
      v21 = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(Event);
  }

  v7 = v17;
  v17 = 0;
  v9 = kit(v7);
  if (!v7)
  {
LABEL_5:
    v10 = v19;
    if (v19 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (v7[6] != 1)
  {
    --v7[6];
    goto LABEL_5;
  }

  (*(*v7 + 8))(v7);
  v10 = v19;
  if (v19 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v10)
  {
    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }
  }

  else
  {
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      if (v11[6] == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --v11[6];
      }
    }
  }

LABEL_16:
  v19 = -1;
  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v8);
  return v9;
}

- (DOMRange)createRange
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67B10](&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMNodeIterator)createNodeIterator:(DOMNode *)root whatToShow:(unsigned int)whatToShow filter:(id)filter expandEntityReferences:(BOOL)expandEntityReferences
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  if (!root)
  {
    raiseTypeErrorException();
  }

  if (filter)
  {
    v8 = WTF::fastMalloc(0x18);
    *(v8 + 8) = 1;
    *v8 = &unk_1F472B4F0;
    *(v8 + 16) = filter;
    v9 = filter;
    v19 = v8;
    v10 = WTF::fastMalloc(0x20);
    WebCore::NativeNodeFilter::NativeNodeFilter();
    v11 = v19;
    v18 = 0;
    if (v11)
    {
      if (*(v11 + 2) == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --*(v11 + 2);
      }
    }

    ++v10[4];
  }

  else
  {
    v10 = 0;
  }

  WebCore::Document::createNodeIterator();
  v13 = kit(v18);
  if (v18)
  {
    if (*(v18 + 4) == 1)
    {
      v16 = MEMORY[0x1CCA644F0]();
      bmalloc::api::tzoneFree(v16, v17);
      v14 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    --*(v18 + 4);
  }

  v14 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v14[4] == 1)
  {
    (*(*v14 + 16))(v14);
  }

  else
  {
    --v14[4];
  }

LABEL_16:
  if (filter)
  {
    if (v10[4] == 1)
    {
      (*(*v10 + 16))(v10);
    }

    else
    {
      --v10[4];
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v12);
  return v13;
}

- (DOMTreeWalker)createTreeWalker:(DOMNode *)root whatToShow:(unsigned int)whatToShow filter:(id)filter expandEntityReferences:(BOOL)expandEntityReferences
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v21);
  if (!root)
  {
    raiseTypeErrorException();
  }

  if (filter)
  {
    v8 = WTF::fastMalloc(0x18);
    *(v8 + 8) = 1;
    *v8 = &unk_1F472B4F0;
    *(v8 + 16) = filter;
    v9 = filter;
    v20 = v8;
    v10 = WTF::fastMalloc(0x20);
    WebCore::NativeNodeFilter::NativeNodeFilter();
    v11 = v20;
    v19 = 0;
    if (v11)
    {
      if (*(v11 + 2) == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --*(v11 + 2);
      }
    }

    ++v10[4];
  }

  else
  {
    v10 = 0;
  }

  WebCore::Document::createTreeWalker();
  v13 = kit(v19);
  if (!v19)
  {
LABEL_12:
    v14 = v10;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (*(v19 + 2) != 1)
  {
    --*(v19 + 2);
    goto LABEL_12;
  }

  v16 = *(v19 + 5);
  *(v19 + 5) = 0;
  if (v16)
  {
    if (*(v16 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v16);
      v17 = *(v19 + 3);
      *(v19 + 3) = 0;
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    *(v16 + 7) -= 2;
  }

  v17 = *(v19 + 3);
  *(v19 + 3) = 0;
  if (!v17)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v17[4] == 1)
  {
    (*(*v17 + 16))(v17);
  }

  else
  {
    --v17[4];
  }

LABEL_28:
  v18 = *(v19 + 2);
  *(v19 + 2) = 0;
  if (!v18)
  {
    goto LABEL_31;
  }

  if (*(v18 + 7) != 2)
  {
    *(v18 + 7) -= 2;
LABEL_31:
    if (*(v19 + 2) == 1)
    {
      goto LABEL_32;
    }

LABEL_39:
    __break(0xC471u);
    JUMPOUT(0x1C7A0C678);
  }

  WebCore::Node::removedLastRef(v18);
  if (*(v19 + 2) != 1)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (*v19)
  {
    *(*v19 + 8) = 3;
    *v19 = 0;
  }

  bmalloc::api::tzoneFree(v19, v12);
  v14 = v10;
  if (v10)
  {
LABEL_13:
    if (v14[4] == 1)
    {
      (*(*v14 + 16))(v14);
    }

    else
    {
      --v14[4];
    }
  }

LABEL_16:
  if (filter)
  {
    if (v10[4] == 1)
    {
      (*(*v10 + 16))(v10);
    }

    else
    {
      --v10[4];
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v21, v12);
  return v13;
}

- (DOMXPathExpression)createExpression:(NSString *)expression resolver:(id)resolver
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v27);
  MEMORY[0x1CCA63A40](&v22, expression);
  if (resolver)
  {
    if ([resolver isMemberOfClass:objc_opt_class()])
    {
      v6 = *(resolver + 2);
      if (v6)
      {
        ++*(v6 + 8);
      }
    }

    else
    {
      v6 = WTF::fastMalloc(0x18);
      *(v6 + 8) = 1;
      *v6 = &unk_1F472B420;
      *(v6 + 16) = resolver;
    }
  }

  else
  {
    v6 = 0;
  }

  v21 = v6;
  v7 = WebCore::Document::createExpression();
  if (v25)
  {
    if (v25 == 1)
    {
      v27[80] = v23;
      v20 = v24;
      v24 = 0;
      v28 = v20;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v7);
  }

  v8 = v23;
  v23 = 0;
  v26 = v8;
  v10 = kit(v8);
  if (v8)
  {
    if (*v8 == 1)
    {
      WebCore::XPathExpression::~XPathExpression(v8);
      WTF::fastFree(v14, v15);
      v11 = v25;
      if (v25 == 255)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    --*v8;
  }

  v11 = v25;
  if (v25 == 255)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (v11)
  {
    v13 = v24;
    v24 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }
  }

  else
  {
    v12 = v23;
    v23 = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        WebCore::XPathExpression::~XPathExpression(v12);
        WTF::fastFree(v16, v17);
      }

      else
      {
        --*v12;
      }
    }
  }

LABEL_22:
  v25 = -1;
  if (v21)
  {
    if (v21[2] == 1)
    {
      (*(*v21 + 8))(v21);
      v18 = v22;
      v22 = 0;
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    --v21[2];
  }

  v18 = v22;
  v22 = 0;
  if (!v18)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v9);
  }

LABEL_30:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v27, v9);
  return v10;
}

- (id)createNSResolver:(DOMNode *)nodeResolver
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (nodeResolver)
  {
    WebCore::Document::createNSResolver(&v9, self->super.super._internal, nodeResolver->super._internal);
    v6 = kit(v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      if (*(v7 + 2) == 1)
      {
        (*(*v7 + 8))(v7);
      }

      else
      {
        --*(v7 + 2);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
  return v6;
}

- (DOMXPathResult)evaluate:(NSString *)expression contextNode:(DOMNode *)contextNode resolver:(id)resolver type:(unsigned __int16)type inResult:(DOMXPathResult *)inResult
{
  if (contextNode)
  {
    WebCore::JSMainThreadNullState::JSMainThreadNullState(v31);
    MEMORY[0x1CCA63A40](&v26, expression);
    if (resolver)
    {
      if (![resolver isMemberOfClass:objc_opt_class()])
      {
        v11 = WTF::fastMalloc(0x18);
        *(v11 + 8) = 1;
        *v11 = &unk_1F472B420;
        *(v11 + 16) = resolver;
        v25 = v11;
LABEL_10:
        v12 = WebCore::Document::evaluate();
        if (v29)
        {
          if (v29 == 1)
          {
            v31[80] = v27;
            v24 = v28;
            v28 = 0;
            v32 = v24;
            raiseDOMErrorException();
          }

          mpark::throw_bad_variant_access(v12);
        }

        v13 = v27;
        v27 = 0;
        v30 = v13;
        v10 = kit(v13);
        if (v13)
        {
          if (*v13 == 1)
          {
            v18 = MEMORY[0x1CCA64260](v13);
            WTF::fastFree(v18, v19);
            v15 = v29;
            if (v29 == 255)
            {
              goto LABEL_25;
            }

            goto LABEL_15;
          }

          --*v13;
        }

        v15 = v29;
        if (v29 == 255)
        {
          goto LABEL_25;
        }

LABEL_15:
        if (v15)
        {
          v17 = v28;
          v28 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v14);
          }
        }

        else
        {
          v16 = v27;
          v27 = 0;
          if (v16)
          {
            if (*v16 == 1)
            {
              v20 = MEMORY[0x1CCA64260]();
              WTF::fastFree(v20, v21);
            }

            else
            {
              --*v16;
            }
          }
        }

LABEL_25:
        v29 = -1;
        if (v25)
        {
          if (v25[2] == 1)
          {
            (*(*v25 + 8))(v25);
            v22 = v26;
            v26 = 0;
            if (!v22)
            {
LABEL_33:
              WebCore::JSMainThreadNullState::~JSMainThreadNullState(v31, v14);
              return v10;
            }

LABEL_31:
            if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v14);
            }

            goto LABEL_33;
          }

          --v25[2];
        }

        v22 = v26;
        v26 = 0;
        if (!v22)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v9 = *(resolver + 2);
      if (v9)
      {
        ++v9[2];
        v25 = v9;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }

    v25 = v9;
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)execCommand:(NSString *)command userInterface:(BOOL)userInterface value:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  MEMORY[0x1CCA63A40](&v14, command);
  MEMORY[0x1CCA63A40](v13, value);
  v13[8] = 0;
  WebCore::Document::execCommand();
  mpark::detail::destructor<mpark::detail::traits<WTF::String,WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>>,(mpark::detail::Trait)1>::~destructor(v13, v7);
  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  if (v17 == 255)
  {
    goto LABEL_10;
  }

  if (v17)
  {
    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v15;
LABEL_11:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v8);
  return v10 & 1;
}

- (BOOL)queryCommandEnabled:(NSString *)command
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v11, command);
  WebCore::Document::queryCommandEnabled(&v12, internal, &v11);
  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (v14 == 255)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v9 = v13;
    v13 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = v12;
LABEL_11:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v6);
  return v8 & 1;
}

- (BOOL)queryCommandIndeterm:(NSString *)command
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v11, command);
  WebCore::Document::queryCommandIndeterm(&v12, internal, &v11);
  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (v14 == 255)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v9 = v13;
    v13 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = v12;
LABEL_11:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v6);
  return v8 & 1;
}

- (BOOL)queryCommandState:(NSString *)command
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v11, command);
  WebCore::Document::queryCommandState(&v12, internal, &v11);
  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (v14 == 255)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v9 = v13;
    v13 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = v12;
LABEL_11:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v6);
  return v8 & 1;
}

- (BOOL)queryCommandSupported:(NSString *)command
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v11, command);
  WebCore::Document::queryCommandSupported(&v12, internal, &v11);
  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (v14 == 255)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v9 = v13;
    v13 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = v12;
LABEL_11:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v6);
  return v8 & 1;
}

- (NSString)queryCommandValue:(NSString *)command
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v16, command);
  WebCore::Document::queryCommandValue(&v17, internal, &v16);
  v7 = v16;
  v16 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v19;
  v9 = &stru_1F472E7E8;
  if (!v19)
  {
    v10 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v16, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }
    }

    else
    {
      v16 = &stru_1F472E7E8;
      v15 = &stru_1F472E7E8;
    }

    v9 = v16;
    v16 = 0;
    if (v9)
    {
      v11 = v9;
      v12 = v16;
      v16 = 0;
      if (v12)
      {
      }
    }

    v8 = v19;
  }

  if (v8 != 255)
  {
    if (v8)
    {
      v13 = v18;
      v18 = 0;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = v17;
      v17 = 0;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v6);
    }
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v6);
  return &v9->isa;
}

- (DOMNodeList)getElementsByName:(NSString *)elementName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WTF::AtomStringImpl::add(&v12, elementName, v4);
  v9 = v12;
  WebCore::Document::getElementsByName();
  v6 = kit(v10);
  if (!v10)
  {
LABEL_4:
    v7 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v10 + 4) != 1)
  {
    --*(v10 + 4);
    goto LABEL_4;
  }

  (*(*v10 + 8))();
  v7 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

LABEL_7:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return v6;
}

- (DOMElement)elementFromPoint:(int)x y:(int)y
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::TreeScope::elementFromPoint();
  v5 = kit(v7);
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v7);
    }

    else
    {
      *(v7 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
  return v5;
}

- (id)caretRangeFromPoint:(int)a3 y:(int)a4
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Document::caretRangeFromPoint();
  v5 = kit(v7);
  if (v7)
  {
    if (*(v7 + 2) == 1)
    {
      (*(*v7 + 8))();
    }

    else
    {
      --*(v7 + 2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
  return v5;
}

- (DOMCSSStyleDeclaration)createCSSStyleDeclaration
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Document::createCSSStyleDeclaration(&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMCSSStyleDeclaration)getComputedStyle:(DOMElement *)element pseudoElement:(NSString *)pseudoElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  if (!element)
  {
    raiseTypeErrorException();
  }

  v8 = *(self->super.super._internal + 92);
  if (!v8)
  {
    goto LABEL_9;
  }

  internal = element->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    MEMORY[0x1CCA63A40](&v13, pseudoElement);
    WebCore::LocalDOMWindow::getComputedStyle(&v14, v8, internal, &v13);
    v8 = kit(v14);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v13;
    v13 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v7);
      }
    }

LABEL_9:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v7);
    return v8;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (DOMCSSRuleList)getMatchedCSSRules:(DOMElement *)element pseudoElement:(NSString *)pseudoElement authorOnly:(BOOL)authorOnly
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  v9 = *(self->super.super._internal + 92);
  if (!v9)
  {
    v10 = 0;
LABEL_10:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v8);
    return v10;
  }

  if (!element || (element = element->super.super._internal, (element[1].super.super.super._private & 8) != 0))
  {
    MEMORY[0x1CCA63A40](&v14, pseudoElement);
    WebCore::LocalDOMWindow::getMatchedCSSRules(v9, element, &v14);
    v10 = kit(v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v14;
    v14 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
      }
    }

    goto LABEL_10;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (DOMNodeList)getElementsByClassName:(NSString *)classNames
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WTF::AtomStringImpl::add(&v12, classNames, v4);
  v9 = v12;
  WebCore::ContainerNode::getElementsByClassName();
  v6 = kit(v10);
  if (!v10)
  {
LABEL_4:
    v7 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v10 + 4) != 1)
  {
    --*(v10 + 4);
    goto LABEL_4;
  }

  (*(*v10 + 8))();
  v7 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

LABEL_7:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return v6;
}

- (BOOL)hasFocus
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::Document::hasFocus(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)webkitCancelFullScreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::Document::protectedFullscreen(&v8, self->super.super._internal);
  WebCore::DocumentFullscreen::fullyExitFullscreen(v8);
  v4 = v8;
  v8 = 0;
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(*(v4 + 1) + 8);
  if (v5)
  {
    if (*(v5 + 7) != 2)
    {
      *(v5 + 7) -= 2;
LABEL_5:
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
      return;
    }

    WebCore::Node::removedLastRef(v5);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)webkitExitFullscreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::DocumentFullscreen::webkitExitFullscreen(self->super.super._internal, v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (DOMElement)getElementById:(NSString *)elementId
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WTF::AtomStringImpl::add(&v12, elementId, v4);
  v9 = v12;
  WebCore::TreeScope::getElementById();
  v6 = kit(v10);
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      v7 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    *(v10 + 7) -= 2;
  }

  v7 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

LABEL_9:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return v6;
}

- (DOMElement)querySelector:(NSString *)selectors
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v13, selectors);
  Selector = WebCore::ContainerNode::querySelector(&v14, internal, &v13);
  if (v16)
  {
    if (v16 == 1)
    {
      v17[80] = v14;
      v12 = v15;
      v15 = 0;
      v18 = v12;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(Selector);
  }

  v8 = kit(v14);
  if (v16)
  {
    if (v16 != 255)
    {
      v9 = v15;
      v15 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }
      }
    }
  }

  v16 = -1;
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v7);
  return v8;
}

- (DOMNodeList)querySelectorAll:(NSString *)selectors
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v16, selectors);
  SelectorAll = WebCore::ContainerNode::querySelectorAll(&v17, internal, &v16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20[80] = v17;
      v15 = v18;
      v18 = 0;
      v21 = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(SelectorAll);
  }

  v7 = v17;
  v17 = 0;
  v9 = kit(v7);
  if (!v7)
  {
LABEL_5:
    v10 = v19;
    if (v19 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v7 + 4) != 1)
  {
    --*(v7 + 4);
    goto LABEL_5;
  }

  (*(*v7 + 8))(v7);
  v10 = v19;
  if (v19 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v10)
  {
    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }
  }

  else
  {
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      if (*(v11 + 4) == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --*(v11 + 4);
      }
    }
  }

LABEL_16:
  v19 = -1;
  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v8);
  return v9;
}

- (WebFrame)webFrame
{
  v2 = *(self->super.super._internal + 69);
  if (v2 && (v3 = *(v2 + 8)) != 0 && (v4 = *(*(v3 + 208) + 16), (((*v4)[64]._private)(v4, a2) & 1) == 0))
  {
    return v4[3];
  }

  else
  {
    return 0;
  }
}

- (NSURL)URLWithAttributeString:(NSString *)string
{
  MEMORY[0x1CCA63A40](&v10, string);
  WebCore::Document::completeURL();
  WTF::URL::createCFURL(&v12, &v11);
  v4 = v12;
  v12 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v12;
    v12 = 0;
    if (v6)
    {
    }
  }

  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v3);
  }

  return v4;
}

- (id)_documentRange
{
  v3 = [(DOMDocument *)self createRange];
  v4 = [(DOMDocument *)self documentElement];
  if (v4)
  {
    [(DOMRange *)v3 selectNode:v4];
  }

  return v3;
}

@end