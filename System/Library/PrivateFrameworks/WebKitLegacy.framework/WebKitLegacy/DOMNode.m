@interface DOMNode
+ (id)_nodeFromJSWrapper:(OpaqueJSValue *)a3;
- (BOOL)contains:(DOMNode *)other;
- (BOOL)containsOnlyInlineObjects;
- (BOOL)dispatchEvent:(id)a3;
- (BOOL)hasAttributes;
- (BOOL)hasChildNodes;
- (BOOL)isConnected;
- (BOOL)isContentEditable;
- (BOOL)isDefaultNamespace:(NSString *)namespaceURI;
- (BOOL)isEqualNode:(DOMNode *)other;
- (BOOL)isHorizontalWritingMode;
- (BOOL)isSameNode:(DOMNode *)other;
- (BOOL)isSelectableBlock;
- (CGRect)_renderRect:(BOOL *)a3;
- (CGRect)boundingBoxUsingTransforms;
- (CGRect)hrefFrame;
- (DOMDocument)ownerDocument;
- (DOMElement)parentElement;
- (DOMNamedNodeMap)attributes;
- (DOMNode)appendChild:(DOMNode *)newChild;
- (DOMNode)cloneNode:(BOOL)deep;
- (DOMNode)firstChild;
- (DOMNode)insertBefore:(DOMNode *)newChild refChild:(DOMNode *)refChild;
- (DOMNode)lastChild;
- (DOMNode)nextSibling;
- (DOMNode)parentNode;
- (DOMNode)previousSibling;
- (DOMNode)removeChild:(DOMNode *)oldChild;
- (DOMNode)replaceChild:(DOMNode *)newChild oldChild:(DOMNode *)oldChild;
- (DOMNodeList)childNodes;
- (NSRect)boundingBox;
- (NSString)baseURI;
- (NSString)description;
- (NSString)localName;
- (NSString)lookupNamespaceURI:(NSString *)prefix;
- (NSString)lookupPrefix:(NSString *)namespaceURI;
- (NSString)namespaceURI;
- (NSString)nodeName;
- (NSString)nodeValue;
- (NSString)prefix;
- (NSString)textContent;
- (RootObject)_rootObject;
- (WebArchive)webArchive;
- (_WKQuad)absoluteQuad;
- (_WKQuad)absoluteQuadAndInsideFixedPosition:(SEL)a3;
- (_WKQuad)innerFrameQuad;
- (double)textHeight;
- (float)computedFontSize;
- (id)absoluteQuads;
- (id)borderRadii;
- (id)boundingBoxes;
- (id)endPosition;
- (id)findExplodedTextNodeAtPoint:(CGPoint)a3;
- (id)hrefLabel;
- (id)hrefTarget;
- (id)hrefTitle;
- (id)hrefURL;
- (id)lineBoxQuads;
- (id)markupString;
- (id)nextFocusNode;
- (id)previousFocusNode;
- (id)rangeOfContainingParagraph;
- (id)rangeOfContents;
- (id)startPosition;
- (id)textRects;
- (id)webArchiveByFilteringSubframes:(id)a3;
- (unsigned)compareDocumentPosition:(DOMNode *)other;
- (unsigned)nodeType;
- (void)_linkElement;
- (void)addEventListener:(id)a3 :(id)a4 :(BOOL)a5;
- (void)addEventListener:(id)a3 listener:(id)a4 useCapture:(BOOL)a5;
- (void)dealloc;
- (void)getPreviewSnapshotImage:(CGImage *)a3 andRects:(id *)a4;
- (void)hidePlaceholder;
- (void)inspect;
- (void)normalize;
- (void)removeEventListener:(id)a3 :(id)a4 :(BOOL)a5;
- (void)removeEventListener:(id)a3 listener:(id)a4 useCapture:(BOOL)a5;
- (void)setNodeValue:(NSString *)nodeValue;
- (void)setPrefix:(NSString *)prefix;
- (void)setTextContent:(NSString *)textContent;
- (void)showPlaceholderIfNecessary;
@end

@implementation DOMNode

- (NSString)description
{
  if (!self->super._internal)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: null>", objc_msgSend(objc_opt_class(), "description"), v8, v9, v10];
  }

  v3 = [(DOMNode *)self nodeValue];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [objc_opt_class() description];
  v6 = [(DOMNode *)self nodeName];
  if (v3)
  {
    return [v4 stringWithFormat:@"<%@ [%@]: %p '%@'>", v5, v6, self->super._internal, v3];
  }

  else
  {
    return [v4 stringWithFormat:@"<%@ [%@]: %p>", v5, v6, self->super._internal, v10];
  }
}

- (RootObject)_rootObject
{
  v2 = *(*(*(self->super._internal + 6) + 8) + 552);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    return WebCore::ScriptController::bindingRootObject(*(v3 + 232));
  }

  else
  {
    return 0;
  }
}

- (NSRect)boundingBox
{
  internal = self->super._internal;
  WebCore::Document::updateLayout();
  v3 = *(internal + 9);
  if (v3)
  {
    WebCore::RenderObject::absoluteBoundingBoxRect(v3, 1, 0);
    WebCore::IntRect::operator CGRect();
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (_WKQuad)absoluteQuad
{
  if (self)
  {
    return [(_WKQuad *)self absoluteQuadAndInsideFixedPosition:0];
  }

  retstr->p3 = 0u;
  retstr->p4 = 0u;
  retstr->p1 = 0u;
  retstr->p2 = 0u;
  return self;
}

- (_WKQuad)absoluteQuadAndInsideFixedPosition:(SEL)a3
{
  internal = self->super._internal;
  WebCore::Document::updateLayout();
  result = *(internal + 9);
  if (result)
  {
    v26 = 0;
    v27 = 0;
    v25 = 0;
    (*(*&result->p1.x + 376))(result, &v26, &v25);
    if (a4)
    {
      *a4 = v25;
    }

    if (HIDWORD(v27) == 1)
    {
      WebCore::FloatPoint::operator CGPoint();
      retstr->p1.x = v11;
      retstr->p1.y = v12;
      WebCore::FloatPoint::operator CGPoint();
      retstr->p2.x = v13;
      retstr->p2.y = v14;
      WebCore::FloatPoint::operator CGPoint();
      retstr->p3.x = v15;
      retstr->p3.y = v16;
      WebCore::FloatPoint::operator CGPoint();
    }

    else
    {
      if (!HIDWORD(v27))
      {
        v9 = *MEMORY[0x1E695EFF8];
        retstr->p1 = *MEMORY[0x1E695EFF8];
        retstr->p2 = v9;
        retstr->p3 = v9;
        retstr->p4 = v9;
        result = v26;
        if (!v26)
        {
          return result;
        }

LABEL_14:
        v26 = 0;
        LODWORD(v27) = 0;
        return WTF::fastFree(result, v8);
      }

      WebCore::unitedBoundingBoxes();
      WebCore::FloatPoint::operator CGPoint();
      retstr->p1.x = v19;
      retstr->p1.y = v20;
      WebCore::FloatPoint::operator CGPoint();
      retstr->p2.x = v21;
      retstr->p2.y = v22;
      WebCore::FloatPoint::operator CGPoint();
      retstr->p3.x = v23;
      retstr->p3.y = v24;
      WebCore::FloatPoint::operator CGPoint();
    }

    retstr->p4.x = v17;
    retstr->p4.y = v18;
    result = v26;
    if (v26)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v10 = *MEMORY[0x1E695EFF8];
    retstr->p1 = *MEMORY[0x1E695EFF8];
    retstr->p2 = v10;
    retstr->p3 = v10;
    retstr->p4 = v10;
  }

  return result;
}

- (CGRect)boundingBoxUsingTransforms
{
  internal = self->super._internal;
  WebCore::Document::updateLayout();
  v3 = *(internal + 9);
  if (v3)
  {
    WebCore::RenderObject::absoluteBoundingBoxRect(v3, 1, 0);
    WebCore::IntRect::operator CGRect();
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)lineBoxQuads
{
  internal = self->super._internal;
  WebCore::Document::updateLayout();
  v3 = *(internal + 9);
  if (!v3)
  {
    return 0;
  }

  v23 = 0;
  v24 = 0;
  (*(*v3 + 376))(v3, &v23, 0);
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v4 initWithCapacity:HIDWORD(v24)];
  if (HIDWORD(v24))
  {
    v7 = v23;
    v8 = (v23 + 32 * HIDWORD(v24));
    do
    {
      v9 = [WKQuadObject alloc];
      WebCore::FloatPoint::operator CGPoint();
      v25[0] = v10;
      v25[1] = v11;
      WebCore::FloatPoint::operator CGPoint();
      v25[2] = v12;
      v25[3] = v13;
      WebCore::FloatPoint::operator CGPoint();
      v25[4] = v14;
      v25[5] = v15;
      v16 = v7 + 24;
      WebCore::FloatPoint::operator CGPoint();
      v25[6] = v17;
      v25[7] = v18;
      v19 = [(WKQuadObject *)v9 initWithQuad:v25];
      if (v19)
      {
        [v6 addObject:v19];
      }

      v7 = (v16 + 8);
    }

    while (v7 != v8);
  }

  if (v6)
  {
    v20 = v6;
  }

  v21 = v23;
  if (v23)
  {
    v23 = 0;
    LODWORD(v24) = 0;
    WTF::fastFree(v21, v5);
  }

  return v6;
}

- (void)_linkElement
{
  if (self)
  {
    for (self = *(self + 2); self; self = *(self + 5))
    {
      if (*(self + 16) & 8) != 0 && (*(self + 36))
      {
        break;
      }
    }
  }

  return self;
}

- (id)hrefURL
{
  if (![(DOMNode *)self _linkElement])
  {
    return 0;
  }

  WebCore::Element::getAttribute();
  WebCore::Document::completeURL();
  WTF::URL::createCFURL(&v9, &v8);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v2);
    }
  }

  return v3;
}

- (id)hrefTarget
{
  if ([(DOMNode *)self _linkElement])
  {
    v2 = *WebCore::Element::getAttribute();
    if (v2)
    {
      atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v9, v2);
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, v3);
      }

      v4 = v9;
      v9 = 0;
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = &stru_1F472E7E8;
      v8 = &stru_1F472E7E8;
      v9 = 0;
    }

    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }

    return v4;
  }

  return 0;
}

- (CGRect)hrefFrame
{
  v2 = [(DOMNode *)self _linkElement];
  if (v2 && (v7 = v2[9]) != 0)
  {
    if ((*(v7 + 45) & 2) != 0)
    {
      __break(0xC471u);
    }

    else
    {
      WebCore::RenderObject::absoluteBoundingBoxRect(v7, 1, 0);
      WebCore::IntRect::operator CGRect();
    }
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)hrefLabel
{
  v2 = [(DOMNode *)self _linkElement];
  if (!v2)
  {
    return 0;
  }

  WebCore::Node::textContent(v2);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v10;
  v10 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }
  }

  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }
  }

  return v4;
}

- (id)hrefTitle
{
  v2 = [(DOMNode *)self _linkElement];
  if (!v2 || (v2[16] & 0x10) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 6) + 8);
  WebCore::HTMLElement::title(&v13, v2);
  WebCore::Document::displayStringModifiedByEncoding(&v14, v5, &v13);
  v6 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v15, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v15 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
  }

  v3 = v15;
  v15 = 0;
  if (v3)
  {
    v8 = v3;
    v9 = v15;
    v15 = 0;
    if (v9)
    {
    }
  }

  v10 = v14;
  v14 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v13;
  v13 = 0;
  if (!v11 || atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    return v3;
  }

  WTF::StringImpl::destroy(v11, v7);
  return v3;
}

- (_WKQuad)innerFrameQuad
{
  internal = self->super._internal;
  WebCore::Document::updateLayout();
  result = *(internal + 9);
  if (result)
  {
    if ((BYTE5(result->p3.y) & 2) != 0 && ((x = result->p3.x, x == 0.0) || (v7 = *(*&x + 8)) == 0))
    {
      result = 121;
      __break(0xC471u);
    }

    else
    {
      WebCore::RenderObject::absoluteBoundingBoxRect(result, 1, 0);
      WebCore::FloatRect::FloatRect();
      WebCore::FloatPoint::operator CGPoint();
      retstr->p1.x = v9;
      retstr->p1.y = v10;
      WebCore::FloatPoint::operator CGPoint();
      retstr->p2.x = v11;
      retstr->p2.y = v12;
      WebCore::FloatPoint::operator CGPoint();
      retstr->p3.x = v13;
      retstr->p3.y = v14;
      result = WebCore::FloatPoint::operator CGPoint();
      retstr->p4.x = v15;
      retstr->p4.y = v16;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695EFF8];
    retstr->p1 = *MEMORY[0x1E695EFF8];
    retstr->p2 = v8;
    retstr->p3 = v8;
    retstr->p4 = v8;
  }

  return result;
}

- (float)computedFontSize
{
  v2 = *(self->super._internal + 9);
  if (!v2)
  {
    return 0.0;
  }

  if ((*(v2 + 45) & 2) == 0)
  {
    return *(WebCore::RenderStyle::fontDescription((v2 + 80)) + 156);
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v2 = *(v3 + 8);
    if (v2)
    {
      return *(WebCore::RenderStyle::fontDescription((v2 + 80)) + 156);
    }
  }

  __break(0xC471u);
  return result;
}

- (id)nextFocusNode
{
  internal = self->super._internal;
  v3 = *(*(*(internal + 6) + 8) + 552);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 0;
  }

  WebCore::FocusController::nextFocusableElement(&v10, *(v6 + 80), internal);
  result = kit(v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      v9 = result;
      WebCore::Node::removedLastRef(v8);
      return v9;
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  return result;
}

- (id)previousFocusNode
{
  internal = self->super._internal;
  v3 = *(*(*(internal + 6) + 8) + 552);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 0;
  }

  WebCore::FocusController::previousFocusableElement(&v10, *(v6 + 80), internal);
  result = kit(v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      v9 = result;
      WebCore::Node::removedLastRef(v8);
      return v9;
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  return result;
}

- (id)textRects
{
  internal = self->super._internal;
  WebCore::Document::updateLayout();
  if (!*(internal + 9))
  {
    return 0;
  }

  WebCore::makeRangeSelectingNodeContents(&v15, internal, v3);
  WebCore::RenderObject::absoluteTextRects();
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v4 initWithCapacity:v19];
  if (v19)
  {
    v7 = v17;
    v8 = 16 * v19;
    do
    {
      NSArrayElement = WebCore::makeNSArrayElement();
      if (NSArrayElement)
      {
        [v6 addObject:NSArrayElement];
      }

      v7 = (v7 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  if (v6)
  {
    v10 = v6;
  }

  v11 = v17;
  if (v17)
  {
    v17 = 0;
    v18 = 0;
    WTF::fastFree(v11, v5);
  }

  v12 = v16;
  v16 = 0;
  if (!v12)
  {
    goto LABEL_14;
  }

  if (*(v12 + 7) != 2)
  {
    *(v12 + 7) -= 2;
LABEL_14:
    v13 = v15;
    v15 = 0;
    if (!v13)
    {
      return v6;
    }

    goto LABEL_15;
  }

  WebCore::Node::removedLastRef(v12);
  v13 = v15;
  v15 = 0;
  if (!v13)
  {
    return v6;
  }

LABEL_15:
  if (*(v13 + 7) != 2)
  {
    *(v13 + 7) -= 2;
    return v6;
  }

  WebCore::Node::removedLastRef(v13);
  return v6;
}

+ (id)_nodeFromJSWrapper:(OpaqueJSValue *)a3
{
  if (*(a3 + 5) < 0xF0u)
  {
    return 0;
  }

  else
  {
    return kit(*(a3 + 3));
  }
}

- (void)getPreviewSnapshotImage:(CGImage *)a3 andRects:(id *)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    return;
  }

  *a3 = 0;
  *a4 = 0;
  if (self)
  {
    internal = self->super._internal;
  }

  else
  {
    internal = 0;
  }

  v7 = *(*(*(*(*(*(*(internal + 6) + 8) + 552) + 8) + 24) + 8) + 316);
  WebCore::makeRangeSelectingNodeContents(v54, internal, a2);
  *v8.i32 = 4.0 / v7;
  v47 = v8;
  WebCore::TextIndicator::createWithRange();
  v9 = v55;
  v55 = 0;
  if (!v9)
  {
LABEL_9:
    Ref = v54[0];
    v54[0] = 0;
    if (!Ref)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (*(v9 + 7) != 2)
  {
    *(v9 + 7) -= 2;
    goto LABEL_9;
  }

  WebCore::Node::removedLastRef(v9);
  Ref = v54[0];
  v54[0] = 0;
  if (!Ref)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (*(Ref + 7) == 2)
  {
    Ref = WebCore::Node::removedLastRef(Ref);
  }

  else
  {
    *(Ref + 7) -= 2;
  }

LABEL_15:
  if (!v50 || (v11 = *(v50 + 12)) == 0)
  {
    if (!*a3)
    {
      goto LABEL_38;
    }

LABEL_27:
    v19 = *(v50 + 24);
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v50 + 17)];
    v21 = *(v50 + 17);
    if (v21)
    {
      v22 = *(v50 + 7);
      v48 = vcvtq_f64_f32(v19);
      v23 = 16 * v21;
      do
      {
        WebCore::FloatRect::operator CGRect();
        v55 = v24;
        v56 = v25;
        v27.f64[1] = v26;
        *v54 = vaddq_f64(v27, v48);
        *&v51 = WebCore::enclosingIntRect(v54, v28);
        *(&v51 + 1) = v29;
        v52 = WebCore::ScrollView::contentsToWindow();
        v53 = v30;
        NSArrayElement = WebCore::makeNSArrayElement();
        if (NSArrayElement)
        {
          [v20 addObject:NSArrayElement];
        }

        v22 += 16;
        v23 -= 16;
      }

      while (v23);
    }

    if (v20)
    {
      v32 = v20;
    }

    *a4 = v20;
    goto LABEL_43;
  }

  v12 = WebCore::DestinationColorSpace::SRGB(Ref);
  (*(*v11 + 304))(v54, v11, v12);
  v13 = WebCore::NativeImage::platformImage(v54[0]);
  v15 = *v13;
  if (*v13)
  {
    CFRetain(*v13);
  }

  v16 = v54[0];
  v54[0] = 0;
  if (v16)
  {
    while (1)
    {
      v17 = v16[1];
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = v16[1];
      atomic_compare_exchange_strong_explicit(v16 + 1, &v18, v17 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v17)
      {
        if (v17 == 3)
        {
          (*(*v16 + 8))(v16);
        }

        goto LABEL_24;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v16[1], v14);
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_24:
  if (v15)
  {
LABEL_36:
    CFAutorelease(v15);
  }

LABEL_37:
  *a3 = v15;
  if (v15)
  {
    goto LABEL_27;
  }

LABEL_38:
  v33 = *(internal + 9);
  if (v33)
  {
    if ((*(v33 + 26) & 0x107) == 0x103)
    {
      WebCore::RenderBox::absoluteContentQuad(v54, v33);
      WebCore::FloatQuad::boundingBox(v54);
      v52 = __PAIR64__(v35, v34);
      v53 = __PAIR64__(v37, v36);
      WebCore::enclosingIntRect(&v52, v38);
      WebCore::FloatRect::FloatRect();
      v40 = v49;
    }

    else
    {
      v52 = WebCore::RenderObject::absoluteBoundingBoxRect(v33, 1, 0);
      v53 = v41;
      WebCore::FloatRect::FloatRect();
      v40 = *v54;
    }

    v42 = vdupq_lane_s32(v47, 0).u64[0];
    *&v40 = vsub_f32(*&v40, v42);
    *(&v40 + 1) = vadd_f32(vadd_f32(v42, *(&v40 + 8)), v42);
    v51 = v40;
    v52 = WebCore::enclosingIntRect(&v51, v39);
    v53 = v43;
    v54[0] = WebCore::ScrollView::contentsToWindow();
    v54[1] = v44;
    v57[0] = WebCore::makeNSArrayElement();
    *a4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  }

LABEL_43:
  if (v50)
  {
    if (*v50 == 1)
    {
      WebCore::TextIndicator::~TextIndicator(v50);
      WTF::fastFree(v45, v46);
    }

    else
    {
      --*v50;
    }
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
      if (*(internal + 7) == 2)
      {
        WebCore::Node::removedLastRef(internal);
      }

      else
      {
        *(internal + 7) -= 2;
      }
    }

    v5.receiver = self;
    v5.super_class = DOMNode;
    [(DOMObject *)&v5 dealloc];
  }
}

- (NSString)nodeName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  (*(*self->super._internal + 104))(&v11);
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

- (NSString)nodeValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  (*(*self->super._internal + 112))(&v11);
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

- (void)setNodeValue:(NSString *)nodeValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v9, nodeValue);
  (*(*internal + 120))(&v10, internal, &v9);
  if (v12 == 1)
  {
    v7 = v11;
    v11 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  v8 = v9;
  v9 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
}

- (unsigned)nodeType
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super._internal + 16) >> 12;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)parentNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 5));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMNodeList)childNodes
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Node::childNodes(&v7, self->super._internal);
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

- (DOMNode)firstChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super._internal;
  if (internal)
  {
    v4 = (*(internal + 16) & 4) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(internal + 11);
  }

  v6 = kit(v5);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  return v6;
}

- (DOMNode)lastChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super._internal;
  if (internal)
  {
    v4 = (*(internal + 16) & 4) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(internal + 12);
  }

  v6 = kit(v5);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  return v6;
}

- (DOMNode)previousSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 7));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMNode)nextSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 8));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMDocument)ownerDocument
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(*(self->super._internal + 6) + 8));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (NSString)namespaceURI
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(*(*self->super._internal + 152))(self->super._internal);
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

- (NSString)prefix
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(*(*self->super._internal + 160))(self->super._internal);
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

- (void)setPrefix:(NSString *)prefix
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super._internal;
  WTF::AtomStringImpl::add(v15, prefix, v6);
  v10 = v15[0];
  (*(*internal + 168))(&v11, internal, &v10);
  if (v13 == 1)
  {
    LOBYTE(v15[0]) = v11;
    v9 = v12;
    v12 = 0;
    v15[1] = v9;
    raiseDOMErrorException();
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v7);
}

- (NSString)localName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(*(*self->super._internal + 144))(self->super._internal);
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

- (DOMNamedNodeMap)attributes
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super._internal;
  if (internal)
  {
    v4 = (*(internal + 16) & 8) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = WebCore::Element::attributesMap(internal);
  }

  v6 = kit(v5);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  return v6;
}

- (NSString)baseURI
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::Node::baseURI(self->super._internal);
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

- (NSString)textContent
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WebCore::Node::textContent(self->super._internal);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v10;
  v10 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v3);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v4;
}

- (void)setTextContent:(NSString *)textContent
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  MEMORY[0x1CCA63A40](&v7, textContent);
  WebCore::Node::setTextContent();
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  v6 = v7;
  v7 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v4);
}

- (BOOL)isConnected
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = (*(self->super._internal + 2) >> 51) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMElement)parentElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v3 = *(self->super._internal + 5);
  if (v3)
  {
    if ((*(v3 + 32) & 8) != 0)
    {
      v4 = *(self->super._internal + 5);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (BOOL)isContentEditable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::Node::isContentEditable(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)insertBefore:(DOMNode *)newChild refChild:(DOMNode *)refChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  if (!newChild)
  {
    raiseTypeErrorException();
  }

  if (refChild)
  {
    internal = refChild->super._internal;
    if (internal)
    {
      *(internal + 7) += 2;
    }
  }

  else
  {
    internal = 0;
  }

  v9 = internal;
  WebCore::Node::insertBefore();
  if (v12 == 1)
  {
    v13[80] = v10;
    v14 = v11;
    raiseDOMErrorException();
  }

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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v7);
  return newChild;
}

- (DOMNode)replaceChild:(DOMNode *)newChild oldChild:(DOMNode *)oldChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  if (!newChild || !oldChild)
  {
    raiseTypeErrorException();
  }

  WebCore::Node::replaceChild(&v10, self->super._internal, newChild->super._internal, oldChild->super._internal);
  if (v12 == 1)
  {
    v13[80] = v10;
    v9 = v11;
    v11 = 0;
    v14 = v9;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v7);
  return oldChild;
}

- (DOMNode)removeChild:(DOMNode *)oldChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (!oldChild)
  {
    raiseTypeErrorException();
  }

  WebCore::Node::removeChild(&v8, self->super._internal, oldChild->super._internal);
  if (v10 == 1)
  {
    v11[80] = v8;
    v7 = v9;
    v9 = 0;
    v12 = v7;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return oldChild;
}

- (DOMNode)appendChild:(DOMNode *)newChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (!newChild)
  {
    raiseTypeErrorException();
  }

  WebCore::Node::appendChild(&v8, self->super._internal, newChild->super._internal);
  if (v10 == 1)
  {
    v11[80] = v8;
    v7 = v9;
    v9 = 0;
    v12 = v7;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return newChild;
}

- (BOOL)hasChildNodes
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super._internal;
  if (internal)
  {
    v5 = (*(internal + 16) & 4) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5 && *(internal + 11) != 0;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v6;
}

- (DOMNode)cloneNode:(BOOL)deep
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v4 = WebCore::Node::cloneNodeForBindings(self->super._internal);
  if (v10)
  {
    if (v10 == 1)
    {
      v11[80] = v8;
      v12 = v9;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v4);
  }

  v6 = kit(v8);
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return v6;
}

- (void)normalize
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::Node::normalize(&v5, self->super._internal);
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

- (BOOL)hasAttributes
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super._internal;
  if (internal)
  {
    v5 = (*(internal + 16) & 8) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    hasAttributes = 0;
  }

  else
  {
    hasAttributes = WebCore::Element::hasAttributes(internal);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return hasAttributes;
}

- (BOOL)isSameNode:(DOMNode *)other
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  if (other)
  {
    internal = other->super._internal;
  }

  else
  {
    internal = 0;
  }

  v7 = self->super._internal == internal;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v5);
  return v7;
}

- (BOOL)isEqualNode:(DOMNode *)other
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  if (other)
  {
    internal = other->super._internal;
  }

  else
  {
    internal = 0;
  }

  isEqualNode = WebCore::Node::isEqualNode(self->super._internal, internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  return isEqualNode;
}

- (NSString)lookupPrefix:(NSString *)namespaceURI
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  WTF::AtomStringImpl::add(&v15, namespaceURI, v4);
  v12 = v15;
  v5 = *WebCore::Node::lookupPrefix();
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v7 = v13;
  v13 = 0;
  if (v7)
  {
    v8 = v7;
    v9 = v13;
    v13 = 0;
    if (v9)
    {
    }
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v6);
  return v7;
}

- (NSString)lookupNamespaceURI:(NSString *)prefix
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  WTF::AtomStringImpl::add(&v15, prefix, v4);
  v12 = v15;
  v5 = *WebCore::Node::lookupNamespaceURI();
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v7 = v13;
  v13 = 0;
  if (v7)
  {
    v8 = v7;
    v9 = v13;
    v13 = 0;
    if (v9)
    {
    }
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v6);
  return v7;
}

- (BOOL)isDefaultNamespace:(NSString *)namespaceURI
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  WTF::AtomStringImpl::add(&v10, namespaceURI, v4);
  v8 = v10;
  isDefaultNamespace = WebCore::Node::isDefaultNamespace();
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v5);
  return isDefaultNamespace;
}

- (unsigned)compareDocumentPosition:(DOMNode *)other
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  if (other)
  {
    v6 = WebCore::Node::compareDocumentPosition(self->super._internal, other->super._internal);
  }

  else
  {
    v6 = 1;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v5);
  return v6;
}

- (BOOL)contains:(DOMNode *)other
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  if (other && (v6 = other->super._internal) != 0)
  {
    internal = self->super._internal;
    if (v6 == internal)
    {
      isDescendantOf = 1;
    }

    else
    {
      isDescendantOf = WebCore::Node::isDescendantOf(v6, internal);
    }
  }

  else
  {
    isDescendantOf = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, internal);
  return isDescendantOf;
}

- (void)inspect
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Node::inspect(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (void)addEventListener:(id)a3 listener:(id)a4 useCapture:(BOOL)a5
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v22);
  WTF::AtomStringImpl::add(&v17, a3, v8);
  v21 = v17;
  if (a4)
  {
    v9 = WebCore::ObjCEventListener::find(a4);
    if (v9)
    {
      ++*(v9 + 16);
    }

    else
    {
      v16 = WTF::fastMalloc(0x20);
      WebCore::ObjCEventListener::ObjCEventListener(v16, a4);
      v9 = v16;
    }
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  LOBYTE(v17) = a5;
  v19 = 1;
  WebCore::EventTarget::addEventListenerForBindings();
  if (v19 || (v11 = v18, v18 = 0, !v11))
  {
LABEL_9:
    v12 = v20;
    v20 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (*(v11 + 24) != 1)
  {
    --*(v11 + 24);
    goto LABEL_9;
  }

  v14 = MEMORY[0x1CCA63EC0]();
  bmalloc::api::tzoneFree(v14, v15);
  v12 = v20;
  v20 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v12[4] == 1)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    --v12[4];
  }

LABEL_13:
  v13 = v21;
  v21 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v22, v10);
}

- (void)addEventListener:(id)a3 :(id)a4 :(BOOL)a5
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v22);
  WTF::AtomStringImpl::add(&v17, a3, v8);
  v21 = v17;
  if (a4)
  {
    v9 = WebCore::ObjCEventListener::find(a4);
    if (v9)
    {
      ++*(v9 + 16);
    }

    else
    {
      v16 = WTF::fastMalloc(0x20);
      WebCore::ObjCEventListener::ObjCEventListener(v16, a4);
      v9 = v16;
    }
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  LOBYTE(v17) = a5;
  v19 = 1;
  WebCore::EventTarget::addEventListenerForBindings();
  if (v19 || (v11 = v18, v18 = 0, !v11))
  {
LABEL_9:
    v12 = v20;
    v20 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (*(v11 + 24) != 1)
  {
    --*(v11 + 24);
    goto LABEL_9;
  }

  v14 = MEMORY[0x1CCA63EC0]();
  bmalloc::api::tzoneFree(v14, v15);
  v12 = v20;
  v20 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v12[4] == 1)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    --v12[4];
  }

LABEL_13:
  v13 = v21;
  v21 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v22, v10);
}

- (void)removeEventListener:(id)a3 listener:(id)a4 useCapture:(BOOL)a5
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  WTF::AtomStringImpl::add(&v15, a3, v7);
  v13 = v15;
  if (a4)
  {
    v8 = WebCore::ObjCEventListener::find(a4);
    if (v8)
    {
      ++*(v8 + 16);
    }

    else
    {
      v12 = WTF::fastMalloc(0x20);
      WebCore::ObjCEventListener::ObjCEventListener(v12, a4);
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  WebCore::EventTarget::removeEventListenerForBindings();
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    if (*(v10 + 4) == 1)
    {
      (*(*v10 + 8))(v10);
      v11 = v13;
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    --*(v10 + 4);
  }

  v11 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

LABEL_13:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v9);
}

- (void)removeEventListener:(id)a3 :(id)a4 :(BOOL)a5
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  WTF::AtomStringImpl::add(&v15, a3, v7);
  v13 = v15;
  if (a4)
  {
    v8 = WebCore::ObjCEventListener::find(a4);
    if (v8)
    {
      ++*(v8 + 16);
    }

    else
    {
      v12 = WTF::fastMalloc(0x20);
      WebCore::ObjCEventListener::ObjCEventListener(v12, a4);
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  WebCore::EventTarget::removeEventListenerForBindings();
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    if (*(v10 + 4) == 1)
    {
      (*(*v10 + 8))(v10);
      v11 = v13;
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    --*(v10 + 4);
  }

  v11 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

LABEL_13:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v9);
}

- (BOOL)dispatchEvent:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  if (!a3)
  {
    raiseTypeErrorException();
  }

  v4 = WebCore::EventTarget::dispatchEventForBindings();
  if (v9)
  {
    if (v9 == 1)
    {
      v10[80] = v7;
      v11 = v8;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
  return v7;
}

- (id)boundingBoxes
{
  v9[1] = *MEMORY[0x1E69E9840];
  [(DOMNode *)self boundingBox];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (!NSIsEmptyRect(v10))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(NSString *)[(DOMCSSStyleDeclaration *)[(DOMDocument *)[(DOMNode *)self ownerDocument] getComputedStyle:self pseudoElement:&stru_1F472E7E8] getPropertyValue:@"display"] isEqualToString:@"inline"])
      {
        goto LABEL_2;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v7 = [(DOMNode *)self lineBoxRects];
    if ([(NSArray *)v7 count])
    {
      return v7;
    }

    goto LABEL_3;
  }

LABEL_2:
  v7 = 0;
  if (![0 count])
  {
LABEL_3:
    v9[0] = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v7;
}

- (id)absoluteQuads
{
  v8[1] = *MEMORY[0x1E69E9840];
  [(DOMNode *)self boundingBox];
  if (NSIsEmptyRect(v9))
  {
LABEL_2:
    v3 = 0;
    if ([0 count])
    {
      return v3;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(NSString *)[(DOMCSSStyleDeclaration *)[(DOMDocument *)[(DOMNode *)self ownerDocument] getComputedStyle:self pseudoElement:&stru_1F472E7E8] getPropertyValue:@"display"] isEqualToString:@"inline"])
    {
      goto LABEL_2;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v3 = [(DOMNode *)self lineBoxQuads];
  if ([v3 count])
  {
    return v3;
  }

LABEL_9:
  v4 = [WKQuadObject alloc];
  if (self)
  {
    [(DOMNode *)self absoluteQuad];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [(WKQuadObject *)v4 initWithQuad:v7];
  v8[0] = v5;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  if (v5)
  {
  }

  return v3;
}

- (id)borderRadii
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = *(self->super._internal + 9);
  if (v2 && (*(v2 + 45) & 4) != 0)
  {
    WebCore::RenderBox::borderRadii(&v10, v2);
    v5 = MEMORY[0x1E696B098];
    WebCore::FloatSize::operator CGSize();
    v12[0] = [v5 valueWithSize:?];
    v6 = MEMORY[0x1E696B098];
    WebCore::FloatSize::operator CGSize();
    v12[1] = [v6 valueWithSize:?];
    v7 = MEMORY[0x1E696B098];
    WebCore::FloatSize::operator CGSize();
    v12[2] = [v7 valueWithSize:?];
    v8 = MEMORY[0x1E696B098];
    WebCore::FloatSize::operator CGSize();
    v12[3] = [v8 valueWithSize:?];
    v3 = MEMORY[0x1E695DEC8];
    v4 = v12;
  }

  else
  {
    v11[0] = [MEMORY[0x1E696B098] valueWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v11[1] = v11[0];
    v11[2] = v11[0];
    v11[3] = v11[0];
    v3 = MEMORY[0x1E695DEC8];
    v4 = v11;
  }

  return [v3 arrayWithObjects:v4 count:4];
}

- (BOOL)containsOnlyInlineObjects
{
  v2 = *(self->super._internal + 9);
  if (!v2 || (v2[22] & 4) == 0 || (v2[45] & 0x40) == 0 || WebCore::RenderBoxModelObject::inlineContinuation(*(self->super._internal + 9)))
  {
    return 0;
  }

  v4 = v2[46];
  return v4 != 35 && v4 != 63;
}

- (BOOL)isSelectableBlock
{
  v2 = *(self->super._internal + 9);
  if (v2)
  {
    LOBYTE(v2) = (*(v2 + 52) & 7) == 1 || (*(v2 + 45) & 0x40) != 0 && WebCore::RenderBoxModelObject::inlineContinuation(v2) != 0;
  }

  return v2;
}

- (id)rangeOfContainingParagraph
{
  if (self)
  {
    internal = self->super._internal;
    if (internal)
    {
      *(internal + 7) += 2;
    }
  }

  else
  {
    internal = 0;
  }

  v14 = internal;
  WebCore::Position::Position();
  WebCore::VisiblePosition::VisiblePosition();
  v3 = v15;
  v15 = 0;
  if (!v3)
  {
LABEL_8:
    v4 = v14;
    v14 = 0;
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (*(v3 + 7) != 2)
  {
    *(v3 + 7) -= 2;
    goto LABEL_8;
  }

  WebCore::Node::removedLastRef(v3);
  v4 = v14;
  v14 = 0;
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*(v4 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v4);
  }

  else
  {
    *(v4 + 7) -= 2;
  }

LABEL_14:
  WebCore::startOfParagraph();
  WebCore::endOfParagraph();
  WebCore::makeSimpleRange<WebCore::VisiblePosition,WebCore::VisiblePosition>(&v14, &v13, &v15);
  WebCore::createLiveRange();
  v5 = kit(v19);
  v6 = v19;
  v19 = 0;
  if (v6)
  {
    if (*(v6 + 2) == 1)
    {
      (*(*v6 + 8))(v6);
      if (v17 != 1)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    --*(v6 + 2);
  }

  if (v17 != 1)
  {
    goto LABEL_29;
  }

LABEL_20:
  v7 = v16;
  v16 = 0;
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v7);
      v8 = v15;
      v15 = 0;
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    *(v7 + 7) -= 2;
  }

  v8 = v15;
  v15 = 0;
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (*(v8 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v8);
  }

  else
  {
    *(v8 + 7) -= 2;
  }

LABEL_29:
  var0 = v13.var0.var0.var0;
  v13.var0.var0.var0 = 0;
  if (var0)
  {
    if (*(var0 + 7) == 2)
    {
      WebCore::Node::removedLastRef(var0);
      v10 = v14;
      v14 = 0;
      if (!v10)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    *(var0 + 7) -= 2;
  }

  v10 = v14;
  v14 = 0;
  if (!v10)
  {
LABEL_37:
    v11 = v18;
    v18 = 0;
    if (!v11)
    {
      return v5;
    }

    goto LABEL_40;
  }

LABEL_35:
  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
    goto LABEL_37;
  }

  WebCore::Node::removedLastRef(v10);
  v11 = v18;
  v18 = 0;
  if (!v11)
  {
    return v5;
  }

LABEL_40:
  if (*(v11 + 7) != 2)
  {
    *(v11 + 7) -= 2;
    return v5;
  }

  WebCore::Node::removedLastRef(v11);
  return v5;
}

- (double)textHeight
{
  v2 = *(self->super._internal + 9);
  if (!v2 || (*(v2 + 45) & 2) == 0)
  {
    return 1.79769313e308;
  }

  WebCore::RenderStyle::computedLineHeight((*(*(v2 + 32) + 8) + 80));
  return v4;
}

- (id)findExplodedTextNodeAtPoint:(CGPoint)a3
{
  v8 = a3;
  v3 = *(self->super._internal + 9);
  if (!v3 || (*(v3 + 26) & 7) != 1)
  {
    return 0;
  }

  WebCore::FloatPoint::FloatPoint(v7, &v8);
  result = WebCore::RenderBlockFlow::findClosestTextAtAbsolutePoint(v3, v7);
  if (result)
  {
    v5 = result;
    result = WebCore::RenderText::textNode(result);
    if (result)
    {
      v6 = WebCore::RenderText::textNode(v5);
      return kit(v6);
    }
  }

  return result;
}

- (WebArchive)webArchive
{
  v11 = 256;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  v2 = [WebArchive alloc];
  WebCore::LegacyWebArchive::create();
  v3 = [(WebArchive *)v2 _initWithCoreLegacyWebArchive:&v10];
  v5 = v3;
  if (v3)
  {
    v6 = v3;
  }

  v7 = v10;
  v10 = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  v8 = v13;
  v13 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v4);
  return v5;
}

- (id)webArchiveByFilteringSubframes:(id)a3
{
  v15 = 256;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v4 = [WebArchive alloc];
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F472B4C8;
  v5[1] = a3;
  v13 = v5;
  WebCore::LegacyWebArchive::create();
  v7 = [(WebArchive *)v4 _initWithCoreLegacyWebArchive:&v14];
  v8 = v14;
  v14 = 0;
  if (!v8)
  {
LABEL_4:
    v9 = v13;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v8[2] != 1)
  {
    --v8[2];
    goto LABEL_4;
  }

  (*(*v8 + 8))(v8);
  v9 = v13;
  if (v13)
  {
LABEL_5:
    (*(*v9 + 8))(v9);
  }

LABEL_6:
  if (v7)
  {
    v10 = v7;
  }

  v11 = v17;
  v17 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v6);
  return v7;
}

- (BOOL)isHorizontalWritingMode
{
  if (!self)
  {
    return 1;
  }

  internal = self->super._internal;
  if (!internal)
  {
    return 1;
  }

  v3 = *(internal + 9);
  if (!v3)
  {
    return 1;
  }

  if ((*(v3 + 45) & 2) == 0)
  {
    return (*(v3 + 120) & 1) == 0;
  }

  v4 = *(v3 + 32);
  if (v4)
  {
    v3 = *(v4 + 8);
    if (v3)
    {
      return (*(v3 + 120) & 1) == 0;
    }
  }

  result = 121;
  __break(0xC471u);
  return result;
}

- (void)hidePlaceholder
{
  if (self)
  {
    internal = self->super._internal;
    if (internal)
    {
      if ((*(internal + 16) & 8) != 0 && (*(*internal + 864))(self->super._internal, a2))
      {
        if (*(internal + 16) & 8) != 0 && ((*(*internal + 864))(internal))
        {

          WebCore::HTMLTextFormControlElement::setCanShowPlaceholder(internal);
        }

        else
        {
          __break(0xC471u);
        }
      }
    }
  }
}

- (void)showPlaceholderIfNecessary
{
  if (self)
  {
    internal = self->super._internal;
    if (internal)
    {
      if ((*(internal + 16) & 8) != 0 && (*(*internal + 864))(self->super._internal, a2))
      {
        if (*(internal + 16) & 8) != 0 && ((*(*internal + 864))(internal))
        {

          WebCore::HTMLTextFormControlElement::setCanShowPlaceholder(internal);
        }

        else
        {
          __break(0xC471u);
        }
      }
    }
  }
}

- (id)markupString
{
  internal = self->super._internal;
  v28 = 0;
  v29 = 0;
  v27[0] = 0;
  v27[1] = 0;
  WebCore::serializeFragment();
  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v3);
  v5 = v28;
  if (HIDWORD(v29))
  {
    v6 = 8 * HIDWORD(v29);
    do
    {
      v7 = *v5;
      *v5 = 0;
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

      v5 = (v5 + 8);
      v6 -= 8;
    }

    while (v6);
    v5 = v28;
  }

  if (v5)
  {
    v28 = 0;
    LODWORD(v29) = 0;
    WTF::fastFree(v5, v4);
  }

  if ((*(internal + 16) >> 12) - 11 > 0xFFFFFFFD)
  {
    goto LABEL_41;
  }

  result = WebCore::documentTypeString(&v26, *(*(internal + 6) + 8), v4);
  v9 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
  }

  if (v26)
  {
    v10 = *(v26 + 1);
    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
LABEL_16:
      v11 = *(v9 + 1);
      if ((v11 | v10) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_20;
    }
  }

  v11 = 0;
  if (v10 < 0)
  {
LABEL_52:
    v28 = 0;
    goto LABEL_53;
  }

LABEL_20:
  result = (v10 + v11);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_52;
  }

  if (v26)
  {
    v12 = *(v26 + 4);
    v13 = (v12 >> 2) & 1;
    if (!v9 || (v12 & 4) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (!v9)
  {
    v13 = 1;
    goto LABEL_28;
  }

  v13 = (*(v9 + 16) >> 2) & 1;
LABEL_28:
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v13, v26, v9, &v28);
  v15 = v28;
  if (!v28)
  {
LABEL_53:
    __break(0xC471u);
    return result;
  }

  v28 = 0;
  v16 = v30;
  v30 = v15;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v28;
    v28 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v14);
  }

  v18 = v26;
  v26 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v14);
  }

LABEL_41:
  v19 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v28, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }
  }

  else
  {
    v28 = &stru_1F472E7E8;
    v25 = &stru_1F472E7E8;
  }

  v21 = v28;
  v28 = 0;
  if (v21)
  {
    v22 = v21;
    v23 = v28;
    v28 = 0;
    if (v23)
    {
    }
  }

  v24 = v30;
  v30 = 0;
  if (v24)
  {
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v20);
    }
  }

  return v21;
}

- (CGRect)_renderRect:(BOOL *)a3
{
  if (self)
  {
    self = self->super._internal;
  }

  WebCore::Node::absoluteBoundingRect(self, a3);
  WebCore::IntRect::operator CGRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)rangeOfContents
{
  v3 = [(DOMDocument *)[(DOMNode *)self ownerDocument] createRange];
  [(DOMRange *)v3 setStart:self offset:0];
  [(DOMRange *)v3 setEnd:self offset:[(DOMNodeList *)[(DOMNode *)self childNodes] length]];
  return v3;
}

- (id)startPosition
{
  if (!self)
  {
    if (WebCore::Node::isContentEditable(0))
    {
      internal = 0;
      goto LABEL_7;
    }

LABEL_12:
    v8 = [(DOMNode *)self rangeOfContents];

    return [v8 startPosition];
  }

  internal = self->super._internal;
  if ((WebCore::Node::isContentEditable(internal) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (internal)
  {
    *(internal + 7) += 2;
  }

LABEL_7:
  WebCore::Position::Position();
  WebCore::VisiblePosition::VisiblePosition();
  WebCore::startOfEditableContent(v14, &v13, v4);
  v5 = [WebVisiblePosition _wrapVisiblePosition:v14];
  v6 = v14[0];
  v14[0] = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
      v7 = v13;
      v13 = 0;
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    *(v6 + 7) -= 2;
  }

  v7 = v13;
  v13 = 0;
  if (!v7)
  {
LABEL_18:
    v10 = v12;
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_16:
  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    goto LABEL_18;
  }

  WebCore::Node::removedLastRef(v7);
  v10 = v12;
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (*(v10 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v10);
    v11 = internal;
    if (!internal)
    {
      return v5;
    }

    goto LABEL_26;
  }

  *(v10 + 7) -= 2;
LABEL_23:
  v11 = internal;
  if (!internal)
  {
    return v5;
  }

LABEL_26:
  if (*(v11 + 7) != 2)
  {
    *(v11 + 7) -= 2;
    return v5;
  }

  WebCore::Node::removedLastRef(v11);
  return v5;
}

- (id)endPosition
{
  if (!self)
  {
    if (WebCore::Node::isContentEditable(0))
    {
      internal = 0;
      goto LABEL_7;
    }

LABEL_12:
    v8 = [(DOMNode *)self rangeOfContents];

    return [v8 endPosition];
  }

  internal = self->super._internal;
  if ((WebCore::Node::isContentEditable(internal) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (internal)
  {
    *(internal + 7) += 2;
  }

LABEL_7:
  WebCore::Position::Position();
  WebCore::VisiblePosition::VisiblePosition();
  WebCore::endOfEditableContent(v14, &v13, v4);
  v5 = [WebVisiblePosition _wrapVisiblePosition:v14];
  v6 = v14[0];
  v14[0] = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
      v7 = v13;
      v13 = 0;
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    *(v6 + 7) -= 2;
  }

  v7 = v13;
  v13 = 0;
  if (!v7)
  {
LABEL_18:
    v10 = v12;
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_16:
  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    goto LABEL_18;
  }

  WebCore::Node::removedLastRef(v7);
  v10 = v12;
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (*(v10 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v10);
    v11 = internal;
    if (!internal)
    {
      return v5;
    }

    goto LABEL_26;
  }

  *(v10 + 7) -= 2;
LABEL_23:
  v11 = internal;
  if (!internal)
  {
    return v5;
  }

LABEL_26:
  if (*(v11 + 7) != 2)
  {
    *(v11 + 7) -= 2;
    return v5;
  }

  WebCore::Node::removedLastRef(v11);
  return v5;
}

@end