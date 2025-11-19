@interface UIWebBrowserView
+ (id)getUIWebBrowserViewForWebFrame:(id)a3;
+ (void)initialize;
- ($1AB5FA073B851C12C2339EC22442E995)scalesForContainerSize:(CGSize)a3;
- (BOOL)_dumpWebArchiveAtPath:(id)a3;
- (BOOL)_hasSubviewContainingWebContent:(id)a3;
- (BOOL)_keepKeyboardVisibleDuringFocusRedirects;
- (BOOL)_requiresKeyboardWhenFirstResponder;
- (BOOL)_resignFirstResponderAndBlurFocusedElement;
- (BOOL)_restoreFocusWithToken:(id)a3;
- (BOOL)allowsInlineMediaPlayback;
- (BOOL)allowsPictureInPictureVideo;
- (BOOL)appendOverflowScrollForNode:(id)a3 offset:(CGPoint)a4 whileScrolling:(BOOL)a5;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isAnyTouchOverActiveArea:(id)a3;
- (BOOL)isAutoFillMode;
- (BOOL)isEditable;
- (BOOL)mediaPlaybackRequiresUserAction;
- (BOOL)playsNicelyWithGestures;
- (CGPoint)_convertWindowPointToViewport:(CGPoint)a3;
- (CGRect)_activeRectForRectToCenter:(CGRect)a3;
- (CGSize)_defaultScrollViewContentSize;
- (NSString)networkInterfaceName;
- (UIWebBrowserView)initWithFrame:(CGRect)a3;
- (UIWebBrowserView)initWithWebView:(id)a3 frame:(CGRect)a4;
- (double)scaleForProposedNewScale:(double)a3 andOldScale:(double)a4;
- (id)_absoluteUrlRelativeToDocumentURL:(id)a3;
- (id)_collectAdditionalSubviews;
- (id)_editingDelegate;
- (id)_keyboardResponder;
- (id)addFindOnPageHighlighter;
- (id)inputAccessoryView;
- (id)inputView;
- (id)keyCommands;
- (id)messagesMatchingMask:(int)a3;
- (id)textDocument;
- (id)textFormElement;
- (uint64_t)_zoomToRect:(CGFloat)a3 ensuringVisibilityOfRect:(CGFloat)a4 withScale:(CGFloat)a5 forceScroll:(CGFloat)a6 formAssistantFrame:(CGFloat)a7 animationDuration:(CGFloat)a8;
- (unsigned)audioSessionCategoryOverride;
- (void)_addAdditionalSubview:(id)a3;
- (void)_assistFormNode:(id)a3;
- (void)_autoFillFrame:(id)a3;
- (void)_centerRect:(CGRect)a3 forSizeChange:(BOOL)a4 withVisibleHeight:(double)a5 pinningEdge:(unint64_t)a6 toValue:(double)a7;
- (void)_clearFormAutoFillStateForFrame:(id)a3;
- (void)_deferWebEvent:(id)a3;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_didScroll;
- (void)_dispatchWebEvent:(id)a3;
- (void)_displayFormNodeInputView;
- (void)_endAllowingFocusRedirects;
- (void)_endDeferringEvents;
- (void)_focusAndAssistFormNode:(id)a3;
- (void)_handleDeferredEvents;
- (void)_keyboardDidChangeFrame:(id)a3;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_noteOverflowScrollViewPendingDeletion:(id)a3;
- (void)_noteOverflowScrollViewPendingInsertion:(id)a3;
- (void)_overflowScrollView:(id)a3 scrollOffsetChangedForNode:(id)a4 whileScrolling:(BOOL)a5;
- (void)_overflowScrollView:(id)a3 willStartScrollingForNode:(id)a4;
- (void)_preserveFocusWithToken:(id)a3 destructively:(BOOL)a4;
- (void)_reloadInputViewsAfterPotentialFocusRedirect;
- (void)_removeAdditionalSubview:(id)a3;
- (void)_resetFormDataForFrame:(id)a3;
- (void)_scrollCaretToVisible:(id)a3;
- (void)_setInputViewBoundsForAutomaticKeyboardInfo:(id)a3 adjustScrollView:(BOOL)a4;
- (void)_setSelectedDOMRangeAndUpdateUI:(id)a3;
- (void)_setUnobscuredSafeAreaInsets:(UIEdgeInsets)a3;
- (void)_startDeferringEvents;
- (void)_startURLificationIfNeededCoalesce:(BOOL)a3;
- (void)_stopAssistingFormNode;
- (void)_stopAssistingNode:(id)a3;
- (void)_updateAccessory;
- (void)_updateAutoFillButton;
- (void)_updateFixedPositionContent;
- (void)_updateFixedPositioningObjectsLayoutAfterScroll;
- (void)_updateFixedPositioningObjectsLayoutAfterVisibleGeometryChange;
- (void)_updateFixedPositioningObjectsLayoutDuringScroll;
- (void)_updateFixedPositioningObjectsLayoutSoon;
- (void)_updateScrollerViewForInputView:(id)a3;
- (void)_webThreadOverflowScrollOffsetChanged;
- (void)_webTouchEventsRecognized:(id)a3;
- (void)_zoomToNode:(id)a3 forceScroll:(BOOL)a4;
- (void)acceptedAutoFillWord:(id)a3;
- (void)accessoryClear;
- (void)accessoryTab:(BOOL)a3;
- (void)assistFormNode:(id)a3;
- (void)clearMessagesMatchingMask:(int)a3;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)formDelegateTextDidChange;
- (void)installGestureRecognizers;
- (void)redrawScaledDocument;
- (void)rotateEnclosingScrollViewToFrame:(CGRect)a3;
- (void)setAllowDOMFocusRedirects:(BOOL)a3;
- (void)setAllowsInlineMediaPlayback:(BOOL)a3;
- (void)setAllowsLinkPreview:(BOOL)a3;
- (void)setAllowsPictureInPictureVideo:(BOOL)a3;
- (void)setAlwaysDispatchesScrollEvents:(BOOL)a3;
- (void)setAudioSessionCategoryOverride:(unsigned int)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInputViewObeysDOMFocus:(BOOL)a3;
- (void)setMediaPlaybackRequiresUserAction:(BOOL)a3;
- (void)setNetworkInterfaceName:(id)a3;
- (void)updateBoundariesOfScrollView:(id)a3 withScales:(id)a4;
- (void)webView:(id)a3 addMessageToConsole:(id)a4 withSource:(id)a5;
- (void)webView:(id)a3 didCreateOrUpdateScrollingLayer:(id)a4 withContentsLayer:(id)a5 scrollSize:(id)a6 forNode:(id)a7 allowHorizontalScrollbar:(BOOL)a8 allowVerticalScrollbar:(BOOL)a9;
- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webView:(id)a3 didFirstVisuallyNonEmptyLayoutInFrame:(id)a4;
- (void)webView:(id)a3 didStartProvisionalLoadForFrame:(id)a4;
- (void)webView:(id)a3 elementDidBlurNode:(id)a4;
- (void)webView:(id)a3 elementDidFocusNode:(id)a4;
- (void)webView:(id)a3 willRemoveScrollingLayer:(id)a4 withContentsLayer:(id)a5 forNode:(id)a6;
- (void)webViewDidCommitCompositingLayerChanges:(id)a3;
- (void)webViewDidPreventDefaultForEvent:(id)a3;
@end

@implementation UIWebBrowserView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    _UIApplicationLoadWebKit();
  }
}

+ (id)getUIWebBrowserViewForWebFrame:(id)a3
{
  v3 = [a3 webView];

  return [v3 _UIKitDelegate];
}

- (UIWebBrowserView)initWithWebView:(id)a3 frame:(CGRect)a4
{
  v9.receiver = self;
  v9.super_class = UIWebBrowserView;
  v4 = [(UIWebDocumentView *)&v9 initWithWebView:a3 frame:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v5 = v4;
  if (v4)
  {
    *(&v4->super + 953) |= 4u;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel__keyboardWillChangeFrame_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
    [v6 addObserver:v5 selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardDidChangeFrameNotification" object:0];
    [v6 addObserver:v5 selector:sel__keyboardWillShow_ name:@"UIKeyboardWillShowNotification" object:0];
    [v6 addObserver:v5 selector:sel__keyboardWillHide_ name:@"UIKeyboardWillHideNotification" object:0];
    [v6 addObserver:v5 selector:sel__keyboardDidHide_ name:@"UIKeyboardDidHideNotification" object:0];
    *(v5 + 1608) |= 1u;
    v7 = [[UIWebFormDelegate alloc] initWithWebBrowserView:v5];
    v5->_formDelegate = v7;
    [(WebView *)v5->super._webView _setFormDelegate:v7];
    -[WebView _setUIWebViewUserAgentWithBuildVersion:](v5->super._webView, "_setUIWebViewUserAgentWithBuildVersion:", [+[UIDevice currentDevice](UIDevice buildVersion]);
    [(WebPreferences *)[(WebView *)v5->super._webView preferences] setShrinksStandaloneImagesToFit:1];
  }

  return v5;
}

- (UIWebBrowserView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIWebBrowserView;
  v3 = [(UIWebDocumentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    -[WebView _setUIWebViewUserAgentWithBuildVersion:](v3->super._webView, "_setUIWebViewUserAgentWithBuildVersion:", [+[UIDevice currentDevice](UIDevice buildVersion]);
  }

  return v4;
}

- (void)dealloc
{
  v15[5] = *MEMORY[0x1E69E9840];
  [(UIWebBrowserView *)self _clearFormAutoFillStateForFrame:[(WebView *)self->super._webView mainFrame]];
  [(UIWebBrowserView *)self set_accessory:0];
  [(UIWebBrowserView *)self set_input:0];
  [(UIWebBrowserView *)self set_currentAssistedNode:0];
  self->_editingDelegateForEverythingExceptForms = 0;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v15[0] = @"UIKeyboardWillChangeFrameNotification";
  v15[1] = @"UIKeyboardDidChangeFrameNotification";
  v15[2] = @"UIKeyboardWillShowNotification";
  v15[3] = @"UIKeyboardWillHideNotification";
  v15[4] = @"UIKeyboardDidHideNotification";
  -[NSNotificationCenter _uiRemoveObserver:names:](v3, self, [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5]);
  [(UIGestureRecognizer *)self->_webTouchEventsGestureRecognizer setDelegate:0];

  v4 = [(NSHashTable *)self->_activeHighlighters copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) clearBrowserView];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v9 dealloc];
}

- (void)installGestureRecognizers
{
  if (!self->_webTouchEventsGestureRecognizer)
  {
    v3 = [[UIWebTouchEventsGestureRecognizer alloc] initWithTarget:self action:sel__webTouchEventsRecognized_ touchDelegate:self];
    self->_webTouchEventsGestureRecognizer = v3;
    [(UIGestureRecognizer *)v3 setDelegate:self];
    [(UIView *)self addGestureRecognizer:self->_webTouchEventsGestureRecognizer];
    v4.receiver = self;
    v4.super_class = UIWebBrowserView;
    [(UIWebDocumentView *)&v4 installGestureRecognizers];
  }
}

- (BOOL)isEditable
{
  if ([(DOMNode *)self->_currentAssistedNode _requiresInputView])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UIWebBrowserView;
  return [(UIWebDocumentView *)&v4 isEditable];
}

- (BOOL)_keepKeyboardVisibleDuringFocusRedirects
{
  v3 = [(UIWebBrowserView *)self allowDOMFocusRedirects];
  if (v3)
  {
    assistedNodeStartingFocusRedirects = self->_assistedNodeStartingFocusRedirects;

    LOBYTE(v3) = [(DOMNode *)assistedNodeStartingFocusRedirects _requiresInputView];
  }

  return v3;
}

- (BOOL)_requiresKeyboardWhenFirstResponder
{
  if ((*(self + 1608) & 2) != 0 || [(DOMNode *)self->_currentAssistedNode _requiresInputView])
  {
    return 1;
  }

  return [(UIWebBrowserView *)self _keepKeyboardVisibleDuringFocusRedirects];
}

- (id)_keyboardResponder
{
  v2 = self;
  if ([(DOMNode *)self->_currentAssistedNode conformsToProtocol:&unk_1EFE8A940])
  {
    return v2->_currentAssistedNode;
  }

  return v2;
}

- (id)textDocument
{
  result = [(UIWebBrowserView *)self formElement];
  if (!result)
  {
    return self;
  }

  return result;
}

- (BOOL)_resignFirstResponderAndBlurFocusedElement
{
  if (self->_currentAssistedNode)
  {
    WebThreadLock();
    if ([(DOMNode *)self->_currentAssistedNode nodeType]== 1)
    {
      [(DOMNode *)self->_currentAssistedNode blur];
    }

    if (self->_currentAssistedNode)
    {
      [(UIWebBrowserView *)self _stopAssistingFormNode];
    }
  }

  v4.receiver = self;
  v4.super_class = UIWebBrowserView;
  return [(UIWebDocumentView *)&v4 resignFirstResponder];
}

- (id)keyCommands
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = [UIKeyCommand keyCommandWithInput:@"\t" modifierFlags:0 action:sel__nextAccessoryTab_];
  v3[1] = [UIKeyCommand keyCommandWithInput:@"\t" modifierFlags:0x20000 action:sel__prevAccessoryTab_];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
}

- (id)inputAccessoryView
{
  if (!self->_accessory)
  {
    [(UIWebBrowserView *)self set_accessory:[[UIWebFormAccessory alloc] initWithInputAssistantItem:[(UIResponder *)self inputAssistantItem]]];
    [(UIWebFormAccessory *)self->_accessory setDelegate:self];
  }

  if ((*(self + 1608) & 1) != 0 && ((*(self + 1608) & 2) != 0 || [(DOMNode *)self->_currentAssistedNode _requiresAccessoryView]|| [(UIWebBrowserView *)self _keepKeyboardVisibleDuringFocusRedirects]))
  {
    return self->_accessory;
  }

  else
  {
    return 0;
  }
}

- (id)inputView
{
  if (self->_input)
  {
    [(UIWebBrowserView *)self _displayFormNodeInputView];
  }

  else
  {
    [(UIWebBrowserView *)self set_input:[(DOMNode *)self->_currentAssistedNode createPeripheral]];
  }

  input = self->_input;

  return [(UIFormPeripheral *)input assistantView];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel__promptForReplace_ == a3 || sel__transliterateChinese_ == a3)
  {
    v7 = [(UIWebBrowserView *)self textFormElement];
    if (!v7)
    {
      return v7;
    }

    v8 = v7;
    if ([v7 isSecure])
    {
      goto LABEL_24;
    }

    v7 = [v8 selectedTextRange];
    if (!v7)
    {
      return v7;
    }

    v9 = v7;
    if ([v7 isEmpty])
    {
      goto LABEL_24;
    }

    v10 = [(UIWebDocumentView *)self textInRange:v9];

    LOBYTE(v7) = [(UIResponder *)self _shouldPerformUICalloutBarButtonReplaceAction:a3 forText:v10 checkAutocorrection:0];
  }

  else
  {
    if (sel__nextAccessoryTab_ != a3)
    {
      if (sel__prevAccessoryTab_ != a3)
      {
        v14.receiver = self;
        v14.super_class = UIWebBrowserView;
        LOBYTE(v7) = [(UIWebDocumentView *)&v14 canPerformAction:a3 withSender:a4];
        return v7;
      }

      if (self->_currentAssistedNode)
      {
        accessory = self->_accessory;

        LOBYTE(v7) = [(UIWebFormAccessory *)accessory isPreviousEnabled];
        return v7;
      }

LABEL_24:
      LOBYTE(v7) = 0;
      return v7;
    }

    if (!self->_currentAssistedNode)
    {
      goto LABEL_24;
    }

    v11 = self->_accessory;

    LOBYTE(v7) = [(UIWebFormAccessory *)v11 isNextEnabled];
  }

  return v7;
}

- (void)copy:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v5 copy:a3];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObject:0x1EFBC1090 forKey:0x1EFBC1090];
  v4 = +[UIPasteboard generalPasteboard];
  -[UIPasteboard addItems:](v4, "addItems:", [MEMORY[0x1E695DEC8] arrayWithObject:v3]);
}

- (id)_editingDelegate
{
  v2 = self;
  if (![(UIWebBrowserView *)self formElement])
  {
    v3 = [(UIWebBrowserView *)v2 _editingDelegateForEverythingExceptForms];
    if (v3)
    {
      return v3;
    }
  }

  return v2;
}

- (BOOL)playsNicelyWithGestures
{
  if ([(UIWebBrowserView *)self formElement]|| ([(UIWebBrowserView *)self _editingDelegateForEverythingExceptForms], (objc_opt_respondsToSelector() & 1) == 0))
  {
    v5.receiver = self;
    v5.super_class = UIWebBrowserView;
    return [(UIWebDocumentView *)&v5 playsNicelyWithGestures];
  }

  else
  {
    v3 = [(UIWebBrowserView *)self _editingDelegateForEverythingExceptForms];

    return [(UIResponder *)v3 playsNicelyWithGestures];
  }
}

- (void)_stopAssistingNode:(id)a3
{
  [(UIFormPeripheral *)self->_input endEditing];

  [(UIWebBrowserView *)self set_input:0];
}

- (void)_setInputViewBoundsForAutomaticKeyboardInfo:(id)a3 adjustScrollView:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
  if (v7)
  {
    v8 = v7;
    v9 = [(UIWindow *)[(UIView *)self window] _isHostedInAnotherProcess];
    v10 = [(UIView *)self window];
    [v8 CGRectValue];
    x = v11;
    y = v13;
    width = v15;
    height = v17;
    if (!v9)
    {
      [(UIScreen *)[(UIWindow *)[(UIView *)self window] screen] bounds];
      v31.origin.x = v19;
      v31.origin.y = v20;
      v31.size.width = v21;
      v31.size.height = v22;
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v30 = CGRectIntersection(v29, v31);
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
    }

    [(UIWindow *)v10 convertRect:0 fromWindow:x, y, width, height];
    self->_inputViewBounds.origin.x = v23;
    self->_inputViewBounds.origin.y = v24;
    self->_inputViewBounds.size.width = v25;
    self->_inputViewBounds.size.height = v26;
    if (v4)
    {
      v27 = [(UIView *)self _scroller];

      [v27 _adjustForAutomaticKeyboardInfo:a3 animated:1 lastAdjustment:&self->_lastAdjustmentForScroller];
    }
  }
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  if (self->_currentAssistedNode)
  {
    v4 = [a3 userInfo];

    [(UIWebBrowserView *)self _setInputViewBoundsForAutomaticKeyboardInfo:v4 adjustScrollView:1];
  }
}

- (void)_keyboardDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];

  [(UIWebBrowserView *)self _setInputViewBoundsForAutomaticKeyboardInfo:v4 adjustScrollView:0];
}

- (void)_keyboardWillShow:(id)a3
{
  if (self->_currentAssistedNode)
  {
    -[UIWebBrowserView _setInputViewBoundsForAutomaticKeyboardInfo:adjustScrollView:](self, "_setInputViewBoundsForAutomaticKeyboardInfo:adjustScrollView:", [a3 userInfo], 1);
    *(self + 1608) = *(self + 1608) & 0xFD | (2 * (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1));
  }
}

- (void)_keyboardWillHide:(id)a3
{
  if (([+[UIPeripheralHost activeInstance](UIPeripheralHost "activeInstance")] & 1) == 0)
  {
    -[UIWebBrowserView _setInputViewBoundsForAutomaticKeyboardInfo:adjustScrollView:](self, "_setInputViewBoundsForAutomaticKeyboardInfo:adjustScrollView:", [a3 userInfo], 1);
    *(self + 1608) &= ~2u;
  }
}

- (void)_updateFixedPositioningObjectsLayoutDuringScroll
{
  if (!self->_currentAssistedNode)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = UIWebBrowserView;
    [(UIWebDocumentView *)&v4 _updateFixedPositioningObjectsLayoutDuringScroll];
  }
}

- (void)_updateFixedPositioningObjectsLayoutAfterScroll
{
  if (!self->_currentAssistedNode)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = UIWebBrowserView;
    [(UIWebDocumentView *)&v4 _updateFixedPositioningObjectsLayoutAfterScroll];
  }
}

- (void)_updateFixedPositioningObjectsLayoutAfterVisibleGeometryChange
{
  if (!self->_currentAssistedNode)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = UIWebBrowserView;
    [(UIWebDocumentView *)&v4 _updateFixedPositioningObjectsLayoutAfterVisibleGeometryChange];
  }
}

- (void)_updateFixedPositionContent
{
  if (!self->_currentAssistedNode)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = UIWebBrowserView;
    [(UIWebDocumentView *)&v4 _updateFixedPositionContent];
  }
}

- (void)_updateFixedPositioningObjectsLayoutSoon
{
  if (!self->_currentAssistedNode)
  {
    [(UIWebBrowserView *)self _updateFixedPositioningObjectsLayoutAfterScroll];
  }
}

- (void)_updateScrollerViewForInputView:(id)a3
{
  v5 = [(UIView *)self _scroller];

  [v5 _adjustForAutomaticKeyboardInfo:a3 animated:1 lastAdjustment:&self->_lastAdjustmentForScroller];
}

- (void)_didScroll
{
  v3.receiver = self;
  v3.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v3 _didScroll];
  if ((*(self + 1608) & 0x40) != 0)
  {
    [(UIWebDocumentView *)self sendScrollEventIfNecessary];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8.receiver = self;
    v8.super_class = UIWebBrowserView;
    [(UIWebDocumentView *)&v8 setFrame:x, y, width, height];
    if (self->_currentAssistedNode)
    {
      [-[UIView _scroller](self "_scroller")];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8.receiver = self;
    v8.super_class = UIWebBrowserView;
    [(UIView *)&v8 setBounds:x, y, width, height];
    if (self->_currentAssistedNode)
    {
      [-[UIView _scroller](self "_scroller")];
    }
  }
}

- (void)_stopAssistingFormNode
{
  v3 = self->_currentAssistedNode;
  [(DOMNode *)self->_currentAssistedNode _stopAssistingDocumentView:self];
  [(UIWebBrowserView *)self set_currentAssistedNode:0];
  [(UIResponder *)self reloadInputViews];

  [(UIWebBrowserView *)self performSelector:sel__updateFixedPositioningObjectsLayoutSoon withObject:0 afterDelay:0.0];
}

- (void)_displayFormNodeInputView
{
  if (![(UIWebBrowserView *)self allowDOMFocusRedirects]&& !self->super._interaction.isWriting)
  {
    WebThreadLock();
    [(UIWebBrowserView *)self _zoomToNode:self->_currentAssistedNode forceScroll:[(DOMNode *)self->_currentAssistedNode _requiresInputView]];
    [(DOMNode *)self->_currentAssistedNode _startAssistingDocumentView:self];

    [(UIWebBrowserView *)self _updateAccessory];
  }
}

- (void)_updateAutoFillButton
{
  if (![(DOMNode *)self->_currentAssistedNode _supportsAutoFill])
  {
    accessory = self->_accessory;
    goto LABEL_8;
  }

  v3 = objc_opt_respondsToSelector();
  autoFillDelegate = self->_autoFillDelegate;
  if (v3)
  {
    v5 = [(UIWebAutoFillDelegate *)autoFillDelegate titleOfAutoFillButtonInWebBrowserView:self];
    accessory = self->_accessory;
    if (v5)
    {

      [(UIWebFormAccessory *)accessory showAutoFillButtonWithTitle:?];
      return;
    }

    goto LABEL_8;
  }

  v7 = [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserViewShouldShowAutoFillButton:self];
  accessory = self->_accessory;
  if (!v7)
  {
LABEL_8:

    [(UIWebFormAccessory *)accessory hideAutoFillButton];
    return;
  }

  [(UIWebFormAccessory *)accessory showAutoFillButton];
  v8 = self->_autoFillDelegate;
  v9 = [(UIWebFormAccessory *)self->_accessory _autofill];

  [(UIWebAutoFillDelegate *)v8 webBrowserView:self updateAutoFillButton:v9];
}

- (void)_updateAccessory
{
  if (![(UIWebBrowserView *)self allowDOMFocusRedirects])
  {
    v3 = [(DOMNode *)self->_currentAssistedNode _nextAssistedNode]!= 0;
    v4 = [(DOMNode *)self->_currentAssistedNode _previousAssistedNode]!= 0;
    [(UIWebFormAccessory *)self->_accessory setNextEnabled:v3];
    [(UIWebFormAccessory *)self->_accessory setPreviousEnabled:v4];
    [(UIWebBrowserView *)self _updateAutoFillButton];
    accessory = self->_accessory;
    v6 = [(DOMNode *)self->_currentAssistedNode _supportsAccessoryClear];

    [(UIWebFormAccessory *)accessory setClearVisible:v6];
  }
}

- (void)_focusAndAssistFormNode:(id)a3
{
  WebThreadLock();
  [(UIWebBrowserView *)self _beginAllowingFocusRedirects];
  [(UIWebBrowserView *)self assistFormNode:a3];
  [a3 focus];

  [(UIWebBrowserView *)self _endAllowingFocusRedirects];
}

- (void)_endAllowingFocusRedirects
{
  [(UIWebBrowserView *)self setAllowDOMFocusRedirects:0];
  [(UIWebBrowserView *)self _reloadInputViewsAfterPotentialFocusRedirect];

  self->_assistedNodeStartingFocusRedirects = 0;
}

- (void)_assistFormNode:(id)a3
{
  [(UIWebBrowserView *)self _beginAllowingFocusRedirects];
  [(UIWebBrowserView *)self assistFormNode:a3];

  [(UIWebBrowserView *)self _endAllowingFocusRedirects];
}

- (void)assistFormNode:(id)a3
{
  currentAssistedNode = self->_currentAssistedNode;
  if (!currentAssistedNode || !-[DOMNode isSameNode:](currentAssistedNode, "isSameNode:", [a3 _realNode]))
  {
    if (objc_opt_respondsToSelector())
    {
      [self->super._delegate webView:self willAssistFormNode:a3];
    }

    v6 = [UIThreadSafeNode threadSafeNodeWithNode:a3];

    [(UIWebBrowserView *)self set_currentAssistedNode:v6];
  }
}

- (void)_reloadInputViewsAfterPotentialFocusRedirect
{
  [(DOMNode *)self->_assistedNodeStartingFocusRedirects _stopAssistingDocumentView:self];
  [(UIResponder *)self reloadInputViews];
  if (self->_currentAssistedNode)
  {
    [(UIWebBrowserView *)self _displayFormNodeInputView];
  }

  v3 = MEMORY[0x1E69E58C0];

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__updateFixedPositioningObjectsLayoutSoon object:0];
}

- (void)_preserveFocusWithToken:(id)a3 destructively:(BOOL)a4
{
  v4 = a4;
  focusPreservingTokens = self->_focusPreservingTokens;
  if (!focusPreservingTokens)
  {
    focusPreservingTokens = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    self->_focusPreservingTokens = focusPreservingTokens;
  }

  currentAssistedNode = self->_currentAssistedNode;
  if (!currentAssistedNode)
  {
    currentAssistedNode = [MEMORY[0x1E695DFB0] null];
    focusPreservingTokens = self->_focusPreservingTokens;
  }

  [(NSMutableDictionary *)focusPreservingTokens setObject:currentAssistedNode forKey:a3];
  if (v4 && self->_currentAssistedNode)
  {

    [(UIWebBrowserView *)self _stopAssistingFormNode];
  }
}

- (BOOL)_restoreFocusWithToken:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_focusPreservingTokens objectForKey:?];
  if (-[DOMNode isEqual:](v5, "isEqual:", [MEMORY[0x1E695DFB0] null]))
  {
    [(UIWebBrowserView *)self _stopAssistingFormNode];
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIWebBrowserView *)self _focusAndAssistFormNode:v5];
      v6 = self->_currentAssistedNode == v5;
    }

    else
    {
      v6 = 0;
    }
  }

  [(NSMutableDictionary *)self->_focusPreservingTokens removeObjectForKey:a3];
  return v6;
}

- (void)setAllowsInlineMediaPlayback:(BOOL)a3
{
  v3 = a3;
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v5 = [(WebView *)self->super._webView preferences];

  [(WebPreferences *)v5 setMediaPlaybackAllowsInline:v3];
}

- (BOOL)allowsInlineMediaPlayback
{
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v3 = [(WebView *)self->super._webView preferences];

  return [(WebPreferences *)v3 mediaPlaybackAllowsInline];
}

- (void)setMediaPlaybackRequiresUserAction:(BOOL)a3
{
  v3 = a3;
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v5 = [(WebView *)self->super._webView preferences];

  [(WebPreferences *)v5 setMediaPlaybackRequiresUserGesture:v3];
}

- (BOOL)mediaPlaybackRequiresUserAction
{
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v3 = [(WebView *)self->super._webView preferences];

  return [(WebPreferences *)v3 mediaPlaybackRequiresUserGesture];
}

- (void)setAudioSessionCategoryOverride:(unsigned int)a3
{
  v3 = *&a3;
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v5 = [(WebView *)self->super._webView preferences];

  [(WebPreferences *)v5 setAudioSessionCategoryOverride:v3];
}

- (void)setAllowsPictureInPictureVideo:(BOOL)a3
{
  v3 = a3;
  [(WebView *)self->super._webView preferences];
  if (objc_opt_respondsToSelector())
  {
    if ((WebThreadIsLocked() & 1) == 0)
    {
      WebThreadLock();
    }

    v5 = [(WebView *)self->super._webView preferences];

    [(WebPreferences *)v5 setAllowsAlternateFullscreen:v3];
  }
}

- (BOOL)allowsPictureInPictureVideo
{
  [(WebView *)self->super._webView preferences];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v3 = [(WebView *)self->super._webView preferences];

  return [(WebPreferences *)v3 allowsAlternateFullscreen];
}

- (void)setAllowsLinkPreview:(BOOL)a3
{
  v3 = *(self + 1609);
  if ((v3 & 1) != a3)
  {
    *(self + 1609) = v3 & 0xFE | a3;
    if (a3)
    {
      [(UIWebDocumentView *)self _registerPreview];
    }

    else
    {
      [(UIWebDocumentView *)self _unregisterPreview];
    }
  }
}

- (unsigned)audioSessionCategoryOverride
{
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v3 = [(WebView *)self->super._webView preferences];

  return [(WebPreferences *)v3 audioSessionCategoryOverride];
}

- (void)setNetworkInterfaceName:(id)a3
{
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v5 = [(WebView *)self->super._webView preferences];

  [(WebPreferences *)v5 setNetworkInterfaceName:a3];
}

- (NSString)networkInterfaceName
{
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  v3 = [(WebView *)self->super._webView preferences];

  return [(WebPreferences *)v3 networkInterfaceName];
}

- (void)accessoryTab:(BOOL)a3
{
  v3 = a3;
  WebThreadLock();
  currentAssistedNode = self->_currentAssistedNode;
  if (v3)
  {
    v6 = [(DOMNode *)currentAssistedNode _nextAssistedNode];
  }

  else
  {
    v6 = [(DOMNode *)currentAssistedNode _previousAssistedNode];
  }

  if (v6)
  {

    [(UIWebBrowserView *)self _focusAndAssistFormNode:v6];
  }

  else
  {

    [(UIWebBrowserView *)self _updateAccessory];
  }
}

- (void)accessoryClear
{
  WebThreadLock();
  currentAssistedNode = self->_currentAssistedNode;

  [(DOMNode *)currentAssistedNode _accessoryClear];
}

- (void)_scrollCaretToVisible:(id)a3
{
  v4 = [(UIWebBrowserView *)self formElement];
  if (v4 && !self->super._interaction.isWriting)
  {
    v5 = v4;
    WebThreadLock();

    [(UIWebBrowserView *)self _zoomToNode:v5 forceScroll:0];
  }
}

- (void)formDelegateTextDidChange
{
  if (!self->super._interaction.isWriting)
  {
    [(UIWebBrowserView *)self performSelector:sel__scrollCaretToVisible_ withObject:self afterDelay:0.0];
  }
}

- (id)textFormElement
{
  v2 = [(UIWebBrowserView *)self formElement];

  return [v2 _textFormElement];
}

- (void)_resetFormDataForFrame:(id)a3
{
  [(UIWebFormDelegate *)self->_formDelegate dataSourceHasChangedForFrame:a3];
  if (self->_currentAssistedNode)
  {

    [(UIWebBrowserView *)self _stopAssistingFormNode];
  }
}

- (void)_autoFillFrame:(id)a3
{
  if ([a3 isMainFrame] && (*(&self->super + 955) & 0x80000000) == 0 && (*(&self->super + 955) & 0x40) != 0)
  {
    *(self + 1608) |= 4u;
    [(UIWebAutoFillDelegate *)self->_autoFillDelegate webBrowserView:self preFillInFrame:a3];
    *(self + 1608) &= ~4u;
  }
}

- (void)_clearFormAutoFillStateForFrame:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    autoFillDelegate = self->_autoFillDelegate;

    [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:self clearFormAutoFillStateForFrame:a3];
  }
}

- (void)webView:(id)a3 didStartProvisionalLoadForFrame:(id)a4
{
  if (self->_currentAssistedNode)
  {
    v6 = [(UIWebDocumentView *)self _focusedOrMainFrame];
    if (v6 == a4 || [v6 _isDescendantOfFrame:a4])
    {
      currentAssistedNode = self->_currentAssistedNode;

      [(DOMNode *)currentAssistedNode blur];
    }
  }
}

- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4
{
  v6.receiver = self;
  v6.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v6 webView:a3 didFinishLoadForFrame:?];
  [(UIWebBrowserView *)self _autoFillFrame:a4];
}

- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5
{
  v7.receiver = self;
  v7.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v7 webView:a3 didFailLoadWithError:a4 forFrame:?];
  [(UIWebBrowserView *)self _autoFillFrame:a5];
}

- (void)acceptedAutoFillWord:(id)a3
{
  *(self + 1608) |= 4u;
  [(UIWebFormDelegate *)self->_formDelegate acceptedAutoFillWord:a3];
  *(self + 1608) &= ~4u;
}

- (BOOL)isAutoFillMode
{
  v3 = [(UIWebBrowserView *)self formElement];
  if (!v3 || ![v3 isTextControl])
  {
    return 0;
  }

  formDelegate = self->_formDelegate;

  return [(UIWebFormDelegate *)formDelegate hasCurrentSuggestions];
}

- (void)webView:(id)a3 elementDidFocusNode:(id)a4
{
  if ((*(&self->super + 956) & 0x10) == 0)
  {
    if ([a4 nodeCanBecomeFirstResponder] && ((*(self + 1608) & 8) != 0 || self->super._interaction.element || -[UIWebBrowserView allowDOMFocusRedirects](self, "allowDOMFocusRedirects") || -[UIWebBrowserView isDispatchingTouchEvents](self, "isDispatchingTouchEvents")))
    {
      if (![(UIView *)self isFirstResponder]&& ((*(self + 1608) & 8) != 0 || [(UIWebBrowserView *)self isDispatchingTouchEvents]))
      {
        [(UIWebDocumentView *)self becomeFirstResponder];
      }

      if ([(UIWebBrowserView *)self allowDOMFocusRedirects])
      {
        [(UIWebBrowserView *)self assistFormNode:a4];
      }

      else
      {
        [(UIWebBrowserView *)self _assistFormNode:a4];
      }
    }

    [(UIWebBrowserView *)self _updateAccessory];
  }
}

- (void)webView:(id)a3 elementDidBlurNode:(id)a4
{
  currentAssistedNode = self->_currentAssistedNode;
  if (currentAssistedNode)
  {
    if ([(DOMNode *)currentAssistedNode isSameNode:a4])
    {
      if ([a4 nodeType] == 1)
      {
        *(self + 1608) &= ~2u;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || [a4 isContentEditable])
        {
          [(UIWebBrowserView *)self _stopAssistingFormNode];
        }
      }
    }
  }

  [(UIWebBrowserView *)self _updateAccessory:a3];
}

- (void)_dispatchWebEvent:(id)a3
{
  ++self->_dispatchedTouchEvents;
  [objc_msgSend(-[UIWebDocumentView webView](self "webView")];
  --self->_dispatchedTouchEvents;
}

- (void)_startDeferringEvents
{
  [(UIView *)self setUserInteractionEnabled:0];
  v3 = [(UIView *)self _scroller];

  [v3 setUserInteractionEnabled:0];
}

- (void)_endDeferringEvents
{
  [-[UIView _scroller](self "_scroller")];

  [(UIView *)self setUserInteractionEnabled:1];
}

- (void)_deferWebEvent:(id)a3
{
  deferredTouchEvents = self->_deferredTouchEvents;
  if (!deferredTouchEvents)
  {
    deferredTouchEvents = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_deferredTouchEvents = deferredTouchEvents;
  }

  if (![(NSMutableArray *)deferredTouchEvents count])
  {
    [(UIWebBrowserView *)self _startDeferringEvents];
  }

  v6 = self->_deferredTouchEvents;

  [(NSMutableArray *)v6 addObject:a3];
}

- (void)_handleDeferredEvents
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_deferredTouchEvents count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    deferredTouchEvents = self->_deferredTouchEvents;
    v4 = [(NSMutableArray *)deferredTouchEvents countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(deferredTouchEvents);
          }

          [(UIWebBrowserView *)self _dispatchWebEvent:*(*(&v8 + 1) + 8 * i)];
        }

        v5 = [(NSMutableArray *)deferredTouchEvents countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_deferredTouchEvents removeAllObjects];

    self->_deferredTouchEvents = 0;
    [(UIWebBrowserView *)self _endDeferringEvents];
  }
}

- (void)_webTouchEventsRecognized:(id)a3
{
  v4 = [a3 lastTouchEvent];
  v5 = *(v4 + 80);
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  if (v5)
  {
    v9 = 0;
    do
    {
      [v6 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPoint:", *(*(v4 + 72) + v9 + 16), *(*(v4 + 72) + v9 + 24))}];
      [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(*(v4 + 72) + v9 + 32))}];
      [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(*(v4 + 72) + v9 + 40))}];
      v9 += 88;
    }

    while (88 * v5 != v9);
  }

  if ((*v4 - 1) >= 3)
  {
    v10 = 6;
  }

  else
  {
    v10 = (*v4 + 6);
  }

  v11 = objc_alloc(MEMORY[0x1E69E2F40]);
  v12 = *(v4 + 8);
  v13 = [a3 modifierFlags];
  *&v14 = *(v4 + 48);
  *&v15 = *(v4 + 56);
  LOBYTE(v16) = *(v4 + 64);
  v18 = [v11 initWithTouchEventType:v10 timeStamp:v13 & 0xA0000 | ((HIWORD(v13) & 1) << 18) & 0xFBEFFFFF | (v13 >> 4) & 0x10000 | (((v13 >> 18) & 1) << 20) & 0xFBFFFFFF | (((v13 >> 23) & 1) << 26) location:v5 modifiers:v6 touchCount:v7 touchLocations:v8 touchIdentifiers:v12 touchPhases:*(v4 + 32) isGesture:*(v4 + 40) gestureScale:v14 gestureRotation:{v15, v16}];

  if ([(UIWebBrowserView *)self _shouldDeferEvents])
  {
    [(UIWebBrowserView *)self _deferWebEvent:v18];
  }

  else
  {
    WebThreadLock();
    [(UIWebBrowserView *)self _dispatchWebEvent:v18];

    [(UIWebBrowserView *)self _handleDeferredEvents];
  }
}

- (CGPoint)_convertWindowPointToViewport:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  [(UIView *)self convertPoint:0 fromView:x, y];
  v12 = fmax(v11, 0.0);
  if (v12 >= v7)
  {
    v12 = v7;
  }

  v13 = fmax(v10, 0.0);
  if (v13 >= v9)
  {
    v13 = v9;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (void)webViewDidPreventDefaultForEvent:(id)a3
{
  [(UIWebTouchEventsGestureRecognizer *)self->_webTouchEventsGestureRecognizer setDefaultPrevented:1];

  [(UIWebDocumentView *)self cancelInteraction];
}

- (CGRect)_activeRectForRectToCenter:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WebThreadLock();
  element = [(UIWebBrowserView *)self formElement];
  if (!element)
  {
    if (self->super._interaction.var0)
    {
      element = self->super._interaction.element;
    }

    else
    {
      element = 0;
    }
  }

  v9 = [objc_msgSend(-[UIWebDocumentView webView](self "webView")];
  if (element)
  {
    v10 = [(DOMDocument *)[(DOMNode *)element ownerDocument] webFrame];
    v11 = [(WebFrame *)v10 documentView];
    if (self->super._interaction.var0)
    {
      [(DOMNode *)element absoluteQuad];
      v12 = quadBoundingBox(&v35);
    }

    else
    {
      [(WebFrame *)v10 rectForScrollToVisible];
    }

    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
LABEL_16:
    [v11 convertRect:v9 toView:{v22, v23, v24, v25}];
    documentScale = self->super._documentScale;
    v26 = v31 * documentScale;
    v27 = v32 * documentScale;
    v28 = v33 * documentScale;
    v29 = v34 * documentScale;
    goto LABEL_17;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([self->super._delegate webViewRotateShouldCenterSelectionRect:self])
  {
    v16 = [-[UIWebDocumentView webView](self "webView")];
    if (!v16)
    {
      v16 = [-[UIWebDocumentView webView](self "webView")];
    }

    v11 = [v16 documentView];
    [objc_msgSend(objc_msgSend(v16 "frameView")];
    v39.origin.x = v17;
    v39.origin.y = v18;
    v39.size.width = v19;
    v39.size.height = v20;
    v21 = 1.0 / self->super._documentScale;
    v36.origin.x = x * v21;
    v36.origin.y = y * v21;
    v36.size.width = width * v21;
    v36.size.height = height * v21;
    v37 = CGRectIntersection(v36, v39);
    v22 = v37.origin.x;
    v23 = v37.origin.y;
    v24 = v37.size.width;
    v25 = v37.size.height;
    if (!CGRectIsEmpty(v37))
    {
      goto LABEL_16;
    }
  }

  v26 = *MEMORY[0x1E695F050];
  v27 = *(MEMORY[0x1E695F050] + 8);
  v28 = *(MEMORY[0x1E695F050] + 16);
  v29 = *(MEMORY[0x1E695F050] + 24);
LABEL_17:
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_centerRect:(CGRect)a3 forSizeChange:(BOOL)a4 withVisibleHeight:(double)a5 pinningEdge:(unint64_t)a6 toValue:(double)a7
{
  v10 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    v64 = a5;
    v66 = a7;
    v16 = [(UIView *)self _scroller];
    [v16 bounds];
    v18 = v17;
    v65 = v19;
    [v16 convertRect:self fromView:{x, y, width, height}];
    v21 = v20;
    v23 = v22;
    v26 = v25 + (v18 - v24) * -0.5;
    if (v10)
    {
      [(UIWebBrowserView *)self _activeRectForRectToCenter:x, y, width, height];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
    }

    else
    {
      v28 = *MEMORY[0x1E695F050];
      v30 = *(MEMORY[0x1E695F050] + 8);
      v32 = *(MEMORY[0x1E695F050] + 16);
      v34 = *(MEMORY[0x1E695F050] + 24);
    }

    v35 = round(v26);
    v68.origin.x = v28;
    v68.origin.y = v30;
    v68.size.width = v32;
    v68.size.height = v34;
    IsEmpty = CGRectIsEmpty(v68);
    if (IsEmpty)
    {
      v37 = v65;
      v38 = round(v21 + (v65 - v23) * -0.5);
    }

    else
    {
      [v16 convertRect:self fromView:{v28, v30, v32, v34}];
      v39 = v69.origin.x;
      v40 = v69.origin.y;
      v41 = v69.size.width;
      v42 = v69.size.height;
      v43 = round(CGRectGetMidY(v69) + v64 * -0.5);
      v70.origin.x = v39;
      v70.origin.y = v40;
      v70.size.width = v41;
      v70.size.height = v42;
      v44 = CGRectGetMinX(v70) + -20.0;
      if (v35 >= v44)
      {
        v35 = v44;
      }

      v71.origin.x = v39;
      v71.origin.y = v40;
      v71.size.width = v41;
      v71.size.height = v42;
      v45 = CGRectGetMinY(v71) + -20.0;
      if (v43 >= v45)
      {
        v43 = v45;
      }

      v72.origin.x = v39;
      v72.origin.y = v40;
      v72.size.width = v41;
      v72.size.height = v42;
      v46 = CGRectGetMaxX(v72) + 20.0 - v18;
      if (v35 < v46)
      {
        v35 = v46;
      }

      v73.origin.x = v39;
      v73.origin.y = v40;
      v73.size.width = v41;
      v73.size.height = v42;
      v37 = v65;
      v47 = CGRectGetMaxY(v73) + 20.0 - v65;
      if (v43 >= v47)
      {
        v38 = v43;
      }

      else
      {
        v38 = v47;
      }
    }

    [v16 contentSize];
    v49 = v48;
    v51 = v50;
    [v16 contentInset];
    v56 = v49 + v54 + v55 - v18;
    if (v35 >= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v35;
    }

    if (v57 < 0.0)
    {
      v57 = 0.0;
    }

    v58 = round(v57);
    v59 = a6 == 1 && IsEmpty;
    v60 = v66;
    if (!v59)
    {
      v61 = v51 + v52 + v53 - v37;
      if (v38 < v61)
      {
        v61 = v38;
      }

      if (v61 < 0.0)
      {
        v61 = 0.0;
      }

      v62 = !IsEmpty;
      if (a6 != 4)
      {
        v62 = 1;
      }

      if (v62)
      {
        v60 = round(v61);
      }

      else
      {
        [v16 contentSize];
        v60 = v63 - v37;
      }
    }

    [v16 setContentOffset:{v58, v60}];
  }
}

- (void)_zoomToNode:(id)a3 forceScroll:(BOOL)a4
{
  v4 = a4;
  if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1 || ![(_UIWebViewportHandler *)self->super._viewportHandler allowsUserScaling])
  {
    documentScale = self->super._documentScale;
  }

  else
  {
    [a3 computedFontSize];
    v8 = 16.0 / v7;
    [(_UIWebViewportHandler *)self->super._viewportHandler minimumScale];
    if (v8 < v9)
    {
      v8 = v9;
    }

    [(_UIWebViewportHandler *)self->super._viewportHandler maximumScale];
    if (v8 < documentScale)
    {
      documentScale = v8;
    }
  }

  [(_UIWebViewportHandler *)self->super._viewportHandler integralScaleForScale:0 keepingPointFixed:documentScale];
  v12 = v11;
  v13 = [objc_msgSend(a3 "ownerDocument")];
  v14 = [v13 documentView];
  v15 = [objc_msgSend(-[UIWebDocumentView webView](self "webView")];
  if (a3)
  {
    [a3 absoluteQuad];
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  v41.origin.x = quadBoundingBox(v40);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  if (!CGRectIsEmpty(v41))
  {
    v20 = v12;
    v39 = v20;
    [v14 convertRect:v15 toView:{x, y, width, height}];
    v21 = self->super._documentScale;
    v23 = v22 * v21;
    v25 = v24 * v21;
    v27 = v26 * v21;
    v29 = v28 * v21;
    [v13 rectForScrollToVisible];
    [v14 convertRect:v15 toView:?];
    v30 = self->super._documentScale;
    v32 = v31 * v30;
    v34 = v33 * v30;
    v36 = v35 * v30;
    v38 = v37 * v30;
    v42.origin.x = v23;
    v42.origin.y = v25;
    v42.size.width = v27;
    v42.size.height = v29;
    v43.origin.x = v32;
    v43.origin.y = v34;
    v43.size.width = v36;
    v43.size.height = v38;
    if (!CGRectContainsRect(v42, v43))
    {
      v32 = *MEMORY[0x1E695F050];
      v34 = *(MEMORY[0x1E695F050] + 8);
      v36 = *(MEMORY[0x1E695F050] + 16);
      v38 = *(MEMORY[0x1E695F050] + 24);
    }

    [(UIWebBrowserView *)self _zoomToRect:v4 ensuringVisibilityOfRect:v23 withScale:v25 forceScroll:v27, v29, v32, v34, v36, v38, v39];
  }
}

- (uint64_t)_zoomToRect:(CGFloat)a3 ensuringVisibilityOfRect:(CGFloat)a4 withScale:(CGFloat)a5 forceScroll:(CGFloat)a6 formAssistantFrame:(CGFloat)a7 animationDuration:(CGFloat)a8
{
  v24 = [a1 _scroller];
  v25 = [v24 window];
  v26 = a12 / *(a1 + 892);
  [v24 minimumZoomScale];
  if (v26 < v27)
  {
    v26 = v27;
  }

  [v24 maximumZoomScale];
  if (v26 < v28)
  {
    v28 = v26;
  }

  v121 = v28;
  v29 = [objc_msgSend(objc_msgSend(objc_msgSend(v24 "_viewControllerForAncestor")];
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v25;
  }

  [v30 bounds];
  [v30 convertRect:v24 toView:?];
  v129 = v31;
  v109 = v33;
  v110 = v32;
  r2 = v34;
  [a1 exposedScrollViewRect];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [v24 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v135.origin.x = v36;
  v135.origin.y = v38;
  v135.size.width = v40;
  v135.size.height = v42;
  IsNull = CGRectIsNull(v135);
  v106 = v48;
  v107 = v50;
  if (IsNull)
  {
    v52 = v48;
  }

  else
  {
    v52 = v40;
  }

  if (IsNull)
  {
    v53 = v50;
  }

  else
  {
    v53 = v42;
  }

  v104 = v44;
  v105 = v46;
  if (IsNull)
  {
    v54 = v46;
  }

  else
  {
    v54 = v38;
  }

  if (IsNull)
  {
    v55 = v44;
  }

  else
  {
    v55 = v36;
  }

  v126 = v55;
  v127 = v54;
  v151.origin.x = v129;
  v151.size.width = v109;
  v151.origin.y = v110;
  v151.size.height = r2;
  v136 = CGRectIntersection(*(&v52 - 2), v151);
  x = v136.origin.x;
  y = v136.origin.y;
  width = v136.size.width;
  height = v136.size.height;
  [v25 convertRect:v24 toView:{a13, a14, a15, a16}];
  v152.origin.x = v60;
  v152.origin.y = v61;
  v152.size.width = v62;
  v152.size.height = v63;
  v137.origin.x = x;
  rect = y;
  v137.origin.y = y;
  v137.size.width = width;
  v137.size.height = height;
  v138 = CGRectIntersection(v137, v152);
  v64 = v138.origin.x;
  v65 = v138.origin.y;
  v66 = v138.size.width;
  v67 = v138.size.height;
  v130 = width;
  v131 = 0.0;
  if (CGRectIsEmpty(v138))
  {
    goto LABEL_26;
  }

  v139.origin.x = v64;
  v139.origin.y = v65;
  v139.size.width = v66;
  v139.size.height = v67;
  MinY = CGRectGetMinY(v139);
  v140.origin.x = x;
  v140.origin.y = rect;
  v140.size.width = width;
  v140.size.height = height;
  v68 = CGRectGetMinY(v140);
  v69 = x;
  v70 = MinY - v68;
  v111 = v69;
  v141.origin.x = v69;
  v141.origin.y = rect;
  v71 = height;
  v141.size.width = width;
  v141.size.height = height;
  MaxY = CGRectGetMaxY(v141);
  v142.origin.x = v64;
  v142.origin.y = v65;
  v142.size.width = v66;
  v142.size.height = v67;
  height = MaxY - CGRectGetMaxY(v142);
  v133 = v70;
  if (v70 < 106.0 && height >= v70)
  {
    v143.origin.x = v64;
    v143.origin.y = v65;
    v143.size.width = v66;
    v143.size.height = v67;
    v74 = CGRectGetMaxY(v143);
    v144.origin.x = v111;
    v144.origin.y = rect;
    v144.size.width = width;
    v144.size.height = v71;
    v131 = v74 - CGRectGetMinY(v144);
LABEL_26:
    v133 = height;
  }

  v145.origin.x = a6;
  v145.origin.y = a7;
  v145.size.width = a8;
  v145.size.height = a9;
  v75 = CGRectIsNull(v145);
  if ((a11 & 1) == 0)
  {
    [v24 convertPoint:a1 toView:{v126, v127}];
    v93 = v146.origin.x;
    v146.size.width = width;
    v95 = v131 + v94;
    v146.origin.y = v131 + v94;
    v146.size.height = v133;
    v153.origin.x = a2;
    v153.origin.y = a3;
    v153.size.width = a4;
    v153.size.height = a5;
    result = CGRectContainsRect(v146, v153);
    if (result)
    {
      return result;
    }

    if (!v75)
    {
      v149.origin.x = v93;
      v149.origin.y = v95;
      v154.origin.x = a6;
      v149.size.width = width;
      v149.size.height = v133;
      v154.origin.y = a7;
      v154.size.width = a8;
      v154.size.height = a9;
      result = CGRectContainsRect(v149, v154);
      if (result)
      {
        return result;
      }
    }
  }

  v76 = v121;
  v77 = width;
  v78 = (width - a4 * v121) * 0.5;
  if (v78 < 0.0)
  {
    v78 = 0.0;
  }

  v79 = v133;
  v80 = (v133 - a5 * v121) * 0.5;
  if (v80 < 0.0)
  {
    v80 = 0.0;
  }

  v81 = a2 * v121 - v78;
  v125 = a3 * v121 - v80;
  [*(a1 + 880) documentBounds];
  [a1 convertRect:v24 toView:{v82 * a12, v83 * a12, v84 * a12, v85 * a12}];
  v123 = v86;
  v115 = v88;
  v117 = v87;
  recta = v89;
  if (v75)
  {
    v90 = -INFINITY;
    v91 = v86;
    v92 = v87;
    goto LABEL_42;
  }

  v147.origin.x = a6 * v121;
  v147.origin.y = a7 * v121;
  v147.size.width = a8 * v121;
  v147.size.height = a9 * v121;
  v97 = CGRectGetMaxX(v147) + 20.0 - width;
  v148.origin.x = a6 * v121;
  v148.origin.y = a7 * v121;
  v79 = v133;
  v148.size.width = a8 * v121;
  v148.size.height = a9 * v121;
  v90 = CGRectGetMaxY(v148) + 20.0 - v133 - v131;
  if (v81 >= v97)
  {
    v76 = v121;
    v91 = v123;
    v77 = v130;
    v88 = v115;
    v92 = v117;
    v89 = recta;
LABEL_42:
    v98 = !v75;
    v99 = v91;
    v100 = v92;
    v101 = CGRectGetMaxX(*(&v88 - 2)) - v77;
    if (v81 <= v101)
    {
      v97 = v81;
    }

    else
    {
      v97 = v101;
    }

    goto LABEL_45;
  }

  v98 = 1;
  v76 = v121;
  v91 = v123;
  v92 = v117;
LABEL_45:
  v102 = v125 - v131;
  if (!v98 || v102 >= v90)
  {
    v150.origin.x = v91;
    v150.origin.y = v92;
    v150.size.height = recta;
    v150.size.width = v115;
    v103 = CGRectGetMaxY(v150) - v79;
    if (v102 <= v103)
    {
      v90 = v125 - v131;
    }

    else
    {
      v90 = v103;
    }
  }

  return [v24 _zoomToCenter:1 scale:(v106 * 0.5 + v97 - (v126 - v104)) / v76 duration:(v107 * 0.5 + v90 - (v127 - v105)) / v76 force:{v76, a17}];
}

- (CGSize)_defaultScrollViewContentSize
{
  [-[UIView _scroller](self "_scroller")];
  v4 = v3;
  v6 = v5;
  [(UIView *)self frame];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MaxX = CGRectGetMaxX(v17);
  if (MaxX < v4)
  {
    MaxX = v4;
  }

  v12 = round(MaxX);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  if (MaxY < v6)
  {
    MaxY = v6;
  }

  v14 = round(MaxY);
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)rotateEnclosingScrollViewToFrame:(CGRect)a3
{
  v4 = _UIWebRotateToFrame(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self _scroller];
  [v11 bounds];
  [v11 convertRect:self toView:?];
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v14 = CGRectUnion(v13, v15);

  [(UIWebDocumentView *)self _flattenAndSwapContentLayersInRect:v14.origin.x, v14.origin.y, v14.size.width, v14.size.height];
}

- (void)webView:(id)a3 addMessageToConsole:(id)a4 withSource:(id)a5
{
  p_messages = &self->_messages;
  all = self->_messages.all;
  if (!all)
  {
    all = objc_alloc_init(MEMORY[0x1E695DF70]);
    p_messages->all = all;
  }

  [(NSMutableArray *)all addObject:a4, a4, a5];
  v9 = [a4 _web_messageType];
  v10 = v9;
  if ((v9 & 0x20) != 0)
  {
    p_html = &p_messages->html;
    html = p_messages->html;
    if (!html)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((v9 & 0x80) != 0)
    {
      p_html = &p_messages->javascript;
      html = p_messages->javascript;
      if (html)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if ((v9 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    p_html = &p_messages->css;
    html = p_messages->css;
    if (!html)
    {
LABEL_9:
      html = objc_alloc_init(MEMORY[0x1E695DF70]);
      *p_html = html;
    }
  }

LABEL_10:
  [(NSMutableArray *)html addObject:a4];
LABEL_11:
  if ((v10 & 0x10) != 0)
  {
    error = p_messages->error;
    p_error = &p_messages->error;
    v13 = error;
    if (!error)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((v10 & 8) != 0)
    {
      warning = p_messages->warning;
      p_error = &p_messages->warning;
      v13 = warning;
      if (warning)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ((v10 & 2) != 0)
    {
      tip = p_messages->tip;
      p_error = &p_messages->tip;
      v13 = tip;
      if (tip)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ((v10 & 4) == 0)
    {
      goto LABEL_20;
    }

    log = p_messages->log;
    p_error = &p_messages->log;
    v13 = log;
    if (!log)
    {
LABEL_18:
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *p_error = v13;
    }
  }

LABEL_19:
  [(NSMutableArray *)v13 addObject:a4];
LABEL_20:
  v17 = [MEMORY[0x1E696AD88] defaultCenter];

  [v17 postNotificationName:@"UIWebViewDidReceiveMessageNotification" object:self];
}

- (id)messagesMatchingMask:(int)a3
{
  v3 = 0;
  if (a3 > 995)
  {
    if (a3 > 1007)
    {
      if (a3 == 1008)
      {
        p_error = &self->_messages.error;
        return p_error->all;
      }

      if (a3 == 1022)
      {
        p_error = &self->_messages;
        return p_error->all;
      }
    }

    else
    {
      if (a3 == 996)
      {
        p_error = &self->_messages.log;
        return p_error->all;
      }

      if (a3 == 1000)
      {
        p_error = &self->_messages.warning;
        return p_error->all;
      }
    }
  }

  else if (a3 > 285)
  {
    if (a3 == 286)
    {
      p_error = &self->_messages.css;
      return p_error->all;
    }

    if (a3 == 994)
    {
      p_error = &self->_messages.tip;
      return p_error->all;
    }
  }

  else
  {
    if (a3 == 62)
    {
      p_error = &self->_messages.html;
      return p_error->all;
    }

    if (a3 == 158)
    {
      p_error = &self->_messages.javascript;
      return p_error->all;
    }
  }

  return v3;
}

- (void)clearMessagesMatchingMask:(int)a3
{
  p_messages = &self->_messages;
  v6 = [(NSMutableArray *)self->_messages.all count];
  v7 = v6;
  if (a3 == 1022)
  {
    v8 = v6 != 0;
    [(NSMutableArray *)p_messages->all removeAllObjects];
    goto LABEL_21;
  }

  if (v6 < 1)
  {
    v8 = 0;
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    do
    {
      if (([-[NSMutableArray objectAtIndex:](p_messages->all objectAtIndex:{v9), "_web_messageType"}] & a3) != 0)
      {
        [(NSMutableArray *)p_messages->all removeObjectAtIndex:v9];
        --v7;
        v8 = 1;
      }

      else
      {
        ++v9;
      }
    }

    while (v9 < v7);
    if ((a3 & 0x20) == 0)
    {
LABEL_10:
      if ((a3 & 0x80) != 0)
      {
        goto LABEL_22;
      }

LABEL_11:
      if ((a3 & 0x100) != 0)
      {
        goto LABEL_23;
      }

LABEL_12:
      if ((a3 & 0x10) != 0)
      {
        goto LABEL_24;
      }

LABEL_13:
      if ((a3 & 8) != 0)
      {
        goto LABEL_25;
      }

LABEL_14:
      if ((a3 & 2) != 0)
      {
        goto LABEL_26;
      }

LABEL_15:
      if ((a3 & 4) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }
  }

LABEL_21:
  [(NSMutableArray *)p_messages->html removeAllObjects];
  if ((a3 & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  [(NSMutableArray *)p_messages->javascript removeAllObjects];
  if ((a3 & 0x100) == 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  [(NSMutableArray *)p_messages->css removeAllObjects];
  if ((a3 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_24:
  [(NSMutableArray *)p_messages->error removeAllObjects];
  if ((a3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_25:
  [(NSMutableArray *)p_messages->warning removeAllObjects];
  if ((a3 & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  [(NSMutableArray *)p_messages->tip removeAllObjects];
  if ((a3 & 4) != 0)
  {
LABEL_27:
    [(NSMutableArray *)p_messages->log removeAllObjects];
    if (!v8)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v8)
  {
    return;
  }

LABEL_17:
  v10 = [MEMORY[0x1E696AD88] defaultCenter];

  [v10 postNotificationName:@"UIWebViewDidClearMessagesNotification" object:self];
}

- (BOOL)_dumpWebArchiveAtPath:(id)a3
{
  if ((WebThreadIsCurrent() & 1) == 0)
  {
    WebThreadLock();
  }

  if (([a3 hasSuffix:@".webarchive"] & 1) == 0)
  {
    a3 = [a3 stringByAppendingString:@".webarchive"];
  }

  v7 = 0;
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(-[UIWebDocumentView webView](self "webView")];
  if ((v5 & 1) == 0)
  {
    NSLog(&cfstr_CouldNotArchiv.isa, self, a3, v7);
  }

  return v5;
}

- (void)_setSelectedDOMRangeAndUpdateUI:(id)a3
{
  WebThreadLock();
  [(WebView *)self->super._webView setSelectedDOMRange:a3 affinity:1];

  [(UIWebDocumentView *)self selectionChanged];
}

- (void)_startURLificationIfNeededCoalesce:(BOOL)a3
{
  v3 = a3;
  if ([(UIWebDocumentView *)self _dataDetectionIsActivated])
  {
    WebThreadLock();
    v5 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
    v6 = [(WebView *)self->super._webView mainFrame];
    v7 = [(UIWebDocumentView *)self effectiveDataDetectorTypes];
    if (v3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    [v5 startURLificationForFrame:v6 detectedTypes:v7 options:v8];
  }
}

- (id)_absoluteUrlRelativeToDocumentURL:(id)a3
{
  WebThreadLock();
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(-[UIWebDocumentView webView](self "webView")];
  if (([a3 hasPrefix:@"#"] & 1) == 0 && (objc_msgSend(objc_msgSend(v5, "absoluteString"), "hasSuffix:", @"/") & 1) == 0)
  {
    v5 = [v5 URLByDeletingLastPathComponent];
  }

  v6 = [objc_msgSend(MEMORY[0x1E695DFF8] URLWithString:a3 relativeToURL:{v5), "absoluteURL"}];

  return [v6 standardizedURL];
}

- (void)webView:(id)a3 didFirstVisuallyNonEmptyLayoutInFrame:(id)a4
{
  v6.receiver = self;
  v6.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v6 webView:a3 didFirstVisuallyNonEmptyLayoutInFrame:?];
  if (objc_opt_respondsToSelector())
  {
    [self->super._delegate webViewMainFrameDidFirstVisuallyNonEmptyLayoutInFrame:self];
  }

  [(UIWebBrowserView *)self _autoFillFrame:a4];
}

- (void)setAlwaysDispatchesScrollEvents:(BOOL)a3
{
  v3 = *(self + 1608);
  if (((((v3 & 0x40) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 1608) = v3 & 0xBF | v4;
    [(UIWebTiledView *)self setAllowsPaintingAndScriptsWhilePanning:?];
  }
}

- ($1AB5FA073B851C12C2339EC22442E995)scalesForContainerSize:(CGSize)a3
{
  [(UIWebDocumentView *)self minimumScaleForMinimumSize:a3.width, a3.height];
  v5 = v4;
  [(UIWebDocumentView *)self maximumScale];
  v7 = v6;
  v8 = 0.0;
  v9 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v9;
  return result;
}

- (void)updateBoundariesOfScrollView:(id)a3 withScales:(id)a4
{
  var0 = a4.var0;
  [(UIWebDocumentView *)self zoomedDocumentScale:a4.var0];
  v7 = var0 / v6;

  [a3 setMinimumZoomScale:v7];
}

- (double)scaleForProposedNewScale:(double)a3 andOldScale:(double)a4
{
  if (![(UIWebBrowserView *)self _currentAssistedNode]&& !self->super._interaction.var0)
  {
    return a3;
  }

  return a4;
}

- (id)addFindOnPageHighlighter
{
  v3 = [[UIWebBrowserFindOnPageHighlighter alloc] initWithBrowserView:self];
  activeHighlighters = self->_activeHighlighters;
  if (!activeHighlighters)
  {
    activeHighlighters = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:514 capacity:1];
    self->_activeHighlighters = activeHighlighters;
  }

  [(NSHashTable *)activeHighlighters addObject:v3];

  return v3;
}

- (void)redrawScaledDocument
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v12 redrawScaledDocument];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  activeHighlighters = self->_activeHighlighters;
  v4 = [(NSHashTable *)activeHighlighters countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(activeHighlighters);
        }

        [*(*(&v8 + 1) + 8 * v7++) updateHighlightBubbleWobble:0];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)activeHighlighters countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = UIWebBrowserView;
  [UIWebDocumentView _didMoveFromWindow:sel__didMoveFromWindow_toWindow_ toWindow:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  overflowScrollViews = self->_overflowScrollViews;
  v8 = [(NSMutableSet *)overflowScrollViews countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(overflowScrollViews);
        }

        [*(*(&v12 + 1) + 8 * v11++) _didMoveFromWindow:a3 toWindow:a4];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)overflowScrollViews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)webView:(id)a3 didCreateOrUpdateScrollingLayer:(id)a4 withContentsLayer:(id)a5 scrollSize:(id)a6 forNode:(id)a7 allowHorizontalScrollbar:(BOOL)a8 allowVerticalScrollbar:(BOOL)a9
{
  v9 = a8;
  if ([a4 delegate])
  {
    v15 = [a4 delegate];
    v16 = [(UIWebOverflowScrollView *)v15 overflowContentView];
    if ([(UIView *)v16 layer]== a5)
    {
      goto LABEL_6;
    }

    [(UIWebOverflowContentView *)v16 replaceLayer:a5];
  }

  else
  {
    v15 = [[UIWebOverflowScrollView alloc] initWithLayer:a4 node:a7 webBrowserView:self];
    [(UIWebBrowserView *)self _noteOverflowScrollViewPendingInsertion:v15];

    v17 = [[UIWebOverflowContentView alloc] initWithLayer:a5];
    [(UIWebOverflowScrollView *)v15 setOverflowContentView:v17];
  }

  [(UIWebDocumentView *)self _setSubviewCachesNeedUpdate:1];
LABEL_6:
  [(UIScrollView *)v15 setShowsHorizontalScrollIndicator:v9];
  [(UIScrollView *)v15 setShowsVerticalScrollIndicator:a9];
  [a6 sizeValue];
  [(UIScrollView *)v15 setContentSize:?];
  v18 = [(UIScrollView *)v15 panGestureRecognizer];
  +[UIPanGestureRecognizer _defaultHysteresis];
  v20 = v19;
  [(UIWebDocumentView *)self _zoomedDocumentScale];
  v22 = v20 / v21;

  [(UIPanGestureRecognizer *)v18 _setHysteresis:v22];
}

- (void)webView:(id)a3 willRemoveScrollingLayer:(id)a4 withContentsLayer:(id)a5 forNode:(id)a6
{
  v8 = [a5 delegate];
  if (v8)
  {
    v9 = v8;
    [v8 willBeRemoved];
    [v9 removeFromSuperview];
  }

  v10 = [a4 delegate];
  if (v10)
  {
    v11 = v10;
    [v10 willBeRemoved];
    [v11 setBeingRemoved:1];
    [v11 _webCustomViewWillBeRemovedFromSuperview];
    [(UIWebBrowserView *)self _noteOverflowScrollViewPendingDeletion:v11];
    [v11 setBeingRemoved:0];
    [(UIWebBrowserView *)self _removeAdditionalSubview:v11];
    [v11 setNode:0];
  }

  [(UIWebDocumentView *)self _setSubviewCachesNeedUpdate:1];
}

- (void)_overflowScrollView:(id)a3 willStartScrollingForNode:(id)a4
{
  [(UITextInteractionAssistant *)self->super._textSelectionAssistant willStartScrollingOrZooming:a3];
  [(UIWebDocumentView *)self cancelInteraction];

  [(UIWebDocumentView *)self _cancelLongPressGestureRecognizer];
}

- (void)_webThreadOverflowScrollOffsetChanged
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_pendingOverflowDataLock lock];
  pendingGeometryChangeAfterOverflowScroll = self->_pendingGeometryChangeAfterOverflowScroll;
  self->_pendingGeometryChangeAfterOverflowScroll = 0;
  v4 = [(NSMutableArray *)self->_pendingOverflowScrolls copy];
  [(NSMutableArray *)self->_pendingOverflowScrolls removeAllObjects];
  [(NSLock *)self->_pendingOverflowDataLock unlock];
  if (pendingGeometryChangeAfterOverflowScroll)
  {
    [(WebView *)self->super._webView _viewGeometryDidChange];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        webView = self->super._webView;
        [v9 offset];
        -[WebView _overflowScrollPositionChangedTo:forNode:isUserScroll:](webView, "_overflowScrollPositionChangedTo:forNode:isUserScroll:", [v9 node], objc_msgSend(v9, "isUserScroll"), v11, v12);
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)appendOverflowScrollForNode:(id)a3 offset:(CGPoint)a4 whileScrolling:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  pendingOverflowScrolls = self->_pendingOverflowScrolls;
  if (!pendingOverflowScrolls)
  {
    pendingOverflowScrolls = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_pendingOverflowScrolls = pendingOverflowScrolls;
  }

  if (-[NSMutableArray count](pendingOverflowScrolls, "count") && ([-[NSMutableArray lastObject](self->_pendingOverflowScrolls "lastObject")] & 1) != 0)
  {
    return 0;
  }

  v12 = [[UIWebOverflowScrollInfo alloc] initWithNode:a3 offset:v5 isUserScroll:x, y];
  [(NSMutableArray *)self->_pendingOverflowScrolls addObject:v12];

  return 1;
}

- (void)_overflowScrollView:(id)a3 scrollOffsetChangedForNode:(id)a4 whileScrolling:(BOOL)a5
{
  if (a4)
  {
    v5 = a5;
    pendingOverflowDataLock = self->_pendingOverflowDataLock;
    if (!pendingOverflowDataLock)
    {
      pendingOverflowDataLock = objc_alloc_init(MEMORY[0x1E696AD10]);
      self->_pendingOverflowDataLock = pendingOverflowDataLock;
    }

    [(NSLock *)pendingOverflowDataLock lock];
    v10 = !self->_pendingGeometryChangeAfterOverflowScroll;
    self->_pendingGeometryChangeAfterOverflowScroll = 1;
    if (!v5 || [a3 isTracking] && -[UIWebBrowserView isDispatchingTouchEvents](self, "isDispatchingTouchEvents") || -[UIWebBrowserView alwaysDispatchesScrollEvents](self, "alwaysDispatchesScrollEvents"))
    {
      [a3 contentOffset];
      v10 |= [(UIWebBrowserView *)self appendOverflowScrollForNode:a4 offset:v5 whileScrolling:?];
    }

    [(NSLock *)self->_pendingOverflowDataLock unlock];
    v11 = [(WebView *)self->super._webView _fixedPositionContent];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 hasFixedOrStickyPositionLayers])
    {
      v12 = [a3 layer];
      [a3 contentOffset];
      [v11 overflowScrollPositionForLayer:v12 changedTo:?];
    }

    if (v10)
    {
      WebThreadRun();
    }
  }
}

- (BOOL)_hasSubviewContainingWebContent:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return [a3 isDescendantOfView:self];
}

- (void)_noteOverflowScrollViewPendingInsertion:(id)a3
{
  overflowScrollViewsPendingInsertion = self->_overflowScrollViewsPendingInsertion;
  if (!overflowScrollViewsPendingInsertion)
  {
    overflowScrollViewsPendingInsertion = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_overflowScrollViewsPendingInsertion = overflowScrollViewsPendingInsertion;
  }

  [(NSMutableSet *)overflowScrollViewsPendingInsertion addObject:a3];
}

- (void)_noteOverflowScrollViewPendingDeletion:(id)a3
{
  if (!self->_overflowScrollViewsPendingDeletion)
  {
    self->_overflowScrollViewsPendingDeletion = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v5 = [[UIWebOverflowScrollViewInfo alloc] initWithScrollView:a3];
  [objc_msgSend(a3 "layer")];
  [(NSMutableSet *)self->_overflowScrollViewsPendingDeletion addObject:v5];
}

- (void)_addAdditionalSubview:(id)a3
{
  overflowScrollViews = self->_overflowScrollViews;
  if (!overflowScrollViews)
  {
    overflowScrollViews = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_overflowScrollViews = overflowScrollViews;
  }

  [(NSMutableSet *)overflowScrollViews addObject:a3];
}

- (void)_removeAdditionalSubview:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_overflowScrollViewsPendingInsertion removeObject:a3];
  [(NSMutableSet *)self->_overflowScrollViews removeObject:a3];
}

- (void)webViewDidCommitCompositingLayerChanges:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = UIWebBrowserView;
  [(UIWebDocumentView *)&v24 webViewDidCommitCompositingLayerChanges:a3];
  overflowScrollViewsPendingInsertion = self->_overflowScrollViewsPendingInsertion;
  if (*&self->_overflowScrollViewsPendingInsertion != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(NSMutableSet *)overflowScrollViewsPendingInsertion countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(overflowScrollViewsPendingInsertion);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if ([v10 fixUpViewAfterInsertion])
          {
            [(UIWebBrowserView *)self _addAdditionalSubview:v10];
            [(UIWebDocumentView *)self _setSubviewCachesNeedUpdate:1];
          }

          else
          {
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [(NSMutableSet *)v7 addObject:v10];
          }
        }

        v6 = [(NSMutableSet *)overflowScrollViewsPendingInsertion countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    self->_overflowScrollViewsPendingInsertion = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    overflowScrollViewsPendingDeletion = self->_overflowScrollViewsPendingDeletion;
    v12 = [(NSMutableSet *)overflowScrollViewsPendingDeletion countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(overflowScrollViewsPendingDeletion);
          }

          -[UIView _webCustomViewWasRemovedFromSuperview:]([*(*(&v16 + 1) + 8 * j) scrollView], objc_msgSend(*(*(&v16 + 1) + 8 * j), "oldSuperview"));
        }

        v13 = [(NSMutableSet *)overflowScrollViewsPendingDeletion countByEnumeratingWithState:&v16 objects:v25 count:16];
      }

      while (v13);
    }

    self->_overflowScrollViewsPendingDeletion = 0;
  }
}

- (id)_collectAdditionalSubviews
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  overflowScrollViewsPendingDeletion = self->_overflowScrollViewsPendingDeletion;
  if (overflowScrollViewsPendingDeletion)
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableSet count](overflowScrollViewsPendingDeletion, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_overflowScrollViewsPendingDeletion;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "scrollView")}];
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  updateSubviewsOfScrollContentViews(self->super._contentLayersHostingLayer, self, v3, v5);
  return v3;
}

- (void)_setUnobscuredSafeAreaInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  if (objc_opt_respondsToSelector())
  {
    webView = self->super._webView;

    [(WebView *)webView _setUnobscuredSafeAreaInsets:top, left, bottom, right];
  }
}

- (void)setInputViewObeysDOMFocus:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 1608) = *(self + 1608) & 0xF7 | v3;
}

- (void)setAllowDOMFocusRedirects:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 1608) = *(self + 1608) & 0xEF | v3;
}

- (BOOL)isAnyTouchOverActiveArea:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(WebView *)self->super._webView _touchEventRegions];
  v6 = [v5 count];
  if (v6)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(a3);
          }

          [*(*(&v23 + 1) + 8 * i) locationInView:0];
          [(UIWebBrowserView *)self _convertWindowPointToViewport:?];
          v11 = v10;
          v13 = v12;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v14 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v20;
            while (2)
            {
              v17 = 0;
              do
              {
                if (*v20 != v16)
                {
                  objc_enumerationMutation(v5);
                }

                if ([*(*(&v19 + 1) + 8 * v17) hitTest:{v11, v13}])
                {
                  LOBYTE(v6) = 1;
                  return v6;
                }

                ++v17;
              }

              while (v15 != v17);
              v15 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

        v7 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
        LOBYTE(v6) = 0;
      }

      while (v7);
    }
  }

  return v6;
}

@end