@interface DOMHTMLElement
- (BOOL)autocorrect;
- (BOOL)draggable;
- (BOOL)hidden;
- (BOOL)isContentEditable;
- (BOOL)spellcheck;
- (BOOL)translate;
- (DOMHTMLCollection)children;
- (NSString)accessKey;
- (NSString)contentEditable;
- (NSString)dir;
- (NSString)idName;
- (NSString)innerText;
- (NSString)lang;
- (NSString)outerText;
- (NSString)title;
- (NSString)titleDisplayString;
- (id)autocapitalize;
- (id)insertAdjacentElement:(id)a3 element:(id)a4;
- (id)webkitdropzone;
- (int)scrollXOffset;
- (int)scrollYOffset;
- (int)structuralComplexityContribution;
- (int)tabIndex;
- (void)absolutePosition:(int *)a3 :(int *)a4 :(int *)a5 :(int *)a6;
- (void)click;
- (void)insertAdjacentHTML:(id)a3 html:(id)a4;
- (void)insertAdjacentText:(id)a3 text:(id)a4;
- (void)setAccessKey:(NSString *)accessKey;
- (void)setAutocapitalize:(id)a3;
- (void)setAutocorrect:(BOOL)a3;
- (void)setContentEditable:(NSString *)contentEditable;
- (void)setDir:(NSString *)dir;
- (void)setDraggable:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIdName:(NSString *)idName;
- (void)setInnerText:(NSString *)innerText;
- (void)setLang:(NSString *)lang;
- (void)setOuterText:(NSString *)outerText;
- (void)setScrollXOffset:(int)a3 scrollYOffset:(int)a4 adjustForIOSCaret:(BOOL)a5;
- (void)setSpellcheck:(BOOL)a3;
- (void)setTabIndex:(int)tabIndex;
- (void)setTitle:(NSString *)title;
- (void)setTranslate:(BOOL)a3;
- (void)setWebkitdropzone:(id)a3;
@end

@implementation DOMHTMLElement

- (int)scrollXOffset
{
  v2 = *(self->super.super.super._internal + 9);
  if (v2)
  {
    v3 = *(v2 + 45);
    if ((v3 & 2) != 0)
    {
      LODWORD(v2) = 105;
      __break(0xC471u);
    }

    else
    {
      if ((*(v2 + 52) & 7) != 1)
      {
        v2 = WebCore::RenderObject::containingBlock(v2);
        v3 = *(v2 + 45);
      }

      if ((v3 & 4) != 0)
      {
        if (*(v2 + 22))
        {
          v2 = *(v2 + 144);
          if (v2)
          {
            v2 = WebCore::RenderLayer::scrollableArea(v2);
            if (v2)
            {
              LODWORD(v2) = WebCore::ScrollableArea::scrollOffset(v2);
            }
          }
        }

        else
        {
          LODWORD(v2) = 0;
        }
      }

      else
      {
        LODWORD(v2) = 0;
      }
    }
  }

  return v2;
}

- (int)scrollYOffset
{
  v2 = *(self->super.super.super._internal + 9);
  if (v2)
  {
    v3 = *(v2 + 45);
    if ((v3 & 2) != 0)
    {
      LODWORD(v2) = 105;
      __break(0xC471u);
    }

    else
    {
      if ((*(v2 + 52) & 7) != 1)
      {
        v2 = WebCore::RenderObject::containingBlock(v2);
        v3 = *(v2 + 45);
      }

      if ((v3 & 4) != 0)
      {
        if (*(v2 + 22))
        {
          v2 = *(v2 + 144);
          if (v2)
          {
            v2 = WebCore::RenderLayer::scrollableArea(v2);
            if (v2)
            {
              return WebCore::ScrollableArea::scrollOffset(v2) >> 32;
            }
          }
        }

        else
        {
          LODWORD(v2) = 0;
        }
      }

      else
      {
        LODWORD(v2) = 0;
      }
    }
  }

  return v2;
}

- (void)setScrollXOffset:(int)a3 scrollYOffset:(int)a4 adjustForIOSCaret:(BOOL)a5
{
  v5 = *(self->super.super.super._internal + 9);
  if (v5)
  {
    if ((*(v5 + 45) & 2) != 0)
    {
      __break(0xC471u);
    }

    else
    {
      if ((*(v5 + 52) & 7) != 1)
      {
        v5 = WebCore::RenderObject::containingBlock(v5);
      }

      if ((*(v5 + 22) & 1) != 0 && (*(v5 + 45) & 4) != 0)
      {
        v6 = *(v5 + 144);
        if (v6)
        {
          WebCore::RenderLayer::ensureLayerScrollableArea(v6);
          WebCore::RenderLayerScrollableArea::scrollToOffset();
        }
      }
    }
  }
}

- (void)absolutePosition:(int *)a3 :(int *)a4 :(int *)a5 :(int *)a6
{
  v6 = *(self->super.super.super._internal + 9);
  if (v6 && (*(v6 + 45) & 4) != 0)
  {
    if (a5)
    {
      *a5 = *(v6 + 160) / 64;
    }

    if (a6)
    {
      *a6 = *(v6 + 160) / 64;
    }

    if (a3 && a4)
    {
      v14 = *a3;
      v15 = *a4;
      WebCore::RenderObject::localToAbsolute();
      v9 = roundf(v14);
      if (v9 > -2147500000.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x80000000;
      }

      if (v9 < 2147500000.0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x7FFFFFFF;
      }

      v12 = roundf(v15);
      if (v12 >= 2147500000.0)
      {
        v13 = 0x7FFFFFFF;
      }

      else if (v12 <= -2147500000.0)
      {
        v13 = 0x80000000;
      }

      else
      {
        v13 = v12;
      }

      *a3 = v11;
      *a4 = v13;
    }
  }
}

- (NSString)title
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setTitle:(NSString *)title
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, title, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)lang
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setLang:(NSString *)lang
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, lang, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)translate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::HTMLElement::translate(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setTranslate:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLElement::setTranslate(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (NSString)dir
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::HTMLElement::dir(self->super.super.super._internal);
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
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (int)tabIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super.super.super._internal + 584))(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setTabIndex:(int)tabIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::Element::setTabIndexForBindings(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (BOOL)draggable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = (*(*self->super.super.super._internal + 1168))(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setDraggable:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLElement::setDraggable(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (id)webkitdropzone
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setWebkitdropzone:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)hidden
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  v4 = *(self->super.super.super._internal + 14);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 4);
  if (v5)
  {
    v6 = *(v4 + 40);
    v7 = *(v4 + 52);
    if (!v7)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = (v4 + 32);
    v7 = v5 >> 5;
    if (!(v5 >> 5))
    {
      goto LABEL_12;
    }
  }

  v8 = v7;
  v9 = *MEMORY[0x1E69E27D0];
  v10 = 16 * v8;
  while (1)
  {
    v11 = *v6;
    if (*v6 == v9 || *(v11 + 24) == *(v9 + 24) && *(v11 + 32) == *(v9 + 32))
    {
      break;
    }

    v6 += 2;
    v10 -= 16;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v12 = 1;
LABEL_13:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v3);
  return v12;
}

- (void)setHidden:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (NSString)accessKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setAccessKey:(NSString *)accessKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, accessKey, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)innerText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Element::innerText(&v11, self->super.super.super._internal);
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

- (void)setInnerText:(NSString *)innerText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  MEMORY[0x1CCA63A40](&v7, innerText);
  WebCore::HTMLElement::setInnerText();
  if (v10 == 1)
  {
    v11[80] = v8;
    v6 = v9;
    v9 = 0;
    v12 = v6;
    raiseDOMErrorException();
  }

  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
}

- (NSString)outerText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Element::innerText(&v11, self->super.super.super._internal);
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

- (void)setOuterText:(NSString *)outerText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  MEMORY[0x1CCA63A40](&v7, outerText);
  WebCore::HTMLElement::setOuterText();
  if (v10 == 1)
  {
    v11[80] = v8;
    v6 = v9;
    v9 = 0;
    v12 = v6;
    raiseDOMErrorException();
  }

  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
}

- (NSString)contentEditable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLElement::contentEditable(&v11, self->super.super.super._internal);
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

- (void)setContentEditable:(NSString *)contentEditable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super.super.super._internal;
  MEMORY[0x1CCA63A40](&v9, contentEditable);
  WebCore::HTMLElement::setContentEditable(&v10, internal, &v9);
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

- (BOOL)isContentEditable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::Node::isContentEditable(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)spellcheck
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = MEMORY[0x1CCA68D00](self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setSpellcheck:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLElement::setSpellcheck(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (NSString)idName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  v3 = *(self->super.super.super._internal + 14);
  if (v3 && *(v3 + 24))
  {
    v4 = *(v3 + 4);
    if (v4)
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 52);
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v5 = (v3 + 32);
      v6 = v4 >> 5;
      if (!(v4 >> 5))
      {
LABEL_21:
        v7 = MEMORY[8];
        if (!MEMORY[8])
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }
    }

    v13 = v6;
    v14 = *MEMORY[0x1E69E2B58];
    v15 = 16 * v13;
    while (1)
    {
      v16 = *v5;
      if (*v5 == v14 || *(v16 + 24) == *(v14 + 24) && *(v16 + 32) == *(v14 + 32))
      {
        break;
      }

      v5 += 2;
      v15 -= 16;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    v7 = v5[1];
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E696EB90];
  if (!*MEMORY[0x1E696EB90])
  {
LABEL_20:
    v18 = &stru_1F472E7E8;
    v17 = &stru_1F472E7E8;
    goto LABEL_9;
  }

LABEL_7:
  atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v18, v7);
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v8);
  }

LABEL_9:
  v9 = v18;
  v18 = 0;
  if (v9)
  {
    v10 = v9;
    v11 = v18;
    v18 = 0;
    if (v11)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v8);
  return v9;
}

- (void)setIdName:(NSString *)idName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, idName, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (DOMHTMLCollection)children
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::ContainerNode::children(&v7, self->super.super.super._internal);
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

- (NSString)titleDisplayString
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  WebCore::HTMLElement::title(&v13, self->super.super.super._internal);
  WebCore::displayString(&v14, &v13, self->super.super.super._internal, v3);
  v4 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v15, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v15 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
  }

  v6 = v15;
  v15 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v15;
    v15 = 0;
    if (v8)
    {
    }
  }

  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v5);
  return v6;
}

- (id)insertAdjacentElement:(id)a3 element:(id)a4
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  if (!a4)
  {
    raiseTypeErrorException();
  }

  internal = self->super.super.super._internal;
  MEMORY[0x1CCA63A40](&v16, a3);
  v8 = core(a4);
  inserted = WebCore::Element::insertAdjacentElement(&v17, internal, &v16, v8);
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

    mpark::throw_bad_variant_access(inserted);
  }

  v11 = kit(v17);
  if (v19)
  {
    if (v19 != 255)
    {
      v12 = v18;
      v18 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }
    }
  }

  v19 = -1;
  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v10);
  return v11;
}

- (void)insertAdjacentHTML:(id)a3 html:(id)a4
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  MEMORY[0x1CCA63A40](&v11, a3);
  MEMORY[0x1CCA63A40](v10, a4);
  v10[8] = 1;
  WebCore::Element::insertAdjacentHTML();
  if (v14 == 1)
  {
    v15[80] = v12;
    v9 = v13;
    v13 = 0;
    v16 = v9;
    raiseDOMErrorException();
  }

  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(v10, v6);
  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v7);
}

- (void)insertAdjacentText:(id)a3 text:(id)a4
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  MEMORY[0x1CCA63A40](&v11, a3);
  MEMORY[0x1CCA63A40](&v10, a4);
  WebCore::Element::insertAdjacentText();
  if (v14 == 1)
  {
    v15[80] = v12;
    v9 = v13;
    v13 = 0;
    v16 = v9;
    raiseDOMErrorException();
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v6);
}

- (void)click
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLElement::click(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (BOOL)autocorrect
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = (*(*self->super.super.super._internal + 1240))(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setAutocorrect:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLElement::setAutocorrect(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (id)autocapitalize
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::HTMLElement::autocapitalize(self->super.super.super._internal);
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

- (void)setAutocapitalize:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (int)structuralComplexityContribution
{
  v2 = *(self->super.super.super._internal + 9);
  if (!v2)
  {
    goto LABEL_14;
  }

  if ((*(v2 + 45) & 2) != 0)
  {
    goto LABEL_31;
  }

  v3 = *(v2 + 20);
  LODWORD(v4) = 0x7FFFFFFF;
  if ((v3 & 0x800) != 0)
  {
    return v4;
  }

  if ((v3 & 0x1800000) == 0x1000000)
  {
    return v4;
  }

  if ((*(v2 + 52) & 0x407) == 0x403)
  {
    return v4;
  }

  v4 = (*(*v2 + 120))(v2, a2);
  if (!v4)
  {
    return v4;
  }

  if ((*(v2 + 52) & 7) != 1 && ((*(v2 + 45) & 0x40) == 0 || !WebCore::RenderBoxModelObject::inlineContinuation(v2)))
  {
    v5 = *(v2 + 20);
    if ((v5 & 0x20000) == 0)
    {
LABEL_14:
      LODWORD(v4) = 0;
      return v4;
    }

    if ((*(v2 + 45) & 2) == 0 || (v8 = *(v2 + 32)) != 0 && (v2 = *(v8 + 8)) != 0)
    {
      v9 = *(v2 + 88);
      if (*(*(*(v9 + 32) + 40) + 20) || (v10 = *(v9 + 40), v10[48]) || v10[39] || v10[40] || (v5 & 0x100000) != 0 || v10[41])
      {
        LODWORD(v4) = 0x7FFFFFFF;
        return v4;
      }

      goto LABEL_14;
    }

LABEL_31:
    __break(0xC471u);
    JUMPOUT(0x1C7A57DB0);
  }

  if ((*(v2 + 45) & 4) != 0)
  {
    v6 = *(v2 + 32);
    LODWORD(v4) = !v6 || (v7 = *(v6 + 8)) == 0 || (*(v7 + 45) & 4) == 0 || *(v2 + 160) != *(v7 + 160);
  }

  else
  {
    LODWORD(v4) = 1;
  }

  return v4;
}

@end