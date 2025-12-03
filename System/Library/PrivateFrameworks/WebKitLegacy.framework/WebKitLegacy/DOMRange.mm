@interface DOMRange
+ (id)rangeForFirstPosition:(id)position second:(id)second;
- (BOOL)collapsed;
- (BOOL)intersectsNode:(DOMNode *)refNode;
- (BOOL)isPointInRange:(DOMNode *)refNode offset:(int)offset;
- (CGImage)renderedImageForcingBlackText:(BOOL)text;
- (CGRect)boundingBox;
- (DOMDocumentFragment)cloneContents;
- (DOMDocumentFragment)createContextualFragment:(NSString *)html;
- (DOMDocumentFragment)extractContents;
- (DOMNode)commonAncestorContainer;
- (DOMNode)endContainer;
- (DOMNode)startContainer;
- (DOMRange)cloneRange;
- (NSString)markupString;
- (NSString)text;
- (NSString)toString;
- (WebArchive)webArchive;
- (__int16)compareBoundaryPoints:(unsigned __int16)how sourceRange:(DOMRange *)sourceRange;
- (__int16)compareNode:(DOMNode *)refNode;
- (__int16)comparePoint:(DOMNode *)refNode offset:(int)offset;
- (id)description;
- (id)enclosingWordRange;
- (id)endPosition;
- (id)firstNode;
- (id)startPosition;
- (id)textRects;
- (int)endOffset;
- (int)startOffset;
- (void)collapse:(BOOL)toStart;
- (void)dealloc;
- (void)deleteContents;
- (void)expand:(id)expand;
- (void)extend:(unsigned int)extend inDirection:(int)direction;
- (void)insertNode:(DOMNode *)newNode;
- (void)move:(unsigned int)move inDirection:(int)direction;
- (void)selectNode:(DOMNode *)refNode;
- (void)selectNodeContents:(DOMNode *)refNode;
- (void)setEnd:(DOMNode *)refNode offset:(int)offset;
- (void)setEndAfter:(DOMNode *)refNode;
- (void)setEndBefore:(DOMNode *)refNode;
- (void)setStart:(DOMNode *)refNode offset:(int)offset;
- (void)setStartAfter:(DOMNode *)refNode;
- (void)setStartBefore:(DOMNode *)refNode;
- (void)surroundContents:(DOMNode *)newParent;
@end

@implementation DOMRange

- (CGRect)boundingBox
{
  WebCore::makeSimpleRange();
  WebCore::Document::updateLayout();
  WebCore::RenderObject::absoluteTextRects();
  WebCore::unionRect();
  WebCore::IntRect::operator CGRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v16)
  {
    WTF::fastFree(v16, v2);
  }

  if (!v18)
  {
LABEL_6:
    v11 = v17;
    if (!v17)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (*(v18 + 7) != 2)
  {
    *(v18 + 7) -= 2;
    goto LABEL_6;
  }

  WebCore::Node::removedLastRef(v18);
  v11 = v17;
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(v11 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v11);
  }

  else
  {
    *(v11 + 7) -= 2;
  }

LABEL_12:
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGImage)renderedImageForcingBlackText:(BOOL)text
{
  textCopy = text;
  WebCore::makeSimpleRange();
  v4 = *(*(*(v11 + 6) + 8) + 552);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    ++*(v5 + 4);
    WebCore::createDragImageForRange(v5, &v11, textCopy);
    v6 = arg;
    if (arg)
    {
      CFAutorelease(arg);
    }

    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
      v7 = v12;
      v12 = 0;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      --*(v5 + 4);
      v7 = v12;
      v12 = 0;
      if (!v7)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = v12;
    v12 = 0;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
    v8 = v11;
    v11 = 0;
    if (!v8)
    {
      return v6;
    }

    goto LABEL_14;
  }

  *(v7 + 7) -= 2;
LABEL_13:
  v8 = v11;
  v11 = 0;
  if (!v8)
  {
    return v6;
  }

LABEL_14:
  if (*(v8 + 7) != 2)
  {
    *(v8 + 7) -= 2;
    return v6;
  }

  WebCore::Node::removedLastRef(v8);
  return v6;
}

- (id)textRects
{
  WebCore::makeSimpleRange();
  WebCore::Document::updateLayout();
  WebCore::RenderObject::absoluteTextRects();
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  if (v11)
  {
    v4 = v10;
    v5 = 16 * v11;
    do
    {
      NSArrayElement = WebCore::makeNSArrayElement();
      if (NSArrayElement)
      {
        [v3 addObject:NSArrayElement];
      }

      v4 = (v4 + 16);
      v5 -= 16;
    }

    while (v5);
  }

  if (v3)
  {
    v7 = v3;
  }

  if (v10)
  {
    WTF::fastFree(v10, v2);
  }

  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
      v8 = v12;
      if (!v12)
      {
        return v3;
      }

      goto LABEL_14;
    }

    *(v13 + 7) -= 2;
  }

  v8 = v12;
  if (!v12)
  {
    return v3;
  }

LABEL_14:
  if (*(v8 + 7) != 2)
  {
    *(v8 + 7) -= 2;
    return v3;
  }

  WebCore::Node::removedLastRef(v8);
  return v3;
}

- (id)description
{
  if (self->super._internal)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<DOMRange: %@ %d %@ %d>", -[DOMRange startContainer](self, "startContainer"), -[DOMRange startOffset](self, "startOffset"), -[DOMRange endContainer](self, "endContainer"), -[DOMRange endOffset](self, "endOffset")];
  }

  else
  {
    return @"<DOMRange: null>";
  }
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*(internal + 2) == 1)
      {
        (*(*internal + 8))(internal);
      }

      else
      {
        --*(internal + 2);
      }
    }

    v5.receiver = self;
    v5.super_class = DOMRange;
    [(DOMObject *)&v5 dealloc];
  }
}

- (DOMNode)startContainer
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 4));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (int)startOffset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super._internal + 10);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)endContainer
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 7));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (int)endOffset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super._internal + 16);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)collapsed
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super._internal;
  v7 = *(internal + 4) == *(internal + 7);
  v5 = *(internal + 10);
  v6 = *(internal + 16);
  v7 = v7 && v5 == v6;
  v8 = v7;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v8;
}

- (DOMNode)commonAncestorContainer
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::Range::commonAncestorContainer(self->super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (NSString)text
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  WebCore::makeSimpleRange();
  WebCore::Document::updateLayout();
  WebCore::plainText();
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v2);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v3 = v11;
  v11 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v11;
    v11 = 0;
    if (v5)
    {
    }
  }

  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v2);
  }

  v6 = v13;
  v13 = 0;
  if (!v6)
  {
LABEL_13:
    v7 = v12;
    v12 = 0;
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    goto LABEL_13;
  }

  WebCore::Node::removedLastRef(v6);
  v7 = v12;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
  }

  else
  {
    *(v7 + 7) -= 2;
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v2);
  return v3;
}

- (void)setStart:(DOMNode *)refNode offset:(int)offset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  internal = refNode->super._internal;
  *(internal + 7) += 2;
  v7 = internal;
  WebCore::Range::setStart();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (void)setEnd:(DOMNode *)refNode offset:(int)offset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  internal = refNode->super._internal;
  *(internal + 7) += 2;
  v7 = internal;
  WebCore::Range::setEnd();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (void)setStartBefore:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  WebCore::Range::setStartBefore(&v7, self->super._internal, refNode->super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (void)setStartAfter:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  WebCore::Range::setStartAfter(&v7, self->super._internal, refNode->super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (void)setEndBefore:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  WebCore::Range::setEndBefore(&v7, self->super._internal, refNode->super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (void)setEndAfter:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  WebCore::Range::setEndAfter(&v7, self->super._internal, refNode->super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (void)collapse:(BOOL)toStart
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::Range::collapse(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (void)selectNode:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  WebCore::Range::selectNode(&v7, self->super._internal, refNode->super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (void)selectNodeContents:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  WebCore::Range::selectNodeContents(&v7, self->super._internal, refNode->super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (__int16)compareBoundaryPoints:(unsigned __int16)how sourceRange:(DOMRange *)sourceRange
{
  v5 = how;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  if (!sourceRange)
  {
    raiseTypeErrorException();
  }

  v7 = WebCore::Range::compareBoundaryPoints(self->super._internal, v5, sourceRange->super._internal);
  if (v12)
  {
    if (v12 == 1)
    {
      v13[80] = v10;
      v14 = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v8);
  return v10;
}

- (void)deleteContents
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Range::deleteContents(&v5, self->super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v4 = v6;
    v6 = 0;
    v9 = v4;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
}

- (DOMDocumentFragment)extractContents
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  Contents = WebCore::Range::extractContents(&v12, self->super._internal);
  if (v14)
  {
    if (v14 == 1)
    {
      v15[80] = v12;
      v11 = v13;
      v13 = 0;
      v16 = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(Contents);
  }

  v4 = v12;
  v12 = 0;
  v6 = kit(v4);
  if (!v4)
  {
LABEL_5:
    v7 = v14;
    if (v14 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v4 + 7) != 2)
  {
    *(v4 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v4);
  v7 = v14;
  if (v14 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v7)
  {
    v9 = v13;
    v13 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

  else
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v8);
      }

      else
      {
        *(v8 + 7) -= 2;
      }
    }
  }

LABEL_16:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v5);
  return v6;
}

- (DOMDocumentFragment)cloneContents
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  v3 = WebCore::Range::cloneContents(&v12, self->super._internal);
  if (v14)
  {
    if (v14 == 1)
    {
      v15[80] = v12;
      v11 = v13;
      v13 = 0;
      v16 = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v4 = v12;
  v12 = 0;
  v6 = kit(v4);
  if (!v4)
  {
LABEL_5:
    v7 = v14;
    if (v14 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v4 + 7) != 2)
  {
    *(v4 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v4);
  v7 = v14;
  if (v14 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v7)
  {
    v9 = v13;
    v13 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

  else
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v8);
      }

      else
      {
        *(v8 + 7) -= 2;
      }
    }
  }

LABEL_16:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v5);
  return v6;
}

- (void)insertNode:(DOMNode *)newNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (!newNode)
  {
    raiseTypeErrorException();
  }

  internal = newNode->super._internal;
  *(internal + 7) += 2;
  v7 = internal;
  WebCore::Range::insertNode();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

  if (!v7)
  {
    goto LABEL_6;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
LABEL_6:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
    return;
  }

  WebCore::Node::removedLastRef(v7);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (void)surroundContents:(DOMNode *)newParent
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!newParent)
  {
    raiseTypeErrorException();
  }

  WebCore::Range::surroundContents(&v7, self->super._internal, newParent->super._internal);
  if (v9 == 1)
  {
    v10[80] = v7;
    v6 = v8;
    v8 = 0;
    v11 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
}

- (DOMRange)cloneRange
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Range::cloneRange(&v7, self->super._internal);
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

- (NSString)toString
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Range::toString(&v11, self->super._internal);
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

- (DOMDocumentFragment)createContextualFragment:(NSString *)html
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  MEMORY[0x1CCA63A40](v14, html);
  v14[8] = 1;
  ContextualFragment = WebCore::Range::createContextualFragment();
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

    mpark::throw_bad_variant_access(ContextualFragment);
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
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(v14, v6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v11);
  return v7;
}

- (__int16)compareNode:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  v5 = WebCore::Range::compareNode(&v10, self->super._internal, refNode->super._internal);
  if (v12)
  {
    if (v12 == 1)
    {
      v13[80] = v10;
      v9 = v11;
      v11 = 0;
      v14 = v9;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v5);
  }

  v7 = v10;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
  return v7;
}

- (BOOL)intersectsNode:(DOMNode *)refNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  v5 = WebCore::Range::intersectsNode(self->super._internal, refNode->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (__int16)comparePoint:(DOMNode *)refNode offset:(int)offset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  v6 = WebCore::Range::comparePoint(self->super._internal, refNode->super._internal);
  if (v11)
  {
    if (v11 == 1)
    {
      v12[80] = v9;
      v13 = v10;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v7);
  return v9;
}

- (BOOL)isPointInRange:(DOMNode *)refNode offset:(int)offset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  if (!refNode)
  {
    raiseTypeErrorException();
  }

  isPointInRange = WebCore::Range::isPointInRange(self->super._internal, refNode->super._internal);
  if (v11)
  {
    if (v11 == 1)
    {
      v12[80] = v9;
      v13 = v10;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(isPointInRange);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v7);
  return v9;
}

- (void)expand:(id)expand
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v9, expand);
  WebCore::Range::expand(&v10, internal, &v9);
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

- (void)move:(unsigned int)move inDirection:(int)direction
{
  MEMORY[0x1CCA64C30](v23, 0);
  WebCore::makeSimpleRange();
  WebCore::VisibleSelection::VisibleSelection();
  WebCore::FrameSelection::setSelection();
  WebCore::VisibleSelection::~VisibleSelection(&v22);
  v6 = v21;
  v21 = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
      v7 = v20;
      v20 = 0;
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    *(v6 + 7) -= 2;
  }

  v7 = v20;
  v20 = 0;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
  }

  else
  {
    *(v7 + 7) -= 2;
  }

LABEL_10:
  if (direction == 4)
  {
    if (!move)
    {
      goto LABEL_14;
    }
  }

  else if (direction == 5)
  {
    if (!move)
    {
      goto LABEL_14;
    }
  }

  else if (!move)
  {
    goto LABEL_14;
  }

  do
  {
    WebCore::FrameSelection::modify();
    --move;
  }

  while (move);
LABEL_14:
  WebCore::Position::parentAnchoredEquivalent(&v22, &v24);
  WebCore::Position::parentAnchoredEquivalent(&v20, &v25);
  if (WebCore::Position::containerNode(&v22))
  {
    v8 = WebCore::Position::containerNode(&v22);
    *(v8 + 28) += 2;
    v16 = v8;
    WebCore::Range::setStart();
    if (v19 == 1 && v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v9);
    }

    if (v16)
    {
      if (*(v16 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v16);
      }

      else
      {
        *(v16 + 7) -= 2;
      }
    }
  }

  if (WebCore::Position::containerNode(&v20))
  {
    v10 = WebCore::Position::containerNode(&v20);
    *(v10 + 28) += 2;
    v17 = v10;
    WebCore::Range::setEnd();
    if (v15 == 1 && v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    if (v17)
    {
      if (*(v17 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v17);
        v12 = v20;
        v20 = 0;
        if (!v12)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      *(v17 + 7) -= 2;
    }
  }

  v12 = v20;
  v20 = 0;
  if (!v12)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (*(v12 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v12);
  }

  else
  {
    *(v12 + 7) -= 2;
  }

LABEL_39:
  v13 = v22;
  v22 = 0;
  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
    }

    else
    {
      *(v13 + 7) -= 2;
    }
  }

  MEMORY[0x1CCA64C40](v23);
}

- (void)extend:(unsigned int)extend inDirection:(int)direction
{
  extendCopy = extend;
  MEMORY[0x1CCA64C30](v22, 0, *&extend, *&direction);
  WebCore::makeSimpleRange();
  WebCore::VisibleSelection::VisibleSelection();
  WebCore::FrameSelection::setSelection();
  WebCore::VisibleSelection::~VisibleSelection(&v21);
  v5 = v20;
  v20 = 0;
  if (!v5)
  {
LABEL_4:
    v6 = v19;
    v19 = 0;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    if (!extendCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_4;
  }

  WebCore::Node::removedLastRef(v5);
  v6 = v19;
  v19 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(v6 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v6);
    if (!extendCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(v6 + 7) -= 2;
    if (!extendCopy)
    {
      goto LABEL_11;
    }
  }

  do
  {
LABEL_10:
    WebCore::FrameSelection::modify();
    --extendCopy;
  }

  while (extendCopy);
LABEL_11:
  WebCore::Position::parentAnchoredEquivalent(&v21, &v23);
  WebCore::Position::parentAnchoredEquivalent(&v19, &v24);
  if (WebCore::Position::containerNode(&v21))
  {
    v7 = WebCore::Position::containerNode(&v21);
    *(v7 + 28) += 2;
    v15 = v7;
    WebCore::Range::setStart();
    if (v18 == 1 && v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v8);
    }

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
  }

  if (WebCore::Position::containerNode(&v19))
  {
    v9 = WebCore::Position::containerNode(&v19);
    *(v9 + 28) += 2;
    v16 = v9;
    WebCore::Range::setEnd();
    if (v14 == 1 && v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    if (v16)
    {
      if (*(v16 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v16);
        v11 = v19;
        v19 = 0;
        if (!v11)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      *(v16 + 7) -= 2;
    }
  }

  v11 = v19;
  v19 = 0;
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (*(v11 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v11);
  }

  else
  {
    *(v11 + 7) -= 2;
  }

LABEL_34:
  v12 = v21;
  v21 = 0;
  if (v12)
  {
    if (*(v12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v12);
    }

    else
    {
      *(v12 + 7) -= 2;
    }
  }

  MEMORY[0x1CCA64C40](v22);
}

- (id)firstNode
{
  WebCore::makeSimpleRange();
  AncestorSibling = v10;
  v3 = *(v10 + 16);
  if ((v3 & 1) == 0)
  {
    v4 = v11;
    if ((v3 & 4) != 0)
    {
      v5 = WebCore::ContainerNode::traverseToChildAt(v10);
      if (v5)
      {
        goto LABEL_9;
      }

      v4 = v11;
      AncestorSibling = v10;
    }

    if (v4)
    {
      v5 = *(AncestorSibling + 8);
      if (v5)
      {
        goto LABEL_9;
      }

      AncestorSibling = WebCore::NodeTraversal::nextAncestorSibling(AncestorSibling, v4);
    }
  }

  v5 = AncestorSibling;
LABEL_9:
  result = kit(v5);
  if (v12)
  {
    if (*(v12 + 7) == 2)
    {
      v8 = result;
      WebCore::Node::removedLastRef(v12);
      result = v8;
      v7 = v10;
      if (!v10)
      {
        return result;
      }

      goto LABEL_13;
    }

    *(v12 + 7) -= 2;
  }

  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_13:
  if (*(v7 + 7) == 2)
  {
    v9 = result;
    WebCore::Node::removedLastRef(v7);
    return v9;
  }

  else
  {
    *(v7 + 7) -= 2;
  }

  return result;
}

- (WebArchive)webArchive
{
  v15 = 256;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v2 = [WebArchive alloc];
  WebCore::makeSimpleRange();
  WebCore::LegacyWebArchive::create();
  v3 = [(WebArchive *)v2 _initWithCoreLegacyWebArchive:&v14];
  v5 = v3;
  if (v3)
  {
    v6 = v3;
  }

  v7 = v14;
  v14 = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 8))(v7);
      v8 = v13;
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    --v7[2];
  }

  v8 = v13;
  if (!v13)
  {
LABEL_11:
    v9 = v12;
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (*(v8 + 7) != 2)
  {
    *(v8 + 7) -= 2;
    goto LABEL_11;
  }

  WebCore::Node::removedLastRef(v8);
  v9 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
  }

  else
  {
    *(v9 + 7) -= 2;
  }

LABEL_17:
  v10 = v17;
  v17 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v4);
  return v5;
}

- (NSString)markupString
{
  WebCore::makeSimpleRange();
  WebCore::documentTypeString(&v18, *(*(v21 + 6) + 8), v2);
  result = WebCore::serializePreservingVisualAppearance();
  if (v18)
  {
    v4 = *(v18 + 1);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if (v17)
    {
LABEL_3:
      v5 = *(v17 + 1);
      if ((v5 | v4) < 0)
      {
        goto LABEL_40;
      }

      goto LABEL_7;
    }
  }

  v5 = 0;
  if (v4 < 0)
  {
LABEL_40:
    v19 = 0;
    goto LABEL_41;
  }

LABEL_7:
  result = (v4 + v5);
  if (__OFADD__(v4, v5))
  {
    goto LABEL_40;
  }

  if (!v18)
  {
    if (!v17)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v7 = (*(v17 + 16) >> 2) & 1;
    goto LABEL_15;
  }

  v6 = *(v18 + 4);
  v7 = (v6 >> 2) & 1;
  if (v17 && (v6 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v7, v18, v17, &v19);
  v8 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v20, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }

    v10 = v20;
    v20 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v20;
      v20 = 0;
      if (v12)
      {
      }
    }

    v13 = v19;
    v19 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v9);
    }

    v14 = v18;
    v18 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v9);
      }
    }

    v15 = v22;
    v22 = 0;
    if (v15)
    {
      if (*(v15 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v15);
        v16 = v21;
        v21 = 0;
        if (!v16)
        {
          return v10;
        }

LABEL_34:
        if (*(v16 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v16);
          return v10;
        }

        *(v16 + 7) -= 2;
        return v10;
      }

      *(v15 + 7) -= 2;
    }

    v16 = v21;
    v21 = 0;
    if (!v16)
    {
      return v10;
    }

    goto LABEL_34;
  }

LABEL_41:
  __break(0xC471u);
  return result;
}

- (id)startPosition
{
  v2 = *(self->super._internal + 4);
  *(v2 + 7) += 2;
  v8 = v2;
  WebCore::Position::Position();
  WebCore::VisiblePosition::VisiblePosition();
  v3 = [WebVisiblePosition _wrapVisiblePosition:&v10];
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
      v5 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    *(v4 + 7) -= 2;
  }

  v5 = v9;
  if (!v9)
  {
LABEL_9:
    v6 = v8;
    if (!v8)
    {
      return v3;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_9;
  }

  WebCore::Node::removedLastRef(v5);
  v6 = v8;
  if (!v8)
  {
    return v3;
  }

LABEL_12:
  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    return v3;
  }

  WebCore::Node::removedLastRef(v6);
  return v3;
}

- (id)endPosition
{
  v2 = *(self->super._internal + 7);
  *(v2 + 7) += 2;
  v8 = v2;
  WebCore::Position::Position();
  WebCore::VisiblePosition::VisiblePosition();
  v3 = [WebVisiblePosition _wrapVisiblePosition:&v10];
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
      v5 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    *(v4 + 7) -= 2;
  }

  v5 = v9;
  if (!v9)
  {
LABEL_9:
    v6 = v8;
    if (!v8)
    {
      return v3;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_9;
  }

  WebCore::Node::removedLastRef(v5);
  v6 = v8;
  if (!v8)
  {
    return v3;
  }

LABEL_12:
  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    return v3;
  }

  WebCore::Node::removedLastRef(v6);
  return v3;
}

- (id)enclosingWordRange
{
  startPosition = [(DOMRange *)self startPosition];
  if (startPosition)
  {
    [startPosition _visiblePosition];
  }

  else
  {
    memset(v15, 0, 24);
  }

  endPosition = [(DOMRange *)self endPosition];
  if (endPosition)
  {
    [endPosition _visiblePosition];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  WebCore::VisibleSelection::VisibleSelection();
  v5 = v16;
  v16 = 0;
  if (!v5)
  {
LABEL_10:
    v6 = v15[0];
    v15[0] = 0;
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_10;
  }

  WebCore::Node::removedLastRef(v5);
  v6 = v15[0];
  v15[0] = 0;
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (*(v6 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v6);
  }

  else
  {
    *(v6 + 7) -= 2;
  }

LABEL_16:
  WebCore::FrameSelection::wordSelectionContainingCaretSelection();
  WebCore::VisibleSelection::operator=(v19, v15);
  WebCore::VisibleSelection::~VisibleSelection(v15);
  WebCore::VisiblePosition::VisiblePosition();
  v7 = [WebVisiblePosition _wrapVisiblePosition:&v14];
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  WebCore::VisiblePosition::VisiblePosition();
  v9 = [WebVisiblePosition _wrapVisiblePosition:&v13];
  v10 = v13;
  v13 = 0;
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

  v11 = [DOMRange rangeForFirstPosition:v7 second:v9];
  WebCore::VisibleSelection::~VisibleSelection(v19);
  return v11;
}

+ (id)rangeForFirstPosition:(id)position second:(id)second
{
  if (position)
  {
    [position _visiblePosition];
    if (second)
    {
LABEL_3:
      [second _visiblePosition];
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (second)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_6:
  if (WebCore::operator<=>() == 0xFF)
  {
    v6 = v25;
    v7 = BYTE4(v26);
    v8 = v26;
    v9 = v27;
    v25 = v22;
    LODWORD(v26) = v23;
    BYTE4(v26) = BYTE4(v23);
    LOBYTE(v27) = v24;
    v22 = v6;
    LODWORD(v23) = v8;
    BYTE4(v23) = v7;
    LOBYTE(v24) = v9;
  }

  WebCore::makeBoundaryPoint(&v30, &v25, v5);
  WebCore::makeBoundaryPoint(&v28, &v22, v10);
  if (v31 == 1 && (v29 & 1) != 0)
  {
    WebCore::SimpleRange::SimpleRange();
    v19 = v32;
    v20 = v33;
    v21 = 1;
    if (v29 != 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v21 = 0;
    if (v29 != 1)
    {
      goto LABEL_16;
    }
  }

  v11 = v28;
  v28 = 0;
  if (v11)
  {
    if (*(v11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v11);
      if (v31 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    *(v11 + 7) -= 2;
  }

LABEL_16:
  if (v31 != 1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v12 = v30;
  v30 = 0;
  if (v12)
  {
    if (*(v12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v12);
    }

    else
    {
      *(v12 + 7) -= 2;
    }
  }

LABEL_23:
  WebCore::createLiveRange();
  v13 = kit(v32);
  v14 = v32;
  v32 = 0;
  if (v14)
  {
    if (*(v14 + 2) == 1)
    {
      (*(*v14 + 8))(v14);
      if (v21 != 1)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    --*(v14 + 2);
  }

  if (v21 != 1)
  {
    goto LABEL_38;
  }

LABEL_29:
  if (v20)
  {
    if (*(v20 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v20);
      v15 = v19;
      if (!v19)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    *(v20 + 7) -= 2;
  }

  v15 = v19;
  if (!v19)
  {
    goto LABEL_38;
  }

LABEL_33:
  if (*(v15 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v15);
  }

  else
  {
    *(v15 + 7) -= 2;
  }

LABEL_38:
  v16 = v22;
  v22 = 0;
  if (!v16)
  {
    goto LABEL_41;
  }

  if (*(v16 + 7) != 2)
  {
    *(v16 + 7) -= 2;
LABEL_41:
    v17 = v25;
    v25 = 0;
    if (!v17)
    {
      return v13;
    }

    goto LABEL_44;
  }

  WebCore::Node::removedLastRef(v16);
  v17 = v25;
  v25 = 0;
  if (!v17)
  {
    return v13;
  }

LABEL_44:
  if (*(v17 + 7) != 2)
  {
    *(v17 + 7) -= 2;
    return v13;
  }

  WebCore::Node::removedLastRef(v17);
  return v13;
}

@end