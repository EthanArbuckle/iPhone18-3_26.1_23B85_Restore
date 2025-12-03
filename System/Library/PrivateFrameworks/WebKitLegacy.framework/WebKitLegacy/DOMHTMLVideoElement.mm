@interface DOMHTMLVideoElement
- (BOOL)playsInline;
- (BOOL)webkitDisplayingFullscreen;
- (BOOL)webkitSupportsFullscreen;
- (NSString)poster;
- (unsigned)height;
- (unsigned)videoHeight;
- (unsigned)videoWidth;
- (unsigned)width;
- (void)setHeight:(unsigned int)height;
- (void)setPlaysInline:(BOOL)inline;
- (void)setPoster:(id)poster;
- (void)setWidth:(unsigned int)width;
- (void)webkitEnterFullscreen;
- (void)webkitExitFullscreen;
@end

@implementation DOMHTMLVideoElement

- (unsigned)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::Element::unsignedIntegralAttribute();
  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setWidth:(unsigned int)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::Element::setUnsignedIntegralAttribute();
  if (!internal)
  {
    goto LABEL_6;
  }

  if (*(internal + 7) != 2)
  {
    *(internal + 7) -= 2;
LABEL_6:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return;
  }

  WebCore::Node::removedLastRef(internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (unsigned)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::Element::unsignedIntegralAttribute();
  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setHeight:(unsigned int)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::Element::setUnsignedIntegralAttribute();
  if (!internal)
  {
    goto LABEL_6;
  }

  if (*(internal + 7) != 2)
  {
    *(internal + 7) -= 2;
LABEL_6:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return;
  }

  WebCore::Node::removedLastRef(internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (unsigned)videoWidth
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLVideoElement::videoWidth(internal);
  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (unsigned)videoHeight
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLVideoElement::videoHeight(internal);
  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (NSString)poster
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::Element::getURLAttribute();
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v11;
    v11 = 0;
    if (v7)
    {
    }
  }

  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v4);
  return v5;
}

- (void)setPoster:(id)poster
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WTF::AtomStringImpl::add(&v11, poster, v5);
  v9 = v11;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }

  if (!internal)
  {
    goto LABEL_9;
  }

  if (*(internal + 7) != 2)
  {
    *(internal + 7) -= 2;
LABEL_9:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v7);
    return;
  }

  WebCore::Node::removedLastRef(internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v8);
}

- (BOOL)playsInline
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = *(internal + 14);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 4);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = *(v5 + 52);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = (v5 + 32);
    v8 = v6 >> 5;
    if (!(v6 >> 5))
    {
LABEL_6:
      v9 = 0;
      goto LABEL_16;
    }
  }

  v10 = v8;
  v11 = *MEMORY[0x1E69E2A50];
  v12 = 16 * v10;
  do
  {
    v13 = *v7;
    if (*v7 == v11 || *(v13 + 24) == *(v11 + 24) && *(v13 + 32) == *(v11 + 32))
    {
      v9 = 1;
      if (internal)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v7 += 2;
    v12 -= 16;
  }

  while (v12);
  v9 = 0;
  if (!internal)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v3);
  return v9;
}

- (void)setPlaysInline:(BOOL)inline
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::Element::setBooleanAttribute();
  if (!internal)
  {
    goto LABEL_6;
  }

  if (*(internal + 7) != 2)
  {
    *(internal + 7) -= 2;
LABEL_6:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return;
  }

  WebCore::Node::removedLastRef(internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (BOOL)webkitSupportsFullscreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLVideoElement::webkitSupportsFullscreen(internal);
  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (BOOL)webkitDisplayingFullscreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = MEMORY[0x1CCA65A20](internal);
  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)webkitEnterFullscreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLVideoElement::webkitEnterFullscreen(&v6, internal);
  if (v8 == 1)
  {
    v9[80] = v6;
    v5 = v7;
    v7 = 0;
    v10 = v5;
    raiseDOMErrorException();
  }

  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
}

- (void)webkitExitFullscreen
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLVideoElement::webkitExitFullscreen(internal);
  if (!internal)
  {
    goto LABEL_6;
  }

  if (*(internal + 7) != 2)
  {
    *(internal + 7) -= 2;
LABEL_6:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
    return;
  }

  WebCore::Node::removedLastRef(internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
}

@end