@interface DOMHTMLMarqueeElement
- (BOOL)trueSpeed;
- (id)behavior;
- (id)bgColor;
- (id)direction;
- (id)height;
- (id)width;
- (int)loop;
- (unsigned)hspace;
- (unsigned)scrollAmount;
- (unsigned)scrollDelay;
- (unsigned)vspace;
- (void)setBehavior:(id)behavior;
- (void)setBgColor:(id)color;
- (void)setDirection:(id)direction;
- (void)setHeight:(id)height;
- (void)setHspace:(unsigned int)hspace;
- (void)setLoop:(int)loop;
- (void)setScrollAmount:(unsigned int)amount;
- (void)setScrollDelay:(unsigned int)delay;
- (void)setTrueSpeed:(BOOL)speed;
- (void)setVspace:(unsigned int)vspace;
- (void)setWidth:(id)width;
- (void)start;
- (void)stop;
@end

@implementation DOMHTMLMarqueeElement

- (id)behavior
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

- (void)setBehavior:(id)behavior
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, behavior, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)bgColor
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

- (void)setBgColor:(id)color
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, color, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)direction
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

- (void)setDirection:(id)direction
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, direction, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)height
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

- (void)setHeight:(id)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, height, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (unsigned)hspace
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  v2 = WebCore::Element::unsignedIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return v2;
}

- (void)setHspace:(unsigned int)hspace
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setUnsignedIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (int)loop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLMarqueeElement::loop(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setLoop:(int)loop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLMarqueeElement::setLoop(self->super.super.super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

- (unsigned)scrollAmount
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLMarqueeElement::scrollAmount(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setScrollAmount:(unsigned int)amount
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLMarqueeElement::setScrollAmount(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (unsigned)scrollDelay
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLMarqueeElement::scrollDelay(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setScrollDelay:(unsigned int)delay
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLMarqueeElement::setScrollDelay(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (BOOL)trueSpeed
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  v4 = *(self->super.super.super.super._internal + 14);
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
  v9 = *MEMORY[0x1E69E29C0];
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

- (void)setTrueSpeed:(BOOL)speed
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (unsigned)vspace
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  v2 = WebCore::Element::unsignedIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return v2;
}

- (void)setVspace:(unsigned int)vspace
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setUnsignedIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (id)width
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

- (void)setWidth:(id)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, width, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (void)start
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLMarqueeElement::start(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (void)stop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLMarqueeElement::stop(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

@end