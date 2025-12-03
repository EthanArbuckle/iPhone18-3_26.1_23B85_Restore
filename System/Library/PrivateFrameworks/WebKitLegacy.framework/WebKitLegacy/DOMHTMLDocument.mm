@interface DOMHTMLDocument
- (DOMDocumentFragment)createDocumentFragmentWithMarkupString:(NSString *)markupString baseURL:(NSURL *)baseURL;
- (DOMDocumentFragment)createDocumentFragmentWithText:(NSString *)text;
- (DOMHTMLCollection)embeds;
- (DOMHTMLCollection)plugins;
- (DOMHTMLCollection)scripts;
- (NSString)alinkColor;
- (NSString)bgColor;
- (NSString)compatMode;
- (NSString)designMode;
- (NSString)dir;
- (NSString)fgColor;
- (NSString)linkColor;
- (NSString)vlinkColor;
- (id)_createDocumentFragmentWithMarkupString:(id)string baseURLString:(id)lString;
- (void)close;
- (void)open;
- (void)setAlinkColor:(NSString *)alinkColor;
- (void)setBgColor:(NSString *)bgColor;
- (void)setDesignMode:(NSString *)designMode;
- (void)setDir:(NSString *)dir;
- (void)setFgColor:(NSString *)fgColor;
- (void)setLinkColor:(NSString *)linkColor;
- (void)setVlinkColor:(NSString *)vlinkColor;
- (void)write:(NSString *)text;
- (void)writeln:(NSString *)text;
@end

@implementation DOMHTMLDocument

- (DOMDocumentFragment)createDocumentFragmentWithMarkupString:(NSString *)markupString baseURL:(NSURL *)baseURL
{
  MEMORY[0x1CCA63A40](&v12, markupString);
  MEMORY[0x1CCA63A40](&v11, [(NSURL *)baseURL absoluteString]);
  WebCore::createFragmentFromMarkup();
  v6 = kit(v13);
  v7 = v13;
  v13 = 0;
  if (!v7)
  {
LABEL_4:
    v8 = v11;
    v11 = 0;
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    goto LABEL_4;
  }

  WebCore::Node::removedLastRef(v7);
  v8 = v11;
  v11 = 0;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

LABEL_7:
  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  return v6;
}

- (DOMDocumentFragment)createDocumentFragmentWithText:(NSString *)text
{
  WebCore::makeRangeSelectingNodeContents(v13, self->super.super.super._internal, a2);
  MEMORY[0x1CCA63A40](&v12, text);
  WebCore::createFragmentFromText(&v15, v13, &v12, v4);
  v6 = kit(v15);
  v7 = v15;
  v15 = 0;
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v7);
      v8 = v12;
      v12 = 0;
      if (!v8)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    *(v7 + 7) -= 2;
  }

  v8 = v12;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

LABEL_7:
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      v10 = v13[0];
      v13[0] = 0;
      if (!v10)
      {
        return v6;
      }

      goto LABEL_11;
    }

    *(v9 + 7) -= 2;
  }

  v10 = v13[0];
  v13[0] = 0;
  if (!v10)
  {
    return v6;
  }

LABEL_11:
  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
    return v6;
  }

  WebCore::Node::removedLastRef(v10);
  return v6;
}

- (id)_createDocumentFragmentWithMarkupString:(id)string baseURLString:(id)lString
{
  MEMORY[0x1CCA63A40](&v12, lString);
  WebCore::Document::completeURL();
  WTF::URL::createCFURL(&v14, &v13);
  v7 = v13;
  v13 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v12;
  v12 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  result = [(DOMHTMLDocument *)self createDocumentFragmentWithMarkupString:string baseURL:v14];
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    v11 = result;

    return v11;
  }

  return result;
}

- (DOMHTMLCollection)embeds
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67E90](&v7, self->super.super.super._internal);
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

- (DOMHTMLCollection)plugins
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67E90](&v7, self->super.super.super._internal);
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

- (DOMHTMLCollection)scripts
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  MEMORY[0x1CCA67EE0](&v7, self->super.super.super._internal);
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

- (NSString)dir
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::dir(self->super.super.super._internal);
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

- (void)setDir:(NSString *)dir
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, dir, v4);
  v6 = v8;
  WebCore::Document::setDir();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)designMode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::designMode(&v11, self->super.super.super._internal);
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

- (void)setDesignMode:(NSString *)designMode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super._internal;
  MEMORY[0x1CCA63A40](&v8, designMode);
  WebCore::Document::setDesignMode(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (NSString)compatMode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Document::compatMode(&v11, self->super.super.super._internal);
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

- (NSString)bgColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::bgColor(self->super.super.super._internal);
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

- (void)setBgColor:(NSString *)bgColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, bgColor, v4);
  v6 = v8;
  WebCore::Document::setBgColor();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)fgColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::fgColor(self->super.super.super._internal);
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

- (void)setFgColor:(NSString *)fgColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, fgColor, v4);
  v6 = v8;
  WebCore::Document::setFgColor();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)alinkColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::alinkColor(self->super.super.super._internal);
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

- (void)setAlinkColor:(NSString *)alinkColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, alinkColor, v4);
  v6 = v8;
  WebCore::Document::setAlinkColor();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)linkColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::linkColorForBindings(self->super.super.super._internal);
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

- (void)setLinkColor:(NSString *)linkColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, linkColor, v4);
  v6 = v8;
  WebCore::Document::setLinkColorForBindings();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)vlinkColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Document::vlinkColor(self->super.super.super._internal);
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

- (void)setVlinkColor:(NSString *)vlinkColor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, vlinkColor, v4);
  v6 = v8;
  WebCore::Document::setVlinkColor();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (void)open
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Document::open(&v5, self->super.super.super._internal, 0);
  if (v7 == 1)
  {
    v4 = v6;
    v6 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
}

- (void)close
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Document::close(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (void)write:(NSString *)text
{
  v16[1] = *MEMORY[0x1E69E9840];
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  MEMORY[0x1CCA63A40](v16, text);
  v4 = WTF::fastMalloc(0x10);
  *v4 = 1;
  v5 = v16[0];
  if (v16[0])
  {
    atomic_fetch_add_explicit(v16[0], 2u, memory_order_relaxed);
  }

  *(v4 + 8) = v5;
  v12 = v4;
  WebCore::Document::write();
  if (v14 == 1 && v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v6);
  }

  if (v12)
  {
    v7 = *v12;
    if (v7)
    {
      v8 = 8 * v7;
      v9 = (v12 + 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v6);
        }

        ++v9;
        v8 -= 8;
      }

      while (v8);
    }

    WTF::fastFree(v12, v6);
  }

  v11 = v16[0];
  v16[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v6);
}

- (void)writeln:(NSString *)text
{
  v16[1] = *MEMORY[0x1E69E9840];
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  MEMORY[0x1CCA63A40](v16, text);
  v4 = WTF::fastMalloc(0x10);
  *v4 = 1;
  v5 = v16[0];
  if (v16[0])
  {
    atomic_fetch_add_explicit(v16[0], 2u, memory_order_relaxed);
  }

  *(v4 + 8) = v5;
  v12 = v4;
  WebCore::Document::writeln();
  if (v14 == 1 && v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v6);
  }

  if (v12)
  {
    v7 = *v12;
    if (v7)
    {
      v8 = 8 * v7;
      v9 = (v12 + 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v6);
        }

        ++v9;
        v8 -= 8;
      }

      while (v8);
    }

    WTF::fastFree(v12, v6);
  }

  v11 = v16[0];
  v16[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v6);
}

@end