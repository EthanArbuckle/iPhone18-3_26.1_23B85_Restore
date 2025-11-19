@interface _UITextContainerView
- (BOOL)_ensureLayoutForCappedSize;
- (BOOL)_shouldCapSizeToFitLayoutRange:(_NSRange *)a3;
- (BOOL)hasOverriddenEnclosingScrollView;
- (BOOL)isEditable;
- (BOOL)isEditing;
- (BOOL)reconfigureWithLayoutManager:(id)a3 triggeredBySelector:(SEL)a4;
- (CGPoint)drawingScale;
- (CGPoint)textContainerOrigin;
- (CGRect)_clipRectForFadedEdges;
- (CGRect)visibleRect;
- (CGSize)maxSize;
- (CGSize)minSize;
- (NSCustomTextRendering)customRenderController;
- (NSDictionary)markedTextStyle;
- (NSDictionary)textHighlightAttributes;
- (NSLayoutManager)layoutManager;
- (NSString)description;
- (NSTextContainer)textContainer;
- (UIColor)textColor;
- (UIEdgeInsets)textContainerInset;
- (UIScrollView)enclosingScrollView;
- (UIView)selectionContainerView;
- (_NSRange)markedRange;
- (_UIAnimatedTextLayoutInfo)uniqueWritingToolsAnimatedLayoutInfo;
- (_UITextContainerView)initWithFrame:(CGRect)a3 textLayoutController:(id)a4 textContainer:(id)a5 delegate:(id)a6;
- (_UITextContainerViewDelegate)delegate;
- (_UITextEmphasisBackgroundView)textEmphasisBackgroundView;
- (id)attributedSubstringForMarkedRange;
- (id)layoutManager:(id)a3 effectiveCUICatalogForTextEffect:(id)a4;
- (id)linkAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4;
- (id)linkTextAttributes;
- (id)textHighlightRenderingAttributesForAttributes:(id)a3;
- (void)_ensureLayoutCompleteForRect:(CGRect)a3;
- (void)_ensureLayoutCompleteToEndOfCharacterRange:(_NSRange)a3;
- (void)_ensureMinAndMaxSizesConsistentWithBounds;
- (void)_setFrameOrBounds:(CGRect)a3 oldRect:(CGRect)a4 isFrameRect:(BOOL)a5 settingAction:(id)a6;
- (void)_setFreezeTextContainerSize:(BOOL)a3;
- (void)_sizeToConstrainedContainerUsedRect;
- (void)_textKit2CanvasDidLayout;
- (void)_updateInteractionGeometry;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setConstrainedFrameSize:(CGSize)a3;
- (void)setEnclosingScrollView:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHorizontallyResizable:(BOOL)a3;
- (void)setLayoutOrientation:(int64_t)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3 avoidAdditionalLayout:(BOOL)a4;
- (void)setSelectionContainerView:(id)a3;
- (void)setTextContainerInset:(UIEdgeInsets)a3;
- (void)setTextEmphasisBackgroundView:(id)a3 withTextView:(id)a4;
- (void)setTextHighlightAttributes:(id)a3;
- (void)setUniqueWritingToolsAnimatedLayoutInfo:(id)a3;
- (void)setUsesStandardTextScaling:(BOOL)a3;
- (void)setVerticallyResizable:(BOOL)a3;
- (void)sizeToFit;
- (void)tintColorDidChange;
- (void)updateInsertionPointStateAndRestartTimer:(BOOL)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation _UITextContainerView

- (void)_sizeToConstrainedContainerUsedRect
{
  v3 = [(_UITextContainerView *)self textContainer];
  if (v3)
  {
    v9 = v3;
    [(_UITextLayoutController *)self->_textLayoutController usedRectForTextContainer:v3];
    v5 = v4 + self->_textContainerInset.left + self->_textContainerInset.right;
    v7 = v6 + self->_textContainerInset.top + self->_textContainerInset.bottom;
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [(UIView *)self convertSize:WeakRetained toView:v5, v7];
    [(_UITextContainerView *)self setConstrainedFrameSize:?];

    v3 = v9;
  }
}

- (UIView)selectionContainerView
{
  if (_UITextViewAllowSelectionContainerInTextLayoutCanvas() && (WeakRetained = objc_loadWeakRetained(&self->_textContainer), [WeakRetained textLayoutManager], v4 = objc_claimAutoreleasedReturnValue(), v4, WeakRetained, v4))
  {
    v5 = [(_UITextCanvas *)self->_canvasView selectionContainerView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_ensureMinAndMaxSizesConsistentWithBounds
{
  [(UIView *)self bounds];
  if (self->_minSize.width > v3)
  {
    self->_minSize.width = v3;
  }

  if (self->_maxSize.width < v3)
  {
    self->_maxSize.width = v3;
  }

  if (self->_maxSize.height < v4)
  {
    self->_maxSize.height = v4;
  }
}

- (NSTextContainer)textContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainer);

  return WeakRetained;
}

- (UIEdgeInsets)textContainerInset
{
  top = self->_textContainerInset.top;
  left = self->_textContainerInset.left;
  bottom = self->_textContainerInset.bottom;
  right = self->_textContainerInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)textContainerOrigin
{
  if (*&self->_tcvFlags)
  {
    v3 = [(_UITextContainerView *)self textContainer];
    if (v3)
    {
      [(_UITextLayoutController *)self->_textLayoutController usedRectForTextContainer:v3];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [(UIView *)self bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v3 size];
      top = self->_textContainerInset.top;
      left = self->_textContainerInset.left;
      v24 = v9 + left + self->_textContainerInset.right;
      v25 = v11 + top + self->_textContainerInset.bottom;
      if (v24 >= v17)
      {
        v31 = v13 + left - v5;
      }

      else
      {
        v26 = v17 - v24;
        v27 = v20 - (v5 + v9);
        if (v26 + 0.001 >= v5 + v27)
        {
          v31 = v13 + left;
        }

        else
        {
          v28 = v26 * 0.5;
          if (v26 * 0.5 > v5 || v28 > v27)
          {
            v31 = v13 + left;
            if (v28 > v27)
            {
              v31 = v31 - v5 + v26 - v27;
            }
          }

          else
          {
            v31 = v13 + left - v5 + v28;
          }
        }
      }

      if (v25 >= v19)
      {
        v30 = v15 + top - v7;
      }

      else
      {
        v32 = v19 - v25;
        v33 = v21 - (v7 + v11);
        if (v32 >= v7 + v33)
        {
          v30 = v15 + top;
        }

        else
        {
          v34 = v32 * 0.5;
          if (v32 * 0.5 > v7 || v34 > v33)
          {
            v30 = v15 + top;
            if (v34 > v33)
            {
              v30 = v30 - v7 + v32 - v33;
            }
          }

          else
          {
            v30 = v15 + top - v7 + v34;
          }
        }
      }
    }

    else
    {
      v30 = self->_textContainerInset.top;
      v31 = self->_textContainerInset.left;
    }

    if (self->_textContainerOrigin.x != v31 || self->_textContainerOrigin.y != v30)
    {
      self->_textContainerOrigin.x = v31;
      self->_textContainerOrigin.y = v30;
      [(_UITextContainerView *)self setNeedsDisplay];
    }

    *&self->_tcvFlags &= ~1u;
  }

  x = self->_textContainerOrigin.x;
  y = self->_textContainerOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_NSRange)markedRange
{
  v2 = [(_UITextLayoutControllerBase *)self->_textLayoutController textInputController];
  v3 = [v2 markedRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainer);
  v4 = [WeakRetained textLayoutManager];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_textContainer);
    v5 = [v6 layoutManager];
  }

  return v5;
}

- (BOOL)_ensureLayoutForCappedSize
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v4 = [WeakRetained textContainer];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_textView);
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    if ([v4 layoutOrientation])
    {
      v13 = v7;
    }

    else
    {
      v13 = v9;
    }

    [(_UITextLayoutController *)self->_textLayoutController ensureLayoutForBounds:v4 inTextContainer:v10, v11, v12, v13 * 1.5];
  }

  return v4 != 0;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = _UITextContainerView;
  [(UIView *)&v30 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained visibleTextRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  rect = v5;
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  if (Width > CGRectGetWidth(v32) || (v33.origin.x = rect, v33.origin.y = v7, v33.size.width = v9, v33.size.height = v11, Height = CGRectGetHeight(v33), v34.origin.x = v13, v34.origin.y = v15, v34.size.width = v17, v34.size.height = v19, Height > CGRectGetHeight(v34)))
  {
    v22 = objc_loadWeakRetained(&self->_textView);
    [(UIView *)self convertRect:v22 fromView:rect, v7, v9, v11];
    [(_UITextContainerView *)self _ensureLayoutCompleteForRect:?];
  }

  [(UIView *)self transform];
  v23 = 1.0 / v28;
  [(UIView *)self transform];
  CGAffineTransformMakeScale(&v29, v23, 1.0 / v27);
  canvasView = self->_canvasView;
  rect_8 = v29;
  [(_UITextCanvas *)canvasView setTransform:&rect_8];
  [(UIView *)self bounds];
  [(_UITextCanvas *)self->_canvasView setFrame:?];
}

- (NSCustomTextRendering)customRenderController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained customRenderController];

  return v3;
}

- (UIScrollView)enclosingScrollView
{
  p_enclosingScrollView = &self->_enclosingScrollView;
  WeakRetained = objc_loadWeakRetained(&self->_enclosingScrollView);

  if (!WeakRetained)
  {
    p_enclosingScrollView = &self->_textView;
  }

  v5 = objc_loadWeakRetained(p_enclosingScrollView);

  return v5;
}

- (BOOL)hasOverriddenEnclosingScrollView
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_enclosingScrollView);
  v4 = objc_loadWeakRetained(&v2->_textView);
  LOBYTE(v2) = WeakRetained != v4;

  return v2;
}

- (CGRect)_clipRectForFadedEdges
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)sizeToFit
{
  v3 = [(_UITextContainerView *)self textContainer];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    if ([(_UITextContainerView *)self _shouldCapSizeToFitLayoutRange:&v5])
    {
      v4 = [(_UITextContainerView *)self layoutManager];
      [v4 ensureLayoutForGlyphRange:{v5, v6}];
    }

    else if (![(_UITextContainerView *)self _ensureLayoutForCappedSize])
    {
      [(_UITextLayoutController *)self->_textLayoutController ensureLayoutForTextContainer:v3];
    }

    [(_UITextContainerView *)self _sizeToConstrainedContainerUsedRect];
  }
}

- (void)_textKit2CanvasDidLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v2 = [WeakRetained _existingTextAssistantManager];
  [v2 textViewDidReflowLayout];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UITextContainerView;
  [(UIView *)&v3 tintColorDidChange];
  [(_UITextCanvas *)self->_canvasView setNeedsDisplay];
  [(_UITextContainerView *)self setNeedsDisplay];
}

- (_UITextContainerView)initWithFrame:(CGRect)a3 textLayoutController:(id)a4 textContainer:(id)a5 delegate:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v24.receiver = self;
  v24.super_class = _UITextContainerView;
  v17 = [(UIView *)&v24 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_textLayoutController, a4);
    v19 = objc_opt_class();
    [(_UIHomeAffordanceObservationRecord *)v18->_textLayoutController setLegacyViewServiceSessionIdentifier:v19];
    v20 = [(_UITextLayoutController *)v18->_textLayoutController dequeueCanvasViewForTextContainer:v15];
    canvasView = v18->_canvasView;
    v18->_canvasView = v20;

    [(_UITextCanvas *)v18->_canvasView setContext:v18];
    [(UIView *)v18 addSubview:v18->_canvasView];
    objc_storeWeak(&v18->_delegate, v16);
    v22 = objc_storeWeak(&v18->_textContainer, v15);
    [v15 setTextView:v18];

    *&v18->_tcvFlags |= 1u;
    _UITextContainerViewResyncNSTextContainer(v18, x, y, width, height);
    [(UIView *)v18 setContentMode:9];
  }

  return v18;
}

- (void)setSelectionContainerView:(id)a3
{
  v5 = a3;
  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_textContainer);
    v7 = [WeakRetained textLayoutManager];
    v8 = v7 != 0;

    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UITextContainerView.m" lineNumber:218 description:@"Not supported before iOS18 or for TextKit1. This is a UIKit bug."];
  }

LABEL_7:
  v9 = v5;
  v10 = _UITextViewAllowSelectionContainerInTextLayoutCanvas();
  v11 = v9;
  if (v5)
  {
    v11 = v9;
    if ((v10 & 1) == 0)
    {
      v12 = *(__UILogGetCategoryCachedImpl("TextSelection", &setSelectionContainerView____s_category) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Requested plumbing non-nil selectionContainerView through _UITextContainerView with TextViewAllowSelectionContainerInTextLayoutCanvas preference off. Ignoring.", v14, 2u);
      }

      v11 = 0;
    }
  }

  if (v8)
  {
    [(_UITextCanvas *)self->_canvasView setSelectionContainerView:v11];
  }
}

- (void)setTextEmphasisBackgroundView:(id)a3 withTextView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_textContainer);
    v10 = [WeakRetained textLayoutManager];
    v11 = v10 != 0;

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UITextContainerView.m" lineNumber:238 description:@"Not supported before iOS18 or for TextKit1. This is a UIKit bug."];
  }

LABEL_7:
  v12 = v7;
  v13 = _UITextViewAllowSelectionContainerInTextLayoutCanvas();
  v14 = v12;
  if (v7)
  {
    v14 = v12;
    if ((v13 & 1) == 0)
    {
      v15 = *(__UILogGetCategoryCachedImpl("TextSelection", &setTextEmphasisBackgroundView_withTextView____s_category) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Requested plumbing non-nil textEmphasisBackgroundView through _UITextContainerView with TextViewAllowSelectionContainerInTextLayoutCanvas preference off. Ignoring.", v17, 2u);
      }

      v14 = 0;
    }
  }

  if (v11)
  {
    [(_UITextCanvas *)self->_canvasView setTextEmphasisBackgroundView:v14 withTextView:v8];
  }
}

- (_UITextEmphasisBackgroundView)textEmphasisBackgroundView
{
  if (_UITextViewAllowSelectionContainerInTextLayoutCanvas() && (WeakRetained = objc_loadWeakRetained(&self->_textContainer), [WeakRetained textLayoutManager], v4 = objc_claimAutoreleasedReturnValue(), v4, WeakRetained, v4))
  {
    v5 = [(_UITextCanvas *)self->_canvasView textEmphasisBackgroundView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTextHighlightAttributes:(id)a3
{
  v4 = a3;
  textHighlightAttributes = self->_textHighlightAttributes;
  v11 = v4;
  v6 = textHighlightAttributes;
  if (v6 == v11)
  {

    goto LABEL_10;
  }

  if (v11 && v6)
  {
    v7 = [(NSDictionary *)v11 isEqual:v6];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = [(_UITextContainerView *)self textEmphasisBackgroundView];

  if (v8)
  {
    [(_UITextCanvas *)self->_canvasView setNeedsLayout];
  }

LABEL_10:
  v9 = [(NSDictionary *)v11 copy];
  v10 = self->_textHighlightAttributes;
  self->_textHighlightAttributes = v9;
}

- (NSDictionary)textHighlightAttributes
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = self->_textHighlightAttributes;
  if (!v3)
  {
    v4 = [(UIView *)self tintColor];
    v5 = v4;
    if (v4)
    {
      v12[0] = *off_1E70EC920;
      v6 = v4;
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *v11 = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "No tint color available for foreground highlight. This should never happen but it did, so using yellow", v11, 2u);
        }
      }

      else
      {
        v9 = *(__UILogGetCategoryCachedImpl("Assert", &textHighlightAttributes___s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "No tint color available for foreground highlight. This should never happen but it did, so using yellow", v11, 2u);
        }
      }

      v12[0] = *off_1E70EC920;
      v6 = +[UIColor systemYellowColor];
    }

    v13[0] = v6;
    v12[1] = *off_1E70ECA78;
    v7 = +[UIColor secondarySystemFillColor];
    v13[1] = v7;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

    if (!v5)
    {
    }
  }

  return v3;
}

- (id)textHighlightRenderingAttributesForAttributes:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*off_1E70ECA80];

  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [v4 objectForKeyedSubscript:*off_1E70ECA40];
  v7 = *off_1E70ECA50;
  if (!v6)
  {
    v6 = v7;
  }

  if ([v6 isEqualToString:v7])
  {
    v8 = [(_UITextContainerView *)self textHighlightAttributes];

    goto LABEL_24;
  }

  v9 = objc_opt_class();
  objc_sync_enter(v9);
  v10 = [textHighlightRenderingAttributesForAttributes__colorSchemeTable objectForKeyedSubscript:v6];
  if (!v10)
  {
    if ([v6 isEqualToString:*off_1E70ECA70])
    {
      v11 = +[UIColor systemPurpleColor];
      goto LABEL_17;
    }

    if ([v6 isEqualToString:*off_1E70ECA68])
    {
      v11 = +[UIColor systemPinkColor];
      goto LABEL_17;
    }

    if ([v6 isEqualToString:*off_1E70ECA60])
    {
      v11 = +[UIColor systemOrangeColor];
      goto LABEL_17;
    }

    if ([v6 isEqualToString:*off_1E70ECA58])
    {
      v11 = +[UIColor systemMintColor];
      goto LABEL_17;
    }

    if ([v6 isEqualToString:*off_1E70ECA48])
    {
      v11 = +[UIColor systemBlueColor];
LABEL_17:
      v10 = v11;
      if (!v11)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v16 = [v6 rangeOfString:@"NSTextHighlightColorScheme" options:8];
    if (v17)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [v6 substringFromIndex:v16 + v17];
      v20 = [v18 stringWithFormat:@"system%@Color", v19];
    }

    else
    {
      v20 = v6;
    }

    v10 = NSSelectorFromString(v20);
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v10 = [objc_opt_class() performSelector:v10];
      }

      else
      {
        v10 = 0;
      }
    }

    if (v10)
    {
LABEL_18:
      v12 = textHighlightRenderingAttributesForAttributes__colorSchemeTable;
      if (!textHighlightRenderingAttributesForAttributes__colorSchemeTable)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = textHighlightRenderingAttributesForAttributes__colorSchemeTable;
        textHighlightRenderingAttributesForAttributes__colorSchemeTable = v13;

        v12 = textHighlightRenderingAttributesForAttributes__colorSchemeTable;
      }

      [v12 setObject:v10 forKeyedSubscript:v6];
    }
  }

LABEL_21:
  objc_sync_exit(v9);

  if (v10)
  {
    v21 = *off_1E70EC920;
    v22[0] = v10;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    goto LABEL_24;
  }

LABEL_23:
  v8 = MEMORY[0x1E695E0F8];
LABEL_24:

  return v8;
}

- (void)setUniqueWritingToolsAnimatedLayoutInfo:(id)a3
{
  v6 = a3;
  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_textContainer);
    v5 = [WeakRetained textLayoutManager];

    if (v5)
    {
      [(_UITextCanvas *)self->_canvasView setUniqueWritingToolsAnimatedLayoutInfo:v6];
    }
  }
}

- (_UIAnimatedTextLayoutInfo)uniqueWritingToolsAnimatedLayoutInfo
{
  if (dyld_program_sdk_at_least() && (WeakRetained = objc_loadWeakRetained(&self->_textContainer), [WeakRetained textLayoutManager], v4 = objc_claimAutoreleasedReturnValue(), v4, WeakRetained, v4))
  {
    v5 = [(_UITextCanvas *)self->_canvasView uniqueWritingToolsAnimatedLayoutInfo];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)linkTextAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained linkTextAttributesForTextContainerView:self];

  return v4;
}

- (id)linkAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained textContainerView:self linkTextAttributesForLink:v6 forCharacterAtIndex:a4];

  return v8;
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UITextContainerView;
  v4 = a3;
  [(UIView *)&v5 setBackgroundColor:v4];
  [(_UITextCanvas *)self->_canvasView setBackgroundColor:v4, v5.receiver, v5.super_class];
}

- (void)_setFreezeTextContainerSize:(BOOL)a3
{
  tcvFlags = self->_tcvFlags;
  if (((((tcvFlags & 0x20) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *&self->_tcvFlags = tcvFlags & 0xDF | v4;
    textLayoutController = self->_textLayoutController;
    if (a3)
    {
      [(_UITextLayoutController *)textLayoutController suspendTiling];
    }

    else
    {
      [(_UITextLayoutController *)textLayoutController resumeTiling];
    }
  }
}

- (void)setTextContainerInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_textContainerInset.top), vceqq_f64(v4, *&self->_textContainerInset.bottom)))))
  {
    return;
  }

  top = a3.top;
  bottom = a3.bottom;
  self->_textContainerInset = a3;
  left = a3.left;
  right = a3.right;
  v23 = [(_UITextContainerView *)self textContainer];
  if (v23)
  {
    v6 = [v23 widthTracksTextView];
    v7 = [v23 heightTracksTextView];
    v8 = v7;
    if ((v6 & 1) != 0 || v7)
    {
      [v23 size];
      v10 = v9;
      v12 = v11;
      [(UIView *)self bounds];
      v15 = v14 - (left + right);
      if (!v6)
      {
        v15 = v10;
      }

      v16 = v13 - (top + bottom);
      if (!v8)
      {
        v16 = v12;
      }

      if (v10 != v15 || v12 != v16)
      {
        [v23 setSize:?];
        if (dyld_program_sdk_at_least())
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_18:
      v18 = [(_UITextContainerView *)self layoutManager];
      [v18 textContainerChangedGeometry:v23];

      goto LABEL_19;
    }

    [(_UITextContainerView *)self _sizeToConstrainedContainerUsedRect];
  }

LABEL_19:
  [(_UITextContainerView *)self invalidateTextContainerOrigin];
  [(_UITextContainerView *)self setNeedsDisplay];
  [(_UITextContainerView *)self updateInsertionPointStateAndRestartTimer:0];
}

- (BOOL)reconfigureWithLayoutManager:(id)a3 triggeredBySelector:(SEL)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  LOBYTE(a4) = [WeakRetained _reconfigureWithLayoutManager:v6 triggeredByLayoutManagerAccess:1 triggeringSelector:a4];

  return a4;
}

- (void)_setFrameOrBounds:(CGRect)a3 oldRect:(CGRect)a4 isFrameRect:(BOOL)a5 settingAction:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.size.height;
  v12 = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  (*(a6 + 2))(a6, a2);
  [(_UITextContainerView *)self _ensureMinAndMaxSizesConsistentWithBounds];
  if ((*&self->_tcvFlags & 0x20) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    v17 = [WeakRetained isZooming];

    if ((v17 & 1) == 0)
    {
      v18 = self->_invalidationSeqNo + 1;
      self->_invalidationSeqNo = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __76___UITextContainerView__setFrameOrBounds_oldRect_isFrameRect_settingAction___block_invoke;
      aBlock[3] = &unk_1E70F32F0;
      aBlock[4] = self;
      aBlock[5] = v18;
      v19 = _Block_copy(aBlock);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __76___UITextContainerView__setFrameOrBounds_oldRect_isFrameRect_settingAction___block_invoke_2;
      v33[3] = &unk_1E71270D0;
      v20 = v19;
      v34 = v20;
      v35 = v18;
      v33[4] = self;
      v36 = v14;
      v37 = v13;
      v38 = v12;
      v39 = v11;
      v44 = a5;
      v40 = x;
      v41 = y;
      v42 = width;
      v43 = height;
      v21 = _Block_copy(v33);
      if (!+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        v21[2](v21);
LABEL_17:

        return;
      }

      v22 = 1;
      if (v12 >= width && v11 >= height)
      {
        v21[2](v21);
        v22 = 0;
      }

      v23 = objc_loadWeakRetained(&self->_textView);
      if (([v23 isScrollEnabled] & 1) == 0)
      {
        v24 = objc_loadWeakRetained(&self->_textView);
        [v24 selectedRange];
        v26 = v25;

        if (!v26)
        {
LABEL_11:
          if (!self->_invalidationSeqClipsToBounds)
          {
            v27 = [(UIView *)self clipsToBounds];
            v28 = 1;
            if (!v27)
            {
              v28 = 2;
            }

            self->_invalidationSeqClipsToBounds = v28;
          }

          [(UIView *)self setClipsToBounds:1];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __76___UITextContainerView__setFrameOrBounds_oldRect_isFrameRect_settingAction___block_invoke_3;
          v29[3] = &unk_1E710BF10;
          v32 = v22;
          v30 = v21;
          v31 = v20;
          [UIViewAnimationState _addSystemPostAnimationAction:v29];

          goto LABEL_17;
        }

        v23 = objc_loadWeakRetained(&self->_textView);
        [v23 updateSelection];
      }

      goto LABEL_11;
    }
  }
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  [(UIView *)self convertRect:self->_canvasView toView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  canvasView = self->_canvasView;

  [(_UITextCanvas *)canvasView setNeedsDisplayInRect:?];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34___UITextContainerView_setBounds___block_invoke;
  v12[3] = &unk_1E70F3B20;
  *&v12[5] = x;
  *&v12[6] = y;
  *&v12[7] = width;
  *&v12[8] = height;
  v12[4] = self;
  [(_UITextContainerView *)self _setFrameOrBounds:0 oldRect:v12 isFrameRect:x settingAction:y, width, height, v8, v9, v10, v11];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33___UITextContainerView_setFrame___block_invoke;
  v12[3] = &unk_1E70F3B20;
  *&v12[5] = x;
  *&v12[6] = y;
  *&v12[7] = width;
  *&v12[8] = height;
  v12[4] = self;
  [(_UITextContainerView *)self _setFrameOrBounds:1 oldRect:v12 isFrameRect:x settingAction:y, width, height, v8, v9, v10, v11];
}

- (void)setConstrainedFrameSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self frame];
  v7 = v6;
  v9 = v8;
  v20 = [(UIView *)self superview];
  [(UIView *)self convertRect:v20 toView:0.0, 0.0, self->_maxSize.width, self->_maxSize.height];
  v11 = v10;
  v13 = v12;
  [(UIView *)self convertRect:v20 toView:0.0, 0.0, self->_minSize.width, self->_minSize.height];
  v16 = v7;
  if ((*&self->_tcvFlags & 8) != 0)
  {
    v17 = ceil(width);
    v16 = v17 >= v14 ? v17 : v14;
    if (v16 > v11)
    {
      v16 = v11;
    }
  }

  v18 = v9;
  if ((*&self->_tcvFlags & 0x10) != 0)
  {
    v19 = ceil(height);
    v18 = v19 >= v15 ? v19 : v15;
    if (v18 > v13)
    {
      v18 = v13;
    }
  }

  v22.width = v7;
  v22.height = v9;
  v23.width = v16;
  v23.height = v18;
  if (!NSEqualSizes(v22, v23))
  {
    [(UIView *)self frame];
    [(_UITextContainerView *)self setFrame:?];
  }
}

- (void)setHorizontallyResizable:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_tcvFlags = *&self->_tcvFlags & 0xF7 | v3;
}

- (void)setVerticallyResizable:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_tcvFlags = *&self->_tcvFlags & 0xEF | v3;
}

- (BOOL)_shouldCapSizeToFitLayoutRange:(_NSRange *)a3
{
  v5 = [(_UITextContainerView *)self layoutManager];
  if (!v5)
  {
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained(&self->_textView);

  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v7 = [(_UITextContainerView *)self textContainer];
  v8 = [v5 glyphRangeForTextContainer:v7];
  if (!v9)
  {

LABEL_13:
    v31 = 0;
    goto LABEL_18;
  }

  location = v8;
  v11 = v8 + v9;
  if (v8 >= v8 + v9)
  {
    length = 0;
  }

  else
  {
    v34 = a3;
    length = 0;
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    v17 = v8;
    do
    {
      v35.location = 0;
      v35.length = 0;
      [v5 lineFragmentRectForGlyphAtIndex:v17 effectiveRange:&v35 withoutAdditionalLayout:1];
      v39.origin.x = v18;
      v39.origin.y = v19;
      v39.size.width = v20;
      v39.size.height = v21;
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v38 = CGRectUnion(v37, v39);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
      v36.location = location;
      v36.length = length;
      v22 = NSUnionRange(v36, v35);
      location = v22.location;
      length = v22.length;
      v24 = v35.location;
      v23 = v35.length;
      if (![v7 layoutOrientation])
      {
        v25 = objc_loadWeakRetained(&self->_textView);
        [v25 bounds];
        v27 = v26;

        if (height > v27)
        {
          break;
        }
      }

      if ([v7 layoutOrientation] == 1)
      {
        v28 = objc_loadWeakRetained(&self->_textView);
        [v28 bounds];
        v30 = v29;

        if (width > v30)
        {
          break;
        }
      }

      v17 = v24 + v23 + 1;
    }

    while (v17 < v11);
    a3 = v34;
  }

  v32 = (location + length) * 1.5;
  v31 = v32 < v11;
  if (v32 < v11)
  {
    a3->location = location;
    a3->length = (length * 1.5);
  }

LABEL_18:
  return v31;
}

- (void)setUsesStandardTextScaling:(BOOL)a3
{
  if (((((*&self->_tcvFlags & 0x40) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(_UITextContainerView *)self invalidateTextContainerOrigin];
    if (v3)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    *&self->_tcvFlags = *&self->_tcvFlags & 0xBF | v5;
    if (v3)
    {
      v6 = 1.29871;
    }

    else
    {
      v6 = 1.0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [WeakRetained setMinimumZoomScale:v6];

    v8 = objc_loadWeakRetained(&self->_textView);
    [v8 setMaximumZoomScale:v6];

    v9 = objc_loadWeakRetained(&self->_textView);
    [v9 setZoomScale:v6];

    [(_UITextContainerView *)self setNeedsDisplay];
  }
}

- (void)updateInsertionPointStateAndRestartTimer:(BOOL)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(UIView *)self bounds];
  if (!CGRectIsEmpty(v11) && WeakRetained && [WeakRetained isEditableForTextContainerView:self])
  {
    v5 = [WeakRetained selectedRangeForTextContainerView:self];
    v7 = v6;
    v8 = [(_UITextContainerView *)self layoutManager];
    v9 = objc_loadWeakRetained(&self->_textContainer);
    v10[0] = 0;
    [v8 rectArrayForCharacterRange:v5 withinSelectedCharacterRange:v7 inTextContainer:v5 rectCount:{v7, v9, v10}];

    [WeakRetained updateSelectionForTextContainerView:self];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)a3 avoidAdditionalLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(_UITextLayoutController *)self->_textLayoutController usesTiledViews])
  {
    [(UIView *)self bounds];
    v12.origin.x = x;
    v12.origin.y = y - floor(height * 0.5);
    v12.size.width = width;
    v12.size.height = height + height;
    v11 = CGRectIntersection(v10, v12);

    [(_UITextContainerView *)self setNeedsDisplayInRect:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
  }

  else
  {

    [(_UITextContainerView *)self setNeedsDisplay];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UITextContainerView;
  [(UIView *)&v5 willMoveToSuperview:v4];
  objc_storeWeak(&self->_textView, 0);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&self->_textView, v4);
    }
  }
}

- (UIColor)textColor
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v3 = [WeakRetained textColor];

  return v3;
}

- (void)setEnclosingScrollView:(id)a3
{
  objc_storeWeak(&self->_enclosingScrollView, a3);
  canvasView = self->_canvasView;

  [(_UITextCanvas *)canvasView observeEnclosingScrollView];
}

- (BOOL)isEditable
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v3 = [WeakRetained isEditable];

  return v3;
}

- (BOOL)isEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v3 = [WeakRetained isEditing];

  return v3;
}

- (CGPoint)drawingScale
{
  [(UIView *)self transform];
  [(UIView *)self transform];
  v3 = v5;
  v4 = v6;
  result.y = v3;
  result.x = v4;
  return result;
}

- (void)_updateInteractionGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained _updateInteractionGeometry];
}

- (void)_ensureLayoutCompleteToEndOfCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(_UITextContainerView *)self layoutManager];
  v11 = v5;
  if (!length)
  {
    v6 = [v5 textStorage];
    v7 = [v6 length];

    if (!v7)
    {
      goto LABEL_7;
    }

    location -= location == v7;
    length = 1;
    v5 = v11;
  }

  if ([v5 allowsNonContiguousLayout])
  {
    [v11 ensureLayoutForCharacterRange:{location, length}];
  }

  v8 = [v11 glyphRangeForCharacterRange:location actualCharacterRange:{length, 0}];
  v10 = [v11 textContainerForGlyphAtIndex:v9 + v8 - 1 effectiveRange:0];
LABEL_7:
}

- (void)_ensureLayoutCompleteForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = [(_UITextContainerView *)self layoutManager];
  if ([v23 hasNonContiguousLayout])
  {
    v8 = [(UIView *)self window];
    v9 = [v8 isHidden];

    if ((v9 & 1) == 0)
    {
      v10 = [(_UITextContainerView *)self textContainer];
      [(_UITextContainerView *)self textContainerOrigin];
      if (v23)
      {
        if (v10)
        {
          v13 = v11;
          v14 = v12;
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          if (!NSIsEmptyRect(v25))
          {
            v15 = x - v13;
            v16 = y - v14;
            v17 = height * 1.5;
            if (height * 1.5 < 0.0)
            {
              v17 = 0.0;
            }

            if (v17 > v16)
            {
              v17 = y - v14;
            }

            v18 = v16 - v17;
            v19 = height + v17;
            v20 = [v23 glyphRangeForBoundingRect:v10 inTextContainer:{v15, v16 - v17, width, v19}];
            if (v21)
            {
              v22 = v20;
              if (v21 >= 0x400)
              {
                [v23 ensureLayoutForGlyphRange:{v20, v21 >> 3}];
                v22 = [v23 glyphRangeForBoundingRect:v10 inTextContainer:{v15, v18, width, v19}];
              }

              [v23 ensureLayoutForGlyphRange:{v22, v21}];
              [v23 usedRectForTextContainer:v10];
            }
          }
        }
      }
    }
  }
}

- (id)layoutManager:(id)a3 effectiveCUICatalogForTextEffect:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained textContainerView:self cuiCatalogForTextEffectName:v5];

  return v7;
}

- (void)setLayoutOrientation:(int64_t)a3
{
  if (((*&self->_tcvFlags >> 1) & 3) != a3)
  {
    v3 = a3;
    v5 = [(_UITextContainerView *)self layoutOrientation];
    *&self->_tcvFlags = *&self->_tcvFlags & 0xF9 | (2 * (v3 & 3));
    v6 = [(_UITextContainerView *)self layoutOrientation];
    v7 = v6;
    if ((v5 == 0) == (v6 != 0))
    {
      memset(&v29, 0, sizeof(v29));
      v8 = 1.57079633;
      if (!v6)
      {
        v8 = 0.0;
      }

      CGAffineTransformMakeRotation(&v29, v8);
      [(UIView *)self frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v28 = v29;
      [(UIView *)self setTransform:&v28];
      [(_UITextContainerView *)self setFrame:v10, v12, v14, v16];
    }

    v17 = [(_UITextContainerView *)self isHorizontallyResizable];
    if (v17 != [(_UITextContainerView *)self isVerticallyResizable]&& (((v7 != 0) ^ [(_UITextContainerView *)self isVerticallyResizable]) & 1) == 0)
    {
      v18 = v7 == 0;
      v19 = v7 == 0;
      v20 = !v18;
      [(_UITextContainerView *)self setHorizontallyResizable:v20];
      [(_UITextContainerView *)self setVerticallyResizable:v19];
    }

    v21 = [(_UITextContainerView *)self layoutManager];
    if (v21)
    {
      v22 = [(_UITextContainerView *)self textContainer];
      v23 = [v21 glyphRangeForTextContainer:v22];
      v25 = v24;

      v26 = [v21 characterRangeForGlyphRange:v23 actualGlyphRange:{v25, 0}];
      [v21 invalidateGlyphsForCharacterRange:v26 changeInLength:v27 actualCharacterRange:{0, 0}];
    }

    [(_UITextContainerView *)self setNeedsDisplay];
  }
}

- (NSDictionary)markedTextStyle
{
  v2 = [(_UITextLayoutControllerBase *)self->_textLayoutController textInputController];
  v3 = [v2 markedTextStyle];

  return v3;
}

- (id)attributedSubstringForMarkedRange
{
  v2 = [(_UITextLayoutControllerBase *)self->_textLayoutController textInputController];
  v3 = [v2 attributedSubstringForMarkedRange];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _UITextContainerView;
  v4 = [(UIView *)&v11 description];
  v5 = NSStringFromCGSize(self->_minSize);
  v6 = NSStringFromCGSize(self->_maxSize);
  WeakRetained = objc_loadWeakRetained(&self->_textContainer);
  v8 = [WeakRetained description];
  v9 = [v3 stringWithFormat:@"<%@ minSize = %@, maxSize = %@, textContainer = %@>", v4, v5, v6, v8];

  return v9;
}

- (CGRect)visibleRect
{
  v3 = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 bounds];
    [v3 convertRect:self toView:?];
  }

  else
  {
    [(UIView *)self bounds];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

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

- (_UITextContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end