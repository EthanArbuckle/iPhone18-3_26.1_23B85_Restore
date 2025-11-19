@interface UILabel
+ (CGRect)_insetRect:(CGRect)a3 forAttributedString:(id)a4 withDefaultFont:(id)a5 inView:(id)a6;
+ (Class)layerClass;
+ (double)_insetsForAttributedString:(void *)a3 withDefaultFont:(void *)a4 inView:;
+ (double)_insetsForString:(void *)a3 withFont:(void *)a4 inView:;
+ (id)_defaultAttributes;
+ (id)_defaultColor;
+ (id)_tooBigChars;
+ (id)defaultFont;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)_clipsGlyphPathFrame:(CGRect)a3 shouldContinueSuperviewTraversal:(BOOL *)a4;
- (BOOL)_glyphPathBoundsClippingDetected;
- (BOOL)allowsDefaultTighteningForTruncation;
- (BOOL)drawsUnderline;
- (BOOL)marqueeRunning;
- (CGFloat)minimumScaleFactor;
- (CGRect)_drawTextInRect:(CGRect)a3;
- (CGRect)_drawTextInRect:(CGRect)a3 baselineCalculationOnly:(BOOL)a4;
- (CGRect)_drawTextInRect:(CGRect)a3 forceMultiline:(BOOL)a4;
- (CGRect)_drawingRectForBounds:(CGRect)a3;
- (CGRect)_textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4 includingShadow:(BOOL)a5;
- (CGRect)_tightBoundingRect;
- (CGRect)_tightBoundingRectOfFirstLine;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)rawSize;
- (CGSize)shadowOffset;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)textSize;
- (CGSize)textSizeForWidth:(double)a3;
- (Class)_intelligenceBaseClass;
- (NSAttributedString)_synthesizedAttributedText;
- (NSLineBreakMode)lineBreakMode;
- (NSLineBreakStrategy)lineBreakStrategy;
- (NSString)text;
- (NSTextAlignment)textAlignment;
- (UIColor)shadowColor;
- (UIColor)textColor;
- (UIEdgeInsets)_contentInsetsFromFonts;
- (UIEdgeInsets)alignmentRectInsets;
- (UIFont)font;
- (UILabel)initWithCoder:(id)a3;
- (UILabel)initWithFrame:(CGRect)a3;
- (_UILabelContent)_content;
- (_UILabelLegacyScaledMetrics)_scaledMetricsForText:(double)a3 inRect:(double)a4;
- (_UILabelMarqueeAnimationDelegate)_marqueeAnimationDelegate;
- (_UIScrollPocketInteraction)scrollPocketInteraction;
- (double)_actualScaleFactor;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 nextToNeighbor:(id)a5 edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)a8;
- (double)_baselineOffsetFromBottom;
- (double)_boundingRectWithAttributedString:(uint64_t)a3 size:(void *)a4 options:(double)a5 context:(double)a6;
- (double)_boundingRectWithString:(uint64_t)a3 size:(void *)a4 options:(void *)a5 attributes:(double)a6 context:(double)a7;
- (double)_capOffsetFromBoundsTop;
- (double)_drawTextInRect:(int)a3 baselineCalculationOnly:(unsigned __int8)a4 returningDeviceMetricsOfFirstLine:(int)a5 returningMultilineDeviceMetrics:(double)a6 forceMultiline:(double)a7;
- (double)_ensureBaselineMetricsReturningBounds;
- (double)_firstBaselineOffsetFromTop;
- (double)_firstLineBaseline;
- (double)_firstLineBaselineFrameOriginY;
- (double)_firstLineBaselineOffsetFromBoundsTop;
- (double)_firstLineCapFrameOriginY;
- (double)_lastLineBaseline;
- (double)_lastLineBaselineFrameOriginY;
- (double)_letterformAwareAllAlignmentInsets;
- (double)_maximumMarqueeTextWidth;
- (double)_minimumFontSize;
- (double)_preferredMaxLayoutWidth;
- (double)_sizingRuleAdjustedBoundsForBounds:(void *)a1;
- (double)shadowBlur;
- (float)_hyphenationFactor;
- (id)__tightBoundingBoxLayoutGuide;
- (id)_contentAdjustingFontForAccessibilityTraits:(char)a3 forced:(_BYTE *)a4 didAdjustFont:;
- (id)_contentAdjustingFontForTypesettingLanguage:(_BYTE *)a3 didAdjustFont:;
- (id)_contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:(_BYTE *)a3 didAdjustFont:;
- (id)_defaultAttributes;
- (id)_image;
- (id)_materializedAttributedString;
- (id)_nilBackgroundColor;
- (id)_shadow;
- (id)_siblingMarqueeLabels;
- (id)_stringDrawingContext;
- (id)_synthesizedAttributedTextForContent:(uint64_t)a1;
- (id)_tightBoundingBoxLayoutGuide;
- (id)_verticalTextLayoutManager;
- (id)currentTextColor;
- (id)largeContentTitle;
- (int64_t)_stringDrawingOptions;
- (int64_t)_supportedTreatmentForTreatment:(int64_t)a3;
- (uint64_t)_updateScaledMetricsForRect:(double)a3;
- (unint64_t)defaultAccessibilityTraits;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_addLightSourceView;
- (void)_addViewsForLabelViewTextAttachments:(id)a3 previousLabelViewTextAttachments:(id)a4;
- (void)_adjustFontForAccessibilityTraits:(_BYTE *)a1;
- (void)_adjustFontForTypesettingLanguage;
- (void)_ancestorWillUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_applicationWillResignActiveNotification:(id)a3;
- (void)_commonInit;
- (void)_contentDidChange:(int64_t)a3 fromContent:(id)a4;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_drawWithAttributedString:(uint64_t)a3 rect:(void *)a4 options:(double)a5 context:(double)a6;
- (void)_drawWithString:(uint64_t)a3 rect:(void *)a4 options:(void *)a5 attributes:(double)a6 context:(double)a7;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_invalidateAsNeededForNewSize:(double *)(a1 oldSize:;
- (void)_invalidateBaselineConstraints;
- (void)_invalidateLabelDisplay;
- (void)_invalidateLabelMetrics;
- (void)_invalidateLabelSize;
- (void)_invalidateMaterialColor;
- (void)_markGlyphPathBoundsClippingDetected:(double)a3 glyphPathBounds:(double)a4 availableBounds:(double)a5;
- (void)_noteInstanceCustomizationForAttributedString:(void *)a3 attributes:;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3;
- (void)_removeLightSourceView;
- (void)_resetUsesExplicitPreferredMaxLayoutWidth;
- (void)_resolveMaterialColor:(uint64_t)a1;
- (void)_runMarqueeIfEnabledAndAncestorIsFocused;
- (void)_setAllowsDefaultTighteningForTruncation:(void *)a1;
- (void)_setAssociatedScalingLabel:(id)a3;
- (void)_setContent:(id)a3;
- (void)_setContent:(uint64_t)a3 adjustingFontForAccessibilityTraits:(int)a4 adjustingFontForTypesettingLanguage:(int)a5 adjustingFontForTypesettingLanguageAwareLineHeightRatio:(char)a6 checkingForDifferences:;
- (void)_setCuiCatalog:(id)a3;
- (void)_setCuiStyleEffectConfiguration:(id)a3;
- (void)_setDefaultAttributes:(id)a3;
- (void)_setDelegate:(id)a3;
- (void)_setDrawingLightInertLayer:(BOOL)a3;
- (void)_setDrawingLightReactiveLayer:(BOOL)a3;
- (void)_setDrawsDebugBaselines:(BOOL)a3;
- (void)_setDrawsDebugGlyphPathBoundsClipping:(BOOL)a3;
- (void)_setExtremeSizingEnabled:(BOOL)a3;
- (void)_setFallbackTextColor:(id)a3 forUserInterfaceStyle:(int64_t)a4;
- (void)_setFirstLineBaselineFrameOriginY:(double)a3;
- (void)_setFirstLineCapFrameOriginY:(double)a3;
- (void)_setFont:(id)a3;
- (void)_setHyphenationFactor:(float)a3;
- (void)_setHyphenationFactorIgnoredIfURLsDetected:(void *)result;
- (void)_setLastLineBaselineFrameOriginY:(double)a3;
- (void)_setLightSourceDescriptor:(id)a3;
- (void)_setLineBreakMode:(int64_t)a3;
- (void)_setLineBreakStrategy:(unint64_t)a3;
- (void)_setMarqueeUpdatable:(BOOL)a3;
- (void)_setMaterialTextColorFollowsTintColor:(void *)result;
- (void)_setMinimumFontSize:(double)a3;
- (void)_setMultilineLabelRequiresCarefulMeasurement:(BOOL)a3;
- (void)_setOverallWritingDirectionFollowsLayoutDirection:(BOOL)a3;
- (void)_setShadow:(void *)a1;
- (void)_setSupportMultiLineShrinkToFit:(uint64_t)a1;
- (void)_setText:(id)a3;
- (void)_setTextAlignment:(int64_t)a3;
- (void)_setTextAlignmentFollowsWritingDirection:(BOOL)a3;
- (void)_setTextAlignmentMirrored:(BOOL)a3;
- (void)_setTextColor:(id)a3;
- (void)_setTextColorFollowsTintColor:(BOOL)a3;
- (void)_setTextEncapsulation:(id)a3;
- (void)_setUseShortcutIntrinsicContentSize:(BOOL)a3;
- (void)_setUsesSimpleTextEffects:(BOOL)a3;
- (void)_setVerticalTextEnabled:(BOOL)a3;
- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)a3;
- (void)_setWantsUnderlineForAccessibilityButtonShapesEnabled:(BOOL)a3;
- (void)_startMarqueeIfNecessary;
- (void)_stopMarqueeWithRedisplay:(BOOL)a3;
- (void)_synthesizedTextAttributes;
- (void)_updateProperties;
- (void)_updateScrollPocketInteraction;
- (void)_updateSystemConstraints;
- (void)_updateTextColorWithFallbackColorIfNeeded;
- (void)_updateTightBoundingBoxLayoutGuideConstraintsIfNecessary;
- (void)_updateVariableLengthStringIfNeeded;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)drawTextInRect:(CGRect)rect;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layerWillDraw:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth;
- (void)setAdjustsLetterSpacingToFitWidth:(BOOL)adjustsLetterSpacingToFitWidth;
- (void)setAttributedText:(NSAttributedString *)attributedText;
- (void)setBaselineAdjustment:(UIBaselineAdjustment)baselineAdjustment;
- (void)setBounds:(CGRect)a3;
- (void)setDrawsUnderline:(BOOL)a3;
- (void)setEnabled:(BOOL)enabled;
- (void)setEnablesMarqueeWhenAncestorFocused:(BOOL)enablesMarqueeWhenAncestorFocused;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedTextColor:(UIColor *)highlightedTextColor;
- (void)setLineSpacing:(int64_t)a3;
- (void)setMarqueeEnabled:(BOOL)a3;
- (void)setMarqueeRunning:(BOOL)a3;
- (void)setMinimumScaleFactor:(CGFloat)minimumScaleFactor;
- (void)setNeedsDisplay;
- (void)setNumberOfLines:(NSInteger)numberOfLines;
- (void)setPreferredMaxLayoutWidth:(CGFloat)preferredMaxLayoutWidth;
- (void)setPreferredVibrancy:(UILabelVibrancy)preferredVibrancy;
- (void)setScrollPocketInteraction:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setShadowBlur:(double)a3;
- (void)setShadowColor:(UIColor *)shadowColor;
- (void)setShadowOffset:(CGSize)shadowOffset;
- (void)setShowsExpansionTextWhenTruncated:(BOOL)showsExpansionTextWhenTruncated;
- (void)setSizingRule:(int64_t)a3;
- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled;
- (void)set_fontForShortcutBaselineCalculation:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UILabel

+ (Class)layerClass
{
  dyld_program_sdk_at_least();
  v2 = objc_opt_class();

  return v2;
}

- (void)setNeedsDisplay
{
  if (dyld_program_sdk_at_least())
  {

    [(UILabel *)self _invalidateLabelDisplay];
  }

  else
  {
    *&self->_textLabelFlags &= ~0x1000000uLL;
    v3.receiver = self;
    v3.super_class = UILabel;
    [(UIView *)&v3 setNeedsDisplay];
  }
}

void __22__UILabel__commonInit__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() defaultFont];
  [v2 setFont:v3];

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _defaultColor];
  [v4 setTextColor:v5];

  v6 = [*(a1 + 32) _nilBackgroundColor];
  [*(a1 + 32) setBackgroundColor:v6];
}

+ (id)_defaultAttributes
{
  v3 = objc_opt_class();
  v4 = +[_UITextAttributeDefaults _unspecifiedDefaults];
  v5 = [v4 _label];
  v6 = [v5 _attributes];
  v7 = v6;
  if (v3 != a1)
  {
    v8 = [v6 copy];

    v7 = v8;
  }

  return v7;
}

- (void)_invalidateLabelSize
{
  self->_size = *MEMORY[0x1E695F060];
  [(UILabel *)self _invalidateLabelMetrics];
  if (dyld_program_sdk_at_least())
  {
    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      v3 = [(UIView *)self layer];
      [v3 invalidateContentInsets];
    }

    [(UIView *)self setNeedsLayout];
  }

  if (![(UILabel *)self _useShortcutIntrinsicContentSize]|| [(UILabel *)self numberOfLines]!= 1)
  {
    [(UILabel *)self invalidateIntrinsicContentSize];
  }

  if ([(UIView *)self _wantsAutolayout])
  {
    if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
    {
      v4 = [(UILabel *)self __tightBoundingBoxLayoutGuide];

      if (v4)
      {
        if ((*(&self->super._viewFlags + 8) & 4) == 0)
        {

          [(UIView *)self setNeedsUpdateConstraints];
        }
      }
    }
  }
}

- (void)_invalidateLabelMetrics
{
  if (a1)
  {
    *(a1 + 744) &= ~0x800uLL;
    v2 = *(a1 + 600);
    *(a1 + 600) = 0;

    v3 = *(a1 + 448);
    if (*(a1 + 456) != 0.0)
    {
      [a1 bounds];
      *(a1 + 536) = v4 - *(a1 + 456);
    }

    v5 = *(a1 + 448);
    *(a1 + 456) = 0;
    if (v5 != 0.0)
    {
      *(a1 + 544) = v5;
    }

    *(a1 + 448) = 0;
    *(a1 + 496) = -1;
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 16);
    *(a1 + 464) = *MEMORY[0x1E695F058];
    *(a1 + 480) = v7;
    *(a1 + 504) = v6;
    *(a1 + 520) = v7;
    if (v3 != 0.0)
    {
      if ([a1 _shouldNotifyGeometryObserversForBaselineChanges])
      {
        v26 = 0;
        v25 = 0u;
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        v15 = 0u;
        v14 = 0u;
        v13 = 0u;
        v12 = 0u;
        v11 = 2048;
        [(UIView *)a1 _notifyGeometryObserversWithChangeInfo:?];
      }

      if ((*(a1 + 104) & 8) != 0)
      {
        v8 = [a1 superview];
        v9 = v8;
        if (v8)
        {
          if ((*(v8 + 95) & 0x40) == 0)
          {
            v10 = [a1 superview];
            [v10 setNeedsLayout];
          }
        }
      }
    }
  }
}

- (void)_commonInit
{
  if (self)
  {
    if (qword_1ED497530 != -1)
    {
      dispatch_once(&qword_1ED497530, &__block_literal_global_691);
    }

    v3 = objc_opt_class();
    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFDFFFFFFFLL | ((qword_1ED497528 != class_getMethodImplementation(v3, sel__defaultAttributes)) << 29));
    v4 = self;
    v5 = +[_UILabelVisualStyle inferredVisualStyle];
    [(UILabel *)v4 _setVisualStyle:v5];

    v6 = v4;
    v7 = objc_alloc_init(_UILabelLegacyImpl);
    objc_storeStrong(&v6->__impl, v7);

    if (dyld_program_sdk_at_least())
    {
      v8 = _UIBarsUseDynamicType();
      v9 = 0x8000000;
      if (!v8)
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFF7FFFFFFLL | v9);
    v6->_numberOfLines = 1;
    v6->_intrinsicSizeBaselineInfo.measuredNumberOfLines = -1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = __22__UILabel__commonInit__block_invoke_2;
    v14 = &unk_1E70F3590;
    v15 = v6;
    if (dyld_program_sdk_at_least())
    {
      [UIView _performSystemAppearanceModifications:v12];
    }

    else
    {
      v13(v12);
    }

    *&self->_textLabelFlags &= ~0x80000uLL;
    v10 = dyld_program_sdk_at_least();
    v11 = 64;
    if (v10)
    {
      v11 = 68;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFF8BLL | v11);
    [(UIView *)v6 setContentsPosition:3];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UIView *)v6 setClipsToBounds:1];
    }

    [(UILabel *)v6 setUserInteractionEnabled:0];
    if (dyld_program_sdk_at_least())
    {
      [(UIView *)v6 setClipsToBounds:0];
    }

    UILabelCommonInit(v6);
  }
}

- (void)invalidateIntrinsicContentSize
{
  [(_UITextSizeCache *)self->_intrinsicContentSizeCache removeAllSizes];
  v3 = (*&self->super._viewFlags & 0x2000000000000) == 0;

  [(UIView *)self _invalidateIntrinsicContentSizeNeedingLayout:v3];
}

- (void)_adjustFontForTypesettingLanguage
{
  if (a1)
  {
    v3 = [a1 _content];
    v2 = [(UILabel *)a1 _contentAdjustingFontForTypesettingLanguage:v3 didAdjustFont:0];
    [(UILabel *)a1 _setContent:v2 adjustingFontForAccessibilityTraits:0 adjustingFontForTypesettingLanguage:0 adjustingFontForTypesettingLanguageAwareLineHeightRatio:0 checkingForDifferences:1];
  }
}

- (NSString)text
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 string];

  return v3;
}

- (id)_stringDrawingContext
{
  v3 = objc_alloc_init(off_1E70ECB98);
  numberOfLines = self->_numberOfLines;
  [v3 setWrapsForTruncationMode:numberOfLines != 1];
  [v3 setMaximumNumberOfLines:numberOfLines];
  if ((*(&self->_textLabelFlags + 1) & 0x40) != 0)
  {
    [v3 setDrawsDebugBaselines:1];
  }

  [v3 setCachesLayout:1];
  [v3 setLayout:self->_layout];
  if ((*(&self->_textLabelFlags + 2) & 2) != 0)
  {
    [v3 setUsesSimpleTextEffects:1];
  }

  if (self->_cuiCatalog)
  {
    [v3 setCuiCatalog:?];
  }

  if (self->_cuiStyleEffectConfiguration)
  {
    [v3 setCuiStyleEffects:?];
    if ([(CUIStyleEffectConfiguration *)self->_cuiStyleEffectConfiguration useSimplifiedEffect])
    {
      [v3 setUsesSimpleTextEffects:1];
    }
  }

  return v3;
}

- (NSAttributedString)_synthesizedAttributedText
{
  if (!self->_synthesizedAttributedText)
  {
    v3 = [(UILabel *)self _content];
    v4 = [(UILabel *)self _synthesizedAttributedTextForContent:v3];
    synthesizedAttributedText = self->_synthesizedAttributedText;
    self->_synthesizedAttributedText = v4;

    v6 = [(NSAttributedString *)self->_synthesizedAttributedText length];
    if (v6)
    {
      v7 = [(NSAttributedString *)self->_synthesizedAttributedText attribute:*off_1E70EC8D8 atIndex:0 longestEffectiveRange:0 inRange:0, v6];
      self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFEFFFFLL | ((v7 != 0) << 16));
    }

    else
    {
      *&self->_textLabelFlags &= ~0x10000uLL;
    }
  }

  v8 = self->_synthesizedAttributedText;

  return v8;
}

- (void)_synthesizedTextAttributes
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[71];
    if (!v3)
    {
      if (![a1 isEnabled] || (objc_msgSend(v2, "isHighlighted") & 1) != 0 || (objc_msgSend(v2, "_textColorFollowsTintColor") & 1) != 0 || (*(v2 + 747) & 0x80) != 0)
      {
        v5 = 0;
      }

      else
      {
        v4 = [v2 _textEncapsulation];
        v5 = v4 == 0;
      }

      v6 = [v2 _content];
      ShouldReverseNaturalAlignment = _UILabelShouldReverseNaturalAlignment(v6, [v2 semanticContentAttribute]);

      if (!v5 || ShouldReverseNaturalAlignment)
      {
        v10 = MEMORY[0x1E695DF90];
        v11 = [v2 _defaultAttributes];
        v9 = [v10 dictionaryWithDictionary:v11];

        if (!v5)
        {
          if (([v2 isEnabled] & 1) == 0)
          {
            v12 = objc_alloc_init(off_1E70ECB90);
            [v12 setShadowColor:0];
            [v9 setObject:v12 forKey:*off_1E70EC9B0];
          }

          v13 = [v2 textColor];
          v14 = [v2 currentTextColor];
          v15 = [v13 isEqual:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [v2 currentTextColor];
            [v9 setObject:v16 forKey:*off_1E70EC920];
          }

          v17 = [v2 _textEncapsulation];

          if (v17)
          {
            v18 = [v2 _textEncapsulation];
            v19 = [v18 copy];
            [v9 setObject:v19 forKey:*MEMORY[0x1E69655D0]];
          }
        }

        if (ShouldReverseNaturalAlignment)
        {
          _UILabelReverseNaturalAlignment(v9);
          objc_claimAutoreleasedReturnValue();
        }

        v20 = [v9 copy];
        v21 = v2[71];
        v2[71] = v20;
      }

      else
      {
        v8 = [v2 _defaultAttributes];
        v9 = v2[71];
        v2[71] = v8;
      }

      v3 = v2[71];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)_defaultAttributes
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 defaultAttributes];

  return v3;
}

- (float)_hyphenationFactor
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 paragraphStyle];
  [v3 hyphenationFactor];
  v5 = v4;

  return v5;
}

- (int64_t)_stringDrawingOptions
{
  if ([(UILabel *)self _textAlignmentFollowsWritingDirection])
  {
    v3 = 1049089;
  }

  else
  {
    v3 = 1048577;
  }

  if ([(UILabel *)self _textAlignmentMirrored])
  {
    return v3 | 0x400;
  }

  else
  {
    return v3;
  }
}

- (UIColor)shadowColor
{
  v2 = [(UILabel *)self _shadow];
  v3 = [v2 shadowColor];

  return v3;
}

+ (id)defaultFont
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    [_UITextAttributeDefaults _defaultsForUserInterfaceIdiom:5];
  }

  else
  {
    +[_UITextAttributeDefaults _unspecifiedDefaults];
  }
  v4 = ;
  v5 = [v4 _label];
  v6 = [v5 _font];

  return v6;
}

+ (id)_defaultColor
{
  v2 = +[_UITextAttributeDefaults _unspecifiedDefaults];
  v3 = [v2 _label];
  v4 = [v3 _textColor];

  return v4;
}

- (double)_preferredMaxLayoutWidth
{
  if ((*(&self->_textLabelFlags + 1) & 0x20) != 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  result = 0.0;
  if ((*(&self->super._viewFlags + 6) & 2) == 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  return result;
}

- (void)_updateVariableLengthStringIfNeeded
{
  if (a1)
  {
    v3 = [a1 _content];
    v2 = [v3 widthVariantContentForView:a1];
    [a1 _setContent:v2];
  }
}

- (double)_baselineOffsetFromBottom
{
  fontForShortcutBaselineCalculation = self->_fontForShortcutBaselineCalculation;
  if (fontForShortcutBaselineCalculation)
  {
    [(UIFont *)fontForShortcutBaselineCalculation lineHeight];
    UICeilToViewScale(self);
    v5 = v4;
    [(UILabel *)self _firstBaselineOffsetFromTop];
    v7 = v5 - v6;
  }

  else
  {
    [(UIView *)self alignmentRectForFrame:[(UILabel *)self _ensureBaselineMetricsReturningBounds]];
    v7 = CGRectGetMaxY(v10) - self->_intrinsicSizeBaselineInfo.lastBaseline;
  }

  [(UILabel *)self _letterformAwareAllAlignmentInsets];
  return v7 + v8 + 0.0;
}

- (double)_ensureBaselineMetricsReturningBounds
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  [a1 _preferredMaxLayoutWidth];
  if (v4 != 0.0 && *(a1 + 440) != 1)
  {
    v3 = v4;
  }

  v6 = *v2;
  v5 = v2[1];
  v7 = [a1 text];
  v8 = [v7 length];

  if (v8)
  {
    [a1 _intrinsicSizeWithinSize:{v3, v2[3]}];
    v10 = v9;
    v12 = v11;
    if (*(a1 + 440) == 1 && (*(a1 + 744) & 0x1000A) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = [a1 font];
    v14 = v13;
    if (!v13)
    {
      v14 = +[UILabel defaultFont];
    }

    [@"X" _legacy_sizeWithFont:v14 forWidth:objc_msgSend(a1 lineBreakMode:{"lineBreakMode"), 3.40282347e38}];
    v10 = v15;
    v12 = v16;
    if (!v13)
    {
    }
  }

  [a1 _drawTextInRect:1 baselineCalculationOnly:{v6, v5, v10, v12}];
LABEL_15:
  *(a1 + 504) = v6;
  *(a1 + 512) = v5;
  *(a1 + 520) = v10;
  *(a1 + 528) = v12;
  return v6;
}

- (id)_shadow
{
  if (a1)
  {
    v1 = [a1 _content];
    v2 = [v1 shadow];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_invalidateLabelDisplay
{
  if (result)
  {
    v1 = result;
    result[93] &= ~0x1000000uLL;
    v2 = result[70];
    result[70] = 0;

    v3 = *(v1 + 568);
    *(v1 + 568) = 0;

    v4 = *(v1 + 608);
    *(v1 + 608) = 0;

    *(v1 + 616) = *MEMORY[0x1E695F060];
    *(v1 + 744) &= ~0x10000uLL;
    if ((*(v1 + 89) & 8) == 0)
    {
      [(UILabel *)v1 _resolveMaterialColor:?];
    }

    v5 = *(v1 + 600);
    *(v1 + 600) = 0;

    v6.receiver = v1;
    v6.super_class = UILabel;
    return objc_msgSendSuper2(&v6, sel_setNeedsDisplay);
  }

  return result;
}

- (id)_nilBackgroundColor
{
  if ([(UIView *)self isOpaque])
  {
    v2 = +[UIColor clearColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_UILabelContent)_content
{
  content = self->_content;
  if (!content)
  {
    v4 = [_UILabelContent alloc];
    v5 = [objc_opt_class() _defaultAttributes];
    v6 = [(_UILabelContent *)v4 initWithDefaultAttributes:v5];
    v7 = self->_content;
    self->_content = v6;

    content = self->_content;
  }

  return content;
}

- (double)_letterformAwareAllAlignmentInsets
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = a1[93];
  v2 = 0.0;
  if ((v1 & 0x6000000000) != 0)
  {
    if ((v1 & 0x10000000) != 0)
    {
      v4 = [a1 layer];
      v3 = v4;
      if (v4 && ([v4 letterformAwareInsetsAreValid] & 1) == 0)
      {
        [v3 updateContentInsets];
      }
    }

    else
    {
      v3 = 0;
    }

    if ([v3 letterformAwareInsetsAreValid])
    {
      [v3 letterformAwareInsets];
      v2 = 0.0 - v5;
    }
  }

  return v2;
}

- (void)_updateSystemConstraints
{
  v3.receiver = self;
  v3.super_class = UILabel;
  [(UIView *)&v3 _updateSystemConstraints];
  [(UILabel *)self _updateTightBoundingBoxLayoutGuideConstraintsIfNecessary];
}

- (CGSize)intrinsicContentSize
{
  if (!self)
  {
    v16 = 0.0;
    v4 = 0.0;
    goto LABEL_23;
  }

  v3 = [(UILabel *)self _useShortcutIntrinsicContentSize];
  if (v3)
  {
    if ([(UILabel *)self numberOfLines]== 1)
    {
      if ((*&self->super._viewFlags & 0x2000000000000) != 0)
      {
        v4 = 65536.0;
      }

      else
      {
        v4 = -1.0;
      }

      goto LABEL_13;
    }

    v6 = 0;
  }

  else
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v6 = [(UILabel *)self numberOfLines]== 1;
      goto LABEL_15;
    }

    v5 = [(UILabel *)self _multilineLabelRequiresCarefulMeasurement];
    v6 = [(UILabel *)self numberOfLines]== 1;
    if (v5)
    {
      goto LABEL_15;
    }
  }

  if ((*(&self->super._viewFlags + 6) & 2) == 0)
  {
LABEL_15:
    [(UILabel *)self _preferredMaxLayoutWidth];
    if (v10 <= 0.0)
    {
      v10 = 3.40282347e38;
    }

    [(UILabel *)self _intrinsicSizeWithinSize:v10];
    v9 = v12;
    v13 = 65536.0;
    if (v6)
    {
      v13 = v11;
    }

    if (v3)
    {
      v4 = v13;
    }

    else
    {
      v4 = v11;
    }

    goto LABEL_22;
  }

  v4 = 65536.0;
LABEL_13:
  v7 = [(UILabel *)self font];
  [v7 lineHeight];
  UICeilToViewScale(self);
  v9 = v8;

LABEL_22:
  v14 = [(UILabel *)self _letterformAwareAllAlignmentInsets];
  v16 = v9 + v14 + 0.0 + v15 + 0.0;
LABEL_23:
  v17 = v4;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)_updateTightBoundingBoxLayoutGuideConstraintsIfNecessary
{
  if (a1)
  {
    v2 = [(UILabel *)a1 __tightBoundingBoxLayoutGuide];
    if (v2)
    {
      v28 = v2;
      [a1 bounds];
      v4 = v3;
      v6 = v5;
      [a1 intrinsicContentSize];
      v8 = v7;
      v10 = v9;
      v30.origin.x = [(UILabel *)a1 _drawTextInRect:1 baselineCalculationOnly:0 returningDeviceMetricsOfFirstLine:0 returningMultilineDeviceMetrics:v4 forceMultiline:v6, v7, v9];
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      MinY = CGRectGetMinY(v30);
      v31.origin.x = v4;
      v31.origin.y = v6;
      v31.size.width = v8;
      v31.size.height = v10;
      v26 = CGRectGetMinY(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      MinX = CGRectGetMinX(v32);
      v33.origin.x = v4;
      v33.origin.y = v6;
      v33.size.width = v8;
      v33.size.height = v10;
      v24 = CGRectGetMinX(v33);
      v34.origin.x = v4;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v10;
      MaxY = CGRectGetMaxY(v34);
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v22 = CGRectGetMaxY(v35);
      v36.origin.x = v4;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v10;
      MaxX = CGRectGetMaxX(v36);
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v16 = MaxX - CGRectGetMaxX(v37);
      v17 = [v28 _systemConstraints];
      v18 = [v17 objectAtIndexedSubscript:0];
      [v18 setConstant:MinY - v26];

      v19 = [v17 objectAtIndexedSubscript:1];
      [v19 setConstant:MinX - v24];

      v20 = [v17 objectAtIndexedSubscript:2];
      [v20 setConstant:MaxY - v22];

      v21 = [v17 objectAtIndexedSubscript:3];
      [v21 setConstant:v16];

      v2 = v28;
    }
  }
}

- (id)__tightBoundingBoxLayoutGuide
{
  if (a1)
  {
    a1 = objc_getAssociatedObject(a1, &kTightBoudingBoxLayoutGuideKey);
    v1 = vars8;
  }

  return a1;
}

- (_UIScrollPocketInteraction)scrollPocketInteraction
{
  v2 = self;
  v3 = [(UIView *)v2 _typedStorage];
  v4 = sub_188A845C4();

  return v4;
}

- (void)_updateScrollPocketInteraction
{
  v2 = self;
  sub_188A842AC();
}

+ (id)_tooBigChars
{
  objc_opt_self();
  if (qword_1ED497548 != -1)
  {
    dispatch_once(&qword_1ED497548, &__block_literal_global_272_0);
  }

  v0 = qword_1ED497540;

  return v0;
}

- (void)_updateProperties
{
  v3.receiver = self;
  v3.super_class = UILabel;
  [(UIView *)&v3 _updateProperties];
  [(UILabel *)self _updateScrollPocketInteraction];
}

- (UIEdgeInsets)_contentInsetsFromFonts
{
  v3 = [(UILabel *)self _content];
  v4 = 0.0;
  if ([v3 isNil])
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v8 = [v3 string];
    v9 = +[UILabel _tooBigChars];
    v10 = [v8 rangeOfCharacterFromSet:v9];

    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v3 isAttributed])
      {
        v11 = [v3 attributedString];
        v12 = [v3 defaultAttributes];
        v13 = [v12 objectForKeyedSubscript:*off_1E70EC918];
        v7 = [UILabel _insetsForAttributedString:v11 withDefaultFont:v13 inView:self];
        v6 = v14;
        v5 = v15;
        v4 = v16;
      }

      else
      {
        v11 = [v3 string];
        v12 = [(UILabel *)self font];
        v7 = [UILabel _insetsForString:v17 withFont:v12 inView:self];
        v6 = v18;
        v5 = v19;
        v4 = v20;
      }
    }
  }

  v21 = v7;
  v22 = v6;
  v23 = v5;
  v24 = v4;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)dealloc
{
  if (self->_accessibilityButtonShapesChangedToken)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 _removeObserver:self->_accessibilityButtonShapesChangedToken];

    self->_accessibilityButtonShapesChangedToken = 0;
  }

  v4 = [(UILabel *)self _visualStyle];
  [v4 actionsForDeallocationOfLabel:self];

  v5.receiver = self;
  v5.super_class = UILabel;
  [(UIView *)&v5 dealloc];
}

IMP __22__UILabel__commonInit__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getMethodImplementation(v0, sel__defaultAttributes);
  qword_1ED497528 = result;
  return result;
}

- (UIColor)textColor
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 defaultValueForAttribute:*off_1E70EC920];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_opt_class() _defaultColor];
  }

  v6 = v5;

  return v6;
}

- (void)tintColorDidChange
{
  if (self && ([(UILabel *)self _textColorFollowsTintColor]|| (*(&self->_textLabelFlags + 3) & 0x80) != 0))
  {

    [(UILabel *)self _invalidateLabelDisplay];
  }
}

void __23__UILabel__tooBigChars__block_invoke()
{
  v0 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  v1 = qword_1ED497540;
  qword_1ED497540 = v0;
}

- (UIFont)font
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 font];

  return v3;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  if ((*(&self->_textLabelFlags + 4) & 0x40) != 0)
  {
    [(UILabel *)self _letterformAwareAllAlignmentInsets];
    v2 = v4 + 0.0;
    v3 = v5 + 0.0;
  }

  v6 = 0.0;
  v7 = 0.0;
  result.right = v3;
  result.bottom = v7;
  result.left = v2;
  result.top = v6;
  return result;
}

- (void)_runMarqueeIfEnabledAndAncestorIsFocused
{
  if (a1)
  {
    v2 = [a1 _focusSystem];
    v3 = [v2 focusedItem];
    v7 = _UIFocusEnvironmentContainingView(v3);

    v4 = [a1 isDescendantOfView:v7];
    v5 = v7;
    if (v4)
    {
      if (v7)
      {
        v6 = [a1 _tracksFocusedAncestors];
      }

      else
      {
        v6 = 0;
      }

      [a1 setMarqueeRunning:v6];
      v5 = v7;
    }
  }
}

- (id)currentTextColor
{
  if (self)
  {
    if ([(UILabel *)self _textColorFollowsTintColor]|| (*(&self->_textLabelFlags + 3) & 0x80) != 0)
    {
      v5 = [(UIView *)self _overrideTintColor];
      v6 = v5;
      if (v5)
      {
        v3 = v5;
      }

      else
      {
        v7 = [(UIView *)self tintColor];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = [(UILabel *)self textColor];
        }

        v3 = v9;
      }

      if (!v3)
      {
LABEL_19:
        v3 = [objc_opt_class() _defaultColor];
      }
    }

    else
    {
      if (![(UILabel *)self isEnabled])
      {
        v4 = [(UILabel *)self _disabledFontColor];
LABEL_14:
        v3 = v4;
        if (v4)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if (![(UILabel *)self isHighlighted]|| (*(&self->_textLabelFlags + 4) & 8) != 0 || ([(UILabel *)self highlightedTextColor], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v4 = [(UILabel *)self textColor];
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_20:

  return v3;
}

- (void)_invalidateMaterialColor
{
  if (a1)
  {
    if ((*(a1 + 89) & 8) == 0)
    {
      [(UILabel *)a1 _resolveMaterialColor:?];
    }
  }
}

- (void)setScrollPocketInteraction:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = [(UIView *)v6 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937088);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v10 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(&v7->super.isa + v9);
  *(&v7->super.isa + v9) = 0x8000000000000000;
  sub_188A40430(v8, &_s26ScrollPocketInteractionKeyVN, isUniquelyReferenced_nonNull_native);
  *(&v7->super.isa + v9) = v12;
  swift_endAccess();
}

- (double)_firstBaselineOffsetFromTop
{
  fontForShortcutBaselineCalculation = self->_fontForShortcutBaselineCalculation;
  if (fontForShortcutBaselineCalculation)
  {
    [(UIFont *)fontForShortcutBaselineCalculation lineHeight];
    [(UIFont *)self->_fontForShortcutBaselineCalculation descender];
    UIRoundToViewScale(self);
    firstBaseline = v4;
  }

  else
  {
    [(UILabel *)self _ensureBaselineMetricsReturningBounds];
    firstBaseline = self->_intrinsicSizeBaselineInfo.firstBaseline;
  }

  return firstBaseline + [(UILabel *)self _letterformAwareAllAlignmentInsets]+ 0.0;
}

- (NSLineBreakStrategy)lineBreakStrategy
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 paragraphStyle];
  v4 = [v3 lineBreakStrategy];

  return v4;
}

- (id)_materializedAttributedString
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 _content];
    v3 = [v2 attributedStringContent];
    v4 = dyld_program_sdk_at_least();
    [(UILabel *)v1 _setContent:v3 adjustingFontForAccessibilityTraits:1 adjustingFontForTypesettingLanguage:v4 adjustingFontForTypesettingLanguageAwareLineHeightRatio:v4 checkingForDifferences:0];

    v5 = [v1 _content];
    v1 = [v5 attributedString];
  }

  return v1;
}

- (NSLineBreakMode)lineBreakMode
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 paragraphStyle];
  v4 = [v3 lineBreakMode];

  return v4;
}

- (void)_invalidateBaselineConstraints
{
  if ((*(&self->super._viewFlags + 7) & 2) != 0)
  {
    v3 = [(UIView *)self _layoutEngine];
    if (v3)
    {
      [(UILabel *)self _baselineOffsetFromBottom];
      v5 = v4;
      if (self->_previousFirstLineBaseline != self->_intrinsicSizeBaselineInfo.firstBaseline || self->_previousBaselineOffsetFromBottom != v4)
      {
        v6.receiver = self;
        v6.super_class = UILabel;
        [(UIView *)&v6 _invalidateBaselineConstraints];
        self->_previousFirstLineBaseline = self->_intrinsicSizeBaselineInfo.firstBaseline;
        self->_previousBaselineOffsetFromBottom = v5;
      }
    }
  }
}

- (double)_firstLineBaseline
{
  p_intrinsicSizeBaselineInfo = &self->_intrinsicSizeBaselineInfo;
  v4 = fabs(self->_intrinsicSizeBaselineInfo.firstBaseline);
  [(UIView *)self bounds];
  v6 = [(UILabel *)self _sizingRuleAdjustedBoundsForBounds:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  textLabelFlags = self->_textLabelFlags;
  if ((*&textLabelFlags & 0x1000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    self->_textLabelFlags = (*&textLabelFlags | 0x1000000);
    v14 = [(UIView *)self needsDisplay];
  }

  v15 = v4 >= 2.22044605e-16 && !v14;
  if (!v15 || (v17.origin.x = v6, v17.origin.y = v8, v17.size.width = v10, v17.size.height = v12, !CGRectEqualToRect(p_intrinsicSizeBaselineInfo->referenceBounds, v17)))
  {
    [(UILabel *)self _drawTextInRect:1 baselineCalculationOnly:v6, v8, v10, v12];
  }

  return p_intrinsicSizeBaselineInfo->firstBaseline;
}

- (void)_accessibilityButtonShapesParametersDidChange
{
  v3 = [(UILabel *)self _defaultAttributes];
  v6 = [v3 mutableCopy];

  v4 = *off_1E70ECAD8;
  v5 = [v6 objectForKey:*off_1E70ECAD8];

  if (!self || !_AXSButtonShapesEnabled() || [-[UIView _screen](self "_screen")] == 3)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if ((v5 != 0) != (*(&self->_textLabelFlags + 2) & 4) >> 2)
  {
    if (!v5)
    {
      [v6 setObject:&unk_1EFE33D90 forKey:v4];
      goto LABEL_6;
    }

LABEL_5:
    [v6 removeObjectForKey:v4];
LABEL_6:
    [(UILabel *)self _setDefaultAttributes:v6];
  }

LABEL_10:
}

- (NSTextAlignment)textAlignment
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 paragraphStyle];
  v4 = [v3 alignment];

  return v4;
}

- (double)_firstLineBaselineOffsetFromBoundsTop
{
  if ([(UILabel *)self _measuredNumberOfLines]< 1)
  {
    [(UILabel *)self _lastLineBaseline];
  }

  else
  {
    [(UILabel *)self _firstLineBaseline];
  }

  UIRoundToViewScale(self);
  return result;
}

- (double)_lastLineBaseline
{
  p_intrinsicSizeBaselineInfo = &self->_intrinsicSizeBaselineInfo;
  v4 = fabs(self->_intrinsicSizeBaselineInfo.lastBaseline);
  [(UIView *)self bounds];
  v6 = [(UILabel *)self _sizingRuleAdjustedBoundsForBounds:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  textLabelFlags = self->_textLabelFlags;
  if ((*&textLabelFlags & 0x1000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    self->_textLabelFlags = (*&textLabelFlags | 0x1000000);
    v14 = [(UIView *)self needsDisplay];
  }

  v15 = v4 < 2.22044605e-16 && !v14;
  if (!v15 || (v17.origin.x = v6, v17.origin.y = v8, v17.size.width = v10, v17.size.height = v12, !CGRectEqualToRect(p_intrinsicSizeBaselineInfo->referenceBounds, v17)))
  {
    [(UILabel *)self _drawTextInRect:1 baselineCalculationOnly:v6, v8, v10, v12];
  }

  return p_intrinsicSizeBaselineInfo->lastBaseline;
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 0.0;
  v2.receiver = self;
  v2.super_class = UILabel;
  [(UIView *)&v2 _prepareForFirstIntrinsicContentSizeCalculation];
}

- (double)_capOffsetFromBoundsTop
{
  v3 = [(UILabel *)self _content];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v4 = [(UILabel *)self font];
  [v4 capHeight];
  v6 = v5;

  v14[3] = v6;
  if ([v3 isAttributed])
  {
    v7 = [v3 attributedString];
    v8 = [v3 length];
    v9 = *off_1E70EC918;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__UILabel_UILabel_ModernUISupport___capOffsetFromBoundsTop__block_invoke;
    v13[3] = &unk_1E712A060;
    v13[4] = v14;
    [v7 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0x100000, v13}];
  }

  [(UILabel *)self _firstLineBaseline];
  UIRoundToViewScale(self);
  v11 = v10;
  _Block_object_dispose(v14, 8);

  return v11;
}

uint64_t __59__UILabel_UILabel_ModernUISupport___capOffsetFromBoundsTop__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 capHeight];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

- (double)_firstLineBaselineFrameOriginY
{
  [(UIView *)self frame];
  v4 = v3;
  [(UILabel *)self _firstLineBaselineOffsetFromBoundsTop];
  return v5 + v4;
}

- (CGSize)textSize
{
  v3 = [(UILabel *)self _content];
  v4 = v3;
  p_size = &self->_size;
  if (self->_size.width == 0.0 && self->_size.height == 0.0 && [v3 length] >= 1)
  {
    if ([v4 isAttributed])
    {
      v6 = [(UILabel *)self _synthesizedAttributedText];
      v7 = [(UILabel *)self _stringDrawingOptions];
      v8 = [(UILabel *)self _stringDrawingContext];
      [(UILabel *)self _boundingRectWithAttributedString:v6 size:v7 options:v8 context:3.40282347e38, 3.40282347e38];
      p_size->width = v9;
      self->_size.height = v10;
    }

    else
    {
      v6 = [v4 string];
      v11 = [(UILabel *)self _stringDrawingOptions];
      v8 = [(UILabel *)self _defaultAttributes];
      v12 = [(UILabel *)self _stringDrawingContext];
      [(UILabel *)self _boundingRectWithString:v6 size:v11 options:v8 attributes:v12 context:3.40282347e38, 3.40282347e38];
      p_size->width = v13;
      self->_size.height = v14;
    }
  }

  width = p_size->width;
  height = self->_size.height;

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)_startMarqueeIfNecessary
{
  v178 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 _backlightLuminance];

  if (v4 != 1 && (~*&self->_textLabelFlags & 0xE00) == 0)
  {
    v5 = [(UILabel *)self text];
    v6 = [v5 _isNaturallyRTL];

    [(UIView *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v162 = v11;
    v14 = v13;
    v157 = v13;
    [(UILabel *)self _contentInsetsFromFonts];
    v16 = v15;
    v18 = v17;
    v150 = v19;
    obj = v20;
    v21 = v17 + v20;
    v22 = v14 - (v15 + v19);
    v23 = v12 - (v17 + v20);
    [(UILabel *)self textSizeForWidth:?];
    v143 = v24;
    v25 = v24 - v21;
    v26 = v24 - v21 + v23;
    [(UILabel *)self marqueeLoopPadding];
    v28 = v27 + v26;
    os_variant_has_internal_diagnostics();
    v29 = +[UITraitCollection _currentTraitCollectionIfExists];
    v30 = [(UIView *)self traitCollection];
    [UITraitCollection setCurrentTraitCollection:v30];

    v31 = _UISetCurrentFallbackEnvironment(self);
    v32 = [[UIGraphicsImageRenderer alloc] initWithSize:v28, v22];
    v166[0] = MEMORY[0x1E69E9820];
    v166[1] = 3221225472;
    v166[2] = __24__UILabel__startMarquee__block_invoke;
    v166[3] = &unk_1E712A010;
    v166[4] = self;
    *&v166[5] = v28;
    *&v166[6] = v22;
    v155 = v22;
    v167 = v6;
    v139 = v25;
    *&v166[7] = v25;
    *&v166[8] = v16;
    v164 = v18;
    *&v166[9] = v18;
    *&v166[10] = v150;
    *&v166[11] = obj;
    *&v166[12] = v143;
    *&v166[13] = v8;
    *&v166[14] = v10;
    *&v166[15] = v162;
    *&v166[16] = v157;
    v33 = [(UIGraphicsImageRenderer *)v32 imageWithActions:v166];
    _UIRestorePreviousFallbackEnvironment(v31);
    [UITraitCollection setCurrentTraitCollection:v29];
    v34 = [(UIView *)self viewWithTag:4032914800];
    if (v34)
    {
      v35 = v34;
      [(UIView *)v34 setAlpha:1.0];
      [(UIImageView *)v35 setImage:v33];
    }

    else
    {
      v35 = [[UIImageView alloc] initWithImage:v33];
      [(UIView *)v35 setTag:4032914800];
      [(UIView *)self addSubview:v35];
    }

    [(UIImageView *)v35 setFrame:v8 + v18, v10 + v16, v23, v22];
    v148 = v28;
    v36 = v23 / v28;
    v37 = [(UIView *)v35 layer];
    [v37 setContentsRect:{0.0, 0.0, v23 / v28, 1.0}];

    v38 = self;
    [(UILabel *)v38 textSizeForWidth:3.40282347e38];
    v40 = v39;
    [(UILabel *)v38 marqueeLoopPadding];
    v42 = (v40 + v41) / 30.0;
    v43 = [(UILabel *)v38 _maximumMarqueeTextWidth];
    [(UILabel *)v38 marqueeLoopPadding];
    v45 = v44;

    v146 = (v43 + v45) / 30.0 - v42 + 0.0;
    v46 = v42 + 1.5 + v146;
    v47 = [(UILabel *)v38 marqueeRepeatCount];
    if (v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = 3.4028e38;
    }

    v49 = CACurrentMediaTime();
    v50 = v49 + 0.0;
    v152 = v32;
    v153 = v29;
    if ((*(&self->_textLabelFlags + 1) & 0x10) != 0)
    {
      v53 = [(UIView *)v35 layer];
      v54 = [v53 animationForKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

      [v54 beginTime];
      v52 = v55;
      v56 = [(UILabel *)v38 _marqueeAnimationDelegate];
      [v56 setSuppressEnded:1];

      v57 = [(UIView *)v35 layer];
      [v57 removeAnimationForKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

      [v54 duration];
      if (v58 >= v46)
      {
        v46 = v58;
      }

      v59 = [(UIView *)v35 layer];
      v60 = [v59 mask];

      v61 = [v60 animationForKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];

      [v61 beginTime];
      v51 = v62;
      [v60 removeAnimationForKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
      v63 = [v60 animationForKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
      [v61 beginTime];
      v144 = v64;
      [v60 removeAnimationForKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
    }

    else
    {
      v144 = v49 + 0.0;
      v51 = v49 + 0.0;
      v52 = v49 + 0.0;
    }

    v65 = v164;
    v66 = objc_opt_new();
    marqueeAnimations = v38->_marqueeAnimations;
    v38->_marqueeAnimations = v66;

    v68 = objc_opt_new();
    marqueeMaskAnimations = v38->_marqueeMaskAnimations;
    v38->_marqueeMaskAnimations = v68;

    v70 = [(UIView *)v35 layer];
    v71 = [v70 mask];

    v72 = [(UIView *)v35 layer];
    v73 = [v72 mask];

    p_isa = &v38->super.super.super.isa;
    if (!v73)
    {
      v74 = [UIImage kitImageNamed:@"UILabelMarqueeMask.png"];
      [v74 size];
      v75 = v51;
      v77 = 1.0 / v76;
      v78 = [MEMORY[0x1E6979398] layer];

      [v78 setContents:{objc_msgSend(v74, "CGImage")}];
      v79 = 0.5 - v77 * 0.5;
      v80 = v77;
      v51 = v75;
      v65 = v164;
      [v78 setContentsCenter:{v79, 0.0, v80, 1.0}];
      [v74 scale];
      [v78 setContentsScale:?];
      [v78 setFrame:{-v164, 0.0, v162, v155}];
      v81 = [(UIView *)v35 layer];
      [v81 setMask:v78];

      v71 = v78;
    }

    v151 = v33;
    v158 = v35;
    if (v6)
    {
      v82 = 1.0 - v36;
    }

    else
    {
      [(UILabel *)v38 marqueeLoopPadding];
      v82 = (v139 + v83) / v148;
    }

    v84 = [MEMORY[0x1E6979390] animationWithKeyPath:@"contentsRect.origin.x"];
    [v84 setBeginTime:v52];
    [v84 setDuration:v46];
    *&v85 = v48;
    [v84 setRepeatCount:v85];
    v86 = *MEMORY[0x1E69797E0];
    v156 = v84;
    [v84 setFillMode:*MEMORY[0x1E69797E0]];
    v176[0] = &unk_1EFE33D78;
    v176[1] = &unk_1EFE33D78;
    v87 = [MEMORY[0x1E696AD98] numberWithDouble:v82];
    v176[2] = v87;
    v88 = [MEMORY[0x1E696AD98] numberWithDouble:v82];
    v176[3] = v88;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:4];

    v154 = v71;
    if (v6)
    {
      v90 = [v89 reverseObjectEnumerator];
      v91 = [v90 allObjects];

      v140 = v65;
      v89 = v91;
      v92 = obj;
    }

    else
    {
      v140 = 8.0;
      v92 = v65;
    }

    v149 = v89;
    [v156 setValues:v89];
    v175[0] = &unk_1EFE2F048;
    v93 = [MEMORY[0x1E696AD98] numberWithDouble:1.5 / v46];
    v175[1] = v93;
    v94 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v146 / v46];
    v175[2] = v94;
    v175[3] = &unk_1EFE2F058;
    v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:4];
    [v156 setKeyTimes:v95];

    v96 = [(UILabel *)v38 _marqueeAnimationDelegate];
    [v156 setDelegate:v96];

    [(NSMutableDictionary *)v38->_marqueeAnimations setObject:v156 forKeyedSubscript:@"UILabelMarqueeLayerContentOriginXAnimationKey"];
    v97 = [(UIView *)v35 layer];
    [v97 addAnimation:v156 forKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

    v98 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.width"];
    [v98 setBeginTime:v51];
    [v98 setDuration:v46];
    *&v99 = v48;
    [v98 setRepeatCount:v99];
    v137 = v86;
    [v98 setFillMode:v86];
    v100 = [MEMORY[0x1E696AD98] numberWithDouble:v162 - v92 + 8.0];
    v101 = [MEMORY[0x1E696AD98] numberWithDouble:v162];
    v174[0] = v100;
    v174[1] = v100;
    v174[2] = v101;
    v174[3] = v101;
    v174[4] = v100;
    v174[5] = v100;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:6];
    [v98 setValues:v102];

    v173[0] = &unk_1EFE2F048;
    v103 = [MEMORY[0x1E696AD98] numberWithDouble:1.5 / v46];
    v173[1] = v103;
    v104 = [MEMORY[0x1E696AD98] numberWithDouble:1.76666667 / v46];
    v173[2] = v104;
    v105 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - (v146 + 0.266666667) / v46];
    v173[3] = v105;
    v106 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v146 / v46];
    v173[4] = v106;
    v173[5] = &unk_1EFE2F058;
    v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:6];
    [v98 setKeyTimes:v107];

    v108 = v98;
    v109 = p_isa;

    v110 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
    [v110 setBeginTime:v144];
    [v110 setDuration:v46];
    [v110 setFillMode:v137];
    *&v111 = v48;
    [v110 setRepeatCount:v111];
    v112 = MEMORY[0x1E696AD98];
    v147 = v100;
    v113 = v101;
    [v100 floatValue];
    v115 = [v112 numberWithDouble:v114 * 0.5 - v140];
    v116 = MEMORY[0x1E696AD98];
    [v113 floatValue];
    v118 = [v116 numberWithDouble:v117 * 0.5 - v164];
    v172[0] = v115;
    v172[1] = v115;
    v172[2] = v118;
    v172[3] = v118;
    v172[4] = v115;
    v172[5] = v115;
    v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:6];
    [v110 setValues:v119];

    v120 = [v108 keyTimes];
    [v110 setKeyTimes:v120];

    v121 = v154;
    [v154 addAnimation:v108 forKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
    [p_isa[84] setObject:v108 forKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
    [v154 addAnimation:v110 forKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
    [p_isa[84] setObject:v110 forKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
    textLabelFlags = self->_textLabelFlags;
    if ((*&textLabelFlags & 0x10000000) != 0)
    {
      v123 = [p_isa layer];
      [v123 _clearContents];

      textLabelFlags = self->_textLabelFlags;
    }

    if ((*&textLabelFlags & 0x1000) == 0)
    {
      v138 = v118;
      v141 = v115;
      v142 = v110;
      v145 = v113;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      obja = [(UILabel *)p_isa _siblingMarqueeLabels];
      v165 = [obja countByEnumeratingWithState:&v168 objects:v177 count:16];
      if (v165)
      {
        v163 = *v169;
        do
        {
          for (i = 0; i != v165; ++i)
          {
            if (*v169 != v163)
            {
              objc_enumerationMutation(obja);
            }

            v125 = *(*(&v168 + 1) + 8 * i);
            if (v125 != v109)
            {
              v126 = [v125 viewWithTag:4032914800];
              v127 = [v126 layer];
              v128 = [v127 mask];

              v129 = [v126 layer];
              v130 = [v129 animationForKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];
              v131 = [v130 copy];

              v132 = [v128 animationForKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
              v133 = [v132 copy];

              v134 = [v128 animationForKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
              v135 = [v134 copy];

              [v131 setBeginTime:v50];
              [v133 setBeginTime:v50];
              [v135 setBeginTime:v50];
              v136 = [v126 layer];
              [v136 addAnimation:v131 forKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

              [v128 addAnimation:v133 forKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
              [v128 addAnimation:v135 forKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];

              v109 = p_isa;
            }
          }

          v165 = [obja countByEnumeratingWithState:&v168 objects:v177 count:16];
        }

        while (v165);
      }

      v121 = v154;
      v110 = v142;
      v113 = v145;
      v118 = v138;
      v115 = v141;
    }
  }
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  v5 = a4;
  v6 = self;
  _sSo7UILabelC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0I16ElementCollectorCtF_0(v5);
}

- (Class)_intelligenceBaseClass
{
  sub_188A34624(0, qword_1EA92E678);

  return swift_getObjCClassFromMetadata();
}

- (unint64_t)defaultAccessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UILabel;
  return [&v3 defaultAccessibilityTraits]| 0x40;
}

- (id)_image
{
  [(UILabel *)self _contentInsetsFromFonts];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self bounds];
  v12 = v11 - (v10 + v6);
  v14 = v13 - (v4 + v8);
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __32__UILabel__UILegibility___image__block_invoke;
  v17[3] = &unk_1E710C370;
  *&v17[5] = v4;
  *&v17[6] = v6;
  *&v17[7] = v8;
  *&v17[8] = v10;
  v17[4] = self;
  return _UIGraphicsDrawIntoImageContextWithMoreOptions(0, 0, v17, v12, v14, v15);
}

uint64_t __32__UILabel__UILegibility___image__block_invoke(uint64_t a1)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextTranslateCTM(v3, *(a1 + 48), *(a1 + 40));
  v4 = [*(a1 + 32) layer];
  v5 = GetContextStack(0);
  if (*v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[3 * (*v5 - 1) + 1];
  }

  return [v4 renderInContext:v6];
}

- (id)largeContentTitle
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetLargeContentTitle];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = UILabel;
    v5 = [(UIView *)&v8 largeContentTitle];
  }

  else
  {
    v6 = [(UILabel *)self attributedText];
    v5 = [v6 string];
  }

  return v5;
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  if ((a3 - 5) > 1)
  {
    v8.receiver = self;
    v8.super_class = UILabel;
    [(UIView *)&v8 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:a6];
  }

  else
  {
    _UIViewBaselineToEdgeSpacing([(UILabel *)self _fontInfoForBaselineSpacing], a3);

    UICeilToViewScale(self);
  }

  return result;
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 nextToNeighbor:(id)a5 edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)a8
{
  v10 = *&a6;
  v13 = *&a3;
  if ((a3 - 5) > 1)
  {
    goto LABEL_12;
  }

  v15 = a4 - 11;
  if (os_variant_has_internal_diagnostics())
  {
    if (v15 < 2)
    {
      goto LABEL_4;
    }

    v17 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "UIKit problem: invalid argument for internal layout spacing method", buf, 2u);
    }

LABEL_12:
    v19.receiver = self;
    v19.super_class = UILabel;
    [(UIView *)&v19 _autolayoutSpacingAtEdge:v13 forAttribute:a4 nextToNeighbor:a5 edge:v10 attribute:a7 multiplier:a8];
    return result;
  }

  if (v15 >= 2)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &_autolayoutSpacingAtEdge_forAttribute_nextToNeighbor_edge_attribute_multiplier____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "UIKit problem: invalid argument for internal layout spacing method", buf, 2u);
    }

    goto LABEL_12;
  }

LABEL_4:

  _UIViewBaselineSpacing(self, a5, v13);
  return result;
}

- (void)_setCuiCatalog:(id)a3
{
  v5 = a3;
  if (self->_cuiCatalog != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_cuiCatalog, a3);
    layout = self->_layout;
    self->_layout = 0;

    v8.receiver = self;
    v8.super_class = UILabel;
    [(UIView *)&v8 setNeedsDisplay];
    v5 = v7;
  }
}

- (void)_setCuiStyleEffectConfiguration:(id)a3
{
  if (self->_cuiStyleEffectConfiguration != a3)
  {
    v4 = [a3 copy];
    if (!v4)
    {
      if (dyld_program_sdk_at_least())
      {
        v4 = objc_alloc_init(MEMORY[0x1E6999430]);
      }

      else
      {
        v4 = 0;
      }
    }

    v5 = [v4 appearanceName];

    if (!v5)
    {
      v6 = [(UIView *)self traitCollection];
      v7 = [(UITraitCollection *)v6 _styleEffectAppearanceName];
      [v4 setAppearanceName:v7];
    }

    cuiStyleEffectConfiguration = self->_cuiStyleEffectConfiguration;
    self->_cuiStyleEffectConfiguration = v4;

    layout = self->_layout;
    self->_layout = 0;

    v10.receiver = self;
    v10.super_class = UILabel;
    [(UIView *)&v10 setNeedsDisplay];
  }
}

- (void)setPreferredMaxLayoutWidth:(CGFloat)preferredMaxLayoutWidth
{
  v5 = [(UILabel *)self _needsDoubleUpdateConstraintsPass];
  if (dyld_program_sdk_at_least())
  {
    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFDFFFLL | ((preferredMaxLayoutWidth != 0.0) << 13));
  }

  else
  {
    *&self->_textLabelFlags |= 0x2000uLL;
  }

  if (self->_preferredMaxLayoutWidth != preferredMaxLayoutWidth)
  {
    self->_preferredMaxLayoutWidth = preferredMaxLayoutWidth;
    [(UILabel *)self invalidateIntrinsicContentSize];
  }

  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:v5];
}

- (void)_setDefaultAttributes:(id)a3
{
  v11 = a3;
  v4 = self->_content;
  v5 = [(UILabel *)self _content];
  v6 = [v5 contentWithDefaultAttributes:v11];
  [(UILabel *)self _setContent:v6];

  if (v4 != self->_content)
  {
    [(UILabel *)self _noteInstanceCustomizationForAttributedString:v11 attributes:?];
    if ([(_UILabelContent *)self->_content isAttribute:*off_1E70EC920 uniformlyEqualToValue:0])
    {
      v7 = [(UILabel *)self textColor];
      lastSetColor = self->_lastSetColor;
      self->_lastSetColor = v7;
      v9 = v7;

      [(UILabel *)self _resolveMaterialColor:v9];
    }

    else
    {
      v10 = self->_lastSetColor;
      self->_lastSetColor = 0;

      [(UILabel *)self _resolveMaterialColor:?];
    }
  }
}

- (void)_noteInstanceCustomizationForAttributedString:(void *)a3 attributes:
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1 _visualStyle];
    v7 = [v6 shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:v8 attributes:v5];

    if (v7)
    {
      a1[93] |= 0x80000uLL;
    }
  }
}

- (void)_resolveMaterialColor:(uint64_t)a1
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if ([a1 _enableMonochromaticTreatment])
    {
      v4 = [a1 _monochromaticContentEffect];
      v5 = v4;
      if (!v4)
      {
        [a1 mt_setContentEffects:0];
        goto LABEL_16;
      }

      v12[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [a1 mt_setContentEffects:v6];
LABEL_14:

LABEL_16:
      goto LABEL_17;
    }

    if (!v3)
    {
      [a1 mt_setContentEffects:0];
      goto LABEL_17;
    }

    v5 = v3;
    if (([a1 isEnabled] & 1) == 0)
    {
      v7 = [a1 _disabledFontColor];

      v5 = v7;
    }

    if (*(a1 + 113))
    {
      v8 = [a1 traitCollection];
      v6 = [v5 _resolvedMaterialWithTraitCollection:v8];

      if ([v6 isVibrant])
      {
        v9 = [*(a1 + 552) string];
        v10 = [v9 _containsEmoji];

        if (!v10)
        {
          goto LABEL_13;
        }
      }
    }

    v6 = 0;
LABEL_13:
    v11 = [v6 contentEffects];
    [a1 mt_setContentEffects:v11];

    goto LABEL_14;
  }

LABEL_17:
}

- (void)_setContent:(id)a3
{
  v5 = a3;
  v4 = dyld_program_sdk_at_least();
  [(UILabel *)self _setContent:v5 adjustingFontForAccessibilityTraits:1 adjustingFontForTypesettingLanguage:v4 adjustingFontForTypesettingLanguageAwareLineHeightRatio:v4 checkingForDifferences:1];
}

- (void)_setContent:(uint64_t)a3 adjustingFontForAccessibilityTraits:(int)a4 adjustingFontForTypesettingLanguage:(int)a5 adjustingFontForTypesettingLanguageAwareLineHeightRatio:(char)a6 checkingForDifferences:
{
  v12 = a2;
  if (!a1)
  {
    goto LABEL_48;
  }

  if ((a6 & 1) == 0)
  {
    objc_storeStrong((a1 + 552), a2);
    goto LABEL_48;
  }

  v13 = *(a1 + 552);
  v14 = v12;
  v12 = v14;
  if (v13 == v14)
  {

    goto LABEL_48;
  }

  if (v14 && v13)
  {
    v15 = [v13 isEqual:v14];

    if (v15)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v16 = [*(a1 + 552) differenceVersusContent:v12 checkFontDifference:a3];
  v17 = v16;
  if ((*(a1 + 747) & 0x20) == 0 || (v16 & 0x200) != 0)
  {
    v26 = 0;
    if (a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = v12;
    v19 = [a1 _defaultAttributes];
    v12 = [v18 contentWithDefaultAttributes:v19];

    v26 = v12 != v18;
    if (a3)
    {
      goto LABEL_19;
    }
  }

  if ((a4 & 1) == 0 && !a5)
  {
    v20 = 1;
    goto LABEL_20;
  }

LABEL_19:
  v20 = (v17 & 0x10000) == 0;
LABEL_20:
  v21 = 0;
  v28 = 0;
  v27 = 0;
  if (a4)
  {
    v21 = [a1 _wantsContentAwareTypesettingLanguage];
  }

  v22 = v12;
  v12 = v22;
  if (!v20 && (a3 & 1) != 0)
  {
    v12 = [(UILabel *)a1 _contentAdjustingFontForAccessibilityTraits:v22 forced:0 didAdjustFont:&v28 + 1];
  }

  if (!((v20 || (a5 & 1) == 0) | v21 & 1))
  {
    v23 = [(UILabel *)a1 _contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:v12 didAdjustFont:&v28];

    v12 = v23;
  }

  if (!a4)
  {
    if (!v21)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v21 & 1 | (((v28 | v20) & 1) == 0))
  {
LABEL_30:
    v24 = [(UILabel *)a1 _contentAdjustingFontForTypesettingLanguage:v12 didAdjustFont:&v27];

    v12 = v24;
  }

LABEL_31:
  if (v26 || ((v28 & 0x100) != 0 || (v28 & 1) != 0 || v27 == 1) && v22 != v12)
  {
    v17 = [*(a1 + 552) differenceVersusContent:v12];
  }

  if (v17)
  {
    v25 = *(a1 + 552);
    objc_storeStrong((a1 + 552), v12);
    if ((v17 & 0xFFFFFFFFFFFFFFF7) != 0)
    {
      [a1 _contentDidChange:v17 fromContent:v25];
      if ([a1 _allowsMonochromaticTreatment] && objc_msgSend(a1, "_enableMonochromaticTreatment"))
      {
        [a1 _setMonochromaticTreatment:{objc_msgSend(a1, "_monochromaticTreatment")}];
      }

      [(UILabel *)a1 _invalidateLabelDisplay];
      if ((v17 & 0x4000) != 0)
      {
        [a1 _invalidateLabelSize];
        if ((*(a1 + 95) & 2) != 0 && !*(a1 + 768))
        {
          [a1 _invalidateBaselineConstraints];
        }
      }
    }
  }

LABEL_48:
}

- (id)_contentAdjustingFontForAccessibilityTraits:(char)a3 forced:(_BYTE *)a4 didAdjustFont:
{
  v7 = a2;
  v8 = v7;
  if ((a1[748] & 2) == 0 && (a3 & 1) == 0)
  {
    v9 = v7;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__240;
  v31 = __Block_byref_object_dispose__240;
  v10 = v7;
  v32 = v10;
  v11 = [a1 traitCollection];
  v12 = [v28[5] font];
  v13 = [v12 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v11];

  if (v13)
  {
    if ([v10 isAttributed])
    {
      v14 = [v10 attributedString];
      v15 = [v28[5] length];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__UILabel__contentAdjustingFontForAccessibilityTraits_forced_didAdjustFont___block_invoke;
      v23[3] = &unk_1E7129F78;
      v24 = v11;
      v25 = &v27;
      v26 = a4;
      [v14 enumerateAttributesInRange:0 options:v15 usingBlock:{0x100000, v23}];
    }

    v16 = [v28[5] font];
    v17 = v13;
    v18 = v17;
    if (v16 != v17)
    {
      if (v16)
      {
        v19 = [v16 isEqual:v17];

        if (v19)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v20 = [v28[5] contentByAddingAttribute:*off_1E70EC918 toDefaultAttributesWithValue:v18];
      v21 = v28[5];
      v28[5] = v20;

      if (a4)
      {
        *a4 = 1;
      }

      goto LABEL_15;
    }
  }

LABEL_15:
  v9 = v28[5];

  _Block_object_dispose(&v27, 8);
LABEL_16:

  return v9;
}

- (id)_contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:(_BYTE *)a3 didAdjustFont:
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__240;
  v26 = __Block_byref_object_dispose__240;
  v5 = a2;
  v27 = v5;
  v6 = [a1 traitCollection];
  [v6 _typesettingLanguageAwareLineHeightRatio];
  v8 = v7;

  v9 = [v23[5] font];
  v10 = [(UIFont *)v9 _fontAdjustedForTypesettingLanguageAwareLineHeightRatio:v8];

  if (v10)
  {
    if ([v5 isAttributed])
    {
      v11 = [v5 attributedString];
      v12 = [v23[5] length];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __89__UILabel__contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio_didAdjustFont___block_invoke;
      v21[3] = &unk_1E7129FA0;
      *&v21[5] = v8;
      v21[4] = &v22;
      v21[6] = a3;
      [v11 enumerateAttributesInRange:0 options:v12 usingBlock:{0x100000, v21}];
    }

    v13 = [v23[5] font];
    v14 = v10;
    v15 = v14;
    if (v13 == v14)
    {

      goto LABEL_12;
    }

    if (v13)
    {
      v16 = [v13 isEqual:v14];

      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v17 = [v23[5] contentByAddingAttribute:*off_1E70EC918 toDefaultAttributesWithValue:v15];
    v18 = v23[5];
    v23[5] = v17;

    if (a3)
    {
      *a3 = 1;
    }
  }

LABEL_12:
  v19 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v19;
}

- (id)_contentAdjustingFontForTypesettingLanguage:(_BYTE *)a3 didAdjustFont:
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__240;
  v31 = __Block_byref_object_dispose__240;
  v5 = a2;
  v32 = v5;
  v6 = [v5 string];
  if ([a1 _wantsContentAwareTypesettingLanguage] && objc_msgSend(v6, "length") && (v7 = CTFontCopyTallestTextStyleLanguageForString()) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    v9 = [a1 traitCollection];
    v10 = [v9 typesettingLanguage];

    v8 = v10;
  }

  v11 = [v28[5] font];
  v12 = [(UIFont *)v11 _fontAdjustedForTypesettingLanguage:v8];

  if (v12)
  {
    if ([v5 isAttributed])
    {
      v13 = [v5 attributedString];
      v14 = [v28[5] length];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __69__UILabel__contentAdjustingFontForTypesettingLanguage_didAdjustFont___block_invoke;
      v23[3] = &unk_1E7129F78;
      v24 = v8;
      v25 = &v27;
      v26 = a3;
      [v13 enumerateAttributesInRange:0 options:v14 usingBlock:{0x100000, v23}];
    }

    v15 = [v28[5] font];
    v16 = v12;
    v17 = v16;
    if (v15 == v16)
    {

      goto LABEL_19;
    }

    if (v15)
    {
      v18 = [v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v19 = [v28[5] contentByAddingAttribute:*off_1E70EC918 toDefaultAttributesWithValue:v17];
    v20 = v28[5];
    v28[5] = v19;

    if (a3)
    {
      *a3 = 1;
    }
  }

LABEL_19:
  v21 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v21;
}

- (void)_contentDidChange:(int64_t)a3 fromContent:(id)a4
{
  v5 = a4;
  v8 = [(UILabel *)self _content];
  v6 = [v8 labelViewTextAttachments];
  v7 = [v5 labelViewTextAttachments];

  [(UILabel *)self _addViewsForLabelViewTextAttachments:v6 previousLabelViewTextAttachments:v7];
}

void __60__UILabel__attributedStringIsolatingStringWritingDirection___block_invoke(void *a1, void *a2)
{
  if (!a2)
  {
    a2 = a1[4];
  }

  v6 = a2;
  v3 = [v6 baseWritingDirection];
  if (v3)
  {
    v4 = 8296;
  }

  else
  {
    v4 = 8294;
  }

  if (v3 == 1)
  {
    v4 = 8295;
  }

  v5 = *(a1[5] + 8);
  if (v4 != *(v5 + 24))
  {
    *(v5 + 24) = v4;
    ++*(*(a1[6] + 8) + 24);
  }
}

void __60__UILabel__attributedStringIsolatingStringWritingDirection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7)
  {
    v7 = [*(a1 + 32) paragraphStyle];
  }

  v13 = v7;
  v8 = [v7 baseWritingDirection];
  if (v8)
  {
    v9 = 8296;
  }

  else
  {
    v9 = 8294;
  }

  if (v8 == 1)
  {
    v9 = 8295;
  }

  v10 = *(*(a1 + 48) + 8);
  if (v9 != *(v10 + 24))
  {
    *(v10 + 24) = v9;
    v11 = *(a1 + 64) + 16 * *(*(*(a1 + 56) + 8) + 24);
    *v11 = v9;
    *(v11 + 2) = 0;
    *(v11 + 6) = 0;
    *(v11 + 8) = a3;
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v12 = [v13 mutableCopy];
  [v12 setBaseWritingDirection:*(a1 + 72)];
  [*(a1 + 40) addAttribute:*off_1E70EC988 value:v12 range:{a3, a4}];
}

void __65__UILabel__attributedStringByDisablingHyphenationIfURLsDetected___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [a2 mutableCopy];
    [v7 setHyphenationFactor:0.0];
    [*(a1 + 32) addAttribute:*off_1E70EC988 value:v7 range:{a3, a4}];
  }
}

- (id)_synthesizedAttributedTextForContent:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 attributedString];
    if (v5)
    {
      v6 = [v4 defaultAttributes];
      v7 = [(UILabel *)a1 _synthesizedTextAttributes];
      v69 = v5;
      v70 = v6;
      v71 = v7;
      if (v6 == v7)
      {
        v19 = v7;
        v21 = -[NSAttributedString _ui_synthesizeAttributedSubstringFromRange:usingDefaultAttributes:](v5, 0, [v4 length], v7);
      }

      else
      {
        v8 = [v4 defaultAttributes];
        v9 = [v5 mutableCopy];
        v10 = *off_1E70EC920;
        v11 = [v8 objectForKey:*off_1E70EC920];
        v12 = [v4 length];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __48__UILabel__synthesizedAttributedTextForContent___block_invoke;
        v75[3] = &unk_1E7125C88;
        v13 = v11;
        v76 = v13;
        v14 = v9;
        v77 = v14;
        [v14 enumerateAttribute:v10 inRange:0 options:v12 usingBlock:{0, v75}];
        if (([a1 isEnabled] & 1) == 0)
        {
          v15 = *off_1E70EC9B0;
          v16 = [v8 objectForKey:*off_1E70EC9B0];
          v17 = [v4 length];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __48__UILabel__synthesizedAttributedTextForContent___block_invoke_2;
          v72[3] = &unk_1E7125C88;
          v73 = v16;
          v74 = v14;
          v18 = v16;
          [v74 enumerateAttribute:v15 inRange:0 options:v17 usingBlock:{0, v72}];
        }

        v19 = v71;
        v20 = -[NSAttributedString _ui_synthesizeAttributedSubstringFromRange:usingDefaultAttributes:](v14, 0, [v4 length], v71);
        v21 = [v20 copy];
      }

      if ([a1 _overallWritingDirectionFollowsLayoutDirection])
      {
        v22 = v21;
        if ([v22 length])
        {
          v23 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [a1 semanticContentAttribute]) != UIUserInterfaceLayoutDirectionLeftToRight;
          v100 = 0;
          v101 = &v100;
          v102 = 0x2020000000;
          v103 = 0;
          v96 = 0;
          v97 = &v96;
          v98 = 0x2020000000;
          v99 = 0;
          v24 = [a1 _content];
          v25 = [v24 paragraphStyle];
          v26 = [v22 length];
          v27 = *off_1E70EC988;
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = __60__UILabel__attributedStringIsolatingStringWritingDirection___block_invoke;
          v92[3] = &unk_1E7129EC0;
          v67 = v25;
          v93 = v67;
          v94 = &v96;
          v95 = &v100;
          [v22 enumerateAttribute:v27 inRange:0 options:v26 usingBlock:{0, v92}];
          v28 = v101[3];
          if (!v28)
          {
            v61 = [MEMORY[0x1E696AAA8] currentHandler];
            [v61 handleFailureInMethod:sel__attributedStringIsolatingStringWritingDirection_ object:a1 file:@"UILabel.m" lineNumber:1064 description:@"should have at least one isolate range (beginning to end)"];

            v28 = v101[3];
          }

          v68 = malloc_type_malloc(16 * v28, 0x100004030AC6366uLL);
          v66 = v4;
          v88 = 0;
          v89 = &v88;
          v90 = 0x2020000000;
          v91 = 0;
          *(v97 + 12) = 0;
          v29 = [v22 mutableCopy];
          v30 = [v22 length];
          v78 = MEMORY[0x1E69E9820];
          v79 = 3221225472;
          v80 = __60__UILabel__attributedStringIsolatingStringWritingDirection___block_invoke_2;
          v81 = &unk_1E7129EE8;
          v31 = v24;
          v82 = v31;
          v84 = &v96;
          v85 = &v88;
          v86 = v68;
          v87 = v23;
          v32 = v29;
          v83 = v32;
          [v22 enumerateAttribute:v27 inRange:0 options:v30 usingBlock:{0, &v78}];
          v33 = v89[3];
          if (v33 != v101[3])
          {
            v62 = [MEMORY[0x1E696AAA8] currentHandler];
            [v62 handleFailureInMethod:sel__attributedStringIsolatingStringWritingDirection_ object:a1 file:@"UILabel.m" lineNumber:1093 description:@"Number of writing direction changes was inconsistent"];

            v33 = v101[3];
          }

          v63 = v31;
          v65 = v22;
          if (v33)
          {
            v34 = 0;
            v35 = 0;
            v36 = *off_1E70EC8C8;
            v37 = v68 + 1;
            do
            {
              v38 = *(v37 - 4);
              v39 = *v37 + v34;
              if (v35)
              {
                v40 = [MEMORY[0x1E696AEC0] _stringWithUnichar:{8297, v63}];
                [v32 replaceCharactersInRange:v39 withString:{0, v40}];

                [v32 removeAttribute:v36 range:{v39++, 1}];
                ++v34;
              }

              v41 = [MEMORY[0x1E696AEC0] _stringWithUnichar:{v38, v63}];
              [v32 replaceCharactersInRange:v39 withString:{0, v41}];

              [v32 removeAttribute:v36 range:{v39, 1}];
              v37 += 2;
              ++v34;
              ++v35;
            }

            while (v35 < v101[3]);
          }

          v42 = [v32 length];
          v43 = [MEMORY[0x1E696AEC0] _stringWithUnichar:8297];
          [v32 replaceCharactersInRange:v42 withString:{0, v43}];

          [v32 removeAttribute:*off_1E70EC8C8 range:{v42, 1}];
          free(v68);
          v44 = v83;
          v21 = v32;

          _Block_object_dispose(&v88, 8);
          _Block_object_dispose(&v96, 8);
          _Block_object_dispose(&v100, 8);
          v22 = v65;
          v4 = v66;
          v5 = v69;
          v19 = v71;
        }

        else
        {
          v21 = v22;
        }
      }

      [a1 _hyphenationFactor];
      if (v45 > 0.0 && (*(a1 + 747) & 4) != 0)
      {
        v46 = v21;
        v47 = [v46 string];
        v48 = [v47 length];
        v49 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:32 error:0];
        v50 = [v49 matchesInString:v47 options:0 range:{0, v48}];
        v51 = v46;
        v21 = v51;
        if ([v50 count])
        {
          v52 = [v51 mutableCopy];
          v53 = *off_1E70EC988;
          v78 = MEMORY[0x1E69E9820];
          v79 = 3221225472;
          v80 = __65__UILabel__attributedStringByDisablingHyphenationIfURLsDetected___block_invoke;
          v81 = &unk_1E7126A88;
          v54 = v52;
          v82 = v54;
          [v51 enumerateAttribute:v53 inRange:0 options:v48 usingBlock:{0, &v78}];
          v21 = v54;
        }

        v19 = v71;
      }

      v55 = [a1 mt_contentEffects];
      v56 = [v55 count];

      if (v56)
      {
        v57 = [v21 mutableCopy];
        v58 = *off_1E70EC920;
        v59 = [a1 currentTextColor];
        [v57 addAttribute:v58 value:v59 range:{0, objc_msgSend(v21, "length")}];

        v21 = v57;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __48__UILabel__synthesizedAttributedTextForContent___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *off_1E70EC920;

    return [v8 removeAttribute:v9 range:{a3, a4}];
  }

  return result;
}

uint64_t __48__UILabel__synthesizedAttributedTextForContent___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *off_1E70EC9B0;

    return [v8 removeAttribute:v9 range:{a3, a4}];
  }

  return result;
}

- (UILabel)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = UILabel;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UILabel *)v3 _commonInit];
  return v3;
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = UILabel;
  [(UIView *)&v43 _didMoveFromWindow:v6 toWindow:v7];
  if (v7)
  {
    if ((*(&self->_textLabelFlags + 1) & 0x80) != 0)
    {
      [(UIView *)self _removeGeometryChangeObserver:?];
      [(UIView *)self _addGeometryChangeObserver:?];
      v44.receiver = self;
      v44.super_class = UILabel;
      [(UIView *)&v44 setNeedsDisplay];
    }

    [(UILabel *)self _updateVariableLengthStringIfNeeded];
    if ((*(&self->_textLabelFlags + 1) & 2) != 0)
    {
      v8 = [(UIView *)self viewWithTag:4032914800];
      if (v8)
      {
        v32 = v7;
        v33 = v6;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v9 = self->_marqueeAnimations;
        v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v40;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v40 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v39 + 1) + 8 * i);
              v15 = [v8 layer];
              v16 = [(NSMutableDictionary *)self->_marqueeAnimations objectForKeyedSubscript:v14];
              [v15 addAnimation:v16 forKey:v14];
            }

            v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
          }

          while (v11);
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        marqueeMaskAnimations = self->_marqueeMaskAnimations;
        v18 = [(NSMutableDictionary *)marqueeMaskAnimations countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v36;
          obj = marqueeMaskAnimations;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v36 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v35 + 1) + 8 * j);
              v23 = [v8 layer];
              v24 = [v23 mask];
              v25 = [(NSMutableDictionary *)self->_marqueeMaskAnimations objectForKeyedSubscript:v22];
              [v24 addAnimation:v25 forKey:v22];
            }

            marqueeMaskAnimations = obj;
            v19 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v19);
        }

        v7 = v32;
        v6 = v33;
      }

      else
      {
        marqueeAnimations = self->_marqueeAnimations;
        self->_marqueeAnimations = 0;

        marqueeMaskAnimations = self->_marqueeMaskAnimations;
        self->_marqueeMaskAnimations = 0;
      }
    }

    if (dyld_program_sdk_at_least())
    {
      v27 = [v7 traitCollection];
      v28 = [v27 userInterfaceIdiom];
      v29 = [v6 traitCollection];
      if (v28 == [v29 userInterfaceIdiom])
      {
      }

      else
      {
        v30 = [v7 traitCollection];
        v31 = [v30 userInterfaceIdiom];

        if (v31 == 3)
        {
          [(UILabel *)self _adjustFontForAccessibilityTraits:?];
        }
      }
    }
  }

  else
  {
    [(UIView *)self _removeGeometryChangeObserver:?];
    if ((*(&self->_textLabelFlags + 1) & 0x80) != 0)
    {
      v44.receiver = self;
      v44.super_class = UILabel;
      [(UIView *)&v44 setNeedsDisplay];
    }
  }
}

- (void)_adjustFontForAccessibilityTraits:(_BYTE *)a1
{
  if (a1)
  {
    v5 = [a1 _content];
    v4 = [(UILabel *)a1 _contentAdjustingFontForAccessibilityTraits:v5 forced:a2 didAdjustFont:0];
    [(UILabel *)a1 _setContent:v4 adjustingFontForAccessibilityTraits:0 adjustingFontForTypesettingLanguage:0 adjustingFontForTypesettingLanguageAwareLineHeightRatio:0 checkingForDifferences:1];
  }
}

- (void)_invalidateAsNeededForNewSize:(double *)(a1 oldSize:
{
  if (a1)
  {
    if (a4 != a2 || a5 != a3)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke;
      aBlock[3] = &unk_1E70F3590;
      aBlock[4] = a1;
      v11 = _Block_copy(aBlock);
      if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke_2;
        v21[3] = &unk_1E7127078;
        v21[4] = a1;
        if (_UITextLayoutSizeWillShrink(v21, a4, a5, a2, a3))
        {
          v12 = 1;
        }

        else
        {
          v11[2](v11);
          v12 = 0;
        }

        v13 = [a1 layer];
        v14 = [v13 _labelLayerToClipDuringBoundsSizeAnimation];

        LOBYTE(v13) = [v14 masksToBounds];
        [v14 _setLabelMasksToBoundsForAnimation:1];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke_3;
        v16[3] = &unk_1E7129F10;
        v17 = v14;
        v19 = v13;
        v20 = v12;
        v18 = v11;
        v15 = v14;
        [UIViewAnimationState _addSystemPostAnimationAction:v16];
      }

      else
      {
        v11[2](v11);
      }
    }
  }
}

void __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke(uint64_t a1)
{
  [(UILabel *)*(a1 + 32) _updateVariableLengthStringIfNeeded];
  [(UILabel *)*(a1 + 32) _invalidateLabelMetrics];
  if (*(a1 + 32))
  {
    v2.receiver = *(a1 + 32);
    v2.super_class = UILabel;
    objc_msgSendSuper2(&v2, sel_setNeedsDisplay);
  }
}

uint64_t __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _setLabelMasksToBoundsForAnimation:*(a1 + 48)];
  if (*(a1 + 49) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  [(UILabel *)self _invalidateAsNeededForNewSize:height oldSize:v8, v9];
  v10.receiver = self;
  v10.super_class = UILabel;
  [(UIView *)&v10 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  [(UILabel *)self _invalidateAsNeededForNewSize:height oldSize:v8, v9];
  v10.receiver = self;
  v10.super_class = UILabel;
  [(UIView *)&v10 setBounds:x, y, width, height];
}

- (UILabel)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = UILabel;
  v5 = [(UIView *)&v46 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = objc_alloc_init(_UILabelLegacyImpl);
    objc_storeStrong(v7 + 99, v8);

    v9 = v7;
    v10 = +[_UILabelVisualStyle inferredVisualStyle];
    [v9 _setVisualStyle:v10];

    UILabelCommonInit(v9);
    v11 = [v4 decodeObjectForKey:@"UIHighlightedColor"];
    v12 = v9[54];
    v9[54] = v11;

    v13 = [v4 decodeObjectForKey:@"UIShadowColor"];
    [v9 setShadowColor:v13];

    [v4 decodeCGSizeForKey:@"UIShadowOffset"];
    [v9 setShadowOffset:?];
    v9[55] = 1;
    if ([v4 containsValueForKey:@"UINumberOfLines"])
    {
      v9[55] = [v4 decodeIntegerForKey:@"UINumberOfLines"];
    }

    v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFCFLL);
    if ([v4 containsValueForKey:@"UIBaselineAdjustment"])
    {
      v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFCFLL | (16 * ([v4 decodeIntegerForKey:@"UIBaselineAdjustment"] & 3)));
    }

    v14 = [v4 decodeBoolForKey:@"UIAdjustsFontSizeToFit"];
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFFDLL | v15);
    v16 = [v4 decodeBoolForKey:@"UIAdjustsLetterSpacingToFit"];
    v17 = 128;
    if (v16)
    {
      v17 = 136;
    }

    v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFF7 | v17);
    if ([v4 containsValueForKey:@"UIEnablesMarqueeWhenAncestorFocused"])
    {
      v18 = [v4 decodeBoolForKey:@"UIEnablesMarqueeWhenAncestorFocused"];
      v19 = 256;
      if (!v18)
      {
        v19 = 0;
      }

      v9[93] = (v9[93] & 0xFFFFFFFFFFFFFEFFLL | v19);
      [v9 setMarqueeEnabled:v18];
    }

    v9[93] = (v9[93] | 0x40);
    if ([v4 containsValueForKey:@"UIEnabled"])
    {
      v20 = [v4 decodeBoolForKey:@"UIEnabled"];
      v21 = 64;
      if (!v20)
      {
        v21 = 0;
      }

      v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFBFLL | v21);
    }

    if ([v4 containsValueForKey:@"UIPreferredMaxLayoutWidth"])
    {
      [v4 decodeFloatForKey:@"UIPreferredMaxLayoutWidth"];
      *(v9 + 94) = v22;
      v9[93] = (v9[93] | 0x2000);
    }

    if ([v4 containsValueForKey:@"UIAdjustsFontForContentSizeCategory"])
    {
      [v9 setAdjustsFontForContentSizeCategory:{objc_msgSend(v4, "decodeBoolForKey:", @"UIAdjustsFontForContentSizeCategory"}];
    }

    if ([v4 containsValueForKey:@"UIShowsExpansionTextWhenTruncated"])
    {
      [v9 setShowsExpansionTextWhenTruncated:{objc_msgSend(v4, "decodeBoolForKey:", @"UIShowsExpansionTextWhenTruncated"}];
    }

    v23 = [v4 decodeObjectForKey:@"UIFont"];
    v44 = [v4 decodeObjectForKey:@"UITextColor"];
    [v4 decodeFloatForKey:@"UIMinimumFontSize"];
    v25 = v24;
    v26 = +[UILabel _defaultAttributes];
    v27 = [v26 objectForKeyedSubscript:*off_1E70EC988];

    if (v27)
    {
      v28 = [v27 lineBreakMode];
      v29 = [v27 lineBreakStrategy];
    }

    else
    {
      v29 = 0xFFFFLL;
      v28 = 4;
    }

    v30 = v28;
    if ([v4 containsValueForKey:@"UILineBreakMode"])
    {
      v30 = [v4 decodeIntegerForKey:@"UILineBreakMode"];
    }

    v42 = v29;
    if ([v4 containsValueForKey:@"UILineBreakStrategy"])
    {
      v29 = [v4 decodeIntegerForKey:@"UILineBreakStrategy"];
    }

    v45 = v23;
    v43 = v27;
    if ([v4 containsValueForKey:@"UITextAlignment"])
    {
      v31 = [v4 decodeIntegerForKey:@"UITextAlignment"];
    }

    else
    {
      v31 = 0;
    }

    v32 = [v4 decodeBoolForKey:@"UIAllowsDefaultTighteningForTruncation"];
    v33 = [v4 decodeObjectForKey:@"UIAttributedText"];
    if (!v33)
    {
      v41 = v6;
      v34 = [v4 decodeObjectForKey:@"UIText"];
      if (v34)
      {
        [v9 _setText:v34];
      }

      v6 = v41;
    }

    if (v45)
    {
      [v9 _setFont:?];
    }

    if (v44)
    {
      [v9 _setTextColor:?];
      v9[93] = (v9[93] | 0x80000);
    }

    if (v30 != v28)
    {
      [v9 _setLineBreakMode:v30];
    }

    if (v29 != v42)
    {
      [v9 _setLineBreakStrategy:v29];
    }

    [v9 _setTextAlignment:v31];
    if (v25 != 0.0)
    {
      [v9 _setMinimumFontSize:v25];
    }

    if (v32)
    {
      [(UILabel *)v9 _setAllowsDefaultTighteningForTruncation:?];
    }

    if (v33)
    {
      v35 = [v9 _content];
      v36 = [v35 contentWithAttributedString:v33];
      [v9 _setContent:v36];

      if ([v4 containsValueForKey:@"UIMinimumScaleFactor"])
      {
        [v4 decodeFloatForKey:@"UIMinimumScaleFactor"];
        [v9 setMinimumScaleFactor:v37];
      }
    }

    if ([v4 containsValueForKey:@"UIDisableUpdateTextColorOnTraitCollectionChange"])
    {
      v38 = [v4 decodeBoolForKey:@"UIDisableUpdateTextColorOnTraitCollectionChange"];
      v39 = 0x80000;
      if (!v38)
      {
        v39 = 0;
      }

      v9[93] = (v9[93] & 0xFFFFFFFFFFF7FFFFLL | v39);
    }

    if ([v4 containsValueForKey:@"UILetterformAwareSizingRule"])
    {
      v9[93] = (v9[93] & 0xFFFFFFBFFFFFFFFFLL | (([v4 decodeIntegerForKey:@"UILetterformAwareSizingRule"] & 1) << 38));
    }
  }

  return v6;
}

- (void)_setAllowsDefaultTighteningForTruncation:(void *)a1
{
  if (a1)
  {
    v4 = [a1 _content];
    v5 = [v4 paragraphStyle];

    if ([v5 allowsDefaultTighteningForTruncation] != a2)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__UILabel__setAllowsDefaultTighteningForTruncation___block_invoke;
      v10[3] = &__block_descriptor_33_e33_v16__0__NSMutableParagraphStyle_8l;
      v11 = a2;
      v6 = a1;
      v7 = [v5 mutableCopy];
      __52__UILabel__setAllowsDefaultTighteningForTruncation___block_invoke(v10, v7);
      v8 = [v6 _content];
      v9 = [v8 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v7];
      [v6 _setContent:v9];

      [v6 _invalidateLabelSize];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = UILabel;
  [(UIView *)&v43 encodeWithCoder:v4];
  v5 = [(UILabel *)self text];

  if (v5)
  {
    v6 = [(UILabel *)self text];
    [v4 encodeObject:v6 forKey:@"UIText"];
  }

  if ([(UILabel *)self adjustsFontForContentSizeCategory])
  {
    [v4 encodeBool:1 forKey:@"UIAdjustsFontForContentSizeCategory"];
  }

  if ([(UILabel *)self showsExpansionTextWhenTruncated])
  {
    [v4 encodeBool:1 forKey:@"UIShowsExpansionTextWhenTruncated"];
  }

  v7 = [(UILabel *)self font];

  if (v7)
  {
    v8 = [(UILabel *)self font];
    [v4 encodeObject:v8 forKey:@"UIFont"];
  }

  v9 = [(UILabel *)self color];

  if (v9)
  {
    v10 = [(UILabel *)self color];
    [v4 encodeObject:v10 forKey:@"UITextColor"];
  }

  highlightedColor = self->_highlightedColor;
  if (highlightedColor)
  {
    [v4 encodeObject:highlightedColor forKey:@"UIHighlightedColor"];
  }

  v12 = [(UILabel *)self shadowColor];

  if (v12)
  {
    v13 = [(UILabel *)self shadowColor];
    [v4 encodeObject:v13 forKey:@"UIShadowColor"];
  }

  [(UILabel *)self shadowOffset];
  if (v15 != *MEMORY[0x1E695F060] || v14 != *(MEMORY[0x1E695F060] + 8))
  {
    [v4 encodeCGSize:@"UIShadowOffset" forKey:?];
  }

  numberOfLines = self->_numberOfLines;
  if (numberOfLines != 1)
  {
    [v4 encodeInteger:numberOfLines forKey:@"UINumberOfLines"];
  }

  textLabelFlags = self->_textLabelFlags;
  v18 = (*&textLabelFlags >> 4) & 3;
  if (v18)
  {
    [v4 encodeInteger:v18 forKey:@"UIBaselineAdjustment"];
    textLabelFlags = self->_textLabelFlags;
  }

  if ((*&textLabelFlags & 2) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIAdjustsFontSizeToFit"];
  }

  [(UILabel *)self _minimumFontSize];
  if (v19 != 0.0)
  {
    [(UILabel *)self _minimumFontSize];
    *&v20 = v20;
    [v4 encodeFloat:@"UIMinimumFontSize" forKey:v20];
  }

  if ([(UILabel *)self allowsDefaultTighteningForTruncation])
  {
    [v4 encodeBool:1 forKey:@"UIAllowsDefaultTighteningForTruncation"];
  }

  v21 = +[UILabel _defaultAttributes];
  v22 = *off_1E70EC988;
  v23 = [v21 objectForKeyedSubscript:*off_1E70EC988];

  if (v23)
  {
    v24 = [v23 lineBreakMode];
    v25 = [v23 lineBreakStrategy];
  }

  else
  {
    v25 = 0xFFFFLL;
    v24 = 4;
  }

  if ([(UILabel *)self lineBreakMode]!= v24)
  {
    [v4 encodeInteger:-[UILabel lineBreakMode](self forKey:{"lineBreakMode"), @"UILineBreakMode"}];
  }

  if ([(UILabel *)self lineBreakStrategy]!= v25)
  {
    [v4 encodeInteger:-[UILabel lineBreakStrategy](self forKey:{"lineBreakStrategy"), @"UILineBreakStrategy"}];
  }

  [v4 encodeInteger:-[UILabel textAlignment](self forKey:{"textAlignment"), @"UITextAlignment"}];
  v26 = self->_textLabelFlags;
  if ((*&v26 & 0x40) == 0)
  {
    [v4 encodeBool:0 forKey:@"UIEnabled"];
    v26 = self->_textLabelFlags;
  }

  if ((*&v26 & 0x100) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIEnablesMarqueeWhenAncestorFocused"];
  }

  v27 = [(UILabel *)self _content];
  if ([v27 isAttributed])
  {
    v28 = [MEMORY[0x1E695DF90] dictionary];
    v29 = [(UILabel *)self font];
    [v28 setValue:v29 forKey:*off_1E70EC918];

    v30 = [(UILabel *)self color];
    [v28 setValue:v30 forKey:*off_1E70EC920];

    v31 = objc_alloc_init(off_1E70ECB90);
    v32 = [(UILabel *)self shadowColor];
    [v31 setShadowColor:v32];

    [(UILabel *)self shadowOffset];
    [v31 setShadowOffset:?];
    [v28 setValue:v31 forKey:*off_1E70EC9B0];
    v33 = objc_alloc_init(off_1E70ECB80);
    [v33 setLineBreakMode:{-[UILabel lineBreakMode](self, "lineBreakMode")}];
    [v33 setLineBreakStrategy:{-[UILabel lineBreakStrategy](self, "lineBreakStrategy")}];
    [v33 setAlignment:{-[UILabel textAlignment](self, "textAlignment")}];
    [v28 setValue:v33 forKey:v22];
    v34 = objc_alloc(MEMORY[0x1E696AAB0]);
    v35 = [v27 string];
    v36 = [v34 initWithString:v35 attributes:v28];

    LOBYTE(v35) = [v27 isEqualToAttributedString:v36];
    if (v35)
    {
      goto LABEL_43;
    }

    v37 = objc_alloc(MEMORY[0x1E696AD40]);
    v38 = [(UILabel *)self _materializedAttributedString];
    v27 = [v37 initWithAttributedString:v38];

    [v4 encodeObject:v27 forKey:@"UIAttributedText"];
  }

LABEL_43:
  [(UILabel *)self minimumScaleFactor];
  if (v39 != 0.0)
  {
    [(UILabel *)self minimumScaleFactor];
    *&v40 = v40;
    [v4 encodeFloat:@"UIMinimumScaleFactor" forKey:v40];
  }

  if ([(UILabel *)self adjustsLetterSpacingToFitWidth])
  {
    [v4 encodeBool:1 forKey:@"UIAdjustsLetterSpacingToFit"];
  }

  preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  if (preferredMaxLayoutWidth > 0.0)
  {
    *&preferredMaxLayoutWidth = preferredMaxLayoutWidth;
    [v4 encodeFloat:@"UIPreferredMaxLayoutWidth" forKey:preferredMaxLayoutWidth];
  }

  p_textLabelFlags = &self->_textLabelFlags;
  [v4 encodeBool:(*p_textLabelFlags >> 19) & 1 forKey:@"UIDisableUpdateTextColorOnTraitCollectionChange"];
  if ((*(p_textLabelFlags + 4) & 0x40) != 0)
  {
    [v4 encodeInteger:1 forKey:@"UILetterformAwareSizingRule"];
  }
}

- (double)_boundingRectWithAttributedString:(uint64_t)a3 size:(void *)a4 options:(double)a5 context:(double)a6
{
  v11 = a2;
  v12 = a4;
  if (a1)
  {
    if ((a1[748] & 0x80) != 0)
    {
      v15 = [(UILabel *)a1 _verticalTextLayoutManager];
      [v15 boundingRectWithAttributedString:v11 size:a3 options:v12 context:{a5, a6}];
      v14 = v16;
    }

    else
    {
      [v11 boundingRectWithSize:a3 options:v12 context:{a5, a6}];
      v14 = v13;
    }
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

- (id)_verticalTextLayoutManager
{
  v1 = objc_getAssociatedObject(a1, &kTextLayoutManagerKey);

  return v1;
}

- (double)_boundingRectWithString:(uint64_t)a3 size:(void *)a4 options:(void *)a5 attributes:(double)a6 context:(double)a7
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  if (a1)
  {
    if ((a1[748] & 0x80) != 0)
    {
      v18 = [(UILabel *)a1 _verticalTextLayoutManager];
      [v18 boundingRectWithString:v13 size:a3 options:v14 attributes:v15 context:{a6, a7}];
      v17 = v19;
    }

    else
    {
      [v13 boundingRectWithSize:a3 options:v14 attributes:v15 context:{a6, a7}];
      v17 = v16;
    }
  }

  else
  {
    v17 = 0.0;
  }

  return v17;
}

- (void)_drawWithString:(uint64_t)a3 rect:(void *)a4 options:(void *)a5 attributes:(double)a6 context:(double)a7
{
  v20 = a2;
  v17 = a4;
  v18 = a5;
  if ((a1[748] & 0x80) != 0)
  {
    v19 = [(UILabel *)a1 _verticalTextLayoutManager];
    [v19 drawWithString:v20 rect:a3 options:v17 attributes:v18 context:{a6, a7, a8, a9}];
  }

  else
  {
    [v20 drawWithRect:a3 options:v17 attributes:v18 context:{a6, a7, a8, a9}];
  }
}

- (void)_drawWithAttributedString:(uint64_t)a3 rect:(void *)a4 options:(double)a5 context:(double)a6
{
  v17 = a2;
  v15 = a4;
  if ((a1[748] & 0x80) != 0)
  {
    v16 = [(UILabel *)a1 _verticalTextLayoutManager];
    [v16 drawWithAttributedString:v17 rect:a3 options:v15 context:{a5, a6, a7, a8}];
  }

  else
  {
    [v17 drawWithRect:a3 options:v15 context:{a5, a6, a7, a8}];
  }
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
  [(UILabel *)self _textRectForBounds:numberOfLines limitedToNumberOfLines:1 includingShadow:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (_UILabelLegacyScaledMetrics)_scaledMetricsForText:(double)a3 inRect:(double)a4
{
  v9 = a2;
  if (a1)
  {
    v10 = [(_UILabelLegacyScaledMetrics *)a1 _associatedScalingLabel];
    v11 = v10;
    if (!v10 || v10 == a1)
    {
      if ((LOBYTE(a1[7]._scaledSize.height) & 2) == 0 || ([*&a1[8]._scaledBaselineOffset minimumScaleFactor], v34 >= 1.0))
      {
        a1 = 0;
        goto LABEL_37;
      }

      v35 = [(_UILabelLegacyScaledMetrics *)a1 _stringDrawingContext];
      v15 = [v35 copy];

      [*&a1[8]._scaledBaselineOffset minimumScaleFactor];
      if (v36 >= 1.0)
      {
        a1 = 0;
        goto LABEL_24;
      }

      if (v36 <= 0.0)
      {
        v36 = 0.01;
      }

      [v15 setMinimumScaleFactor:v36];
      [v15 setLayout:0];
      [v15 setWantsBaselineOffset:1];
      [v15 setWantsScaledBaselineOffset:1];
      [v15 setWantsScaledLineHeight:1];
      [v15 setWantsNumberOfLineFragments:1];
      [v15 setMaximumNumberOfLines:*&a1[4]._scaledFirstBaselineOffset];
      [v9 boundingRectWithSize:-[_UILabelLegacyScaledMetrics _stringDrawingOptions](a1 options:"_stringDrawingOptions") context:{v15, a5, a6}];
      v38 = v37;
      v40 = v39;
      [v15 scaledLineHeight];
      v42 = v41;
      [v15 actualScaleFactor];
      a1 = 0;
      if (v43 <= 0.0)
      {
        goto LABEL_24;
      }

      v44 = v43;
      if (v43 >= 1.0 || 1.0 - v43 <= 0.00000011920929)
      {
        goto LABEL_24;
      }

      v45 = objc_alloc_init(_UILabelLegacyScaledMetrics);
      a1 = v45;
      if (v45)
      {
        v45->_scaledSize.width = v38;
        v45->_scaledSize.height = v42;
        v45->_unscaledAndPossiblyTooLargeSize.width = v38;
        v45->_unscaledAndPossiblyTooLargeSize.height = v40;
        [v15 baselineOffset];
        a1->_baselineOffset = v46;
        [v15 firstBaselineOffset];
        a1->_scaledFirstBaselineOffset = v47;
        [v15 scaledBaselineOffset];
        a1->_scaledBaselineOffset = v48;
        a1->_actualScaleFactor = v44;
        a1->_measuredNumberOfLines = [v15 numberOfLineFragments];
      }

      else
      {
        [v15 baselineOffset];
        [v15 firstBaselineOffset];
        [v15 scaledBaselineOffset];
        [v15 numberOfLineFragments];
      }

      v49 = [v9 length];
      [v15 actualScaleFactor];
      v17 = [v9 _ui_attributedSubstringFromRange:0 scaledByScaleFactor:v49];
      v32 = a1;
      v33 = v17;
LABEL_23:
      [(_UICollectionLayoutItemSolver *)v32 setSolveResult:v33];

LABEL_24:
LABEL_37:

      goto LABEL_38;
    }

    if (!*&v10[6]._scaledLineHeight)
    {
      [(_UILabelLegacyScaledMetrics *)v10 bounds];
      [UILabel _updateScaledMetricsForRect:v11];
    }

    v12 = [v9 length];
    scaledLineHeight = v11[6]._scaledLineHeight;
    if (scaledLineHeight == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *(*&scaledLineHeight + 8);
    }

    v15 = [v9 _ui_attributedSubstringFromRange:0 scaledByScaleFactor:{v12, v14}];
    v16 = [(_UILabelLegacyScaledMetrics *)a1 _stringDrawingContext];
    v17 = [v16 copy];

    [v17 setWantsNumberOfLineFragments:1];
    [v17 setMaximumNumberOfLines:{-[_UILabelLegacyScaledMetrics numberOfLines](a1, "numberOfLines")}];
    [v17 setMinimumScaleFactor:1.0];
    [v17 setLayout:0];
    [v9 boundingRectWithSize:-[_UILabelLegacyScaledMetrics _stringDrawingOptions](a1 options:"_stringDrawingOptions") context:{v17, a5, a6}];
    v19 = v18;
    v21 = v20;
    [v17 setLayout:0];
    [v15 boundingRectWithSize:-[_UILabelLegacyScaledMetrics _stringDrawingOptions](a1 options:"_stringDrawingOptions") context:{v17, a5, a6}];
    v23 = v22;
    v25 = v24;
    v26 = objc_alloc_init(_UILabelLegacyScaledMetrics);
    a1 = v26;
    if (v26)
    {
      v26->_scaledSize.width = v23;
      v26->_scaledSize.height = v25;
      v26->_unscaledAndPossiblyTooLargeSize.width = v19;
      v26->_unscaledAndPossiblyTooLargeSize.height = v21;
    }

    v27 = *&v11[6]._scaledLineHeight;
    if (v27)
    {
      v28 = v27[2];
      if (!v26)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v28 = 0.0;
      if (!v26)
      {
LABEL_13:
        if (v27)
        {
          v29 = v27[7];
          if (!v26)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v29 = 0.0;
          if (!v26)
          {
LABEL_16:
            if (v27)
            {
              v30 = v27[3];
              if (!v26)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v30 = 0.0;
              if (!v26)
              {
LABEL_19:
                if (v27)
                {
                  v31 = v27[1];
                  if (v26)
                  {
LABEL_21:
                    v26->_actualScaleFactor = v31;
                    v26->_measuredNumberOfLines = [v17 numberOfLineFragments];
LABEL_22:
                    v32 = a1;
                    v33 = v15;
                    goto LABEL_23;
                  }
                }

                else
                {
                  v31 = 0.0;
                  if (v26)
                  {
                    goto LABEL_21;
                  }
                }

                [v17 numberOfLineFragments];
                goto LABEL_22;
              }
            }

            v26->_scaledBaselineOffset = v30;
            v27 = *&v11[6]._scaledLineHeight;
            goto LABEL_19;
          }
        }

        v26->_scaledFirstBaselineOffset = v29;
        v27 = *&v11[6]._scaledLineHeight;
        goto LABEL_16;
      }
    }

    v26->_baselineOffset = v28;
    v27 = *&v11[6]._scaledLineHeight;
    goto LABEL_13;
  }

LABEL_38:

  return a1;
}

- (uint64_t)_updateScaledMetricsForRect:(double)a3
{
  if (result)
  {
    v9 = result;
    v10 = *(result + 608);
    if (v10)
    {
      v11 = v10[1];
    }

    else
    {
      v11 = 0.0;
    }

    if (*(result + 616) != a4 || *(result + 624) != a5)
    {
      if (a4 < 3.40282347e38 || a5 < 3.40282347e38)
      {
        v10 = [result _synthesizedAttributedText];
        v13 = [(UILabel *)v9 _scaledMetricsForText:v10 inRect:a2, a3, a4, a5];
        v14 = *(v9 + 608);
        *(v9 + 608) = v13;
      }

      else
      {
        *(result + 608) = 0;
      }

      *(v9 + 616) = a4;
      *(v9 + 624) = a5;
      v10 = *(v9 + 608);
    }

    if (v10)
    {
      v15 = v10[1];
    }

    else
    {
      v15 = 0.0;
    }

    if (v11 == v15)
    {
      return 0;
    }

    else
    {
      v16 = *(v9 + 600);
      *(v9 + 600) = 0;

      return 1;
    }
  }

  return result;
}

- (CGRect)_textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4 includingShadow:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(UILabel *)self text];
  v13 = [v12 length];

  if (!v13)
  {
    v27 = 0.0;
    v28 = x;
    v29 = y;
    v30 = 0.0;
    goto LABEL_78;
  }

  v87 = 0;
  v88 = 0;
  p_intrinsicSizeBaselineInfo = &self->_intrinsicSizeBaselineInfo;
  v15 = self;
  v16 = v15;
  if ((*&v15->_textLabelFlags & 4) != 0)
  {
    v18 = _UIComputedSizeForLabel(v15, 0, 0, a4, &p_intrinsicSizeBaselineInfo->measuredNumberOfLines, &v88, &v87, width, height);
    v26 = v31;
  }

  else
  {
    v17 = [(UILabel *)v15 _stringDrawingContext];
    [v17 setMaximumNumberOfLines:a4];
    [v17 setWrapsForTruncationMode:a4 != 1];
    [v17 setWantsNumberOfLineFragments:1];
    [v17 setWantsBaselineOffset:1];
    if (width < 0.0 || height < 0.0)
    {
      v18 = *MEMORY[0x1E695F060];
      v26 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      if (width == 0.0)
      {
        v18 = 3.40282347e38;
      }

      else
      {
        v18 = width;
      }

      if (height == 0.0)
      {
        v19 = 3.40282347e38;
      }

      else
      {
        v19 = height;
      }

      if ([(UILabel *)v16 _updateScaledMetricsForRect:*(MEMORY[0x1E695EFF8] + 8), v18, v19])
      {
        [v17 setLayout:0];
      }

      v20 = [v16 _content];
      if ([v20 isAttributed])
      {
        v21 = [v16 _synthesizedAttributedText];
        if (v21)
        {
          v22 = -[UILabel _boundingRectWithAttributedString:size:options:context:](v16, v21, [v16 _stringDrawingOptions], v17, v18, 3.40282347e38);
          v24 = v23;
          v26 = v25;
        }

        else
        {
          v24 = *MEMORY[0x1E695F060];
          v26 = *(MEMORY[0x1E695F060] + 8);
        }

        v37 = [v20 paragraphStyle];
        if (dyld_program_sdk_at_least())
        {
          [v37 firstLineHeadIndent];
          if (v38 > 0.0)
          {
            if ([v17 numberOfLineFragments] == 1)
            {
              goto LABEL_35;
            }

            v39 = [v21 string];
            [MEMORY[0x1E696AB08] newlineCharacterSet];
            v84 = v82 = v39;
            v40 = [v39 componentsSeparatedByCharactersInSet:v84];

            v81 = [v40 count];
            v85 = v40;
            if ([v40 count])
            {
              v41 = [v40 lastObject];
              v80 = [v41 length] == 0;

              v42 = v81 - v80;
            }

            else
            {
              v42 = v81;
            }

            v43 = 0x7FFFFFFFLL;
            if (a4)
            {
              v43 = a4;
            }

            v44 = v43 >= v42 ? v42 : v43;
            v45 = [v17 numberOfLineFragments];

            if (v44 == v45)
            {
LABEL_35:
              [v37 firstLineHeadIndent];
              v47 = v24 + v46;
              if (v47 >= v18)
              {
                v24 = v18;
              }

              else
              {
                v24 = v47;
              }
            }
          }
        }
      }

      else if ([v20 isNil])
      {
        v24 = *MEMORY[0x1E695F060];
        v26 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        v32 = [v20 string];
        v33 = [v16 _stringDrawingOptions];
        v34 = [(UILabel *)v16 _synthesizedTextAttributes];
        [(UILabel *)v16 _boundingRectWithString:v32 size:v33 options:v34 attributes:v17 context:v18, 3.40282347e38];
        v24 = v35;
        v26 = v36;
      }

      v48 = v24 - v18;
      if (v24 - v18 < 0.0001)
      {
        v18 = v24;
      }

      p_intrinsicSizeBaselineInfo->measuredNumberOfLines = [v17 numberOfLineFragments];
      [v17 baselineOffset];
      v88 = v49;
      [v17 firstBaselineOffset];
      v87 = v50;
      v51 = [v17 layout];
      v52 = *(v16 + 600);
      *(v16 + 600) = v51;
    }
  }

  v86 = y;
  if (v5 && ([v16 shadowColor], v53 = objc_claimAutoreleasedReturnValue(), v53, v53) && v18 > 0.0 && v26 > 0.0)
  {
    [v16 shadowOffset];
    if (v54 < 0.0)
    {
      v54 = -v54;
    }

    v18 = v18 + v54;
    v56 = -v55;
    if (v55 >= 0.0)
    {
      v56 = v55;
    }

    v57 = v26 + v56;
  }

  else
  {
    v57 = v26;
  }

  v58 = [v16 _shouldCeilSizeToViewScale];
  if (width >= v18)
  {
    v59 = v18;
  }

  else
  {
    v59 = width;
  }

  if (height >= v57)
  {
    v60 = v57;
  }

  else
  {
    v60 = height;
  }

  if (v58)
  {
    UICeilToViewScale(v16);
    v62 = v61;
    UICeilToViewScale(v16);
  }

  else
  {
    v62 = ceil(v59);
    v63 = ceil(v60);
  }

  v83 = v63;
  v64 = [v16 _content];
  v65 = +[UIView _enableRTL];
  if ([v64 isAttributed])
  {
    v66 = [v16 _synthesizedAttributedText];
    v67 = [v66 _ui_resolvedTextAlignment];
LABEL_69:

    goto LABEL_70;
  }

  if (v65)
  {
    v67 = 4;
  }

  else
  {
    v67 = 0;
  }

  if ((*(v16 + 744) & 0x80) != 0)
  {
    v66 = [(UILabel *)v16 _synthesizedTextAttributes];
    v68 = [v66 objectForKey:*off_1E70EC988];
    v67 = [v68 _ui_resolvedTextAlignment];

    goto LABEL_69;
  }

LABEL_70:
  if (v67 == 1)
  {
    v90.origin.x = x;
    v90.origin.y = v86;
    v90.size.width = width;
    v90.size.height = height;
    CGRectGetMaxX(v90);
    UIRoundToViewScale(v16);
    goto LABEL_74;
  }

  v28 = x;
  if (v67 == 2)
  {
    v89.origin.x = x;
    v89.origin.y = v86;
    v89.size.width = width;
    v89.size.height = height;
    v69 = CGRectGetMaxX(v89) - v62;
LABEL_74:
    v28 = x + v69;
  }

  v27 = v62;
  UIRoundToViewScale(v16);
  v29 = v70;
  UIRoundToViewScale(v16);
  p_intrinsicSizeBaselineInfo->lastBaseline = v71;
  UIRoundToViewScale(v16);
  p_intrinsicSizeBaselineInfo->firstBaseline = v72;
  lastBaseline = p_intrinsicSizeBaselineInfo->lastBaseline;
  v91.size.width = width;
  v74 = x;
  v91.origin.x = x;
  v91.origin.y = v86;
  v75 = v91.size.width;
  v91.size.height = height;
  if (lastBaseline > CGRectGetMaxY(v91))
  {
    p_intrinsicSizeBaselineInfo->firstBaseline = 0.0;
    p_intrinsicSizeBaselineInfo->lastBaseline = 0.0;
    p_intrinsicSizeBaselineInfo->measuredNumberOfLines = -1;
  }

  v30 = v83;
  p_intrinsicSizeBaselineInfo->referenceBounds.origin.x = v74;
  p_intrinsicSizeBaselineInfo->referenceBounds.origin.y = v86;
  p_intrinsicSizeBaselineInfo->referenceBounds.size.width = v75;
  p_intrinsicSizeBaselineInfo->referenceBounds.size.height = height;
  p_intrinsicSizeBaselineInfo->bounds.origin.x = v28;
  p_intrinsicSizeBaselineInfo->bounds.origin.y = v29;
  p_intrinsicSizeBaselineInfo->bounds.size.width = v62;
  p_intrinsicSizeBaselineInfo->bounds.size.height = v83;

LABEL_78:
  v76 = v28;
  v77 = v29;
  v78 = v27;
  v79 = v30;
  result.size.height = v79;
  result.size.width = v78;
  result.origin.y = v77;
  result.origin.x = v76;
  return result;
}

- (double)_sizingRuleAdjustedBoundsForBounds:(void *)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a1[93];
  if ((v3 & 0x6000000000) != 0)
  {
    [(UILabel *)a1 _letterformAwareAllAlignmentInsets];
    if ((v3 & 0x4000000000) == 0)
    {
      v4 = 0.0;
    }

    return a2 + v4;
  }

  return a2;
}

- (CGRect)_drawingRectForBounds:(CGRect)a3
{
  v4 = [(UILabel *)self _sizingRuleAdjustedBoundsForBounds:?];

  [(UILabel *)self _drawTextInRect:1 baselineCalculationOnly:v4];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_tightBoundingRectOfFirstLine
{
  [(UIView *)self bounds];
  if (self)
  {
    v7 = [(UILabel *)self _drawTextInRect:1 baselineCalculationOnly:0 returningDeviceMetricsOfFirstLine:0 returningMultilineDeviceMetrics:v3 forceMultiline:v4, v5, v6];
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_tightBoundingRect
{
  [(UIView *)self bounds];
  if (self)
  {
    v7 = [(UILabel *)self _drawTextInRect:0 baselineCalculationOnly:1u returningDeviceMetricsOfFirstLine:0 returningMultilineDeviceMetrics:v3 forceMultiline:v4, v5, v6];
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (double)_insetsForString:(void *)a3 withFont:(void *)a4 inView:
{
  v5 = a4;
  v6 = a3;
  objc_opt_self();
  CTFontGetLanguageAwareOutsets();

  UICeilToViewScale(v5);
  v9 = -v7;
  UICeilToViewScale(v5);
  UICeilToViewScale(v5);
  UICeilToViewScale(v5);

  return v9;
}

+ (double)_insetsForAttributedString:(void *)a3 withDefaultFont:(void *)a4 inView:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_self();
  v9 = [(_NSAttributedStringIntentResolver *)_UIAttributedStringIntentResolver attributedStringByResolvingString:v8];

  v10 = -[NSAttributedString _ui_fontsInRange:usingDefaultFont:](v9, 0, [v9 length], v6);
  v11 = v10;
  if (v6)
  {
    v12 = [v10 setByAddingObject:v6];

    v11 = v12;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (CTFontGetLanguageAwareOutsets())
        {
          v20 = fmax(0.0, v20);
          v18 = fmax(0.0, v18);
          v19 = fmax(0.0, v19);
          v17 = fmax(0.0, v17);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  UICeilToViewScale(v7);
  v23 = v22;
  UICeilToViewScale(v7);
  UICeilToViewScale(v7);
  UICeilToViewScale(v7);

  return -v23;
}

+ (CGRect)_insetRect:(CGRect)a3 forAttributedString:(id)a4 withDefaultFont:(id)a5 inView:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v13 string];
  v17 = +[UILabel _tooBigChars];
  v18 = [v16 rangeOfCharacterFromSet:v17];

  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(UILabel *)a1 _insetsForAttributedString:v13 withDefaultFont:v14 inView:v15];
    x = x + v20;
    width = width - (v21 + v20);
    y = y + v19;
    height = height - (v19 + v22);
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_setText:(id)a3
{
  v4 = a3;
  v7 = [(UILabel *)self _content];
  v5 = [v7 contentWithString:v4];

  v6 = [v5 widthVariantContentForView:self];
  [(UILabel *)self _setContent:v6];
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = attributedText;
  v4 = self->_content;
  v5 = [(UILabel *)self _content];
  v6 = [v5 contentWithAttributedString:v19];
  [(UILabel *)self _setContent:v6];

  content = self->_content;
  if (v4 != content)
  {
    [(UILabel *)self _noteInstanceCustomizationForAttributedString:v19 attributes:0];
    v8 = v19;
    if (![(NSAttributedString *)v8 length])
    {
LABEL_11:

      goto LABEL_12;
    }

    v9 = *off_1E70EC8D0;
    v20[0] = *off_1E70EC8C0;
    v20[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v11 = [(NSAttributedString *)v8 containsAttributes:v10];

    v12 = *off_1E70EC920;
    if ([(_UILabelContent *)self->_content isAttribute:*off_1E70EC920 uniformlyEqualToValue:0])
    {
      v13 = [(UILabel *)self textColor];
      lastSetColor = self->_lastSetColor;
      self->_lastSetColor = v13;
      v15 = v13;
    }

    else
    {
      v15 = [(NSAttributedString *)v8 attribute:v12 atIndex:0 effectiveRange:0];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v11 | ![(_UILabelContent *)self->_content isAttribute:v12 uniformlyEqualToValue:v15])
      {
        v18 = self->_lastSetColor;
        self->_lastSetColor = 0;

        v16 = self;
        v17 = 0;
        goto LABEL_10;
      }

      objc_storeStrong(&self->_lastSetColor, v15);
    }

    v16 = self;
    v17 = v15;
LABEL_10:
    [(UILabel *)v16 _resolveMaterialColor:v17];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled
{
  v3 = userInteractionEnabled;
  if ([(UIView *)self isUserInteractionEnabled]!= userInteractionEnabled)
  {
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setUserInteractionEnabled:v3];
    if (self)
    {
      v6.receiver = self;
      v6.super_class = UILabel;
      [(UIView *)&v6 setNeedsDisplay];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = enabled;
  if ([(UILabel *)self isEnabled]!= enabled)
  {
    v5 = 64;
    if (!v3)
    {
      v5 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFFBFLL | v5);

    [(UILabel *)self _invalidateLabelDisplay];
  }
}

- (void)_setFallbackTextColor:(id)a3 forUserInterfaceStyle:(int64_t)a4
{
  v10 = a3;
  fallbackColorsForUserInterfaceStyle = self->_fallbackColorsForUserInterfaceStyle;
  if (!fallbackColorsForUserInterfaceStyle)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_fallbackColorsForUserInterfaceStyle;
    self->_fallbackColorsForUserInterfaceStyle = v7;

    fallbackColorsForUserInterfaceStyle = self->_fallbackColorsForUserInterfaceStyle;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)fallbackColorsForUserInterfaceStyle setObject:v10 forKey:v9];

  [(UILabel *)self _updateTextColorWithFallbackColorIfNeeded];
}

- (void)_setTextColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() _defaultColor];
    *&self->_textLabelFlags &= ~0x80000uLL;
  }

  v5 = [(UILabel *)self _content];
  v6 = *off_1E70EC920;
  v10 = v5;
  if (([v5 isAttribute:*off_1E70EC920 uniformlyEqualToValue:v4] & 1) == 0)
  {
    v7 = [v10 contentByApplyingAttributeToEntireRange:v6 value:v4];
    [(UILabel *)self _setContent:v7];
  }

  lastSetColor = self->_lastSetColor;
  self->_lastSetColor = v4;
  v9 = v4;

  [(UILabel *)self _resolveMaterialColor:v9];
}

- (void)setPreferredVibrancy:(UILabelVibrancy)preferredVibrancy
{
  if (self->_preferredVibrancy != preferredVibrancy)
  {
    self->_preferredVibrancy = preferredVibrancy;
    if (preferredVibrancy == UILabelVibrancyNone)
    {
      v3 = 1;
      goto LABEL_5;
    }

    if (preferredVibrancy == UILabelVibrancyAutomatic)
    {
      v3 = 2;
LABEL_5:
      [(UIView *)self _setOverrideUserInterfaceRenderingMode:v3];
    }
  }
}

- (int64_t)_supportedTreatmentForTreatment:(int64_t)a3
{
  if (a3 != 2)
  {
    return a3;
  }

  v4 = [(UILabel *)self _defaultAttributes];
  v5 = [v4 objectForKeyedSubscript:*off_1E70EC920];

  v6 = [(UILabel *)self _content];
  v7 = [v6 supportedMonochromaticTreatment:v5];

  return v7;
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth
{
  v5 = *&self->_textLabelFlags & 2;
  v6 = 2;
  if (!adjustsFontSizeToFitWidth)
  {
    v6 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFFFDLL | v6);
  if (v6 != v5)
  {
    v16 = v3;
    v17 = v4;
    if (!v5)
    {
      scaledMetrics = self->_scaledMetrics;
      self->_scaledMetrics = 0;

      self->_scaledMetricsTargetSize = *MEMORY[0x1E695F060];
      layout = self->_layout;
      self->_layout = 0;

LABEL_10:
      [(UILabel *)self _invalidateLabelSize];
      v15.receiver = self;
      v15.super_class = UILabel;
      [(UIView *)&v15 setNeedsDisplay];
      return;
    }

    v10 = [(UIView *)self window];
    if (v10)
    {
    }

    else if (!self->_scaledMetrics)
    {
      return;
    }

    [(UIView *)self bounds];
    if ([(UILabel *)self _updateScaledMetricsForRect:v11, v12, v13, v14])
    {
      goto LABEL_10;
    }
  }
}

- (void)_setTextEncapsulation:(id)a3
{
  objc_storeStrong(&self->_textEncapsulation, a3);

  [(UILabel *)self _invalidateLabelDisplay];
}

- (double)_actualScaleFactor
{
  [(UIView *)self bounds];
  [(UILabel *)self _updateScaledMetricsForRect:v3, v4, v5, v6];
  scaledMetrics = self->_scaledMetrics;
  if (scaledMetrics)
  {
    return scaledMetrics->_actualScaleFactor;
  }

  else
  {
    return 1.0;
  }
}

- (void)_setAssociatedScalingLabel:(id)a3
{
  value = a3;
  v4 = [(UILabel *)self _associatedScalingLabel];

  v5 = value;
  if (v4 != value)
  {
    objc_setAssociatedObject(self, &kAssociatedScalingLabelKey, value, 1);
    [(UILabel *)self setNeedsDisplay];
    v5 = value;
  }
}

- (void)_setMinimumFontSize:(double)a3
{
  if (self->_minimumFontSize != a3)
  {
    v5 = [(UILabel *)self font];
    [v5 pointSize];
    if (v6 > 0.0)
    {
      [(UILabel *)self font];
    }

    else
    {
      [objc_opt_class() defaultFont];
    }
    v7 = ;
    [v7 pointSize];
    v9 = v8;

    v10 = a3 / v9;
    if (v9 == 0.0)
    {
      v10 = 0.0;
    }

    [(_UILabelImplProtocol *)self->__impl setMinimumScaleFactor:v10];
    self->_minimumFontSize = a3;
    [(UILabel *)self _invalidateLabelSize];
    v11.receiver = self;
    v11.super_class = UILabel;
    [(UIView *)&v11 setNeedsDisplay];
  }
}

- (double)_minimumFontSize
{
  minimumFontSize = self->_minimumFontSize;
  if (minimumFontSize <= 0.0)
  {
    v4 = [(UILabel *)self font];
    [v4 pointSize];
    v6 = v5;
    [(_UILabelImplProtocol *)self->__impl minimumScaleFactor];
    minimumFontSize = round(v6 * v7 * 4.0) * 0.25;
  }

  return minimumFontSize;
}

- (void)setMinimumScaleFactor:(CGFloat)minimumScaleFactor
{
  if (self)
  {
    [(_UILabelImplProtocol *)self->__impl setMinimumScaleFactor:minimumScaleFactor];
  }

  self->_minimumFontSize = 0.0;
}

- (CGFloat)minimumScaleFactor
{
  if (!self)
  {
    return 0.0;
  }

  [(_UILabelImplProtocol *)self->__impl minimumScaleFactor];
  return result;
}

- (BOOL)allowsDefaultTighteningForTruncation
{
  v2 = [(UILabel *)self _content];
  v3 = [v2 paragraphStyle];
  v4 = [v3 allowsDefaultTighteningForTruncation];

  return v4;
}

- (void)setEnablesMarqueeWhenAncestorFocused:(BOOL)enablesMarqueeWhenAncestorFocused
{
  if (((((*&self->_textLabelFlags & 0x100) == 0) ^ enablesMarqueeWhenAncestorFocused) & 1) == 0)
  {
    v12 = v4;
    v13 = v3;
    v8 = 256;
    if (!enablesMarqueeWhenAncestorFocused)
    {
      v8 = 0;
    }

    p_textLabelFlags = &self->_textLabelFlags;
    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFEFFLL | v8);
    [(UILabel *)self setMarqueeEnabled:v12, v13, v5];
    if ((*(p_textLabelFlags + 3) & 0x10) != 0)
    {
      v10 = [(UIView *)self layer];
      [v10 invalidateContentInsets];
    }

    v11 = [(UIView *)self layer];
    [v11 setNeedsLayout];

    [(UILabel *)self _runMarqueeIfEnabledAndAncestorIsFocused];
  }
}

- (void)setShowsExpansionTextWhenTruncated:(BOOL)showsExpansionTextWhenTruncated
{
  v3 = 0x100000000;
  if (!showsExpansionTextWhenTruncated)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)_setLineBreakStrategy:(unint64_t)a3
{
  v5 = [(UILabel *)self _content];
  v6 = [v5 paragraphStyle];

  if ([v6 lineBreakStrategy] != a3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__UILabel__setLineBreakStrategy___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__NSMutableParagraphStyle_8l;
    v11[4] = a3;
    v7 = self;
    v8 = [v6 mutableCopy];
    __33__UILabel__setLineBreakStrategy___block_invoke(v11, v8);
    v9 = [(UILabel *)v7 _content];
    v10 = [v9 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v8];
    [(UILabel *)v7 _setContent:v10];

    [(UILabel *)v7 _invalidateLabelSize];
  }
}

- (void)_setMaterialTextColorFollowsTintColor:(void *)result
{
  if (result)
  {
    v2 = result[93];
    if ((((v2 >= 0) ^ a2) & 1) == 0)
    {
      v3 = 0x80000000;
      if (!a2)
      {
        v3 = 0;
      }

      result[93] = v2 & 0xFFFFFFFF7FFFFFFFLL | v3;
      return [(UILabel *)result _invalidateLabelDisplay];
    }
  }

  return result;
}

- (void)_setTextColorFollowsTintColor:(BOOL)a3
{
  if (((((*&self->_textLabelFlags & 0x40000000) == 0) ^ a3) & 1) == 0)
  {
    v3 = 0x40000000;
    if (!a3)
    {
      v3 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFBFFFFFFFLL | v3);
    [(UILabel *)self _invalidateLabelDisplay];
  }
}

- (void)_setTextAlignment:(int64_t)a3
{
  *&self->_textLabelFlags |= 0x80uLL;
  v5 = [(UILabel *)self _content];
  v6 = [v5 paragraphStyle];

  if ([v6 alignment] != a3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29__UILabel__setTextAlignment___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__NSMutableParagraphStyle_8l;
    v11[4] = a3;
    v7 = self;
    v8 = [v6 mutableCopy];
    __29__UILabel__setTextAlignment___block_invoke(v11, v8);
    v9 = [(UILabel *)v7 _content];
    v10 = [v9 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v8];
    [(UILabel *)v7 _setContent:v10];

    [(UILabel *)v7 _invalidateLabelSize];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  if ([(UIView *)self semanticContentAttribute]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setSemanticContentAttribute:a3];
    [(UILabel *)self _invalidateLabelDisplay];
  }
}

- (void)setHighlightedTextColor:(UIColor *)highlightedTextColor
{
  v5 = highlightedTextColor;
  v6 = self->_highlightedColor;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (v7 && v6)
  {
    v8 = [(UIColor *)v6 isEqual:v7];

    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_highlightedColor, highlightedTextColor);
  if (*&self->_textLabelFlags)
  {
    [(UILabel *)self _invalidateLabelDisplay];
  }

LABEL_10:
}

- (void)_setFont:(id)a3
{
  v4 = a3;
  if (v4 || ([objc_opt_class() defaultFont], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v4;
    v5 = [(UILabel *)self _content];
    v6 = [v5 contentByApplyingAttributeToEntireRange:*off_1E70EC918 value:v9];
    [(UILabel *)self _setContent:v6];
  }

  else
  {
    v7 = objc_opt_class();
    v9 = [(UILabel *)self font];
    v5 = [v9 fontName];
    v6 = [(UILabel *)self font];
    [v6 pointSize];
    NSLog(&cfstr_NilPassedToUil.isa, v7, v5, v8);
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x200000000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x200000000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFDFFFFFFFFLL | v4);
    [(UILabel *)self _adjustFontForAccessibilityTraits:?];
  }
}

- (void)_setExtremeSizingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UILabel *)self _isExtremeSizingEnabled]!= a3)
  {
    v5 = 0x2000000000;
    if (!v3)
    {
      v5 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFDFFFFFFFFFLL | v5);
    [(UILabel *)self invalidateIntrinsicContentSize];
    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      v6 = [(UIView *)self layer];
      [v6 setOversizeEdgesIncludedInLabelLayer:5];

      if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
      {
        v7 = [(UIView *)self layer];
        [v7 invalidateContentInsets];
      }
    }
  }
}

- (void)setSizingRule:(int64_t)a3
{
  if ([(UILabel *)self sizingRule]!= a3)
  {
    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFBFFFFFFFFFLL | ((a3 == 1) << 38));
    [(UILabel *)self invalidateIntrinsicContentSize];
    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      v5 = [(UIView *)self layer];
      [v5 setOversizeEdgesIncludedInLabelLayer:15];

      if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
      {
        v6 = [(UIView *)self layer];
        [v6 invalidateContentInsets];
      }
    }
  }
}

void __69__UILabel__contentAdjustingFontForTypesettingLanguage_didAdjustFont___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v7 = [v18 objectForKeyedSubscript:*off_1E70EC978];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v18 objectForKeyedSubscript:*off_1E70EC918];
  }

  v10 = v9;

  v11 = [(UIFont *)v10 _fontAdjustedForTypesettingLanguage:?];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && ([(__CTFont *)v10 isEqual:v11]& 1) == 0)
  {
    v14 = [*(*(*(a1 + 40) + 8) + 40) contentByApplyingAttribute:*off_1E70EC918 value:v12 toRange:{a3, a4}];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(a1 + 48);
    if (v17)
    {
      *v17 = 1;
    }
  }
}

void __89__UILabel__contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio_didAdjustFont___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v7 = [v18 objectForKeyedSubscript:*off_1E70EC978];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v18 objectForKeyedSubscript:*off_1E70EC918];
  }

  v10 = v9;

  v11 = [(UIFont *)v10 _fontAdjustedForTypesettingLanguageAwareLineHeightRatio:?];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && ([(__CTFont *)v10 isEqual:v11]& 1) == 0)
  {
    v14 = [*(*(*(a1 + 32) + 8) + 40) contentByApplyingAttribute:*off_1E70EC918 value:v12 toRange:{a3, a4}];
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(a1 + 48);
    if (v17)
    {
      *v17 = 1;
    }
  }
}

void __76__UILabel__contentAdjustingFontForAccessibilityTraits_forced_didAdjustFont___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v7 = [v18 objectForKeyedSubscript:*off_1E70EC978];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v18 objectForKeyedSubscript:*off_1E70EC918];
  }

  v10 = v9;

  v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:a1[4]];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && ([v10 isEqual:v11] & 1) == 0)
  {
    v14 = [*(*(a1[5] + 8) + 40) contentByApplyingAttribute:*off_1E70EC918 value:v12 toRange:{a3, a4}];
    v15 = *(a1[5] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = a1[6];
    if (v17)
    {
      *v17 = 1;
    }
  }
}

- (void)_setShadow:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v5 = [a1 _content];
    v4 = [v5 contentByApplyingAttributeToEntireRange:*off_1E70EC9B0 value:v3];

    [a1 _setContent:v4];
  }
}

- (void)setShadowColor:(UIColor *)shadowColor
{
  v8 = shadowColor;
  v4 = [(UILabel *)self _shadow];
  v5 = [v4 copy];

  v6 = [v5 shadowColor];
  if (v6 == v8)
  {
    v7 = dyld_program_sdk_at_least();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  [v5 setShadowColor:v8];
  [(UILabel *)self _setShadow:v5];
LABEL_5:
}

- (void)setShadowOffset:(CGSize)shadowOffset
{
  height = shadowOffset.height;
  width = shadowOffset.width;
  v6 = [(UILabel *)self _shadow];
  v10 = [v6 copy];

  [v10 shadowOffset];
  v9 = v8 == width && v7 == height;
  if (!v9 || dyld_program_sdk_at_least())
  {
    [v10 setShadowOffset:{width, height}];
    [(UILabel *)self _setShadow:v10];
  }
}

- (CGSize)shadowOffset
{
  v2 = [(UILabel *)self _shadow];
  [v2 shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowBlur:(double)a3
{
  v5 = [(UILabel *)self _shadow];
  v7 = [v5 copy];

  [v7 shadowBlurRadius];
  if (v6 != a3 || dyld_program_sdk_at_least())
  {
    [v7 setShadowBlurRadius:a3];
    [(UILabel *)self _setShadow:v7];
  }
}

- (double)shadowBlur
{
  v2 = [(UILabel *)self _shadow];
  [v2 shadowBlurRadius];
  v4 = v3;

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if ((*&self->_textLabelFlags & 1) != highlighted)
  {
    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFFFELL | highlighted);
    [(UILabel *)self _invalidateLabelDisplay];
  }
}

- (void)_setLineBreakMode:(int64_t)a3
{
  v5 = [(UILabel *)self _content];
  v6 = [v5 paragraphStyle];

  if ([v6 lineBreakMode] != a3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29__UILabel__setLineBreakMode___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__NSMutableParagraphStyle_8l;
    v11[4] = a3;
    v7 = self;
    v8 = [v6 mutableCopy];
    __29__UILabel__setLineBreakMode___block_invoke(v11, v8);
    v9 = [(UILabel *)v7 _content];
    v10 = [v9 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v8];
    [(UILabel *)v7 _setContent:v10];

    [(UILabel *)v7 _invalidateLabelSize];
  }
}

- (void)setNumberOfLines:(NSInteger)numberOfLines
{
  if (self->_numberOfLines != numberOfLines)
  {
    v5 = [(UILabel *)self _needsDoubleUpdateConstraintsPass];
    self->_numberOfLines = numberOfLines;
    [(UILabel *)self _invalidateLabelSize];
    v6.receiver = self;
    v6.super_class = UILabel;
    [(UIView *)&v6 setNeedsDisplay];
    [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:v5];
    [(UILabel *)self setMarqueeEnabled:(*&self->_textLabelFlags >> 8) & 1];
    [(UILabel *)self _runMarqueeIfEnabledAndAncestorIsFocused];
  }
}

- (void)setLineSpacing:(int64_t)a3
{
  if (self->_lineSpacing != a3)
  {
    v12[11] = v3;
    v12[12] = v4;
    self->_lineSpacing = a3;
    v6 = [(UILabel *)self _content];
    v7 = [v6 paragraphStyle];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __26__UILabel_setLineSpacing___block_invoke;
    v12[3] = &unk_1E7129FC8;
    v12[4] = self;
    v8 = self;
    v9 = [v7 mutableCopy];
    __26__UILabel_setLineSpacing___block_invoke(v12, v9);
    v10 = [(UILabel *)v8 _content];
    v11 = [v10 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v9];
    [(UILabel *)v8 _setContent:v11];

    [(UILabel *)v8 _invalidateLabelSize];
  }
}

void __26__UILabel_setLineSpacing___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 592);
  v4 = a2;
  [v4 setMinimumLineHeight:v3];
  [v4 setMaximumLineHeight:*(*(a1 + 32) + 592)];
}

- (void)_setHyphenationFactor:(float)a3
{
  v5 = [(UILabel *)self _content];
  v6 = [v5 paragraphStyle];

  [v6 hyphenationFactor];
  if (v7 != a3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__UILabel__setHyphenationFactor___block_invoke;
    v12[3] = &__block_descriptor_36_e33_v16__0__NSMutableParagraphStyle_8l;
    v13 = a3;
    v8 = self;
    v9 = [v6 mutableCopy];
    (__33__UILabel__setHyphenationFactor___block_invoke)(v12, v9);
    v10 = [(UILabel *)v8 _content];
    v11 = [v10 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v9];
    [(UILabel *)v8 _setContent:v11];

    [(UILabel *)v8 _invalidateLabelSize];
  }
}

- (void)_setHyphenationFactorIgnoredIfURLsDetected:(void *)result
{
  if (result)
  {
    v2 = result;
    if (((((result[93] & 0x4000000) == 0) ^ a2) & 1) == 0)
    {
      v3 = 0x4000000;
      if (!a2)
      {
        v3 = 0;
      }

      result[93] = result[93] & 0xFFFFFFFFFBFFFFFFLL | v3;
      [(UILabel *)result _invalidateLabelDisplay];

      return [v2 _invalidateLabelSize];
    }
  }

  return result;
}

- (void)setAdjustsLetterSpacingToFitWidth:(BOOL)adjustsLetterSpacingToFitWidth
{
  if (((((*&self->_textLabelFlags & 8) == 0) ^ adjustsLetterSpacingToFitWidth) & 1) == 0)
  {
    v4 = 8;
    if (!adjustsLetterSpacingToFitWidth)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFFF7 | v4);
    [(UILabel *)self _invalidateLabelSize];
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)setBaselineAdjustment:(UIBaselineAdjustment)baselineAdjustment
{
  textLabelFlags = self->_textLabelFlags;
  if (((*&textLabelFlags >> 4) & 3) != baselineAdjustment)
  {
    v9 = v3;
    v10 = v4;
    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFFFFFCFLL | (16 * (baselineAdjustment & 3)));
    v8.receiver = self;
    v8.super_class = UILabel;
    [(UIView *)&v8 setNeedsDisplay];
    layout = self->_layout;
    self->_layout = 0;

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UILabel *)self _invalidateLabelSize];
    }
  }
}

- (void)_setDrawsDebugGlyphPathBoundsClipping:(BOOL)a3
{
  if (((((*&self->_textLabelFlags & 0x8000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x8000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFF7FFFLL | v4);
    if (a3)
    {
      [(UIView *)self _addGeometryChangeObserver:?];
    }

    else
    {
      [(UIView *)self _removeGeometryChangeObserver:?];
    }

    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if (self)
  {
    v4.receiver = self;
    v4.super_class = UILabel;
    [(UIView *)&v4 setNeedsDisplay:a3];
  }
}

- (void)_setDrawsDebugBaselines:(BOOL)a3
{
  if (((((*&self->_textLabelFlags & 0x4000) == 0) ^ a3) & 1) == 0)
  {
    v3 = 0x4000;
    if (!a3)
    {
      v3 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFBFFFLL | v3);
    v4.receiver = self;
    v4.super_class = UILabel;
    [(UIView *)&v4 setNeedsDisplay];
  }
}

- (void)set_fontForShortcutBaselineCalculation:(id)a3
{
  v5 = a3;
  if (![v5 isEqual:self->_fontForShortcutBaselineCalculation] || !v5 && self->_fontForShortcutBaselineCalculation)
  {
    objc_storeStrong(&self->_fontForShortcutBaselineCalculation, a3);
    [(UILabel *)self _invalidateBaselineConstraints];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v38 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  [(UILabel *)self alignmentRectInsets];
  v10 = v9 == 0.0;
  if (v11 != 0.0)
  {
    v10 = 0;
  }

  if (v8 != 0.0)
  {
    v10 = 0;
  }

  if (v7 != 0.0)
  {
    v10 = 0;
  }

  if (has_internal_diagnostics)
  {
    if (!v10)
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Text Field not expected to have alignmnetRectInsets.", buf, 2u);
      }
    }
  }

  else if (!v10)
  {
    v23 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497550) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Text Field not expected to have alignmnetRectInsets.", buf, 2u);
    }
  }

  fontForShortcutBaselineCalculation = self->_fontForShortcutBaselineCalculation;
  if (fontForShortcutBaselineCalculation || [(_UILabelContent *)self->_content isAttributed])
  {
    v13 = fontForShortcutBaselineCalculation;
  }

  else
  {
    v13 = [(UILabel *)self font];
  }

  v14 = v13;
  if (!v13)
  {
    [(UILabel *)self sizeThatFits:width, height];
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v27[0] = 0;
    v27[1] = 0;
    v19 = [(_UITextSizeCache *)self->_intrinsicContentSizeCache getSize:v27 baselineInfo:buf forTargetSize:[(UILabel *)self numberOfLines:0]!= 1 isMultiline:width, height];
    if (os_variant_has_internal_diagnostics())
    {
      if (v19)
      {
LABEL_16:
        v16 = *buf;
        v18 = height - *&buf[8];
        goto LABEL_17;
      }

      v24 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
LABEL_31:

        goto LABEL_16;
      }

      v39.width = width;
      v39.height = height;
      v25 = NSStringFromSize(v39);
      *v34 = 138412546;
      v35 = self;
      v36 = 2112;
      v37 = v25;
      _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "UIKit bug. Failed baseline lookup for %@ at %@", v34, 0x16u);
    }

    else
    {
      if (v19)
      {
        goto LABEL_16;
      }

      v26 = *(__UILogGetCategoryCachedImpl("Assert", qword_1ED497558) + 8);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v24 = v26;
      v40.width = width;
      v40.height = height;
      v25 = NSStringFromSize(v40);
      *v34 = 138412546;
      v35 = self;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "UIKit bug. Failed baseline lookup for %@ at %@", v34, 0x16u);
    }

    goto LABEL_31;
  }

  [(UIFont *)v13 lineHeight];
  [(UIFont *)v14 descender];
  UIRoundToViewScale(self);
  v16 = v15;
  [(UIFont *)v14 lineHeight];
  UICeilToViewScale(self);
  v18 = v17 - v16;
LABEL_17:

  v20 = v16;
  v21 = v18;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UILabel;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (void)traitCollectionDidChange:(id)a3
{
  v47 = a3;
  v4 = [(UIView *)self traitCollection];
  [v47 displayScale];
  v6 = v5;
  [v4 displayScale];
  v8 = v7;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    if (v6 <= 0.0)
    {
      v9 = [objc_opt_self() mainScreen];
      [v9 scale];
    }

    if (v8 <= 0.0)
    {
      v10 = [objc_opt_self() mainScreen];
      [v10 scale];
    }
  }

  v11 = [v4 typesettingLanguage];
  v12 = [v47 typesettingLanguage];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    [(UILabel *)self _adjustFontForTypesettingLanguage];
  }

  [v4 _typesettingLanguageAwareLineHeightRatio];
  v15 = v14;
  [v47 _typesettingLanguageAwareLineHeightRatio];
  if (self && v15 != v16)
  {
    v17 = [(UILabel *)self _content];
    v18 = [(UILabel *)self _contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:v17 didAdjustFont:0];
    [(UILabel *)self _setContent:v18 adjustingFontForAccessibilityTraits:0 adjustingFontForTypesettingLanguage:0 adjustingFontForTypesettingLanguageAwareLineHeightRatio:1 checkingForDifferences:1];
  }

  if (v4 && (!v47 || v4[13] != v47[13] || v4[15] != v47[15]))
  {
    -[UILabel _adjustFontForAccessibilityTraits:](self, [v4 legibilityWeight] != objc_msgSend(v47, "legibilityWeight"));
  }

  v19 = [(UITraitCollection *)v4 _resolvesNaturalAlignmentWithBaseWritingDirectionWithDefaultValue:?];
  if (![(UILabel *)self _textAlignmentFollowsWritingDirection]&& v19)
  {
    [(UILabel *)self _setTextAlignmentFollowsWritingDirection:1];
  }

  v20 = [v47 _backlightLuminance];
  if (v20 != [v4 _backlightLuminance])
  {
    if ([v4 _backlightLuminance] == 1)
    {
      if (self)
      {
        v21 = [(UIView *)self viewWithTag:4032914800];
        if (v21)
        {
          v22 = [(UIView *)self viewWithTag:4032914800];
          if (v22 && (v23 = v22, [v22 layer], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "animationForKey:", @"UILabelMarqueeLayerContentOriginXAnimationKey"), v25 = objc_claimAutoreleasedReturnValue(), v24, v26 = CACurrentMediaTime(), objc_msgSend(v25, "beginTime"), v28 = v26 - (v27 + 0.0 + 1.5), v25, v23, v28 >= 0.0))
          {
            if ([(UILabel *)self marqueeRunning])
            {
              v29 = [(UIView *)self traitCollection];
              v30 = [v29 _backlightLuminance];

              if (v30 == 1)
              {
                [(UILabel *)self _stopMarqueeWithRedisplay:1];
                +[_UIBacklightEnvironment _defaultAnimationDuration];
                v32 = v31;
                [(UIView *)self alpha];
                v34 = v33;
                [(UIView *)self setAlpha:0.0];
                v48.receiver = MEMORY[0x1E69E9820];
                v48.super_class = 3221225472;
                v49 = __35__UILabel__applyBacklightLuminance__block_invoke;
                v50 = &unk_1E70F32F0;
                v51 = self;
                v52 = v34;
                [UIView animateWithDuration:&v48 animations:v32];
              }
            }
          }

          else
          {
            [(UILabel *)self _stopMarqueeWithRedisplay:1];
          }
        }
      }
    }

    else if (self)
    {
      [(UILabel *)self _startMarqueeIfNecessary];
    }
  }

  v35 = [v4 userInterfaceStyle];
  v36 = [v47 userInterfaceStyle];
  if (self && v35 != v36 && self->_cuiStyleEffectConfiguration)
  {
    v37 = [(UIView *)self traitCollection];
    v38 = [(UITraitCollection *)v37 _styleEffectAppearanceName];

    v39 = [(CUIStyleEffectConfiguration *)self->_cuiStyleEffectConfiguration appearanceName];
    v40 = v38;
    v41 = v39;
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      if (v40 && v41)
      {
        v43 = [v40 isEqual:v41];

        if (v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v44 = [(CUIStyleEffectConfiguration *)self->_cuiStyleEffectConfiguration copy];
      [v44 setAppearanceName:v40];
      cuiStyleEffectConfiguration = self->_cuiStyleEffectConfiguration;
      self->_cuiStyleEffectConfiguration = v44;
      v42 = v44;

      layout = self->_layout;
      self->_layout = 0;

      v48.receiver = self;
      v48.super_class = UILabel;
      [(UIView *)&v48 setNeedsDisplay];
    }

LABEL_44:
  }

  if (_UITraitCollectionUserInterfaceRenderingModeDidChange(v4, v47))
  {
    [(UILabel *)self _resolveMaterialColor:?];
  }
}

- (void)_updateTextColorWithFallbackColorIfNeeded
{
  v8 = [(UILabel *)self _visualStyle];
  if ([v8 updatesTextColorOnUserInterfaceStyleChanges])
  {
    textLabelFlags = self->_textLabelFlags;

    if ((*&textLabelFlags & 0x80000) != 0)
    {
      return;
    }

    v8 = [(UIView *)self traitCollection];
    v4 = [v8 userInterfaceStyle];
    fallbackColorsForUserInterfaceStyle = self->_fallbackColorsForUserInterfaceStyle;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v7 = [(NSMutableDictionary *)fallbackColorsForUserInterfaceStyle objectForKey:v6];

    [(UILabel *)self _setTextColor:v7];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = _UIViewEnableDebugSignposts();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __36__UILabel__intrinsicSizeWithinSize___block_invoke;
  v19[3] = &unk_1E71270A0;
  v19[4] = self;
  if (v6)
  {
    memset(v25, 0, sizeof(v25));
    __36__UILabel__intrinsicSizeWithinSize___block_invoke(v19, v25);
    if (LODWORD(v25[0]))
    {
      kdebug_trace();
    }

    v20 = *(&v25[2] + 8);
    v21 = *(&v25[3] + 8);
    v22 = *(&v25[4] + 1);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  v7 = [(UIView *)self superview];
  kdebug_trace();

  intrinsicContentSizeCache = self->_intrinsicContentSizeCache;
  if (!intrinsicContentSizeCache)
  {
    v9 = objc_opt_new();
    v10 = self->_intrinsicContentSizeCache;
    self->_intrinsicContentSizeCache = v9;

    intrinsicContentSizeCache = self->_intrinsicContentSizeCache;
  }

  v23 = 0.0;
  v24 = 0.0;
  if (![(_UITextSizeCache *)intrinsicContentSizeCache getSize:&v23 baselineInfo:&self->_intrinsicSizeBaselineInfo forTargetSize:self->_numberOfLines != 1 isMultiline:width, height])
  {
    if (width <= 0.0 || self->_numberOfLines == 1)
    {
      v12 = 3.40282347e38;
    }

    else
    {
      v12 = width;
    }

    [(UILabel *)self textRectForBounds:0.0 limitedToNumberOfLines:0.0, v12];
    v23 = v13;
    v24 = v14;
    [(_UITextSizeCache *)self->_intrinsicContentSizeCache addSize:&self->_intrinsicSizeBaselineInfo baselineInfo:v13 forTargetSize:v14, width, height];
  }

  if (kdebug_is_enabled())
  {
    v15 = [(UIView *)self description];
    [v15 UTF8String];
    kdebug_trace_string();

    v16 = [(UIView *)self superview];
    kdebug_trace();
  }

  if (v20)
  {
    kdebug_trace();
  }

  v17 = v23;
  v18 = v24;
  result.height = v18;
  result.width = v17;
  return result;
}

void __36__UILabel__intrinsicSizeWithinSize___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  strncpy(&v8, Name, 0x18uLL);
  *a2 = 93;
  v6 = *(a1 + 32);
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = 94;
  *(a2 + 48) = v6;
  *(a2 + 56) = 0;
  *(a2 + 64) = v6;
  v7 = [v6 superview];
  *(a2 + 72) = v7;
}

- (void)_setUseShortcutIntrinsicContentSize:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)_setMultilineLabelRequiresCarefulMeasurement:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self _intrinsicSizeWithinSize:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  textLabelFlags = self->_textLabelFlags;
  v9 = [(UILabel *)self _letterformAwareAllAlignmentInsets];
  if ((*&textLabelFlags & 0x4000000000) == 0)
  {
    v10 = 0.0;
    v9 = v9 + 0.0;
    v11 = v11 + 0.0;
    v12 = 0.0;
  }

  v13 = v7 + v9 + v11;
  v14 = v5 + v10 + v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  textLabelFlags = self->_textLabelFlags;
  if ((*&textLabelFlags & 0x200) != 0)
  {
    [(UIView *)self bounds];
    v14 = v13;
    [(UILabel *)self textSizeForWidth:3.40282347e38];
    v12 = v15;
    v16 = v15 + v14;
    [(UILabel *)self marqueeLoopPadding];
    v60 = v17 + v16;
    if (v12 <= v14)
    {
      v11 = 0;
    }

    else
    {
      v18 = [(UILabel *)self text];
      v11 = [v18 _isNaturallyRTL];
    }
  }

  else
  {
    v11 = 0;
    v60 = 0.0;
    v12 = 0.0;
  }

  v19 = [(UILabel *)self _shadow];
  v20 = [v19 shadowColor];

  if (v20)
  {
    if (!v19)
    {
      v29 = 1;
      if ((*&textLabelFlags & 0x200) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    CGContextSaveGState(v9);
    [v19 shadowOffset];
    v22 = v21;
    v24 = v23;
    [v19 shadowBlurRadius];
    v26 = v25;
    v27 = [v19 shadowColor];
    v28 = [v27 CGColor];
    v62.width = v22;
    v62.height = v24;
    CGContextSetShadowWithColor(v9, v62, v26, v28);

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  if ((*&textLabelFlags & 0x200) == 0)
  {
LABEL_14:
    [(UILabel *)self _drawTextInRect:x, y, width, height];
    goto LABEL_54;
  }

LABEL_16:
  if (v12 <= width)
  {
    v36 = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFF7FFLL);
  }

  else
  {
    v30 = self->_textLabelFlags;
    if ((*&v30 & 2) != 0)
    {
      marqueeMinimumScaleFactor = self->_marqueeMinimumScaleFactor;
      if (marqueeMinimumScaleFactor > 0.0 && marqueeMinimumScaleFactor < 1.0)
      {
        v33 = [(UILabel *)self attributedText];
        v34 = [(UILabel *)self _scaledMetricsForText:v33 inRect:x, y, width, height];

        if (v34)
        {
          v35 = (v34[1] < self->_marqueeMinimumScaleFactor) << 11;
        }

        else
        {
          v35 = 0;
        }

        self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFF7FFLL | v35);

        v36 = self->_textLabelFlags;
        goto LABEL_30;
      }
    }

    v36 = (*&v30 | 0x800);
  }

  self->_textLabelFlags = v36;
LABEL_30:
  if ((~*&v36 & 0x1800) != 0)
  {
    v37 = [(UIView *)self viewWithTag:4032914800];
    v38 = v37;
    if (v37)
    {
      [v37 removeFromSuperview];
    }

    v36 = self->_textLabelFlags;
  }

  if (v12 <= width)
  {
    v39 = width;
  }

  else
  {
    v39 = v12;
  }

  if ((*&v36 & 0x800) != 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = width;
  }

  v41 = 0.0;
  v42 = 0.0;
  if ((*&v36 & 0x1800) == 0x800)
  {
    [(UILabel *)self _contentInsetsFromFonts];
    v41 = height - (v45 + v46);
    v42 = y + v45;
    v47 = 0.0;
    if (v11)
    {
      v43 = v44;
    }

    else
    {
      v47 = v43 + 0.0;
    }

    v48 = width - v43;
    v49 = v42;
    v50 = v41;
    CGContextClipToRect(v9, *&v47);
  }

  v51 = x;
  if (v11)
  {
    [(UILabel *)self marqueeLoopPadding];
    v51 = v60 - v12 - v52 - v12;
  }

  v53 = self->_textLabelFlags;
  if ((~*&self->_textLabelFlags & 0x1800) != 0)
  {
    [(UILabel *)self _drawFullMarqueeTextInRect:v51, y, v40, height];
    v53 = self->_textLabelFlags;
  }

  if ((*&v53 & 0x1800) == 0x800)
  {
    v54 = [UIImage kitImageNamed:@"UILabelMarqueeRightFade.png"];
    [v54 size];
    v56 = v55;
    if (v11)
    {
      v57 = [v54 CGImage];
      [v54 scale];
      v58 = [UIImage imageWithCGImage:v57 scale:4 orientation:?];

      v59 = 0.0;
      v54 = v58;
    }

    else
    {
      v59 = x + width - v55;
    }

    [v54 drawInRect:22 blendMode:v59 alpha:{v42, v56, v41, 1.0}];
  }

LABEL_54:
  if ((*(&self->_textLabelFlags + 1) & 8) != 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__UILabel_drawTextInRect___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ((v29 & 1) == 0)
  {
    CGContextRestoreGState(v9);
  }
}

- (void)_setSupportMultiLineShrinkToFit:(uint64_t)a1
{
  if (a1)
  {
    v3 = 4;
    if (!a2)
    {
      v3 = 0;
    }

    *(a1 + 744) = *(a1 + 744) & 0xFFFFFFFFFFFFFFFBLL | v3;
    v4 = *(a1 + 608);
    *(a1 + 608) = 0;

    *(a1 + 616) = *MEMORY[0x1E695F060];

    [(UILabel *)a1 _invalidateLabelMetrics];
  }
}

- (void)_setDelegate:(id)a3
{
  value = a3;
  v4 = [(UILabel *)self _delegate];

  if (v4 != value)
  {
    objc_setAssociatedObject(self, &kLabelDelegateKey, value, 1);
    v5 = objc_opt_respondsToSelector();
    v6 = 0x40000000000;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFBFFFFFFFFFFLL | v6);
    v7 = objc_opt_respondsToSelector();
    v8 = 0x80000000000;
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFF7FFFFFFFFFFLL | v8);
  }
}

- (CGRect)_drawTextInRect:(CGRect)a3 baselineCalculationOnly:(BOOL)a4
{
  if (self)
  {
    v4 = [(UILabel *)self _drawTextInRect:a4 baselineCalculationOnly:0 returningDeviceMetricsOfFirstLine:0 returningMultilineDeviceMetrics:0 forceMultiline:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)_drawTextInRect:(int)a3 baselineCalculationOnly:(unsigned __int8)a4 returningDeviceMetricsOfFirstLine:(int)a5 returningMultilineDeviceMetrics:(double)a6 forceMultiline:(double)a7
{
  v265 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0.0;
  }

  v14 = a7;
  v15 = a6;
  *(a1 + 464) = a6;
  *(a1 + 472) = a7;
  *(a1 + 480) = a8;
  *(a1 + 488) = a9;
  v17 = [a1 _content];
  if (![v17 length] && (a2 & 1) == 0)
  {
    v18 = *MEMORY[0x1E695F050];
    goto LABEL_184;
  }

  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 496) = -1;
  v19 = [a1 _stringDrawingContext];
  rect_16 = [(UILabel *)a1 _synthesizedTextAttributes];
  rect = a4;
  if (a2 && ![v17 length])
  {
    v27 = objc_alloc(MEMORY[0x1E696AAB0]);
    v28 = MEMORY[0x1E695DF20];
    v29 = [a1 font];
    v30 = v29;
    if (!v29)
    {
      v30 = +[UILabel defaultFont];
    }

    v31 = [v28 dictionaryWithObject:v30 forKey:*off_1E70EC918];
    v32 = [v27 initWithString:@"X" attributes:v31];

    if (!v29)
    {
    }

    v20 = 1;
    v21 = v32;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  [v19 setWantsNumberOfLineFragments:1];
  if (a5)
  {
    [v19 setMaximumNumberOfLines:0];
  }

  [(UILabel *)a1 _updateScaledMetricsForRect:v15, v14, a8, a9];
  if (*(a1 + 608))
  {
    [v19 setLayout:0];
  }

  v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
  if (v21)
  {
LABEL_37:
    v36 = *(a1 + 608);
    if (v36)
    {
      if (v20)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_43;
  }

  if ([v17 isAttributed])
  {
    v23 = *(a1 + 744);
    goto LABEL_15;
  }

  [a1 _hyphenationFactor];
  if (v33 > 0.0)
  {
    v23 = *(a1 + 744);
    if ((v23 & 0x4000000) != 0)
    {
LABEL_15:
      if ((v23 & 0x30000000000) != 0)
      {
        v24 = [a1 _content];
        v25 = [v24 intelligenceLightAttributedStrings];

        if ((*(a1 + 749) & 1) != 0 && ([v25 lightReactiveAttributedString], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
        {
          v21 = [v25 lightReactiveAttributedString];
        }

        else
        {
          v21 = 0;
        }

        if ((*(a1 + 749) & 2) != 0)
        {
          v34 = [v25 lightInertAttributedString];

          if (v34)
          {
            v35 = [v25 lightInertAttributedString];

            v21 = v35;
          }
        }

        if (v21)
        {
          [v19 setCachesLayout:0];

LABEL_36:
          v20 = 1;
          goto LABEL_37;
        }
      }

      v21 = [a1 _synthesizedAttributedText];
      goto LABEL_36;
    }
  }

  v21 = [v17 string];
  if (*(a1 + 608))
  {
LABEL_39:
    v37 = [a1 _synthesizedAttributedText];

    v36 = *(a1 + 608);
    v21 = v37;
LABEL_40:
    v38 = *(a1 + 744);
    if ((v38 & 4) != 0)
    {
      v39 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
      if (v36)
      {
        v40 = *(v36 + 24);
        rect2 = v40;
        goto LABEL_54;
      }
    }

    else
    {
      v39 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
      if (v36)
      {
        rect2 = *(v36 + 24);
        v40 = *(v36 + 16);
LABEL_54:
        if (1.0 - *(v36 + 8) <= 0.00000011920929)
        {
          v250 = 0;
          goto LABEL_59;
        }

        v36 = *(v36 + 48);
LABEL_56:
        v250 = v36;
        v36 = *(a1 + 608);
        if (!v36)
        {
          v258 = 0.0;
LABEL_62:
          v51 = a1 + v39[930];
          *(v51 + 48) = v36;
          v52 = *(a1 + 440);
          if (v52 >= 1)
          {
            if (v36 >= v52)
            {
              v36 = *(a1 + 440);
            }

            *(v51 + 48) = v36;
          }

          goto LABEL_66;
        }

        v38 = *(a1 + 744);
LABEL_59:
        v49 = (v38 & 4) == 0;
        v50 = 72;
        if (v49)
        {
          v50 = 88;
        }

        v258 = *(v36 + v50);
        v36 = *(v36 + 40);
        goto LABEL_62;
      }
    }

    v40 = 0.0;
    rect2 = 0.0;
    goto LABEL_56;
  }

  v20 = 0;
LABEL_43:
  v41 = v14;
  v42 = *(a1 + 744);
  if (*(a1 + 440) == 1)
  {
    if ((v42 & 0x8000000000) != 0)
    {
      v43 = 3.40282347e38;
    }

    else
    {
      v43 = a8;
    }

    if ((v42 & 0x8000000000) != 0)
    {
      v44 = a8;
    }

    else
    {
      v44 = 3.40282347e38;
    }

    [v19 setWantsBaselineOffset:1];
    v45 = [a1 _stringDrawingOptions];
    if (!v20)
    {
      v120 = [a1 _defaultAttributes];
      [(UILabel *)a1 _boundingRectWithString:v45 size:v120 options:v19 attributes:v43 context:v44];
      v258 = v121;

      [v19 baselineOffset];
      v250 = 0;
      v238 = 0;
      *(a1 + 496) = 1;
      rect2 = 0.0;
      v40 = v122;
      v14 = v41;
      goto LABEL_78;
    }

    v46 = [(UILabel *)a1 _boundingRectWithAttributedString:v21 size:v45 options:v19 context:v43, v44];
    v258 = v47;
    [v19 baselineOffset];
    v40 = v48;
    v250 = 0;
    *(a1 + 496) = 1;
    rect2 = 0.0;
    v14 = v41;
  }

  else
  {
    if ((v42 & 0x8000000000) != 0)
    {
      v74 = a8;
    }

    else
    {
      v74 = a9;
    }

    if ((v42 & 0x8000000000) != 0)
    {
      v75 = a9;
    }

    else
    {
      v75 = a8;
    }

    [v19 setWantsBaselineOffset:1];
    v76 = [a1 _stringDrawingOptions];
    if (v20)
    {
      v77 = [(UILabel *)a1 _boundingRectWithAttributedString:v21 size:v76 options:v19 context:v75, v74];
    }

    else
    {
      v77 = [(UILabel *)a1 _boundingRectWithString:v21 size:v76 options:rect_16 attributes:v19 context:v75, v74];
    }

    v258 = v78;
    [v19 baselineOffset];
    v40 = v123;
    [v19 firstBaselineOffset];
    v250 = 0;
    rect2 = 0.0;
    v14 = v41;
    if (!v20)
    {
      v238 = 0;
      goto LABEL_78;
    }
  }

LABEL_66:
  buf[0].origin = xmmword_18A678470;
  v53 = dyld_program_sdk_at_least();
  v54 = *off_1E70EC8D8;
  if (v53)
  {
    [v21 attribute:v54 atIndex:0 longestEffectiveRange:buf inRange:{0, objc_msgSend(v21, "length")}];
  }

  else
  {
    [v21 attribute:*off_1E70EC8D8 atIndex:0 effectiveRange:buf];
  }
  v55 = ;
  y = buf[0].origin.y;
  if (*&y == [v21 length] || !v55)
  {
    if (v55)
    {
      [v55 floatValue];
      dyld_program_sdk_at_least();
    }
  }

  else
  {
    if (v250)
    {
      v57 = v250;
    }

    else
    {
      v57 = v21;
    }

    v58 = [v57 mutableCopy];
    [v58 removeAttribute:v54 range:{0, objc_msgSend(v58, "length")}];
    [v19 setWantsBaselineOffset:1];
    v59 = [v19 cachesLayout];
    [v19 setCachesLayout:0];
    v60 = -[UILabel _boundingRectWithAttributedString:size:options:context:](a1, v58, [a1 _stringDrawingOptions], v19, a8, 3.40282347e38);
    v258 = v61;
    [v19 baselineOffset];
    v40 = v62;
    [v19 firstBaselineOffset];
    [v19 setCachesLayout:v59];
  }

  v238 = 1;
LABEL_78:
  rect_12 = a2;
  UIRoundToViewScale(a1);
  UIRoundToViewScale(a1);
  *(a1 + 456) = v63;
  UIRoundToViewScale(a1);
  *(a1 + 448) = v64;
  if (*(a1 + 496) == -1)
  {
    *(a1 + 496) = [v19 numberOfLineFragments];
  }

  v257 = *(a1 + 456) - v40;
  v249 = v21;
  v251 = a8;
  if ([a1 lineSpacing])
  {
    v65 = [a1 _defaultAttributes];
    v66 = [v65 objectForKey:*off_1E70EC918];

    if (v238)
    {
      v67 = v250;
      if (!v250)
      {
        v67 = [a1 _synthesizedAttributedText];
      }

      rect_24 = v19;
      v68 = v67;
      v69 = v66;
      v70 = [v68 length];
      v235 = v17;
      if (v69)
      {
        v71 = [(NSAttributedString *)v68 _ui_fontsInRange:v70 usingDefaultFont:v69];
      }

      else
      {
        v79 = +[UILabel defaultFont];
        v71 = [(NSAttributedString *)v68 _ui_fontsInRange:v70 usingDefaultFont:v79];
      }

      v261 = 0u;
      v262 = 0u;
      v259 = 0u;
      v260 = 0u;
      v80 = v71;
      v81 = [v80 countByEnumeratingWithState:&v259 objects:buf count:16];
      if (v81)
      {
        v82 = v81;
        v83 = *v260;
        v84 = 0.0;
        do
        {
          for (i = 0; i != v82; ++i)
          {
            if (*v260 != v83)
            {
              objc_enumerationMutation(v80);
            }

            [*(*(&v259 + 1) + 8 * i) lineHeight];
            if (v86 > v84)
            {
              v84 = v86;
            }
          }

          v82 = [v80 countByEnumeratingWithState:&v259 objects:buf count:16];
        }

        while (v82);
      }

      UICeilToViewScale(a1);
      v73 = v87;
      if (!v250)
      {
      }

      v17 = v235;
      v19 = rect_24;
      v21 = v249;
      v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
    }

    else
    {
      [v66 lineHeight];
      UICeilToViewScale(a1);
      v73 = v72;
    }

    v257 = v257 - (v73 - [a1 lineSpacing]);
  }

  v88 = rect_12;
  v89 = v250;
  if (v250)
  {
    v90 = *(a1 + 744);
    if (*(a1 + 440) != 1 || (v91 = (v90 >> 4) & 3, v91 == 1))
    {
      if ((v90 & 4) != 0)
      {
        v266.origin.x = v15;
        v266.origin.y = v14;
        v266.size.width = a8;
        v266.size.height = a9;
        CGRectGetMinY(v266);
        v267.origin.x = v15;
        v267.origin.y = v14;
        v267.size.width = a8;
        v267.size.height = a9;
        CGRectGetHeight(v267);
        UICeilToViewScale(a1);
        v257 = v95;
        UICeilToViewScale(a1);
      }

      else
      {
        v93 = *(a1 + 608);
        if (v93)
        {
          v94 = *(v93 + 72);
          v258 = v258 - v94;
        }

        else
        {
          v94 = 0.0;
        }

        v257 = v257 + v258 * 0.5;
      }

      v258 = v94;
    }

    else
    {
      v92 = v257;
      if (!v91)
      {
        v92 = v40 - rect2 + v257;
      }

      v257 = v92;
    }
  }

  [a1 _currentScreenScale];
  *(a1 + 504) = UIRectRoundToScale(v15, v257, a8, v258, v96);
  *(a1 + 512) = v97;
  *(a1 + 520) = v98;
  *(a1 + 528) = v99;
  v100 = a3 | rect;
  if (((a3 | rect) & 1) == 0 && ![a1 _drawsDebugGlyphPathBoundsClipping])
  {
    v109 = 0;
    goto LABEL_167;
  }

  v237 = v15;
  v101 = [a1 _stringDrawingOptions];
  v102 = MEMORY[0x1E695F058];
  v104 = *MEMORY[0x1E695F058];
  v103 = *(MEMORY[0x1E695F058] + 8);
  rect_24a = *(MEMORY[0x1E695F058] + 24);
  rect2a = *(MEMORY[0x1E695F058] + 16);
  if (rect)
  {
    if (a3)
    {
      goto LABEL_133;
    }

LABEL_128:
    [v19 setWantsMultilineDeviceMetrics:1];
    if (v250)
    {
      v105 = v258;
      if (v258 <= 0.0)
      {
LABEL_152:
        [v19 multilineDeviceMetricsRect];
        v18 = v124;
        v117 = v125;
        v118 = v126;
        v119 = v127;
        v109 = 1;
        goto LABEL_153;
      }

      v106 = v101 | 8;
      v107 = a1;
      v108 = v250;
    }

    else
    {
      if (*(a1 + 440) == 1)
      {
        [v19 setMinimumScaleFactor:0.0];
      }

      if (!v238)
      {
        [(UILabel *)a1 _drawWithString:v21 rect:v101 | 8 options:rect_16 attributes:v19 context:v237, v257, a8, v258];
        goto LABEL_152;
      }

      v106 = v101 | 8;
      v107 = a1;
      v108 = v21;
    }

    [(UILabel *)v107 _drawWithAttributedString:v108 rect:v106 options:v19 context:v237, v257, a8, v258];
    goto LABEL_152;
  }

  if ([a1 _drawsDebugGlyphPathBoundsClipping] && (a3 & 1) == 0)
  {
    goto LABEL_128;
  }

  if (!a3)
  {
    v109 = 0;
    v119 = rect_24a;
    v118 = rect2a;
    v117 = v103;
    v18 = v104;
    goto LABEL_153;
  }

LABEL_133:
  v110 = v101 & 0xFFFFFFFFFFFFFFFELL;
  if (v250)
  {
    v111 = v110 | 8;
    v112 = v250;
  }

  else
  {
    if (*(a1 + 440) == 1)
    {
      [v19 setMinimumScaleFactor:0.0];
    }

    if (!v238)
    {
      [v21 boundingRectWithSize:v110 | 8 options:rect_16 attributes:v19 context:{a8, v258}];
      goto LABEL_145;
    }

    v111 = v110 | 8;
    v112 = v21;
  }

  [v112 boundingRectWithSize:v111 options:v19 context:{a8, v258}];
LABEL_145:
  v18 = v113;
  v117 = v114;
  v118 = v115;
  v119 = v116;
  v109 = 0;
LABEL_153:
  v268.origin.x = v18;
  v268.origin.y = v117;
  v268.size.width = v118;
  v268.size.height = v119;
  v292.origin.x = v104;
  v292.origin.y = v103;
  v292.size.height = rect_24a;
  v292.size.width = rect2a;
  if (!CGRectEqualToRect(v268, v292))
  {
    v117 = *(a1 + 448) - v117 - v119;
  }

  v269.origin.x = v18;
  v269.origin.y = v117;
  v269.size.width = v118;
  v269.size.height = v119;
  v293.origin.x = v104;
  v293.origin.y = v103;
  v293.size.height = rect_24a;
  v293.size.width = rect2a;
  if (CGRectEqualToRect(v269, v293) || ![a1 _drawsDebugGlyphPathBoundsClipping])
  {
    goto LABEL_166;
  }

  [a1 bounds];
  if (CGRectGetHeight(v270) == 0.0 || ([a1 bounds], CGRectGetWidth(v271) == 0.0) || !-[UIView _isInVisibleHierarchy](a1) || (objc_msgSend(a1, "isHiddenOrHasHiddenAncestor") & 1) != 0)
  {
    v128 = 0;
    goto LABEL_162;
  }

  v236 = v17;
  v217 = *(a1 + 64);
  [a1 convertRect:v18 toView:{v117, v118, v119}];
  r2_16 = v141;
  r2_24 = v140;
  v230 = v143;
  v232 = v142;
  v263 = 1;
  *&v259 = 0;
  v144 = a1;
  r2 = 0;
  v145 = 0;
  x = v104;
  v147 = v103;
  recta = rect2a;
  rect1a = rect_24a;
  v148 = v144;
  r2_8 = v144;
  do
  {
    v149 = [v148 _viewControllerForAncestor];
    if ([v149 _viewControllerIgnoresClippedGlyphPathFrame])
    {

      v145 = 0;
      goto LABEL_205;
    }

    if (v263 == 1)
    {
      v150 = *(v102 + 16);
      buf[0].origin = *v102;
      buf[0].size = v150;
      if ((v144[747] & 0x10) != 0 && ([v148 clipsToBounds] & 1) == 0)
      {
        v151 = [v144 layer];
        if ([v151 _glyphPathBoundsExceedsLayers:buf drawableGlyphPathBounds:&v259 edgesClipped:{v18, v117, v118, v119}])
        {
          v152 = v144;

          v272.origin.x = x;
          v272.origin.y = v147;
          v272.size.width = recta;
          v272.size.height = rect1a;
          v294.origin.x = v104;
          v294.origin.y = v103;
          v294.size.height = rect_24a;
          v294.size.width = rect2a;
          if (CGRectEqualToRect(v272, v294))
          {
            v147 = buf[0].origin.y;
            recta = buf[0].size.width;
            r2 = 1;
            rect1a = buf[0].size.height;
            x = buf[0].origin.x;
          }

          else
          {
            v295.origin.x = x;
            v295.origin.y = v147;
            v295.size.width = recta;
            v295.size.height = rect1a;
            v273 = CGRectIntersection(buf[0], v295);
            x = v273.origin.x;
            v147 = v273.origin.y;
            recta = v273.size.width;
            rect1a = v273.size.height;
            r2 = 1;
          }
        }

        else
        {
          v152 = v145;
        }

        v145 = v152;
        v144 = r2_8;
      }

      if (v263 == 1 && [v148 clipsToBounds] && objc_msgSend(v148, "_clipsGlyphPathFrame:shouldContinueSuperviewTraversal:", &v263, r2_24, r2_16, v232, v230))
      {
        v154 = v148;

        [v154 bounds];
        [v144 convertRect:v154 fromView:?];
        r2a = v156;
        v212 = v158;
        v214 = v157;
        v208 = v159;
        v296.origin.x = v104;
        v296.origin.y = v103;
        v296.size.height = rect_24a;
        v296.size.width = rect2a;
        v160 = CGRectEqualToRect(buf[0], v296);
        v161 = v18;
        v162 = v117;
        width = v118;
        height = v119;
        if (!v160)
        {
          v161 = buf[0].origin.x;
          v162 = buf[0].origin.y;
          height = buf[0].size.height;
          width = buf[0].size.width;
        }

        v274.origin.x = r2a;
        v274.size.width = v212;
        v274.origin.y = v214;
        v274.size.height = v208;
        v275 = CGRectIntersection(v274, *&v161);
        v207 = v275.origin.y;
        v209 = v275.origin.x;
        v211 = v275.size.height;
        v213 = v275.size.width;
        v275.origin.x = x;
        v275.origin.y = v147;
        v275.size.width = recta;
        v275.size.height = rect1a;
        v297.origin.x = v104;
        v297.origin.y = v103;
        v297.size.height = rect_24a;
        v297.size.width = rect2a;
        v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
        if (!CGRectEqualToRect(v275, v297))
        {
          v276.origin.y = v207;
          v276.origin.x = v209;
          v276.size.height = v211;
          v276.size.width = v213;
          v298.origin.x = x;
          v298.origin.y = v147;
          v298.size.width = recta;
          v298.size.height = rect1a;
          v277 = CGRectIntersection(v276, v298);
          v207 = v277.origin.y;
          v209 = v277.origin.x;
          v211 = v277.size.height;
          v213 = v277.size.width;
        }

        [v154 bounds];
        v166 = v165;
        v168 = v167;
        rect1d = v169;
        rectc = v170;
        v171 = [v154 window];
        [v154 convertRect:v171 toView:{v166, v168, rect1d, rectc}];
        v173 = v172;
        v206 = v174;
        rect1b = v175;
        v177 = v176;

        v278.origin.y = r2_16;
        v278.origin.x = r2_24;
        v278.size.height = v230;
        v278.size.width = v232;
        MinX = CGRectGetMinX(v278);
        v279.origin.x = v173;
        v279.origin.y = v206;
        v279.size.width = rect1b;
        r2b = v177;
        v279.size.height = v177;
        if (MinX < CGRectGetMinX(v279))
        {
          *&v259 = v259 | 2;
        }

        v280.origin.y = r2_16;
        v280.origin.x = r2_24;
        v280.size.height = v230;
        v280.size.width = v232;
        MaxX = CGRectGetMaxX(v280);
        v281.origin.x = v173;
        v281.origin.y = v206;
        v281.size.width = rect1b;
        v281.size.height = r2b;
        v155 = v217;
        if (MaxX > CGRectGetMaxX(v281))
        {
          *&v259 = v259 | 8;
        }

        v282.origin.y = r2_16;
        v282.origin.x = r2_24;
        v282.size.height = v230;
        v282.size.width = v232;
        MaxY = CGRectGetMaxY(v282);
        v283.origin.x = v173;
        v283.origin.y = v206;
        v283.size.width = rect1b;
        v283.size.height = r2b;
        if (MaxY > CGRectGetMaxY(v283))
        {
          *&v259 = v259 | 4;
        }

        v284.origin.y = r2_16;
        v284.origin.x = r2_24;
        v284.size.height = v230;
        v284.size.width = v232;
        MinY = CGRectGetMinY(v284);
        v285.origin.x = v173;
        v285.origin.y = v206;
        v285.size.width = rect1b;
        v285.size.height = r2b;
        if (MinY < CGRectGetMinY(v285))
        {
          *&v259 = v259 | 1;
        }

        v145 = v154;
        x = v209;
        v147 = v207;
        goto LABEL_219;
      }
    }

    v153 = [v148 superview];

    v148 = v153;
  }

  while (v153);
  if ((r2 & 1) == 0)
  {
LABEL_205:
    v128 = 0;
    v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
    v155 = v217;
    goto LABEL_220;
  }

  v154 = v145;
  v211 = rect1a;
  v213 = recta;
  v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
  v155 = v217;
LABEL_219:
  v181 = [_UITextClippingDebugInfo alloc];
  v128 = [(_UITextClippingDebugInfo *)v181 initWithClippingView:v154 visibleBounds:0 ignoresResult:v259 edgesClipped:x, v147, v213, v211];
LABEL_220:

  if (!v128)
  {
    v17 = v236;
    goto LABEL_162;
  }

  if (![(_UITextClippingDebugInfo *)v128 hasClippedEdges])
  {
    v17 = v236;
    if ([(_UITextClippingDebugInfo *)v128 ignoresResult]&& [(_UITextClippingDebugInfo *)v128 hasClippedEdges])
    {
      goto LABEL_165;
    }

LABEL_162:
    v129 = [a1 _glyphPathBoundsIntersectionData];
    v130 = v129;
    if (v129)
    {
      [v129 setClippingView:0];
      [v130 setGlyphPathBounds:v104, v103, rect2a, rect_24a];
      [v130 setAvailableBounds:v104, v103, rect2a, rect_24a];
    }

    goto LABEL_164;
  }

  v182 = getenv("__ViewHierarchyCaptureInProgress");
  v17 = v236;
  if (!v182 || *v182 != 49)
  {
    v183 = +[UIColor systemGreenColor];
    [v183 setStroke];

    v184 = [UIBezierPath bezierPathWithRect:v18, v117, v118, v119];
    [v184 strokeWithBlendMode:0 alpha:1.0];
    v185 = +[UIColor systemRedColor];
    [v185 setFill];

    r2_16a = v104;
    r2_24a = v103;
    v231 = rect_24a;
    v233 = rect2a;
    if ([(_UITextClippingDebugInfo *)v128 topEdgeClipped])
    {
      [(_UITextClippingDebugInfo *)v128 visibleBounds];
      r2_24a = v186;
      v231 = 2.5;
      r2_16a = v187;
      v233 = v188;
      v189 = [UIBezierPath bezierPathWithRect:v187];
      [v189 fillWithBlendMode:0 alpha:0.6];
    }

    rect1c = v104;
    rectb = v103;
    v190 = rect2a;
    r2c = rect_24a;
    if ([(_UITextClippingDebugInfo *)v128 bottomEdgeClipped])
    {
      [(_UITextClippingDebugInfo *)v128 visibleBounds];
      v191 = v286.origin.x;
      v218 = v286.origin.x;
      r2d = v286.origin.y;
      v215 = v286.size.width;
      v192 = v286.size.height;
      rect1c = CGRectGetMinX(v286);
      v287.origin.x = v191;
      v287.origin.y = r2d;
      v287.size.width = v215;
      v287.size.height = v192;
      rectb = CGRectGetMaxY(v287) + -2.5;
      v288.origin.x = v218;
      v288.origin.y = r2d;
      v288.size.width = v215;
      v288.size.height = v192;
      v190 = CGRectGetWidth(v288);
      r2c = 2.5;
      v193 = [UIBezierPath bezierPathWithRect:rect1c, rectb, v190, 2.5];
      [v193 fillWithBlendMode:0 alpha:0.6];
    }

    if ([(_UITextClippingDebugInfo *)v128 leftEdgeClipped]|| [(_UITextClippingDebugInfo *)v128 rightEdgeClipped])
    {
      [(_UITextClippingDebugInfo *)v128 visibleBounds];
      v219 = v194;
      [(_UITextClippingDebugInfo *)v128 visibleBounds];
      v216 = v195;
      v289.origin.x = r2_16a;
      v289.origin.y = r2_24a;
      v289.size.height = v231;
      v289.size.width = v233;
      v299.origin.x = v104;
      v210 = v103;
      v299.origin.y = v103;
      v299.size.width = rect2a;
      v299.size.height = rect_24a;
      v196 = CGRectEqualToRect(v289, v299);
      v197 = v219 + 2.5;
      if (v196)
      {
        v197 = v219;
      }

      v234 = v197;
      if (v196)
      {
        v198 = v216;
      }

      else
      {
        v198 = v216 + -2.5;
      }

      v290.origin.x = rect1c;
      v290.origin.y = rectb;
      v290.size.width = v190;
      v290.size.height = r2c;
      v300.origin.x = v104;
      v300.origin.y = v210;
      v300.size.width = rect2a;
      v300.size.height = rect_24a;
      if (!CGRectEqualToRect(v290, v300))
      {
        v198 = v198 + -2.5;
      }

      if ([(_UITextClippingDebugInfo *)v128 leftEdgeClipped])
      {
        [(_UITextClippingDebugInfo *)v128 visibleBounds];
        v199 = [UIBezierPath bezierPathWithRect:?];
        [v199 fillWithBlendMode:0 alpha:0.6];
      }

      if ([(_UITextClippingDebugInfo *)v128 rightEdgeClipped])
      {
        [(_UITextClippingDebugInfo *)v128 visibleBounds];
        v200 = [UIBezierPath bezierPathWithRect:CGRectGetMaxX(v291) + -2.5, v234, 2.5, v198];
        [v200 fillWithBlendMode:0 alpha:0.6];
      }
    }

    v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
    v144 = r2_8;
  }

  if (([v144 _glyphPathBoundsClippingDetected] & 1) == 0)
  {
    v201 = [(_UITextClippingDebugInfo *)v128 clippingView];
    [(UILabel *)v144 _markGlyphPathBoundsClippingDetected:v201 glyphPathBounds:v18 availableBounds:v117, v118, v119, v237, v257, v251, v258];

    v130 = _UIClippingFaultLog();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
    {
      v202 = [v144 text];
      v203 = [(_UITextClippingDebugInfo *)v128 clippingView];
      LODWORD(buf[0].origin.x) = 138543874;
      *(&buf[0].origin.x + 4) = v144;
      WORD2(buf[0].origin.y) = 2114;
      *(&buf[0].origin.y + 6) = v202;
      HIWORD(buf[0].size.width) = 2114;
      *&buf[0].size.height = v203;
      v204 = v203;
      _os_log_fault_impl(&dword_188A29000, v130, OS_LOG_TYPE_FAULT, "[Internal] Text Clipping Detected: %{public}@ '%{public}@'. Clipping View: %{public}@", buf, 0x20u);
    }

LABEL_164:
  }

LABEL_165:

  v88 = rect_12;
  v89 = v250;
LABEL_166:
  v15 = v237;
  if ((v100 & 1) == 0)
  {
LABEL_167:
    if ((v109 & 1) == 0 && (v88 & 1) == 0)
    {
      if ((*(a1 + v22[926] + 5) & 8) != 0)
      {
        v131 = [a1 _delegate];
        [v131 _glyphPathsBoundingRectWillChange:a1];
      }

      v132 = [a1 _stringDrawingOptions];
      if (v89)
      {
        v133 = v258;
        if (v258 > 0.0)
        {
          v134 = a1;
          v135 = v89;
          goto LABEL_178;
        }
      }

      else
      {
        if (*(a1 + 440) == 1)
        {
          [v19 setMinimumScaleFactor:0.0];
        }

        if (v238)
        {
          v134 = a1;
          v135 = v249;
LABEL_178:
          [(UILabel *)v134 _drawWithAttributedString:v135 rect:v132 options:v19 context:v15, v257, v251, v258];
        }

        else
        {
          [(UILabel *)a1 _drawWithString:v249 rect:v132 options:rect_16 attributes:v19 context:v15, v257, v251, v258];
        }
      }

      v136 = [v19 layout];
      v137 = *(a1 + 600);
      *(a1 + 600) = v136;

      if ((*(a1 + v22[926] + 5) & 4) != 0)
      {
        v138 = [a1 _delegate];
        [v138 _glyphPathsBoundingRectDidChange:a1];
      }
    }

    v18 = v15;
  }

LABEL_184:
  return v18;
}

- (void)_markGlyphPathBoundsClippingDetected:(double)a3 glyphPathBounds:(double)a4 availableBounds:(double)a5
{
  v19 = a2;
  v20 = [a1 _glyphPathBoundsIntersectionData];
  if (!v20)
  {
    v20 = objc_alloc_init(_UIGlyphPathBoundsIntersectionViewData);
  }

  value = v20;
  [(_UIGlyphPathBoundsIntersectionViewData *)v20 setGlyphPathBounds:a3, a4, a5, a6];
  [(_UIGlyphPathBoundsIntersectionViewData *)value setClippingView:v19];

  [(_UIGlyphPathBoundsIntersectionViewData *)value setAvailableBounds:a7, a8, a9, a10];
  objc_setAssociatedObject(a1, &_UIGylphPathBoundsClippingAssociationKey, value, 1);
}

- (BOOL)_glyphPathBoundsClippingDetected
{
  v2 = [(UILabel *)self _glyphPathBoundsIntersectionData];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 clippingView];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_clipsGlyphPathFrame:(CGRect)a3 shouldContinueSuperviewTraversal:(BOOL *)a4
{
  v7.receiver = self;
  v7.super_class = UILabel;
  v5 = [(UIView *)&v7 _clipsGlyphPathFrame:a3.origin.x shouldContinueSuperviewTraversal:a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    *a4 = 0;
  }

  return v5;
}

- (CGRect)_drawTextInRect:(CGRect)a3
{
  [(UILabel *)self _drawTextInRect:0 forceMultiline:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_drawTextInRect:(CGRect)a3 forceMultiline:(BOOL)a4
{
  v4 = [(UILabel *)self _drawTextInRect:0 baselineCalculationOnly:0 returningDeviceMetricsOfFirstLine:a4 returningMultilineDeviceMetrics:a3.origin.x forceMultiline:a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)layerWillDraw:(id)a3
{
  *&self->_textLabelFlags &= ~0x1000000uLL;
  v3.receiver = self;
  v3.super_class = UILabel;
  [(UIView *)&v3 layerWillDraw:a3];
}

- (void)drawRect:(CGRect)a3
{
  [(UIView *)self bounds:a3.origin.x];
  v5 = [(UILabel *)self _sizingRuleAdjustedBoundsForBounds:v4];

  [(UILabel *)self drawTextInRect:v5];
}

- (void)setMarqueeEnabled:(BOOL)a3
{
  if (!a3)
  {
    textLabelFlags = self->_textLabelFlags;
    if ((*&textLabelFlags & 0x200) == 0)
    {
      return;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFFFFDFFLL);
    goto LABEL_7;
  }

  v4 = [(UILabel *)self numberOfLines];
  if ((v4 == 1) != ((*&self->_textLabelFlags & 0x200) == 0))
  {
    return;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFDFFLL | ((v4 == 1) << 9));
  if (v4 != 1)
  {
LABEL_7:
    [(UILabel *)self setMarqueeRunning:0];
    v6 = 0;
    goto LABEL_8;
  }

  [(UILabel *)self setLineBreakMode:2];
  v5 = [(UIView *)self layer];
  [v5 setOpaque:0];

  v6 = 1;
LABEL_8:
  v8.receiver = self;
  v8.super_class = UILabel;
  [(UIView *)&v8 setNeedsDisplay];
  [(UIView *)self _setTracksFocusedAncestors:v6];
}

- (void)_setMarqueeUpdatable:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (id)_siblingMarqueeLabels
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 superview];
  v4 = [v3 subviews];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (~*(v10 + 744) & 0xA00) == 0)
        {
          [v2 addObject:{v10, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v2;
}

- (double)_maximumMarqueeTextWidth
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0.0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [(UILabel *)a1 _siblingMarqueeLabels];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v9 + 1) + 8 * i) textSizeForWidth:{3.40282347e38, v9}];
        if (v7 > v5)
        {
          v5 = v7;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

void __24__UILabel__startMarquee__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) backgroundColor];
  if (v8)
  {
    [v8 set];
    UIRectFillUsingOperation(1, 0.0, 0.0, *(a1 + 40), *(a1 + 48));
  }

  v2 = 0.0;
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 40) - *(a1 + 56);
  }

  [*(a1 + 32) _drawFullMarqueeTextInRect:{v2 - *(a1 + 72), -*(a1 + 64), *(a1 + 96), *(a1 + 128)}];
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 40) - *(a1 + 56);
    [*(a1 + 32) marqueeLoopPadding];
    v5 = v3 - v4 - *(a1 + 56);
  }

  else
  {
    v6 = *(a1 + 56);
    [*(a1 + 32) marqueeLoopPadding];
    v5 = v6 + v7;
  }

  [*(a1 + 32) _drawFullMarqueeTextInRect:{v5 - *(a1 + 72), -*(a1 + 64), *(a1 + 96), *(a1 + 128)}];
}

- (_UILabelMarqueeAnimationDelegate)_marqueeAnimationDelegate
{
  v2 = objc_getAssociatedObject(a1, &__marqueeAnimationDelegateKey);
  if (!v2)
  {
    v2 = [[_UILabelMarqueeAnimationDelegate alloc] initWithLabel:a1];
    objc_setAssociatedObject(a1, &__marqueeAnimationDelegateKey, v2, 1);
  }

  return v2;
}

- (void)_stopMarqueeWithRedisplay:(BOOL)a3
{
  v3 = a3;
  marqueeAnimations = self->_marqueeAnimations;
  self->_marqueeAnimations = 0;

  marqueeMaskAnimations = self->_marqueeMaskAnimations;
  self->_marqueeMaskAnimations = 0;

  v7 = [(UIView *)self viewWithTag:4032914800];
  v8 = v7;
  if (v7)
  {
    [v7 removeFromSuperview];
    if (v3)
    {
      v9.receiver = self;
      v9.super_class = UILabel;
      [(UIView *)&v9 setNeedsDisplay];
    }
  }
}

- (BOOL)marqueeRunning
{
  v2 = [(UIView *)self viewWithTag:4032914800];
  v3 = v2 != 0;

  return v3;
}

- (void)setMarqueeRunning:(BOOL)a3
{
  v4 = 1024;
  if (!a3)
  {
    v4 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFBFFLL | v4);
  if (a3)
  {

    [(UILabel *)self _startMarqueeIfNecessary];
  }

  else if ([(UILabel *)self marqueeRunning])
  {

    [(UILabel *)self _stopMarqueeWithRedisplay:1];
  }
}

- (void)_ancestorWillUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 nextFocusedView];
  v9 = v8 && [(UIView *)self isDescendantOfView:v8]&& [(UIView *)self _tracksFocusedAncestors];
  [(UILabel *)self setMarqueeRunning:v9];
  v10.receiver = self;
  v10.super_class = UILabel;
  [(UIView *)&v10 _ancestorWillUpdateFocusInContext:v7 withAnimationCoordinator:v6];
}

- (void)setDrawsUnderline:(BOOL)a3
{
  v3 = a3;
  v5 = [(UILabel *)self _content];
  v6 = *off_1E70ECAD8;
  v10 = v5;
  v7 = [v5 defaultValueForAttribute:*off_1E70ECAD8];
  if (([v7 integerValue] & 1) != v3)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v9 = [v10 contentByApplyingAttributeToEntireRange:v6 value:v8];
    [(UILabel *)self _setContent:v9];
  }
}

- (BOOL)drawsUnderline
{
  if (self)
  {
    v2 = [(UILabel *)self _content];
    v3 = [v2 defaultValueForAttribute:*off_1E70ECAD8];

    if (v3)
    {
      v4 = [v3 integerValue] & 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_setUsesSimpleTextEffects:(BOOL)a3
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x20000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x20000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFFDFFFFLL | v4);
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)_setTextAlignmentFollowsWritingDirection:(BOOL)a3
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x100000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x100000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFEFFFFFLL | v4);
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)_setTextAlignmentMirrored:(BOOL)a3
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x200000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x200000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFDFFFFFLL | v4);
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)_setOverallWritingDirectionFollowsLayoutDirection:(BOOL)a3
{
  if (((((*&self->_textLabelFlags & 0x2000000) == 0) ^ a3) & 1) == 0)
  {
    v3 = 0x2000000;
    if (!a3)
    {
      v3 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFDFFFFFFLL | v3);
    [(UILabel *)self _invalidateLabelDisplay];
  }
}

- (id)_tightBoundingBoxLayoutGuide
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = [(UILabel *)self __tightBoundingBoxLayoutGuide];
  if (!v3)
  {
    v3 = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:v3];
    [(UILayoutGuide *)v3 _setLockedToOwningView:1];
    [(UILayoutGuide *)v3 _setAllowsNegativeDimensions:1];
    [(UILayoutGuide *)v3 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide"];
    v4 = [(UIView *)self _frameLayoutItem];
    v5 = [(UILayoutGuide *)v3 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:0.0];

    v8 = [(UILayoutGuide *)v3 leftAnchor];
    v9 = [v4 leftAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:0.0];

    v11 = [v4 bottomAnchor];
    v12 = [(UILayoutGuide *)v3 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];

    v14 = [v4 rightAnchor];
    v15 = [(UILayoutGuide *)v3 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];

    [v7 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-top"];
    [v10 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-left"];
    [v13 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-bottom"];
    [v16 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-right"];
    v19[0] = v7;
    v19[1] = v10;
    v19[2] = v13;
    v19[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    [(UILayoutGuide *)v3 _setSystemConstraints:v17];
    [(UILabel *)self _updateTightBoundingBoxLayoutGuideConstraintsIfNecessary];
    [MEMORY[0x1E69977A0] activateConstraints:v17];
    if (self)
    {
      objc_setAssociatedObject(self, &kTightBoudingBoxLayoutGuideKey, v3, 1);
    }
  }

  return v3;
}

- (void)_applicationWillResignActiveNotification:(id)a3
{
  v3 = [(UIView *)self layer];
  [v3 setSpeed:0.0];
  [v3 setTimeOffset:CACurrentMediaTime()];
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  v4 = [(UIView *)self layer];
  LODWORD(v3) = 1.0;
  [v4 setSpeed:v3];
  [v4 setTimeOffset:0.0];
}

- (void)_setLightSourceDescriptor:(id)a3
{
  v5 = a3;
  if (self->_lightSourceDescriptor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_lightSourceDescriptor, a3);
    [(UILabel *)self _removeLightSourceView];
    v5 = v7;
    if (v7)
    {
      [(UILabel *)self _addLightSourceView];
      v5 = v7;
    }

    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      v6 = [(UIView *)self layer];
      [v6 reactToLightChanged];

      v5 = v7;
    }
  }
}

- (void)_addLightSourceView
{
  v35[8] = *MEMORY[0x1E69E9840];
  if (self->_lightSourceDescriptor)
  {
    v3 = objc_opt_new();
    lightContainerView = self->_lightContainerView;
    self->_lightContainerView = v3;

    [(UIView *)self->_lightContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self addSubview:self->_lightContainerView];
    lightSourceDescriptor = self->_lightSourceDescriptor;
    [(UIView *)self frame];
    v6 = [(_UIIntelligenceLightSourceDescriptor *)lightSourceDescriptor _createLightSourceViewWithFrame:?];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_lightContainerView addSubview:v6];
    v24 = MEMORY[0x1E69977A0];
    v33 = [v6 topAnchor];
    v32 = [(UIView *)self->_lightContainerView topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v35[0] = v31;
    v30 = [v6 leadingAnchor];
    v29 = [(UIView *)self->_lightContainerView leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v35[1] = v28;
    v27 = [v6 trailingAnchor];
    v26 = [(UIView *)self->_lightContainerView trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v35[2] = v25;
    v34 = v6;
    v23 = [v6 bottomAnchor];
    v22 = [(UIView *)self->_lightContainerView bottomAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v35[3] = v21;
    v20 = [(UIView *)self->_lightContainerView topAnchor];
    v19 = [(UIView *)self topAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v35[4] = v18;
    v17 = [(UIView *)self->_lightContainerView leadingAnchor];
    v16 = [(UIView *)self leadingAnchor];
    v7 = [v17 constraintEqualToAnchor:v16];
    v35[5] = v7;
    v8 = [(UIView *)self->_lightContainerView trailingAnchor];
    v9 = [(UIView *)self trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v35[6] = v10;
    v11 = [(UIView *)self->_lightContainerView bottomAnchor];
    v12 = [(UIView *)self bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v35[7] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:8];
    [v24 activateConstraints:v14];

    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      v15 = [(UIView *)self layer];
      [v15 setLightContainerView:self->_lightContainerView];
    }
  }
}

- (void)_removeLightSourceView
{
  [(UIView *)self->_lightContainerView removeFromSuperview];
  lightContainerView = self->_lightContainerView;
  self->_lightContainerView = 0;

  if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
  {
    v4 = [(UIView *)self layer];
    [v4 setLightContainerView:0];
  }
}

- (void)_addViewsForLabelViewTextAttachments:(id)a3 previousLabelViewTextAttachments:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToArray:v7] & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v30 + 1) + 8 * i) view];
          [v13 removeFromSuperview];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v6;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * j);
          v20 = [v19 view];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __124__UILabel_UILabel_Internal_IntelligenceLightSupport___addViewsForLabelViewTextAttachments_previousLabelViewTextAttachments___block_invoke;
          v24[3] = &unk_1E712A038;
          v25 = v20;
          v21 = v20;
          [v19 setLayoutInRect:v24];
          [(UIView *)self addSubview:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }

    v7 = v22;
    v6 = v23;
  }
}

- (void)_setDrawingLightReactiveLayer:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)_setDrawingLightInertLayer:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (double)_firstLineCapFrameOriginY
{
  [(UIView *)self frame];
  v4 = v3;
  [(UILabel *)self _capOffsetFromBoundsTop];
  return v5 + v4;
}

- (void)_setFirstLineCapFrameOriginY:(double)a3
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self _capOffsetFromBoundsTop];

  [(UILabel *)self setFrame:v6, a3 - v11, v8, v10];
}

- (void)_setFirstLineBaselineFrameOriginY:(double)a3
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self _firstLineBaselineOffsetFromBoundsTop];

  [(UILabel *)self setFrame:v6, a3 - v11, v8, v10];
}

- (double)_lastLineBaselineFrameOriginY
{
  [(UIView *)self frame];
  v4 = v3;
  [(UILabel *)self _lastLineBaseline];
  return v5 + v4;
}

- (void)_setLastLineBaselineFrameOriginY:(double)a3
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self _lastLineBaseline];

  [(UILabel *)self setFrame:v6, a3 - v11, v8, v10];
}

- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)a3
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x1000000000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x1000000000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFEFFFFFFFFFLL | v4);
    [(UILabel *)self _adjustFontForTypesettingLanguage];
  }
}

- (void)_setVerticalTextEnabled:(BOOL)a3
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x8000000000) == 0) ^ a3) & 1) == 0)
  {
    v6 = 0;
    v7 = 0x8000000000;
    if (!a3)
    {
      v7 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFF7FFFFFFFFFLL | v7);
    if (a3)
    {
      v6 = [[_UILabelVerticalTextLayoutManager alloc] initWithConfiguration:self->_configuration];
    }

    v8 = v6;
    objc_setAssociatedObject(self, &kTextLayoutManagerKey, v6, 1);
    [(UILabel *)self _invalidateLabelDisplay];
    [(UILabel *)self _invalidateLabelSize];
  }
}

- (void)_setWantsUnderlineForAccessibilityButtonShapesEnabled:(BOOL)a3
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x40000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x40000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFFBFFFFLL | v4);
    [(UILabel *)self _accessibilityButtonShapesParametersDidChange];
  }
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = UILabel;
  [(UIView *)&v9 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  v7 = [(UIView *)self _screen];
  v8 = [v7 _userInterfaceIdiom];

  if (v8 != a3 && (a3 == 3 || v8 == 3))
  {
    [(UILabel *)self _accessibilityButtonShapesParametersDidChange];
  }
}

- (void)_resetUsesExplicitPreferredMaxLayoutWidth
{
  v3 = [(UILabel *)self _needsDoubleUpdateConstraintsPass];
  *&self->_textLabelFlags &= ~0x2000uLL;
  self->_preferredMaxLayoutWidth = 0.0;
  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:v3];

  [(UILabel *)self invalidateIntrinsicContentSize];
}

- (CGSize)textSizeForWidth:(double)a3
{
  [(UILabel *)self textRectForBounds:0 limitedToNumberOfLines:0.0, 0.0, a3, 3.40282347e38];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  [(UILabel *)self textRectForBounds:0 limitedToNumberOfLines:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)rawSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end