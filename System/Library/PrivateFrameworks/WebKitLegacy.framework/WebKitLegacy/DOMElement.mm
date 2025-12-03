@interface DOMElement
+ (id)_DOMElementFromJSContext:(OpaqueJSContext *)context value:(OpaqueJSValue *)value;
- (BOOL)hasAttribute:(NSString *)name;
- (BOOL)hasAttributeNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (BOOL)matches:(id)matches;
- (BOOL)webkitMatchesSelector:(id)selector;
- (CGRect)boundsInRootViewSpace;
- (DOMAttr)getAttributeNode:(NSString *)name;
- (DOMAttr)getAttributeNodeNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (DOMAttr)removeAttributeNode:(DOMAttr *)oldAttr;
- (DOMAttr)setAttributeNode:(DOMAttr *)newAttr;
- (DOMAttr)setAttributeNodeNS:(DOMAttr *)newAttr;
- (DOMCSSStyleDeclaration)style;
- (DOMElement)firstElementChild;
- (DOMElement)lastElementChild;
- (DOMElement)nextElementSibling;
- (DOMElement)offsetParent;
- (DOMElement)previousElementSibling;
- (DOMElement)querySelector:(NSString *)selectors;
- (DOMNodeList)getElementsByClassName:(NSString *)name;
- (DOMNodeList)getElementsByTagName:(NSString *)name;
- (DOMNodeList)getElementsByTagNameNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (DOMNodeList)querySelectorAll:(NSString *)selectors;
- (NSString)className;
- (NSString)getAttribute:(NSString *)name;
- (NSString)getAttributeNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (NSString)innerHTML;
- (NSString)innerText;
- (NSString)outerHTML;
- (NSString)tagName;
- (__CTFont)_font;
- (id)_getURLAttribute:(id)attribute;
- (id)children;
- (id)classList;
- (id)closest:(id)closest;
- (id)uiactions;
- (int)clientHeight;
- (int)clientLeft;
- (int)clientTop;
- (int)clientWidth;
- (int)offsetHeight;
- (int)offsetLeft;
- (int)offsetTop;
- (int)offsetWidth;
- (int)scrollHeight;
- (int)scrollLeft;
- (int)scrollTop;
- (int)scrollWidth;
- (unsigned)childElementCount;
- (void)blur;
- (void)focus;
- (void)remove;
- (void)removeAttribute:(NSString *)name;
- (void)removeAttributeNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (void)scrollIntoView:(BOOL)alignWithTop;
- (void)scrollIntoViewIfNeeded:(BOOL)centerIfNeeded;
- (void)setAttribute:(NSString *)name value:(NSString *)value;
- (void)setAttributeNS:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName value:(NSString *)value;
- (void)setClassName:(NSString *)className;
- (void)setInnerHTML:(NSString *)innerHTML;
- (void)setOuterHTML:(NSString *)outerHTML;
- (void)setScrollLeft:(int)scrollLeft;
- (void)setScrollTop:(int)scrollTop;
- (void)setUiactions:(id)uiactions;
- (void)webkitRequestFullScreen:(unsigned __int16)flags;
- (void)webkitRequestFullscreen;
@end

@implementation DOMElement

- (__CTFont)_font
{
  v2 = *(core(self) + 72);
  if (!v2)
  {
    return 0;
  }

  if ((*(v2 + 45) & 2) != 0)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79FE898);
  }

  v3 = *(*(v2 + 112) + 32);
  v4 = *(v3 + 224);
  if (v4)
  {
    ++*v4;
  }

  v5 = *(v3 + 232);
  if (v5)
  {
    ++v5[4];
  }

  v6 = *(v4 + 104);
  if (v6 && *(v6 + 8))
  {
    goto LABEL_49;
  }

  v7 = WebCore::FontCascadeFonts::realizeFallbackRangesAt();
  WebCore::FontRanges::glyphDataForCharacter();
  if (!v31 || (v9 = *(v31 + 1)) == 0)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    v10 = WTF::fastCompactMalloc(0x10);
    *v10 = 1;
    *(v10 + 8) = v9;
    v11 = *(v9 + 8);
    *(v9 + 8) = v10;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::fastFree(v11, v8);
        v10 = *(v9 + 8);
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      else
      {
        --*v11;
      }
    }
  }

  ++*v10;
LABEL_19:
  v13 = *(v4 + 104);
  *(v4 + 104) = v10;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::fastFree(v13, v8);
      v14 = v31;
      if (!v31)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    --*v13;
  }

  v14 = v31;
  if (!v31)
  {
LABEL_27:
    v15 = *(v4 + 104);
    if (!v15)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

LABEL_25:
  if (*v14 != 1)
  {
    --*v14;
    goto LABEL_27;
  }

  WTF::fastFree(v14, v8);
  v15 = *(v4 + 104);
  if (!v15)
  {
    goto LABEL_36;
  }

LABEL_30:
  v16 = *(v15 + 8);
  if (v16)
  {
    if ((*(v16 + 256) & 2) != 0 && *(WebCore::FontCascadeFonts::realizeFallbackRangesAt() + 12))
    {
      v17 = 2;
      do
      {
        WebCore::FontRanges::glyphDataForCharacter();
        ++v17;
      }

      while (*(WebCore::FontCascadeFonts::realizeFallbackRangesAt() + 12));
    }

    goto LABEL_49;
  }

LABEL_36:
  if (!*(v7 + 12))
  {
    goto LABEL_64;
  }

  v18 = WebCore::FontRanges::Range::font();
  v20 = v18;
  if (!v18)
  {
    v21 = 0;
    goto LABEL_45;
  }

  v21 = *(v18 + 8);
  if (!v21)
  {
    v21 = WTF::fastCompactMalloc(0x10);
    *v21 = 1;
    *(v21 + 8) = v20;
    v22 = *(v20 + 8);
    *(v20 + 8) = v21;
    if (v22)
    {
      if (*v22 == 1)
      {
        WTF::fastFree(v22, v19);
        v21 = *(v20 + 8);
        if (!v21)
        {
          goto LABEL_45;
        }
      }

      else
      {
        --*v22;
      }
    }
  }

  ++*v21;
LABEL_45:
  v23 = *(v4 + 104);
  *(v4 + 104) = v21;
  if (v23)
  {
    if (*v23 == 1)
    {
      WTF::fastFree(v23, v19);
    }

    else
    {
      --*v23;
    }

LABEL_49:
    v21 = *(v4 + 104);
  }

  if (!v21 || (v24 = *(v21 + 8)) == 0)
  {
LABEL_64:
    __break(0xC471u);
    JUMPOUT(0x1C79FE878);
  }

  ++*v24;
  if (v5)
  {
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
      v25 = *v4 - 1;
      if (*v4 != 1)
      {
        goto LABEL_56;
      }

      goto LABEL_58;
    }

    --v5[4];
  }

  v25 = *v4 - 1;
  if (*v4 != 1)
  {
LABEL_56:
    *v4 = v25;
    goto LABEL_59;
  }

LABEL_58:
  v26 = MEMORY[0x1CCA65700](v4);
  WTF::fastFree(v26, v27);
LABEL_59:
  WebCore::FontCascadeDescription::resolveFontSizeAdjustFromFontIfNeeded();
  result = *(v24 + 88);
  if (*v24 == 1)
  {
    v28 = *(v24 + 88);
    v29 = MEMORY[0x1CCA66FC0](v24);
    WTF::fastFree(v29, v30);
    return v28;
  }

  else
  {
    --*v24;
  }

  return result;
}

- (id)_getURLAttribute:(id)attribute
{
  core(self);
  WTF::AtomStringImpl::add(&v12, attribute, v4);
  WebCore::Element::getAttribute();
  WebCore::Document::completeURL();
  WTF::URL::createCFURL(&v14, &v13);
  v6 = v14;
  v14 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v14;
    v14 = 0;
    if (v8)
    {
    }
  }

  v9 = v13;
  v13 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = v12;
  v12 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  return v6;
}

- (NSString)tagName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    (*(*internal + 104))(&v12);
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
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (DOMCSSStyleDeclaration)style
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  v5 = *(internal + 16);
  if ((v5 & 8) != 0)
  {
    if ((v5 & 0x70) != 0)
    {
      v6 = WebCore::StyledElement::cssomStyle(internal);
      v7 = kit(v6);
    }

    else
    {
      v7 = 0;
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v3);
    return v7;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)offsetLeft
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::offsetLeftForBindings(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)offsetTop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::offsetTopForBindings(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)offsetWidth
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::offsetWidth(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)offsetHeight
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::offsetHeight(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)clientLeft
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::clientLeft(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)clientTop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::clientTop(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)clientWidth
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::clientWidth(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)clientHeight
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::clientHeight(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)scrollLeft
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = (*(*internal + 392))(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setScrollLeft:(int)scrollLeft
{
  v3 = *&scrollLeft;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    (*(*internal + 408))(internal, v3);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (int)scrollTop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = (*(*internal + 400))(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setScrollTop:(int)scrollTop
{
  v3 = *&scrollTop;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    (*(*internal + 416))(internal, v3);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (int)scrollWidth
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = (*(*internal + 424))(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)scrollHeight
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = (*(*internal + 432))(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (DOMElement)offsetParent
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::offsetParentForBindings(&v8, internal);
    v5 = kit(v8);
    v6 = v8;
    v8 = 0;
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
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (NSString)innerHTML
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::innerHTML(&v12, internal);
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
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setInnerHTML:(NSString *)innerHTML
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    MEMORY[0x1CCA63A40](v8, innerHTML);
    v8[8] = 1;
    WebCore::Element::setInnerHTML();
    if (v10 == 1)
    {
      v11[80] = v8[16];
      v7 = v9;
      v9 = 0;
      v12 = v7;
      raiseDOMErrorException();
    }

    mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(v8, v5);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (NSString)outerHTML
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::outerHTML(&v12, internal);
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
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setOuterHTML:(NSString *)outerHTML
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    MEMORY[0x1CCA63A40](v8, outerHTML);
    v8[8] = 1;
    WebCore::Element::setOuterHTML();
    if (v10 == 1)
    {
      v11[80] = v8[16];
      v7 = v9;
      v9 = 0;
      v12 = v7;
      raiseDOMErrorException();
    }

    mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(v8, v5);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (NSString)className
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    v3 = *WebCore::Element::getAttribute();
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

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setClassName:(NSString *)className
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v9, className, v5);
    v7 = v9;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)classList
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Element::classList(internal);
    v5 = kit(v4);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (NSString)innerText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::innerText(&v12, internal);
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
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (id)uiactions
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    v3 = *WebCore::Element::getAttribute();
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

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setUiactions:(id)uiactions
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v9, uiactions, v5);
    v7 = v9;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (DOMElement)previousElementSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::Node::previousElementSibling(internal);
    v5 = kit(v4);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (DOMElement)nextElementSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    ElementSibling = WebCore::Node::nextElementSibling(internal);
    v5 = kit(ElementSibling);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (id)children
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::ContainerNode::children(&v8, internal);
    v5 = kit(v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      if (*(v6 + 4) == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --*(v6 + 4);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (DOMElement)firstElementChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    ElementChild = WebCore::ContainerNode::firstElementChild(internal);
    v5 = kit(ElementChild);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (DOMElement)lastElementChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    ElementChild = WebCore::ContainerNode::lastElementChild(internal);
    v5 = kit(ElementChild);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (unsigned)childElementCount
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v4 = WebCore::ContainerNode::childElementCount(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (CGRect)boundsInRootViewSpace
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v8 = WebCore::Element::boundsInRootViewSpace(internal);
    v10 = v9;
    v11 = SHIDWORD(v8);
    v12 = v8;
    v13 = SHIDWORD(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v9);
    v3 = v12;
    v4 = v11;
    v5 = v10;
    v6 = v13;
  }

  else
  {
    __break(0xC471u);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (NSString)getAttribute:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v16, name, v5);
    v13 = v16;
    v6 = *WebCore::Element::getAttribute();
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v14, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v14 = &stru_1F472E7E8;
      v12 = &stru_1F472E7E8;
    }

    v8 = v14;
    v14 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v14;
      v14 = 0;
      if (v10)
      {
      }
    }

    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v7);
    return v8;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setAttribute:(NSString *)name value:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(v16, name, v7);
    v11 = v16[0];
    WTF::AtomStringImpl::add(v16, value, v8);
    v10 = v16[0];
    WebCore::Element::setAttribute();
    if (v14 == 1)
    {
      LOBYTE(v16[0]) = v12;
      v16[1] = v13;
      raiseDOMErrorException();
    }

    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v9);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)removeAttribute:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v9, name, v5);
    v7 = v9;
    WebCore::Element::removeAttribute();
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (DOMAttr)getAttributeNode:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v13, name, v5);
    v10 = v13;
    WebCore::Element::getAttributeNode();
    v7 = kit(v11);
    if (v11)
    {
      if (*(v11 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v11);
        v8 = v10;
        if (!v10)
        {
LABEL_10:
          WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v6);
          return v7;
        }

LABEL_8:
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }

        goto LABEL_10;
      }

      *(v11 + 7) -= 2;
    }

    v8 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (DOMAttr)setAttributeNode:(DOMAttr *)newAttr
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  if (!newAttr)
  {
    raiseTypeErrorException();
  }

  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v6 = WebCore::Element::setAttributeNode(&v15, internal, newAttr->super.super._internal);
    if (v17)
    {
      if (v17 == 1)
      {
        v18[80] = v15;
        v14 = v16;
        v16 = 0;
        v19 = v14;
        raiseDOMErrorException();
      }

      mpark::throw_bad_variant_access(v6);
    }

    v7 = v15;
    v15 = 0;
    v9 = kit(v7);
    if (v7)
    {
      if (*(v7 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v7);
        v10 = v17;
        if (v17 == 255)
        {
LABEL_18:
          WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v8);
          return v9;
        }

LABEL_10:
        if (v10)
        {
          v12 = v16;
          v16 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v8);
          }
        }

        else
        {
          v11 = v15;
          v15 = 0;
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

        goto LABEL_18;
      }

      *(v7 + 7) -= 2;
    }

    v10 = v17;
    if (v17 == 255)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (DOMAttr)removeAttributeNode:(DOMAttr *)oldAttr
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  if (!oldAttr)
  {
    raiseTypeErrorException();
  }

  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v6 = WebCore::Element::removeAttributeNode(&v15, internal, oldAttr->super.super._internal);
    if (v17)
    {
      if (v17 == 1)
      {
        v18[80] = v15;
        v14 = v16;
        v16 = 0;
        v19 = v14;
        raiseDOMErrorException();
      }

      mpark::throw_bad_variant_access(v6);
    }

    v7 = v15;
    v15 = 0;
    v9 = kit(v7);
    if (v7)
    {
      if (*(v7 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v7);
        v10 = v17;
        if (v17 != 255)
        {
LABEL_8:
          if (v10)
          {
            v12 = v16;
            v16 = 0;
            if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v8);
            }
          }

          else
          {
            v11 = v15;
            v15 = 0;
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
        }

LABEL_18:
        WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v8);
        return v9;
      }

      *(v7 + 7) -= 2;
    }

    v10 = v17;
    if (v17 != 255)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (DOMNodeList)getElementsByTagName:(NSString *)name
{
  v3 = name;
  if (!name)
  {
    return v3;
  }

  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v12, v3, v5);
    v9 = v12;
    WebCore::ContainerNode::getElementsByTagName();
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }

    v3 = kit(v10);
    if (v10)
    {
      if (*(v10 + 4) == 1)
      {
        (*(*v10 + 8))();
      }

      else
      {
        --*(v10 + 4);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v7);
    return v3;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (NSString)getAttributeNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v20, namespaceURI, v7);
    v17 = v20;
    WTF::AtomStringImpl::add(&v20, localName, v8);
    v16 = v20;
    v9 = *WebCore::Element::getAttributeNS();
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v18, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v18 = &stru_1F472E7E8;
      v15 = &stru_1F472E7E8;
    }

    v11 = v18;
    v18 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v18;
      v18 = 0;
      if (v13)
      {
      }
    }

    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v10);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v10);
    return v11;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setAttributeNS:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName value:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(v20, namespaceURI, v9);
    v15 = v20[0];
    WTF::AtomStringImpl::add(v20, qualifiedName, v10);
    v14 = v20[0];
    WTF::AtomStringImpl::add(v20, value, v11);
    v13 = v20[0];
    WebCore::Element::setAttributeNS();
    if (v18 == 1)
    {
      LOBYTE(v20[0]) = v16;
      v20[1] = v17;
      raiseDOMErrorException();
    }

    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v12);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)removeAttributeNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v13, namespaceURI, v7);
    v11 = v13;
    WTF::AtomStringImpl::add(&v13, localName, v8);
    v10 = v13;
    WebCore::Element::removeAttributeNS();
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v9);
  }

  else
  {
    __break(0xC471u);
  }
}

- (DOMNodeList)getElementsByTagNameNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  v4 = localName;
  if (!localName)
  {
    return v4;
  }

  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v16, namespaceURI, v7);
    v13 = v16;
    WTF::AtomStringImpl::add(&v16, v4, v8);
    v12 = v16;
    WebCore::ContainerNode::getElementsByTagNameNS();
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    v4 = kit(v14);
    if (v14)
    {
      if (*(v14 + 4) == 1)
      {
        (*(*v14 + 8))();
      }

      else
      {
        --*(v14 + 4);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v10);
    return v4;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (DOMAttr)getAttributeNodeNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  if ((*(self->super.super._internal + 16) & 8) == 0)
  {
    result = 96;
    __break(0xC471u);
    return result;
  }

  WTF::AtomStringImpl::add(&v17, namespaceURI, v7);
  v14 = v17;
  WTF::AtomStringImpl::add(&v17, localName, v8);
  v13 = v17;
  WebCore::Element::getAttributeNodeNS();
  v10 = kit(v15);
  if (!v15)
  {
LABEL_5:
    v11 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    goto LABEL_10;
  }

  if (*(v15 + 7) != 2)
  {
    *(v15 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v15);
  v11 = v13;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v9);
  return v10;
}

- (DOMAttr)setAttributeNodeNS:(DOMAttr *)newAttr
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  if (!newAttr)
  {
    raiseTypeErrorException();
  }

  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v6 = WebCore::Element::setAttributeNodeNS(&v15, internal, newAttr->super.super._internal);
    if (v17)
    {
      if (v17 == 1)
      {
        v18[80] = v15;
        v14 = v16;
        v16 = 0;
        v19 = v14;
        raiseDOMErrorException();
      }

      mpark::throw_bad_variant_access(v6);
    }

    v7 = v15;
    v15 = 0;
    v9 = kit(v7);
    if (v7)
    {
      if (*(v7 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v7);
        v10 = v17;
        if (v17 == 255)
        {
LABEL_18:
          WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v8);
          return v9;
        }

LABEL_10:
        if (v10)
        {
          v12 = v16;
          v16 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v8);
          }
        }

        else
        {
          v11 = v15;
          v15 = 0;
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

        goto LABEL_18;
      }

      *(v7 + 7) -= 2;
    }

    v10 = v17;
    if (v17 == 255)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (BOOL)hasAttribute:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v11, name, v5);
    v9 = v11;
    hasAttribute = WebCore::Element::hasAttribute();
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v6);
    return hasAttribute;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (BOOL)hasAttributeNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v15, namespaceURI, v7);
    v13 = v15;
    WTF::AtomStringImpl::add(&v15, localName, v8);
    v12 = v15;
    hasAttributeNS = WebCore::Element::hasAttributeNS();
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v9);
    return hasAttributeNS;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)focus
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    v5 = 0;
    (*(*internal + 656))(internal, &v5);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)blur
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    (*(*internal + 688))(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)scrollIntoView:(BOOL)alignWithTop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::scrollIntoView(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)scrollIntoViewIfNeeded:(BOOL)centerIfNeeded
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::scrollIntoViewIfNeeded(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (DOMNodeList)getElementsByClassName:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  if ((*(self->super.super._internal + 16) & 8) != 0)
  {
    WTF::AtomStringImpl::add(&v13, name, v5);
    v10 = v13;
    WebCore::ContainerNode::getElementsByClassName();
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v6);
    }

    v8 = kit(v11);
    if (v11)
    {
      if (*(v11 + 4) == 1)
      {
        (*(*v11 + 8))();
      }

      else
      {
        --*(v11 + 4);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v7);
    return v8;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (BOOL)matches:(id)matches
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    MEMORY[0x1CCA63A40](&v12, matches);
    v6 = WebCore::Element::matches(&v13, internal, &v12);
    if (v15)
    {
      if (v15 == 1)
      {
        v16[80] = v13;
        v11 = v14;
        v14 = 0;
        v17 = v11;
        raiseDOMErrorException();
      }

      mpark::throw_bad_variant_access(v6);
    }

    v8 = v13;
    v15 = -1;
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v7);
    return v8;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (id)closest:(id)closest
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    MEMORY[0x1CCA63A40](&v13, closest);
    v6 = WebCore::Element::closest(&v14, internal, &v13);
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

      mpark::throw_bad_variant_access(v6);
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
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v7);
    return v8;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (BOOL)webkitMatchesSelector:(id)selector
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    MEMORY[0x1CCA63A40](&v12, selector);
    v6 = WebCore::Element::matches(&v13, internal, &v12);
    if (v15)
    {
      if (v15 == 1)
      {
        v16[80] = v13;
        v11 = v14;
        v14 = 0;
        v17 = v11;
        raiseDOMErrorException();
      }

      mpark::throw_bad_variant_access(v6);
    }

    v8 = v13;
    v15 = -1;
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v7);
    return v8;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)webkitRequestFullScreen:(unsigned __int16)flags
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::webkitRequestFullscreen(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)webkitRequestFullscreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Element::webkitRequestFullscreen(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)remove
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
    WebCore::Node::remove(&v6, internal);
    if (v8 == 1)
    {
      v9[80] = v6;
      v5 = v7;
      v7 = 0;
      v10 = v5;
      raiseDOMErrorException();
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

- (DOMElement)querySelector:(NSString *)selectors
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) != 0)
  {
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
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v7);
    return v8;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (DOMNodeList)querySelectorAll:(NSString *)selectors
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  internal = self->super.super._internal;
  if ((*(internal + 16) & 8) == 0)
  {
    result = 96;
    __break(0xC471u);
    return result;
  }

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
LABEL_6:
    v10 = v19;
    if (v19 != 255)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (*(v7 + 4) != 1)
  {
    --*(v7 + 4);
    goto LABEL_6;
  }

  (*(*v7 + 8))(v7);
  v10 = v19;
  if (v19 != 255)
  {
LABEL_7:
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
  }

LABEL_17:
  v19 = -1;
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v8);
  return v9;
}

+ (id)_DOMElementFromJSContext:(OpaqueJSContext *)context value:(OpaqueJSValue *)value
{
  result = 0;
  if (context)
  {
    if (value)
    {
      JSC::JSLockHolder::JSLockHolder();
      v5 = WebCore::JSElement::toWrapped();
      v6 = kit(v5);
      MEMORY[0x1CCA63200](v7);
      return v6;
    }
  }

  return result;
}

@end