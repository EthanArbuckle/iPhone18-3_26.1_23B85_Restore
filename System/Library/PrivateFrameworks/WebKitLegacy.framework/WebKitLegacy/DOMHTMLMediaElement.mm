@interface DOMHTMLMediaElement
- (BOOL)autoplay;
- (BOOL)controls;
- (BOOL)defaultMuted;
- (BOOL)ended;
- (BOOL)loop;
- (BOOL)muted;
- (BOOL)paused;
- (BOOL)seeking;
- (BOOL)webkitClosedCaptionsVisible;
- (BOOL)webkitHasClosedCaptions;
- (BOOL)webkitPreservesPitch;
- (DOMMediaError)error;
- (DOMTimeRanges)buffered;
- (DOMTimeRanges)played;
- (DOMTimeRanges)seekable;
- (NSString)crossOrigin;
- (NSString)currentSrc;
- (NSString)mediaGroup;
- (NSString)preload;
- (NSString)src;
- (double)currentTime;
- (double)defaultPlaybackRate;
- (double)duration;
- (double)getStartDate;
- (double)playbackRate;
- (double)volume;
- (id)canPlayType:(id)a3;
- (unsigned)networkState;
- (unsigned)readyState;
- (void)fastSeek:(double)a3;
- (void)load;
- (void)pause;
- (void)play;
- (void)setAutoplay:(BOOL)a3;
- (void)setControls:(BOOL)a3;
- (void)setCrossOrigin:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setDefaultMuted:(BOOL)a3;
- (void)setDefaultPlaybackRate:(double)a3;
- (void)setLoop:(BOOL)a3;
- (void)setMediaGroup:(id)a3;
- (void)setMuted:(BOOL)a3;
- (void)setPlaybackRate:(double)a3;
- (void)setPreload:(id)a3;
- (void)setSrc:(id)a3;
- (void)setVolume:(double)a3;
- (void)setWebkitClosedCaptionsVisible:(BOOL)a3;
- (void)setWebkitPreservesPitch:(BOOL)a3;
@end

@implementation DOMHTMLMediaElement

- (DOMMediaError)error
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v4 = WebCore::HTMLMediaElement::error(internal);
  v6 = kit(v4);
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v5);
  return v6;
}

- (NSString)src
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
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

- (void)setSrc:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WTF::AtomStringImpl::add(&v11, a3, v5);
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

- (NSString)currentSrc
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v4 = *(internal + 106);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v6 = v11;
  v11 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v11;
    v11 = 0;
    if (v8)
    {
    }
  }

  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
  return v6;
}

- (NSString)crossOrigin
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::crossOrigin(&v12, internal);
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
  return v6;
}

- (void)setCrossOrigin:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WTF::AtomStringImpl::add(&v11, a3, v5);
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

- (unsigned)networkState
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLMediaElement::networkState(internal);
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

- (NSString)preload
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::preload(&v12, internal);
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
  return v6;
}

- (void)setPreload:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WTF::AtomStringImpl::add(&v11, a3, v5);
  v9 = v11;
  WebCore::HTMLMediaElement::setPreload();
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

- (DOMTimeRanges)buffered
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1352))(&v10, internal);
  v5 = kit(v10);
  v6 = v10;
  v10 = 0;
  if (!v6)
  {
LABEL_6:
    v7 = *(internal + 7) - 2;
    if (*(internal + 7) != 2)
    {
LABEL_7:
      *(internal + 7) = v7;
LABEL_12:
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
      return v5;
    }

LABEL_11:
    WebCore::Node::removedLastRef(internal);
    goto LABEL_12;
  }

  if (*v6 != 1)
  {
    --*v6;
    goto LABEL_6;
  }

  v8 = *(v6 + 1);
  if (!v8 || (*(v6 + 1) = 0, *(v6 + 4) = 0, WTF::fastFree(v8, v4), *v6 == 1))
  {
    WTF::fastFree(v6, v4);
    v7 = *(internal + 7) - 2;
    if (*(internal + 7) != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  result = 191;
  __break(0xC471u);
  return result;
}

- (unsigned)readyState
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1360))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (BOOL)seeking
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLMediaElement::seeking(internal);
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

- (double)currentTime
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1368))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setCurrentTime:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::setCurrentTimeForBindings(&v8, internal, a3);
  if (v10 == 1)
  {
    v11[80] = v8;
    v7 = v9;
    v9 = 0;
    v12 = v7;
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (double)duration
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1384))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (BOOL)paused
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1392))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (double)defaultPlaybackRate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1400))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setDefaultPlaybackRate:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1408))(internal, a3);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (double)playbackRate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1416))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setPlaybackRate:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1424))(internal, a3);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (DOMTimeRanges)played
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1432))(&v10, internal);
  v5 = kit(v10);
  v6 = v10;
  v10 = 0;
  if (!v6)
  {
LABEL_6:
    v7 = *(internal + 7) - 2;
    if (*(internal + 7) != 2)
    {
LABEL_7:
      *(internal + 7) = v7;
LABEL_12:
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
      return v5;
    }

LABEL_11:
    WebCore::Node::removedLastRef(internal);
    goto LABEL_12;
  }

  if (*v6 != 1)
  {
    --*v6;
    goto LABEL_6;
  }

  v8 = *(v6 + 1);
  if (!v8 || (*(v6 + 1) = 0, *(v6 + 4) = 0, WTF::fastFree(v8, v4), *v6 == 1))
  {
    WTF::fastFree(v6, v4);
    v7 = *(internal + 7) - 2;
    if (*(internal + 7) != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  result = 191;
  __break(0xC471u);
  return result;
}

- (DOMTimeRanges)seekable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1440))(&v10, internal);
  v5 = kit(v10);
  v6 = v10;
  v10 = 0;
  if (!v6)
  {
LABEL_6:
    v7 = *(internal + 7) - 2;
    if (*(internal + 7) != 2)
    {
LABEL_7:
      *(internal + 7) = v7;
LABEL_12:
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
      return v5;
    }

LABEL_11:
    WebCore::Node::removedLastRef(internal);
    goto LABEL_12;
  }

  if (*v6 != 1)
  {
    --*v6;
    goto LABEL_6;
  }

  v8 = *(v6 + 1);
  if (!v8 || (*(v6 + 1) = 0, *(v6 + 4) = 0, WTF::fastFree(v8, v4), *v6 == 1))
  {
    WTF::fastFree(v6, v4);
    v7 = *(internal + 7) - 2;
    if (*(internal + 7) != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  result = 191;
  __break(0xC471u);
  return result;
}

- (BOOL)ended
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLMediaElement::ended(internal);
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

- (BOOL)autoplay
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
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
  v11 = *MEMORY[0x1E69E2920];
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

- (void)setAutoplay:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
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

- (BOOL)loop
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
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
  v11 = *MEMORY[0x1E69E2C90];
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

- (void)setLoop:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
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

- (BOOL)controls
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLMediaElement::controls(internal);
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

- (void)setControls:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::setControls(internal);
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

- (double)volume
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1464))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setVolume:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1472))(&v8, internal, a3);
  if (v10 == 1)
  {
    v11[80] = v8;
    v7 = v9;
    v9 = 0;
    v12 = v7;
    raiseDOMErrorException();
  }

  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (BOOL)muted
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1480))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1488))(internal, v3);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (BOOL)defaultMuted
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
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
  v11 = *MEMORY[0x1E69E2DA0];
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

- (void)setDefaultMuted:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
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

- (BOOL)webkitPreservesPitch
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = WebCore::HTMLMediaElement::preservesPitch(internal);
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

- (void)setWebkitPreservesPitch:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::setPreservesPitch(internal);
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

- (BOOL)webkitHasClosedCaptions
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1848))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (BOOL)webkitClosedCaptionsVisible
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v5 = (*(*internal + 1856))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
  return v5;
}

- (void)setWebkitClosedCaptionsVisible:(BOOL)a3
{
  v3 = a3;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1864))(internal, v3);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (NSString)mediaGroup
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v4 = *WebCore::Element::getAttribute();
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v6 = v11;
  v11 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v11;
    v11 = 0;
    if (v8)
    {
    }
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
  return v6;
}

- (void)setMediaGroup:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WTF::AtomStringImpl::add(&v11, a3, v5);
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

- (void)load
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::load(internal);
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

- (id)canPlayType:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  MEMORY[0x1CCA63A40](&v15, a3);
  WebCore::HTMLMediaElement::canPlayType(&v16, internal, &v15);
  v6 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v17, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v17 = &stru_1F472E7E8;
    v14 = &stru_1F472E7E8;
  }

  v8 = v17;
  v17 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = v17;
    v17 = 0;
    if (v10)
    {
    }
  }

  v11 = v16;
  v16 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v7);
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v7);
  return v8;
}

- (double)getStartDate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::getStartDate(internal);
  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      v6 = v5;
      WebCore::Node::removedLastRef(internal);
      v5 = v6;
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  v7 = v5 + -978307200.0;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
  return v7;
}

- (void)play
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1448))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (void)pause
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  (*(*internal + 1456))(internal);
  if (*(internal + 7) == 2)
  {
    WebCore::Node::removedLastRef(internal);
  }

  else
  {
    *(internal + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (void)fastSeek:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  WebCore::HTMLMediaElement::fastSeek(internal, a3);
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

@end