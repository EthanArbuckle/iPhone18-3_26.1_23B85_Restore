@interface NSTextContainer
+ (void)initialize;
- (BOOL)_containerObservesTextViewFrameChanges;
- (BOOL)containsPoint:(NSPoint)point;
- (BOOL)isSimpleRectangularTextContainer;
- (CGPoint)textContainerOrigin;
- (CGRect)lineFragmentRectForProposedRect:(CGRect)proposedRect atIndex:(NSUInteger)characterIndex writingDirection:(NSWritingDirection)baseWritingDirection remainingRect:(CGRect *)remainingRect;
- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect remainingRect:(CGRect *)remainingRect;
- (CGSize)size;
- (NSArray)exclusionPaths;
- (NSEdgeInsets)textContainerInsetsForView:(id)view;
- (NSEdgeInsets)textContainerInsetsForView_iOS:(id)s;
- (NSLayoutManager)layoutManager;
- (NSTextContainer)initWithCoder:(NSCoder *)coder;
- (NSTextContainer)initWithSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultParagraphStyle;
- (id)description;
- (id)linkTextAttributes;
- (id)markedTextAttributesAtCharacterIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)renderingColorForDocumentColor:(id)color;
- (id)selectedTextAttributes;
- (id)textHighlightRenderingAttributesForAttributes:(id)attributes;
- (id)textViewportLayoutController;
- (int64_t)layoutOrientation;
- (unint64_t)_textLength;
- (void)_appendTemporaryExclusionPathsForRects_iOS:(id)s;
- (void)_commonInit;
- (void)_containerTextViewFrameChanged:(id)changed;
- (void)_resizeAccordingToTextView:(id)view;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)replaceLayoutManager:(NSLayoutManager *)newLayoutManager;
- (void)setAttributesForExtraLineFragment:(id)fragment;
- (void)setExclusionPaths:(id)paths temporarily:(BOOL)temporarily;
- (void)setHeightTracksTextView:(BOOL)heightTracksTextView;
- (void)setLayoutManager:(NSLayoutManager *)layoutManager;
- (void)setLayoutOrientation:(int64_t)orientation;
- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode;
- (void)setLineFragmentPadding:(CGFloat)lineFragmentPadding;
- (void)setMaximumNumberOfLines:(NSUInteger)maximumNumberOfLines;
- (void)setSize:(CGSize)size;
- (void)setTextLayoutManager:(id)manager;
- (void)setTextView:(NSTextView *)textView;
@end

@implementation NSTextContainer

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    [self setVersion:1];
    __NSBaseLineFragmentIMP = [self instanceMethodForSelector:sel_lineFragmentRectForProposedRect_atIndex_writingDirection_remainingRect_];
  }
}

- (void)_commonInit
{
  self->_layoutManager = 0;
  self->_lineFragmentPadding = 5.0;
  *&self->_tcFlags &= 0xFFF8u;
  self->_minimumWidth = 15.0;
  self->_applicationFrameworkContext = _NSTextScalingTypeForCurrentEnvironment();
}

- (int64_t)layoutOrientation
{
  [(NSTextContainer *)self textView];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return self->_layoutOrientation;
  }

  textView = [(NSTextContainer *)self textView];

  return [(NSTextView *)textView layoutOrientation];
}

- (NSArray)exclusionPaths
{
  if (self->_exclusionPaths)
  {
    return self->_exclusionPaths;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)textViewportLayoutController
{
  objc_sync_enter(self);
  textViewportLayoutController = self->_textViewportLayoutController;
  if (!textViewportLayoutController)
  {
    v4 = objc_autoreleasePoolPush();
    self->_textViewportLayoutController = [(NSTextLayoutManager *)[(NSTextContainer *)self textLayoutManager] _textViewportLayoutControllerForTextContainer:self];
    objc_autoreleasePoolPop(v4);
    textViewportLayoutController = self->_textViewportLayoutController;
  }

  objc_sync_exit(self);
  return textViewportLayoutController;
}

- (id)defaultParagraphStyle
{
  if (!self->_textViewHasDefaultParagraphStyle || (result = [(NSTextContainerView *)self->_textView defaultParagraphStyle]) == 0)
  {

    return +[NSParagraphStyle defaultParagraphStyle];
  }

  return result;
}

- (BOOL)isSimpleRectangularTextContainer
{
  v3 = __NSBaseLineFragmentIMP;
  if (v3 != [(NSTextContainer *)self methodForSelector:sel_lineFragmentRectForProposedRect_atIndex_writingDirection_remainingRect_]|| (*&self->_tcFlags & 0x80) != 0 || [(NSArray *)[(NSTextContainer *)self exclusionPaths] count])
  {
    return 0;
  }

  if ([(NSTextContainer *)self maximumNumberOfLines])
  {
    return [(NSTextContainer *)self textLayoutManager]!= 0;
  }

  return 1;
}

- (NSLayoutManager)layoutManager
{
  if ([(NSTextContainer *)self _textViewAllowsMigratingToLayoutManager])
  {
    [(NSTextContainerView *)self->_textView reconfigureWithLayoutManager:0 triggeredBySelector:sel_layoutManager];
  }

  return self->_layoutManager;
}

- (void)dealloc
{
  p_textView = &self->_textView;
  [(NSTextContainerView *)self->_textView setTextContainer:0];
  objc_destroyWeak(p_textView);

  v4 = p_textView[8];
  if (v4)
  {
    CFRelease(v4);
  }

  cachedClippingAttributes = self->_cachedClippingAttributes;
  if (cachedClippingAttributes)
  {
    CFRelease(cachedClippingAttributes);
  }

  cachedBounds = self->_cachedBounds;
  if (cachedBounds)
  {
    CFRelease(cachedBounds);
  }

  [(NSTextContainer *)self setTextLayoutManager:0];
  v7.receiver = self;
  v7.super_class = NSTextContainer;
  [(NSTextContainer *)&v7 dealloc];
}

- (CGPoint)textContainerOrigin
{
  textView = [(NSTextContainer *)self textView];
  if (objc_opt_respondsToSelector())
  {
    [(NSTextView *)textView bounds];
    [(NSTextView *)textView textContainerFrameForBounds:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    [(NSTextView *)textView textContainerOrigin];
  }

  else
  {
    v3 = *MEMORY[0x1E696AA78];
    v4 = *(MEMORY[0x1E696AA78] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (NSEdgeInsets)textContainerInsetsForView_iOS:(id)s
{
  if (objc_opt_respondsToSelector())
  {
    [s textContainerInsets];
  }

  else if (objc_opt_respondsToSelector())
  {
    [s textContainerInset];
  }

  else
  {
    v4 = *MEMORY[0x1E696A2A0];
    v5 = *(MEMORY[0x1E696A2A0] + 8);
    v6 = *(MEMORY[0x1E696A2A0] + 16);
    v7 = *(MEMORY[0x1E696A2A0] + 24);
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)_appendTemporaryExclusionPathsForRects_iOS:(id)s
{
  v18 = *MEMORY[0x1E69E9840];
  if ([s count])
  {
    UIBezierPathClass = getUIBezierPathClass();
    if (UIBezierPathClass)
    {
      v6 = UIBezierPathClass;
      v7 = [(NSArray *)[(NSTextContainer *)self exclusionPaths] mutableCopy];
      v8 = objc_autoreleasePoolPush();
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [s countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(s);
            }

            [*(*(&v13 + 1) + 8 * v12) rectValue];
            [v7 addObject:{-[objc_class bezierPathWithRect:](v6, "bezierPathWithRect:")}];
            ++v12;
          }

          while (v10 != v12);
          v10 = [s countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }

      objc_autoreleasePoolPop(v8);
      [(NSTextContainer *)self setExclusionPaths:v7 temporarily:1];
    }
  }
}

- (NSTextContainer)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = NSTextContainer;
  v5 = [(NSTextContainer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NSTextContainer *)v5 _commonInit];
    v6->_size.width = width;
    v6->_size.height = height;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    tcFlags = self->_tcFlags;
    [coder encodeObject:self->_layoutManager forKey:@"NSLayoutManager"];
    [coder encodeObject:self->_textLayoutManager forKey:@"NSTextLayoutManager"];
    width = self->_size.width;
    height = self->_size.height;
    if (width > 0.0 && width < 10000000.0)
    {
      [coder encodeDouble:@"NSWidth" forKey:?];
    }

    if (height > 0.0 && height < 10000000.0)
    {
      [coder encodeDouble:@"NSHeight" forKey:height];
    }

    if (self->_lineFragmentPadding != 5.0)
    {
      [coder encodeDouble:@"NSPadding" forKey:?];
    }

    if (self->_minimumWidth != 0.0)
    {
      [coder encodeDouble:@"NSMinWidth" forKey:?];
    }

    [coder encodeInt:tcFlags & 3 forKey:@"NSTCFlags"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ *** NSTextContainer does not support non-keyed coding.", _NSFullMethodName()}];
  }
}

- (NSTextContainer)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    [(NSTextContainer *)self _commonInit];
    self->_size = vdupq_n_s64(0x416312D000000000uLL);
    v5 = [(NSCoder *)coder decodeIntForKey:@"NSTCFlags"];
    if ([(NSCoder *)coder containsValueForKey:@"NSWidth"])
    {
      [(NSCoder *)coder decodeDoubleForKey:@"NSWidth"];
      self->_size.width = v6;
    }

    if ([(NSCoder *)coder containsValueForKey:@"NSHeight"])
    {
      [(NSCoder *)coder decodeDoubleForKey:@"NSHeight"];
      self->_size.height = v7;
    }

    if ([(NSCoder *)coder containsValueForKey:@"NSPadding"])
    {
      [(NSCoder *)coder decodeDoubleForKey:@"NSPadding"];
      self->_lineFragmentPadding = v8;
    }

    v9 = [(NSCoder *)coder containsValueForKey:@"NSMinWidth"];
    v10 = 0.0;
    if (v9)
    {
      [(NSCoder *)coder decodeDoubleForKey:@"NSMinWidth", 0.0];
    }

    self->_minimumWidth = v10;
    [(NSTextContainer *)self setWidthTracksTextView:v5 & 1];
    [(NSTextContainer *)self setHeightTracksTextView:(v5 >> 1) & 1];
    self->_layoutManager = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSLayoutManager"];
    [(NSTextContainer *)self setTextLayoutManager:[(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSTextLayoutManager"]];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ *** NSTextContainer does not support non-keyed coding.", _NSFullMethodName()}];
  }

  return self;
}

- (void)setTextLayoutManager:(id)manager
{
  textLayoutManager = self->_textLayoutManager;
  p_textLayoutManager = &self->_textLayoutManager;
  if (textLayoutManager != manager)
  {
    objc_storeWeak(p_textLayoutManager, manager);
    if (manager)
    {
      applicationFrameworkContext = [manager applicationFrameworkContext];
      self->_layoutManager = 0;
    }

    else
    {
      applicationFrameworkContext = _NSTextScalingTypeForCurrentEnvironment();
    }

    self->_applicationFrameworkContext = applicationFrameworkContext;
    objc_sync_enter(self);
    textViewportLayoutController = self->_textViewportLayoutController;
    self->_textViewportLayoutController = 0;

    objc_sync_exit(self);
  }

  if ([(NSTextContainerView *)self->_textView textContainer]== self)
  {
    textView = self->_textView;

    [(NSTextContainerView *)textView setTextContainer:self];
  }
}

- (void)setLayoutManager:(NSLayoutManager *)layoutManager
{
  if ([(NSTextContainer *)self _textViewAllowsMigratingToLayoutManager])
  {
    [(NSTextContainerView *)self->_textView reconfigureWithLayoutManager:0 triggeredBySelector:sel_layoutManager];
  }

  self->_layoutManager = layoutManager;
  if (layoutManager)
  {
    self->_applicationFrameworkContext = [(NSLayoutManager *)layoutManager applicationFrameworkContext];
    objc_storeWeak(&self->_textLayoutManager, 0);
  }

  else
  {
    self->_applicationFrameworkContext = _NSTextScalingTypeForCurrentEnvironment();
  }

  if ([(NSTextContainerView *)self->_textView textContainer]== self)
  {
    textView = self->_textView;

    [(NSTextContainerView *)textView setTextContainer:self];
  }
}

- (void)replaceLayoutManager:(NSLayoutManager *)newLayoutManager
{
  if (!newLayoutManager)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** %@: nil NSLayoutManager given.  You must supply a NSLayoutManager.", NSStringFromSelector(a2)}];
  }

  layoutManager = self->_layoutManager;
  if (layoutManager)
  {
    textContainers = [(NSLayoutManager *)layoutManager textContainers];
    v7 = [(NSArray *)textContainers count];
    textStorage = [(NSLayoutManager *)self->_layoutManager textStorage];
    if (textStorage)
    {
      v9 = textStorage;
      v10 = textStorage;
      [(NSTextStorage *)v9 removeLayoutManager:self->_layoutManager];
      [(NSTextStorage *)v9 addLayoutManager:newLayoutManager];
    }

    while (v7)
    {
      --v7;
      v11 = [(NSArray *)textContainers objectAtIndex:0];
      [(NSLayoutManager *)self->_layoutManager removeTextContainerAtIndex:0];
      [(NSLayoutManager *)newLayoutManager addTextContainer:v11];
    }
  }

  else if (self->_textLayoutManager)
  {
    if ([(NSTextContainer *)self _textViewAllowsMigratingToLayoutManager])
    {
      textView = self->_textView;

      [(NSTextContainerView *)textView reconfigureWithLayoutManager:newLayoutManager triggeredBySelector:sel_replaceLayoutManager_];
    }

    else
    {
      textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
      selfCopy = self;
      if (!textContentManager || (objc_opt_respondsToSelector() & 1) == 0 || (v15 = [(NSTextContentManager *)textContentManager textStorage]) == 0)
      {
        v15 = objc_alloc_init(NSTextStorage);
      }

      [(NSTextContainer *)self setTextLayoutManager:0];
      [(NSTextStorage *)v15 addLayoutManager:newLayoutManager];
      [(NSLayoutManager *)newLayoutManager addTextContainer:self];

      v16 = v15;
    }
  }

  else
  {

    [(NSLayoutManager *)newLayoutManager addTextContainer:self];
  }
}

- (void)setTextView:(NSTextView *)textView
{
  p_textView = &self->_textView;
  v5 = self->_textView;
  [(NSTextContainerView *)v5 setTextContainer:0];
  v7 = objc_storeWeak(p_textView, textView);
  *p_textView = v7;
  [(NSTextContainerView *)v7 setTextContainer:self];
  if (objc_opt_respondsToSelector())
  {
    [(NSTextView *)textView setTextContainer:self];
  }

  layoutManager = self->_layoutManager;
  if (layoutManager)
  {
    [(NSLayoutManager *)layoutManager textContainerChangedTextView:self fromTextView:v5];
  }

  if (textView)
  {
    [(NSTextContainer *)self _resizeAccordingToTextView:textView];
  }

  self->_textViewSupportsAdaptiveColor = objc_opt_respondsToSelector() & 1;
  self->_textViewSupportsDowngrade = objc_opt_respondsToSelector() & 1;
  self->_textViewHasDefaultParagraphStyle = objc_opt_respondsToSelector() & 1;
  self->_textViewHasLinkTextAttributes = objc_opt_respondsToSelector() & 1;
  self->_textViewHasHighlightAttributes = objc_opt_respondsToSelector() & 1;
}

- (void)setHeightTracksTextView:(BOOL)heightTracksTextView
{
  if (heightTracksTextView)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_tcFlags = *&self->_tcFlags & 0xFFFD | v3;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!NSEqualSizes(self->_size, size))
  {
    textLayoutManager = [(NSTextContainer *)self textLayoutManager];
    if (textLayoutManager)
    {
      delegate = 0;
      layoutManager = 0;
    }

    else
    {
      layoutManager = [(NSTextContainer *)self layoutManager];
      delegate = [(NSLayoutManager *)layoutManager delegate];
    }

    v9 = self->_size.width;
    v10 = self->_size.height;
    self->_size.width = width;
    self->_size.height = height;
    cachedBoundingPath = self->_cachedBoundingPath;
    if (cachedBoundingPath)
    {
      CFRelease(cachedBoundingPath);
      self->_cachedBoundingPath = 0;
    }

    cachedBounds = self->_cachedBounds;
    if (cachedBounds)
    {
      CFRelease(cachedBounds);
      self->_cachedBounds = 0;
    }

    if (!textLayoutManager)
    {
      [(NSLayoutManager *)layoutManager textContainerChangedGeometry:self];
    }

    [(NSTextLayoutManager *)[(NSTextContainer *)self textLayoutManager] textContainerChangedGeometry:self];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {

      [delegate layoutManager:layoutManager textContainer:self didChangeGeometryFromSize:{v9, v10}];
    }
  }
}

- (void)setLineFragmentPadding:(CGFloat)lineFragmentPadding
{
  if (self->_lineFragmentPadding != lineFragmentPadding)
  {
    self->_lineFragmentPadding = lineFragmentPadding;
    if ([(NSTextContainer *)self textLayoutManager])
    {
      textLayoutManager = [(NSTextContainer *)self textLayoutManager];
    }

    else
    {
      textLayoutManager = [(NSTextContainer *)self layoutManager];
    }

    [(NSTextLayoutManager *)textLayoutManager textContainerChangedGeometry:self];
  }
}

- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode
{
  if (((*&self->_tcFlags >> 3) & 0xF) != lineBreakMode)
  {
    textLayoutManager = [(NSTextContainer *)self textLayoutManager];
    if (textLayoutManager)
    {
      layoutManager = 0;
    }

    else
    {
      layoutManager = [(NSTextContainer *)self layoutManager];
    }

    v7 = 8 * (lineBreakMode & 0xF);
    if (lineBreakMode > NSLineBreakByTruncatingMiddle)
    {
      v7 = 0;
    }

    *&self->_tcFlags = *&self->_tcFlags & 0xFF87 | v7;
    if (textLayoutManager)
    {

      [(NSTextLayoutManager *)textLayoutManager textContainerChangedGeometry:self];
    }

    else
    {
      if ([(NSTextStorage *)[(NSLayoutManager *)layoutManager textStorage] length])
      {
        textContainers = [(NSLayoutManager *)layoutManager textContainers];
        v15 = 0;
        v16 = 0;
        v9 = [(NSLayoutManager *)layoutManager textContainerForGlyphAtIndex:0 effectiveRange:&v15 withoutAdditionalLayout:1];
        if (v9)
        {
          v10 = v9;
          if ([(NSArray *)textContainers count]&& v10 != self)
          {
            v11 = v15;
            do
            {
              v12 = [(NSLayoutManager *)layoutManager textContainerForGlyphAtIndex:v11 effectiveRange:&v15 withoutAdditionalLayout:1];
              v10 = v12;
              v11 = v16 + v15;
              v15 += v16;
            }

            while (v12 && v12 != self);
          }

          textView = [(NSTextContainer *)v10 textView];
          if (textView)
          {
            v14 = textView;
            [(NSTextView *)textView bounds];
            [(NSTextView *)v14 setNeedsDisplayInRect:0 avoidAdditionalLayout:?];
          }
        }
      }

      [(NSLayoutManager *)layoutManager textContainerChangedGeometry:self];
    }
  }
}

- (void)setAttributesForExtraLineFragment:(id)fragment
{
  if (([fragment isEqualToDictionary:self->_attributesForExtraLineFragment] & 1) == 0)
  {
    textLayoutManager = [(NSTextContainer *)self textLayoutManager];
    v6 = textLayoutManager;
    v7 = textLayoutManager ? [(NSTextLayoutManager *)textLayoutManager textContainer]: [(NSLayoutManager *)self->_layoutManager extraLineFragmentTextContainer];
    v8 = v7;
    v9 = [fragment copyWithZone:0];

    self->_attributesForExtraLineFragment = v9;
    if (v8 == self)
    {
      if (v6)
      {
        if (![(NSArray *)[(NSTextLayoutManager *)v6 textSelections] count])
        {
          endLocation = [(NSTextRange *)[(NSTextContentManager *)[(NSTextLayoutManager *)v6 textContentManager] documentRange] endLocation];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __53__NSTextContainer_setAttributesForExtraLineFragment___block_invoke;
          v12[3] = &unk_1E72660A8;
          v12[4] = self;
          [(NSTextLayoutManager *)v6 enumerateTextLayoutFragmentsFromLocation:endLocation options:1 usingBlock:v12];
          [(NSTextLayoutManager *)v6 _invalidateTextParagraphForEmptyDocument];
        }
      }

      else
      {
        [(NSLayoutManager *)self->_layoutManager extraLineFragmentRect];
        if (!NSEqualRects(v14, *MEMORY[0x1E696AA80]))
        {
          layoutManager = self->_layoutManager;

          [(NSLayoutManager *)layoutManager textContainerChangedGeometry:self];
        }
      }
    }
  }
}

uint64_t __53__NSTextContainer_setAttributesForExtraLineFragment___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 state] == 3)
  {
    v4 = [a2 extraLineFragmentAttributes];
    if (v4)
    {
      if (([v4 isEqualToDictionary:*(*(a1 + 32) + 136)] & 1) == 0)
      {
        [a2 invalidateLayout];
      }
    }
  }

  return 0;
}

- (void)setExclusionPaths:(id)paths temporarily:(BOOL)temporarily
{
  if (![(NSArray *)self->_exclusionPaths isEqualToArray:?])
  {
    textLayoutManager = [(NSTextContainer *)self textLayoutManager];
    if (textLayoutManager)
    {
      layoutManager = 0;
    }

    else
    {
      layoutManager = [(NSTextContainer *)self layoutManager];
    }

    self->_exclusionPaths = [paths copy];
    cachedClippingAttributes = self->_cachedClippingAttributes;
    if (cachedClippingAttributes)
    {
      CFRelease(cachedClippingAttributes);
      self->_cachedClippingAttributes = 0;
    }

    cachedBounds = self->_cachedBounds;
    if (cachedBounds)
    {
      CFRelease(cachedBounds);
      self->_cachedBounds = 0;
    }

    if (!temporarily)
    {
      if (textLayoutManager)
      {

        [(NSTextLayoutManager *)textLayoutManager textContainerChangedGeometry:self];
      }

      else
      {
        if ([(NSTextStorage *)[(NSLayoutManager *)layoutManager textStorage] length])
        {
          textContainers = [(NSLayoutManager *)layoutManager textContainers];
          v18 = 0;
          v19 = 0;
          v12 = [(NSLayoutManager *)layoutManager textContainerForGlyphAtIndex:0 effectiveRange:&v18 withoutAdditionalLayout:1];
          if (v12)
          {
            v13 = v12;
            if ([(NSArray *)textContainers count]&& v13 != self)
            {
              v14 = v18;
              do
              {
                v15 = [(NSLayoutManager *)layoutManager textContainerForGlyphAtIndex:v14 effectiveRange:&v18 withoutAdditionalLayout:1];
                v13 = v15;
                v14 = v19 + v18;
                v18 += v19;
              }

              while (v15 && v15 != self);
            }

            textView = [(NSTextContainer *)v13 textView];
            if (textView)
            {
              v17 = textView;
              [(NSTextView *)textView bounds];
              [(NSTextView *)v17 setNeedsDisplayInRect:0 avoidAdditionalLayout:?];
            }
          }
        }

        [(NSLayoutManager *)layoutManager textContainerChangedGeometry:self];
      }
    }
  }
}

- (void)setMaximumNumberOfLines:(NSUInteger)maximumNumberOfLines
{
  if (self->_maximumLines != maximumNumberOfLines)
  {
    self->_maximumLines = maximumNumberOfLines;
    textLayoutManager = [(NSTextContainer *)self textLayoutManager];
    if (!textLayoutManager)
    {
      textLayoutManager = [(NSTextContainer *)self layoutManager];
    }

    [(NSTextLayoutManager *)textLayoutManager textContainerChangedGeometry:self];
  }
}

- (CGRect)lineFragmentRectForProposedRect:(CGRect)proposedRect atIndex:(NSUInteger)characterIndex writingDirection:(NSWritingDirection)baseWritingDirection remainingRect:(CGRect *)remainingRect
{
  height = proposedRect.size.height;
  width = proposedRect.size.width;
  y = proposedRect.origin.y;
  x = proposedRect.origin.x;
  v13 = self->_size.width;
  v14 = self->_size.height;
  v78 = *(MEMORY[0x1E696AA80] + 8);
  v79 = *MEMORY[0x1E696AA80];
  v80 = *(MEMORY[0x1E696AA80] + 16);
  v75 = *(MEMORY[0x1E696AA80] + 24);
  v89.origin.x = 0.0;
  v89.origin.y = 0.0;
  v89.size.width = v13;
  v89.size.height = v14;
  v15 = CGRectGetWidth(v89);
  v16 = v15 >= 10000000.0 || v15 <= 0.0;
  v90.origin.x = 0.0;
  v90.origin.y = 0.0;
  v90.size.width = v13;
  v90.size.height = v14;
  v17 = CGRectGetHeight(v90);
  v18 = v17 >= 10000000.0 || v17 <= 0.0;
  if (v16)
  {
    v19 = width;
  }

  else
  {
    v19 = v13;
  }

  if (v16)
  {
    v20 = x;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = y + 0.0 - y;
  if (y >= 0.0)
  {
    v21 = y;
  }

  if (v18)
  {
    v22 = y;
  }

  else
  {
    v22 = 0.0;
  }

  if (v18)
  {
    v23 = y;
  }

  else
  {
    v23 = v21;
  }

  v26 = NSTCIntersectionRect(x, v23, width, height, v20, v22, v19);
  v28 = v27;
  if (height - v25 <= 0.0001)
  {
    v32 = v24;
    v29 = v25;
    v33 = v78;
    v31 = v79;
    v30 = v80;
  }

  else
  {
    v29 = v75;
    v31 = v79;
    v30 = v80;
    v32 = v80;
    v33 = v78;
    v28 = v78;
    v26 = v79;
  }

  v91.origin.x = v26;
  v91.origin.y = v28;
  v91.size.width = v32;
  v91.size.height = v29;
  if (NSIsEmptyRect(v91) || ![(NSArray *)self->_exclusionPaths count])
  {
    v43 = v31;
    if (!remainingRect)
    {
      goto LABEL_81;
    }

LABEL_80:
    remainingRect->origin.x = v43;
    remainingRect->origin.y = v33;
    remainingRect->size.width = v30;
    remainingRect->size.height = v75;
    goto LABEL_81;
  }

  memset(&rect, 0, sizeof(rect));
  [(NSTextContainer *)self minimumLineFragmentWidth];
  v35 = v30;
  if (v34 <= v32)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = v31;
  v38 = v33;
  v39 = v75;
  v40 = v75;
  if (NSIsEmptyRect(*(&v35 - 2)))
  {
    v77 = v32;
    v41 = 0;
    v42 = 0;
    v76 = v26;
    v26 = v31;
    v43 = v31;
    v44 = v33;
    v32 = v80;
    v45 = v33;
    v73 = v80;
    v74 = v75;
    do
    {
      cacheBoundsMinY = v45;
      v72 = v43;
      while (1)
      {
        if (!v18 && v28 > self->_size.height)
        {
          goto LABEL_86;
        }

        cachedBounds = self->_cachedBounds;
        if (cachedBounds && v28 == self->_cacheBoundsMinY && v29 + v28 == self->_cacheBoundsMaxY)
        {
          goto LABEL_49;
        }

        if (!self->_cachedBoundingPath)
        {
          v47 = 10000000.0;
          if (v16)
          {
            v48 = 10000000.0;
          }

          else
          {
            v48 = self->_size.width;
          }

          if (!v18)
          {
            v47 = self->_size.height;
          }

          v49 = 0;
          v50 = 0;
          self->_cachedBoundingPath = CGPathCreateWithRect(*(&v47 - 3), 0);
        }

        if (!self->_cachedClippingAttributes)
        {
          exclusionPaths = [(NSTextContainer *)self exclusionPaths];
          Count = CFArrayGetCount(exclusionPaths);
          v83 = 0.0;
          v84 = &v83;
          v85 = 0x3052000000;
          v86 = __Block_byref_object_copy__13;
          v87 = __Block_byref_object_dispose__13;
          v88 = 0;
          Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = ____NSCreateClippingAttributesForExclusionPaths_block_invoke;
          v82[3] = &unk_1E7267E38;
          v82[4] = &v83;
          v82[5] = Mutable;
          [(NSArray *)exclusionPaths enumerateObjectsUsingBlock:v82];

          _Block_object_dispose(&v83, 8);
          self->_cachedClippingAttributes = Mutable;
        }

        self->_cacheBoundsMinY = v28;
        self->_cacheBoundsMaxY = v29 + v28;
        v54 = self->_cachedBounds;
        if (v54)
        {
          CFRelease(v54);
        }

        cachedBounds = CTFramesetterCreateCGRectArray();
        self->_cachedBounds = cachedBounds;
        if (cachedBounds)
        {
LABEL_49:
          v41 = CFArrayGetCount(cachedBounds);
          v42 = 0;
        }

        if (v42 < v41)
        {
          v55 = ~v42 + v41;
          do
          {
            if (baseWritingDirection)
            {
              v56 = v55;
            }

            else
            {
              v56 = v42;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(self->_cachedBounds, v56);
            CGRectMakeWithDictionaryRepresentation(ValueAtIndex, &rect);
            v58 = NSTCIntersectionRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v76, v28, v77);
            v44 = v78;
            v26 = v79;
            v32 = v80;
            v39 = v75;
            if (v60 >= v36)
            {
              v26 = v58;
              v44 = v59;
              v32 = v60;
              v39 = v61;
            }

            ++v42;
            v92.origin.x = v26;
            v92.origin.y = v44;
            v92.size.width = v32;
            v92.size.height = v39;
            if (!NSIsEmptyRect(v92))
            {
              break;
            }

            --v55;
          }

          while (v42 < v41);
        }

        v93.origin.x = v26;
        v93.origin.y = v44;
        v93.size.width = v32;
        v93.size.height = v39;
        if (!NSIsEmptyRect(v93))
        {
          break;
        }

        v83 = 0.0;
        if (v36 <= 0.0 || !CTFramesetterFindRectPosition() || (v28 = v83, v83 == self->_cacheBoundsMinY))
        {
          v70 = self->_cachedBounds;
          if (v70)
          {
            CFRelease(v70);
          }

          self->_cachedBounds = 0;
LABEL_86:
          v45 = cacheBoundsMinY;
          v43 = v72;
          goto LABEL_87;
        }

        v94.origin.x = v26;
        v94.origin.y = v44;
        v94.size.width = v32;
        v94.size.height = v39;
        if (!NSIsEmptyRect(v94))
        {
          goto LABEL_86;
        }
      }

      if (remainingRect && v42 < v41)
      {
        v62 = baseWritingDirection ? v41 + ~v42 : v42;
        v63 = CFArrayGetValueAtIndex(self->_cachedBounds, v62);
        CGRectMakeWithDictionaryRepresentation(v63, &rect);
        if (!NSIsEmptyRect(rect))
        {
          v74 = self->_cacheBoundsMaxY - self->_cacheBoundsMinY;
          cacheBoundsMinY = self->_cacheBoundsMinY;
          if (baseWritingDirection)
          {
            v73 = rect.origin.x + rect.size.width;
            v72 = 0.0;
          }

          else
          {
            v72 = rect.origin.x;
            if (v16)
            {
              v64 = 10000000.0;
            }

            else
            {
              v64 = self->_size.width - rect.origin.x;
            }

            v73 = v64;
          }
        }
      }

      v28 = v29 + v28;
      v95.origin.x = v26;
      v95.origin.y = v44;
      v95.size.width = v32;
      v95.size.height = v39;
      v65 = NSIsEmptyRect(v95);
      v45 = cacheBoundsMinY;
      v43 = v72;
    }

    while (v65);
  }

  else
  {
    v32 = v80;
    v73 = v80;
    v74 = v75;
    v45 = v33;
    v43 = v31;
    v26 = v31;
    v44 = v33;
  }

LABEL_87:
  v30 = v73;
  v75 = v74;
  v33 = v45;
  v29 = v39;
  v28 = v44;
  if (remainingRect)
  {
    goto LABEL_80;
  }

LABEL_81:
  v66 = v26;
  v67 = v28;
  v68 = v32;
  v69 = v29;
  result.size.height = v69;
  result.size.width = v68;
  result.origin.y = v67;
  result.origin.x = v66;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSTextContainer allocWithZone:zone];
  [(NSTextContainer *)self size];
  v5 = [(NSTextContainer *)v4 initWithSize:?];
  [(NSTextContainer *)v5 setExclusionPaths:[(NSTextContainer *)self exclusionPaths]];
  [(NSTextContainer *)v5 setLineBreakMode:[(NSTextContainer *)self lineBreakMode]];
  [(NSTextContainer *)self lineFragmentPadding];
  [(NSTextContainer *)v5 setLineFragmentPadding:?];
  [(NSTextContainer *)v5 setMaximumNumberOfLines:[(NSTextContainer *)self maximumNumberOfLines]];
  [(NSTextContainer *)v5 setWidthTracksTextView:[(NSTextContainer *)self widthTracksTextView]];
  [(NSTextContainer *)v5 setHeightTracksTextView:[(NSTextContainer *)self heightTracksTextView]];
  return v5;
}

- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect remainingRect:(CGRect *)remainingRect
{
  [(NSTextContainer *)self lineFragmentRectForProposedRect:0 atIndex:0 writingDirection:remainingRect remainingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)containsPoint:(NSPoint)point
{
  width = self->_size.width;
  height = self->_size.height;
  v5 = width <= 0.0;
  if (width >= 10000000.0)
  {
    v5 = 1;
  }

  v6 = height <= 0.0;
  if (height >= 10000000.0)
  {
    v6 = 1;
  }

  if ((v5 & 1) != 0 || v6)
  {
    if (v5 == v6)
    {
      return 1;
    }

    else if (v5)
    {
      return point.y < height;
    }

    else
    {
      return point.x < width;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    return NSPointInRect(point, *(&width - 2));
  }
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  [(NSTextContainer *)self textView];
  if (objc_opt_respondsToSelector())
  {
    textView = [(NSTextContainer *)self textView];

    [(NSTextView *)textView setLayoutOrientation:orientation];
  }

  else
  {
    self->_layoutOrientation = orientation;
  }
}

- (id)renderingColorForDocumentColor:(id)color
{
  if (self->_textViewSupportsAdaptiveColor)
  {
    result = [(NSTextContainerView *)self->_textView renderingColorForDocumentColor:color];
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    return color;
  }

  return result;
}

- (id)selectedTextAttributes
{
  textView = [(NSTextContainer *)self textView];
  if (objc_opt_respondsToSelector())
  {
    result = [(NSTextView *)textView selectedTextAttributes];
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    return MEMORY[0x1E695E0F8];
  }

  return result;
}

- (unint64_t)_textLength
{
  if ([(NSTextContainer *)self textLayoutManager])
  {
    documentRange = [(NSTextContentManager *)[(NSTextLayoutManager *)[(NSTextContainer *)self textLayoutManager] textContentManager] documentRange];
    textContentManager = [(NSTextLayoutManager *)[(NSTextContainer *)self textLayoutManager] textContentManager];
    location = [(NSTextRange *)documentRange location];
    endLocation = [(NSTextRange *)documentRange endLocation];

    return [(NSTextContentManager *)textContentManager offsetFromLocation:location toLocation:endLocation];
  }

  else if ([(NSTextContainer *)self layoutManager])
  {
    textStorage = [(NSLayoutManager *)[(NSTextContainer *)self layoutManager] textStorage];

    return [(NSTextStorage *)textStorage length];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)markedTextAttributesAtCharacterIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  textView = [(NSTextContainer *)self textView];
  v19 = 0;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_19;
  }

  markedRange = [(NSTextView *)textView markedRange];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = markedRange;
  v11 = v9;
  v12 = index - markedRange;
  if (index < markedRange || v12 >= v9)
  {
    v16 = markedRange - index;
    if (markedRange > index)
    {
      result = 0;
      v19.location = index;
    }

    else
    {
      _textLength = [(NSTextContainer *)self _textLength];
      if (_textLength == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }

      v18 = _textLength;
      result = 0;
      v16 = v18 - (v10 + v11);
      v19.location = v10 + v11;
    }

    v19.length = v16;
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    attributedSubstringForMarkedRange = [(NSTextView *)textView attributedSubstringForMarkedRange];
    if (attributedSubstringForMarkedRange)
    {
      v14 = attributedSubstringForMarkedRange;
      if (v11 == [attributedSubstringForMarkedRange length])
      {
        result = [v14 attributesAtIndex:v12 effectiveRange:&v19];
        v19.location += v10;
        goto LABEL_20;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    result = [(NSTextView *)textView markedTextAttributes];
LABEL_18:
    v19.location = v10;
    v19.length = v11;
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    result = [(NSTextView *)textView markedTextStyle];
    goto LABEL_18;
  }

LABEL_19:
  result = 0;
LABEL_20:
  if (range)
  {
    *range = v19;
  }

  if (!result)
  {
    return MEMORY[0x1E695E0F8];
  }

  return result;
}

- (id)linkTextAttributes
{
  if (self->_textViewHasLinkTextAttributes)
  {
    return [(NSTextContainerView *)self->_textView linkTextAttributes];
  }

  else
  {
    return 0;
  }
}

- (id)textHighlightRenderingAttributesForAttributes:(id)attributes
{
  if (self->_textViewHasHighlightAttributes)
  {
    return [(NSTextContainerView *)self->_textView textHighlightRenderingAttributesForAttributes:attributes];
  }

  else
  {
    return 0;
  }
}

- (void)_resizeAccordingToTextView:(id)view
{
  if ((*&self->_tcFlags & 3) != 0)
  {
    width = self->_size.width;
    height = self->_size.height;
    [(NSTextContainer *)self textContainerInsetsForView:?];
    v11 = v10;
    v13 = v12;
    tcFlags = self->_tcFlags;
    if (tcFlags)
    {
      v15 = v8;
      v16 = v9;
      [view bounds];
      width = v17 - (v15 + v16);
      tcFlags = self->_tcFlags;
    }

    if ((tcFlags & 2) != 0)
    {
      [view bounds];
      height = v18 - (v11 + v13);
    }

    [(NSTextContainer *)self setSize:width, height];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  width = self->_size.width;
  v7 = width;
  tcFlags = self->_tcFlags;
  if (tcFlags)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ((tcFlags & 2) != 0)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  height = self->_size.height;
  return [v3 stringWithFormat:@"<%@: %p size = (%f, %f); widthTracksTextView = %@; heightTracksTextView = %@>; exclusionPaths = %p; lineBreakMode = %ld", v5, self, *&v7, height, v10, v11, -[NSTextContainer exclusionPaths](self, "exclusionPaths"), -[NSTextContainer lineBreakMode](self, "lineBreakMode")];
}

- (BOOL)_containerObservesTextViewFrameChanges
{
  if (self->_applicationFrameworkContext == 2)
  {
    return (*&self->_tcFlags >> 2) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)_containerTextViewFrameChanged:(id)changed
{
  if (self->_applicationFrameworkContext == 2)
  {
    if (self->_textView)
    {
      [(NSTextContainer *)self _resizeAccordingToTextView:?];
    }
  }
}

- (NSEdgeInsets)textContainerInsetsForView:(id)view
{
  if (self->_applicationFrameworkContext == 2)
  {
    [(NSTextContainer *)self textContainerInsetsForView_macOS:view];
  }

  else
  {
    [(NSTextContainer *)self textContainerInsetsForView_iOS:view];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end