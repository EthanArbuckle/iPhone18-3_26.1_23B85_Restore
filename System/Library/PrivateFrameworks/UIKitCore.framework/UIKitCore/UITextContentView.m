@interface UITextContentView
+ (id)excludedElementsForHTML;
- (BOOL)_restoreFirstResponder;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canResignFirstResponder;
- (BOOL)dragInteractionEnabled;
- (BOOL)hasMarkedText;
- (BOOL)isFirstResponder;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRanges:(id)a4 replacementText:(id)a5;
- (BOOL)keyboardInputChanged:(id)a3;
- (BOOL)resignFirstResponder;
- (BOOL)shouldStartDataDetectors;
- (CGPoint)constrainedPoint:(CGPoint)a3;
- (CGPoint)offset;
- (CGRect)_selectionClipRect;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)caretRectForVisiblePosition:(id)a3;
- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)a3;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)frameForDictationResultPlaceholder:(id)a3;
- (CGRect)rectForScrollToVisible;
- (CGRect)rectForSelection:(_NSRange)a3;
- (CGRect)visibleRect;
- (CGRect)visibleTextRect;
- (NSAttributedString)attributedText;
- (NSString)text;
- (UIEdgeInsets)selectionInset;
- (UITextContentView)initWithCoder:(id)a3;
- (UITextContentView)initWithFrame:(CGRect)a3;
- (UITextContentView)initWithFrame:(CGRect)a3 webView:(id)a4;
- (UITextContentViewDelegate)delegate;
- (_NSRange)selectedRange;
- (_NSRange)selectionRange;
- (id)_proxyTextInput;
- (id)automaticallySelectedOverlay;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)contentAsAttributedString;
- (id)contentAsHTMLString;
- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)insertTextPlaceholderWithSize:(CGSize)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)selectedText;
- (id)selectionRectsForRange:(id)a3;
- (id)styleString;
- (id)supportedPasteboardTypesForCurrentSelection;
- (id)undoManager;
- (unint64_t)_allowedLinkTypes;
- (void)_hideSelectionCommands;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_promptForReplace:(id)a3;
- (void)_removeAttribute:(id)a3 fromString:(id)a4 andSetPropertyWith:(id)a5 usingValueClass:(Class)a6;
- (void)_removeTextViewPropertiesFromText:(id)a3;
- (void)_sizeChanged;
- (void)_transliterateChinese:(id)a3;
- (void)cancelDataDetectorsWithWebLock;
- (void)commonInitWithWebDocumentView:(id)a3 isDecoding:(BOOL)a4;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)ensureSelection;
- (void)forwardInvocation:(id)a3;
- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)keyboardDidShow:(id)a3;
- (void)keyboardInputChangedSelection:(id)a3;
- (void)paste:(id)a3;
- (void)pasteAndMatchStyle:(id)a3;
- (void)performBecomeEditableTasks;
- (void)performScrollSelectionToVisible:(BOOL)a3;
- (void)recalculateStyle;
- (void)removeFromSuperview;
- (void)removeTextPlaceholder:(id)a3;
- (void)resetDataDetectorsResultsWithWebLock;
- (void)scrollRangeToVisible:(_NSRange)a3;
- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)select:(id)a3;
- (void)selectAll:(id)a3;
- (void)setAllowsEditingTextAttributes:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentToAttributedString:(id)a3;
- (void)setContentToHTMLString:(id)a3;
- (void)setDataDetectorTypes:(unint64_t)a3;
- (void)setDragInteractionEnabled:(BOOL)a3;
- (void)setEditable:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMarginTop:(int)a3;
- (void)setSelectedRange:(_NSRange)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)setSelectionChangeCallbacksDisabled:(BOOL)a3;
- (void)setSelectionToEnd;
- (void)setSelectionToStart;
- (void)setSelectionWithPoint:(CGPoint)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)startDataDetectorsWithWebLock;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateContentEditableAttribute:(BOOL)a3;
- (void)updateSelection;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7;
- (void)webViewDidChange:(id)a3;
@end

@implementation UITextContentView

- (UITextContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UITextContentView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UITextContentView *)v3 commonInitWithWebDocumentView:0 isDecoding:0];
  }

  return v4;
}

- (UITextContentView)initWithFrame:(CGRect)a3 webView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = UITextContentView;
  v10 = [(UIView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(UITextContentView *)v10 commonInitWithWebDocumentView:v9 isDecoding:0];
  }

  return v11;
}

- (UITextContentView)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UITextContentView;
  v5 = [(UIView *)&v11 initWithCoder:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  [(UITextContentView *)v5 commonInitWithWebDocumentView:0 isDecoding:1];
  if ([v4 containsValueForKey:@"UIAttributedText"])
  {
    v7 = [v4 decodeObjectForKey:@"UIAttributedText"];
    [(UITextContentView *)v6 setAttributedText:v7];
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 containsValueForKey:@"UIText"])
  {
    v7 = [v4 decodeObjectForKey:@"UIText"];
    [(UITextContentView *)v6 setText:v7];
    goto LABEL_6;
  }

LABEL_7:
  if ([v4 containsValueForKey:@"UIFont"])
  {
    v8 = [v4 decodeObjectForKey:@"UIFont"];
    [(UITextContentView *)v6 setFont:v8];
  }

  if ([v4 containsValueForKey:@"UITextColor"])
  {
    v9 = [v4 decodeObjectForKey:@"UITextColor"];
    [(UITextContentView *)v6 setTextColor:v9];
  }

  if ([v4 containsValueForKey:@"UITextAlignment"])
  {
    -[UITextContentView setTextAlignment:](v6, "setTextAlignment:", [v4 decodeIntegerForKey:@"UITextAlignment"]);
  }

  if ([v4 containsValueForKey:@"UIEditable"])
  {
    -[UITextContentView setEditable:](v6, "setEditable:", [v4 decodeBoolForKey:@"UIEditable"]);
  }

  -[UITextContentView setDataDetectorTypes:](v6, "setDataDetectorTypes:", [v4 decodeIntegerForKey:@"UIDataDetectorTypes"]);
LABEL_16:

  return v6;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UITextContentView;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  if (self->m_webView)
  {
    [v4 removeObject:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UITextContentView;
  [(UIView *)&v10 encodeWithCoder:v4];
  v5 = [(UITextContentView *)self text];
  v6 = v5;
  if (v5 && [v5 length])
  {
    if (self->m_usesAttributedText)
    {
      v7 = [(UITextContentView *)self attributedText];
      [v4 encodeObject:v7 forKey:@"UIAttributedText"];
    }

    [v4 encodeObject:v6 forKey:@"UIText"];
  }

  m_font = self->m_font;
  if (m_font)
  {
    [v4 encodeObject:m_font forKey:@"UIFont"];
  }

  m_textColor = self->m_textColor;
  if (m_textColor)
  {
    [v4 encodeObject:m_textColor forKey:@"UITextColor"];
  }

  if (self->m_hasExplicitTextAlignment)
  {
    [v4 encodeInteger:self->m_textAlignment forKey:@"UITextAlignment"];
  }

  if (![(UITextContentView *)self isEditable])
  {
    [v4 encodeBool:0 forKey:@"UIEditable"];
  }

  if ([(UITextContentView *)self dataDetectorTypes])
  {
    [v4 encodeInteger:-[UITextContentView dataDetectorTypes](self forKey:{"dataDetectorTypes"), @"UIDataDetectorTypes"}];
  }
}

- (void)updateContentEditableAttribute:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  [(DOMHTMLElement *)self->m_body setContentEditable:v5];
  if (v3)
  {
    v6 = [(WebFrame *)self->m_frame selectedDOMRange];

    if (!v6)
    {
      m_frame = self->m_frame;

      [(WebFrame *)m_frame _setSelectionFromNone];
    }
  }
}

- (void)commonInitWithWebDocumentView:(id)a3 isDecoding:(BOOL)a4
{
  v41 = a3;
  WebThreadLock();
  v7 = [off_1E70ECC18 systemFontOfSize:12.0];
  m_font = self->m_font;
  self->m_font = v7;

  self->m_marginTop = 8;
  v9 = +[UIColor blackColor];
  m_textColor = self->m_textColor;
  self->m_textColor = v9;

  self->m_editable = 1;
  v11 = [[UITextInteractionAssistant alloc] initWithView:self];
  m_interactionAssistant = self->m_interactionAssistant;
  self->m_interactionAssistant = v11;

  if (v41)
  {
    objc_storeStrong(&self->m_webView, a3);
    [(UIWebDocumentView *)self->m_webView setWebDraggingDelegate:self];
  }

  else
  {
    [(UIView *)self frame];
    v14 = v13;
    v16 = v15;
    v17 = [UIWebDocumentView alloc];
    v18 = [(UITextContentView *)self styleString];
    v19 = +[UIWebDocumentView standardTextViewPreferences];
    v20 = [(UIWebDocumentView *)v17 initSimpleHTMLDocumentWithStyle:v18 frame:v19 preferences:0 groupName:0.0, 0.0, v14, v16];
    m_webView = self->m_webView;
    self->m_webView = v20;

    [(UIWebDocumentView *)self->m_webView setWebDraggingDelegate:self];
    [(UIView *)self->m_webView setEnabled:0];
    [(UIWebDocumentView *)self->m_webView setIgnoresFocusingMouse:1];
    [(UIWebDocumentView *)self->m_webView setLoadsSynchronously:1];
    v22 = [(UIWebDocumentView *)self->m_webView webView];
    [v22 _setFixedLayoutSize:{v14, 1.0}];
    [v22 setPolicyDelegate:self];
    [v22 setEditingDelegate:self];
    v23 = [objc_opt_class() description];
    [v22 setCustomUserAgent:v23];
  }

  v24 = [(UIWebDocumentView *)self->m_webView webView];
  v25 = [v24 mainFrame];
  m_frame = self->m_frame;
  self->m_frame = v25;

  v27 = [(WebFrame *)self->m_frame DOMDocument];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 body];
    m_body = self->m_body;
    self->m_body = v28;
  }

  v30 = [(WebFrame *)self->m_frame frameView];
  v31 = [MEMORY[0x1E696AD88] defaultCenter];
  v32 = *MEMORY[0x1E69E2FC0];
  v33 = [v30 documentView];
  [v31 addObserver:self selector:sel_webViewDidChange_ name:v32 object:v33];

  v34 = *MEMORY[0x1E69E3030];
  v35 = [(UIWebDocumentView *)self->m_webView webView];
  [v31 addObserver:self selector:sel_webViewDidChange_ name:v34 object:v35];

  [v31 addObserver:self selector:sel_keyboardDidShow_ name:@"UIKeyboardDidShowNotification" object:0];
  [v30 setAllowsScrolling:0];
  [(DOMHTMLElement *)self->m_body setAttribute:@"dir" value:@"auto"];
  [(UITextContentView *)self setSelectionChangeCallbacksDisabled:1];
  [(UITextContentView *)self setScrollsSelectionOnWebDocumentChanges:1];
  [(UIWebDocumentView *)self->m_webView _setParentTextView:self];
  [(UIWebDocumentView *)self->m_webView setOpaque:0];
  [(UIWebDocumentView *)self->m_webView setDrawsBackground:0];
  [(UIView *)self addSubview:self->m_webView];
  if (!a4)
  {
    v36 = +[UIColor whiteColor];
    [(UIView *)self setBackgroundColor:v36];
  }

  [(UITextContentView *)self updateContentEditableAttribute:1];
  [(UITextContentView *)self setDataDetectorTypes:0];
  v37 = [[UIDragInteraction alloc] initWithDelegate:self];
  m_dragInteraction = self->m_dragInteraction;
  self->m_dragInteraction = v37;

  [(UIView *)self addInteraction:self->m_dragInteraction];
  v39 = [[UIDropInteraction alloc] initWithDelegate:self];
  m_dropInteraction = self->m_dropInteraction;
  self->m_dropInteraction = v39;

  [(UIView *)self addInteraction:self->m_dropInteraction];
}

- (void)dealloc
{
  v12[3] = *MEMORY[0x1E69E9840];
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self->m_webView webView];
  [v3 setPolicyDelegate:0];
  [v3 setEditingDelegate:0];
  if (sDataDetectorsUIFrameworkLoaded == 1 && [(UITextContentView *)self dataDetectorTypes])
  {
    v4 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
    [v4 frameWillBeRemoved:self->m_frame];
  }

  [(UITextContentView *)self cancelDataDetectorsWithWebLock];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69E3030];
  v12[0] = *MEMORY[0x1E69E2FC0];
  v12[1] = v6;
  v12[2] = @"UIKeyboardDidShowNotification";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  [(NSNotificationCenter *)v5 _uiRemoveObserver:v7 names:?];

  m_interactionAssistant = self->m_interactionAssistant;
  self->m_interactionAssistant = 0;

  [(UIWebDocumentView *)self->m_webView _setParentTextView:0];
  [(UIView *)self removeInteraction:self->m_dragInteraction];
  m_dragInteraction = self->m_dragInteraction;
  self->m_dragInteraction = 0;

  [(UIView *)self removeInteraction:self->m_dropInteraction];
  m_dropInteraction = self->m_dropInteraction;
  self->m_dropInteraction = 0;

  v11.receiver = self;
  v11.super_class = UITextContentView;
  [(UIView *)&v11 dealloc];
}

- (void)removeFromSuperview
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3 = [(UITextContentView *)self interactionAssistant];
  [v3 detach];

  v4.receiver = self;
  v4.super_class = UITextContentView;
  [(UIView *)&v4 removeFromSuperview];
}

- (void)keyboardDidShow:(id)a3
{
  if ([(UITextContentView *)self isFirstResponder])
  {
    v4 = [(UITextContentView *)self interactionAssistant];
    [v4 setNeedsSelectionDisplayUpdate];

    [(UITextContentView *)self scrollSelectionToVisible:1];
  }
}

- (id)styleString
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = xmmword_18A682B48;
  *v14 = unk_18A682B58;
  m_textColor = self->m_textColor;
  if (m_textColor)
  {
    [(UIColor *)m_textColor getRed:&v13 green:&v13 + 8 blue:v14 alpha:&v14[1]];
  }

  v4 = MEMORY[0x1E696AD60];
  m_marginTop = self->m_marginTop;
  v6 = [(UIFont *)self->m_font markupDescription];
  v7 = [v4 stringWithFormat:@"margin-top: %dpx %@; color: rgba(%d, %d, %d, %f); word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;", m_marginTop, v6, (*&v13 * 255.0), (*(&v13 + 1) * 255.0), (v14[0] * 255.0), *&v14[1]];;

  if (self->m_hasExplicitTextAlignment)
  {
    m_textAlignment = self->m_textAlignment;
    if (m_textAlignment != 4)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = UITextAlignmentGetStylePropertyString(m_textAlignment);
      v11 = [v9 stringWithFormat:@"text-align: %@ ", v10];;
      [v7 appendString:v11];
    }
  }

  return v7;
}

- (void)recalculateStyle
{
  WebThreadLock();
  m_body = self->m_body;
  v4 = [(UITextContentView *)self styleString];
  [(DOMHTMLElement *)m_body setAttribute:@"style" value:v4];

  m_frame = self->m_frame;

  [(WebFrame *)m_frame updateLayout];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = UITextContentView;
  [(UIView *)&v4 didMoveToSuperview];
  v3 = [(UIView *)self superview];

  if (v3)
  {
    [(WebFrame *)self->m_frame updateLayout];
    [(UITextContentView *)self webViewDidChange:0];
  }
}

- (void)setSelectionChangeCallbacksDisabled:(BOOL)a3
{
  LODWORD(v3) = a3;
  v5 = [(UIWebDocumentView *)self->m_webView webView];
  v6 = [v5 editingDelegate];
  if (v6 == self)
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  m_frame = self->m_frame;

  [(WebFrame *)m_frame setSelectionChangeCallbacksDisabled:v3];
}

- (BOOL)becomeFirstResponder
{
  v2 = 1;
  if (!self->m_reentrancyGuard)
  {
    self->m_reentrancyGuard = 1;
    self->m_becomingFirstResponder = 1;
    WeakRetained = objc_loadWeakRetained(&self->m_delegate);
    if ([(UITextContentView *)self isFirstResponder])
    {
      if ([(UITextContentView *)self isEditable]&& ![(UITextContentView *)self isEditing])
      {
        [(UIResponder *)self reloadInputViews];
        [(UITextContentView *)self setEditing:1];
        [(UITextContentView *)self performSelector:sel_performBecomeEditableTasks withObject:0 afterDelay:0.0];
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained textViewDidBeginEditing:self];
        }

        v5 = [MEMORY[0x1E696AD88] defaultCenter];
        [v5 postNotificationName:@"UITextViewTextDidBeginEditingNotification" object:self];

        v2 = 1;
      }
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UITextContentView;
      if ([(UIView *)&v11 becomeFirstResponder])
      {
        [(UIWebDocumentView *)self->m_webView makeWKFirstResponder];
        if ([(UITextContentView *)self isEditable])
        {
          [(UITextContentView *)self setEditing:1];
          [(UITextContentView *)self performSelector:sel_performBecomeEditableTasks withObject:0 afterDelay:0.0];
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained textViewDidBeginEditing:self];
          }

          v6 = [MEMORY[0x1E696AD88] defaultCenter];
          [v6 postNotificationName:@"UITextViewTextDidBeginEditingNotification" object:self];

          v7 = [(UITextContentView *)self interactionAssistant];
          [v7 setCursorBlinkAnimationEnabled:1];
        }

        else
        {
          v7 = [(UITextContentView *)self interactionAssistant];
          [v7 setGestureRecognizers];
        }

        v8 = [(UITextContentView *)self interactionAssistant];
        v2 = 1;
        [v8 setSelectionDisplayVisible:1];

        v9 = [(UITextContentView *)self interactionAssistant];
        [v9 activateSelection];

        [(UITextContentView *)self webViewDidChange:0];
      }

      else
      {
        v2 = 0;
      }
    }

    self->m_reentrancyGuard = 0;
    self->m_becomingFirstResponder = 0;
  }

  return v2;
}

- (BOOL)resignFirstResponder
{
  v3 = *(self + 484);
  result = 1;
  if ((v3 & 1) == 0)
  {
    self->m_reentrancyGuard = 1;
    v8.receiver = self;
    v8.super_class = UITextContentView;
    if ([(UIResponder *)&v8 resignFirstResponder])
    {
      [(UIWebDocumentView *)self->m_webView clearWKFirstResponder];
      [(UITextContentView *)self setEditing:0];
      WeakRetained = objc_loadWeakRetained(&self->m_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained textContentViewDidEndEditing:self];
      }

      v6 = [(UITextContentView *)self interactionAssistant];
      [v6 resignedFirstResponder];

      v7 = [(UITextContentView *)self interactionAssistant];
      [v7 setGestureRecognizers];

      self->m_reentrancyGuard = 0;
      return 1;
    }

    else
    {
      result = 0;
      self->m_reentrancyGuard = 0;
    }
  }

  return result;
}

- (BOOL)canBecomeFirstResponder
{
  if (![(UITextContentView *)self isEditable])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained textContentViewShouldBeginEditing:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)canResignFirstResponder
{
  if (![(UITextContentView *)self isEditing])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained textContentViewShouldEndEditing:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isFirstResponder
{
  v4.receiver = self;
  v4.super_class = UITextContentView;
  return [(UIView *)&v4 isFirstResponder]|| [(UIView *)self->m_webView isFirstResponder];
}

- (void)ensureSelection
{
  if (![(UITextContentView *)self isFirstResponder])
  {
    [(UITextContentView *)self becomeFirstResponder];
  }

  v3 = [(UIWebDocumentView *)self->m_webView selectedTextRange];

  if (!v3)
  {

    [(UITextContentView *)self setSelectionToEnd];
  }
}

- (CGPoint)constrainedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self frame];
  v7 = v6 * 0.5;
  [(UITextContentView *)self visibleTextRect];
  if (y >= v8)
  {
    v10 = v8 + v9;
    v11 = y - (v8 + v9);
    if (v11 > 0.0)
    {
      y = v10 + v11 / (v11 / v7 + 5.0);
    }
  }

  else if (y - v8 < 0.0)
  {
    y = v8 + (y - v8) / (5.0 - (y - v8) / v7);
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)automaticallySelectedOverlay
{
  v2 = self;
  v3 = [(UIView *)self _scroller];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (void)setDragInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  [(UIDragInteraction *)self->m_dragInteraction setEnabled:?];
  m_webView = self->m_webView;

  [(UIWebDocumentView *)m_webView setDragInteractionEnabled:v3];
}

- (BOOL)dragInteractionEnabled
{
  v3 = [(UIDragInteraction *)self->m_dragInteraction isEnabled];
  if (v3)
  {
    m_webView = self->m_webView;

    LOBYTE(v3) = [(UIWebDocumentView *)m_webView isDragInteractionEnabled];
  }

  return v3;
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  v9 = a4;
  [(UIWebDocumentView *)self->m_webView dropInteraction:a3 concludeDrop:?];
  if (![(UITextContentView *)self isFirstResponder])
  {
    v6 = [(UIWebDocumentView *)self->m_webView webDraggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(UIWebDocumentView *)self->m_webView webDraggingDelegate];
      v8 = [v7 _webView:self->m_webView allowsSelectingContentAfterDropForSession:v9];

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    [(UITextContentView *)self becomeFirstResponder];
  }

LABEL_7:
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UITextContentView;
  v5 = [(UIView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self->m_webView)
  {
    v6 = self;

    v5 = v6;
  }

  return v5;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = UITextContentView;
  [(UIResponder *)&v4 touchesEnded:a3 withEvent:a4];
}

- (void)updateSelection
{
  v2 = [(UITextContentView *)self interactionAssistant];
  [v2 setNeedsSelectionDisplayUpdate];
}

- (BOOL)_restoreFirstResponder
{
  v3 = [(UITextContentView *)self interactionAssistant];
  v4 = v3;
  if (v3)
  {
    [v3 checkEditabilityAndSetFirstResponderIfNecessary];
    v5 = [(UITextContentView *)self isFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITextContentView;
    v5 = [(UIResponder *)&v8 _restoreFirstResponder];
  }

  v6 = v5;

  return v6;
}

- (CGRect)_selectionClipRect
{
  [(UIWebDocumentView *)self->m_webView _selectionClipRect];
  m_webView = self->m_webView;

  [(UIView *)self convertRect:m_webView fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)caretRectForVisiblePosition:(id)a3
{
  m_webView = self->m_webView;
  [(UIWebDocumentView *)m_webView caretRectForVisiblePosition:a3];

  [(UIView *)m_webView convertRect:self toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  m_webView = self->m_webView;
  v5 = [a3 _isImpl];
  v6 = [v5 domRange];
  v7 = [(UIWebDocumentView *)m_webView selectionRectsForDOMRange:v6];

  if ([v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) copy];
          [v14 rect];
          [(UIView *)self convertRect:self->m_webView fromView:?];
          [v14 setRect:?];
          v15 = [UITextSelectionRectImpl rectWithWebRect:v14];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v7 = v17;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)selectedText
{
  m_webView = self->m_webView;
  v3 = [(UIWebDocumentView *)m_webView selectedTextRange];
  v4 = [(UIWebDocumentView *)m_webView textInRange:v3];

  return v4;
}

- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)a3
{
  [(UIView *)self convertPoint:self->m_webView toView:a3.x, a3.y];
  m_webView = self->m_webView;

  [(UIWebDocumentView *)m_webView closestCaretRectInMarkedTextRangeForPoint:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)hasMarkedText
{
  v2 = [(UIWebDocumentView *)self->m_webView markedTextRange];
  v3 = v2 != 0;

  return v3;
}

- (_NSRange)selectionRange
{
  v2 = [(UIWebDocumentView *)self->m_webView selectionRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)_hideSelectionCommands
{
  v2 = [(UITextContentView *)self interactionAssistant];
  [v2 hideSelectionCommands];
}

- (id)undoManager
{
  m_webView = self->m_webView;
  v3 = [(UIWebDocumentView *)m_webView webView];
  v4 = [(UIWebDocumentView *)m_webView undoManagerForWebView:v3];

  return v4;
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _dataOwnerForCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__UITextContentView_cut___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [UIPasteboard _performAsDataOwner:v5 block:v7];
}

- (void)copy:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _dataOwnerForCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__UITextContentView_copy___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [UIPasteboard _performAsDataOwner:v5 block:v7];
}

- (void)paste:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _dataOwnerForPaste];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__UITextContentView_paste___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [UIPasteboard _performAsDataOwner:v5 block:v7];
}

- (void)pasteAndMatchStyle:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _dataOwnerForPaste];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__UITextContentView_pasteAndMatchStyle___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [UIPasteboard _performAsDataOwner:v5 block:v7];
}

- (void)select:(id)a3
{
  v3 = [(UITextContentView *)self interactionAssistant];
  [v3 selectWord];
}

- (void)selectAll:(id)a3
{
  v4 = a3;
  v5 = [(UITextContentView *)self interactionAssistant];
  [v5 selectAll:v4];
}

- (void)_promptForReplace:(id)a3
{
  v3 = [(UITextContentView *)self interactionAssistant];
  [v3 scheduleReplacements];
}

- (void)_transliterateChinese:(id)a3
{
  v3 = [(UITextContentView *)self interactionAssistant];
  [v3 scheduleChineseTransliteration];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_replace_ == a3)
  {
    if ([(UITextContentView *)self isEditing]&& ([(UITextContentView *)self isSecureTextEntry]& 1) == 0)
    {

      return [(UITextContentView *)self hasText];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    m_webView = self->m_webView;

    return [UIWebDocumentView canPerformAction:"canPerformAction:withSender:" withSender:?];
  }
}

- (id)supportedPasteboardTypesForCurrentSelection
{
  if (!_MergedGlobals_9_11)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = _MergedGlobals_9_11;
    _MergedGlobals_9_11 = v3;

    v5 = _MergedGlobals_9_11;
    v6 = [*MEMORY[0x1E6983030] identifier];
    [v5 addObject:v6];

    [_MergedGlobals_9_11 addObjectsFromArray:UIPasteboardTypeListString];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = qword_1ED499D50;
    qword_1ED499D50 = v7;

    [qword_1ED499D50 addObject:*MEMORY[0x1E69E2FD8]];
    v9 = qword_1ED499D50;
    v10 = [*MEMORY[0x1E6982F90] identifier];
    [v9 addObject:v10];

    v11 = qword_1ED499D50;
    v12 = [*MEMORY[0x1E6982DC0] identifier];
    [v11 addObject:v12];

    [qword_1ED499D50 addObjectsFromArray:UIPasteboardTypeListImage];
    [qword_1ED499D50 addObjectsFromArray:_MergedGlobals_9_11];
  }

  v13 = [(UITextContentView *)self allowsEditingTextAttributes];
  v14 = &qword_1ED499D50;
  if (!v13)
  {
    v14 = &_MergedGlobals_9_11;
  }

  v15 = *v14;

  return v15;
}

- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained documentFragmentForPasteboardItemAtIndex:a3 inTextContentView:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(UIView *)self _scroller];
  if (v10)
  {
    v16 = v10;
    [(UITextContentView *)self selectionInset];
    if (self->m_bottomBufferHeight >= v13)
    {
      m_bottomBufferHeight = v13;
    }

    else
    {
      m_bottomBufferHeight = self->m_bottomBufferHeight;
    }

    [(UIView *)self convertRect:v16 toView:x + v12, y + v11, width - (v12 + v14), height - (v11 + m_bottomBufferHeight)];
    [v16 scrollRectToVisible:v4 animated:?];
    v10 = v16;
  }
}

- (void)webViewDidChange:(id)a3
{
  WebThreadLock();
  v4 = [(WebFrame *)self->m_frame frameView];
  v18 = [v4 documentView];

  [v18 frame];
  v6 = v5;
  v8 = v7;
  [(UIView *)self frame];
  if (v8 > v9)
  {
    [(WebFrame *)self->m_frame setNeedsLayout];
  }

  [(UIView *)self frame];
  if (v6 < v10)
  {
    [(UIView *)self frame];
    v6 = v11;
  }

  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = [WeakRetained textContentView:self shouldScrollForPendingContentSize:{v6, v8}] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [WeakRetained textContentView:self shouldChangeSizeForContentSize:{v6, v8}];
    [(UIView *)self->m_webView setSize:v6, v8];
    if (v14)
    {
      [(UIView *)self frame];
      [(UITextContentView *)self setFrame:?];
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained textContentView:self didChangeSize:{v6, v8}];
      }
    }
  }

  else
  {
    [(UIView *)self->m_webView setSize:v6, v8];
  }

  v15 = [(UIView *)self _scroller];
  if (!((v15 == 0) | v13 & 1) && [(UITextContentView *)self scrollsSelectionOnWebDocumentChanges])
  {
    [v15 _contentOffsetAnimationDuration];
    v17 = v16;
    [v15 _setContentOffsetAnimationDuration:0.1];
    [(UITextContentView *)self scrollSelectionToVisible:1];
    [v15 _setContentOffsetAnimationDuration:v17];
  }
}

- (void)performBecomeEditableTasks
{
  v3 = [(UIView *)self superview];

  if (v3)
  {
    [(UITextContentView *)self ensureSelection];
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 setInitialDirection];

    v5 = [(UITextContentView *)self interactionAssistant];
    [v5 setGestureRecognizers];
  }
}

- (void)_sizeChanged
{
  WebThreadLock();
  [(UIView *)self->m_webView frame];
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)self bounds];
  v6 = v5;
  [(UIWebDocumentView *)self->m_webView setFrame:v3, v4];
  v7 = [(UIWebDocumentView *)self->m_webView webView];
  [v7 _setFixedLayoutSize:{v6, 1.0}];

  v8 = [(UITextContentView *)self interactionAssistant];
  [v8 setNeedsSelectionDisplayUpdate];

  v9 = +[UIKeyboardImpl activeInstance];
  [v9 textFrameChanged:self];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UITextContentView;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UITextContentView *)self _sizeChanged];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UITextContentView;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UITextContentView *)self _sizeChanged];
  }
}

- (void)setSelectionWithPoint:(CGPoint)a3
{
  m_webView = self->m_webView;
  [(UITextContentView *)self constrainedPoint:a3.x, a3.y];

  [(UIWebDocumentView *)m_webView setSelectionWithPoint:?];
}

- (void)setSelectionToStart
{
  [(UITextContentView *)self beginSelectionChange];
  WebThreadLock();
  m_webView = self->m_webView;
  v4 = [(UIWebDocumentView *)m_webView beginningOfDocument];
  v5 = [(UIWebDocumentView *)self->m_webView beginningOfDocument];
  v6 = [(UIWebDocumentView *)m_webView textRangeFromPosition:v4 toPosition:v5];
  [(UIWebDocumentView *)self->m_webView setSelectedTextRange:v6];

  [(UITextContentView *)self scrollSelectionToVisible:1];

  [(UITextContentView *)self endSelectionChange];
}

- (void)setSelectionToEnd
{
  [(UITextContentView *)self beginSelectionChange];
  m_webView = self->m_webView;
  v4 = [(UIWebDocumentView *)m_webView endOfDocument];
  v5 = [(UIWebDocumentView *)self->m_webView endOfDocument];
  v6 = [(UIWebDocumentView *)m_webView textRangeFromPosition:v4 toPosition:v5];
  [(UIWebDocumentView *)self->m_webView setSelectedTextRange:v6];

  [(UITextContentView *)self scrollSelectionToVisible:1];

  [(UITextContentView *)self endSelectionChange];
}

- (CGRect)rectForSelection:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WebThreadLock();
  v6 = [(WebFrame *)self->m_frame convertNSRangeToDOMRange:location, length];
  m_frame = self->m_frame;
  v8 = [v6 startContainer];
  -[WebFrame caretRectAtNode:offset:affinity:](m_frame, "caretRectAtNode:offset:affinity:", v8, [v6 startOffset], 1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)performScrollSelectionToVisible:(BOOL)a3
{
  v3 = a3;
  if ([(UIWebDocumentView *)self->m_webView hasSelection]&& [(UITextContentView *)self isFirstResponder])
  {
    [(WebFrame *)self->m_frame rectForScrollToVisible];
    v7 = CGRectInset(v6, -5.0, -5.0);
    [(UIView *)self convertRect:self->m_webView fromView:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];

    [(UITextContentView *)self scrollRectToVisible:v3 animated:?];
  }
}

- (CGRect)rectForScrollToVisible
{
  if ([(UIWebDocumentView *)self->m_webView hasSelection])
  {
    [(WebFrame *)self->m_frame rectForScrollToVisible];
    [(UIView *)self convertRect:self->m_webView fromView:?];
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

- (void)setContentToHTMLString:(id)a3
{
  v10 = a3;
  WebThreadLock();
  v4 = [(UIWebDocumentView *)self->m_webView inputDelegate];
  if ([(UITextContentView *)self isEditing])
  {
    [v4 textWillChange:self->m_webView];
  }

  if (v10)
  {
    v5 = v10;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  [(DOMHTMLElement *)self->m_body setInnerHTML:v5];
  if ([(UITextContentView *)self isEditing])
  {
    [v4 textDidChange:self->m_webView];
  }

  [(WebFrame *)self->m_frame updateLayout];
  [(UITextContentView *)self webViewDidChange:0];
  if ([(UITextContentView *)self shouldStartDataDetectors])
  {
    [(UITextContentView *)self startDataDetectorsWithWebLock];
  }

  v6 = [(UIWebDocumentView *)self->m_webView undoManager];
  v7 = [v6 isUndoRegistrationEnabled];

  v8 = [(UIWebDocumentView *)self->m_webView undoManager];
  [v8 removeAllActions];

  if ((v7 & 1) == 0)
  {
    v9 = [(UIWebDocumentView *)self->m_webView undoManager];
    [v9 disableUndoRegistration];
  }
}

- (id)contentAsHTMLString
{
  WebThreadLock();
  m_body = self->m_body;

  return [(DOMHTMLElement *)m_body innerHTML];
}

- (void)setContentToAttributedString:(id)a3
{
  v4 = a3;
  v8 = [[off_1E70ECB70 alloc] initWithAttributedString:v4];

  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [v8 HTMLData];
  v7 = [v5 initWithData:v6 encoding:4];

  [(UITextContentView *)self setContentToHTMLString:v7];
}

- (id)contentAsAttributedString
{
  WebThreadLock();
  v3 = [(UIWebDocumentView *)self->m_webView _focusedOrMainFrame];
  v4 = [v3 DOMDocument];
  v5 = [v4 createRange];

  [v5 selectNodeContents:self->m_body];
  v6 = [[off_1E70ECB68 alloc] initWithDOMRange:v5];
  v7 = [v6 attributedString];

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(UITextContentView *)self textInputTraits];
  [v4 selector];
  if (objc_opt_respondsToSelector())
  {
    [v4 invokeWithTarget:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITextContentView;
    [(UITextContentView *)&v6 forwardInvocation:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  return v4;
}

- (void)setAllowsEditingTextAttributes:(BOOL)a3
{
  self->m_allowsEditingTextAttributes = a3;
  if (a3)
  {
    self->m_usesAttributedText = 1;
  }
}

- (NSAttributedString)attributedText
{
  if (self->m_usesAttributedText)
  {
    WebThreadLock();
    v3 = [(UIWebDocumentView *)self->m_webView _focusedOrMainFrame];
    v4 = [v3 DOMDocument];
    v5 = [v4 createRange];

    [v5 selectNodeContents:self->m_body];
    v6 = [[off_1E70ECB68 alloc] initWithDOMRange:v5];
    v7 = [v6 attributedString];
    v8 = [v7 mutableCopy];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    v5 = [(UITextContentView *)self text];
    v8 = [v9 initWithString:v5];
  }

  v10 = [v8 mutableString];
  v11 = [(UITextContentView *)self textInputTraits];
  [v10 _removeCharactersFromSet:{objc_msgSend(v11, "textTrimmingSet")}];

  [v10 _replaceOccurrencesOfCharacter:160 withCharacter:32];
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v8];

  return v12;
}

- (void)_removeAttribute:(id)a3 fromString:(id)a4 andSetPropertyWith:(id)a5 usingValueClass:(Class)a6
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 _UIKBStringWideAttributeValueForKey:v11];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v9[2](v9, v10);
    }

    [v8 removeAttribute:v11 range:{0, objc_msgSend(v8, "length")}];
  }
}

- (void)_removeTextViewPropertiesFromText:(id)a3
{
  v4 = *off_1E70EC918;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__UITextContentView__removeTextViewPropertiesFromText___block_invoke;
  v16 = &unk_1E7118240;
  v17 = self;
  v5 = a3;
  [(UITextContentView *)self _removeAttribute:v4 fromString:v5 andSetPropertyWith:&v13 usingValueClass:objc_opt_class()];
  v6 = *off_1E70EC920;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __55__UITextContentView__removeTextViewPropertiesFromText___block_invoke_2;
  v11 = &unk_1E7118240;
  v12 = self;
  [(UITextContentView *)self _removeAttribute:v6 fromString:v5 andSetPropertyWith:&v8 usingValueClass:objc_opt_class()];
  v7 = [v5 _UIKBStringWideAttributeValueForKey:{*off_1E70EC988, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[UITextContentView setTextAlignment:](self, "setTextAlignment:", [v7 alignment]);
  }
}

+ (id)excludedElementsForHTML
{
  v2 = excludedElementsForHTML_exclusions;
  if (!excludedElementsForHTML_exclusions)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"STYLE", @"HTML", @"APPLET", @"OBJECT", @"BASEFONT", @"CENTER", @"DIR", @"FONT", @"ISINDEX", @"MENU", @"S", @"XML", @"BODY", @"HEAD", @"META", 0}];
    v4 = excludedElementsForHTML_exclusions;
    excludedElementsForHTML_exclusions = v3;

    v2 = excludedElementsForHTML_exclusions;
  }

  return v2;
}

- (void)setAttributedText:(id)a3
{
  self->m_usesAttributedText = 1;
  v16 = [a3 mutableCopy];
  v4 = [v16 mutableString];
  [(UITextContentView *)self _removeTextViewPropertiesFromText:v16];
  v5 = [(UITextContentView *)self textInputTraits];
  [v4 _removeCharactersFromSet:{objc_msgSend(v5, "textTrimmingSet")}];

  [v4 _removeOccurrencesOfCharacter:65532];
  v6 = [[off_1E70ECB70 alloc] initWithAttributedString:v16];
  v7 = [objc_opt_class() excludedElementsForHTML];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*off_1E70EC908];
  [v6 setDocumentAttributes:v8];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [v6 HTMLData];
  v11 = [v9 initWithData:v10 encoding:4];

  if ([v11 length])
  {
    v12 = [v11 length] - 1;
    if ([v11 characterAtIndex:v12] == 10)
    {
      v13 = [v11 substringToIndex:v12];

      v11 = v13;
    }
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"font-family: 'Helvetica Neue' font-weight: normal; font-style: normal; font-size: 12px"];;
  v15 = [v11 stringByReplacingOccurrencesOfString:v14 withString:&stru_1EFB14550];

  [(UITextContentView *)self setContentToHTMLString:v15];
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (self->m_font != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->m_font, a3);
    [(UITextContentView *)self recalculateStyle];
    [(UITextContentView *)self webViewDidChange:0];
    v5 = v6;
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (self->m_textColor != v4)
  {
    if (!v4)
    {
      v4 = +[UIColor blackColor];
    }

    obj = v4;
    objc_storeStrong(&self->m_textColor, v4);
    [(UITextContentView *)self recalculateStyle];
    v4 = obj;
  }
}

- (NSString)text
{
  WebThreadLock();
  v3 = [(WebFrame *)self->m_frame DOMDocument];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 body], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "innerText"), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    if ([v5 hasSuffix:@"\n"])
    {
      v6 = [(DOMHTMLElement *)self->m_body lastChild];
      v7 = [v6 tagName];
      if (![v7 caseInsensitiveCompare:@"div"])
      {
        v8 = [v6 firstChild];
        v9 = [v8 tagName];

        v7 = v9;
      }

      if (![v7 caseInsensitiveCompare:@"br"])
      {
        v10 = [v5 _stringByTrimmingLastCharacter];

        v5 = v10;
      }
    }

    if (!text_nbspString)
    {
      v11 = [MEMORY[0x1E696AEC0] _stringWithUnichar:160];
      v12 = text_nbspString;
      text_nbspString = v11;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v5];
    [v13 replaceOccurrencesOfString:text_nbspString withString:@" " options:2 range:{0, objc_msgSend(v13, "length")}];
    v14 = [(UITextContentView *)self textInputTraits];
    v15 = [v14 textTrimmingSet];

    if (v15)
    {
      v16 = [v13 _stringByTrimmingCharactersInCFCharacterSet:v15];
    }

    else
    {
      v16 = v13;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setText:(id)a3
{
  v13 = a3;
  WebThreadLock();
  if ([(UITextContentView *)self dataDetectorTypes])
  {
    [(UITextContentView *)self cancelDataDetectorsWithWebLock];
  }

  v4 = [(UIWebDocumentView *)self->m_webView inputDelegate];
  if ([(UITextContentView *)self isEditing])
  {
    [v4 textWillChange:self->m_webView];
  }

  v5 = [v13 length];
  v6 = 0;
  if (v13 && v5)
  {
    v7 = [(UITextContentView *)self textInputTraits];
    v8 = [v7 textTrimmingSet];

    if (v8)
    {
      v6 = [v13 _stringByTrimmingCharactersInCFCharacterSet:v8];

      v13 = v6;
    }

    else
    {
      v6 = v13;
    }
  }

  [(WebFrame *)self->m_frame setText:v6 asChildOfElement:self->m_body];
  if ([(UITextContentView *)self isEditable])
  {
    [v4 textDidChange:self->m_webView];
  }

  [(WebFrame *)self->m_frame updateLayout];
  [(UITextContentView *)self webViewDidChange:0];
  if ([(UITextContentView *)self shouldStartDataDetectors])
  {
    [(UITextContentView *)self startDataDetectorsWithWebLock];
  }

  v9 = [(UIWebDocumentView *)self->m_webView undoManager];
  v10 = [v9 isUndoRegistrationEnabled];

  v11 = [(UIWebDocumentView *)self->m_webView undoManager];
  [v11 removeAllActions];

  if ((v10 & 1) == 0)
  {
    v12 = [(UIWebDocumentView *)self->m_webView undoManager];
    [v12 disableUndoRegistration];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  self->m_hasExplicitTextAlignment = 1;
  self->m_textAlignment = a3;
  [(UITextContentView *)self recalculateStyle];
}

- (_NSRange)selectedRange
{
  WebThreadLock();
  m_frame = self->m_frame;

  v4 = [(WebFrame *)m_frame _selectedNSRange];
  result.length = v5;
  result.location = v4;
  return result;
}

- (void)setSelectedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(UITextContentView *)self beginSelectionChange];
  WebThreadLock();
  v6 = [(WebFrame *)self->m_frame convertNSRangeToDOMRange:location, length];
  v7 = v6;
  if (v6)
  {
    [(WebFrame *)self->m_frame setSelectedDOMRange:v6 affinity:1 closeTyping:1];
  }

  else
  {
    [(UITextContentView *)self ensureSelection];
  }

  [(UITextContentView *)self scrollSelectionToVisible:1];
  [(UITextContentView *)self endSelectionChange];
}

- (void)setEditable:(BOOL)a3
{
  if (self->m_editable != a3)
  {
    v3 = a3;
    WebThreadLock();
    [(UITextContentView *)self updateContentEditableAttribute:v3];
    if (v3)
    {
      [(UIWebDocumentView *)self->m_webView makeWKFirstResponder];
      [(UITextContentView *)self performSelector:sel_performBecomeEditableTasks withObject:0 afterDelay:0.0];
      v5 = +[UIKeyboardImpl activeInstance];
      [v5 textChanged:self];
    }

    else
    {
      [(UITextContentView *)self resignFirstResponder];
    }

    [(WebFrame *)self->m_frame setIsActive:v3];
    [(UITextContentView *)self setSelectionChangeCallbacksDisabled:v3];
    self->m_editable = v3;
    v6 = [(UITextContentView *)self interactionAssistant];
    [v6 setGestureRecognizers];

    if ([(UITextContentView *)self isEditable]&& [(UITextContentView *)self dataDetectorTypes])
    {
      [(UIWebDocumentView *)self->m_webView setAllowsDataDetectorsSheet:0];

      [(UITextContentView *)self resetDataDetectorsResultsWithWebLock];
    }

    else if ([(UITextContentView *)self shouldStartDataDetectors])
    {
      [(UIWebDocumentView *)self->m_webView setAllowsDataDetectorsSheet:1];

      [(UITextContentView *)self startDataDetectorsWithWebLock];
    }
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->m_editing != a3)
  {
    self->m_editing = a3;
    [(UIWebTiledView *)self->m_webView setEditingTilingModeEnabled:?];
  }
}

- (void)setMarginTop:(int)a3
{
  if (self->m_marginTop != a3)
  {
    self->m_marginTop = a3;
    [(UITextContentView *)self recalculateStyle];
  }
}

- (CGRect)visibleRect
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self _scroller];
  v12 = v11;
  if (v11)
  {
    [v11 contentOffset];
    v14 = v13;
    v16 = v15;
    [v12 frame];
    v18 = v17;
    v20 = v19;
    [(UIView *)self frame];
    v41.origin.x = v21;
    v41.origin.y = v22;
    v41.size.width = v23;
    v41.size.height = v24;
    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    v39 = CGRectIntersection(v38, v41);
    [(UIView *)self convertRect:v12 fromView:v39.origin.x, v39.origin.y, v39.size.width, v39.size.height];
    v4 = v25;
    v6 = v26;
    v8 = v27;
    v10 = v28;
  }

  if ([(UITextContentView *)self isEditing])
  {
    v29 = +[UIKeyboardImpl activeInstance];
    [v29 subtractKeyboardFrameFromRect:v12 inView:{v4, v6, v8, v10}];
    v4 = v30;
    v6 = v31;
    v8 = v32;
    v10 = v33;
  }

  v34 = v4;
  v35 = v6;
  v36 = v8;
  v37 = v10;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)visibleTextRect
{
  [(UITextContentView *)self visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->m_webView frame];
  v27.origin.x = v11;
  v27.origin.y = v12;
  v27.size.width = v13;
  v27.size.height = v14;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectIntersection(v24, v27);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  [(UIFont *)self->m_font pointSize];
  v20 = height + v19 * -0.5;
  v21 = x;
  v22 = y;
  v23 = width;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)scrollRangeToVisible:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WebThreadLock();
  v6 = [(WebFrame *)self->m_frame convertNSRangeToDOMRange:location, length];
  [(WebFrame *)self->m_frame firstRectForDOMRange:v6];
  [(UIView *)self convertRect:self->m_webView fromView:?];
  [(UITextContentView *)self scrollRectToVisible:1 animated:?];
}

- (BOOL)shouldStartDataDetectors
{
  v3 = [(UITextContentView *)self dataDetectorTypes];
  if (v3)
  {
    LOBYTE(v3) = ![(UITextContentView *)self isEditable];
  }

  return v3;
}

- (void)cancelDataDetectorsWithWebLock
{
  v3 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [v3 cancelURLificationForFrame:self->m_frame];
}

- (void)startDataDetectorsWithWebLock
{
  v3 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [v3 startURLificationForFrame:self->m_frame detectedTypes:{-[UIWebDocumentView effectiveDataDetectorTypes](self->m_webView, "effectiveDataDetectorTypes")}];
}

- (void)resetDataDetectorsResultsWithWebLock
{
  if (sDataDetectorsUIFrameworkLoaded == 1)
  {
    v4 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
    [v4 resetResultsForFrame:self->m_frame];
  }
}

- (void)setDataDetectorTypes:(unint64_t)a3
{
  if ([(UIWebDocumentView *)self->m_webView dataDetectorTypes]!= a3)
  {
    WebThreadLock();
    [(UIWebDocumentView *)self->m_webView setDataDetectorTypes:a3];
    v5 = [(UITextContentView *)self shouldStartDataDetectors];
    m_webView = self->m_webView;
    if (v5)
    {
      [(UIWebDocumentView *)m_webView setAllowsDataDetectorsSheet:1];
      [(UITextContentView *)self startDataDetectorsWithWebLock];
    }

    else
    {
      [(UIWebDocumentView *)m_webView setAllowsDataDetectorsSheet:0];
      [(UITextContentView *)self resetDataDetectorsResultsWithWebLock];
    }

    v7 = [(UITextContentView *)self interactionAssistant];
    [v7 setGestureRecognizers];
  }
}

- (unint64_t)_allowedLinkTypes
{
  if (self->m_usesAttributedText)
  {
    return -1;
  }

  else
  {
    return [(UITextContentView *)self dataDetectorTypes];
  }
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696B098];
  v10 = a5;
  v11 = a3;
  v12 = [v9 valueWithRange:{location, length}];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  LOBYTE(length) = [(UITextContentView *)self keyboardInput:v11 shouldReplaceTextInRanges:v13 replacementText:v10];

  return length;
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRanges:(id)a4 replacementText:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained textContentView:self shouldChangeTextInRanges:v7 replacementText:v8];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v13 = 1;
      goto LABEL_7;
    }

    v11 = [v7 unionRange];
    v10 = [WeakRetained textContentView:self shouldChangeTextInRange:v11 replacementText:{v12, v8}];
  }

  v13 = v10;
LABEL_7:

  return v13;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v8 = MEMORY[0x1E696B098];
    v9 = [(UITextContentView *)self selectedRange];
    v11 = [v8 valueWithRange:{v9, v10}];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [WeakRetained textContentView:self shouldChangeTextInRanges:v12 replacementText:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    v14 = [(UITextContentView *)self selectedRange];
    v13 = [WeakRetained textContentView:self shouldChangeTextInRange:v14 replacementText:{v15, v6}];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)keyboardInputChanged:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textContentViewDidChange:self];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"UITextViewTextDidChangeNotification" object:self];

  return 1;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  if (!self->m_becomingFirstResponder)
  {
    WeakRetained = objc_loadWeakRetained(&self->m_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained textContentViewDidChangeSelection:self];
    }
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7
{
  v19 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69E2FD0]];
  v15 = [v14 intValue];

  if (v15)
  {
    [v13 use];
  }

  else
  {
    v16 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69E2FC8]];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69E2FE8]];

    v18 = [v11 URL];
    [UIWebURLAction performDefaultActionForURL:v18 andDOMNode:v17 withAllowedTypes:[(UITextContentView *)self _allowedLinkTypes] forFrame:v12 inView:self];

    [v13 ignore];
  }
}

- (CGPoint)offset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)_proxyTextInput
{
  v2 = self;
  v3 = [(UITextContentView *)self tokenizer];
  v4 = [(UIWebDocumentView *)v2->m_webView tokenizer];

  if (v3 == v4)
  {
    v2 = v2->m_webView;
  }

  v5 = v2;

  return v5;
}

- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(UITextContentView *)self _proxyTextInput];

  if (v7 == self)
  {
    v8 = [v6 dictationPhraseArray];

    [(UITextContentView *)self insertDictationResult:v8];
    v6 = v8;
  }

  else
  {
    [(UIWebDocumentView *)self->m_webView insertDictationResult:v6 withCorrectionIdentifier:v9];
  }
}

- (CGRect)frameForDictationResultPlaceholder:(id)a3
{
  [(UIWebDocumentView *)self->m_webView frameForDictationResultPlaceholder:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)insertTextPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UIWebDocumentView *)self->m_webView insertTextPlaceholderWithSize:width, height];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeTextPlaceholder:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(UIWebDocumentView *)self->m_webView removeTextPlaceholder:v4];
  }
}

- (void)setSelectedTextRange:(id)a3
{
  v6 = a3;
  v4 = [(UITextContentView *)self _proxyTextInput];

  if (v4 == self)
  {
    v5 = [(UITextContentView *)self interactionAssistant];
    [v5 selectionChanged];
  }

  else
  {
    [(UIWebDocumentView *)self->m_webView setSelectedTextRange:v6];
  }
}

- (CGRect)firstRectForRange:(id)a3
{
  [(UIWebDocumentView *)self->m_webView firstRectForRange:a3];
  m_webView = self->m_webView;

  [(UIView *)m_webView convertRect:self toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  [(UIWebDocumentView *)self->m_webView caretRectForPosition:a3];
  m_webView = self->m_webView;

  [(UIView *)m_webView convertRect:self toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  [(UIView *)self->m_webView convertPoint:self fromView:a3.x, a3.y];
  m_webView = self->m_webView;

  return [(UIWebDocumentView *)m_webView closestPositionToPoint:?];
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  m_webView = self->m_webView;
  v8 = a4;
  [(UIView *)m_webView convertPoint:self fromView:x, y];
  v9 = [(UIWebDocumentView *)self->m_webView closestPositionToPoint:v8 withinRange:?];

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  [(UIView *)self->m_webView convertPoint:self fromView:a3.x, a3.y];
  m_webView = self->m_webView;

  return [(UIWebDocumentView *)m_webView characterRangeAtPoint:?];
}

- (UIEdgeInsets)selectionInset
{
  top = self->m_selectionInset.top;
  left = self->m_selectionInset.left;
  bottom = self->m_selectionInset.bottom;
  right = self->m_selectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UITextContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);

  return WeakRetained;
}

@end