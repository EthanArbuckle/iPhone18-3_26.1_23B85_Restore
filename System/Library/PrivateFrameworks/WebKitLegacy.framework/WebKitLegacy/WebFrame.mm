@interface WebFrame
+ (Ref<WebCore::LocalFrame,)_createFrameWithPage:(void *)page frameName:(const void *)name frameView:(id)view ownerElement:(void *)element;
+ (Ref<WebCore::LocalFrame,)_createSubframeWithOwnerElement:(void *)element page:(void *)page frameName:(const void *)name frameView:(id)view;
+ (id)stringWithData:(id)data textEncodingName:(id)name;
+ (void)_createMainFrameWithPage:(void *)page frameName:(const void *)name frameView:(id)view;
+ (void)_createMainFrameWithSimpleHTMLDocumentWithPage:(void *)page frameView:(id)view style:(id)style;
- (BOOL)_allowsFollowingLink:(id)link;
- (BOOL)_canProvideDocumentSource;
- (BOOL)_getVisibleRect:(CGRect *)rect;
- (BOOL)_hasSelection;
- (BOOL)_isDescendantOfFrame:(id)frame;
- (BOOL)_isDisplayingStandaloneImage;
- (BOOL)_isFrameSet;
- (BOOL)_isIncludedInWebKitStatistics;
- (BOOL)_isVisuallyNonEmpty;
- (BOOL)_needsLayout;
- (BOOL)focusedNodeHasContent;
- (BOOL)hasRichlyEditableDragCaret;
- (BOOL)isTelephoneNumberParsingAllowed;
- (BOOL)isTelephoneNumberParsingEnabled;
- (BOOL)renderedCharactersExceed:(unint64_t)exceed;
- (BOOL)selectionAtDocumentStart;
- (BOOL)selectionAtSentenceStart;
- (BOOL)selectionAtWordStart;
- (BOOL)setRangedSelectionExtentPoint:(CGPoint)point baseIsStart:(BOOL)start allowFlipping:(BOOL)flipping;
- (BOOL)setSelectionWithBasePoint:(CGPoint)point extentPoint:(CGPoint)extentPoint baseIsStart:(BOOL)start allowFlipping:(BOOL)flipping;
- (BOOL)spaceFollowsWordInRange:(id)range;
- (CGColor)_bodyBackgroundColor;
- (CGColor)caretColor;
- (CGRect)_caretRectAtPosition:(const void *)position affinity:(unint64_t)affinity;
- (CGRect)_firstRectForDOMRange:(id)range;
- (CGRect)caretRect;
- (CGRect)caretRectAtNode:(id)node offset:(int)offset affinity:(unint64_t)affinity;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)point;
- (CGRect)elementRectAtPoint:(CGPoint)point;
- (CGRect)rectForScrollToVisible;
- (CGRect)renderRectForPoint:(CGPoint)point isReplaced:(BOOL *)replaced fontSize:(float *)size;
- (CGSize)renderedSizeOfNode:(id)node constrainedToWidth:(float)width;
- (DOMDocument)DOMDocument;
- (DOMHTMLElement)frameElement;
- (JSContext)javaScriptContext;
- (JSGlobalContextRef)globalContext;
- (NSArray)childFrames;
- (NSString)name;
- (OpaqueJSContext)_globalContextForScriptWorld:(id)world;
- (OpaqueJSValue)jsWrapperForNode:(id)node inScriptWorld:(id)world;
- (OptionSet<WebCore::PaintBehavior>)_paintBehaviorForDestinationContext:(CGContext *)context;
- (VisiblePosition)_visiblePositionForPoint:(SEL)point;
- (VisiblePosition)closestWordBoundary:(SEL)boundary;
- (VisiblePosition)visiblePositionForPoint:(SEL)point;
- (WebDataSource)dataSource;
- (WebDataSource)provisionalDataSource;
- (WebFrame)findFrameNamed:(NSString *)name;
- (WebFrame)parentFrame;
- (WebScriptObject)windowObject;
- (WebView)webView;
- (_NSRange)_convertDOMRangeToNSRange:(id)range;
- (_NSRange)_convertToNSRange:(const void *)range;
- (_NSRange)_selectedNSRange;
- (__CTFont)fontForSelection:(BOOL *)selection;
- (id)_cacheabilityDictionary;
- (id)_characterRangeAtPoint:(CGPoint)point;
- (id)_computePageRectsWithPrintScaleFactor:(float)factor pageSize:(CGSize)size;
- (id)_convertNSRangeToDOMRange:(_NSRange)range;
- (id)_dataSource;
- (id)_documentFragmentForImageData:(id)data withRelativeURLPart:(id)part andMIMEType:(id)type;
- (id)_documentFragmentForText:(id)text;
- (id)_documentFragmentForWebArchive:(id)archive;
- (id)_documentFragmentWithMarkupString:(id)string baseURLString:(id)lString;
- (id)_documentFragmentWithNodesAsParagraphs:(id)paragraphs;
- (id)_findFrameWithSelection;
- (id)_initWithWebFrameView:(id)view webView:(id)webView;
- (id)_javaScriptContextForScriptWorld:(id)world;
- (id)_layerTreeAsText;
- (id)_markDOMRange;
- (id)_rectsForRange:(id)range;
- (id)_selectedString;
- (id)_selectionRangeForFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint;
- (id)_selectionRangeForPoint:(CGPoint)point;
- (id)_stringByEvaluatingJavaScriptFromString:(id)string forceUserGesture:(BOOL)gesture;
- (id)_stringByEvaluatingJavaScriptFromString:(id)string withGlobalObject:(OpaqueJSValue *)object inScriptWorld:(id)world;
- (id)_stringForRange:(id)range;
- (id)_typingStyle;
- (id)_unreachableURL;
- (id)_webHTMLDocumentView;
- (id)accessibilityRoot;
- (id)approximateNodeAtViewportLocation:(CGPoint *)location;
- (id)deepestNodeAtViewportLocation:(CGPoint)location;
- (id)dictationResultMetadataForRange:(id)range;
- (id)documentView;
- (id)elementAtPoint:(CGPoint)point;
- (id)elementRangeContainingCaretSelection;
- (id)endPosition;
- (id)interpretationsForCurrentRoot;
- (id)markedTextDOMRange;
- (id)rangeByExtendingCurrentSelection:(int)selection;
- (id)rangeByMovingCurrentSelection:(int)selection;
- (id)renderTreeAsExternalRepresentationForPrinting;
- (id)renderTreeAsExternalRepresentationWithOptions:(unint64_t)options;
- (id)scrollableNodeAtViewportLocation:(CGPoint)location;
- (id)selectedDOMRange;
- (id)selectionRects;
- (id)selectionRectsForCoreRange:(const void *)range;
- (id)selectionRectsForRange:(id)range;
- (id)startPosition;
- (id)webVisiblePositionForPoint:(CGPoint)point;
- (id)wordAtPoint:(CGPoint)point;
- (id)wordInRange:(id)range;
- (id)wordRangeContainingCaretSelection;
- (id)wordsInCurrentParagraph;
- (int)_loadType;
- (int)innerLineHeight:(id)height;
- (int)layoutCount;
- (int)numberOfPagesWithPageWidth:(float)width pageHeight:(float)height;
- (int)preferredHeight;
- (int)selectionBaseWritingDirection;
- (int)selectionState;
- (int)wordOffsetInRange:(id)range;
- (optional<WebCore::SimpleRange>)_convertToDOMRange:(SEL)range;
- (optional<WebCore::SimpleRange>)_convertToDOMRange:(SEL)range rangeIsRelativeTo:(_NSRange)to;
- (unsigned)characterAfterCaretSelection;
- (unsigned)characterBeforeCaretSelection;
- (void)_attachScriptDebugger;
- (void)_clearOpener;
- (void)_clearSelection;
- (void)_clearSelectionInOtherFrames;
- (void)_commitData:(id)data;
- (void)_createCaptionPreferencesTestingModeToken;
- (void)_detachScriptDebugger;
- (void)_dispatchDidReceiveTitle:(id)title;
- (void)_drawRect:(CGRect)rect contentsOnly:(BOOL)only;
- (void)_generateTestReport:(id)report withGroup:(id)group;
- (void)_insertParagraphSeparatorInQuotedContent;
- (void)_loadData:(id)data MIMEType:(id)type textEncodingName:(id)name baseURL:(id)l unreachableURL:(id)rL;
- (void)_loadHTMLString:(id)string baseURL:(id)l unreachableURL:(id)rL;
- (void)_replaceSelectionWithFragment:(id)fragment selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace matchStyle:(BOOL)style;
- (void)_replaceSelectionWithMarkupString:(id)string baseURLString:(id)lString selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace;
- (void)_replaceSelectionWithNode:(id)node selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace matchStyle:(BOOL)style;
- (void)_replaceSelectionWithText:(id)text selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace;
- (void)_replaceSelectionWithText:(id)text selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace matchStyle:(BOOL)style;
- (void)_replaceSelectionWithWebArchive:(id)archive selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace;
- (void)_saveViewState;
- (void)_scrollDOMRangeToVisible:(id)visible;
- (void)_scrollDOMRangeToVisible:(id)visible withInset:(double)inset;
- (void)_selectNSRange:(_NSRange)range;
- (void)_setCaptionDisplayMode:(id)mode;
- (void)_setTextAutosizingWidth:(double)width;
- (void)_setTypingStyle:(id)style withUndoAction:(unsigned __int8)action;
- (void)_unmarkAllBadGrammar;
- (void)_updateBackgroundAndUpdatesWhileOffscreen;
- (void)_userScrolled;
- (void)aggressivelyExpandSelectionToWordContainingCaretSelection;
- (void)clearRangedSelectionInitialExtent;
- (void)clearSelection;
- (void)collapseSelection;
- (void)confirmMarkedText:(id)text;
- (void)dealloc;
- (void)ensureRangedSelectionContainsInitialStartPoint:(CGPoint)point initialEndPoint:(CGPoint)endPoint;
- (void)expandSelectionToSentence;
- (void)extendSelection:(BOOL)selection;
- (void)forceLayoutAdjustingViewSize:(BOOL)size;
- (void)getDictationResultRanges:(id *)ranges andMetadatas:(id *)metadatas;
- (void)loadAlternateHTMLString:(NSString *)string baseURL:(NSURL *)baseURL forUnreachableURL:(NSURL *)unreachableURL;
- (void)loadArchive:(WebArchive *)archive;
- (void)loadData:(NSData *)data MIMEType:(NSString *)MIMEType textEncodingName:(NSString *)encodingName baseURL:(NSURL *)URL;
- (void)loadHTMLString:(NSString *)string baseURL:(NSURL *)URL;
- (void)loadRequest:(NSURLRequest *)request;
- (void)moveSelectionToEnd;
- (void)moveSelectionToPoint:(CGPoint)point;
- (void)moveSelectionToStart;
- (void)prepareForPause;
- (void)printToCGContext:(CGContext *)context pageWidth:(float)width pageHeight:(float)height;
- (void)recursiveSetUpdateAppearanceEnabled:(BOOL)enabled;
- (void)removeUnchangeableStyles;
- (void)resetTextAutosizingBeforeLayout;
- (void)resumeFromPause;
- (void)selectNSRange:(_NSRange)range onElement:(id)element;
- (void)selectWithoutClosingTypingNSRange:(_NSRange)range;
- (void)setAccessibleName:(id)name;
- (void)setBaseWritingDirection:(int)direction;
- (void)setCaretColor:(CGColor *)color;
- (void)setDictationPhrases:(id)phrases metadata:(id)metadata asChildOfElement:(id)element;
- (void)setMarkedText:(id)text forCandidates:(BOOL)candidates;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setNeedsLayout;
- (void)setPluginsPaused:(BOOL)paused;
- (void)setRangedSelectionBaseToCurrentSelection;
- (void)setRangedSelectionBaseToCurrentSelectionEnd;
- (void)setRangedSelectionBaseToCurrentSelectionStart;
- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd;
- (void)setRangedSelectionInitialExtentToCurrentSelectionStart;
- (void)setRangedSelectionWithExtentPoint:(CGPoint)point;
- (void)setSelectedDOMRange:(id)range affinity:(unint64_t)affinity closeTyping:(BOOL)typing userTriggered:(BOOL)triggered;
- (void)setSelectionChangeCallbacksDisabled:(BOOL)disabled;
- (void)setSelectionWithFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint;
- (void)setText:(id)text asChildOfElement:(id)element;
- (void)setTimeoutsPaused:(BOOL)paused;
- (void)smartExtendRangedSelection:(int)selection;
- (void)stopLoading;
- (void)toggleBaseWritingDirection;
- (void)updateLayout;
@end

@implementation WebFrame

+ (Ref<WebCore::LocalFrame,)_createFrameWithPage:(void *)page frameName:(const void *)name frameView:(id)view ownerElement:(void *)element
{
  v11 = v6;
  if ((*(**(*(page + 7) + 16) + 1440))(*(*(page + 7) + 16), a2))
  {
    Weak = 0;
  }

  else
  {
    Weak = objc_loadWeak((*(*(page + 7) + 16) + 16));
  }

  v13 = [[self alloc] _initWithWebFrameView:view webView:Weak];
  v14 = *(*(*(element + 6) + 8) + 552);
  if (!v14 || (v15 = *(v14 + 8)) == 0)
  {
LABEL_8:
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  ++*(v15 + 4);
  WebCore::LocalFrame::effectiveSandboxFlags(v15);
  if (*(v15 + 4) != 1)
  {
    --*(v15 + 4);
    goto LABEL_8;
  }

  (*(*v15 + 8))(v15);
  if (v13)
  {
LABEL_9:
    v16 = v13;
  }

LABEL_10:
  v17 = WTF::fastMalloc(0x10);
  *v17 = &unk_1F472BD08;
  *(v17 + 1) = v13;
  v29 = v17;
  WebCore::generateFrameIdentifier(v17);
  if (WebCore::FrameTreeSyncData::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebCore::FrameTreeSyncData::operator new(unsigned long)::s_heapRef, v18);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompact = 1;
  *(NonCompact + 4) = 0;
  *(NonCompact + 8) = 0;
  v28 = NonCompact;
  WebCore::LocalFrame::createSubframe();
  if (v28)
  {
    if (*v28 == 1)
    {
      v27 = *(v28 + 1);
      *(v28 + 1) = 0;
      if (v27)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v27, v20);
        if (*v28 != 1)
        {
          v26.var0 = 191;
          __break(0xC471u);
          return v26;
        }
      }

      bmalloc::api::tzoneFree(v28, v20);
      v21 = v29;
      if (v29)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    --*v28;
  }

  v21 = v29;
  if (v29)
  {
LABEL_17:
    (*(*v21 + 8))(v21);
  }

LABEL_18:
  *(v13[1] + 8) = *v11;
  WebCore::FrameTree::setSpecifiedName();
  WebCore::LocalFrame::init(*v11);
  [Weak _realZoomMultiplier];
  v23 = v22;
  _realZoomMultiplierIsTextOnly = [Weak _realZoomMultiplierIsTextOnly];
  LODWORD(v25) = v23;
  [Weak _setZoomMultiplier:_realZoomMultiplierIsTextOnly isTextOnly:v25];

  return v26;
}

+ (void)_createMainFrameWithPage:(void *)page frameName:(const void *)name frameView:(id)view
{
  if (page)
  {
    selfCopy = self;
    if ((*(**(*(page + 7) + 16) + 1440))(*(*(page + 7) + 16), a2, page, name))
    {
      Weak = 0;
    }

    else
    {
      Weak = objc_loadWeak((*(*(page + 7) + 16) + 16));
    }

    self = selfCopy;
  }

  else
  {
    Weak = 0;
  }

  v17 = [[self alloc] _initWithWebFrameView:view webView:Weak];
  v9 = *(page + 22);
  if (!v9 || (*(v9 + 136) & 1) != 0)
  {
    if (!v17)
    {
      return;
    }
  }

  else
  {
    *(v17[1] + 8) = v9;
    v10 = *(*(v9 + 208) + 16);
    v11 = v17;
    v12 = *(v10 + 24);
    *(v10 + 24) = v17;
    if (v12)
    {
    }

    WebCore::FrameTree::setSpecifiedName();
    WebCore::LocalFrame::init(v9);
    [Weak _realZoomMultiplier];
    v14 = v13;
    _realZoomMultiplierIsTextOnly = [Weak _realZoomMultiplierIsTextOnly];
    LODWORD(v16) = v14;
    [Weak _setZoomMultiplier:_realZoomMultiplierIsTextOnly isTextOnly:v16];
  }
}

+ (Ref<WebCore::LocalFrame,)_createSubframeWithOwnerElement:(void *)element page:(void *)page frameName:(const void *)name frameView:(id)view
{
  if (self)
  {
    return [self _createFrameWithPage:page frameName:name frameView:view ownerElement:element];
  }

  else
  {
    *v6 = 0;
  }

  return self;
}

- (BOOL)_isIncludedInWebKitStatistics
{
  v2 = self->_private;
  if (v2)
  {
    LOBYTE(v2) = v2->includedInWebKitStatistics;
  }

  return v2 & 1;
}

+ (void)_createMainFrameWithSimpleHTMLDocumentWithPage:(void *)page frameView:(id)view style:(id)style
{
  v5 = *(page + 22);
  if (v5 && (*(v5 + 136) & 1) == 0)
  {
    if ((*(**(*(page + 7) + 16) + 1440))(*(*(page + 7) + 16), a2))
    {
      Weak = 0;
    }

    else
    {
      Weak = objc_loadWeak((*(*(page + 7) + 16) + 16));
    }

    v11 = [[self alloc] _initWithWebFrameView:view webView:Weak];
    *(v11[1] + 8) = v5;
    v12 = *(*(v5 + 208) + 16);
    v13 = v11;
    v15 = *(v12 + 24);
    *(v12 + 24) = v11;
    if (v15)
    {
    }

    WTF::AtomStringImpl::add(v20, style, v14);
    v21 = v20[0];
    UniqueWebDataURL = createUniqueWebDataURL();
    MEMORY[0x1CCA63960](v20, UniqueWebDataURL);
    WebCore::LocalFrame::initWithSimpleHTMLDocument();
    v18 = v20[0];
    v20[0] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    v19 = v21;
    v21 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }
    }
  }
}

- (void)_attachScriptDebugger
{
  v3 = *(self->_private->coreFrame.m_ptr + 13);
  v4 = WebCore::mainThreadNormalWorldSingleton(self);
  v5 = **(v3 + 2);
  if (v5)
  {
    v6 = *(v5 - 8);
    v7 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
    v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
    v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
    v10 = v6 & ((v9 >> 31) ^ v9);
    v11 = (v5 + 24 * v10);
    v12 = *v11;
    if (*v11 == v4)
    {
LABEL_6:
      if (v11 != (v5 + 24 * *(v5 - 4)))
      {
        v14 = v11[2];
        if (v14)
        {
          if (*v14)
          {
            v15 = WebCore::mainThreadNormalWorldSingleton(v4);
            v16 = WebCore::WindowProxy::globalObject(v3, v15);
            if (v16)
            {
              if (!self->_private->scriptDebugger.__ptr_)
              {
                v17 = v16;
                v18 = JSC::Debugger::operatorNewSlow(0x110);
                WebScriptDebugger::WebScriptDebugger(v18, v17);
                v19 = self->_private;
                ptr = v19->scriptDebugger.__ptr_;
                v19->scriptDebugger.__ptr_ = v18;
                if (ptr)
                {
                  v21 = *(ptr + 33);
                  if (v21)
                  {
                    v22 = (v21 - 16);
                    v23 = *(((v21 - 16) & 0xFFFFFFFFFFFFF000) + 0x10);
                    v24 = *(v21 - 8);
                    if (v24)
                    {
                      v25 = *v22;
                      *v24 = *v22;
                      *(v25 + 8) = v24;
                      *v22 = 0;
                      v22[1] = 0;
                    }

                    *v22 = *(v23 + 40);
                    *(v23 + 40) = v22;
                    *(ptr + 33) = 0;
                  }

                  JSC::Debugger::~Debugger(ptr);

                  bmalloc::api::tzoneFree(v26, v27);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = 1;
      while (v12)
      {
        v10 = (v10 + v13) & v6;
        v11 = (v5 + 24 * v10);
        v12 = *v11;
        ++v13;
        if (*v11 == v4)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

- (void)_detachScriptDebugger
{
  v2 = self->_private;
  ptr = v2->scriptDebugger.__ptr_;
  v2->scriptDebugger.__ptr_ = 0;
  if (ptr)
  {
    v4 = *(ptr + 33);
    if (v4)
    {
      v5 = (v4 - 16);
      v6 = *(((v4 - 16) & 0xFFFFFFFFFFFFF000) + 0x10);
      v7 = *(v4 - 8);
      if (v7)
      {
        v8 = *v5;
        *v7 = *v5;
        *(v8 + 8) = v7;
        *v5 = 0;
        v5[1] = 0;
      }

      *v5 = *(v6 + 40);
      *(v6 + 40) = v5;
      *(ptr + 33) = 0;
    }

    JSC::Debugger::~Debugger(ptr);

    bmalloc::api::tzoneFree(v9, v10);
  }
}

- (id)_initWithWebFrameView:(id)view webView:(id)webView
{
  v8.receiver = self;
  v8.super_class = WebFrame;
  v5 = [(WebFrame *)&v8 init];
  if (v5)
  {
    v5->_private = objc_alloc_init(WebFramePrivate);
    shouldIncludeInWebKitStatistics = [objc_opt_class() shouldIncludeInWebKitStatistics];
    v5->_private->includedInWebKitStatistics = shouldIncludeInWebKitStatistics;
    if (shouldIncludeInWebKitStatistics)
    {
      ++WebFrameCount;
    }

    if (view)
    {
      [(WebFramePrivate *)v5->_private setWebFrameView:view];
      [view _setWebFrame:v5];
    }

    v5->_private->shouldCreateRenderers = 1;
  }

  return v5;
}

- (id)_webHTMLDocumentView
{
  documentView = [(WebFrameView *)self->_private->webFrameView.m_ptr documentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return documentView;
  }

  else
  {
    return 0;
  }
}

- (void)_updateBackgroundAndUpdatesWhileOffscreen
{
  if (!self)
  {
    goto LABEL_6;
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    goto LABEL_6;
  }

  v4 = *(m_ptr + 3);
  if (!v4)
  {
    goto LABEL_6;
  }

  Weak = *(v4 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16), a2) & 1) == 0)
  {
    Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  drawsBackground = [Weak drawsBackground];
  backgroundColor = [Weak backgroundColor];
  v8 = self->_private;
  v9 = v8->coreFrame.m_ptr;
  if (v9)
  {
    v10 = backgroundColor;
    v11 = v8->coreFrame.m_ptr;
    while ((*(v11 + 136) & 1) != 0)
    {
LABEL_9:
      v11 = WebCore::FrameTree::traverseNext((v11 + 40), v9);
      if (!v11)
      {
        return;
      }
    }

    v12 = *(*(v11 + 208) + 16);
    if ((*(*v12 + 1032))(v12))
    {
      v13 = 0;
      if (drawsBackground)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = v12[3];
      if (drawsBackground)
      {
LABEL_16:
        v14 = *(v11 + 216);
        if (v14)
        {
          WebCore::LocalFrameView::setTransparent(*(v11 + 216));
          v16 = WebCore::roundAndClampToSRGBALossy(v10, v15);
          v19 = (bswap32(v16) | 0x1104000000000000) & (v16 << 31 >> 63);
          WebCore::LocalFrameView::setBaseBackgroundColor();
          [Weak shouldUpdateWhileOffscreen];
          WebCore::LocalFrameView::setShouldUpdateWhileOffscreen(v14);
          if ((v19 & 0x8000000000000) != 0)
          {
            v18 = (v19 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v18);
              WTF::fastFree(v18, v17);
            }
          }
        }

        goto LABEL_9;
      }
    }

    [objc_msgSend(objc_msgSend(v13 "frameView")];
    goto LABEL_16;
  }
}

- (void)_unmarkAllBadGrammar
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    v3 = self->_private->coreFrame.m_ptr;
    do
    {
      if ((*(v3 + 136) & 1) == 0)
      {
        v4 = *(v3 + 28);
        if (v4)
        {
          v5 = v3;
          if (!*(v4 + 195))
          {
            WebCore::Document::ensureMarkers(v4);
          }

          WebCore::DocumentMarkerController::removeMarkers();
          v3 = v5;
        }
      }

      v3 = WebCore::FrameTree::traverseNext((v3 + 40), m_ptr);
    }

    while (v3);
  }
}

- (BOOL)_hasSelection
{
  documentView = [(WebFrameView *)self->_private->webFrameView.m_ptr documentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (m_ptr = self->_private->coreFrame.m_ptr) != 0)
  {
    LOBYTE(v5) = *(*(*(m_ptr + 28) + 3208) + 153) == 2;
  }

  else
  {
    v5 = [(NSView *)documentView conformsToProtocol:&unk_1F475AAC0];
    if (v5)
    {
      LOBYTE(v5) = [-[NSView selectedString](documentView "selectedString")] != 0;
    }
  }

  return v5;
}

- (void)_clearSelection
{
  documentView = [(WebFrameView *)self->_private->webFrameView.m_ptr documentView];
  if ([(NSView *)documentView conformsToProtocol:&unk_1F475AAC0])
  {

    [(NSView *)documentView deselectAll];
  }
}

- (id)_findFrameWithSelection
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    v3 = self->_private->coreFrame.m_ptr;
    do
    {
      if ((*(v3 + 136) & 1) == 0)
      {
        v5 = *(*(v3 + 26) + 16);
        if ((*(*v5 + 1032))(v5, a2))
        {
          v4 = 0;
          if ([0 _hasSelection])
          {
            return v4;
          }
        }

        else
        {
          v4 = v5[3];
          if ([v4 _hasSelection])
          {
            return v4;
          }
        }
      }

      v3 = WebCore::FrameTree::traverseNext((v3 + 40), m_ptr);
    }

    while (v3);
  }

  return 0;
}

- (void)_clearSelectionInOtherFrames
{
  selfCopy = self;
  if (!self)
  {
LABEL_9:
    v6 = [-[WebFrame mainFrame](self "mainFrame")];
    if (v6 == selfCopy)
    {
      return;
    }

    goto LABEL_10;
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr || (v4 = *(m_ptr + 3)) == 0)
  {
LABEL_6:
    v6 = [objc_msgSend(0 "mainFrame")];
    if (v6 == selfCopy)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    self = 0;
    goto LABEL_9;
  }

  if ((*(**(*(v5 + 56) + 16) + 1440))(*(*(v5 + 56) + 16), a2))
  {
    goto LABEL_6;
  }

  v6 = [objc_msgSend(objc_loadWeak((*(*(v5 + 56) + 16) + 16)) "mainFrame")];
  if (v6 == selfCopy)
  {
    return;
  }

LABEL_10:

  [(WebFrame *)v6 _clearSelection];
}

- (id)_dataSource
{
  v2 = *(*(self->_private->coreFrame.m_ptr + 26) + 96);
  if (v2)
  {
    return *(v2 + 3608);
  }

  else
  {
    return 0;
  }
}

- (id)_selectedString
{
  m_ptr = self->_private->coreFrame.m_ptr;
  v3 = *(m_ptr + 28);
  if (v3)
  {
    *(v3 + 7) += 2;
  }

  v4 = WebCore::Document::editor(v3);
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      v5 = v4;
      WebCore::Node::removedLastRef(v3);
      v4 = v5;
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  WebCore::Editor::selectedText(&v15, v4);
  WebCore::LocalFrame::displayStringModifiedByEncoding(&v16, m_ptr, &v15);
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

  return v8;
}

- (id)_stringForRange:(id)range
{
  v3 = &stru_1F472E7E8;
  if (!range)
  {
    return v3;
  }

  WebCore::makeSimpleRange();
  WebCore::plainText();
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13);
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v4);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v3 = v13;
  v13 = 0;
  if (v3)
  {
    v5 = v3;
    v6 = v13;
    v13 = 0;
    if (v6)
    {
    }
  }

  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v4);
    }
  }

  if (v11)
  {
    if (*(v11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v11);
      v7 = v10;
      if (!v10)
      {
        return v3;
      }

      goto LABEL_15;
    }

    *(v11 + 7) -= 2;
  }

  v7 = v10;
  if (!v10)
  {
    return v3;
  }

LABEL_15:
  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    return v3;
  }

  WebCore::Node::removedLastRef(v7);
  return v3;
}

- (OptionSet<WebCore::PaintBehavior>)_paintBehaviorForDestinationContext:(CGContext *)context
{
  if (CGContextGetType() == 4 || CGContextGetType() == 6)
  {
    _webHTMLDocumentView = [(WebFrame *)self _webHTMLDocumentView];
    if (_webHTMLDocumentView)
    {
      if ([objc_msgSend(_webHTMLDocumentView "window")])
      {
        return 0x20000;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 132096;
    }
  }

  else
  {
    return 0;
  }
}

- (void)_drawRect:(CGRect)rect contentsOnly:(BOOL)only
{
  onlyCopy = only;
  v12 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  v6 = WKGetCurrentGraphicsContext();
  WebCore::GraphicsContextCG::GraphicsContextCG();
  WebCore::LocalFrameView::paintBehavior(*(self->_private->coreFrame.m_ptr + 27));
  v7 = WebCore::FrameTree::parent((self->_private->coreFrame.m_ptr + 40));
  if (v7 && (*(v7 + 136) & 1) == 0)
  {
    v8 = *(v7 + 216);
    if (v8)
    {
      WebCore::LocalFrameView::paintBehavior(v8);
    }
  }

  else
  {
    [(WebFrame *)self _paintBehaviorForDestinationContext:v6];
  }

  WebCore::LocalFrameView::setPaintBehavior();
  WebCore::enclosingIntRect(&rectCopy, v9);
  if (onlyCopy)
  {
    WebCore::LocalFrameView::paintContents();
  }

  else
  {
    WebCore::ScrollView::paint();
  }

  WebCore::LocalFrameView::setPaintBehavior();
  WebCore::GraphicsContextCG::~GraphicsContextCG(v11);
}

- (BOOL)_getVisibleRect:(CGRect *)rect
{
  v4 = WebCore::Frame::ownerRenderer(self->_private->coreFrame.m_ptr);
  if (v4)
  {
    if ((*(v4 + 20) & 0xF8) != 0)
    {
      v5 = 0;
    }

    else
    {
      v6 = v4;
      WebCore::RenderObject::pixelSnappedAbsoluteClippedOverflowRect(v4);
      WebCore::IntRect::operator CGRect();
      v4 = v6;
      rect->origin.x = v7;
      rect->origin.y = v8;
      rect->size.width = v9;
      rect->size.height = v10;
      v5 = 1;
    }
  }

  return (v4 != 0) & v5;
}

- (id)_stringByEvaluatingJavaScriptFromString:(id)string forceUserGesture:(BOOL)gesture
{
  if (!string)
  {
    return &stru_1F472E7E8;
  }

  isMainThread = WTF::isMainThread(self);
  if (isMainThread)
  {
    if (self)
    {
      isMainThread = self;
    }

    v7 = *(self->_private->coreFrame.m_ptr + 29);
    v8 = WebCore::mainThreadNormalWorldSingleton(isMainThread);
    WebCore::ScriptController::jsWindowProxy(v7, v8);
    JSC::JSLockHolder::JSLockHolder();
    MEMORY[0x1CCA63A40](v20, string);
    v10 = WebCore::ScriptController::executeScriptIgnoringException();
    v20[1] = v10;
    v11 = v20[0];
    v20[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = &stru_1F472E7E8;
    if (!self->_private->coreFrame.m_ptr || !v10)
    {
      goto LABEL_30;
    }

    if ((v10 & 0xFFFFFFFFFFFFFFFELL) != 6)
    {
      if ((v10 & 0xFFFE000000000002) != 0)
      {
        if (v10 >> 49)
        {
          goto LABEL_13;
        }
      }

      else if (*(v10 + 5) == 2)
      {
        v13 = *(v10 + 8);
        if (v13)
        {
          v13 = *JSC::JSRopeString::resolveRope();
        }

        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        v19 = v13;
        if (v13)
        {
          goto LABEL_14;
        }

        goto LABEL_29;
      }

LABEL_30:
      MEMORY[0x1CCA63200](v21);

      return v12;
    }

LABEL_13:
    JSC::JSValue::toWTFStringSlowCase();
    v13 = v19;
    if (v19)
    {
LABEL_14:
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](v20, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }

      goto LABEL_16;
    }

LABEL_29:
    v20[0] = &stru_1F472E7E8;
    v17 = &stru_1F472E7E8;
LABEL_16:
    v12 = v20[0];
    v20[0] = 0;
    if (v12)
    {
      v15 = v12;
      v16 = v20[0];
      v20[0] = 0;
      if (v16)
      {
      }
    }

    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v14);
      }
    }

    goto LABEL_30;
  }

  result = 699;
  __break(0xC471u);
  return result;
}

- (CGRect)_caretRectAtPosition:(const void *)position affinity:(unint64_t)affinity
{
  WebCore::VisiblePosition::VisiblePosition();
  WebCore::VisiblePosition::absoluteCaretBounds(&v13, 0);
  WebCore::IntRect::operator CGRect();
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      v9 = v4;
      v10 = v5;
      v11 = v6;
      v12 = v7;
      WebCore::Node::removedLastRef(v8);
      v7 = v12;
      v6 = v11;
      v5 = v10;
      v4 = v9;
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_firstRectForDOMRange:(id)range
{
  if (!range)
  {
    v5 = *MEMORY[0x1E696AA80];
    v6 = *(MEMORY[0x1E696AA80] + 8);
    v7 = *(MEMORY[0x1E696AA80] + 16);
    v8 = *(MEMORY[0x1E696AA80] + 24);
    goto LABEL_18;
  }

  v3 = *(self->_private->coreFrame.m_ptr + 28);
  if (v3)
  {
    *(v3 + 7) += 2;
  }

  v4 = WebCore::Document::editor(v3);
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  WebCore::makeSimpleRange();
  RectForRange = WebCore::Editor::firstRectForRange(v4, &v20);
  v23 = v9;
  WebCore::IntRect::operator CGRect();
  v10 = v21;
  v21 = 0;
  if (!v10)
  {
    goto LABEL_12;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
LABEL_12:
    v11 = v20;
    v20 = 0;
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  WebCore::Node::removedLastRef(v10);
  v8 = v15;
  v7 = v14;
  v6 = v13;
  v5 = v12;
  v11 = v20;
  v20 = 0;
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (*(v11 + 7) == 2)
  {
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = v8;
    WebCore::Node::removedLastRef(v11);
    v8 = v19;
    v7 = v18;
    v6 = v17;
    v5 = v16;
  }

  else
  {
    *(v11 + 7) -= 2;
  }

LABEL_18:
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)_scrollDOMRangeToVisible:(id)visible
{
  [(WebFrame *)self _firstRectForDOMRange:?];
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  startContainer = [visible startContainer];
  if (startContainer)
  {
    v10 = *(startContainer + 16);
    if (v10)
    {
      v11 = *(v10 + 72);
      if (v11)
      {
        if (WebCore::RenderObject::enclosingLayer(v11))
        {
          WebCore::enclosingIntRect(v13, v12);
          WebCore::LocalFrameView::scrollRectToVisible();
          *(*(*(self->_private->coreFrame.m_ptr + 28) + 3208) + 24) = 1;
          WebCore::FrameSelection::updateAppearance(*(*(self->_private->coreFrame.m_ptr + 28) + 3208));
        }
      }
    }
  }
}

- (void)_scrollDOMRangeToVisible:(id)visible withInset:(double)inset
{
  [(WebFrame *)self _firstRectForDOMRange:?];
  v13 = NSInsetRect(v14, inset, inset);
  startContainer = [visible startContainer];
  if (startContainer)
  {
    v8 = *(startContainer + 16);
    if (v8)
    {
      v9 = *(v8 + 72);
      if (v9)
      {
        if (WebCore::RenderObject::enclosingLayer(v9))
        {
          WebCore::enclosingIntRect(&v13, v10);
          WebCore::LocalFrameView::scrollRectToVisible();
          if (self)
          {
            m_ptr = self->_private->coreFrame.m_ptr;
            if (m_ptr)
            {
              v12 = *(*(m_ptr + 28) + 3208);
              *(v12 + 24) = 1;
              WebCore::FrameSelection::updateAppearance(v12);
            }
          }
        }
      }
    }
  }
}

- (BOOL)_needsLayout
{
  v2 = *(self->_private->coreFrame.m_ptr + 27);
  if (v2)
  {
    LOBYTE(v2) = MEMORY[0x1EEE5CA40](v2, a2);
  }

  return v2;
}

- (_NSRange)_convertToNSRange:(const void *)range
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr || (v5 = WebCore::FrameSelection::rootEditableElementOrDocumentElement(*(*(m_ptr + 28) + 3208))) == 0)
  {
    v7 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    v10 = v6;
    goto LABEL_19;
  }

  *(v5 + 28) += 2;
  v15.var0.var0 = v5;
  v15.var1 = 0;
  WebCore::SimpleRange::SimpleRange(&v16, &v15, range);
  v6 = WebCore::characterCount();
  v7 = WebCore::characterCount();
  v8 = v17;
  v17 = 0;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      v11 = v7;
      WebCore::Node::removedLastRef(v8);
      v7 = v11;
      v9 = v16;
      v16 = 0;
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    *(v8 + 7) -= 2;
  }

  v9 = v16;
  v16 = 0;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*(v9 + 7) == 2)
  {
    v12 = v7;
    WebCore::Node::removedLastRef(v9);
    v7 = v12;
  }

  else
  {
    *(v9 + 7) -= 2;
  }

LABEL_14:
  var0 = v15.var0.var0;
  v15.var0.var0 = 0;
  if (!var0)
  {
    goto LABEL_10;
  }

  if (*(var0 + 7) == 2)
  {
    v14 = v7;
    WebCore::Node::removedLastRef(var0);
    v7 = v14;
  }

  else
  {
    *(var0 + 7) -= 2;
  }

  v10 = v6;
LABEL_19:
  result.length = v7;
  result.location = v10;
  return result;
}

- (optional<WebCore::SimpleRange>)_convertToDOMRange:(SEL)range
{
  if (self)
  {
    return unk_1F4779040(self, "_convertToDOMRange:rangeIsRelativeTo:", a4.location, a4.length, 0);
  }

  *&retstr->var1 = 0;
  *&retstr->var0.var0 = 0u;
  retstr->var0.var1.var1 = 0u;
  return self;
}

- (optional<WebCore::SimpleRange>)_convertToDOMRange:(SEL)range rangeIsRelativeTo:(_NSRange)to
{
  if (to.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (a5)
  {
    WebCore::VisiblePosition::VisiblePosition();
    WebCore::startOfParagraph();
    WebCore::makeBoundaryPoint(&v15, &v19, v8);
    v9 = v19;
    v19 = 0;
    if (v9)
    {
      if (*(v9 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v9);
        self = v17;
        v17 = 0;
        if (!self)
        {
          goto LABEL_19;
        }

LABEL_17:
        if (*(&self->var0.var1.var1.var1 + 1) == 2)
        {
          goto LABEL_25;
        }

        *(&self->var0.var1.var1.var1 + 1) -= 2;
LABEL_19:
        if (v16)
        {
          while (1)
          {
            v10 = **(v15 + 48);
            if (!v10)
            {
              self = 114;
              __break(0xC471u);
              return self;
            }

            *(v10 + 28) += 2;
            v11 = *(v10 + 32);
            if (v11)
            {
              break;
            }

            if ((v11 & 4) == 0)
            {
              goto LABEL_29;
            }

            self = WebCore::ContainerNode::countChildNodes(v10);
            v14 = v10;
            if (v16)
            {
              goto LABEL_30;
            }

            __break(1u);
LABEL_25:
            self = WebCore::Node::removedLastRef(self);
            if ((v16 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          if (*(v10 + 88))
          {
            v14 = v10;
            goto LABEL_30;
          }

LABEL_29:
          v14 = v10;
LABEL_30:
          WebCore::SimpleRange::SimpleRange();
          WebCore::resolveCharacterRange();
          retstr->var0.var1.var0.var0.var0 = v19;
          retstr->var0.var1.var0.var1 = v20;
          retstr->var0.var1.var1.var0.var0 = v21;
          retstr->var0.var1.var1.var1 = v22;
          retstr->var1 = 1;
          v21 = 0;
          v19 = 0;
          v12 = v18;
          v18 = 0;
          if (v12)
          {
            if (*(v12 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v12);
              v13 = v17;
              v17 = 0;
              if (v13)
              {
LABEL_34:
                if (*(v13 + 7) == 2)
                {
                  WebCore::Node::removedLastRef(v13);
                }

                else
                {
                  *(v13 + 7) -= 2;
                }
              }

LABEL_39:
              self = v14;
              if (*(v14 + 7) == 2)
              {
                self = WebCore::Node::removedLastRef(v14);
                if ((v16 & 1) == 0)
                {
                  return self;
                }
              }

              else
              {
                *(v14 + 7) -= 2;
                if ((v16 & 1) == 0)
                {
                  return self;
                }
              }

              self = v15;
              v15 = 0;
              if (!self)
              {
                return self;
              }

              if (*(&self->var0.var1.var1.var1 + 1) != 2)
              {
                *(&self->var0.var1.var1.var1 + 1) -= 2;
                return self;
              }

              return WebCore::Node::removedLastRef(self);
            }

            *(v12 + 7) -= 2;
          }

          v13 = v17;
          v17 = 0;
          if (v13)
          {
            goto LABEL_34;
          }

          goto LABEL_39;
        }

LABEL_26:
        retstr->var0.var0 = 0;
        retstr->var1 = 0;
        return self;
      }

      *(v9 + 7) -= 2;
    }

    self = v17;
    v17 = 0;
    if (!self)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  self = WebCore::FrameSelection::rootEditableElementOrDocumentElement(*(*(*(*&self->var0.var1.var0.var1 + 8) + 224) + 3208));
  if (!self)
  {
    goto LABEL_26;
  }

  WebCore::makeRangeSelectingNodeContents(&v17, self, v6);
  WebCore::resolveCharacterRange();
  retstr->var0.var1.var0.var0.var0 = v19;
  retstr->var0.var1.var0.var1 = v20;
  retstr->var0.var1.var1.var0.var0 = v21;
  retstr->var0.var1.var1.var1 = v22;
  retstr->var1 = 1;
  v21 = 0;
  v19 = 0;
  v7 = v18;
  v18 = 0;
  if (!v7)
  {
LABEL_8:
    self = v17;
    v17 = 0;
    if (self)
    {
      goto LABEL_9;
    }

    return self;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    goto LABEL_8;
  }

  WebCore::Node::removedLastRef(v7);
  self = v17;
  v17 = 0;
  if (self)
  {
LABEL_9:
    if (*(&self->var0.var1.var1.var1 + 1) != 2)
    {
      *(&self->var0.var1.var1.var1 + 1) -= 2;
      return self;
    }

    return WebCore::Node::removedLastRef(self);
  }

  return self;
}

- (id)_convertNSRangeToDOMRange:(_NSRange)range
{
  if (self)
  {
    [(WebFrame *)self _convertToDOMRange:range.location, range.length];
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  result = kit();
  if (v9 == 1)
  {
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        v5 = result;
        WebCore::Node::removedLastRef(v8);
        result = v5;
        v4 = v7;
        if (!v7)
        {
          return result;
        }

        goto LABEL_9;
      }

      *(v8 + 7) -= 2;
    }

    v4 = v7;
    if (!v7)
    {
      return result;
    }

LABEL_9:
    if (*(v4 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v4);
      return v6;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return result;
}

- (_NSRange)_convertDOMRangeToNSRange:(id)range
{
  if (!range)
  {
    v5 = 0;
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_13;
  }

  WebCore::makeSimpleRange();
  v4 = [(WebFrame *)self _convertToNSRange:&v12];
  v6 = v13;
  v13 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
LABEL_5:
    v7 = v12;
    v12 = 0;
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v8 = v4;
  v9 = v5;
  WebCore::Node::removedLastRef(v6);
  v4 = v8;
  v5 = v9;
  v7 = v12;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (*(v7 + 7) == 2)
  {
    v10 = v4;
    v11 = v5;
    WebCore::Node::removedLastRef(v7);
    v4 = v10;
    v5 = v11;
  }

  else
  {
    *(v7 + 7) -= 2;
  }

LABEL_13:
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)_markDOMRange
{
  v2 = *(self->_private->coreFrame.m_ptr + 28);
  if (v2)
  {
    *(v2 + 7) += 2;
  }

  v3 = WebCore::Document::editor(v2);
  if (v2)
  {
    if (*(v2 + 7) == 2)
    {
      v4 = v3;
      WebCore::Node::removedLastRef(v2);
      v3 = v4;
    }

    else
    {
      *(v2 + 7) -= 2;
    }
  }

  WebCore::VisibleSelection::toNormalizedRange(&v10, (v3 + 200));
  result = kit();
  if (v12 == 1)
  {
    v6 = v11;
    v11 = 0;
    if (v6)
    {
      if (*(v6 + 7) == 2)
      {
        v8 = result;
        WebCore::Node::removedLastRef(v6);
        result = v8;
        v7 = v10;
        v10 = 0;
        if (!v7)
        {
          return result;
        }

        goto LABEL_12;
      }

      *(v6 + 7) -= 2;
    }

    v7 = v10;
    v10 = 0;
    if (!v7)
    {
      return result;
    }

LABEL_12:
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
  }

  return result;
}

- (id)_documentFragmentWithMarkupString:(id)string baseURLString:(id)lString
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr || !*(m_ptr + 28))
  {
    return 0;
  }

  MEMORY[0x1CCA63A40](&v15, string);
  MEMORY[0x1CCA63A40](&v14, lString);
  WebCore::createFragmentFromMarkup();
  result = kit(v16);
  v8 = v16;
  v16 = 0;
  if (!v8)
  {
LABEL_6:
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (*(v8 + 7) != 2)
  {
    *(v8 + 7) -= 2;
    goto LABEL_6;
  }

  v13 = result;
  WebCore::Node::removedLastRef(v8);
  result = v13;
  v9 = v14;
  v14 = 0;
  if (v9)
  {
LABEL_7:
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v10 = result;
      WTF::StringImpl::destroy(v9, v7);
      result = v10;
    }
  }

LABEL_9:
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v12 = result;
      WTF::StringImpl::destroy(v11, v7);
      return v12;
    }
  }

  return result;
}

- (id)_documentFragmentWithNodesAsParagraphs:(id)paragraphs
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v4 = *(m_ptr + 28);
  if (!v4)
  {
    return 0;
  }

  objectEnumerator = [paragraphs objectEnumerator];
  v6 = 0;
  v7 = 0;
  v32 = 0;
  for (i = 0; ; HIDWORD(i) = v7)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v9 = *(nextObject + 16);
    v31 = v9;
    if (v7 == i)
    {
      v10 = WTF::Vector<WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v32, v7 + 1, &v31);
      v7 = HIDWORD(i);
      v6 = v32;
      *(v32 + HIDWORD(i)) = *v10;
    }

    else
    {
      *(v6 + v7) = v9;
    }

    ++v7;
  }

  WebCore::Document::createDocumentFragment(&v31, v4);
  if (v7)
  {
    v13 = 8 * v7;
    v14 = v6;
    do
    {
      v15 = *v14;
      WebCore::createDefaultParagraphElement(&v30, v4, v12);
      WebCore::ContainerNode::appendChild(&v27, v30, v15);
      if (v29 == 1)
      {
        v17 = v28;
        v28 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v16);
          }
        }
      }

      WebCore::ContainerNode::appendChild(&v24, v31, v30);
      if (v26 == 1)
      {
        v18 = v25;
        v25 = 0;
        if (v18)
        {
          if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v12);
          }
        }
      }

      v19 = v30;
      v30 = 0;
      if (v19)
      {
        if (*(v19 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v19);
        }

        else
        {
          *(v19 + 7) -= 2;
        }
      }

      ++v14;
      v13 -= 8;
    }

    while (v13);
  }

  result = kit(v31);
  v21 = v31;
  v31 = 0;
  if (v21)
  {
    if (*(v21 + 7) == 2)
    {
      v23 = result;
      WebCore::Node::removedLastRef(v21);
      result = v23;
      if (v6)
      {
        goto LABEL_30;
      }

      return result;
    }

    *(v21 + 7) -= 2;
  }

  if (v6)
  {
LABEL_30:
    v32 = 0;
    LODWORD(i) = 0;
    v22 = result;
    WTF::fastFree(v6, v20);
    return v22;
  }

  return result;
}

- (void)_replaceSelectionWithNode:(id)node selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace matchStyle:(BOOL)style
{
  styleCopy = style;
  replaceCopy = replace;
  replacementCopy = replacement;
  WebCore::Document::createDocumentFragment(&v13, *(self->_private->coreFrame.m_ptr + 28));
  v11 = kit(v13);
  v12 = v13;
  v13 = 0;
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

  [v11 appendChild:node];
  [(WebFrame *)self _replaceSelectionWithFragment:v11 selectReplacement:replacementCopy smartReplace:replaceCopy matchStyle:styleCopy];
}

- (void)_insertParagraphSeparatorInQuotedContent
{
  v2 = *(self->_private->coreFrame.m_ptr + 28);
  if (*(*(v2 + 3208) + 153))
  {
    *(v2 + 28) += 2;
    v3 = WebCore::Document::editor(v2);
    if (*(v2 + 28) == 2)
    {
      v4 = v3;
      WebCore::Node::removedLastRef(v2);
      v3 = v4;
    }

    else
    {
      *(v2 + 28) -= 2;
    }

    MEMORY[0x1EEE5AD58](v3);
  }
}

- (VisiblePosition)_visiblePositionForPoint:(SEL)point
{
  v7 = a4;
  m_ptr = self->_private->coreFrame.m_ptr;
  WebCore::IntPoint::IntPoint(v6, &v7);
  return WebCore::LocalFrame::visiblePositionForPoint(m_ptr, v6);
}

- (id)_characterRangeAtPoint:(CGPoint)point
{
  pointCopy = point;
  m_ptr = self->_private->coreFrame.m_ptr;
  WebCore::IntPoint::IntPoint(&v9, &pointCopy);
  WebCore::LocalFrame::rangeForPoint(&v10, m_ptr, &v9);
  result = kit();
  if (v12 == 1)
  {
    v5 = v11;
    v11 = 0;
    if (v5)
    {
      if (*(v5 + 7) == 2)
      {
        v7 = result;
        WebCore::Node::removedLastRef(v5);
        result = v7;
        v6 = v10;
        v10 = 0;
        if (!v6)
        {
          return result;
        }

        goto LABEL_6;
      }

      *(v5 + 7) -= 2;
    }

    v6 = v10;
    v10 = 0;
    if (!v6)
    {
      return result;
    }

LABEL_6:
    if (*(v6 + 7) == 2)
    {
      v8 = result;
      WebCore::Node::removedLastRef(v6);
      return v8;
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  return result;
}

- (id)_typingStyle
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  WebCore::FrameSelection::copyTypingStyle(&v9, *(*(m_ptr + 28) + 3208));
  result = v9;
  if (v9)
  {
    v4 = WebCore::MutableStyleProperties::ensureCSSStyleProperties(v9);
    result = kit(v4);
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      if (*v5 == 1)
      {
        v6 = result;
        WebCore::MutableStyleProperties::~MutableStyleProperties(v5);
        WTF::fastFree(v7, v8);
        return v6;
      }

      else
      {
        --*v5;
      }
    }
  }

  return result;
}

- (void)_setTypingStyle:(id)style withUndoAction:(unsigned __int8)action
{
  if (style)
  {
    if (self->_private->coreFrame.m_ptr)
    {
      v5 = *(style + 2);
      if (v5)
      {
        if (!(*(*v5 + 32))(*(style + 2), a2))
        {
          (**v5)(v5);
          (*(*v5 + 184))(&v10, v5);
          v6 = *(self->_private->coreFrame.m_ptr + 28);
          if (v6)
          {
            *(v6 + 7) += 2;
          }

          WebCore::Document::editor(v6);
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

          WebCore::Editor::computeAndSetTypingStyle();
          v7 = v10;
          v10 = 0;
          if (v7)
          {
            if (*v7 == 1)
            {
              WebCore::MutableStyleProperties::~MutableStyleProperties(v7);
              WTF::fastFree(v8, v9);
            }

            else
            {
              --*v7;
            }
          }

          (*(*v5 + 8))(v5);
        }
      }
    }
  }
}

- (BOOL)_canProvideDocumentSource
{
  m_ptr = self->_private->coreFrame.m_ptr;
  v4 = *(WebCore::Document::loader(*(m_ptr + 28)) + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v12 = v4;
  v5 = *(m_ptr + 3);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v7 = WebCore::Page::pluginData(v6);
  }

  else
  {
    v7 = 0;
  }

  if (WebCore::MIMETypeRegistry::isTextMIMEType(&v12, v3) & 1) != 0 || (WebCore::MIMETypeRegistry::isSupportedImageMIMEType(&v12, v8) & 1) != 0 || v7 && ((WebCore::PluginData::supportsWebVisibleMimeType() & 1) != 0 || (WebCore::PluginData::supportsWebVisibleMimeType()))
  {
    v9 = 0;
    v10 = v12;
    v12 = 0;
    if (!v10)
    {
      return v9;
    }
  }

  else
  {
    v9 = 1;
    v10 = v12;
    v12 = 0;
    if (!v10)
    {
      return v9;
    }
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  return v9;
}

- (void)_commitData:(id)data
{
  dataCopy = data;
  WebCore::Document::setShouldCreateRenderers(*(self->_private->coreFrame.m_ptr + 28));
  WebCore::SharedBuffer::create<NSData *&>(&dataCopy, v3, &v5);
  WebCore::DocumentLoader::commitData();
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }
  }
}

- (BOOL)_isDescendantOfFrame:(id)frame
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  if (frame)
  {
    v4 = *(*(frame + 1) + 8);
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x1EEE5E4A8](m_ptr + 40, v4);
}

- (CGColor)_bodyBackgroundColor
{
  result = *(self->_private->coreFrame.m_ptr + 28);
  if (result)
  {
    result = WebCore::Document::bodyOrFrameset(result);
    if (result)
    {
      v3 = *(result + 9);
      if (!v3)
      {
        return 0;
      }

      if ((*(v3 + 45) & 2) != 0)
      {
        result = 105;
        __break(0xC471u);
        return result;
      }

      WebCore::RenderStyle::visitedDependentColorWithColorFilter();
      v5 = v9;
      if ((v9 & 0x4000000000000) == 0)
      {
        result = 0;
        if ((v9 & 0x8000000000000) == 0)
        {
          return result;
        }

        goto LABEL_12;
      }

      WebCore::cachedCGColor();
      result = arg;
      if (arg)
      {
        CFAutorelease(arg);
        result = arg;
      }

      v5 = v9;
      if ((v9 & 0x8000000000000) != 0)
      {
LABEL_12:
        v6 = (v5 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v6);
          v7 = result;
          WTF::fastFree(v6, v4);
          return v7;
        }
      }
    }
  }

  return result;
}

- (BOOL)_isFrameSet
{
  v2 = *(self->_private->coreFrame.m_ptr + 28);
  if (v2)
  {
    LOBYTE(v2) = (*(*v2 + 384))();
  }

  return v2;
}

- (BOOL)_isVisuallyNonEmpty
{
  v2 = *(self->_private->coreFrame.m_ptr + 27);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 1481);
  }

  return v2 & 1;
}

- (int)_loadType
{
  v2 = WebCore::FrameLoader::loadType(*(self->_private->coreFrame.m_ptr + 26)) - 1;
  if (v2 > 8)
  {
    return 0;
  }

  else
  {
    return dword_1C7B33918[v2];
  }
}

- (id)_rectsForRange:(id)range
{
  if (range)
  {
    return [range textRects];
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)_selectionRangeForFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint
{
  if (self)
  {
    y = secondPoint.y;
    x = secondPoint.x;
    [(WebFrame *)self _visiblePositionForPoint:point.x, point.y];
    [(WebFrame *)self _visiblePositionForPoint:x, y];
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  WebCore::VisibleSelection::VisibleSelection();
  WebCore::VisibleSelection::toNormalizedRange(&v14, v13);
  v7 = kit();
  if (v16 == 1)
  {
    v8 = v15;
    v15 = 0;
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v8);
        v9 = v14;
        v14 = 0;
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

      *(v8 + 7) -= 2;
    }

    v9 = v14;
    v14 = 0;
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
    }

    else
    {
      *(v9 + 7) -= 2;
    }
  }

LABEL_14:
  WebCore::VisibleSelection::~VisibleSelection(v13);
  v10 = v17;
  v17 = 0;
  if (!v10)
  {
    goto LABEL_17;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
LABEL_17:
    v11 = v20;
    v20 = 0;
    if (!v11)
    {
      return v7;
    }

    goto LABEL_20;
  }

  WebCore::Node::removedLastRef(v10);
  v11 = v20;
  v20 = 0;
  if (!v11)
  {
    return v7;
  }

LABEL_20:
  if (*(v11 + 7) != 2)
  {
    *(v11 + 7) -= 2;
    return v7;
  }

  WebCore::Node::removedLastRef(v11);
  return v7;
}

- (id)_selectionRangeForPoint:(CGPoint)point
{
  if (self)
  {
    [(WebFrame *)self _visiblePositionForPoint:point.x, point.y];
  }

  else
  {
    v7 = 0;
  }

  WebCore::VisibleSelection::VisibleSelection();
  WebCore::VisibleSelection::toNormalizedRange(&v9, v8);
  v3 = kit();
  if (v11 == 1)
  {
    v4 = v10;
    v10 = 0;
    if (v4)
    {
      if (*(v4 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v4);
        v5 = v9;
        v9 = 0;
        if (!v5)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

      *(v4 + 7) -= 2;
    }

    v5 = v9;
    v9 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

LABEL_14:
  WebCore::VisibleSelection::~VisibleSelection(v8);
  if (!v7)
  {
    return v3;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    return v3;
  }

  WebCore::Node::removedLastRef(v7);
  return v3;
}

- (_NSRange)_selectedNSRange
{
  WebCore::VisibleSelection::toNormalizedRange(v11, (*(*(self->_private->coreFrame.m_ptr + 28) + 3208) + 56));
  if ((v13 & 1) == 0)
  {
    v4 = 0;
    v3 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v3 = [(WebFrame *)self _convertToNSRange:v11];
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = v12;
  v12 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
LABEL_6:
    v6 = v11[0];
    v11[0] = 0;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v7 = v3;
  v8 = v4;
  WebCore::Node::removedLastRef(v5);
  v3 = v7;
  v4 = v8;
  v6 = v11[0];
  v11[0] = 0;
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*(v6 + 7) == 2)
  {
    v9 = v3;
    v10 = v4;
    WebCore::Node::removedLastRef(v6);
    v3 = v9;
    v4 = v10;
  }

  else
  {
    *(v6 + 7) -= 2;
  }

LABEL_14:
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_selectNSRange:(_NSRange)range
{
  if (self)
  {
    [(WebFrame *)self _convertToDOMRange:range.location, range.length];
    if (v8)
    {
      WebCore::VisibleSelection::VisibleSelection();
      WebCore::FrameSelection::setSelection();
      WebCore::VisibleSelection::~VisibleSelection(&v5);
      if (v8)
      {
        v3 = v7;
        v7 = 0;
        if (v3)
        {
          if (*(v3 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v3);
            v4 = v6;
            v6 = 0;
            if (!v4)
            {
              return;
            }

            goto LABEL_8;
          }

          *(v3 + 7) -= 2;
        }

        v4 = v6;
        v6 = 0;
        if (!v4)
        {
          return;
        }

LABEL_8:
        if (*(v4 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v4);
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }
    }
  }
}

- (BOOL)_isDisplayingStandaloneImage
{
  v2 = *(self->_private->coreFrame.m_ptr + 28);
  if (v2)
  {
    return (*(v2 + 3518) >> 2) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setTimeoutsPaused:(BOOL)paused
{
  if ([(WebFrame *)self _webHTMLDocumentView]&& self->_private->coreFrame.m_ptr)
  {

    MEMORY[0x1EEE53E58]();
  }
}

- (void)setPluginsPaused:(BOOL)paused
{
  if (self)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      v4 = *(m_ptr + 3);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          pausedCopy = paused;
          if (((*(**(*(v5 + 56) + 16) + 1440))(*(*(v5 + 56) + 16), a2) & 1) == 0)
          {
            Weak = objc_loadWeak((*(*(v5 + 56) + 16) + 16));
            if (Weak)
            {
              if (pausedCopy)
              {

                [Weak _stopAllPlugIns];
              }

              else
              {

                [Weak _startAllPlugIns];
              }
            }
          }
        }
      }
    }
  }
}

- (void)prepareForPause
{
  if ([(WebFrame *)self _webHTMLDocumentView]&& self->_private->coreFrame.m_ptr)
  {

    MEMORY[0x1EEE53F00]();
  }
}

- (void)resumeFromPause
{
  if ([(WebFrame *)self _webHTMLDocumentView]&& self->_private->coreFrame.m_ptr)
  {

    MEMORY[0x1EEE53F18]();
  }
}

- (void)selectWithoutClosingTypingNSRange:(_NSRange)range
{
  if (self)
  {
    [(WebFrame *)self _convertToDOMRange:range.location, range.length];
    if (v12)
    {
      WebCore::VisibleSelection::VisibleSelection();
      WebCore::FrameSelection::setSelection();
      WebCore::VisibleSelection::~VisibleSelection(&v9);
      v4 = *(self->_private->coreFrame.m_ptr + 28);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v6;
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }

      WebCore::Editor::ensureLastEditCommandHasCurrentSelectionIfOpenForMoreTyping(v5);
      if (v12)
      {
        v7 = v11;
        v11 = 0;
        if (v7)
        {
          if (*(v7 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v7);
            v8 = v10;
            v10 = 0;
            if (!v8)
            {
              return;
            }

            goto LABEL_14;
          }

          *(v7 + 7) -= 2;
        }

        v8 = v10;
        v10 = 0;
        if (!v8)
        {
          return;
        }

LABEL_14:
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
  }
}

- (void)forceLayoutAdjustingViewSize:(BOOL)size
{
  v4 = !size;
  WebCore::LocalFrameView::forceLayout(*(self->_private->coreFrame.m_ptr + 27));
  if (!v4)
  {
    v5 = *(self->_private->coreFrame.m_ptr + 27);

    MEMORY[0x1EEE556E0](v5);
  }
}

- (void)_saveViewState
{
  v2 = *(self->_private->coreFrame.m_ptr + 26);
  if (*(*(v2 + 32) + 16))
  {
    (*(**(v2 + 16) + 672))();
  }
}

uint64_t __48__WebFrame_WebPrivate__deviceOrientationChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = *(*(v2 + 8) + 8)) == 0 || (v4 = *(v3 + 24)) == 0)
  {
LABEL_6:
    Weak = 0;
    goto LABEL_7;
  }

  Weak = *(v4 + 8);
  if (Weak)
  {
    if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
    {
      Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = [Weak _setDeviceOrientation:{objc_msgSend(objc_msgSend(Weak, "_UIKitDelegateForwarder"), "deviceOrientation")}];
  v7 = *(a1 + 32);
  if (v7)
  {
    result = *(*(v7 + 8) + 8);
    if (result)
    {

      return MEMORY[0x1EEE53E78]();
    }
  }

  return result;
}

- (void)setNeedsLayout
{
  v2 = *(self->_private->coreFrame.m_ptr + 27);
  if (v2)
  {
    MEMORY[0x1EEE55888](v2, a2);
  }
}

- (CGSize)renderedSizeOfNode:(id)node constrainedToWidth:(float)width
{
  v5 = 0.0;
  if (node && (v6 = *(node + 2)) != 0 && (v7 = *(v6 + 72)) != 0)
  {
    v8 = 0.0;
    if ((*(v7 + 45) & 4) != 0)
    {
      widthCopy = vcvts_n_f32_s32((*(*v7 + 1232))(v7, a2, 0.0, 0.0), 6uLL);
      if (widthCopy > width)
      {
        widthCopy = width;
      }

      v5 = widthCopy;
      v8 = vcvtd_n_f64_s32(*(v7 + 164), 6uLL);
    }
  }

  else
  {
    v8 = 0.0;
  }

  result.height = v8;
  result.width = v5;
  return result;
}

- (id)deepestNodeAtViewportLocation:(CGPoint)location
{
  locationCopy = location;
  if (self)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
  }

  else
  {
    m_ptr = 0;
  }

  WebCore::FloatPoint::FloatPoint(v6, &locationCopy);
  v4 = WebCore::LocalFrame::deepestNodeAtLocation(m_ptr, v6);
  return kit(v4);
}

- (id)scrollableNodeAtViewportLocation:(CGPoint)location
{
  locationCopy = location;
  if (self)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
  }

  else
  {
    m_ptr = 0;
  }

  WebCore::FloatPoint::FloatPoint(v6, &locationCopy);
  v4 = WebCore::LocalFrame::nodeRespondingToScrollWheelEvents(m_ptr, v6);
  return kit(v4);
}

- (id)approximateNodeAtViewportLocation:(CGPoint *)location
{
  if (self)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
  }

  else
  {
    m_ptr = 0;
  }

  WebCore::FloatPoint::FloatPoint(v10, location);
  v9 = 0;
  v5 = WebCore::LocalFrame::approximateNodeAtViewportLocationLegacy(m_ptr, v10, &v9);
  WebCore::FloatPoint::operator CGPoint();
  location->x = v6;
  location->y = v7;
  return kit(v5);
}

- (CGRect)renderRectForPoint:(CGPoint)point isReplaced:(BOOL *)replaced fontSize:(float *)size
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  v10 = 0;
  WebCore::LocalFrame::renderRectForPoint(self, point, &v10, size);
  *replaced = v10;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (int)preferredHeight
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  return MEMORY[0x1EEE5BFA0](self, a2);
}

- (int)innerLineHeight:(id)height
{
  if (!height)
  {
    return 0;
  }

  v3 = *(height + 2);
  WebCore::Document::updateLayout();
  v4 = *(v3 + 72);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4 + 288);

  return v5();
}

- (void)updateLayout
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  MEMORY[0x1EEE5BF88](self, a2);
}

- (void)setSelectionChangeCallbacksDisabled:(BOOL)disabled
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  MEMORY[0x1EEE53F30](self, disabled);
}

- (CGRect)caretRect
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  WebCore::LocalFrame::caretRect(self);
  WebCore::IntRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)rectForScrollToVisible
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  WebCore::LocalFrame::rectForScrollToVisible(self);
  WebCore::IntRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setCaretColor:(CGColor *)color
{
  if (color)
  {
    v3 = WebCore::roundAndClampToSRGBALossy(color, a2);
    v4 = (bswap32(v3) | 0x1104000000000000) & (v3 << 31 >> 63);
  }

  else
  {
    v4 = 0x11040000000000FFLL;
  }

  v7 = v4;
  WebCore::FrameSelection::setCaretColor();
  if ((v7 & 0x8000000000000) != 0)
  {
    v6 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v5);
    }
  }
}

- (CGColor)caretColor
{
  if (!self)
  {
    return self;
  }

  v2 = *(*(self + 1) + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 224);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 1312);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 72);
  if (!v5)
  {
    return 0;
  }

  if ((*(v5 + 45) & 2) != 0)
  {
    goto LABEL_22;
  }

  if (*(v5 + 45))
  {
    WebCore::CaretBase::computeCaretColor();
    v8 = v12;
    if ((v12 & 0x4000000000000) == 0)
    {
LABEL_11:
      self = 0;
      if ((v8 & 0x8000000000000) == 0)
      {
        return self;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v6 = *(*(v5 + 24) + 8);
  if (!v6)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A74CE0);
  }

  if ((*(v6 + 32) & 8) == 0)
  {
LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x1C7A74CC0);
  }

  WebCore::CaretBase::computeCaretColor();
  v8 = v12;
  if ((v12 & 0x4000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  WebCore::cachedCGColor();
  self = arg;
  if (arg)
  {
    CFAutorelease(arg);
    self = arg;
  }

  v8 = v12;
  if ((v12 & 0x8000000000000) != 0)
  {
LABEL_18:
    v9 = (v8 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      selfCopy = self;
      WTF::fastFree(v9, v7);
      return selfCopy;
    }
  }

  return self;
}

- (id)documentView
{
  if (!self)
  {
LABEL_5:
    frameView = [(WebFrame *)self frameView];

    return [(WebFrameView *)frameView documentView];
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    v3 = *(*(m_ptr + 26) + 16);
    if ((*(*v3 + 129))(v3, a2))
    {
      self = 0;
      goto LABEL_5;
    }

    frameView = [v3[3] frameView];
  }

  else
  {
    frameView = [0 frameView];
  }

  return [(WebFrameView *)frameView documentView];
}

- (int)layoutCount
{
  if (self && (m_ptr = self->_private->coreFrame.m_ptr) != 0 && (v3 = *(m_ptr + 27)) != 0)
  {
    return MEMORY[0x1EEE55700](v3, a2);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isTelephoneNumberParsingAllowed
{
  if (self && (m_ptr = self->_private->coreFrame.m_ptr) != 0 && (v3 = *(m_ptr + 28)) != 0)
  {
    return MEMORY[0x1EEE5E2E8](v3, a2);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isTelephoneNumberParsingEnabled
{
  if (self && (m_ptr = self->_private->coreFrame.m_ptr) != 0 && (v3 = *(m_ptr + 28)) != 0)
  {
    return MEMORY[0x1EEE5E2F0](v3, a2);
  }

  else
  {
    return 0;
  }
}

- (id)selectedDOMRange
{
  WebCore::VisibleSelection::toNormalizedRange(&v7, (*(*(self->_private->coreFrame.m_ptr + 28) + 3208) + 56));
  result = kit();
  if (v9 == 1)
  {
    v3 = v8;
    v8 = 0;
    if (v3)
    {
      if (*(v3 + 7) == 2)
      {
        v5 = result;
        WebCore::Node::removedLastRef(v3);
        result = v5;
        v4 = v7;
        v7 = 0;
        if (!v4)
        {
          return result;
        }

        goto LABEL_6;
      }

      *(v3 + 7) -= 2;
    }

    v4 = v7;
    v7 = 0;
    if (!v4)
    {
      return result;
    }

LABEL_6:
    if (*(v4 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v4);
      return v6;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return result;
}

- (void)setSelectedDOMRange:(id)range affinity:(unint64_t)affinity closeTyping:(BOOL)typing userTriggered:(BOOL)triggered
{
  if (self)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
    v8 = *(m_ptr + 3);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    m_ptr = 0;
    v8 = MEMORY[0x18];
    if (!MEMORY[0x18])
    {
      return;
    }
  }

  if (*(v8 + 8))
  {
    v9 = WebCore::ScrollView::documentView(*(m_ptr + 27));
    if (v9)
    {
      WebCore::Chrome::focusNSView(*(*(*(m_ptr + 3) + 8) + 56), v9);
    }

    WebCore::makeSimpleRange();
    WebCore::FrameSelection::setSelectedRange();
    if (v16 != 1)
    {
      goto LABEL_18;
    }

    if (v15)
    {
      if (*(v15 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v15);
        v10 = v14;
        if (!v14)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      *(v15 + 7) -= 2;
    }

    v10 = v14;
    if (!v14)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
    }

    else
    {
      *(v10 + 7) -= 2;
    }

LABEL_18:
    if (!typing)
    {
      v11 = *(m_ptr + 28);
      if (v11)
      {
        *(v11 + 7) += 2;
      }

      v12 = WebCore::Document::editor(v11);
      if (v11)
      {
        if (*(v11 + 7) == 2)
        {
          v13 = v12;
          WebCore::Node::removedLastRef(v11);
          v12 = v13;
        }

        else
        {
          *(v11 + 7) -= 2;
        }
      }

      WebCore::Editor::ensureLastEditCommandHasCurrentSelectionIfOpenForMoreTyping(v12);
    }
  }
}

- (id)elementRangeContainingCaretSelection
{
  WebCore::FrameSelection::elementRangeContainingCaretSelection(&v7, *(*(self->_private->coreFrame.m_ptr + 28) + 3208));
  result = kit();
  if (v9 == 1)
  {
    v3 = v8;
    v8 = 0;
    if (v3)
    {
      if (*(v3 + 7) == 2)
      {
        v5 = result;
        WebCore::Node::removedLastRef(v3);
        result = v5;
        v4 = v7;
        v7 = 0;
        if (!v4)
        {
          return result;
        }

        goto LABEL_6;
      }

      *(v3 + 7) -= 2;
    }

    v4 = v7;
    v7 = 0;
    if (!v4)
    {
      return result;
    }

LABEL_6:
    if (*(v4 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v4);
      return v6;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return result;
}

- (unsigned)characterBeforeCaretSelection
{
  if (!self)
  {
    LOWORD(m_ptr) = 0;
    return m_ptr;
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return m_ptr;
  }

  WebCore::Document::updateLayout();
  WebCore::VisiblePosition::VisiblePosition();
  WebCore::VisiblePosition::previous();
  LOWORD(m_ptr) = WebCore::VisiblePosition::characterAfter(&v7);
  v4 = v7;
  v7 = 0;
  if (v4)
  {
    if (*(v4 + 7) != 2)
    {
      *(v4 + 7) -= 2;
      goto LABEL_9;
    }

    WebCore::Node::removedLastRef(v4);
    v5 = v6;
    if (v6)
    {
      goto LABEL_12;
    }

    return m_ptr;
  }

LABEL_9:
  v5 = v6;
  if (!v6)
  {
    return m_ptr;
  }

LABEL_12:
  if (*(v5 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v5);
  }

  else
  {
    *(v5 + 7) -= 2;
  }

  return m_ptr;
}

- (unsigned)characterAfterCaretSelection
{
  if (self)
  {
    if (self->_private->coreFrame.m_ptr)
    {
      WebCore::Document::updateLayout();
      WebCore::VisiblePosition::VisiblePosition();
      LOWORD(self) = WebCore::VisiblePosition::characterAfter(&v5);
      v2 = v5;
      v5 = 0;
      if (v2)
      {
        if (*(v2 + 7) == 2)
        {
          selfCopy = self;
          WebCore::Node::removedLastRef(v2);
          LOWORD(self) = selfCopy;
        }

        else
        {
          *(v2 + 7) -= 2;
        }
      }
    }

    else
    {
      LOWORD(self) = 0;
    }
  }

  return self;
}

- (id)wordRangeContainingCaretSelection
{
  WebCore::FrameSelection::wordRangeContainingCaretSelection(&v7, *(*(self->_private->coreFrame.m_ptr + 28) + 3208));
  result = kit();
  if (v9 == 1)
  {
    v3 = v8;
    v8 = 0;
    if (v3)
    {
      if (*(v3 + 7) == 2)
      {
        v5 = result;
        WebCore::Node::removedLastRef(v3);
        result = v5;
        v4 = v7;
        v7 = 0;
        if (!v4)
        {
          return result;
        }

        goto LABEL_6;
      }

      *(v3 + 7) -= 2;
    }

    v4 = v7;
    v7 = 0;
    if (!v4)
    {
      return result;
    }

LABEL_6:
    if (*(v4 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v4);
      return v6;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return result;
}

- (id)wordInRange:(id)range
{
  if (range)
  {
    return [(WebFrame *)self _stringForRange:?];
  }

  else
  {
    return 0;
  }
}

- (int)wordOffsetInRange:(id)range
{
  if (!range)
  {
    return -1;
  }

  v4 = *(*(self->_private->coreFrame.m_ptr + 28) + 3208);
  v5 = *(v4 + 56);
  if (v5)
  {
    *(v5 + 28) += 2;
  }

  v16 = v5;
  v17 = *(v4 + 64);
  v18 = *(v4 + 68);
  v6 = *(v4 + 72);
  if (v6)
  {
    *(v6 + 28) += 2;
  }

  v19 = v6;
  v20 = *(v4 + 80);
  v21 = *(v4 + 84);
  v7 = *(v4 + 88);
  if (v7)
  {
    *(v7 + 28) += 2;
  }

  v22 = v7;
  v23 = *(v4 + 96);
  v24 = *(v4 + 100);
  v8 = *(v4 + 104);
  if (v8)
  {
    *(v8 + 28) += 2;
  }

  v25 = v8;
  v26 = *(v4 + 112);
  v27 = *(v4 + 116);
  v9 = *(v4 + 120);
  if (v9)
  {
    *(v9 + 28) += 2;
  }

  v28 = v9;
  v29 = *(v4 + 128);
  v30 = *(v4 + 132);
  v10 = *(v4 + 136);
  if (v10)
  {
    *(v10 + 28) += 2;
  }

  v31 = v10;
  v32 = *(v4 + 144);
  v33 = *(v4 + 148);
  v34 = *(v4 + 152);
  if ((v34 & 0xFF00) == 0x100)
  {
    if ((v30 & 8) == 0 && ((v11 = v30 & 7, v11 == 2) || v11 == 4))
    {
      v12 = WebCore::Position::offsetForPositionAfterAnchor(&v28);
    }

    else
    {
      v12 = v29;
    }

    v15 = v12 - *(*(range + 2) + 40);
    v14 = v15 & ~(v15 >> 31);
  }

  else
  {
    v14 = -1;
  }

  WebCore::VisibleSelection::~VisibleSelection(&v16);
  return v14;
}

- (BOOL)spaceFollowsWordInRange:(id)range
{
  if (!range)
  {
    return 0;
  }

  result = WebCore::makeSimpleRange();
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  WebCore::makeDeprecatedLegacyPosition(&v17, &v15, v4);
  v5 = WebCore::VisiblePosition::VisiblePosition();
  v6 = WebCore::VisiblePosition::characterAfter(v5);
  v7 = v6;
  if (v6 > 0xFFu)
  {
    v9 = MEMORY[0x1CCA6AE00]() == 9;
  }

  else
  {
    v8 = (v6 < 0x21u) & (0x100003600uLL >> v6);
    v9 = v7 == 11 || v8;
  }

  v10 = v18;
  v18 = 0;
  if (!v10)
  {
LABEL_13:
    v11 = v17;
    v17 = 0;
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
    goto LABEL_13;
  }

  WebCore::Node::removedLastRef(v10);
  v11 = v17;
  v17 = 0;
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (*(v11 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v11);
    if (v16 != 1)
    {
      return v9;
    }

    goto LABEL_21;
  }

  *(v11 + 7) -= 2;
LABEL_18:
  if (v16 != 1)
  {
    return v9;
  }

LABEL_21:
  v12 = v15;
  v15 = 0;
  if (!v12)
  {
    goto LABEL_24;
  }

  if (*(v12 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v12);
    v13 = v14;
    if (v14)
    {
      goto LABEL_25;
    }

    return v9;
  }

  *(v12 + 7) -= 2;
LABEL_24:
  v13 = v14;
  if (!v14)
  {
    return v9;
  }

LABEL_25:
  if (*(v13 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v13);
  }

  else
  {
    *(v13 + 7) -= 2;
  }

  return v9;
}

- (id)wordsInCurrentParagraph
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  return MEMORY[0x1EEE5BFD0](self, a2);
}

- (BOOL)selectionAtDocumentStart
{
  if (self)
  {
    if (self->_private->coreFrame.m_ptr)
    {
      WebCore::Document::updateLayout();
      WebCore::VisiblePosition::VisiblePosition();
      LOBYTE(self) = WebCore::isStartOfDocument(&v6, v2);
      v3 = v6;
      v6 = 0;
      if (v3)
      {
        if (*(v3 + 7) == 2)
        {
          selfCopy = self;
          WebCore::Node::removedLastRef(v3);
          LOBYTE(self) = selfCopy;
        }

        else
        {
          *(v3 + 7) -= 2;
        }
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (BOOL)selectionAtSentenceStart
{
  if (!self)
  {
    m_ptr = 0;
    if (*(*(MEMORY[0xE0] + 3208) + 153))
    {
      goto LABEL_3;
    }

    return 0;
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!*(*(*(m_ptr + 28) + 3208) + 153))
  {
    return 0;
  }

LABEL_3:
  WebCore::Document::updateLayout();
  v3 = *(*(m_ptr + 28) + 3208);

  return MEMORY[0x1EEE5C9B8](v3);
}

- (BOOL)selectionAtWordStart
{
  if (!self)
  {
    m_ptr = 0;
    if (*(*(MEMORY[0xE0] + 3208) + 153))
    {
      goto LABEL_3;
    }

    return 0;
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!*(*(*(m_ptr + 28) + 3208) + 153))
  {
    return 0;
  }

LABEL_3:
  WebCore::Document::updateLayout();
  v3 = *(*(m_ptr + 28) + 3208);

  return MEMORY[0x1EEE5C9B0](v3);
}

- (id)rangeByMovingCurrentSelection:(int)selection
{
  WebCore::FrameSelection::rangeByMovingCurrentSelection(*(*(self->_private->coreFrame.m_ptr + 28) + 3208));
  result = kit();
  if (v9 == 1)
  {
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        v5 = result;
        WebCore::Node::removedLastRef(v8);
        result = v5;
        v4 = v7;
        if (!v7)
        {
          return result;
        }

        goto LABEL_6;
      }

      *(v8 + 7) -= 2;
    }

    v4 = v7;
    if (!v7)
    {
      return result;
    }

LABEL_6:
    if (*(v4 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v4);
      return v6;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return result;
}

- (id)rangeByExtendingCurrentSelection:(int)selection
{
  WebCore::FrameSelection::rangeByExtendingCurrentSelection(*(*(self->_private->coreFrame.m_ptr + 28) + 3208));
  result = kit();
  if (v9 == 1)
  {
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        v5 = result;
        WebCore::Node::removedLastRef(v8);
        result = v5;
        v4 = v7;
        if (!v7)
        {
          return result;
        }

        goto LABEL_6;
      }

      *(v8 + 7) -= 2;
    }

    v4 = v7;
    if (!v7)
    {
      return result;
    }

LABEL_6:
    if (*(v4 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v4);
      return v6;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return result;
}

- (void)selectNSRange:(_NSRange)range onElement:(id)element
{
  if (self && element && self->_private->coreFrame.m_ptr)
  {
    v6 = core(element);
    *(v6 + 7) += 4;
    WebCore::SimpleRange::SimpleRange();
    WebCore::VisibleSelection::VisibleSelection();
    WebCore::FrameSelection::setSelection();
    WebCore::VisibleSelection::~VisibleSelection(v9);
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v8);
        v4 = v7;
        if (!v7)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      *(v8 + 7) -= 2;
    }

    v4 = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }

LABEL_13:
    if (v6)
    {
      if (*(v6 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v6);
        v5 = v6;
LABEL_17:
        if (*(v5 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v5);
        }

        else
        {
          *(v5 + 7) -= 2;
        }

        return;
      }

      *(v6 + 7) -= 2;
    }

    v5 = v6;
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }
}

- (id)markedTextDOMRange
{
  if (self)
  {
    v2 = *(*(self + 1) + 8);
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 224);
    if (v3)
    {
      *(v3 + 7) += 2;
    }

    v4 = WebCore::Document::editor(v3);
    if (v3)
    {
      if (*(v3 + 7) == 2)
      {
        v5 = v4;
        WebCore::Node::removedLastRef(v3);
        v4 = v5;
      }

      else
      {
        *(v3 + 7) -= 2;
      }
    }

    WebCore::Editor::compositionRange(&v10, v4);
    self = kit();
    if (v12 == 1)
    {
      v6 = v11;
      v11 = 0;
      if (v6)
      {
        if (*(v6 + 7) == 2)
        {
          selfCopy = self;
          WebCore::Node::removedLastRef(v6);
          self = selfCopy;
          v7 = v10;
          v10 = 0;
          if (!v7)
          {
            return self;
          }

          goto LABEL_16;
        }

        *(v6 + 7) -= 2;
      }

      v7 = v10;
      v10 = 0;
      if (!v7)
      {
        return self;
      }

LABEL_16:
      if (*(v7 + 7) == 2)
      {
        selfCopy2 = self;
        WebCore::Node::removedLastRef(v7);
        return selfCopy2;
      }

      else
      {
        *(v7 + 7) -= 2;
      }
    }
  }

  return self;
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  if (self)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      v18 = 0;
      v19 = 0;
      (*(**(*(*(*(m_ptr + 3) + 8) + 56) + 16) + 696))();
      v6 = *(m_ptr + 28);
      if (v6)
      {
        *(v6 + 7) += 2;
      }

      WebCore::Document::editor(v6);
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

      MEMORY[0x1CCA63A40](&v17, text);
      WebCore::Editor::setComposition();
      v8 = v17;
      v17 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v9 = *(*(*(*(m_ptr + 3) + 8) + 56) + 16);
      (*(*v9 + 704))(v9);
      v11 = v18;
      if (HIDWORD(v19))
      {
        v12 = 32 * HIDWORD(v19);
        v13 = (v18 + 16);
        do
        {
          v15 = *v13;
          v13 += 4;
          v14 = v15;
          if ((v15 & 0x8000000000000) != 0)
          {
            v16 = (v14 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16);
              WTF::fastFree(v16, v10);
            }
          }

          v12 -= 32;
        }

        while (v12);
        v11 = v18;
      }

      if (v11)
      {
        v18 = 0;
        LODWORD(v19) = 0;
        WTF::fastFree(v11, v10);
      }
    }
  }
}

- (void)setMarkedText:(id)text forCandidates:(BOOL)candidates
{
  if (self)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      v16 = 0;
      v17 = 0;
      v6 = *(m_ptr + 28);
      if (v6)
      {
        *(v6 + 7) += 2;
      }

      WebCore::Document::editor(v6);
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

      MEMORY[0x1CCA63A40](&v15, text);
      [text length];
      WebCore::Editor::setComposition();
      v8 = v15;
      v15 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v9 = v16;
      if (HIDWORD(v17))
      {
        v10 = 32 * HIDWORD(v17);
        v11 = (v16 + 16);
        do
        {
          v13 = *v11;
          v11 += 4;
          v12 = v13;
          if ((v13 & 0x8000000000000) != 0)
          {
            v14 = (v12 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v14);
              WTF::fastFree(v14, v7);
            }
          }

          v10 -= 32;
        }

        while (v10);
        v9 = v16;
      }

      if (v9)
      {
        v16 = 0;
        LODWORD(v17) = 0;
        WTF::fastFree(v9, v7);
      }
    }
  }
}

- (void)confirmMarkedText:(id)text
{
  if (!self)
  {
    return;
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v5 = *(m_ptr + 28);
  if (v5)
  {
    *(v5 + 7) += 2;
  }

  v6 = WebCore::Document::editor(v5);
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v7 = v6;
      WebCore::Node::removedLastRef(v5);
      if (!WebCore::Editor::client(v7))
      {
        return;
      }

      goto LABEL_11;
    }

    *(v5 + 7) -= 2;
  }

  if (!WebCore::Editor::client(v6))
  {
    return;
  }

LABEL_11:
  v8 = *(*(*(*(m_ptr + 3) + 8) + 56) + 16);
  (*(*v8 + 696))(v8);
  v9 = *(m_ptr + 28);
  if (text)
  {
    if (v9)
    {
      *(v9 + 7) += 2;
    }

    v10 = WebCore::Document::editor(v9);
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

    MEMORY[0x1CCA63A40](&v16, text);
    WebCore::Editor::confirmComposition(v10, &v16);
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }
    }
  }

  else
  {
    if (v9)
    {
      *(v9 + 7) += 2;
    }

    v11 = WebCore::Document::editor(v9);
    if (v9)
    {
      if (*(v9 + 7) == 2)
      {
        v14 = v11;
        WebCore::Node::removedLastRef(v9);
        v11 = v14;
      }

      else
      {
        *(v9 + 7) -= 2;
      }
    }

    WebCore::Editor::confirmMarkedText(v11);
  }

  v15 = *(*(*(*(m_ptr + 3) + 8) + 56) + 16);
  (*(*v15 + 704))(v15);
}

- (void)setText:(id)text asChildOfElement:(id)element
{
  if (self)
  {
    if (element)
    {
      m_ptr = self->_private->coreFrame.m_ptr;
      if (m_ptr)
      {
        v5 = *(m_ptr + 28);
        if (v5)
        {
          *(v5 + 7) += 2;
          WebCore::Document::editor(v5);
          if (*(v5 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v5);
          }

          else
          {
            *(v5 + 7) -= 2;
          }

          MEMORY[0x1CCA63A40](&v10, text);
          core(element);
          WebCore::Editor::setTextAsChildOfElement();
          v9 = v10;
          v10 = 0;
          if (v9)
          {
            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v8);
            }
          }
        }
      }
    }
  }
}

- (void)setDictationPhrases:(id)phrases metadata:(id)metadata asChildOfElement:(id)element
{
  if (self)
  {
    if (element)
    {
      m_ptr = self->_private->coreFrame.m_ptr;
      if (m_ptr)
      {
        v8 = *(m_ptr + 28);
        if (v8)
        {
          *(v8 + 7) += 2;
        }

        WebCore::Document::editor(v8);
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

        vectorForDictationPhrasesArray(phrases, &v16);
        core(element);
        WebCore::Editor::setDictationPhrasesAsChildOfElement();
        v10 = v16;
        if (v18)
        {
          v11 = (v16 + 16 * v18);
          do
          {
            v12 = *(v10 + 3);
            v13 = *v10;
            if (v12)
            {
              v14 = 8 * v12;
              do
              {
                v15 = *v13;
                *v13 = 0;
                if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v15, v9);
                }

                v13 = (v13 + 8);
                v14 -= 8;
              }

              while (v14);
              v13 = *v10;
            }

            if (v13)
            {
              *v10 = 0;
              *(v10 + 2) = 0;
              WTF::fastFree(v13, v9);
            }

            v10 = (v10 + 16);
          }

          while (v10 != v11);
          v10 = v16;
        }

        if (v10)
        {
          v16 = 0;
          v17 = 0;
          WTF::fastFree(v10, v9);
        }
      }
    }
  }
}

- (id)interpretationsForCurrentRoot
{
  if (self)
  {
    self = self->_private->coreFrame.m_ptr;
  }

  return MEMORY[0x1EEE5BFE0](self, a2);
}

- (void)getDictationResultRanges:(id *)ranges andMetadatas:(id *)metadatas
{
  if (!ranges)
  {
    return;
  }

  *ranges = 0;
  if (!metadatas)
  {
    return;
  }

  *metadatas = 0;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v9 = *(self->_private->coreFrame.m_ptr + 28);
  v10 = *(v9 + 401);
  if (*(v10 + 153))
  {
    v11 = WebCore::VisibleSelection::rootEditableElement((v10 + 56));
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_50:
    *ranges = array;
    *metadatas = array2;
    return;
  }

  v11 = WebCore::Document::bodyOrFrameset(*(self->_private->coreFrame.m_ptr + 28));
  if (!v11)
  {
    goto LABEL_50;
  }

LABEL_5:
  rangesCopy = ranges;
  metadatasCopy = metadatas;
  v12 = 0;
  v13 = 0;
  v27 = v9;
  while (2)
  {
    if (!*(v9 + 195))
    {
      WebCore::Document::ensureMarkers(v9);
    }

    v15 = WebCore::DocumentMarkerController::markersFor();
    v17 = v30;
    if (!v31)
    {
      goto LABEL_42;
    }

    v18 = 8 * v31;
    do
    {
      if (!*v17 || (v16 = *(*v17 + 8)) == 0)
      {
        __break(0xC471u);
        return;
      }

      if (*(v16 + 8) == 4096)
      {
        if (*(v16 + 80) != 3)
        {
          mpark::throw_bad_variant_access(v15);
        }

        v19 = *(v16 + 32);
        if (v19)
        {
          WebCore::makeSimpleRange();
          v20 = kit();
          if (v29)
          {
            if (*(v29 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v29);
              v21 = v28;
              if (!v28)
              {
                goto LABEL_29;
              }

              goto LABEL_24;
            }

            *(v29 + 7) -= 2;
          }

          v21 = v28;
          if (!v28)
          {
            goto LABEL_29;
          }

LABEL_24:
          if (*(v21 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v21);
          }

          else
          {
            *(v21 + 7) -= 2;
          }

LABEL_29:
          v29 = 0;
          v28 = 0;
          if (v19 == v12)
          {
            [array removeLastObject];
            [v13 setEnd:objc_msgSend(v20 offset:{"startContainer"), objc_msgSend(v20, "startOffset")}];
            v15 = [array addObject:v13];
          }

          else
          {
            [array2 addObject:{v19, rangesCopy, metadatasCopy}];
            v15 = [array addObject:v20];
            if (v20)
            {
              v15 = v20;
            }

            if (v13)
            {
            }

            v13 = v20;
            v12 = v19;
          }
        }
      }

      v17 = (v17 + 8);
      v18 -= 8;
    }

    while (v18);
    v22 = v30;
    v23 = 8 * v31;
    do
    {
      while (1)
      {
        v24 = *v22;
        *v22 = 0;
        if (v24)
        {
          if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            break;
          }
        }

        ++v22;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_41;
        }
      }

      atomic_store(1u, v24);
      WTF::fastFree(v24, v16);
      ++v22;
      v23 -= 8;
    }

    while (v23);
LABEL_41:
    v17 = v30;
    v9 = v27;
LABEL_42:
    if (v17)
    {
      v30 = 0;
      WTF::fastFree(v17, v16);
    }

    if ((*(v11 + 32) & 4) == 0 || (AncestorSibling = *(v11 + 88)) == 0)
    {
      AncestorSibling = *(v11 + 64);
      if (!AncestorSibling)
      {
        AncestorSibling = WebCore::NodeTraversal::nextAncestorSibling(v11, v16);
      }
    }

    v11 = AncestorSibling;
    if (AncestorSibling)
    {
      continue;
    }

    break;
  }

  *rangesCopy = array;
  *metadatasCopy = array2;
  if (v13)
  {
  }
}

- (id)dictationResultMetadataForRange:(id)range
{
  if (!range)
  {
    return 0;
  }

  v3 = *(self->_private->coreFrame.m_ptr + 28);
  if (!*(v3 + 195))
  {
    WebCore::Document::ensureMarkers(v3);
  }

  WebCore::makeSimpleRange();
  WebCore::DocumentMarkerController::markersInRange();
  if (v14)
  {
    if (*(v14 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v14);
      v5 = v13;
      if (!v13)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    *(v14 + 7) -= 2;
  }

  v5 = v13;
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*(v5 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v5);
  }

  else
  {
    *(v5 + 7) -= 2;
  }

LABEL_14:
  v7 = v15;
  if (!v16)
  {
    v6 = 0;
    if (!v15)
    {
      return v6;
    }

    goto LABEL_25;
  }

  if (*v15)
  {
    v8 = *(*v15 + 8);
    if (v8)
    {
      if (*(v8 + 80) != 3)
      {
        mpark::throw_bad_variant_access(v15);
      }

      v6 = *(v8 + 32);
      v9 = 8 * v16;
      do
      {
        while (1)
        {
          v10 = *v7;
          *v7 = 0;
          if (v10)
          {
            if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
            {
              break;
            }
          }

          v7 = (v7 + 8);
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_24;
          }
        }

        atomic_store(1u, v10);
        v11 = v7;
        WTF::fastFree(v10, v4);
        v7 = (v11 + 8);
        v9 -= 8;
      }

      while (v9);
LABEL_24:
      v7 = v15;
      if (!v15)
      {
        return v6;
      }

LABEL_25:
      WTF::fastFree(v7, v4);
      return v6;
    }
  }

  result = 121;
  __break(0xC471u);
  return result;
}

- (void)recursiveSetUpdateAppearanceEnabled:(BOOL)enabled
{
  if (self)
  {
    if (self->_private->coreFrame.m_ptr)
    {
      MEMORY[0x1EEE53F28]();
    }
  }
}

+ (id)stringWithData:(id)data textEncodingName:(id)name
{
  MEMORY[0x1CCA63A40](&v16, name);
  PAL::TextEncoding::TextEncoding(v17, &v16);
  v6 = v16;
  v16 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v6 = WTF::StringImpl::destroy(v6, v5);
  }

  if (*(&v18 + 1))
  {
    if (!data)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v7 = PAL::WindowsLatin1Encoding(v6);
  v8 = *(v7 + 24);
  v18 = *(v7 + 8);
  v19 = v8;
  if (data)
  {
LABEL_6:
    [data bytes];
    [data length];
  }

LABEL_8:
  v20 = 0;
  PAL::TextEncoding::decode();
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16);
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v9);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v14 = &stru_1F472E7E8;
  }

  v10 = v16;
  v16 = 0;
  if (v10)
  {
    v11 = v10;
    v12 = v16;
    v16 = 0;
    if (v12)
    {
    }
  }

  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v9);
  }

  return v10;
}

- (CGRect)caretRectAtNode:(id)node offset:(int)offset affinity:(unint64_t)affinity
{
  if (node)
  {
    v7 = *(node + 2);
    if (v7)
    {
      *(v7 + 7) += 2;
    }
  }

  else
  {
    v7 = 0;
  }

  v22 = v7;
  WebCore::Position::Position();
  [(WebFrame *)self _caretRectAtPosition:&v23 affinity:affinity];
  v12 = v23;
  v23 = 0;
  if (!v12)
  {
LABEL_8:
    v13 = v22;
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (*(v12 + 7) != 2)
  {
    *(v12 + 7) -= 2;
    goto LABEL_8;
  }

  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  WebCore::Node::removedLastRef(v12);
  v11 = v17;
  v10 = v16;
  v9 = v15;
  v8 = v14;
  v13 = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (*(v13 + 7) == 2)
  {
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    WebCore::Node::removedLastRef(v13);
    v11 = v21;
    v10 = v20;
    v9 = v19;
    v8 = v18;
  }

  else
  {
    *(v13 + 7) -= 2;
  }

LABEL_15:
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (__CTFont)fontForSelection:(BOOL *)selection
{
  v14 = 0;
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    goto LABEL_12;
  }

  v5 = *(m_ptr + 28);
  if (v5)
  {
    *(v5 + 7) += 2;
  }

  v6 = WebCore::Document::editor(v5);
  if (!v5)
  {
LABEL_7:
    WebCore::Editor::fontForSelection(&v13, v6, &v14);
    v7 = v13;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_12:
    result = 0;
    if (!selection)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_7;
  }

  v9 = v6;
  WebCore::Node::removedLastRef(v5);
  WebCore::Editor::fontForSelection(&v13, v9, &v14);
  v7 = v13;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_8:
  result = *(v7 + 88);
  v13 = 0;
  if (*v7 == 1)
  {
    v10 = result;
    v11 = MEMORY[0x1CCA66FC0](v7);
    WTF::fastFree(v11, v12);
    result = v10;
    if (!selection)
    {
      return result;
    }
  }

  else
  {
    --*v7;
    if (!selection)
    {
      return result;
    }
  }

LABEL_13:
  *selection = v14;
  return result;
}

- (void)_userScrolled
{
  if (*(self->_private->coreFrame.m_ptr + 27))
  {
    MEMORY[0x1EEE55760]();
  }
}

- (void)_replaceSelectionWithText:(id)text selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace matchStyle:(BOOL)style
{
  styleCopy = style;
  replaceCopy = replace;
  replacementCopy = replacement;
  WebCore::VisibleSelection::toNormalizedRange(v22, (*(*(self->_private->coreFrame.m_ptr + 28) + 3208) + 56));
  if (v24 != 1)
  {
    v13 = 0;
    goto LABEL_9;
  }

  MEMORY[0x1CCA63A40](&v20, text);
  WebCore::createFragmentFromText(&v21, v22, &v20, v11);
  v13 = kit(v21);
  v14 = v21;
  v21 = 0;
  if (v14)
  {
    if (*(v14 + 7) == 2)
    {
      v19 = v13;
      WebCore::Node::removedLastRef(v14);
      v13 = v19;
      v15 = v20;
      v20 = 0;
      if (!v15)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    *(v14 + 7) -= 2;
  }

  v15 = v20;
  v20 = 0;
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v16 = v13;
    WTF::StringImpl::destroy(v15, v12);
    v13 = v16;
  }

LABEL_9:
  [(WebFrame *)self _replaceSelectionWithFragment:v13 selectReplacement:replacementCopy smartReplace:replaceCopy matchStyle:styleCopy];
  if (v24 != 1)
  {
    return;
  }

  v17 = v23;
  v23 = 0;
  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
      v18 = v22[0];
      v22[0] = 0;
      if (!v18)
      {
        return;
      }

      goto LABEL_14;
    }

    *(v17 + 7) -= 2;
  }

  v18 = v22[0];
  v22[0] = 0;
  if (!v18)
  {
    return;
  }

LABEL_14:
  if (*(v18 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v18);
  }

  else
  {
    *(v18 + 7) -= 2;
  }
}

- (void)_replaceSelectionWithWebArchive:(id)archive selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace
{
  replaceCopy = replace;
  replacementCopy = replacement;
  v20 = *MEMORY[0x1E69E9840];
  subresources = [archive subresources];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [subresources countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        while (1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(subresources);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (!-[WebDataSource subresourceForURL:](-[WebFrame dataSource](self, "dataSource"), "subresourceForURL:", [v14 URL]))
          {
            break;
          }

          if (v11 == ++v13)
          {
            goto LABEL_3;
          }
        }

        [(WebDataSource *)[(WebFrame *)self dataSource] addSubresource:v14];
        ++v13;
      }

      while (v11 != v13);
LABEL_3:
      v11 = [subresources countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(WebFrame *)self _replaceSelectionWithFragment:[(WebDataSource *)[(WebFrame *)self dataSource] _documentFragmentWithArchive:archive] selectReplacement:replacementCopy smartReplace:replaceCopy matchStyle:0];
}

- (void)resetTextAutosizingBeforeLayout
{
  _webHTMLDocumentView = [(WebFrame *)self _webHTMLDocumentView];
  if (self)
  {
    if (_webHTMLDocumentView)
    {
      v4 = self->_private;
      m_ptr = v4->coreFrame.m_ptr;
      if (m_ptr)
      {
        v6 = v4->coreFrame.m_ptr;
        do
        {
          if ((*(v6 + 136) & 1) == 0)
          {
            v7 = *(v6 + 224);
            if (v7)
            {
              v8 = *(v7 + 2024);
              if (v8)
              {
                v9 = v6;
                WebCore::RenderElement::resetTextAutosizing(v8);
                v6 = v9;
              }
            }
          }

          v6 = WebCore::FrameTree::traverseNext((v6 + 40), m_ptr);
        }

        while (v6);
      }
    }
  }
}

- (void)_setTextAutosizingWidth:(double)width
{
  v3 = *(self->_private->coreFrame.m_ptr + 3);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      widthCopy = width;
      *(v4 + 432) = widthCopy;
    }
  }
}

- (void)_createCaptionPreferencesTestingModeToken
{
  v2 = *(self->_private->coreFrame.m_ptr + 3);
  if (v2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = WebCore::Page::group(v4);
      v6 = WebCore::PageGroup::ensureCaptionPreferences(v5);
      WebCore::CaptionUserPreferences::createTestingModeToken(&v22, v6);
      v8 = v22;
      v22 = 0;
      v9 = self->_private;
      ptr = v9->captionPreferencesTestingModeToken.__ptr_;
      v9->captionPreferencesTestingModeToken.__ptr_ = v8;
      if (ptr)
      {
        v11 = *ptr;
        if (!*ptr)
        {
          goto LABEL_9;
        }

        v12 = *(v11 + 8);
        if (v12)
        {
          v13 = *(v12 + 136);
          if (v13)
          {
            *(v12 + 136) = v13 - 1;
          }
        }

        *ptr = 0;
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v11);
          v19 = ptr;
          WTF::fastFree(v11, v7);
          bmalloc::api::tzoneFree(v19, v20);
          v15 = v22;
          v22 = 0;
          if (!v15)
          {
            return;
          }
        }

        else
        {
LABEL_9:
          bmalloc::api::tzoneFree(ptr, v7);
          v15 = v22;
          v22 = 0;
          if (!v15)
          {
            return;
          }
        }

        v16 = *v15;
        if (*v15)
        {
          v17 = *(v16 + 8);
          if (v17)
          {
            v18 = *(v17 + 136);
            if (v18)
            {
              *(v17 + 136) = v18 - 1;
            }
          }

          *v15 = 0;
          if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            v21 = v15;
            WTF::fastFree(v16, v14);
            v15 = v21;
          }
        }

        bmalloc::api::tzoneFree(v15, v14);
      }
    }
  }
}

- (void)_setCaptionDisplayMode:(id)mode
{
  v3 = *(self->_private->coreFrame.m_ptr + 3);
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return;
  }

  v6 = WebCore::Page::group(v4);
  v7 = WebCore::PageGroup::ensureCaptionPreferences(v6);
  MEMORY[0x1CCA63A40](&v18, mode);
  v9 = v18;
  if (!v18)
  {
    return;
  }

  v10 = 0;
  v11 = *(v18 + 1);
  v12 = 1;
  if (v11 > 8)
  {
    if (v11 == 9)
    {
      v16 = *(v18 + 1);
      if ((*(v18 + 16) & 4) != 0)
      {
        if ((*v16 & 0xDF) != 0x41 || (*(v16 + 1) & 0xDF) != 0x55 || (*(v16 + 2) & 0xDF) != 0x54 || (*(v16 + 3) & 0xDF) != 0x4F || (*(v16 + 4) & 0xDF) != 0x4D || (*(v16 + 5) & 0xDF) != 0x41 || (*(v16 + 6) & 0xDF) != 0x54 || (*(v16 + 7) & 0xDF) != 0x49)
        {
          goto LABEL_88;
        }

        v10 = 0;
        v17 = *(v16 + 8);
      }

      else
      {
        if ((*v16 & 0xFFDF) != 0x41 || (*(v16 + 2) & 0xFFDF) != 0x55 || (*(v16 + 4) & 0xFFDF) != 0x54 || (*(v16 + 6) & 0xFFDF) != 0x4F || (*(v16 + 8) & 0xFFDF) != 0x4D || (*(v16 + 10) & 0xFFDF) != 0x41 || (*(v16 + 12) & 0xFFDF) != 0x54 || (*(v16 + 14) & 0xFFDF) != 0x49)
        {
          goto LABEL_88;
        }

        v10 = 0;
        v17 = *(v16 + 16);
      }

      if ((v17 & 0xFFFFFFDF) != 0x43)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 10)
      {
        goto LABEL_89;
      }

      v14 = *(v18 + 1);
      if ((*(v18 + 16) & 4) != 0)
      {
        if ((*v14 & 0xDF) != 0x46)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 1) & 0xDF) != 0x4F)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 2) & 0xDF) != 0x52)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 3) & 0xDF) != 0x43)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 4) & 0xDF) != 0x45)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 5) & 0xDF) != 0x44)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 6) & 0xDF) != 0x4F)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 7) & 0xDF) != 0x4E)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 8) & 0xDF) != 0x4C)
        {
          goto LABEL_88;
        }

        v10 = 1;
        if ((*(v14 + 9) & 0xDF) != 0x59)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if ((*v14 & 0xFFDF) != 0x46)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 2) & 0xFFDF) != 0x4F)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 4) & 0xFFDF) != 0x52)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 6) & 0xFFDF) != 0x43)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 8) & 0xFFDF) != 0x45)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 10) & 0xFFDF) != 0x44)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 12) & 0xFFDF) != 0x4F)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 14) & 0xFFDF) != 0x4E)
        {
          goto LABEL_88;
        }

        if ((*(v14 + 16) & 0xFFDF) != 0x4C)
        {
          goto LABEL_88;
        }

        v10 = 1;
        if ((*(v14 + 18) & 0xFFDF) != 0x59)
        {
          goto LABEL_88;
        }
      }
    }

LABEL_76:
    v12 = 0;
    goto LABEL_89;
  }

  if (v11 == 6)
  {
    v15 = *(v18 + 1);
    if ((*(v18 + 16) & 4) != 0)
    {
      if ((*v15 & 0xDF) != 0x4D || (*(v15 + 1) & 0xDF) != 0x41 || (*(v15 + 2) & 0xDF) != 0x4E || (*(v15 + 3) & 0xDF) != 0x55 || (*(v15 + 4) & 0xDF) != 0x41 || (*(v15 + 5) & 0xDF) != 0x4C)
      {
        goto LABEL_88;
      }
    }

    else if ((*v15 & 0xFFDF) != 0x4D || (*(v15 + 2) & 0xFFDF) != 0x41 || (*(v15 + 4) & 0xFFDF) != 0x4E || (*(v15 + 6) & 0xFFDF) != 0x55 || (*(v15 + 8) & 0xFFDF) != 0x41 || (*(v15 + 10) & 0xFFDF) != 0x4C)
    {
      goto LABEL_88;
    }

    v10 = 3;
    goto LABEL_76;
  }

  if (v11 == 8)
  {
    v13 = *(v18 + 1);
    if ((*(v18 + 16) & 4) != 0)
    {
      if ((*v13 & 0xDF) != 0x41 || (*(v13 + 1) & 0xDF) != 0x4C || (*(v13 + 2) & 0xDF) != 0x57 || (*(v13 + 3) & 0xDF) != 0x41 || (*(v13 + 4) & 0xDF) != 0x59 || (*(v13 + 5) & 0xDF) != 0x53 || (*(v13 + 6) & 0xDF) != 0x4F || (*(v13 + 7) & 0xDF) != 0x4E)
      {
        goto LABEL_88;
      }
    }

    else if ((*v13 & 0xFFDF) != 0x41 || (*(v13 + 2) & 0xFFDF) != 0x4C || (*(v13 + 4) & 0xFFDF) != 0x57 || (*(v13 + 6) & 0xFFDF) != 0x41 || (*(v13 + 8) & 0xFFDF) != 0x59 || (*(v13 + 10) & 0xFFDF) != 0x53 || (*(v13 + 12) & 0xFFDF) != 0x4F || (*(v13 + 14) & 0xFFDF) != 0x4E)
    {
LABEL_88:
      v10 = 0;
      goto LABEL_89;
    }

    v10 = 2;
    goto LABEL_76;
  }

LABEL_89:
  v18 = 0;
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  if ((v12 & 1) == 0)
  {
    (*(*v7 + 24))(v7, v10);
  }
}

- (void)_replaceSelectionWithFragment:(id)fragment selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace matchStyle:(BOOL)style
{
  if (fragment)
  {
    v6 = *(self->_private->coreFrame.m_ptr + 28);
    if (*(*(v6 + 3208) + 153))
    {
      styleCopy = style;
      replaceCopy = replace;
      replacementCopy = replacement;
      *(v6 + 28) += 2;
      v11 = WebCore::Document::editor(v6);
      if (*(v6 + 28) == 2)
      {
        v12 = v11;
        WebCore::Node::removedLastRef(v6);
        v11 = v12;
      }

      else
      {
        *(v6 + 28) -= 2;
      }

      v13 = *(fragment + 2);

      MEMORY[0x1EEE5AD00](v11, v13, replacementCopy, replaceCopy, styleCopy, 14, 0);
    }
  }
}

- (void)removeUnchangeableStyles
{
  v2 = *(self->_private->coreFrame.m_ptr + 28);
  if (v2)
  {
    *(v2 + 7) += 2;
  }

  v3 = WebCore::Document::editor(v2);
  if (!v2)
  {
    goto LABEL_6;
  }

  if (*(v2 + 7) != 2)
  {
    *(v2 + 7) -= 2;
LABEL_6:

    goto __ZN7WebCore6Editor24removeUnchangeableStylesEv;
  }

  v4 = v3;
  WebCore::Node::removedLastRef(v2);
  v3 = v4;

- (void)_replaceSelectionWithText:(id)text selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace
{
  replaceCopy = replace;
  replacementCopy = replacement;
  WebCore::VisibleSelection::toNormalizedRange(v20, (*(*(self->_private->coreFrame.m_ptr + 28) + 3208) + 56));
  if (v22 != 1)
  {
    v11 = 0;
    goto LABEL_9;
  }

  MEMORY[0x1CCA63A40](&v18, text);
  WebCore::createFragmentFromText(&v19, v20, &v18, v9);
  v11 = kit(v19);
  v12 = v19;
  v19 = 0;
  if (v12)
  {
    if (*(v12 + 7) == 2)
    {
      v17 = v11;
      WebCore::Node::removedLastRef(v12);
      v11 = v17;
      v13 = v18;
      v18 = 0;
      if (!v13)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    *(v12 + 7) -= 2;
  }

  v13 = v18;
  v18 = 0;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v14 = v11;
    WTF::StringImpl::destroy(v13, v10);
    v11 = v14;
  }

LABEL_9:
  [(WebFrame *)self _replaceSelectionWithFragment:v11 selectReplacement:replacementCopy smartReplace:replaceCopy matchStyle:1];
  if (v22 != 1)
  {
    return;
  }

  v15 = v21;
  v21 = 0;
  if (v15)
  {
    if (*(v15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v15);
      v16 = v20[0];
      v20[0] = 0;
      if (!v16)
      {
        return;
      }

      goto LABEL_14;
    }

    *(v15 + 7) -= 2;
  }

  v16 = v20[0];
  v20[0] = 0;
  if (!v16)
  {
    return;
  }

LABEL_14:
  if (*(v16 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v16);
  }

  else
  {
    *(v16 + 7) -= 2;
  }
}

- (void)_replaceSelectionWithMarkupString:(id)string baseURLString:(id)lString selectReplacement:(BOOL)replacement smartReplace:(BOOL)replace
{
  replaceCopy = replace;
  replacementCopy = replacement;
  v9 = [(WebFrame *)self _documentFragmentWithMarkupString:string baseURLString:lString];

  [(WebFrame *)self _replaceSelectionWithFragment:v9 selectReplacement:replacementCopy smartReplace:replaceCopy matchStyle:0];
}

- (id)_cacheabilityDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  v5 = *(self->_private->coreFrame.m_ptr + 26);
  v6 = *(v5 + 96);
  if (v6 && *(v6 + 1604))
  {
    dictionary = [dictionary setObject:MEMORY[0x1CCA691D0](v6 + 1544) forKey:WebFrameMainDocumentError];
  }

  if (**(v5 + 64) == 1)
  {
    dictionary = [v4 setObject:MEMORY[0x1E695E118] forKey:WebFrameHasPlugins];
  }

  v7 = *(*(self->_private->coreFrame.m_ptr + 28) + 736);
  if (v7)
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 736);
    if (v8 && (dictionary = *(v8 + 96)) != 0)
    {
      if (dictionary[5])
      {
        goto LABEL_10;
      }
    }

    else
    {
      dictionary = WebCore::threadGlobalDataSlow(dictionary);
      if (dictionary[5])
      {
LABEL_10:
        if ((*(v7 + 16) & 0x1000000000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    dictionary = WebCore::ThreadGlobalData::initializeEventNames(dictionary);
    if ((*(v7 + 16) & 0x1000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    dictionary = WebCore::EventListenerMap::find();
    if (dictionary)
    {
      dictionary = [v4 setObject:MEMORY[0x1E695E118] forKey:WebFrameHasUnloadListener];
    }
  }

LABEL_13:
  v9 = *(self->_private->coreFrame.m_ptr + 28);
  if (v9)
  {
    v10 = WebCore::DatabaseManager::singleton(dictionary);
    if (WebCore::DatabaseManager::hasOpenDatabases(v10, v9))
    {
      [v4 setObject:MEMORY[0x1E695E118] forKey:WebFrameUsesDatabases];
    }
  }

  return v4;
}

- (BOOL)_allowsFollowingLink:(id)link
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 1;
  }

  WebCore::SecurityContext::securityOrigin((*(m_ptr + 28) + 208));
  v5 = MEMORY[0x1CCA63960](&v10, link);
  WebCore::OriginAccessPatternsForWebProcess::singleton(v5);
  result = WebCore::SecurityOrigin::canDisplay();
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v9 = result;
      WTF::StringImpl::destroy(v8, v7);
      return v9;
    }
  }

  return result;
}

- (id)_stringByEvaluatingJavaScriptFromString:(id)string withGlobalObject:(OpaqueJSValue *)object inScriptWorld:(id)world
{
  v5 = &stru_1F472E7E8;
  if (!string || !world)
  {
    return v5;
  }

  v9 = *(self->_private->coreFrame.m_ptr + 29);
  v10 = WebCore::mainThreadNormalWorldSingleton(self);
  v11 = *(WebCore::ScriptController::jsWindowProxy(v9, v10) + 16);
  if (!strcmp(*(16 * *(16 * (*object & 0xFFFFFFFE) + 0x4C)), "JSWindowProxy"))
  {
    v11 = *(object + 2);
    v12 = *(16 * (*v11 & 0xFFFFFFFE) + 0x4C);
    v13 = *(16 * (*v11 & 0xFFFFFFFE) + 0x4C) != 0;
    v14 = 16 * v12;
    if (v12)
    {
      v15 = v14 == MEMORY[0x1E69E24D8];
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      do
      {
        v14 = *(v14 + 16);
        v13 = v14 != 0;
      }

      while (v14 != MEMORY[0x1E69E24D8] && v14 != 0);
    }

    if (!v13)
    {
      return &stru_1F472E7E8;
    }
  }

  if (!v11)
  {
    return &stru_1F472E7E8;
  }

  v17 = WebCore::JSDOMWindowBase::wrapped(v11);
  v18 = (*(*v17 + 104))(v17);
  v19 = *(*(v18 + 208) + 16);
  if ((*(*v19 + 1032))(v19))
  {
    v20 = 0;
LABEL_20:
    v22 = 1;
    goto LABEL_21;
  }

  v20 = v19[3];
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = v20;
  v22 = 0;
LABEL_21:
  v23 = *(v18 + 232);
  v24 = *(*(world + 1) + 8);
  MEMORY[0x1CCA63A40](v36, string);
  v26 = WebCore::ScriptController::executeUserAgentScriptInWorldIgnoringException(v23, v24, v36);
  v36[1] = v26;
  v27 = v36[0];
  v36[0] = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v25);
  }

  v5 = &stru_1F472E7E8;
  if (!*(v20[1] + 8) || !v26)
  {
    goto LABEL_49;
  }

  if ((v26 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    goto LABEL_31;
  }

  if ((v26 & 0xFFFE000000000002) == 0)
  {
    if (*(v26 + 5) != 2)
    {
      goto LABEL_49;
    }

LABEL_31:
    JSC::JSLockHolder::JSLockHolder();
    if ((v26 & 0xFFFE000000000002) != 0 || *(v26 + 5) != 2)
    {
      JSC::JSValue::toWTFStringSlowCase();
      v28 = v34;
    }

    else
    {
      v28 = *(v26 + 8);
      if (v28)
      {
        v28 = *JSC::JSRopeString::resolveRope();
      }

      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v34 = v28;
    }

    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v35, v28);
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v29);
      }
    }

    else
    {
      v35 = &stru_1F472E7E8;
      v33 = &stru_1F472E7E8;
    }

    v5 = v35;
    v35 = 0;
    if (v5)
    {
      v30 = v5;
      v31 = v35;
      v35 = 0;
      if (v31)
      {
      }
    }

    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v29);
    }

    MEMORY[0x1CCA63200](v36);
    goto LABEL_49;
  }

  if (v26 >> 49)
  {
    goto LABEL_31;
  }

LABEL_49:
  if ((v22 & 1) == 0)
  {
  }

  return v5;
}

- (OpaqueJSContext)_globalContextForScriptWorld:(id)world
{
  result = 0;
  if (world)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      v6 = *(*(world + 1) + 8);
      if (v6)
      {
        return *(WebCore::ScriptController::jsWindowProxy(*(m_ptr + 29), v6) + 16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)_javaScriptContextForScriptWorld:(id)world
{
  result = [(WebFrame *)self _globalContextForScriptWorld:world];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E696EB40];

    return [v5 contextWithJSGlobalContextRef:v4];
  }

  return result;
}

- (void)setAccessibleName:(id)name
{
  v3 = atomic_load(MEMORY[0x1E69E2500]);
  if (v3)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      v5 = *(m_ptr + 28);
      if (v5)
      {
        v8 = WebCore::Document::axObjectCache(v5);
        v9 = WebCore::AXObjectCache::rootObjectForFrame(v8, self->_private->coreFrame.m_ptr);
        if (v9)
        {
          nameCopy = name;
          v12 = v9;
          WTF::AtomStringImpl::add(&v15, nameCopy, v10);
          (*(*v12 + 1184))(v12, &v15);
          v14 = v15;
          v15 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v13);
            }
          }
        }
      }
    }
  }
}

- (id)_layerTreeAsText
{
  m_ptr = self->_private->coreFrame.m_ptr;
  v3 = &stru_1F472E7E8;
  if (m_ptr)
  {
    v4 = WebCore::LocalFrame::contentRenderer(m_ptr);
    WebCore::RenderView::compositor(v4);
    WebCore::RenderLayerCompositor::layerTreeAsText();
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v11);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v5);
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
      v6 = v3;
      v7 = v11;
      v11 = 0;
      if (v7)
      {
      }
    }

    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v5);
    }
  }

  return v3;
}

- (id)accessibilityRoot
{
  v2 = atomic_load(MEMORY[0x1E69E2500]);
  if ((v2 & 1) == 0)
  {
    atomic_store(1u, MEMORY[0x1E69E2500]);
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v4 = *(m_ptr + 28);
  if (!v4)
  {
    return 0;
  }

  result = WebCore::Document::axObjectCache(*(m_ptr + 28));
  if (result)
  {
    v7 = WebCore::Document::axObjectCache(v4);
    result = WebCore::AXObjectCache::rootObjectForFrame(v7, self->_private->coreFrame.m_ptr);
    if (result)
    {
      v8 = result;
      if ((*(*result + 40))(result) && (*(*v8 + 13))(v8))
      {
        if ((*(*v8 + 348))(v8))
        {
          v8 = (*(*v8 + 348))(v8);
        }
      }

      return v8[5];
    }
  }

  return result;
}

- (void)_clearOpener
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1EEE5AA58](m_ptr, a2);
  }
}

- (BOOL)hasRichlyEditableDragCaret
{
  v2 = *(self->_private->coreFrame.m_ptr + 3);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    return MEMORY[0x1EEE5D3E8](*(v3 + 64), a2);
  }

  else
  {
    return 0;
  }
}

- (id)_computePageRectsWithPrintScaleFactor:(float)factor pageSize:(CGSize)size
{
  if (factor <= 0.0)
  {
    return MEMORY[0x1E695E0F0];
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return MEMORY[0x1E695E0F0];
  }

  if (!*(m_ptr + 28))
  {
    return MEMORY[0x1E695E0F0];
  }

  v5 = *(m_ptr + 27);
  if (!v5)
  {
    return MEMORY[0x1E695E0F0];
  }

  width = size.width;
  height = size.height;
  if (!WebCore::ScrollView::documentView(v5))
  {
    return MEMORY[0x1E695E0F0];
  }

  selfCopy = self;
  v11 = *(self->_private->coreFrame.m_ptr + 28);
  v12 = *(v11 + 2024);
  if (!v12)
  {
    return MEMORY[0x1E695E0F0];
  }

  v13 = selfCopy;
  WebCore::RenderView::documentRect(*(v11 + 2024));
  v16 = height;
  if (*(v12 + 120))
  {
    v17 = width;
  }

  else
  {
    v17 = v14 / factor;
  }

  if (*(v12 + 120))
  {
    v18 = v15 / factor;
  }

  else
  {
    v18 = v16;
  }

  WebCore::PrintContext::PrintContext(v27, v13->_private->coreFrame.m_ptr);
  v26.var0 = v17;
  v26.var1 = v18;
  WebCore::PrintContext::computePageRectsWithPageSize(v27, &v26);
  v19 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = [v19 initWithCapacity:v29];
  if (v29)
  {
    v21 = v28;
    v22 = 16 * v29;
    do
    {
      NSArrayElement = WebCore::makeNSArrayElement();
      if (NSArrayElement)
      {
        [v20 addObject:NSArrayElement];
      }

      v21 += 16;
      v22 -= 16;
    }

    while (v22);
  }

  if (v20)
  {
    v25 = v20;
  }

  MEMORY[0x1CCA645A0](v27);
  return v20;
}

- (id)_documentFragmentForText:(id)text
{
  WebCore::VisibleSelection::toNormalizedRange(v17, (*(*(self->_private->coreFrame.m_ptr + 28) + 3208) + 56));
  if (v19 != 1)
  {
    return 0;
  }

  MEMORY[0x1CCA63A40](&v15, text);
  WebCore::createFragmentFromText(&v16, v17, &v15, v4);
  result = kit(v16);
  v7 = v16;
  v16 = 0;
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      v12 = result;
      WebCore::Node::removedLastRef(v7);
      result = v12;
      v8 = v15;
      v15 = 0;
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    *(v7 + 7) -= 2;
  }

  v8 = v15;
  v15 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v9 = result;
    WTF::StringImpl::destroy(v8, v6);
    result = v9;
  }

LABEL_8:
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v10 = v18;
  v18 = 0;
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      v13 = result;
      WebCore::Node::removedLastRef(v10);
      result = v13;
      v11 = v17[0];
      v17[0] = 0;
      if (!v11)
      {
        return result;
      }

      goto LABEL_13;
    }

    *(v10 + 7) -= 2;
  }

  v11 = v17[0];
  v17[0] = 0;
  if (!v11)
  {
    return result;
  }

LABEL_13:
  if (*(v11 + 7) == 2)
  {
    v14 = result;
    WebCore::Node::removedLastRef(v11);
    return v14;
  }

  else
  {
    *(v11 + 7) -= 2;
  }

  return result;
}

- (id)_documentFragmentForWebArchive:(id)archive
{
  dataSource = [(WebFrame *)self dataSource];

  return [(WebDataSource *)dataSource _documentFragmentWithArchive:archive];
}

- (id)_documentFragmentForImageData:(id)data withRelativeURLPart:(id)part andMIMEType:(id)type
{
  v9 = [WebResource alloc];
  MEMORY[0x1CCA63A40](&v17, part);
  WTF::URL::fakeURLWithRelativePart();
  WTF::URL::createCFURL(&v19, &v18);
  v11 = [(WebResource *)v9 initWithData:data URL:v19 MIMEType:type textEncodingName:0 frameName:0];
  v12 = v19;
  v19 = 0;
  if (v12)
  {
  }

  v13 = v18;
  v18 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  result = [-[WebFrame _dataSource](self "_dataSource")];
  if (v11)
  {
    v16 = result;

    return v16;
  }

  return result;
}

- (BOOL)focusedNodeHasContent
{
  m_ptr = self->_private->coreFrame.m_ptr;
  v3 = *(m_ptr + 28);
  v4 = *(v3 + 401);
  if (*(v4 + 153))
  {
    if (WebCore::VisibleSelection::isContentEditable((v4 + 56)))
    {
      v5 = WebCore::VisibleSelection::rootEditableElement((v4 + 56));
      if (!v5)
      {
        return 0;
      }

      goto LABEL_7;
    }

    v3 = *(m_ptr + 28);
  }

  v5 = WebCore::Document::bodyOrFrameset(v3);
  if (!v5)
  {
    return 0;
  }

LABEL_7:
  if (!*(v5 + 88))
  {
    return 0;
  }

  *(v5 + 28) += 2;
  WebCore::Position::Position();
  WebCore::VisiblePosition::VisiblePosition();
  v6 = v14;
  v14 = 0;
  if (!v6)
  {
LABEL_11:
    v7 = v5;
    goto LABEL_15;
  }

  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    goto LABEL_11;
  }

  WebCore::Node::removedLastRef(v6);
  v7 = v5;
LABEL_15:
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
  }

  else
  {
    *(v7 + 7) -= 2;
  }

  *(v5 + 28) += 2;
  WebCore::ContainerNode::countChildNodes(v5);
  WebCore::Position::Position();
  WebCore::VisiblePosition::VisiblePosition();
  if (*(v5 + 28) == 2)
  {
    WebCore::Node::removedLastRef(v5);
  }

  else
  {
    *(v5 + 28) -= 2;
  }

  v9 = WebCore::operator==(&v15, &v14);
  v10 = v14;
  v14 = 0;
  if (!v10)
  {
LABEL_24:
    result = !v9;
    v11 = v15;
    v15 = 0;
    if (!v11)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
    goto LABEL_24;
  }

  v12 = v9;
  WebCore::Node::removedLastRef(v10);
  result = !v12;
  v11 = v15;
  v15 = 0;
  if (!v11)
  {
    return result;
  }

LABEL_27:
  if (*(v11 + 7) == 2)
  {
    v13 = result;
    WebCore::Node::removedLastRef(v11);
    return v13;
  }

  else
  {
    *(v11 + 7) -= 2;
  }

  return result;
}

- (void)_dispatchDidReceiveTitle:(id)title
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    v4 = *(*(m_ptr + 26) + 16);
    MEMORY[0x1CCA63A40](&v7, title);
    v8 = 0;
    (*(*v4 + 320))(v4, &v7);
    v6 = v7;
    v7 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }
}

- (OpaqueJSValue)jsWrapperForNode:(id)node inScriptWorld:(id)world
{
  Wrapper = 0;
  if (world)
  {
    m_ptr = self->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      v7 = *(WebCore::ScriptController::jsWindowProxy(*(m_ptr + 29), *(*(world + 1) + 8)) + 16);
      JSC::JSLockHolder::JSLockHolder();
      if (node && (v8 = *(node + 2)) != 0)
      {
        if (*(v7 + 3448))
        {
          v9 = *(v8 + 8);
          if (!v9 || (*(v9 + 8) & 3) != 0 || (Wrapper = *v9) == 0)
          {
LABEL_8:
            *(v8 + 28) += 2;
            v14 = v8;
            Wrapper = WebCore::createWrapper();
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
        }

        else
        {
          v12 = *(node + 2);
          Wrapper = WebCore::getOutOfLineCachedWrapper();
          v8 = v12;
          if (!Wrapper)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        Wrapper = 2;
      }

      MEMORY[0x1CCA63200](&v13);
    }
  }

  return Wrapper;
}

- (id)elementAtPoint:(CGPoint)point
{
  pointCopy = point;
  if (!self->_private->coreFrame.m_ptr)
  {
    return 0;
  }

  v3 = [WebElementDictionary alloc];
  WebCore::IntPoint::IntPoint(v9, &pointCopy);
  v4 = vcgt_s32(v9[0], 0xFE000000FE000000);
  v9[1] = vorr_s8((*&v4 & 0x7FFFFFFF7FFFFFFFLL), vbic_s8(vbsl_s8(vcgt_s32(0xFE000000FE000000, v9[0]), 0x8000000080000000, vshl_n_s32(v9[0], 6uLL)), v4));
  WebCore::EventHandler::hitTestResultAtPoint();
  v5 = [(WebElementDictionary *)v3 initWithHitTestResult:v10];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  MEMORY[0x1CCA64820](v10);
  return v6;
}

- (id)_unreachableURL
{
  _dataSource = [(WebFrame *)self _dataSource];

  return [_dataSource unreachableURL];
}

- (void)_generateTestReport:(id)report withGroup:(id)group
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 28);
    if (v5)
    {
      *(v5 + 28) += 2;
      if (!*(v5 + 3344))
      {
        WebCore::Document::ensureReportingScope(v5);
      }

      MEMORY[0x1CCA63A40](&v12, report);
      MEMORY[0x1CCA63A40](&v11, group);
      WebCore::ReportingScope::generateTestReport();
      v9 = v11;
      v11 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }

      v10 = v12;
      v12 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v8);
      }

      if (*(v5 + 28) == 2)
      {
        WebCore::Node::removedLastRef(v5);
      }

      else
      {
        *(v5 + 28) -= 2;
      }
    }
  }
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3 && v3->includedInWebKitStatistics)
  {
    --WebFrameCount;
  }

  v4.receiver = self;
  v4.super_class = WebFrame;
  [(WebFrame *)&v4 dealloc];
}

- (NSString)name
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  WebCore::FrameTree::uniqueName(&v11, (m_ptr + 40));
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
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  return v5;
}

- (WebView)webView
{
  if (!self)
  {
    return 0;
  }

  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = *(m_ptr + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4 || ((*(**(*(v4 + 56) + 16) + 1440))(*(*(v4 + 56) + 16), a2) & 1) != 0)
  {
    return 0;
  }

  v6 = (*(*(v4 + 56) + 16) + 16);

  return objc_loadWeak(v6);
}

- (DOMDocument)DOMDocument
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  if (![-[WebFrame _dataSource](self "_dataSource")])
  {
    return 0;
  }

  v3 = *(m_ptr + 28);
  if (v3)
  {
    if ((*(v3 + 1759) & 0xC) != 0)
    {
      return 0;
    }
  }

  return kit(v3);
}

- (DOMHTMLElement)frameElement
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = *(m_ptr + 14);
  if (v3)
  {
    return kit(*(v3 + 8));
  }

  else
  {
    return kit(0);
  }
}

- (WebDataSource)provisionalDataSource
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr && (v3 = *(*(m_ptr + 26) + 104)) != 0)
  {
    return *(v3 + 3608);
  }

  else
  {
    return 0;
  }
}

- (WebDataSource)dataSource
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr || !WebCore::FrameLoader::frameHasLoaded(*(m_ptr + 26)))
  {
    return 0;
  }

  return [(WebFrame *)self _dataSource];
}

- (void)loadRequest:(NSURLRequest *)request
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v5 = MEMORY[0x1CCA65390](v27, request);
  if ((*(WebCore::ResourceRequestBase::url(v5) + 8) & 1) == 0)
  {
    v6 = *WebCore::ResourceRequestBase::url(v27);
    if (v6)
    {
      if (*(v6 + 4))
      {
        MEMORY[0x1CCA63960](v26, [MEMORY[0x1E695DFF8] URLWithString:{objc_msgSend(@"file:", "stringByAppendingString:", -[NSURL absoluteString](-[NSURLRequest URL](request, "URL"), "absoluteString"))}]);
        WebCore::ResourceRequestBase::setURL();
        v8 = v26[0];
        v26[0] = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v7);
          }
        }
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  *v20 = 0u;
  v21 = 0u;
  WebCore::SubstituteData::SubstituteData(v20);
  MEMORY[0x1CCA65720](v26, m_ptr, v27, v20);
  WebCore::FrameLoader::load();
  MEMORY[0x1CCA65730](v26);
  v10 = *(&v24 + 1);
  *(&v24 + 1) = 0;
  if (v10)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v23, v9);
  v12 = v20[1];
  v20[1] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v20[0];
  v20[0] = 0;
  if (!v13 || atomic_fetch_add(v13 + 2, 0xFFFFFFFF) != 1)
  {
    v14 = v31;
    v31 = 0;
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  atomic_store(1u, v13 + 2);
  (*(*v13 + 8))(v13);
  v14 = v31;
  v31 = 0;
  if (v14)
  {
LABEL_16:
  }

LABEL_17:
  v15 = v30;
  v30 = 0;
  if (!v15)
  {
    goto LABEL_20;
  }

  if (*v15 != 1)
  {
    --*v15;
LABEL_20:
    v16 = v29;
    v29 = 0;
    if (!v16)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v11);
    }

    goto LABEL_25;
  }

  v17 = MEMORY[0x1CCA67F60](v15, v11);
  bmalloc::api::tzoneFree(v17, v18);
  v16 = v29;
  v29 = 0;
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_25:
  v19 = v28;
  v28 = 0;
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
    }
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(v27, v11);
}

- (void)_loadData:(id)data MIMEType:(id)type textEncodingName:(id)name baseURL:(id)l unreachableURL:(id)rL
{
  dataCopy = data;
  if (l)
  {
    absoluteURL = [l absoluteURL];
    v12 = absoluteURL;
    if (absoluteURL)
    {
      v13 = absoluteURL;
    }

    v14 = 0;
  }

  else
  {
    v15 = WTF::aboutBlankURL(self);
    WTF::URL::createCFURL(&v112, v15);
    v16 = v112;
    UniqueWebDataURL = createUniqueWebDataURL();
    v14 = UniqueWebDataURL;
    if (UniqueWebDataURL)
    {
      v18 = UniqueWebDataURL;
    }

    v12 = v16;
  }

  MEMORY[0x1CCA63A40](&v112, type);
  if (((WebCore::MIMETypeRegistry::isSupportedNonImageMIMEType(&v112, v19) & 1) != 0 || (WebCore::MIMETypeRegistry::isSupportedImageMIMEType(&v112, v20) & 1) != 0 || (MEMORY[0x1CCA639B0](v112, "text/css", 8) & 1) != 0 || MEMORY[0x1CCA639B0](v112, "application/pdf", 15)) && (MEMORY[0x1CCA639B0](v112, "text/plain", 10) & 1) == 0 && (MEMORY[0x1CCA639B0](v112, "text/xml", 8) & 1) == 0)
  {
    v23 = MEMORY[0x1CCA639B0](v112, "application/xml", 15);
    v24 = v112;
    v112 = 0;
    if (!v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v23 = 1;
    v24 = v112;
    v112 = 0;
    if (!v24)
    {
      goto LABEL_21;
    }
  }

  if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v21);
  }

LABEL_21:
  if (v23)
  {
    if (v14)
    {
      v25 = v14;
    }

    else
    {
      v25 = v12;
    }

    if (v25)
    {
      v26 = v25;
    }

    WebCore::registerQLPreviewConverterIfNeeded(v94, v25, type, dataCopy, v22);
    if (v94[0])
    {
      m_ptr = self->_private->coreFrame.m_ptr;
      MEMORY[0x1CCA65390](&v71);
      v111 = 0u;
      memset(v110, 0, sizeof(v110));
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      v105 = 0u;
      memset(v106, 0, sizeof(v106));
      v103 = 0u;
      v104 = 0u;
      WebCore::SubstituteData::SubstituteData(&v103);
      MEMORY[0x1CCA65720](&v112, m_ptr, &v71, &v103);
      WebCore::FrameLoader::load();
      MEMORY[0x1CCA65730](&v112);
      v29 = v110[13];
      v110[13] = 0;
      if (v29)
      {
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v106, v28);
      v31 = *(&v103 + 1);
      *(&v103 + 1) = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v30);
      }

      v32 = v103;
      *&v103 = 0;
      if (v32 && atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v32 + 2);
        (*(*v32 + 8))(v32);
        v33 = *(&v89 + 1);
        *(&v89 + 1) = 0;
        if (!v33)
        {
LABEL_37:
          v34 = v88;
          *&v88 = 0;
          if (v34)
          {
            if (*v34 == 1)
            {
              v66 = MEMORY[0x1CCA67F60]();
              bmalloc::api::tzoneFree(v66, v67);
              v35 = *(&v87 + 1);
              *(&v87 + 1) = 0;
              if (!v35)
              {
                goto LABEL_89;
              }

              goto LABEL_87;
            }

            --*v34;
          }

          v35 = *(&v87 + 1);
          *(&v87 + 1) = 0;
          if (!v35)
          {
LABEL_89:
            v68 = v87;
            *&v87 = 0;
            if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v68, v30);
            }

            WebCore::ResourceRequestBase::RequestData::~RequestData(&v71, v30);
            v69 = v94[0];
            v94[0] = 0;
            if (v69)
            {
            }

            if (v25)
            {
            }

            goto LABEL_96;
          }

LABEL_87:
          if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v30);
          }

          goto LABEL_89;
        }
      }

      else
      {
        v33 = *(&v89 + 1);
        *(&v89 + 1) = 0;
        if (!v33)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_37;
    }

    if (v25)
    {
    }
  }

  MEMORY[0x1CCA63960](&v112, v12);
  WebCore::ResourceRequestBase::RequestData::RequestData(v94, &v112, 0);
  v96 = 0;
  v37 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
  }

  v97 = v37;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = v101 & 0xE0 | 5;
  v95 |= 2u;
  v102 = 0;
  v38 = v112;
  v112 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v36);
  }

  MEMORY[0x1CCA63960](&v112, v14);
  MEMORY[0x1CCA63A40](&v103, type);
  [(NSString *)dataCopy length];
  MEMORY[0x1CCA63A40](&v70, name);
  WebCore::ResourceResponseBase::ResourceResponseBase();
  v92 = 0;
  v93 = 0;
  v85 = v85 & 0xF1 | 4;
  v40 = v70;
  v70 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v39);
  }

  v41 = v103;
  *&v103 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v39);
  }

  v42 = v112;
  v112 = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v39);
  }

  WebCore::SharedBuffer::create<NSData *&>(&dataCopy, v39, &v70);
  v43 = v70;
  v70 = 0;
  MEMORY[0x1CCA63960](&v112, [rL absoluteURL]);
  v44 = v112;
  v112 = 0;
  *&v103 = v43;
  *(&v103 + 1) = v44;
  v104 = v113;
  v105 = v114;
  LODWORD(v113) = v113 & 0xFFFFFFFE;
  *&v106[1] = v72;
  LODWORD(v72) = v72 & 0xFFFFFFFE;
  v106[0] = v71;
  v106[5] = v74;
  v71 = 0;
  *&v106[3] = v73;
  v74 = 0;
  v106[6] = v75;
  v45 = v76;
  v76 = 0u;
  *&v106[7] = v45;
  v46 = v77;
  v77 = 0u;
  *&v106[9] = v46;
  *&v46 = v78;
  v78 = 0;
  v106[11] = v46;
  v47 = v79;
  v79 = 0;
  *&v107 = v47;
  *&v46 = v80;
  v80 = 0;
  *(&v107 + 1) = v46;
  v48 = v81;
  v81 = 0;
  *&v108 = v48;
  BYTE8(v108) = 0;
  LOBYTE(v109) = 0;
  if (v83 == 1)
  {
    v49 = v82;
    v82 = 0;
    *(&v108 + 1) = v49;
    LOBYTE(v109) = 1;
  }

  WORD4(v109) = v84;
  BYTE10(v109) = v85;
  *&v110[9] = v91[0];
  *(&v110[10] + 3) = *(v91 + 11);
  *&v110[5] = v89;
  *&v110[7] = v90;
  *&v110[1] = v87;
  *&v110[3] = v88;
  v50 = v86;
  v51 = v92;
  v86 = 0;
  v92 = 0;
  v110[0] = v50;
  v110[13] = v51;
  LOBYTE(v111) = v93;
  BYTE8(v111) = 1;
  v112 = 0;
  v52 = v70;
  v70 = 0;
  if (v52 && atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v52 + 2);
    (*(*v52 + 8))(v52);
  }

  MEMORY[0x1CCA65720](&v112);
  WebCore::FrameLoader::load();
  MEMORY[0x1CCA65730](&v112);
  v54 = v110[13];
  v110[13] = 0;
  if (v54)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v106, v53);
  v56 = *(&v103 + 1);
  *(&v103 + 1) = 0;
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v56, v55);
  }

  v57 = v103;
  *&v103 = 0;
  if (!v57 || atomic_fetch_add(v57 + 2, 0xFFFFFFFF) != 1)
  {
    v58 = v92;
    v92 = 0;
    if (!v58)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  atomic_store(1u, v57 + 2);
  (*(*v57 + 8))(v57);
  v58 = v92;
  v92 = 0;
  if (v58)
  {
LABEL_71:
  }

LABEL_72:
  WebCore::ResourceResponseBase::~ResourceResponseBase(&v71, v55);
  v60 = v102;
  v102 = 0;
  if (v60)
  {
  }

  v61 = v98;
  v98 = 0;
  if (v61)
  {
    if (*v61 == 1)
    {
      v63 = MEMORY[0x1CCA67F60]();
      bmalloc::api::tzoneFree(v63, v64);
      v62 = v97;
      v97 = 0;
      if (!v62)
      {
        goto LABEL_82;
      }

LABEL_80:
      if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, v59);
      }

      goto LABEL_82;
    }

    --*v61;
  }

  v62 = v97;
  v97 = 0;
  if (v62)
  {
    goto LABEL_80;
  }

LABEL_82:
  v65 = v96;
  v96 = 0;
  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v65, v59);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(v94, v59);
LABEL_96:
  if (v12)
  {
  }

  if (v14)
  {
  }
}

- (void)loadData:(NSData *)data MIMEType:(NSString *)MIMEType textEncodingName:(NSString *)encodingName baseURL:(NSURL *)URL
{
  if (MIMEType)
  {
    v9 = MIMEType;
  }

  else
  {
    v9 = @"text/html";
  }

  _webkit_URLFromURLOrSchemelessFileURL = [(NSURL *)URL _webkit_URLFromURLOrSchemelessFileURL];

  [(WebFrame *)self _loadData:data MIMEType:v9 textEncodingName:encodingName baseURL:_webkit_URLFromURLOrSchemelessFileURL unreachableURL:0];
}

- (void)_loadHTMLString:(id)string baseURL:(id)l unreachableURL:(id)rL
{
  v8 = [string dataUsingEncoding:4];

  [(WebFrame *)self _loadData:v8 MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:l unreachableURL:rL];
}

- (void)loadHTMLString:(NSString *)string baseURL:(NSURL *)URL
{
  _webkit_URLFromURLOrSchemelessFileURL = [(NSURL *)URL _webkit_URLFromURLOrSchemelessFileURL];

  [(WebFrame *)self _loadHTMLString:string baseURL:_webkit_URLFromURLOrSchemelessFileURL unreachableURL:0];
}

- (void)loadAlternateHTMLString:(NSString *)string baseURL:(NSURL *)baseURL forUnreachableURL:(NSURL *)unreachableURL
{
  _webkit_URLFromURLOrSchemelessFileURL = [(NSURL *)baseURL _webkit_URLFromURLOrSchemelessFileURL];
  _webkit_URLFromURLOrSchemelessFileURL2 = [(NSURL *)unreachableURL _webkit_URLFromURLOrSchemelessFileURL];

  [(WebFrame *)self _loadHTMLString:string baseURL:_webkit_URLFromURLOrSchemelessFileURL unreachableURL:_webkit_URLFromURLOrSchemelessFileURL2];
}

- (void)loadArchive:(WebArchive *)archive
{
  _coreLegacyWebArchive = [(WebArchive *)archive _coreLegacyWebArchive];
  if (_coreLegacyWebArchive)
  {
    ++_coreLegacyWebArchive[2];
    v4 = _coreLegacyWebArchive;
    WebCore::FrameLoader::loadArchive();
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }
}

- (void)stopLoading
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1EEE542E0](*(m_ptr + 26), 0);
  }
}

- (WebFrame)findFrameNamed:(NSString *)name
{
  if (!self->_private->coreFrame.m_ptr)
  {
    return 0;
  }

  WTF::AtomStringImpl::add(&v8, name, a2);
  result = WebCore::FrameTree::findByUniqueName();
  if (!result)
  {
    goto LABEL_6;
  }

  if (result[8]._private & 1) != 0 || (v5 = *(result[13].super.isa + 2), (((*v5)[64]._private)(v5)))
  {
    result = 0;
LABEL_6:
    v6 = v8;
    v8 = 0;
    if (!v6)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = v5[3];
  v6 = v8;
  v8 = 0;
  if (!v6)
  {
    return result;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v7 = result;
    WTF::StringImpl::destroy(v6, v4);
    return v7;
  }

  return result;
}

- (WebFrame)parentFrame
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  result = WebCore::FrameTree::parent((m_ptr + 40));
  if (!result)
  {
    return result;
  }

  if ((result[8]._private & 1) == 0)
  {
    v4 = *(result[13].super.isa + 2);
    if (((*(*v4 + 1032))(v4) & 1) == 0)
    {
      v5 = v4[3];
      if (v5)
      {
        v6 = v5;
        v7 = v5;
        return v5;
      }
    }

    return 0;
  }

  return 0;
}

- (NSArray)childFrames
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:WebCore::FrameTree::childCount((m_ptr + 40))];
  for (i = *(m_ptr + 10); i; i = *(i + 64))
  {
    while (1)
    {
      if ((*(i + 136) & 1) == 0)
      {
        v5 = *(*(i + 208) + 16);
        if (((*(*v5 + 1032))(v5) & 1) == 0)
        {
          break;
        }
      }

      [(NSArray *)v3 addObject:0];
      i = *(i + 64);
      if (!i)
      {
        return v3;
      }
    }

    [(NSArray *)v3 addObject:v5[3]];
  }

  return v3;
}

- (WebScriptObject)windowObject
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    return WebCore::ScriptController::windowScriptObject(*(m_ptr + 29));
  }

  else
  {
    return 0;
  }
}

- (JSGlobalContextRef)globalContext
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = *(m_ptr + 29);
  v4 = WebCore::mainThreadNormalWorldSingleton(self);
  return *(WebCore::ScriptController::jsWindowProxy(v3, v4) + 16);
}

- (JSContext)javaScriptContext
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (m_ptr)
  {
    return WebCore::ScriptController::javaScriptContext(*(m_ptr + 29));
  }

  else
  {
    return 0;
  }
}

- (id)renderTreeAsExternalRepresentationForPrinting
{
  WebCore::externalRepresentation();
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v2);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v7 = &stru_1F472E7E8;
  }

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

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v2);
  }

  return v3;
}

- (id)renderTreeAsExternalRepresentationWithOptions:(unint64_t)options
{
  WebCore::externalRepresentation();
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

  return v4;
}

- (int)numberOfPagesWithPageWidth:(float)width pageHeight:(float)height
{
  m_ptr = self->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return -1;
  }

  *v7 = width;
  *&v7[1] = height;
  return WebCore::PrintContext::numberOfPages(m_ptr, v7, v4);
}

- (void)printToCGContext:(CGContext *)context pageWidth:(float)width pageHeight:(float)height
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_private->coreFrame.m_ptr)
  {
    WebCore::GraphicsContextCG::GraphicsContextCG();
    WebCore::PrintContext::spoolAllPagesWithBoundaries();
    WebCore::GraphicsContextCG::~GraphicsContextCG(v5);
  }
}

- (VisiblePosition)visiblePositionForPoint:(SEL)point
{
  if (self)
  {
    return [(VisiblePosition *)self _visiblePositionForPoint:a4.x, a4.y];
  }

  retstr->var0.var0.var0 = 0;
  *&retstr->var0.var1 = 0;
  *&retstr->var1 = 0;
  return self;
}

- (VisiblePosition)closestWordBoundary:(SEL)boundary
{
  WebCore::startOfWord();
  WebCore::endOfWord();
  var0 = a4->var0.var0.var0;
  if (a4->var0.var0.var0)
  {
    *(var0 + 7) += 2;
  }

  v31 = var0;
  var1 = a4->var0.var1;
  v33 = *(&a4->var0 + 12);
  if ((v33 & 8) == 0 && ((v7 = v33 & 7, v7 != 2) ? (v8 = v7 == 4) : (v8 = 1), v8))
  {
    v9 = WebCore::Position::offsetForPositionAfterAnchor(&v31);
  }

  else
  {
    v9 = var1;
  }

  v10 = v37;
  if (v37)
  {
    *(v37 + 7) += 2;
  }

  v28 = v10;
  v29 = v38;
  v30 = v39;
  if ((v39 & 8) == 0 && ((v11 = v39 & 7, v11 == 2) || v11 == 4))
  {
    v12 = WebCore::Position::offsetForPositionAfterAnchor(&v28);
    v10 = v28;
  }

  else
  {
    v12 = v29;
  }

  v28 = 0;
  if (!v10)
  {
LABEL_21:
    v13 = v31;
    v31 = 0;
    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
    goto LABEL_21;
  }

  WebCore::Node::removedLastRef(v10);
  v13 = v31;
  v31 = 0;
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (*(v13 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v13);
    v14 = v34;
    if (!v34)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  *(v13 + 7) -= 2;
LABEL_26:
  v14 = v34;
  if (v34)
  {
LABEL_27:
    *(v14 + 7) += 2;
  }

LABEL_28:
  v31 = v14;
  var1 = v35;
  v33 = v36;
  if ((v36 & 8) == 0 && ((v15 = v36 & 7, v15 == 2) || v15 == 4))
  {
    v16 = WebCore::Position::offsetForPositionAfterAnchor(&v31);
  }

  else
  {
    v16 = var1;
  }

  v17 = a4->var0.var0.var0;
  if (a4->var0.var0.var0)
  {
    *(v17 + 7) += 2;
  }

  v28 = v17;
  v29 = a4->var0.var1;
  v30 = *(&a4->var0 + 12);
  if ((v30 & 8) == 0 && ((v18 = v30 & 7, v18 == 2) || v18 == 4))
  {
    v19 = WebCore::Position::offsetForPositionAfterAnchor(&v28);
    v17 = v28;
  }

  else
  {
    v19 = v29;
  }

  v28 = 0;
  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
    }

    else
    {
      *(v17 + 7) -= 2;
    }
  }

  v20 = v9 - v12;
  v21 = v16 - v19;
  v22 = v31;
  v31 = 0;
  if (v22)
  {
    if (*(v22 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v22);
    }

    else
    {
      *(v22 + 7) -= 2;
    }
  }

  v23 = &v38;
  result = v37;
  v25 = v34;
  if (v20 >= v21)
  {
    v26 = v34;
  }

  else
  {
    v26 = v37;
  }

  if (v26)
  {
    *(v26 + 7) += 2;
  }

  retstr->var0.var0.var0 = v26;
  if (v20 >= v21)
  {
    v23 = &v35;
  }

  retstr->var0.var1 = *v23;
  *(&retstr->var0 + 12) = *(v23 + 4);
  v27 = &v34;
  if (v20 < v21)
  {
    v27 = &v37;
  }

  retstr->var1 = *(v27 + 16);
  v34 = 0;
  if (!v25)
  {
LABEL_62:
    v37 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_65;
  }

  if (*(v25 + 7) != 2)
  {
    *(v25 + 7) -= 2;
    goto LABEL_62;
  }

  WebCore::Node::removedLastRef(v25);
  result = v37;
  v37 = 0;
  if (!result)
  {
    return result;
  }

LABEL_65:
  if (HIDWORD(result[1].var0.var0.var0) == 2)
  {
    return WebCore::Node::removedLastRef(result);
  }

  HIDWORD(result[1].var0.var0.var0) -= 2;
  return result;
}

- (void)clearSelection
{
  coreFrame = [(WebFrame *)self coreFrame];
  if (coreFrame)
  {
    v3 = *(coreFrame[28] + 3208);

    MEMORY[0x1EEE555F8](v3);
  }
}

- (int)selectionState
{
  v2 = *(*(*([(WebFrame *)self coreFrame]+ 224) + 3208) + 153);
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

- (CGRect)caretRectForPosition:(id)position
{
  if (position)
  {
    [position _visiblePosition];
    v13[3] = WebCore::VisiblePosition::absoluteCaretBounds(v13, 0);
    v13[4] = v3;
    WebCore::IntRect::operator CGRect();
    v8 = v13[0];
    v13[0] = 0;
    if (v8)
    {
      if (*(v8 + 7) == 2)
      {
        v9 = v4;
        v10 = v5;
        v11 = v6;
        v12 = v7;
        WebCore::Node::removedLastRef(v8);
        v7 = v12;
        v6 = v11;
        v5 = v10;
        v4 = v9;
      }

      else
      {
        *(v8 + 7) -= 2;
      }
    }
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

- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  coreFrame = [(WebFrame *)self coreFrame];
  v7 = 0.0;
  if (!coreFrame)
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    goto LABEL_71;
  }

  v8 = coreFrame;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if (coreFrame[28])
  {
    WebCore::Document::updateLayout();
    v12 = v8[28];
    if (v12)
    {
      *(v12 + 7) += 2;
    }

    v13 = WebCore::Document::editor(v12);
    if (v12)
    {
      if (*(v12 + 7) == 2)
      {
        v14 = v13;
        WebCore::Node::removedLastRef(v12);
        WebCore::Editor::compositionRange(v56, v14);
        if (v58 == 1)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

      *(v12 + 7) -= 2;
    }

    WebCore::Editor::compositionRange(v56, v13);
    if (v58 == 1)
    {
LABEL_9:
      WebCore::VisibleSelection::VisibleSelection();
      goto LABEL_13;
    }

LABEL_12:
    WebCore::VisibleSelection::VisibleSelection(v55);
LABEL_13:
    if (v55[97] != 2)
    {
      if (self)
      {
        [(WebFrame *)self visiblePositionForPoint:x, y];
      }

      else
      {
        v53[0] = 0;
        v53[1] = 0;
        v54 = 0;
      }

      v48[0] = WebCore::VisiblePosition::absoluteCaretBounds(v53, 0);
      v48[1] = v19;
      WebCore::IntRect::operator CGRect();
      v11 = v20;
      v10 = v21;
      v9 = v22;
      v7 = v23;
      v24 = v53[0];
      v53[0] = 0;
      if (v24)
      {
        if (*(v24 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v24);
        }

        else
        {
          *(v24 + 7) -= 2;
        }
      }

      goto LABEL_59;
    }

    if (v58)
    {
      WebCore::RenderObject::absoluteTextRects();
      if (v52)
      {
        WebCore::IntRect::operator CGRect();
        v16 = v15;
        WebCore::IntRect::operator CGRect();
        v18 = v17;
        WebCore::VisiblePosition::VisiblePosition();
        WebCore::VisiblePosition::VisiblePosition();
        v44 = 0;
        v45 = 0;
        v46 &= 0xF0u;
        v47 = 1;
        if (y >= v16)
        {
          if (y >= v18)
          {
            if (self)
            {
              [(WebFrame *)self visiblePositionForPoint:x, v18];
              v44 = v41;
            }

            else
            {
              v42 = 0;
              v44 = 0;
            }

            v45 = v42;
            v46 = BYTE4(v42);
            v40 = 1;
          }

          else
          {
            if (self)
            {
              [(WebFrame *)self visiblePositionForPoint:x, y];
              v44 = v41;
              v40 = v43;
            }

            else
            {
              v40 = 0;
              v42 = 0;
              v44 = 0;
            }

            v45 = v42;
            v46 = BYTE4(v42);
          }

          v47 = v40;
        }

        else
        {
          if (self)
          {
            [(WebFrame *)self visiblePositionForPoint:x, v16];
            v44 = v41;
          }

          else
          {
            v42 = 0;
            v44 = 0;
          }

          v45 = v42;
          v46 = BYTE4(v42);
          v47 = 0;
        }

        if (WebCore::operator==(&v44, v53) || WebCore::operator<=>() == 0xFF)
        {
          LOBYTE(v54) = 0;
          WebCore::VisiblePosition::absoluteCaretBounds(v53, 0);
          WebCore::IntRect::operator CGRect();
        }

        else
        {
          if (WebCore::operator<=>() == 1)
          {
            v49 = 1;
            WebCore::VisiblePosition::absoluteCaretBounds(v48, 0);
          }

          else
          {
            WebCore::VisiblePosition::absoluteCaretBounds(&v44, 0);
          }

          WebCore::IntRect::operator CGRect();
        }

        v11 = v26;
        v10 = v27;
        v9 = v28;
        v7 = v29;
        v30 = v44;
        v44 = 0;
        if (v30)
        {
          if (*(v30 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v30);
            v31 = v48[0];
            v48[0] = 0;
            if (!v31)
            {
              goto LABEL_52;
            }

LABEL_50:
            if (*(v31 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v31);
              v32 = v53[0];
              v53[0] = 0;
              if (!v32)
              {
                goto LABEL_57;
              }

LABEL_55:
              if (*(v32 + 7) != 2)
              {
                *(v32 + 7) -= 2;
                goto LABEL_57;
              }

              WebCore::Node::removedLastRef(v32);
              v33 = v50;
              if (v50)
              {
LABEL_58:
                v50 = 0;
                v51 = 0;
                WTF::fastFree(v33, v25);
              }

LABEL_59:
              WebCore::VisibleSelection::~VisibleSelection(v55);
              if (v58 != 1)
              {
                goto LABEL_71;
              }

              v34 = v57;
              v57 = 0;
              if (v34)
              {
                if (*(v34 + 7) == 2)
                {
                  WebCore::Node::removedLastRef(v34);
                  v35 = v56[0];
                  v56[0] = 0;
                  if (!v35)
                  {
                    goto LABEL_71;
                  }

LABEL_64:
                  if (*(v35 + 7) == 2)
                  {
                    WebCore::Node::removedLastRef(v35);
                  }

                  else
                  {
                    *(v35 + 7) -= 2;
                  }

                  goto LABEL_71;
                }

                *(v34 + 7) -= 2;
              }

              v35 = v56[0];
              v56[0] = 0;
              if (!v35)
              {
                goto LABEL_71;
              }

              goto LABEL_64;
            }

            *(v31 + 7) -= 2;
LABEL_52:
            v32 = v53[0];
            v53[0] = 0;
            if (!v32)
            {
LABEL_57:
              v33 = v50;
              if (!v50)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }

            goto LABEL_55;
          }

          *(v30 + 7) -= 2;
        }

        v31 = v48[0];
        v48[0] = 0;
        if (!v31)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }
    }

    else
    {
      __break(1u);
    }

    __break(0xC471u);
    JUMPOUT(0x1C7AD5208);
  }

LABEL_71:
  v36 = v11;
  v37 = v10;
  v38 = v9;
  v39 = v7;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)collapseSelection
{
  if ([(WebFrame *)self selectionState]== 2)
  {
    [(WebFrame *)self coreFrame];
    WebCore::VisiblePosition::VisiblePosition();
    WebCore::FrameSelection::moveTo();
    if (v3)
    {
      if (*(v3 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v3);
      }

      else
      {
        *(v3 + 7) -= 2;
      }
    }
  }
}

- (void)extendSelection:(BOOL)selection
{
  selectionCopy = selection;
  if ([(WebFrame *)self selectionState]!= 2)
  {
    return;
  }

  [(WebFrame *)self coreFrame];
  if (selectionCopy)
  {
    WebCore::VisiblePosition::VisiblePosition();
    WebCore::startOfWord();
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

    WebCore::VisiblePosition::VisiblePosition();
    WebCore::FrameSelection::moveTo();
    v5 = v8;
    if (!v8)
    {
      return;
    }

    v6 = *(v8 + 7) - 2;
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
      return;
    }

LABEL_19:
    *(v5 + 7) = v6;
    return;
  }

  WebCore::VisiblePosition::VisiblePosition();
  WebCore::endOfWord();
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

  WebCore::VisiblePosition::VisiblePosition();
  WebCore::FrameSelection::moveTo();
  v5 = v8;
  if (v8)
  {
    v6 = *(v8 + 7) - 2;
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
      return;
    }

    goto LABEL_19;
  }
}

- (id)selectionRectsForCoreRange:(const void *)range
{
  WebCore::RenderObject::collectSelectionGeometries(&v14, range, a2);
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 initWithCapacity:v16];
  if (v16)
  {
    v6 = v14;
    v7 = v14 + 84 * v16;
    do
    {
      v8 = +[WebSelectionRect selectionRect];
      v19 = WebCore::SelectionGeometry::rect(v6);
      v20 = v9;
      WebCore::IntRect::operator CGRect();
      [v8 setRect:?];
      [v8 setWritingDirection:v6[33]];
      [v8 setIsLineBreak:v6[52]];
      [v8 setIsFirstOnLine:v6[53]];
      [v8 setIsLastOnLine:v6[54]];
      [v8 setContainsStart:v6[55]];
      [v8 setContainsEnd:v6[56]];
      [v8 setIsInFixedPosition:v6[58]];
      [v8 setIsHorizontal:v6[57]];
      if (v8)
      {
        [v5 addObject:v8];
      }

      v6 += 84;
    }

    while (v6 != v7);
  }

  if (v5)
  {
    v10 = v5;
  }

  v11 = v17;
  if (v17)
  {
    v17 = 0;
    v18 = 0;
    WTF::fastFree(v11, v4);
  }

  v12 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v12, v4);
  }

  return v5;
}

- (id)selectionRectsForRange:(id)range
{
  if (range)
  {
    WebCore::makeSimpleRange();
    if (v11 == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  WebCore::makeSimpleRange();
  if (v11 != 1)
  {
    return 0;
  }

LABEL_3:
  result = [(WebFrame *)self selectionRectsForCoreRange:&v9];
  if ((v11 & 1) == 0)
  {
    return result;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v7 = result;
      WebCore::Node::removedLastRef(v5);
      result = v7;
      v6 = v9;
      v9 = 0;
      if (!v6)
      {
        return result;
      }

      goto LABEL_8;
    }

    *(v5 + 7) -= 2;
  }

  v6 = v9;
  v9 = 0;
  if (!v6)
  {
    return result;
  }

LABEL_8:
  if (*(v6 + 7) == 2)
  {
    v8 = result;
    WebCore::Node::removedLastRef(v6);
    return v8;
  }

  else
  {
    *(v6 + 7) -= 2;
  }

  return result;
}

- (id)selectionRects
{
  WebCore::VisibleSelection::toNormalizedRange(v8, (*(*([(WebFrame *)self coreFrame]+ 224) + 3208) + 56));
  if (v10 != 1)
  {
    return 0;
  }

  result = [(WebFrame *)self selectionRectsForCoreRange:v8];
  if (v10)
  {
    v4 = v9;
    v9 = 0;
    if (v4)
    {
      if (*(v4 + 7) == 2)
      {
        v6 = result;
        WebCore::Node::removedLastRef(v4);
        result = v6;
        v5 = v8[0];
        v8[0] = 0;
        if (!v5)
        {
          return result;
        }

        goto LABEL_7;
      }

      *(v4 + 7) -= 2;
    }

    v5 = v8[0];
    v8[0] = 0;
    if (!v5)
    {
      return result;
    }

LABEL_7:
    if (*(v5 + 7) == 2)
    {
      v7 = result;
      WebCore::Node::removedLastRef(v5);
      return v7;
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  return result;
}

- (id)wordAtPoint:(CGPoint)point
{
  if (self)
  {
    [(WebFrame *)self visiblePositionForPoint:point.x, point.y];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  WebCore::startOfWord();
  WebCore::endOfWord();
  WebCore::makeSimpleRange<WebCore::VisiblePosition,WebCore::VisiblePosition>(&v12, &v11, &v13);
  WebCore::createLiveRange();
  v3 = kit(v19);
  v4 = v19;
  v19 = 0;
  if (v4)
  {
    if (*(v4 + 2) == 1)
    {
      (*(*v4 + 8))(v4);
      if (v15 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    --*(v4 + 2);
  }

  if (v15 != 1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v5 = v14;
  v14 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
      v6 = v13;
      v13 = 0;
      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    *(v5 + 7) -= 2;
  }

  v6 = v13;
  v13 = 0;
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (*(v6 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v6);
  }

  else
  {
    *(v6 + 7) -= 2;
  }

LABEL_19:
  var0 = v11.var0.var0.var0;
  v11.var0.var0.var0 = 0;
  if (var0)
  {
    if (*(var0 + 7) == 2)
    {
      WebCore::Node::removedLastRef(var0);
      v8 = v12;
      v12 = 0;
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    *(var0 + 7) -= 2;
  }

  v8 = v12;
  v12 = 0;
  if (!v8)
  {
LABEL_27:
    v9 = v16;
    v16 = 0;
    if (!v9)
    {
      return v3;
    }

    goto LABEL_30;
  }

LABEL_25:
  if (*(v8 + 7) != 2)
  {
    *(v8 + 7) -= 2;
    goto LABEL_27;
  }

  WebCore::Node::removedLastRef(v8);
  v9 = v16;
  v16 = 0;
  if (!v9)
  {
    return v3;
  }

LABEL_30:
  if (*(v9 + 7) != 2)
  {
    *(v9 + 7) -= 2;
    return v3;
  }

  WebCore::Node::removedLastRef(v9);
  return v3;
}

- (id)webVisiblePositionForPoint:(CGPoint)point
{
  if (self)
  {
    [(WebFrame *)self visiblePositionForPoint:point.x, point.y];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  result = [WebVisiblePosition _wrapVisiblePosition:v6];
  v4 = v6[0];
  v6[0] = 0;
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      v5 = result;
      WebCore::Node::removedLastRef(v4);
      return v5;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return result;
}

- (void)setRangedSelectionBaseToCurrentSelection
{
  coreFrame = [(WebFrame *)self coreFrame];

  MEMORY[0x1EEE53F50](coreFrame);
}

- (void)setRangedSelectionBaseToCurrentSelectionStart
{
  coreFrame = [(WebFrame *)self coreFrame];

  MEMORY[0x1EEE53F60](coreFrame);
}

- (void)setRangedSelectionBaseToCurrentSelectionEnd
{
  coreFrame = [(WebFrame *)self coreFrame];

  MEMORY[0x1EEE53F58](coreFrame);
}

- (void)clearRangedSelectionInitialExtent
{
  coreFrame = [(WebFrame *)self coreFrame];

  MEMORY[0x1EEE53F10](coreFrame);
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionStart
{
  coreFrame = [(WebFrame *)self coreFrame];

  MEMORY[0x1EEE53F78](coreFrame);
}

- (void)setRangedSelectionInitialExtentToCurrentSelectionEnd
{
  coreFrame = [(WebFrame *)self coreFrame];

  MEMORY[0x1EEE53F70](coreFrame);
}

- (void)setRangedSelectionWithExtentPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  coreFrame = [(WebFrame *)self coreFrame];
  if (self)
  {
    v7 = coreFrame;
    [(WebFrame *)self visiblePositionForPoint:x, y];
    coreFrame = v7;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  WebCore::LocalFrame::rangedSelectionBase(v12, coreFrame);
  if (!v14 || v13 != 2)
  {
LABEL_16:
    WebCore::VisibleSelection::~VisibleSelection(v12);
    v9 = v14;
    v14 = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_17;
  }

  WebCore::VisiblePosition::VisiblePosition();
  WebCore::VisiblePosition::VisiblePosition();
  if (WebCore::operator<=>() != 0xFF)
  {
    WebCore::operator<=>();
  }

  WebCore::FrameSelection::moveTo();
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      v8 = v11;
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    *(v10 + 7) -= 2;
  }

  v8 = v11;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (*(v8 + 7) != 2)
  {
    *(v8 + 7) -= 2;
    goto LABEL_16;
  }

  WebCore::Node::removedLastRef(v8);
  WebCore::VisibleSelection::~VisibleSelection(v12);
  v9 = v14;
  v14 = 0;
  if (!v9)
  {
    return;
  }

LABEL_17:
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
  }

  else
  {
    *(v9 + 7) -= 2;
  }
}

- (BOOL)setRangedSelectionExtentPoint:(CGPoint)point baseIsStart:(BOOL)start allowFlipping:(BOOL)flipping
{
  flippingCopy = flipping;
  startCopy = start;
  y = point.y;
  x = point.x;
  WebCore::LocalFrame::rangedSelectionBase(v70, [(WebFrame *)self coreFrame]);
  WebCore::VisiblePosition::VisiblePosition();
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 1;
  if (!v71)
  {
LABEL_94:
    v45 = v66;
    v66 = 0;
    if (!v45)
    {
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (v71 != 1)
  {
    WebCore::VisiblePosition::VisiblePosition();
    v11 = v59;
    v59 = 0;
    v62 = v11;
    v63 = v60;
    v64 = BYTE4(v60);
    v65 = v61;
    if (!self)
    {
      goto LABEL_6;
    }

LABEL_9:
    [(WebFrame *)self visiblePositionForPoint:x, y];
    if (v71 != 2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = v66;
  if (v66)
  {
    *(v66 + 7) += 2;
  }

  v62 = v10;
  v63 = v67;
  v64 = v68;
  v65 = v69;
  if (self)
  {
    goto LABEL_9;
  }

LABEL_6:
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v71 != 2)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (WebCore::operator<=>() == 0xFF && WebCore::operator<=>() == 0xFF)
  {
    WebCore::FrameSelection::moveTo();
    LOBYTE(startCopy) = 0;
    goto LABEL_84;
  }

LABEL_12:
  if (startCopy)
  {
    v12 = &v66;
  }

  else
  {
    v12 = &v62;
  }

  v56 = WebCore::VisiblePosition::absoluteCaretBounds(v12, 0);
  v57 = v13;
  WebCore::IntRect::operator CGRect();
  if (!flippingCopy)
  {
    v16 = 0;
    if (!startCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if (vabdd_f64(v14, x) <= 30.0)
  {
    v16 = vabdd_f64(v15, y) > 30.0;
    if (!startCopy)
    {
      goto LABEL_31;
    }

LABEL_20:
    v17 = v66;
    if (v66)
    {
      *(v66 + 7) += 2;
    }

    v56 = v17;
    LODWORD(v57) = v67;
    BYTE4(v57) = v68;
    v58 = v69;
    v18 = WebCore::operator<=>();
    v19 = v18 == 255;
    if (v18 != 255 || v16)
    {
LABEL_64:
      if (!WebCore::operator==(&v56, &v59))
      {
        goto LABEL_81;
      }

      WebCore::VisiblePosition::next();
      v39 = v59;
      v59 = v51;
      if (!v39)
      {
        goto LABEL_80;
      }

      v40 = *(v39 + 7) - 2;
      if (*(v39 + 7) != 2)
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    }

    v52 = WebCore::VisiblePosition::absoluteCaretBounds(&v56, 0);
    v54 = v20;
    WebCore::IntRect::operator CGRect();
    if (v24 <= v23)
    {
      x = CGRectGetMidX(*&v21);
      if (self)
      {
        goto LABEL_25;
      }
    }

    else
    {
      y = CGRectGetMidY(*&v21);
      if (self)
      {
LABEL_25:
        [(WebFrame *)self visiblePositionForPoint:x, y];
        if (v52 && WebCore::operator<=>() == 1)
        {
          *(v52 + 7) += 2;
          v25 = v59;
          v59 = v52;
          if (v25)
          {
            if (*(v25 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v25);
            }

            else
            {
              *(v25 + 7) -= 2;
            }
          }

          LODWORD(v60) = v54;
          BYTE4(v60) = BYTE4(v54);
          v35 = v55;
          goto LABEL_58;
        }

LABEL_43:
        WebCore::VisiblePosition::next();
        v34 = v59;
        v59 = v47;
        if (v34)
        {
          if (*(v34 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v34);
            LODWORD(v60) = v48;
            BYTE4(v60) = v49;
            LOBYTE(v61) = v50;
LABEL_59:
            v38 = v52;
            v51 = 0;
            if (v38)
            {
              if (*(v38 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v38);
              }

              else
              {
                *(v38 + 7) -= 2;
              }
            }

            v19 = 0;
            goto LABEL_64;
          }

          *(v34 + 7) -= 2;
        }

        LODWORD(v60) = v48;
        BYTE4(v60) = v49;
        v35 = v50;
LABEL_58:
        LOBYTE(v61) = v35;
        goto LABEL_59;
      }
    }

    v52 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_43;
  }

  v16 = 1;
  if (startCopy)
  {
    goto LABEL_20;
  }

LABEL_31:
  v26 = v62;
  if (v62)
  {
    *(v62 + 7) += 2;
  }

  v56 = v26;
  LODWORD(v57) = v63;
  BYTE4(v57) = v64;
  v58 = v65;
  v27 = WebCore::operator<=>();
  v19 = v27 == 1;
  if (v27 == 1 && !v16)
  {
    v53 = WebCore::VisiblePosition::absoluteCaretBounds(&v56, 0);
    v54 = v28;
    WebCore::IntRect::operator CGRect();
    if (v32 <= v31)
    {
      x = CGRectGetMidX(*&v29);
      if (self)
      {
        goto LABEL_36;
      }
    }

    else
    {
      y = CGRectGetMidY(*&v29);
      if (self)
      {
LABEL_36:
        [(WebFrame *)self visiblePositionForPoint:x, y];
        if (v53 && WebCore::operator<=>() == 0xFF)
        {
          *(v53 + 7) += 2;
          v33 = v59;
          v59 = v53;
          if (v33)
          {
            if (*(v33 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v33);
            }

            else
            {
              *(v33 + 7) -= 2;
            }
          }

          LODWORD(v60) = v54;
          BYTE4(v60) = BYTE4(v54);
          v37 = v55;
          goto LABEL_70;
        }

LABEL_49:
        WebCore::VisiblePosition::previous();
        v36 = v59;
        v59 = v47;
        if (v36)
        {
          if (*(v36 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v36);
            LODWORD(v60) = v48;
            BYTE4(v60) = v49;
            LOBYTE(v61) = v50;
LABEL_71:
            v41 = v53;
            v51 = 0;
            if (v41)
            {
              if (*(v41 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v41);
              }

              else
              {
                *(v41 + 7) -= 2;
              }
            }

            v19 = 0;
            goto LABEL_76;
          }

          *(v36 + 7) -= 2;
        }

        LODWORD(v60) = v48;
        BYTE4(v60) = v49;
        v37 = v50;
LABEL_70:
        LOBYTE(v61) = v37;
        goto LABEL_71;
      }
    }

    v53 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_49;
  }

LABEL_76:
  if (!WebCore::operator==(&v56, &v59))
  {
    goto LABEL_81;
  }

  WebCore::VisiblePosition::previous();
  v39 = v59;
  v59 = v51;
  if (v39)
  {
    v40 = *(v39 + 7) - 2;
    if (*(v39 + 7) != 2)
    {
LABEL_79:
      *(v39 + 7) = v40;
      goto LABEL_80;
    }

LABEL_67:
    WebCore::Node::removedLastRef(v39);
    LODWORD(v60) = v54;
    BYTE4(v60) = BYTE4(v54);
    LOBYTE(v61) = v55;
    goto LABEL_81;
  }

LABEL_80:
  LODWORD(v60) = v54;
  BYTE4(v60) = BYTE4(v54);
  LOBYTE(v61) = v55;
LABEL_81:
  WebCore::FrameSelection::moveTo();
  LOBYTE(startCopy) = v19 ^ startCopy;
  v42 = v56;
  v56 = 0;
  if (!v42)
  {
    goto LABEL_84;
  }

  if (*(v42 + 7) != 2)
  {
    *(v42 + 7) -= 2;
LABEL_84:
    v43 = v59;
    v59 = 0;
    if (!v43)
    {
      goto LABEL_89;
    }

    goto LABEL_87;
  }

  WebCore::Node::removedLastRef(v42);
  v43 = v59;
  v59 = 0;
  if (!v43)
  {
    goto LABEL_89;
  }

LABEL_87:
  if (*(v43 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v43);
    v44 = v62;
    v62 = 0;
    if (!v44)
    {
      goto LABEL_94;
    }

    goto LABEL_92;
  }

  *(v43 + 7) -= 2;
LABEL_89:
  v44 = v62;
  v62 = 0;
  if (!v44)
  {
    goto LABEL_94;
  }

LABEL_92:
  if (*(v44 + 7) != 2)
  {
    *(v44 + 7) -= 2;
    goto LABEL_94;
  }

  WebCore::Node::removedLastRef(v44);
  v45 = v66;
  v66 = 0;
  if (!v45)
  {
    goto LABEL_98;
  }

LABEL_95:
  if (*(v45 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v45);
  }

  else
  {
    *(v45 + 7) -= 2;
  }

LABEL_98:
  WebCore::VisibleSelection::~VisibleSelection(v70);
  return startCopy;
}

- (BOOL)setSelectionWithBasePoint:(CGPoint)point extentPoint:(CGPoint)extentPoint baseIsStart:(BOOL)start allowFlipping:(BOOL)flipping
{
  flippingCopy = flipping;
  startCopy = start;
  y = extentPoint.y;
  x = extentPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(WebFrame *)self coreFrame];
  if (self)
  {
    [(WebFrame *)self visiblePositionForPoint:v11, v10];
    [(WebFrame *)self visiblePositionForPoint:x, y];
    if (flippingCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_12;
  }

  memset(v28, 0, sizeof(v28));
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (!flippingCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (startCopy)
  {
    v13 = y <= v10 + -30.0 || x <= v11 + -30.0;
  }

  else
  {
    v13 = y >= v10 + 30.0 || x >= v11 + 30.0;
  }

LABEL_12:
  if (WebCore::operator==(&v25, v28))
  {
    if (startCopy)
    {
LABEL_14:
      WebCore::VisiblePosition::next();
      goto LABEL_21;
    }
  }

  else
  {
    if (startCopy)
    {
      v14 = WebCore::operator<=>();
      v15 = v14 == 255;
      if (v14 != 255 || v13)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    v16 = WebCore::operator<=>();
    v15 = v16 == 1;
    if (v16 != 1 || v13)
    {
      goto LABEL_27;
    }
  }

  WebCore::VisiblePosition::previous();
LABEL_21:
  v17 = v25;
  v25 = v21;
  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
      LODWORD(v26) = v22;
      BYTE4(v26) = v23;
      LOBYTE(v27) = v24;
      goto LABEL_26;
    }

    *(v17 + 7) -= 2;
  }

  LODWORD(v26) = v22;
  BYTE4(v26) = v23;
  LOBYTE(v27) = v24;
LABEL_26:
  v15 = 0;
LABEL_27:
  WebCore::FrameSelection::moveTo();
  v18 = v25;
  v25 = 0;
  if (v18)
  {
    if (*(v18 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v18);
      v19 = v28[0];
      v28[0] = 0;
      if (!v19)
      {
        return v15 ^ startCopy;
      }

      goto LABEL_33;
    }

    *(v18 + 7) -= 2;
  }

  v19 = v28[0];
  v28[0] = 0;
  if (!v19)
  {
    return v15 ^ startCopy;
  }

LABEL_33:
  if (*(v19 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v19);
  }

  else
  {
    *(v19 + 7) -= 2;
  }

  return v15 ^ startCopy;
}

- (void)setSelectionWithFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint
{
  if (self)
  {
    y = secondPoint.y;
    x = secondPoint.x;
    [(WebFrame *)self visiblePositionForPoint:point.x, point.y];
    [(WebFrame *)self visiblePositionForPoint:x, y];
  }

  else
  {
    v12 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
  }

  [(WebFrame *)self coreFrame:v8];
  WebCore::FrameSelection::moveTo();
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      v7 = v12;
      if (!v12)
      {
        return;
      }

      goto LABEL_10;
    }

    *(v9 + 7) -= 2;
  }

  v7 = v12;
  if (!v12)
  {
    return;
  }

LABEL_10:
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
  }

  else
  {
    *(v7 + 7) -= 2;
  }
}

- (void)ensureRangedSelectionContainsInitialStartPoint:(CGPoint)point initialEndPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v6 = point.y;
  v7 = point.x;
  v9 = *(*([(WebFrame *)self coreFrame]+ 224) + 3208);
  if (!self)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v27 = 0;
    v23 = 0;
LABEL_6:
    v19 = 0;
    v20 = v23;
    v21 = BYTE4(v23);
    goto LABEL_12;
  }

  [(WebFrame *)self visiblePositionForPoint:v7, v6];
  v10 = v22;
  if (v22)
  {
    v11 = *(v22 + 7);
    *(v22 + 7) = v11 + 2;
    v25 = v10;
    v26 = v23;
    v27 = BYTE4(v23);
    v22 = 0;
    if (v11)
    {
      *(v10 + 7) = v11;
    }

    else
    {
      WebCore::Node::removedLastRef(v10);
    }
  }

  else
  {
    v25 = 0;
    v26 = v23;
    v27 = BYTE4(v23);
  }

  [(WebFrame *)self visiblePositionForPoint:x, y];
  v12 = v22;
  if (!v22)
  {
    goto LABEL_6;
  }

  v13 = *(v22 + 7);
  *(v22 + 7) = v13 + 2;
  v19 = v12;
  v20 = v23;
  v21 = BYTE4(v23);
  v22 = 0;
  if (v13)
  {
    *(v12 + 7) = v13;
  }

  else
  {
    WebCore::Node::removedLastRef(v12);
  }

LABEL_12:
  if (MEMORY[0x1CCA68810](v9 + 120, &v25) != 1)
  {
    if (MEMORY[0x1CCA68810](v9 + 136, &v19) != 0xFF)
    {
      goto LABEL_27;
    }

    WebCore::VisiblePosition::VisiblePosition();
    WebCore::VisiblePosition::VisiblePosition();
    WebCore::FrameSelection::moveTo();
    if (v18)
    {
      if (*(v18 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v18);
        v14 = v22;
        v22 = 0;
        if (!v14)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      *(v18 + 7) -= 2;
    }

    v14 = v22;
    v22 = 0;
    if (!v14)
    {
LABEL_27:
      v16 = v19;
      v19 = 0;
      if (!v16)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_30:
    v15 = *(v14 + 7) - 2;
    if (*(v14 + 7) != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  WebCore::VisiblePosition::VisiblePosition();
  WebCore::VisiblePosition::VisiblePosition();
  WebCore::FrameSelection::moveTo();
  if (v18)
  {
    if (*(v18 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v18);
      v14 = v22;
      v22 = 0;
      if (!v14)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    *(v18 + 7) -= 2;
  }

  v14 = v22;
  v22 = 0;
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_25:
  v15 = *(v14 + 7) - 2;
  if (*(v14 + 7) != 2)
  {
LABEL_26:
    *(v14 + 7) = v15;
    goto LABEL_27;
  }

LABEL_31:
  WebCore::Node::removedLastRef(v14);
  v16 = v19;
  v19 = 0;
  if (!v16)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (*(v16 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v16);
    v17 = v25;
    v25 = 0;
    if (!v17)
    {
      return;
    }

    goto LABEL_37;
  }

  *(v16 + 7) -= 2;
LABEL_34:
  v17 = v25;
  v25 = 0;
  if (!v17)
  {
    return;
  }

LABEL_37:
  if (*(v17 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v17);
  }

  else
  {
    *(v17 + 7) -= 2;
  }
}

- (void)aggressivelyExpandSelectionToWordContainingCaretSelection
{
  v3 = *(*([(WebFrame *)self coreFrame]+ 224) + 3208);
  v4 = WebCore::VisiblePosition::VisiblePosition();
  WebCore::endOfDocument(&v31, v4, v5);
  if (!WebCore::operator==(v35, &v31))
  {
    v8 = 0;
    goto LABEL_13;
  }

  WebCore::startOfDocument(v30, v35, v6);
  if (WebCore::operator==(v35, v30))
  {
    v8 = 0;
    v9 = v30[0];
    v30[0] = 0;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    WebCore::startOfLine(&v26, v35, v7);
    v8 = WebCore::operator==(v35, &v26);
    v10 = v26;
    v26 = 0;
    if (v10)
    {
      if (*(v10 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v10);
        v9 = v30[0];
        v30[0] = 0;
        if (!v9)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      *(v10 + 7) -= 2;
    }

    v9 = v30[0];
    v30[0] = 0;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

LABEL_10:
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
  }

  else
  {
    *(v9 + 7) -= 2;
  }

LABEL_13:
  v11 = v31;
  v31 = 0;
  if (!v11)
  {
    goto LABEL_16;
  }

  if (*(v11 + 7) != 2)
  {
    *(v11 + 7) -= 2;
LABEL_16:
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  WebCore::Node::removedLastRef(v11);
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_19:
  WebCore::VisiblePosition::previous();
  WebCore::FrameSelection::moveTo();
  v12 = v31;
  v31 = 0;
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
  [(WebFrame *)self expandSelectionToWordContainingCaretSelection];
  if (*(v3 + 184) != 1)
  {
    goto LABEL_32;
  }

  WebCore::VisiblePosition::VisiblePosition();
  WebCore::VisiblePosition::VisiblePosition();
  WebCore::FrameSelection::moveTo();
  v13 = v30[0];
  v30[0] = 0;
  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
      v14 = v31;
      v31 = 0;
      if (!v14)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    *(v13 + 7) -= 2;
  }

  v14 = v31;
  v31 = 0;
  if (!v14)
  {
LABEL_32:
    if (*(v3 + 153) != 1)
    {
      goto LABEL_67;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*(v14 + 7) != 2)
  {
    *(v14 + 7) -= 2;
    goto LABEL_32;
  }

  WebCore::Node::removedLastRef(v14);
  if (*(v3 + 153) != 1)
  {
    goto LABEL_67;
  }

LABEL_33:
  WebCore::VisiblePosition::VisiblePosition();
  if (!WebCore::isStartOfLine(&v31, v15) || !WebCore::isEndOfLine(&v31, v16))
  {
    while (1)
    {
      if (!v31)
      {
        goto LABEL_67;
      }

      WebCore::startOfWord();
      v18 = WebCore::operator==(v30, &v31);
      if (v18)
      {
        WebCore::VisiblePosition::previous();
        v19 = v26;
        v26 = 0;
        v20 = v31;
        v31 = v19;
        if (!v20)
        {
          goto LABEL_47;
        }

        if (*(v20 + 7) != 2)
        {
          *(v20 + 7) -= 2;
LABEL_47:
          v32 = v27;
          v33 = v28;
          v34 = v29;
          v21 = v30[0];
          v30[0] = 0;
          if (v21)
          {
            goto LABEL_57;
          }

          goto LABEL_41;
        }

        WebCore::Node::removedLastRef(v20);
        v22 = v26;
        v32 = v27;
        v33 = v28;
        v34 = v29;
        v26 = 0;
        if (!v22)
        {
          goto LABEL_52;
        }

        v23 = *(v22 + 7) - 2;
        if (*(v22 + 7) != 2)
        {
          goto LABEL_51;
        }
      }

      else
      {
        WebCore::VisiblePosition::VisiblePosition();
        WebCore::FrameSelection::moveTo();
        v22 = v26;
        v26 = 0;
        if (!v22)
        {
          goto LABEL_52;
        }

        v23 = *(v22 + 7) - 2;
        if (*(v22 + 7) != 2)
        {
LABEL_51:
          *(v22 + 7) = v23;
LABEL_52:
          v21 = v30[0];
          v30[0] = 0;
          if (v21)
          {
            goto LABEL_57;
          }

          goto LABEL_41;
        }
      }

      WebCore::Node::removedLastRef(v22);
      v21 = v30[0];
      v30[0] = 0;
      if (v21)
      {
LABEL_57:
        if (*(v21 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v21);
        }

        else
        {
          *(v21 + 7) -= 2;
        }
      }

LABEL_41:
      if (!v18)
      {
        goto LABEL_64;
      }
    }
  }

  WebCore::VisiblePosition::next();
  if (v30[0])
  {
    WebCore::FrameSelection::moveTo();
    v17 = v30[0];
    v30[0] = 0;
    if (v17)
    {
      if (*(v17 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v17);
      }

      else
      {
        *(v17 + 7) -= 2;
      }
    }
  }

LABEL_64:
  v24 = v31;
  v31 = 0;
  if (!v24)
  {
LABEL_67:
    v25 = v35[0];
    v35[0] = 0;
    if (!v25)
    {
      return;
    }

    goto LABEL_68;
  }

  if (*(v24 + 7) != 2)
  {
    *(v24 + 7) -= 2;
    goto LABEL_67;
  }

  WebCore::Node::removedLastRef(v24);
  v25 = v35[0];
  v35[0] = 0;
  if (!v25)
  {
    return;
  }

LABEL_68:
  if (*(v25 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v25);
  }

  else
  {
    *(v25 + 7) -= 2;
  }
}

- (void)expandSelectionToSentence
{
  [(WebFrame *)self coreFrame];
  v2 = WebCore::VisiblePosition::VisiblePosition();
  WebCore::startOfSentence(&v9, v2, v3);
  WebCore::endOfSentence(&v8, &v10, v4);
  WebCore::FrameSelection::moveTo();
  v5 = v8;
  v8 = 0;
  if (!v5)
  {
LABEL_4:
    v6 = v9;
    v9 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_4;
  }

  WebCore::Node::removedLastRef(v5);
  v6 = v9;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (*(v6 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v6);
    v7 = v10;
    v10 = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }

  *(v6 + 7) -= 2;
LABEL_9:
  v7 = v10;
  v10 = 0;
  if (!v7)
  {
    return;
  }

LABEL_12:
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
  }

  else
  {
    *(v7 + 7) -= 2;
  }
}

- (int)selectionBaseWritingDirection
{
  v2 = *([(WebFrame *)self coreFrame]+ 224);
  if (v2)
  {
    *(v2 + 7) += 2;
  }

  v3 = WebCore::Document::editor(v2);
  if (!v2)
  {
    return WebCore::Editor::baseWritingDirectionForSelectionStart(v3) == 2;
  }

  if (*(v2 + 7) != 2)
  {
    *(v2 + 7) -= 2;
    return WebCore::Editor::baseWritingDirectionForSelectionStart(v3) == 2;
  }

  v5 = v3;
  WebCore::Node::removedLastRef(v2);
  return WebCore::Editor::baseWritingDirectionForSelectionStart(v5) == 2;
}

- (void)toggleBaseWritingDirection
{
  v3 = [(WebFrame *)self selectionBaseWritingDirection]!= 1;

  [(WebFrame *)self setBaseWritingDirection:v3];
}

- (void)setBaseWritingDirection:(int)direction
{
  selectionBaseWritingDirection = [(WebFrame *)self selectionBaseWritingDirection];
  coreFrame = [(WebFrame *)self coreFrame];
  if (!WebCore::VisibleSelection::isContentEditable((*(coreFrame[28] + 3208) + 56)))
  {
    return;
  }

  if (direction == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (direction == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = coreFrame[28];
  if (v9)
  {
    *(v9 + 7) += 2;
  }

  WebCore::Document::editor(v9);
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::Editor::setBaseWritingDirection();
      if (selectionBaseWritingDirection == [(WebFrame *)self selectionBaseWritingDirection])
      {
        return;
      }

      goto LABEL_16;
    }

    *(v9 + 7) -= 2;
  }

  WebCore::Editor::setBaseWritingDirection();
  if (selectionBaseWritingDirection == [(WebFrame *)self selectionBaseWritingDirection])
  {
    return;
  }

LABEL_16:
  v10 = coreFrame[28];
  if (v10)
  {
    *(v10 + 7) += 2;
  }

  v11 = WebCore::Document::editor(v10);
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      v12 = v11;
      WebCore::Node::removedLastRef(v10);
      v11 = v12;
    }

    else
    {
      *(v10 + 7) -= 2;
    }
  }

  MEMORY[0x1EEE5AD60](v11, v8);
}

- (void)moveSelectionToStart
{
  coreFrame = [(WebFrame *)self coreFrame];
  WebCore::startOfDocument(&v5, coreFrame[28], v3);
  WebCore::FrameSelection::moveTo();
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }
}

- (void)moveSelectionToEnd
{
  coreFrame = [(WebFrame *)self coreFrame];
  WebCore::endOfDocument(&v5, coreFrame[28], v3);
  WebCore::FrameSelection::moveTo();
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }
}

- (void)moveSelectionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(WebFrame *)self coreFrame];
  if (self)
  {
    [(WebFrame *)self _visiblePositionForPoint:x, y];
  }

  else
  {
    v6 = 0;
  }

  WebCore::FrameSelection::moveTo();
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
}

- (void)smartExtendRangedSelection:(int)selection
{
  if ([(WebFrame *)self selectionState]== 2)
  {
    coreFrame = [(WebFrame *)self coreFrame];
    WebCore::VisiblePosition::VisiblePosition();
    WebCore::VisiblePosition::VisiblePosition();
    WebCore::LocalFrame::rangedSelectionBase(v95, coreFrame);
    WebCore::VisiblePosition::VisiblePosition();
    WebCore::VisibleSelection::~VisibleSelection(v95);
    if (!WebCore::operator==(v97, &v102) && !WebCore::operator==(v97, &v98))
    {
      goto LABEL_9;
    }

    WebCore::VisiblePosition::VisiblePosition();
    v6 = WebCore::VisiblePosition::characterAfter(v94);
    IntPropertyValue = u_getIntPropertyValue(v6, UCHAR_LINE_BREAK);
    if (IntPropertyValue <= 0x25 && ((1 << IntPropertyValue) & 0x2001004000) != 0)
    {
      goto LABEL_6;
    }

    WebCore::VisiblePosition::previous();
    v12 = WebCore::VisiblePosition::characterAfter(v95);
    v13 = v95[0];
    v95[0] = 0;
    if (v13)
    {
      if (*(v13 + 7) == 2)
      {
        v14 = v12;
        WebCore::Node::removedLastRef(v13);
        v12 = v14;
      }

      else
      {
        *(v13 + 7) -= 2;
      }
    }

    v15 = u_getIntPropertyValue(v12, UCHAR_LINE_BREAK);
    if (v15 <= 0x25 && ((1 << v15) & 0x2001004000) != 0)
    {
LABEL_6:
      v8 = v94[0];
      v94[0] = 0;
      if (v8)
      {
        if (*(v8 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v8);
          v9 = v97[0];
          v97[0] = 0;
          if (!v9)
          {
            goto LABEL_14;
          }

LABEL_12:
          if (*(v9 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v9);
            v10 = v98;
            v98 = 0;
            if (!v10)
            {
              goto LABEL_19;
            }

LABEL_17:
            if (*(v10 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v10);
              v11 = v102;
              v102 = 0;
              if (!v11)
              {
                return;
              }

              goto LABEL_22;
            }

            *(v10 + 7) -= 2;
LABEL_19:
            v11 = v102;
            v102 = 0;
            if (!v11)
            {
              return;
            }

LABEL_22:
            if (*(v11 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v11);
            }

            else
            {
              *(v11 + 7) -= 2;
            }

            return;
          }

          *(v9 + 7) -= 2;
LABEL_14:
          v10 = v98;
          v98 = 0;
          if (!v10)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }

        *(v8 + 7) -= 2;
      }

LABEL_9:
      v9 = v97[0];
      v97[0] = 0;
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    WebCore::VisibleSelection::VisibleSelection(v95);
    if (selection)
    {
      WebCore::LocalFrame::rangedSelectionInitialExtent(&v90, coreFrame);
      WebCore::VisibleSelection::operator=(v95, &v90);
      WebCore::VisibleSelection::~VisibleSelection(&v90);
    }

    v86 = 0;
    v87 = 0;
    v88 &= 0xF0u;
    v89 = 1;
    if (WebCore::operator==(v97, &v98))
    {
      v16 = v102;
      if (v102)
      {
        *(v102 + 7) += 2;
      }

      v118 = v16;
      v119 = v103;
      v120 = v104;
      v121 = v105;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 1;
      if (v96)
      {
        WebCore::VisiblePosition::VisiblePosition();
        v17 = v90;
        v90 = 0;
        v18 = v114;
        v114 = v17;
        if (!v18)
        {
LABEL_41:
          v115 = v91;
          v116 = v92;
          v117 = v93;
          goto LABEL_56;
        }

        if (*(v18 + 7) != 2)
        {
          *(v18 + 7) -= 2;
          goto LABEL_41;
        }

        WebCore::Node::removedLastRef(v18);
        v22 = v90;
        v115 = v91;
        v116 = v92;
        v117 = v93;
        v90 = 0;
        if (v22)
        {
          if (*(v22 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v22);
          }

          else
          {
            *(v22 + 7) -= 2;
          }
        }
      }

LABEL_56:
      if (WebCore::operator==(&v114, &v102))
      {
        goto LABEL_57;
      }

      WebCore::VisiblePosition::previous();
      v26 = WebCore::VisiblePosition::characterAfter(&v90);
      v27 = v90;
      v90 = 0;
      if (v27)
      {
        if (*(v27 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v27);
        }

        else
        {
          *(v27 + 7) -= 2;
        }
      }

      v28 = WebCore::VisiblePosition::characterAfter(&v118);
      if (_MergedGlobals_16 == 1)
      {
        Predefined = qword_1ED6A61E0;
      }

      else
      {
        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
        qword_1ED6A61E0 = Predefined;
        _MergedGlobals_16 = 1;
      }

      if (CFCharacterSetIsCharacterMember(Predefined, v28))
      {
        if (_MergedGlobals_16 == 1)
        {
          v30 = qword_1ED6A61E0;
        }

        else
        {
          v30 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
          qword_1ED6A61E0 = v30;
          _MergedGlobals_16 = 1;
        }

        if (!CFCharacterSetIsCharacterMember(v30, v26))
        {
LABEL_57:
          v24 = v118;
          v118 = 0;
          v84 = v119;
          v85 = v120;
          v25 = v121;
          goto LABEL_216;
        }
      }

      if (_MergedGlobals_16 == 1)
      {
        v31 = qword_1ED6A61E0;
      }

      else
      {
        v31 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
        qword_1ED6A61E0 = v31;
        _MergedGlobals_16 = 1;
      }

      if (CFCharacterSetIsCharacterMember(v31, v26))
      {
        if (_MergedGlobals_16 == 1)
        {
          v32 = qword_1ED6A61E0;
        }

        else
        {
          v32 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
          qword_1ED6A61E0 = v32;
          _MergedGlobals_16 = 1;
        }

        if (!CFCharacterSetIsCharacterMember(v32, v28))
        {
          WebCore::VisiblePosition::next();
          v33 = v90;
          v90 = 0;
          v34 = v118;
          v118 = v33;
          if (!v34)
          {
LABEL_77:
            v119 = v91;
            v120 = v92;
            v121 = v93;
            goto LABEL_173;
          }

          if (*(v34 + 7) != 2)
          {
            *(v34 + 7) -= 2;
            goto LABEL_77;
          }

          WebCore::Node::removedLastRef(v34);
          v66 = v90;
          v119 = v91;
          v120 = v92;
          v121 = v93;
          v90 = 0;
          if (v66)
          {
            if (*(v66 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v66);
            }

            else
            {
              *(v66 + 7) -= 2;
            }
          }
        }
      }

LABEL_173:
      WebCore::startOfWord();
      if (WebCore::operator==(&v90, &v114))
      {
        WebCore::endOfWord();
        v69 = v110;
        if (v110)
        {
          *(v110 + 7) += 2;
        }

        v70 = v118;
        v118 = v69;
        if (v70)
        {
          if (*(v70 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v70);
            v69 = v118;
          }

          else
          {
            *(v70 + 7) -= 2;
          }
        }

        v119 = v111;
        v120 = v112;
        v121 = v113;
        if (v69)
        {
          do
          {
            if ((WebCore::isStartOfLine(&v118, v68) & 1) != 0 || (WebCore::isEndOfLine(&v118, v71) & 1) != 0 || WebCore::operator==(&v118, &v98))
            {
              break;
            }

            v72 = WebCore::VisiblePosition::characterAfter(&v118);
            if (_MergedGlobals_16 == 1)
            {
              v73 = qword_1ED6A61E0;
            }

            else
            {
              v73 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
              qword_1ED6A61E0 = v73;
              _MergedGlobals_16 = 1;
            }

            if (CFCharacterSetIsCharacterMember(v73, v72))
            {
              break;
            }

            WebCore::VisiblePosition::next();
            v74 = v106;
            v106 = 0;
            v75 = v118;
            v118 = v74;
            if (v75)
            {
              if (*(v75 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v75);
                v76 = v106;
                v119 = v107;
                v120 = v108;
                v121 = v109;
                v106 = 0;
                if (v76)
                {
                  if (*(v76 + 7) == 2)
                  {
                    WebCore::Node::removedLastRef(v76);
                  }

                  else
                  {
                    *(v76 + 7) -= 2;
                  }
                }

                continue;
              }

              *(v75 + 7) -= 2;
            }

            v119 = v107;
            v120 = v108;
            v121 = v109;
          }

          while (v118);
        }

        if (WebCore::operator==(&v118, &v98))
        {
          v77 = v90;
          if (v90)
          {
            *(v90 + 7) += 2;
          }

          v78 = v118;
          v118 = v77;
          if (v78)
          {
            if (*(v78 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v78);
            }

            else
            {
              *(v78 + 7) -= 2;
            }
          }

          v119 = v91;
          v120 = v92;
          v25 = v93;
          v121 = v93;
        }

        else
        {
          v25 = v121;
        }

        v24 = v118;
        v118 = 0;
        v84 = v119;
        v85 = v120;
        v79 = v110;
        v110 = 0;
        if (v79)
        {
          if (*(v79 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v79);
          }

          else
          {
            *(v79 + 7) -= 2;
          }
        }

        v80 = v90;
        v90 = 0;
        if (v80)
        {
          if (*(v80 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v80);
          }

          else
          {
            *(v80 + 7) -= 2;
          }
        }
      }

      else
      {
        v24 = v90;
        v84 = v91;
        v85 = v92;
        v25 = v93;
      }

LABEL_216:
      v81 = v114;
      v114 = 0;
      if (v81)
      {
        if (*(v81 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v81);
        }

        else
        {
          *(v81 + 7) -= 2;
        }
      }

      v82 = v118;
      v118 = 0;
      if (v82)
      {
        if (*(v82 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v82);
        }

        else
        {
          *(v82 + 7) -= 2;
        }
      }

      v64 = v86;
      v86 = v24;
      if (!v64)
      {
        goto LABEL_227;
      }

      v65 = *(v64 + 7) - 2;
      if (*(v64 + 7) != 2)
      {
        goto LABEL_226;
      }

      goto LABEL_165;
    }

    v19 = v98;
    if (v98)
    {
      *(v98 + 7) += 2;
    }

    v118 = v19;
    v119 = v99;
    v120 = v100;
    v121 = v101;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 1;
    if (v96)
    {
      WebCore::VisiblePosition::VisiblePosition();
      v20 = v90;
      v90 = 0;
      v21 = v114;
      v114 = v20;
      if (!v21)
      {
LABEL_48:
        v115 = v91;
        v116 = v92;
        v117 = v93;
        goto LABEL_79;
      }

      if (*(v21 + 7) != 2)
      {
        *(v21 + 7) -= 2;
        goto LABEL_48;
      }

      WebCore::Node::removedLastRef(v21);
      v23 = v90;
      v115 = v91;
      v116 = v92;
      v117 = v93;
      v90 = 0;
      if (v23)
      {
        if (*(v23 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v23);
        }

        else
        {
          *(v23 + 7) -= 2;
        }
      }
    }

LABEL_79:
    if (WebCore::operator==(&v114, &v98))
    {
      goto LABEL_80;
    }

    WebCore::VisiblePosition::previous();
    v36 = WebCore::VisiblePosition::characterAfter(&v90);
    v37 = v90;
    v90 = 0;
    if (v37)
    {
      if (*(v37 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v37);
      }

      else
      {
        *(v37 + 7) -= 2;
      }
    }

    v38 = WebCore::VisiblePosition::characterAfter(&v118);
    if (_MergedGlobals_16 == 1)
    {
      v39 = qword_1ED6A61E0;
    }

    else
    {
      v39 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
      qword_1ED6A61E0 = v39;
      _MergedGlobals_16 = 1;
    }

    if (CFCharacterSetIsCharacterMember(v39, v36))
    {
      if (_MergedGlobals_16 == 1)
      {
        v40 = qword_1ED6A61E0;
      }

      else
      {
        v40 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
        qword_1ED6A61E0 = v40;
        _MergedGlobals_16 = 1;
      }

      if (!CFCharacterSetIsCharacterMember(v40, v38))
      {
LABEL_80:
        v35 = v118;
        v118 = 0;
        v84 = v119;
        v85 = v120;
        v25 = v121;
        goto LABEL_155;
      }
    }

    if (_MergedGlobals_16 == 1)
    {
      v41 = qword_1ED6A61E0;
    }

    else
    {
      v41 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
      qword_1ED6A61E0 = v41;
      _MergedGlobals_16 = 1;
    }

    if (CFCharacterSetIsCharacterMember(v41, v36))
    {
      goto LABEL_94;
    }

    if (_MergedGlobals_16 == 1)
    {
      v44 = qword_1ED6A61E0;
    }

    else
    {
      v44 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
      qword_1ED6A61E0 = v44;
      _MergedGlobals_16 = 1;
    }

    if (!CFCharacterSetIsCharacterMember(v44, v38))
    {
      goto LABEL_94;
    }

    WebCore::VisiblePosition::previous();
    v45 = v90;
    v90 = 0;
    v46 = v118;
    v118 = v45;
    if (v46)
    {
      if (*(v46 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v46);
        v67 = v90;
        v119 = v91;
        v120 = v92;
        v121 = v93;
        v90 = 0;
        if (v67)
        {
          if (*(v67 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v67);
          }

          else
          {
            *(v67 + 7) -= 2;
          }
        }

        goto LABEL_94;
      }

      *(v46 + 7) -= 2;
    }

    v119 = v91;
    v120 = v92;
    v121 = v93;
LABEL_94:
    WebCore::endOfWord();
    if (!WebCore::operator==(&v110, &v114))
    {
      WebCore::VisiblePosition::previous();
      v42 = WebCore::VisiblePosition::characterAfter(&v90);
      v43 = v90;
      v90 = 0;
      if (v43)
      {
        if (*(v43 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v43);
        }

        else
        {
          *(v43 + 7) -= 2;
        }
      }

      if (_MergedGlobals_16 == 1)
      {
        v47 = qword_1ED6A61E0;
      }

      else
      {
        v47 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
        qword_1ED6A61E0 = v47;
        _MergedGlobals_16 = 1;
      }

      if (CFCharacterSetIsCharacterMember(v47, v42))
      {
        v35 = v110;
        v84 = v111;
        v85 = v112;
        v25 = v113;
        goto LABEL_155;
      }
    }

    WebCore::startOfWord();
    v49 = v106;
    if (v106)
    {
      *(v106 + 7) += 2;
    }

    v50 = v118;
    v118 = v49;
    if (v50)
    {
      if (*(v50 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v50);
        v49 = v118;
      }

      else
      {
        *(v50 + 7) -= 2;
      }
    }

    v119 = v107;
    v120 = v108;
    v121 = v109;
    if (!v49)
    {
LABEL_138:
      if (WebCore::operator==(&v118, &v102))
      {
        v58 = v110;
        if (v110)
        {
          *(v110 + 7) += 2;
        }

        v59 = v118;
        v118 = v58;
        if (v59)
        {
          if (*(v59 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v59);
          }

          else
          {
            *(v59 + 7) -= 2;
          }
        }

        v119 = v111;
        v120 = v112;
        v25 = v113;
        v121 = v113;
      }

      else
      {
        v25 = v121;
      }

      v35 = v118;
      v118 = 0;
      v84 = v119;
      v85 = v120;
      v60 = v106;
      v106 = 0;
      if (v60)
      {
        if (*(v60 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v60);
        }

        else
        {
          *(v60 + 7) -= 2;
        }
      }

      v61 = v110;
      v110 = 0;
      if (v61)
      {
        if (*(v61 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v61);
        }

        else
        {
          *(v61 + 7) -= 2;
        }
      }

LABEL_155:
      v62 = v114;
      v114 = 0;
      if (v62)
      {
        if (*(v62 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v62);
        }

        else
        {
          *(v62 + 7) -= 2;
        }
      }

      v63 = v118;
      v118 = 0;
      if (v63)
      {
        if (*(v63 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v63);
        }

        else
        {
          *(v63 + 7) -= 2;
        }
      }

      v64 = v86;
      v86 = v35;
      if (!v64)
      {
        goto LABEL_227;
      }

      v65 = *(v64 + 7) - 2;
      if (*(v64 + 7) != 2)
      {
LABEL_226:
        *(v64 + 7) = v65;
        goto LABEL_227;
      }

LABEL_165:
      WebCore::Node::removedLastRef(v64);
LABEL_227:
      v87 = v84;
      v88 = v85;
      v89 = v25;
      if (v86)
      {
        if (!WebCore::operator==(&v86, v94))
        {
          WebCore::FrameSelection::moveTo();
        }

        v83 = v86;
        v86 = 0;
        if (v83)
        {
          if (*(v83 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v83);
          }

          else
          {
            *(v83 + 7) -= 2;
          }
        }
      }

      WebCore::VisibleSelection::~VisibleSelection(v95);
      goto LABEL_6;
    }

    while (1)
    {
      if ((WebCore::isStartOfLine(&v118, v48) & 1) != 0 || (WebCore::isEndOfLine(&v118, v51) & 1) != 0 || WebCore::operator==(&v118, &v102))
      {
        goto LABEL_138;
      }

      WebCore::VisiblePosition::previous();
      v52 = WebCore::VisiblePosition::characterAfter(&v90);
      v53 = v90;
      v90 = 0;
      if (v53)
      {
        if (*(v53 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v53);
        }

        else
        {
          *(v53 + 7) -= 2;
        }
      }

      if (_MergedGlobals_16 == 1)
      {
        v54 = qword_1ED6A61E0;
      }

      else
      {
        v54 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
        qword_1ED6A61E0 = v54;
        _MergedGlobals_16 = 1;
      }

      if (CFCharacterSetIsCharacterMember(v54, v52))
      {
        goto LABEL_138;
      }

      WebCore::VisiblePosition::previous();
      v55 = v90;
      v90 = 0;
      v56 = v118;
      v118 = v55;
      if (v56)
      {
        if (*(v56 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v56);
          v57 = v90;
          v119 = v91;
          v120 = v92;
          v121 = v93;
          v90 = 0;
          if (v57)
          {
            if (*(v57 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v57);
            }

            else
            {
              *(v57 + 7) -= 2;
            }
          }

          goto LABEL_119;
        }

        *(v56 + 7) -= 2;
      }

      v119 = v91;
      v120 = v92;
      v121 = v93;
LABEL_119:
      if (!v118)
      {
        goto LABEL_138;
      }
    }
  }
}

- (id)startPosition
{
  coreFrame = [(WebFrame *)self coreFrame];
  WebCore::startOfDocument(v7, coreFrame[28], v3);
  result = [WebVisiblePosition _wrapVisiblePosition:v7];
  v5 = v7[0];
  v7[0] = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v5);
      return v6;
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  return result;
}

- (id)endPosition
{
  coreFrame = [(WebFrame *)self coreFrame];
  WebCore::endOfDocument(v7, coreFrame[28], v3);
  result = [WebVisiblePosition _wrapVisiblePosition:v7];
  v5 = v7[0];
  v7[0] = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v5);
      return v6;
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  return result;
}

- (BOOL)renderedCharactersExceed:(unint64_t)exceed
{
  v4 = *([(WebFrame *)self coreFrame]+ 216);

  return MEMORY[0x1EEE55790](v4, exceed);
}

- (CGRect)elementRectAtPoint:(CGPoint)point
{
  pointCopy = point;
  [(WebFrame *)self coreFrame];
  WebCore::FloatPoint::FloatPoint(&v16, &pointCopy);
  WebCore::ScrollView::windowToContents();
  WebCore::EventHandler::hitTestResultAtPoint();
  v3 = v17;
  if (v17 && *(v17 + 72))
  {
    WebCore::HitTestResult::innerNodeFrame(&v16);
    WebCore::RenderObject::absoluteBoundingBoxRect(*(v3 + 72), 1, 0);
    WebCore::ScrollView::contentsToWindow();
    WebCore::IntRect::operator CGRect();
  }

  else
  {
    WebCore::IntRect::operator CGRect();
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  MEMORY[0x1CCA64820](&v16);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end