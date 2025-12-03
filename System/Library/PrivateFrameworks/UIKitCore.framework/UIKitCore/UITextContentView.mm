@interface UITextContentView
+ (id)excludedElementsForHTML;
- (BOOL)_restoreFirstResponder;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResignFirstResponder;
- (BOOL)dragInteractionEnabled;
- (BOOL)hasMarkedText;
- (BOOL)isFirstResponder;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRanges:(id)ranges replacementText:(id)text;
- (BOOL)keyboardInputChanged:(id)changed;
- (BOOL)resignFirstResponder;
- (BOOL)shouldStartDataDetectors;
- (CGPoint)constrainedPoint:(CGPoint)point;
- (CGPoint)offset;
- (CGRect)_selectionClipRect;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)caretRectForVisiblePosition:(id)position;
- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)point;
- (CGRect)firstRectForRange:(id)range;
- (CGRect)frameForDictationResultPlaceholder:(id)placeholder;
- (CGRect)rectForScrollToVisible;
- (CGRect)rectForSelection:(_NSRange)selection;
- (CGRect)visibleRect;
- (CGRect)visibleTextRect;
- (NSAttributedString)attributedText;
- (NSString)text;
- (UIEdgeInsets)selectionInset;
- (UITextContentView)initWithCoder:(id)coder;
- (UITextContentView)initWithFrame:(CGRect)frame;
- (UITextContentView)initWithFrame:(CGRect)frame webView:(id)view;
- (UITextContentViewDelegate)delegate;
- (_NSRange)selectedRange;
- (_NSRange)selectionRange;
- (id)_proxyTextInput;
- (id)automaticallySelectedOverlay;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)contentAsAttributedString;
- (id)contentAsHTMLString;
- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)index;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)insertTextPlaceholderWithSize:(CGSize)size;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)selectedText;
- (id)selectionRectsForRange:(id)range;
- (id)styleString;
- (id)supportedPasteboardTypesForCurrentSelection;
- (id)undoManager;
- (unint64_t)_allowedLinkTypes;
- (void)_hideSelectionCommands;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_promptForReplace:(id)replace;
- (void)_removeAttribute:(id)attribute fromString:(id)string andSetPropertyWith:(id)with usingValueClass:(Class)class;
- (void)_removeTextViewPropertiesFromText:(id)text;
- (void)_sizeChanged;
- (void)_transliterateChinese:(id)chinese;
- (void)cancelDataDetectorsWithWebLock;
- (void)commonInitWithWebDocumentView:(id)view isDecoding:(BOOL)decoding;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)encodeWithCoder:(id)coder;
- (void)ensureSelection;
- (void)forwardInvocation:(id)invocation;
- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier;
- (void)keyboardDidShow:(id)show;
- (void)keyboardInputChangedSelection:(id)selection;
- (void)paste:(id)paste;
- (void)pasteAndMatchStyle:(id)style;
- (void)performBecomeEditableTasks;
- (void)performScrollSelectionToVisible:(BOOL)visible;
- (void)recalculateStyle;
- (void)removeFromSuperview;
- (void)removeTextPlaceholder:(id)placeholder;
- (void)resetDataDetectorsResultsWithWebLock;
- (void)scrollRangeToVisible:(_NSRange)visible;
- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated;
- (void)select:(id)select;
- (void)selectAll:(id)all;
- (void)setAllowsEditingTextAttributes:(BOOL)attributes;
- (void)setAttributedText:(id)text;
- (void)setBounds:(CGRect)bounds;
- (void)setContentToAttributedString:(id)string;
- (void)setContentToHTMLString:(id)string;
- (void)setDataDetectorTypes:(unint64_t)types;
- (void)setDragInteractionEnabled:(BOOL)enabled;
- (void)setEditable:(BOOL)editable;
- (void)setEditing:(BOOL)editing;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setMarginTop:(int)top;
- (void)setSelectedRange:(_NSRange)range;
- (void)setSelectedTextRange:(id)range;
- (void)setSelectionChangeCallbacksDisabled:(BOOL)disabled;
- (void)setSelectionToEnd;
- (void)setSelectionToStart;
- (void)setSelectionWithPoint:(CGPoint)point;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)startDataDetectorsWithWebLock;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateContentEditableAttribute:(BOOL)attribute;
- (void)updateSelection;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webViewDidChange:(id)change;
@end

@implementation UITextContentView

- (UITextContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UITextContentView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UITextContentView *)v3 commonInitWithWebDocumentView:0 isDecoding:0];
  }

  return v4;
}

- (UITextContentView)initWithFrame:(CGRect)frame webView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = UITextContentView;
  height = [(UIView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(UITextContentView *)height commonInitWithWebDocumentView:viewCopy isDecoding:0];
  }

  return v11;
}

- (UITextContentView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UITextContentView;
  v5 = [(UIView *)&v11 initWithCoder:coderCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  [(UITextContentView *)v5 commonInitWithWebDocumentView:0 isDecoding:1];
  if ([coderCopy containsValueForKey:@"UIAttributedText"])
  {
    v7 = [coderCopy decodeObjectForKey:@"UIAttributedText"];
    [(UITextContentView *)v6 setAttributedText:v7];
LABEL_6:

    goto LABEL_7;
  }

  if ([coderCopy containsValueForKey:@"UIText"])
  {
    v7 = [coderCopy decodeObjectForKey:@"UIText"];
    [(UITextContentView *)v6 setText:v7];
    goto LABEL_6;
  }

LABEL_7:
  if ([coderCopy containsValueForKey:@"UIFont"])
  {
    v8 = [coderCopy decodeObjectForKey:@"UIFont"];
    [(UITextContentView *)v6 setFont:v8];
  }

  if ([coderCopy containsValueForKey:@"UITextColor"])
  {
    v9 = [coderCopy decodeObjectForKey:@"UITextColor"];
    [(UITextContentView *)v6 setTextColor:v9];
  }

  if ([coderCopy containsValueForKey:@"UITextAlignment"])
  {
    -[UITextContentView setTextAlignment:](v6, "setTextAlignment:", [coderCopy decodeIntegerForKey:@"UITextAlignment"]);
  }

  if ([coderCopy containsValueForKey:@"UIEditable"])
  {
    -[UITextContentView setEditable:](v6, "setEditable:", [coderCopy decodeBoolForKey:@"UIEditable"]);
  }

  -[UITextContentView setDataDetectorTypes:](v6, "setDataDetectorTypes:", [coderCopy decodeIntegerForKey:@"UIDataDetectorTypes"]);
LABEL_16:

  return v6;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5.receiver = self;
  v5.super_class = UITextContentView;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  if (self->m_webView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UITextContentView;
  [(UIView *)&v10 encodeWithCoder:coderCopy];
  text = [(UITextContentView *)self text];
  v6 = text;
  if (text && [text length])
  {
    if (self->m_usesAttributedText)
    {
      attributedText = [(UITextContentView *)self attributedText];
      [coderCopy encodeObject:attributedText forKey:@"UIAttributedText"];
    }

    [coderCopy encodeObject:v6 forKey:@"UIText"];
  }

  m_font = self->m_font;
  if (m_font)
  {
    [coderCopy encodeObject:m_font forKey:@"UIFont"];
  }

  m_textColor = self->m_textColor;
  if (m_textColor)
  {
    [coderCopy encodeObject:m_textColor forKey:@"UITextColor"];
  }

  if (self->m_hasExplicitTextAlignment)
  {
    [coderCopy encodeInteger:self->m_textAlignment forKey:@"UITextAlignment"];
  }

  if (![(UITextContentView *)self isEditable])
  {
    [coderCopy encodeBool:0 forKey:@"UIEditable"];
  }

  if ([(UITextContentView *)self dataDetectorTypes])
  {
    [coderCopy encodeInteger:-[UITextContentView dataDetectorTypes](self forKey:{"dataDetectorTypes"), @"UIDataDetectorTypes"}];
  }
}

- (void)updateContentEditableAttribute:(BOOL)attribute
{
  attributeCopy = attribute;
  if (attribute)
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  [(DOMHTMLElement *)self->m_body setContentEditable:v5];
  if (attributeCopy)
  {
    selectedDOMRange = [(WebFrame *)self->m_frame selectedDOMRange];

    if (!selectedDOMRange)
    {
      m_frame = self->m_frame;

      [(WebFrame *)m_frame _setSelectionFromNone];
    }
  }
}

- (void)commonInitWithWebDocumentView:(id)view isDecoding:(BOOL)decoding
{
  viewCopy = view;
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

  if (viewCopy)
  {
    objc_storeStrong(&self->m_webView, view);
    [(UIWebDocumentView *)self->m_webView setWebDraggingDelegate:self];
  }

  else
  {
    [(UIView *)self frame];
    v14 = v13;
    v16 = v15;
    v17 = [UIWebDocumentView alloc];
    styleString = [(UITextContentView *)self styleString];
    v19 = +[UIWebDocumentView standardTextViewPreferences];
    v20 = [(UIWebDocumentView *)v17 initSimpleHTMLDocumentWithStyle:styleString frame:v19 preferences:0 groupName:0.0, 0.0, v14, v16];
    m_webView = self->m_webView;
    self->m_webView = v20;

    [(UIWebDocumentView *)self->m_webView setWebDraggingDelegate:self];
    [(UIView *)self->m_webView setEnabled:0];
    [(UIWebDocumentView *)self->m_webView setIgnoresFocusingMouse:1];
    [(UIWebDocumentView *)self->m_webView setLoadsSynchronously:1];
    webView = [(UIWebDocumentView *)self->m_webView webView];
    [webView _setFixedLayoutSize:{v14, 1.0}];
    [webView setPolicyDelegate:self];
    [webView setEditingDelegate:self];
    v23 = [objc_opt_class() description];
    [webView setCustomUserAgent:v23];
  }

  webView2 = [(UIWebDocumentView *)self->m_webView webView];
  mainFrame = [webView2 mainFrame];
  m_frame = self->m_frame;
  self->m_frame = mainFrame;

  dOMDocument = [(WebFrame *)self->m_frame DOMDocument];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    body = [dOMDocument body];
    m_body = self->m_body;
    self->m_body = body;
  }

  frameView = [(WebFrame *)self->m_frame frameView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v32 = *MEMORY[0x1E69E2FC0];
  documentView = [frameView documentView];
  [defaultCenter addObserver:self selector:sel_webViewDidChange_ name:v32 object:documentView];

  v34 = *MEMORY[0x1E69E3030];
  webView3 = [(UIWebDocumentView *)self->m_webView webView];
  [defaultCenter addObserver:self selector:sel_webViewDidChange_ name:v34 object:webView3];

  [defaultCenter addObserver:self selector:sel_keyboardDidShow_ name:@"UIKeyboardDidShowNotification" object:0];
  [frameView setAllowsScrolling:0];
  [(DOMHTMLElement *)self->m_body setAttribute:@"dir" value:@"auto"];
  [(UITextContentView *)self setSelectionChangeCallbacksDisabled:1];
  [(UITextContentView *)self setScrollsSelectionOnWebDocumentChanges:1];
  [(UIWebDocumentView *)self->m_webView _setParentTextView:self];
  [(UIWebDocumentView *)self->m_webView setOpaque:0];
  [(UIWebDocumentView *)self->m_webView setDrawsBackground:0];
  [(UIView *)self addSubview:self->m_webView];
  if (!decoding)
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
  webView = [(UIWebDocumentView *)self->m_webView webView];
  [webView setPolicyDelegate:0];
  [webView setEditingDelegate:0];
  if (sDataDetectorsUIFrameworkLoaded == 1 && [(UITextContentView *)self dataDetectorTypes])
  {
    dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
    [dataDetectorsUIGetClass(@"DDDetectionController") frameWillBeRemoved:self->m_frame];
  }

  [(UITextContentView *)self cancelDataDetectorsWithWebLock];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69E3030];
  v12[0] = *MEMORY[0x1E69E2FC0];
  v12[1] = v6;
  v12[2] = @"UIKeyboardDidShowNotification";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v7 names:?];

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
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant detach];

  v4.receiver = self;
  v4.super_class = UITextContentView;
  [(UIView *)&v4 removeFromSuperview];
}

- (void)keyboardDidShow:(id)show
{
  if ([(UITextContentView *)self isFirstResponder])
  {
    interactionAssistant = [(UITextContentView *)self interactionAssistant];
    [interactionAssistant setNeedsSelectionDisplayUpdate];

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
  markupDescription = [(UIFont *)self->m_font markupDescription];
  v7 = [v4 stringWithFormat:@"margin-top: %dpx %@; color: rgba(%d, %d, %d, %f); word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;", m_marginTop, markupDescription, (*&v13 * 255.0), (*(&v13 + 1) * 255.0), (v14[0] * 255.0), *&v14[1]];;

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
  styleString = [(UITextContentView *)self styleString];
  [(DOMHTMLElement *)m_body setAttribute:@"style" value:styleString];

  m_frame = self->m_frame;

  [(WebFrame *)m_frame updateLayout];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = UITextContentView;
  [(UIView *)&v4 didMoveToSuperview];
  superview = [(UIView *)self superview];

  if (superview)
  {
    [(WebFrame *)self->m_frame updateLayout];
    [(UITextContentView *)self webViewDidChange:0];
  }
}

- (void)setSelectionChangeCallbacksDisabled:(BOOL)disabled
{
  LODWORD(v3) = disabled;
  webView = [(UIWebDocumentView *)self->m_webView webView];
  editingDelegate = [webView editingDelegate];
  if (editingDelegate == self)
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

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"UITextViewTextDidBeginEditingNotification" object:self];

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

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 postNotificationName:@"UITextViewTextDidBeginEditingNotification" object:self];

          interactionAssistant = [(UITextContentView *)self interactionAssistant];
          [interactionAssistant setCursorBlinkAnimationEnabled:1];
        }

        else
        {
          interactionAssistant = [(UITextContentView *)self interactionAssistant];
          [interactionAssistant setGestureRecognizers];
        }

        interactionAssistant2 = [(UITextContentView *)self interactionAssistant];
        v2 = 1;
        [interactionAssistant2 setSelectionDisplayVisible:1];

        interactionAssistant3 = [(UITextContentView *)self interactionAssistant];
        [interactionAssistant3 activateSelection];

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

      interactionAssistant = [(UITextContentView *)self interactionAssistant];
      [interactionAssistant resignedFirstResponder];

      interactionAssistant2 = [(UITextContentView *)self interactionAssistant];
      [interactionAssistant2 setGestureRecognizers];

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

  selectedTextRange = [(UIWebDocumentView *)self->m_webView selectedTextRange];

  if (!selectedTextRange)
  {

    [(UITextContentView *)self setSelectionToEnd];
  }
}

- (CGPoint)constrainedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  selfCopy = self;
  _scroller = [(UIView *)self _scroller];
  v4 = _scroller;
  if (_scroller)
  {
    selfCopy = _scroller;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (void)setDragInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(UIDragInteraction *)self->m_dragInteraction setEnabled:?];
  m_webView = self->m_webView;

  [(UIWebDocumentView *)m_webView setDragInteractionEnabled:enabledCopy];
}

- (BOOL)dragInteractionEnabled
{
  isEnabled = [(UIDragInteraction *)self->m_dragInteraction isEnabled];
  if (isEnabled)
  {
    m_webView = self->m_webView;

    LOBYTE(isEnabled) = [(UIWebDocumentView *)m_webView isDragInteractionEnabled];
  }

  return isEnabled;
}

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
{
  dropCopy = drop;
  [(UIWebDocumentView *)self->m_webView dropInteraction:interaction concludeDrop:?];
  if (![(UITextContentView *)self isFirstResponder])
  {
    webDraggingDelegate = [(UIWebDocumentView *)self->m_webView webDraggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      webDraggingDelegate2 = [(UIWebDocumentView *)self->m_webView webDraggingDelegate];
      v8 = [webDraggingDelegate2 _webView:self->m_webView allowsSelectingContentAfterDropForSession:dropCopy];

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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UITextContentView;
  v5 = [(UIView *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self->m_webView)
  {
    selfCopy = self;

    v5 = selfCopy;
  }

  return v5;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = UITextContentView;
  [(UIResponder *)&v4 touchesEnded:ended withEvent:event];
}

- (void)updateSelection
{
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant setNeedsSelectionDisplayUpdate];
}

- (BOOL)_restoreFirstResponder
{
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  v4 = interactionAssistant;
  if (interactionAssistant)
  {
    [interactionAssistant checkEditabilityAndSetFirstResponderIfNecessary];
    isFirstResponder = [(UITextContentView *)self isFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITextContentView;
    isFirstResponder = [(UIResponder *)&v8 _restoreFirstResponder];
  }

  v6 = isFirstResponder;

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

- (CGRect)caretRectForVisiblePosition:(id)position
{
  m_webView = self->m_webView;
  [(UIWebDocumentView *)m_webView caretRectForVisiblePosition:position];

  [(UIView *)m_webView convertRect:self toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)selectionRectsForRange:(id)range
{
  v23 = *MEMORY[0x1E69E9840];
  m_webView = self->m_webView;
  _isImpl = [range _isImpl];
  domRange = [_isImpl domRange];
  v7 = [(UIWebDocumentView *)m_webView selectionRectsForDOMRange:domRange];

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
  selectedTextRange = [(UIWebDocumentView *)m_webView selectedTextRange];
  v4 = [(UIWebDocumentView *)m_webView textInRange:selectedTextRange];

  return v4;
}

- (CGRect)closestCaretRectInMarkedTextRangeForPoint:(CGPoint)point
{
  [(UIView *)self convertPoint:self->m_webView toView:point.x, point.y];
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
  markedTextRange = [(UIWebDocumentView *)self->m_webView markedTextRange];
  v3 = markedTextRange != 0;

  return v3;
}

- (_NSRange)selectionRange
{
  selectionRange = [(UIWebDocumentView *)self->m_webView selectionRange];
  result.length = v3;
  result.location = selectionRange;
  return result;
}

- (void)_hideSelectionCommands
{
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant hideSelectionCommands];
}

- (id)undoManager
{
  m_webView = self->m_webView;
  webView = [(UIWebDocumentView *)m_webView webView];
  v4 = [(UIWebDocumentView *)m_webView undoManagerForWebView:webView];

  return v4;
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  _dataOwnerForCopy = [(UIResponder *)self _dataOwnerForCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__UITextContentView_cut___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = cutCopy;
  v6 = cutCopy;
  [UIPasteboard _performAsDataOwner:_dataOwnerForCopy block:v7];
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  _dataOwnerForCopy = [(UIResponder *)self _dataOwnerForCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__UITextContentView_copy___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = copyCopy;
  v6 = copyCopy;
  [UIPasteboard _performAsDataOwner:_dataOwnerForCopy block:v7];
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  _dataOwnerForPaste = [(UIResponder *)self _dataOwnerForPaste];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__UITextContentView_paste___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = pasteCopy;
  v6 = pasteCopy;
  [UIPasteboard _performAsDataOwner:_dataOwnerForPaste block:v7];
}

- (void)pasteAndMatchStyle:(id)style
{
  styleCopy = style;
  _dataOwnerForPaste = [(UIResponder *)self _dataOwnerForPaste];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__UITextContentView_pasteAndMatchStyle___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = styleCopy;
  v6 = styleCopy;
  [UIPasteboard _performAsDataOwner:_dataOwnerForPaste block:v7];
}

- (void)select:(id)select
{
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant selectWord];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant selectAll:allCopy];
}

- (void)_promptForReplace:(id)replace
{
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant scheduleReplacements];
}

- (void)_transliterateChinese:(id)chinese
{
  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant scheduleChineseTransliteration];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_replace_ == action)
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
    identifier = [*MEMORY[0x1E6983030] identifier];
    [v5 addObject:identifier];

    [_MergedGlobals_9_11 addObjectsFromArray:UIPasteboardTypeListString];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = qword_1ED499D50;
    qword_1ED499D50 = v7;

    [qword_1ED499D50 addObject:*MEMORY[0x1E69E2FD8]];
    v9 = qword_1ED499D50;
    identifier2 = [*MEMORY[0x1E6982F90] identifier];
    [v9 addObject:identifier2];

    v11 = qword_1ED499D50;
    identifier3 = [*MEMORY[0x1E6982DC0] identifier];
    [v11 addObject:identifier3];

    [qword_1ED499D50 addObjectsFromArray:UIPasteboardTypeListImage];
    [qword_1ED499D50 addObjectsFromArray:_MergedGlobals_9_11];
  }

  allowsEditingTextAttributes = [(UITextContentView *)self allowsEditingTextAttributes];
  v14 = &qword_1ED499D50;
  if (!allowsEditingTextAttributes)
  {
    v14 = &_MergedGlobals_9_11;
  }

  v15 = *v14;

  return v15;
}

- (id)documentFragmentForPasteboardItemAtIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained documentFragmentForPasteboardItemAtIndex:index inTextContentView:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  _scroller = [(UIView *)self _scroller];
  if (_scroller)
  {
    v16 = _scroller;
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
    [v16 scrollRectToVisible:animatedCopy animated:?];
    _scroller = v16;
  }
}

- (void)webViewDidChange:(id)change
{
  WebThreadLock();
  frameView = [(WebFrame *)self->m_frame frameView];
  documentView = [frameView documentView];

  [documentView frame];
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

  _scroller = [(UIView *)self _scroller];
  if (!((_scroller == 0) | v13 & 1) && [(UITextContentView *)self scrollsSelectionOnWebDocumentChanges])
  {
    [_scroller _contentOffsetAnimationDuration];
    v17 = v16;
    [_scroller _setContentOffsetAnimationDuration:0.1];
    [(UITextContentView *)self scrollSelectionToVisible:1];
    [_scroller _setContentOffsetAnimationDuration:v17];
  }
}

- (void)performBecomeEditableTasks
{
  superview = [(UIView *)self superview];

  if (superview)
  {
    [(UITextContentView *)self ensureSelection];
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 setInitialDirection];

    interactionAssistant = [(UITextContentView *)self interactionAssistant];
    [interactionAssistant setGestureRecognizers];
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
  webView = [(UIWebDocumentView *)self->m_webView webView];
  [webView _setFixedLayoutSize:{v6, 1.0}];

  interactionAssistant = [(UITextContentView *)self interactionAssistant];
  [interactionAssistant setNeedsSelectionDisplayUpdate];

  v9 = +[UIKeyboardImpl activeInstance];
  [v9 textFrameChanged:self];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setSelectionWithPoint:(CGPoint)point
{
  m_webView = self->m_webView;
  [(UITextContentView *)self constrainedPoint:point.x, point.y];

  [(UIWebDocumentView *)m_webView setSelectionWithPoint:?];
}

- (void)setSelectionToStart
{
  [(UITextContentView *)self beginSelectionChange];
  WebThreadLock();
  m_webView = self->m_webView;
  beginningOfDocument = [(UIWebDocumentView *)m_webView beginningOfDocument];
  beginningOfDocument2 = [(UIWebDocumentView *)self->m_webView beginningOfDocument];
  v6 = [(UIWebDocumentView *)m_webView textRangeFromPosition:beginningOfDocument toPosition:beginningOfDocument2];
  [(UIWebDocumentView *)self->m_webView setSelectedTextRange:v6];

  [(UITextContentView *)self scrollSelectionToVisible:1];

  [(UITextContentView *)self endSelectionChange];
}

- (void)setSelectionToEnd
{
  [(UITextContentView *)self beginSelectionChange];
  m_webView = self->m_webView;
  endOfDocument = [(UIWebDocumentView *)m_webView endOfDocument];
  endOfDocument2 = [(UIWebDocumentView *)self->m_webView endOfDocument];
  v6 = [(UIWebDocumentView *)m_webView textRangeFromPosition:endOfDocument toPosition:endOfDocument2];
  [(UIWebDocumentView *)self->m_webView setSelectedTextRange:v6];

  [(UITextContentView *)self scrollSelectionToVisible:1];

  [(UITextContentView *)self endSelectionChange];
}

- (CGRect)rectForSelection:(_NSRange)selection
{
  length = selection.length;
  location = selection.location;
  WebThreadLock();
  v6 = [(WebFrame *)self->m_frame convertNSRangeToDOMRange:location, length];
  m_frame = self->m_frame;
  startContainer = [v6 startContainer];
  -[WebFrame caretRectAtNode:offset:affinity:](m_frame, "caretRectAtNode:offset:affinity:", startContainer, [v6 startOffset], 1);
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

- (void)performScrollSelectionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(UIWebDocumentView *)self->m_webView hasSelection]&& [(UITextContentView *)self isFirstResponder])
  {
    [(WebFrame *)self->m_frame rectForScrollToVisible];
    v7 = CGRectInset(v6, -5.0, -5.0);
    [(UIView *)self convertRect:self->m_webView fromView:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];

    [(UITextContentView *)self scrollRectToVisible:visibleCopy animated:?];
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

- (void)setContentToHTMLString:(id)string
{
  stringCopy = string;
  WebThreadLock();
  inputDelegate = [(UIWebDocumentView *)self->m_webView inputDelegate];
  if ([(UITextContentView *)self isEditing])
  {
    [inputDelegate textWillChange:self->m_webView];
  }

  if (stringCopy)
  {
    v5 = stringCopy;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  [(DOMHTMLElement *)self->m_body setInnerHTML:v5];
  if ([(UITextContentView *)self isEditing])
  {
    [inputDelegate textDidChange:self->m_webView];
  }

  [(WebFrame *)self->m_frame updateLayout];
  [(UITextContentView *)self webViewDidChange:0];
  if ([(UITextContentView *)self shouldStartDataDetectors])
  {
    [(UITextContentView *)self startDataDetectorsWithWebLock];
  }

  undoManager = [(UIWebDocumentView *)self->m_webView undoManager];
  isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];

  undoManager2 = [(UIWebDocumentView *)self->m_webView undoManager];
  [undoManager2 removeAllActions];

  if ((isUndoRegistrationEnabled & 1) == 0)
  {
    undoManager3 = [(UIWebDocumentView *)self->m_webView undoManager];
    [undoManager3 disableUndoRegistration];
  }
}

- (id)contentAsHTMLString
{
  WebThreadLock();
  m_body = self->m_body;

  return [(DOMHTMLElement *)m_body innerHTML];
}

- (void)setContentToAttributedString:(id)string
{
  stringCopy = string;
  v8 = [[off_1E70ECB70 alloc] initWithAttributedString:stringCopy];

  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  hTMLData = [v8 HTMLData];
  v7 = [v5 initWithData:hTMLData encoding:4];

  [(UITextContentView *)self setContentToHTMLString:v7];
}

- (id)contentAsAttributedString
{
  WebThreadLock();
  _focusedOrMainFrame = [(UIWebDocumentView *)self->m_webView _focusedOrMainFrame];
  dOMDocument = [_focusedOrMainFrame DOMDocument];
  createRange = [dOMDocument createRange];

  [createRange selectNodeContents:self->m_body];
  v6 = [[off_1E70ECB68 alloc] initWithDOMRange:createRange];
  attributedString = [v6 attributedString];

  return attributedString;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  textInputTraits = [(UITextContentView *)self textInputTraits];
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:textInputTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITextContentView;
    [(UITextContentView *)&v6 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  return v4;
}

- (void)setAllowsEditingTextAttributes:(BOOL)attributes
{
  self->m_allowsEditingTextAttributes = attributes;
  if (attributes)
  {
    self->m_usesAttributedText = 1;
  }
}

- (NSAttributedString)attributedText
{
  if (self->m_usesAttributedText)
  {
    WebThreadLock();
    _focusedOrMainFrame = [(UIWebDocumentView *)self->m_webView _focusedOrMainFrame];
    dOMDocument = [_focusedOrMainFrame DOMDocument];
    createRange = [dOMDocument createRange];

    [createRange selectNodeContents:self->m_body];
    v6 = [[off_1E70ECB68 alloc] initWithDOMRange:createRange];
    attributedString = [v6 attributedString];
    v8 = [attributedString mutableCopy];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    createRange = [(UITextContentView *)self text];
    v8 = [v9 initWithString:createRange];
  }

  mutableString = [v8 mutableString];
  textInputTraits = [(UITextContentView *)self textInputTraits];
  [mutableString _removeCharactersFromSet:{objc_msgSend(textInputTraits, "textTrimmingSet")}];

  [mutableString _replaceOccurrencesOfCharacter:160 withCharacter:32];
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v8];

  return v12;
}

- (void)_removeAttribute:(id)attribute fromString:(id)string andSetPropertyWith:(id)with usingValueClass:(Class)class
{
  attributeCopy = attribute;
  stringCopy = string;
  withCopy = with;
  v10 = [stringCopy _UIKBStringWideAttributeValueForKey:attributeCopy];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      withCopy[2](withCopy, v10);
    }

    [stringCopy removeAttribute:attributeCopy range:{0, objc_msgSend(stringCopy, "length")}];
  }
}

- (void)_removeTextViewPropertiesFromText:(id)text
{
  v4 = *off_1E70EC918;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__UITextContentView__removeTextViewPropertiesFromText___block_invoke;
  v16 = &unk_1E7118240;
  selfCopy = self;
  textCopy = text;
  [(UITextContentView *)self _removeAttribute:v4 fromString:textCopy andSetPropertyWith:&v13 usingValueClass:objc_opt_class()];
  v6 = *off_1E70EC920;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __55__UITextContentView__removeTextViewPropertiesFromText___block_invoke_2;
  v11 = &unk_1E7118240;
  selfCopy2 = self;
  [(UITextContentView *)self _removeAttribute:v6 fromString:textCopy andSetPropertyWith:&v8 usingValueClass:objc_opt_class()];
  v7 = [textCopy _UIKBStringWideAttributeValueForKey:{*off_1E70EC988, v8, v9, v10, v11, selfCopy2, v13, v14, v15, v16, selfCopy}];

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

- (void)setAttributedText:(id)text
{
  self->m_usesAttributedText = 1;
  v16 = [text mutableCopy];
  mutableString = [v16 mutableString];
  [(UITextContentView *)self _removeTextViewPropertiesFromText:v16];
  textInputTraits = [(UITextContentView *)self textInputTraits];
  [mutableString _removeCharactersFromSet:{objc_msgSend(textInputTraits, "textTrimmingSet")}];

  [mutableString _removeOccurrencesOfCharacter:65532];
  v6 = [[off_1E70ECB70 alloc] initWithAttributedString:v16];
  excludedElementsForHTML = [objc_opt_class() excludedElementsForHTML];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:excludedElementsForHTML forKey:*off_1E70EC908];
  [v6 setDocumentAttributes:v8];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  hTMLData = [v6 HTMLData];
  v11 = [v9 initWithData:hTMLData encoding:4];

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

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->m_font != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->m_font, font);
    [(UITextContentView *)self recalculateStyle];
    [(UITextContentView *)self webViewDidChange:0];
    fontCopy = v6;
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->m_textColor != colorCopy)
  {
    if (!colorCopy)
    {
      colorCopy = +[UIColor blackColor];
    }

    obj = colorCopy;
    objc_storeStrong(&self->m_textColor, colorCopy);
    [(UITextContentView *)self recalculateStyle];
    colorCopy = obj;
  }
}

- (NSString)text
{
  WebThreadLock();
  dOMDocument = [(WebFrame *)self->m_frame DOMDocument];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([dOMDocument body], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "innerText"), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    if ([v5 hasSuffix:@"\n"])
    {
      lastChild = [(DOMHTMLElement *)self->m_body lastChild];
      tagName = [lastChild tagName];
      if (![tagName caseInsensitiveCompare:@"div"])
      {
        firstChild = [lastChild firstChild];
        tagName2 = [firstChild tagName];

        tagName = tagName2;
      }

      if (![tagName caseInsensitiveCompare:@"br"])
      {
        _stringByTrimmingLastCharacter = [v5 _stringByTrimmingLastCharacter];

        v5 = _stringByTrimmingLastCharacter;
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
    textInputTraits = [(UITextContentView *)self textInputTraits];
    textTrimmingSet = [textInputTraits textTrimmingSet];

    if (textTrimmingSet)
    {
      v16 = [v13 _stringByTrimmingCharactersInCFCharacterSet:textTrimmingSet];
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

- (void)setText:(id)text
{
  textCopy = text;
  WebThreadLock();
  if ([(UITextContentView *)self dataDetectorTypes])
  {
    [(UITextContentView *)self cancelDataDetectorsWithWebLock];
  }

  inputDelegate = [(UIWebDocumentView *)self->m_webView inputDelegate];
  if ([(UITextContentView *)self isEditing])
  {
    [inputDelegate textWillChange:self->m_webView];
  }

  v5 = [textCopy length];
  v6 = 0;
  if (textCopy && v5)
  {
    textInputTraits = [(UITextContentView *)self textInputTraits];
    textTrimmingSet = [textInputTraits textTrimmingSet];

    if (textTrimmingSet)
    {
      v6 = [textCopy _stringByTrimmingCharactersInCFCharacterSet:textTrimmingSet];

      textCopy = v6;
    }

    else
    {
      v6 = textCopy;
    }
  }

  [(WebFrame *)self->m_frame setText:v6 asChildOfElement:self->m_body];
  if ([(UITextContentView *)self isEditable])
  {
    [inputDelegate textDidChange:self->m_webView];
  }

  [(WebFrame *)self->m_frame updateLayout];
  [(UITextContentView *)self webViewDidChange:0];
  if ([(UITextContentView *)self shouldStartDataDetectors])
  {
    [(UITextContentView *)self startDataDetectorsWithWebLock];
  }

  undoManager = [(UIWebDocumentView *)self->m_webView undoManager];
  isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];

  undoManager2 = [(UIWebDocumentView *)self->m_webView undoManager];
  [undoManager2 removeAllActions];

  if ((isUndoRegistrationEnabled & 1) == 0)
  {
    undoManager3 = [(UIWebDocumentView *)self->m_webView undoManager];
    [undoManager3 disableUndoRegistration];
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  self->m_hasExplicitTextAlignment = 1;
  self->m_textAlignment = alignment;
  [(UITextContentView *)self recalculateStyle];
}

- (_NSRange)selectedRange
{
  WebThreadLock();
  m_frame = self->m_frame;

  _selectedNSRange = [(WebFrame *)m_frame _selectedNSRange];
  result.length = v5;
  result.location = _selectedNSRange;
  return result;
}

- (void)setSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (void)setEditable:(BOOL)editable
{
  if (self->m_editable != editable)
  {
    editableCopy = editable;
    WebThreadLock();
    [(UITextContentView *)self updateContentEditableAttribute:editableCopy];
    if (editableCopy)
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

    [(WebFrame *)self->m_frame setIsActive:editableCopy];
    [(UITextContentView *)self setSelectionChangeCallbacksDisabled:editableCopy];
    self->m_editable = editableCopy;
    interactionAssistant = [(UITextContentView *)self interactionAssistant];
    [interactionAssistant setGestureRecognizers];

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

- (void)setEditing:(BOOL)editing
{
  if (self->m_editing != editing)
  {
    self->m_editing = editing;
    [(UIWebTiledView *)self->m_webView setEditingTilingModeEnabled:?];
  }
}

- (void)setMarginTop:(int)top
{
  if (self->m_marginTop != top)
  {
    self->m_marginTop = top;
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
  _scroller = [(UIView *)self _scroller];
  v12 = _scroller;
  if (_scroller)
  {
    [_scroller contentOffset];
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

- (void)scrollRangeToVisible:(_NSRange)visible
{
  length = visible.length;
  location = visible.location;
  WebThreadLock();
  v6 = [(WebFrame *)self->m_frame convertNSRangeToDOMRange:location, length];
  [(WebFrame *)self->m_frame firstRectForDOMRange:v6];
  [(UIView *)self convertRect:self->m_webView fromView:?];
  [(UITextContentView *)self scrollRectToVisible:1 animated:?];
}

- (BOOL)shouldStartDataDetectors
{
  dataDetectorTypes = [(UITextContentView *)self dataDetectorTypes];
  if (dataDetectorTypes)
  {
    LOBYTE(dataDetectorTypes) = ![(UITextContentView *)self isEditable];
  }

  return dataDetectorTypes;
}

- (void)cancelDataDetectorsWithWebLock
{
  dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [dataDetectorsUIGetClass(@"DDDetectionController") cancelURLificationForFrame:self->m_frame];
}

- (void)startDataDetectorsWithWebLock
{
  dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  [dataDetectorsUIGetClass(@"DDDetectionController") startURLificationForFrame:self->m_frame detectedTypes:{-[UIWebDocumentView effectiveDataDetectorTypes](self->m_webView, "effectiveDataDetectorTypes")}];
}

- (void)resetDataDetectorsResultsWithWebLock
{
  if (sDataDetectorsUIFrameworkLoaded == 1)
  {
    dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
    [dataDetectorsUIGetClass(@"DDDetectionController") resetResultsForFrame:self->m_frame];
  }
}

- (void)setDataDetectorTypes:(unint64_t)types
{
  if ([(UIWebDocumentView *)self->m_webView dataDetectorTypes]!= types)
  {
    WebThreadLock();
    [(UIWebDocumentView *)self->m_webView setDataDetectorTypes:types];
    shouldStartDataDetectors = [(UITextContentView *)self shouldStartDataDetectors];
    m_webView = self->m_webView;
    if (shouldStartDataDetectors)
    {
      [(UIWebDocumentView *)m_webView setAllowsDataDetectorsSheet:1];
      [(UITextContentView *)self startDataDetectorsWithWebLock];
    }

    else
    {
      [(UIWebDocumentView *)m_webView setAllowsDataDetectorsSheet:0];
      [(UITextContentView *)self resetDataDetectorsResultsWithWebLock];
    }

    interactionAssistant = [(UITextContentView *)self interactionAssistant];
    [interactionAssistant setGestureRecognizers];
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

- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696B098];
  textCopy = text;
  inputCopy = input;
  v12 = [v9 valueWithRange:{location, length}];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  LOBYTE(length) = [(UITextContentView *)self keyboardInput:inputCopy shouldReplaceTextInRanges:v13 replacementText:textCopy];

  return length;
}

- (BOOL)keyboardInput:(id)input shouldReplaceTextInRanges:(id)ranges replacementText:(id)text
{
  rangesCopy = ranges;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained textContentView:self shouldChangeTextInRanges:rangesCopy replacementText:textCopy];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v13 = 1;
      goto LABEL_7;
    }

    unionRange = [rangesCopy unionRange];
    v10 = [WeakRetained textContentView:self shouldChangeTextInRange:unionRange replacementText:{v12, textCopy}];
  }

  v13 = v10;
LABEL_7:

  return v13;
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  v17[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    v8 = MEMORY[0x1E696B098];
    selectedRange = [(UITextContentView *)self selectedRange];
    v11 = [v8 valueWithRange:{selectedRange, v10}];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [WeakRetained textContentView:self shouldChangeTextInRanges:v12 replacementText:textCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    selectedRange2 = [(UITextContentView *)self selectedRange];
    v13 = [WeakRetained textContentView:self shouldChangeTextInRange:selectedRange2 replacementText:{v15, textCopy}];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)keyboardInputChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained textContentViewDidChange:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextViewTextDidChangeNotification" object:self];

  return 1;
}

- (void)keyboardInputChangedSelection:(id)selection
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

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener
{
  actionCopy = action;
  requestCopy = request;
  frameCopy = frame;
  listenerCopy = listener;
  v14 = [actionCopy objectForKeyedSubscript:*MEMORY[0x1E69E2FD0]];
  intValue = [v14 intValue];

  if (intValue)
  {
    [listenerCopy use];
  }

  else
  {
    v16 = [actionCopy objectForKeyedSubscript:*MEMORY[0x1E69E2FC8]];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69E2FE8]];

    v18 = [requestCopy URL];
    [UIWebURLAction performDefaultActionForURL:v18 andDOMNode:v17 withAllowedTypes:[(UITextContentView *)self _allowedLinkTypes] forFrame:frameCopy inView:self];

    [listenerCopy ignore];
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
  selfCopy = self;
  tokenizer = [(UITextContentView *)self tokenizer];
  tokenizer2 = [(UIWebDocumentView *)selfCopy->m_webView tokenizer];

  if (tokenizer == tokenizer2)
  {
    selfCopy = selfCopy->m_webView;
  }

  v5 = selfCopy;

  return v5;
}

- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resultCopy = result;
  _proxyTextInput = [(UITextContentView *)self _proxyTextInput];

  if (_proxyTextInput == self)
  {
    dictationPhraseArray = [resultCopy dictationPhraseArray];

    [(UITextContentView *)self insertDictationResult:dictationPhraseArray];
    resultCopy = dictationPhraseArray;
  }

  else
  {
    [(UIWebDocumentView *)self->m_webView insertDictationResult:resultCopy withCorrectionIdentifier:identifierCopy];
  }
}

- (CGRect)frameForDictationResultPlaceholder:(id)placeholder
{
  [(UIWebDocumentView *)self->m_webView frameForDictationResultPlaceholder:placeholder];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)insertTextPlaceholderWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (objc_opt_respondsToSelector())
  {
    height = [(UIWebDocumentView *)self->m_webView insertTextPlaceholderWithSize:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (void)removeTextPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (objc_opt_respondsToSelector())
  {
    [(UIWebDocumentView *)self->m_webView removeTextPlaceholder:placeholderCopy];
  }
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  _proxyTextInput = [(UITextContentView *)self _proxyTextInput];

  if (_proxyTextInput == self)
  {
    interactionAssistant = [(UITextContentView *)self interactionAssistant];
    [interactionAssistant selectionChanged];
  }

  else
  {
    [(UIWebDocumentView *)self->m_webView setSelectedTextRange:rangeCopy];
  }
}

- (CGRect)firstRectForRange:(id)range
{
  [(UIWebDocumentView *)self->m_webView firstRectForRange:range];
  m_webView = self->m_webView;

  [(UIView *)m_webView convertRect:self toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)caretRectForPosition:(id)position
{
  [(UIWebDocumentView *)self->m_webView caretRectForPosition:position];
  m_webView = self->m_webView;

  [(UIView *)m_webView convertRect:self toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)closestPositionToPoint:(CGPoint)point
{
  [(UIView *)self->m_webView convertPoint:self fromView:point.x, point.y];
  m_webView = self->m_webView;

  return [(UIWebDocumentView *)m_webView closestPositionToPoint:?];
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  m_webView = self->m_webView;
  rangeCopy = range;
  [(UIView *)m_webView convertPoint:self fromView:x, y];
  v9 = [(UIWebDocumentView *)self->m_webView closestPositionToPoint:rangeCopy withinRange:?];

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  [(UIView *)self->m_webView convertPoint:self fromView:point.x, point.y];
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