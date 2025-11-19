@interface DOMImplementation
- (DOMCSSStyleSheet)createCSSStyleSheet:(NSString *)title media:(NSString *)media;
- (DOMDocument)createDocument:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName doctype:(DOMDocumentType *)doctype;
- (DOMDocumentType)createDocumentType:(NSString *)qualifiedName publicId:(NSString *)publicId systemId:(NSString *)systemId;
- (DOMHTMLDocument)createHTMLDocument:(NSString *)title;
- (void)dealloc;
@end

@implementation DOMImplementation

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      v5 = *(*(internal + 1) + 8);
      if (!v5)
      {
        __break(0xC471u);
        return;
      }

      if (*(v5 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v5);
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }

    v6.receiver = self;
    v6.super_class = DOMImplementation;
    [(DOMObject *)&v6 dealloc];
  }
}

- (DOMDocumentType)createDocumentType:(NSString *)qualifiedName publicId:(NSString *)publicId systemId:(NSString *)systemId
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v27);
  WTF::AtomStringImpl::add(v28, qualifiedName, v8);
  v23 = v28[0];
  MEMORY[0x1CCA63A40](&v22, publicId);
  MEMORY[0x1CCA63A40](&v21, systemId);
  DocumentType = WebCore::DOMImplementation::createDocumentType();
  if (v26)
  {
    if (v26 == 1)
    {
      LOBYTE(v28[0]) = v24;
      v20 = v25;
      v25 = 0;
      v28[1] = v20;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(DocumentType);
  }

  v10 = v24;
  v24 = 0;
  v12 = kit(v10);
  if (!v10)
  {
LABEL_5:
    v13 = v26;
    if (v26 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v10);
  v13 = v26;
  if (v26 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v13)
  {
    v15 = v25;
    v25 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }
  }

  else
  {
    v14 = v24;
    v24 = 0;
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
  }

LABEL_16:
  v26 = -1;
  v16 = v21;
  v21 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v11);
  }

  v17 = v22;
  v22 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v11);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v27, v11);
  return v12;
}

- (DOMDocument)createDocument:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName doctype:(DOMDocumentType *)doctype
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  WTF::AtomStringImpl::add(v19, namespaceURI, v7);
  v14 = v19[0];
  WTF::AtomStringImpl::add(v19, qualifiedName, v8);
  v13 = v19[0];
  Document = WebCore::DOMImplementation::createDocument();
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v19[0]) = v15;
      v19[1] = v16;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(Document);
  }

  v11 = kit(v15);
  if (v15)
  {
    if (*(v15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v15);
    }

    else
    {
      *(v15 + 7) -= 2;
    }
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v10);
  return v11;
}

- (DOMCSSStyleSheet)createCSSStyleSheet:(NSString *)title media:(NSString *)media
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  MEMORY[0x1CCA63A40](&v14, title);
  MEMORY[0x1CCA63A40](&v13, media);
  WebCore::DOMImplementation::createCSSStyleSheet(&v15, &v14, &v13, v6);
  v8 = kit(v15);
  v9 = v15;
  v15 = 0;
  if (!v9)
  {
LABEL_4:
    v10 = v13;
    v13 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v9 + 2) != 1)
  {
    --*(v9 + 2);
    goto LABEL_4;
  }

  (*(*v9 + 8))(v9);
  v10 = v13;
  v13 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

LABEL_7:
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v7);
  return v8;
}

- (DOMHTMLDocument)createHTMLDocument:(NSString *)title
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  MEMORY[0x1CCA63A40](&v9, title);
  WebCore::DOMImplementation::createHTMLDocument();
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

@end