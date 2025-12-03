@interface UILabel
+ (CGRect)_insetRect:(CGRect)rect forAttributedString:(id)string withDefaultFont:(id)font inView:(id)view;
+ (Class)layerClass;
+ (double)_insetsForAttributedString:(void *)string withDefaultFont:(void *)font inView:;
+ (double)_insetsForString:(void *)string withFont:(void *)font inView:;
+ (id)_defaultAttributes;
+ (id)_defaultColor;
+ (id)_tooBigChars;
+ (id)defaultFont;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_clipsGlyphPathFrame:(CGRect)frame shouldContinueSuperviewTraversal:(BOOL *)traversal;
- (BOOL)_glyphPathBoundsClippingDetected;
- (BOOL)allowsDefaultTighteningForTruncation;
- (BOOL)drawsUnderline;
- (BOOL)marqueeRunning;
- (CGFloat)minimumScaleFactor;
- (CGRect)_drawTextInRect:(CGRect)rect;
- (CGRect)_drawTextInRect:(CGRect)rect baselineCalculationOnly:(BOOL)only;
- (CGRect)_drawTextInRect:(CGRect)rect forceMultiline:(BOOL)multiline;
- (CGRect)_drawingRectForBounds:(CGRect)bounds;
- (CGRect)_textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines includingShadow:(BOOL)shadow;
- (CGRect)_tightBoundingRect;
- (CGRect)_tightBoundingRectOfFirstLine;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (CGSize)rawSize;
- (CGSize)shadowOffset;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)textSize;
- (CGSize)textSizeForWidth:(double)width;
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
- (UILabel)initWithCoder:(id)coder;
- (UILabel)initWithFrame:(CGRect)frame;
- (_UILabelContent)_content;
- (_UILabelLegacyScaledMetrics)_scaledMetricsForText:(double)text inRect:(double)rect;
- (_UILabelMarqueeAnimationDelegate)_marqueeAnimationDelegate;
- (_UIScrollPocketInteraction)scrollPocketInteraction;
- (double)_actualScaleFactor;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute nextToNeighbor:(id)neighbor edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)multiplier;
- (double)_baselineOffsetFromBottom;
- (double)_boundingRectWithAttributedString:(uint64_t)string size:(void *)size options:(double)options context:(double)context;
- (double)_boundingRectWithString:(uint64_t)string size:(void *)size options:(void *)options attributes:(double)attributes context:(double)context;
- (double)_capOffsetFromBoundsTop;
- (double)_drawTextInRect:(int)rect baselineCalculationOnly:(unsigned __int8)only returningDeviceMetricsOfFirstLine:(int)line returningMultilineDeviceMetrics:(double)metrics forceMultiline:(double)multiline;
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
- (double)_sizingRuleAdjustedBoundsForBounds:(void *)bounds;
- (double)shadowBlur;
- (float)_hyphenationFactor;
- (id)__tightBoundingBoxLayoutGuide;
- (id)_contentAdjustingFontForAccessibilityTraits:(char)traits forced:(_BYTE *)forced didAdjustFont:;
- (id)_contentAdjustingFontForTypesettingLanguage:(_BYTE *)language didAdjustFont:;
- (id)_contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:(_BYTE *)ratio didAdjustFont:;
- (id)_defaultAttributes;
- (id)_image;
- (id)_materializedAttributedString;
- (id)_nilBackgroundColor;
- (id)_shadow;
- (id)_siblingMarqueeLabels;
- (id)_stringDrawingContext;
- (id)_synthesizedAttributedTextForContent:(uint64_t)content;
- (id)_tightBoundingBoxLayoutGuide;
- (id)_verticalTextLayoutManager;
- (id)currentTextColor;
- (id)largeContentTitle;
- (int64_t)_stringDrawingOptions;
- (int64_t)_supportedTreatmentForTreatment:(int64_t)treatment;
- (uint64_t)_updateScaledMetricsForRect:(double)rect;
- (unint64_t)defaultAccessibilityTraits;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_addLightSourceView;
- (void)_addViewsForLabelViewTextAttachments:(id)attachments previousLabelViewTextAttachments:(id)textAttachments;
- (void)_adjustFontForAccessibilityTraits:(_BYTE *)traits;
- (void)_adjustFontForTypesettingLanguage;
- (void)_ancestorWillUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_applicationWillResignActiveNotification:(id)notification;
- (void)_commonInit;
- (void)_contentDidChange:(int64_t)change fromContent:(id)content;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_drawWithAttributedString:(uint64_t)string rect:(void *)rect options:(double)options context:(double)context;
- (void)_drawWithString:(uint64_t)string rect:(void *)rect options:(void *)options attributes:(double)attributes context:(double)context;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_invalidateAsNeededForNewSize:(double *)(a1 oldSize:;
- (void)_invalidateBaselineConstraints;
- (void)_invalidateLabelDisplay;
- (void)_invalidateLabelMetrics;
- (void)_invalidateLabelSize;
- (void)_invalidateMaterialColor;
- (void)_markGlyphPathBoundsClippingDetected:(double)detected glyphPathBounds:(double)bounds availableBounds:(double)availableBounds;
- (void)_noteInstanceCustomizationForAttributedString:(void *)string attributes:;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds;
- (void)_removeLightSourceView;
- (void)_resetUsesExplicitPreferredMaxLayoutWidth;
- (void)_resolveMaterialColor:(uint64_t)color;
- (void)_runMarqueeIfEnabledAndAncestorIsFocused;
- (void)_setAllowsDefaultTighteningForTruncation:(void *)truncation;
- (void)_setAssociatedScalingLabel:(id)label;
- (void)_setContent:(id)content;
- (void)_setContent:(uint64_t)content adjustingFontForAccessibilityTraits:(int)traits adjustingFontForTypesettingLanguage:(int)language adjustingFontForTypesettingLanguageAwareLineHeightRatio:(char)ratio checkingForDifferences:;
- (void)_setCuiCatalog:(id)catalog;
- (void)_setCuiStyleEffectConfiguration:(id)configuration;
- (void)_setDefaultAttributes:(id)attributes;
- (void)_setDelegate:(id)delegate;
- (void)_setDrawingLightInertLayer:(BOOL)layer;
- (void)_setDrawingLightReactiveLayer:(BOOL)layer;
- (void)_setDrawsDebugBaselines:(BOOL)baselines;
- (void)_setDrawsDebugGlyphPathBoundsClipping:(BOOL)clipping;
- (void)_setExtremeSizingEnabled:(BOOL)enabled;
- (void)_setFallbackTextColor:(id)color forUserInterfaceStyle:(int64_t)style;
- (void)_setFirstLineBaselineFrameOriginY:(double)y;
- (void)_setFirstLineCapFrameOriginY:(double)y;
- (void)_setFont:(id)font;
- (void)_setHyphenationFactor:(float)factor;
- (void)_setHyphenationFactorIgnoredIfURLsDetected:(void *)result;
- (void)_setLastLineBaselineFrameOriginY:(double)y;
- (void)_setLightSourceDescriptor:(id)descriptor;
- (void)_setLineBreakMode:(int64_t)mode;
- (void)_setLineBreakStrategy:(unint64_t)strategy;
- (void)_setMarqueeUpdatable:(BOOL)updatable;
- (void)_setMaterialTextColorFollowsTintColor:(void *)result;
- (void)_setMinimumFontSize:(double)size;
- (void)_setMultilineLabelRequiresCarefulMeasurement:(BOOL)measurement;
- (void)_setOverallWritingDirectionFollowsLayoutDirection:(BOOL)direction;
- (void)_setShadow:(void *)shadow;
- (void)_setSupportMultiLineShrinkToFit:(uint64_t)fit;
- (void)_setText:(id)text;
- (void)_setTextAlignment:(int64_t)alignment;
- (void)_setTextAlignmentFollowsWritingDirection:(BOOL)direction;
- (void)_setTextAlignmentMirrored:(BOOL)mirrored;
- (void)_setTextColor:(id)color;
- (void)_setTextColorFollowsTintColor:(BOOL)color;
- (void)_setTextEncapsulation:(id)encapsulation;
- (void)_setUseShortcutIntrinsicContentSize:(BOOL)size;
- (void)_setUsesSimpleTextEffects:(BOOL)effects;
- (void)_setVerticalTextEnabled:(BOOL)enabled;
- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)language;
- (void)_setWantsUnderlineForAccessibilityButtonShapesEnabled:(BOOL)enabled;
- (void)_startMarqueeIfNecessary;
- (void)_stopMarqueeWithRedisplay:(BOOL)redisplay;
- (void)_synthesizedTextAttributes;
- (void)_updateProperties;
- (void)_updateScrollPocketInteraction;
- (void)_updateSystemConstraints;
- (void)_updateTextColorWithFallbackColorIfNeeded;
- (void)_updateTightBoundingBoxLayoutGuideConstraintsIfNecessary;
- (void)_updateVariableLengthStringIfNeeded;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)drawTextInRect:(CGRect)rect;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)layerWillDraw:(id)draw;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth;
- (void)setAdjustsLetterSpacingToFitWidth:(BOOL)adjustsLetterSpacingToFitWidth;
- (void)setAttributedText:(NSAttributedString *)attributedText;
- (void)setBaselineAdjustment:(UIBaselineAdjustment)baselineAdjustment;
- (void)setBounds:(CGRect)bounds;
- (void)setDrawsUnderline:(BOOL)underline;
- (void)setEnabled:(BOOL)enabled;
- (void)setEnablesMarqueeWhenAncestorFocused:(BOOL)enablesMarqueeWhenAncestorFocused;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedTextColor:(UIColor *)highlightedTextColor;
- (void)setLineSpacing:(int64_t)spacing;
- (void)setMarqueeEnabled:(BOOL)enabled;
- (void)setMarqueeRunning:(BOOL)running;
- (void)setMinimumScaleFactor:(CGFloat)minimumScaleFactor;
- (void)setNeedsDisplay;
- (void)setNumberOfLines:(NSInteger)numberOfLines;
- (void)setPreferredMaxLayoutWidth:(CGFloat)preferredMaxLayoutWidth;
- (void)setPreferredVibrancy:(UILabelVibrancy)preferredVibrancy;
- (void)setScrollPocketInteraction:(id)interaction;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShadowBlur:(double)blur;
- (void)setShadowColor:(UIColor *)shadowColor;
- (void)setShadowOffset:(CGSize)shadowOffset;
- (void)setShowsExpansionTextWhenTruncated:(BOOL)showsExpansionTextWhenTruncated;
- (void)setSizingRule:(int64_t)rule;
- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled;
- (void)set_fontForShortcutBaselineCalculation:(id)calculation;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
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
  _label = [v4 _label];
  _attributes = [_label _attributes];
  v7 = _attributes;
  if (v3 != self)
  {
    v8 = [_attributes copy];

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
      layer = [(UIView *)self layer];
      [layer invalidateContentInsets];
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
      __tightBoundingBoxLayoutGuide = [(UILabel *)self __tightBoundingBoxLayoutGuide];

      if (__tightBoundingBoxLayoutGuide)
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
  if (self)
  {
    *(self + 744) &= ~0x800uLL;
    v2 = *(self + 600);
    *(self + 600) = 0;

    v3 = *(self + 448);
    if (*(self + 456) != 0.0)
    {
      [self bounds];
      *(self + 536) = v4 - *(self + 456);
    }

    v5 = *(self + 448);
    *(self + 456) = 0;
    if (v5 != 0.0)
    {
      *(self + 544) = v5;
    }

    *(self + 448) = 0;
    *(self + 496) = -1;
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 16);
    *(self + 464) = *MEMORY[0x1E695F058];
    *(self + 480) = v7;
    *(self + 504) = v6;
    *(self + 520) = v7;
    if (v3 != 0.0)
    {
      if ([self _shouldNotifyGeometryObserversForBaselineChanges])
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
        [(UIView *)self _notifyGeometryObserversWithChangeInfo:?];
      }

      if ((*(self + 104) & 8) != 0)
      {
        superview = [self superview];
        v9 = superview;
        if (superview)
        {
          if ((*(superview + 95) & 0x40) == 0)
          {
            superview2 = [self superview];
            [superview2 setNeedsLayout];
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
    selfCopy = self;
    v5 = +[_UILabelVisualStyle inferredVisualStyle];
    [(UILabel *)selfCopy _setVisualStyle:v5];

    v6 = selfCopy;
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
  if (self)
  {
    _content = [self _content];
    v2 = [(UILabel *)self _contentAdjustingFontForTypesettingLanguage:_content didAdjustFont:0];
    [(UILabel *)self _setContent:v2 adjustingFontForAccessibilityTraits:0 adjustingFontForTypesettingLanguage:0 adjustingFontForTypesettingLanguageAwareLineHeightRatio:0 checkingForDifferences:1];
  }
}

- (NSString)text
{
  _content = [(UILabel *)self _content];
  string = [_content string];

  return string;
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
    _content = [(UILabel *)self _content];
    v4 = [(UILabel *)self _synthesizedAttributedTextForContent:_content];
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
  if (self)
  {
    selfCopy = self;
    v3 = self[71];
    if (!v3)
    {
      if (![self isEnabled] || (objc_msgSend(selfCopy, "isHighlighted") & 1) != 0 || (objc_msgSend(selfCopy, "_textColorFollowsTintColor") & 1) != 0 || (*(selfCopy + 747) & 0x80) != 0)
      {
        v5 = 0;
      }

      else
      {
        _textEncapsulation = [selfCopy _textEncapsulation];
        v5 = _textEncapsulation == 0;
      }

      _content = [selfCopy _content];
      ShouldReverseNaturalAlignment = _UILabelShouldReverseNaturalAlignment(_content, [selfCopy semanticContentAttribute]);

      if (!v5 || ShouldReverseNaturalAlignment)
      {
        v10 = MEMORY[0x1E695DF90];
        _defaultAttributes = [selfCopy _defaultAttributes];
        v9 = [v10 dictionaryWithDictionary:_defaultAttributes];

        if (!v5)
        {
          if (([selfCopy isEnabled] & 1) == 0)
          {
            v12 = objc_alloc_init(off_1E70ECB90);
            [v12 setShadowColor:0];
            [v9 setObject:v12 forKey:*off_1E70EC9B0];
          }

          textColor = [selfCopy textColor];
          currentTextColor = [selfCopy currentTextColor];
          v15 = [textColor isEqual:currentTextColor];

          if ((v15 & 1) == 0)
          {
            currentTextColor2 = [selfCopy currentTextColor];
            [v9 setObject:currentTextColor2 forKey:*off_1E70EC920];
          }

          _textEncapsulation2 = [selfCopy _textEncapsulation];

          if (_textEncapsulation2)
          {
            _textEncapsulation3 = [selfCopy _textEncapsulation];
            v19 = [_textEncapsulation3 copy];
            [v9 setObject:v19 forKey:*MEMORY[0x1E69655D0]];
          }
        }

        if (ShouldReverseNaturalAlignment)
        {
          _UILabelReverseNaturalAlignment(v9);
          objc_claimAutoreleasedReturnValue();
        }

        v20 = [v9 copy];
        v21 = selfCopy[71];
        selfCopy[71] = v20;
      }

      else
      {
        _defaultAttributes2 = [selfCopy _defaultAttributes];
        v9 = selfCopy[71];
        selfCopy[71] = _defaultAttributes2;
      }

      v3 = selfCopy[71];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)_defaultAttributes
{
  _content = [(UILabel *)self _content];
  defaultAttributes = [_content defaultAttributes];

  return defaultAttributes;
}

- (float)_hyphenationFactor
{
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];
  [paragraphStyle hyphenationFactor];
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
  _shadow = [(UILabel *)self _shadow];
  shadowColor = [_shadow shadowColor];

  return shadowColor;
}

+ (id)defaultFont
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [_UITextAttributeDefaults _defaultsForUserInterfaceIdiom:5];
  }

  else
  {
    +[_UITextAttributeDefaults _unspecifiedDefaults];
  }
  v4 = ;
  _label = [v4 _label];
  _font = [_label _font];

  return _font;
}

+ (id)_defaultColor
{
  v2 = +[_UITextAttributeDefaults _unspecifiedDefaults];
  _label = [v2 _label];
  _textColor = [_label _textColor];

  return _textColor;
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
  if (self)
  {
    _content = [self _content];
    v2 = [_content widthVariantContentForView:self];
    [self _setContent:v2];
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
  if (!self)
  {
    return 0.0;
  }

  v2 = MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  [self _preferredMaxLayoutWidth];
  if (v4 != 0.0 && *(self + 440) != 1)
  {
    v3 = v4;
  }

  v6 = *v2;
  v5 = v2[1];
  text = [self text];
  v8 = [text length];

  if (v8)
  {
    [self _intrinsicSizeWithinSize:{v3, v2[3]}];
    v10 = v9;
    v12 = v11;
    if (*(self + 440) == 1 && (*(self + 744) & 0x1000A) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    font = [self font];
    v14 = font;
    if (!font)
    {
      v14 = +[UILabel defaultFont];
    }

    [@"X" _legacy_sizeWithFont:v14 forWidth:objc_msgSend(self lineBreakMode:{"lineBreakMode"), 3.40282347e38}];
    v10 = v15;
    v12 = v16;
    if (!font)
    {
    }
  }

  [self _drawTextInRect:1 baselineCalculationOnly:{v6, v5, v10, v12}];
LABEL_15:
  *(self + 504) = v6;
  *(self + 512) = v5;
  *(self + 520) = v10;
  *(self + 528) = v12;
  return v6;
}

- (id)_shadow
{
  if (self)
  {
    _content = [self _content];
    shadow = [_content shadow];
  }

  else
  {
    shadow = 0;
  }

  return shadow;
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
    _defaultAttributes = [objc_opt_class() _defaultAttributes];
    v6 = [(_UILabelContent *)v4 initWithDefaultAttributes:_defaultAttributes];
    v7 = self->_content;
    self->_content = v6;

    content = self->_content;
  }

  return content;
}

- (double)_letterformAwareAllAlignmentInsets
{
  if (!self)
  {
    return 0.0;
  }

  v1 = self[93];
  v2 = 0.0;
  if ((v1 & 0x6000000000) != 0)
  {
    if ((v1 & 0x10000000) != 0)
    {
      layer = [self layer];
      v3 = layer;
      if (layer && ([layer letterformAwareInsetsAreValid] & 1) == 0)
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

  _useShortcutIntrinsicContentSize = [(UILabel *)self _useShortcutIntrinsicContentSize];
  if (_useShortcutIntrinsicContentSize)
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

    _multilineLabelRequiresCarefulMeasurement = [(UILabel *)self _multilineLabelRequiresCarefulMeasurement];
    v6 = [(UILabel *)self numberOfLines]== 1;
    if (_multilineLabelRequiresCarefulMeasurement)
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

    if (_useShortcutIntrinsicContentSize)
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
  font = [(UILabel *)self font];
  [font lineHeight];
  UICeilToViewScale(self);
  v9 = v8;

LABEL_22:
  _letterformAwareAllAlignmentInsets = [(UILabel *)self _letterformAwareAllAlignmentInsets];
  v16 = v9 + _letterformAwareAllAlignmentInsets + 0.0 + v15 + 0.0;
LABEL_23:
  v17 = v4;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)_updateTightBoundingBoxLayoutGuideConstraintsIfNecessary
{
  if (self)
  {
    __tightBoundingBoxLayoutGuide = [(UILabel *)self __tightBoundingBoxLayoutGuide];
    if (__tightBoundingBoxLayoutGuide)
    {
      v28 = __tightBoundingBoxLayoutGuide;
      [self bounds];
      v4 = v3;
      v6 = v5;
      [self intrinsicContentSize];
      v8 = v7;
      v10 = v9;
      v30.origin.x = [(UILabel *)self _drawTextInRect:1 baselineCalculationOnly:0 returningDeviceMetricsOfFirstLine:0 returningMultilineDeviceMetrics:v4 forceMultiline:v6, v7, v9];
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
      _systemConstraints = [v28 _systemConstraints];
      v18 = [_systemConstraints objectAtIndexedSubscript:0];
      [v18 setConstant:MinY - v26];

      v19 = [_systemConstraints objectAtIndexedSubscript:1];
      [v19 setConstant:MinX - v24];

      v20 = [_systemConstraints objectAtIndexedSubscript:2];
      [v20 setConstant:MaxY - v22];

      v21 = [_systemConstraints objectAtIndexedSubscript:3];
      [v21 setConstant:v16];

      __tightBoundingBoxLayoutGuide = v28;
    }
  }
}

- (id)__tightBoundingBoxLayoutGuide
{
  if (self)
  {
    self = objc_getAssociatedObject(self, &kTightBoudingBoxLayoutGuideKey);
    v1 = vars8;
  }

  return self;
}

- (_UIScrollPocketInteraction)scrollPocketInteraction
{
  selfCopy = self;
  _typedStorage = [(UIView *)selfCopy _typedStorage];
  v4 = sub_188A845C4();

  return v4;
}

- (void)_updateScrollPocketInteraction
{
  selfCopy = self;
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
  _content = [(UILabel *)self _content];
  v4 = 0.0;
  if ([_content isNil])
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    string = [_content string];
    v9 = +[UILabel _tooBigChars];
    v10 = [string rangeOfCharacterFromSet:v9];

    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([_content isAttributed])
      {
        attributedString = [_content attributedString];
        defaultAttributes = [_content defaultAttributes];
        v13 = [defaultAttributes objectForKeyedSubscript:*off_1E70EC918];
        v7 = [UILabel _insetsForAttributedString:attributedString withDefaultFont:v13 inView:self];
        v6 = v14;
        v5 = v15;
        v4 = v16;
      }

      else
      {
        attributedString = [_content string];
        defaultAttributes = [(UILabel *)self font];
        v7 = [UILabel _insetsForString:v17 withFont:defaultAttributes inView:self];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter _removeObserver:self->_accessibilityButtonShapesChangedToken];

    self->_accessibilityButtonShapesChangedToken = 0;
  }

  _visualStyle = [(UILabel *)self _visualStyle];
  [_visualStyle actionsForDeallocationOfLabel:self];

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
  _content = [(UILabel *)self _content];
  v3 = [_content defaultValueForAttribute:*off_1E70EC920];
  v4 = v3;
  if (v3)
  {
    _defaultColor = v3;
  }

  else
  {
    _defaultColor = [objc_opt_class() _defaultColor];
  }

  v6 = _defaultColor;

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
  _content = [(UILabel *)self _content];
  font = [_content font];

  return font;
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
  if (self)
  {
    _focusSystem = [self _focusSystem];
    focusedItem = [_focusSystem focusedItem];
    v7 = _UIFocusEnvironmentContainingView(focusedItem);

    v4 = [self isDescendantOfView:v7];
    v5 = v7;
    if (v4)
    {
      if (v7)
      {
        _tracksFocusedAncestors = [self _tracksFocusedAncestors];
      }

      else
      {
        _tracksFocusedAncestors = 0;
      }

      [self setMarqueeRunning:_tracksFocusedAncestors];
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
      _overrideTintColor = [(UIView *)self _overrideTintColor];
      v6 = _overrideTintColor;
      if (_overrideTintColor)
      {
        _defaultColor = _overrideTintColor;
      }

      else
      {
        tintColor = [(UIView *)self tintColor];
        v8 = tintColor;
        if (tintColor)
        {
          textColor = tintColor;
        }

        else
        {
          textColor = [(UILabel *)self textColor];
        }

        _defaultColor = textColor;
      }

      if (!_defaultColor)
      {
LABEL_19:
        _defaultColor = [objc_opt_class() _defaultColor];
      }
    }

    else
    {
      if (![(UILabel *)self isEnabled])
      {
        _disabledFontColor = [(UILabel *)self _disabledFontColor];
LABEL_14:
        _defaultColor = _disabledFontColor;
        if (_disabledFontColor)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if (![(UILabel *)self isHighlighted]|| (*(&self->_textLabelFlags + 4) & 8) != 0 || ([(UILabel *)self highlightedTextColor], (_defaultColor = objc_claimAutoreleasedReturnValue()) == 0))
      {
        _disabledFontColor = [(UILabel *)self textColor];
        goto LABEL_14;
      }
    }
  }

  else
  {
    _defaultColor = 0;
  }

LABEL_20:

  return _defaultColor;
}

- (void)_invalidateMaterialColor
{
  if (self)
  {
    if ((*(self + 89) & 8) == 0)
    {
      [(UILabel *)self _resolveMaterialColor:?];
    }
  }
}

- (void)setScrollPocketInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  _typedStorage = [(UIView *)selfCopy _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937088);
  v8 = swift_allocObject();
  *(v8 + 16) = interaction;
  v9 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v10 = interactionCopy;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(&_typedStorage->super.isa + v9);
  *(&_typedStorage->super.isa + v9) = 0x8000000000000000;
  sub_188A40430(v8, &_s26ScrollPocketInteractionKeyVN, isUniquelyReferenced_nonNull_native);
  *(&_typedStorage->super.isa + v9) = v12;
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
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];
  lineBreakStrategy = [paragraphStyle lineBreakStrategy];

  return lineBreakStrategy;
}

- (id)_materializedAttributedString
{
  selfCopy = self;
  if (self)
  {
    _content = [self _content];
    attributedStringContent = [_content attributedStringContent];
    v4 = dyld_program_sdk_at_least();
    [(UILabel *)selfCopy _setContent:attributedStringContent adjustingFontForAccessibilityTraits:1 adjustingFontForTypesettingLanguage:v4 adjustingFontForTypesettingLanguageAwareLineHeightRatio:v4 checkingForDifferences:0];

    _content2 = [selfCopy _content];
    selfCopy = [_content2 attributedString];
  }

  return selfCopy;
}

- (NSLineBreakMode)lineBreakMode
{
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];
  lineBreakMode = [paragraphStyle lineBreakMode];

  return lineBreakMode;
}

- (void)_invalidateBaselineConstraints
{
  if ((*(&self->super._viewFlags + 7) & 2) != 0)
  {
    _layoutEngine = [(UIView *)self _layoutEngine];
    if (_layoutEngine)
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
    needsDisplay = 0;
  }

  else
  {
    self->_textLabelFlags = (*&textLabelFlags | 0x1000000);
    needsDisplay = [(UIView *)self needsDisplay];
  }

  v15 = v4 >= 2.22044605e-16 && !needsDisplay;
  if (!v15 || (v17.origin.x = v6, v17.origin.y = v8, v17.size.width = v10, v17.size.height = v12, !CGRectEqualToRect(p_intrinsicSizeBaselineInfo->referenceBounds, v17)))
  {
    [(UILabel *)self _drawTextInRect:1 baselineCalculationOnly:v6, v8, v10, v12];
  }

  return p_intrinsicSizeBaselineInfo->firstBaseline;
}

- (void)_accessibilityButtonShapesParametersDidChange
{
  _defaultAttributes = [(UILabel *)self _defaultAttributes];
  v6 = [_defaultAttributes mutableCopy];

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
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];
  alignment = [paragraphStyle alignment];

  return alignment;
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
    needsDisplay = 0;
  }

  else
  {
    self->_textLabelFlags = (*&textLabelFlags | 0x1000000);
    needsDisplay = [(UIView *)self needsDisplay];
  }

  v15 = v4 < 2.22044605e-16 && !needsDisplay;
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
  _content = [(UILabel *)self _content];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  font = [(UILabel *)self font];
  [font capHeight];
  v6 = v5;

  v14[3] = v6;
  if ([_content isAttributed])
  {
    attributedString = [_content attributedString];
    v8 = [_content length];
    v9 = *off_1E70EC918;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__UILabel_UILabel_ModernUISupport___capOffsetFromBoundsTop__block_invoke;
    v13[3] = &unk_1E712A060;
    v13[4] = v14;
    [attributedString enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0x100000, v13}];
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
  _content = [(UILabel *)self _content];
  v4 = _content;
  p_size = &self->_size;
  if (self->_size.width == 0.0 && self->_size.height == 0.0 && [_content length] >= 1)
  {
    if ([v4 isAttributed])
    {
      _synthesizedAttributedText = [(UILabel *)self _synthesizedAttributedText];
      _stringDrawingOptions = [(UILabel *)self _stringDrawingOptions];
      _stringDrawingContext = [(UILabel *)self _stringDrawingContext];
      [(UILabel *)self _boundingRectWithAttributedString:_synthesizedAttributedText size:_stringDrawingOptions options:_stringDrawingContext context:3.40282347e38, 3.40282347e38];
      p_size->width = v9;
      self->_size.height = v10;
    }

    else
    {
      _synthesizedAttributedText = [v4 string];
      _stringDrawingOptions2 = [(UILabel *)self _stringDrawingOptions];
      _stringDrawingContext = [(UILabel *)self _defaultAttributes];
      _stringDrawingContext2 = [(UILabel *)self _stringDrawingContext];
      [(UILabel *)self _boundingRectWithString:_synthesizedAttributedText size:_stringDrawingOptions2 options:_stringDrawingContext attributes:_stringDrawingContext2 context:3.40282347e38, 3.40282347e38];
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
  traitCollection = [(UIView *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  if (_backlightLuminance != 1 && (~*&self->_textLabelFlags & 0xE00) == 0)
  {
    text = [(UILabel *)self text];
    _isNaturallyRTL = [text _isNaturallyRTL];

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
    traitCollection2 = [(UIView *)self traitCollection];
    [UITraitCollection setCurrentTraitCollection:traitCollection2];

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
    v167 = _isNaturallyRTL;
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
    layer = [(UIView *)v35 layer];
    [layer setContentsRect:{0.0, 0.0, v23 / v28, 1.0}];

    selfCopy = self;
    [(UILabel *)selfCopy textSizeForWidth:3.40282347e38];
    v40 = v39;
    [(UILabel *)selfCopy marqueeLoopPadding];
    v42 = (v40 + v41) / 30.0;
    _maximumMarqueeTextWidth = [(UILabel *)selfCopy _maximumMarqueeTextWidth];
    [(UILabel *)selfCopy marqueeLoopPadding];
    v45 = v44;

    v146 = (_maximumMarqueeTextWidth + v45) / 30.0 - v42 + 0.0;
    v46 = v42 + 1.5 + v146;
    marqueeRepeatCount = [(UILabel *)selfCopy marqueeRepeatCount];
    if (marqueeRepeatCount)
    {
      v48 = marqueeRepeatCount;
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
      layer2 = [(UIView *)v35 layer];
      v54 = [layer2 animationForKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

      [v54 beginTime];
      v52 = v55;
      _marqueeAnimationDelegate = [(UILabel *)selfCopy _marqueeAnimationDelegate];
      [_marqueeAnimationDelegate setSuppressEnded:1];

      layer3 = [(UIView *)v35 layer];
      [layer3 removeAnimationForKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

      [v54 duration];
      if (v58 >= v46)
      {
        v46 = v58;
      }

      layer4 = [(UIView *)v35 layer];
      mask = [layer4 mask];

      v61 = [mask animationForKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];

      [v61 beginTime];
      v51 = v62;
      [mask removeAnimationForKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
      v63 = [mask animationForKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
      [v61 beginTime];
      v144 = v64;
      [mask removeAnimationForKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
    }

    else
    {
      v144 = v49 + 0.0;
      v51 = v49 + 0.0;
      v52 = v49 + 0.0;
    }

    v65 = v164;
    v66 = objc_opt_new();
    marqueeAnimations = selfCopy->_marqueeAnimations;
    selfCopy->_marqueeAnimations = v66;

    v68 = objc_opt_new();
    marqueeMaskAnimations = selfCopy->_marqueeMaskAnimations;
    selfCopy->_marqueeMaskAnimations = v68;

    layer5 = [(UIView *)v35 layer];
    mask2 = [layer5 mask];

    layer6 = [(UIView *)v35 layer];
    mask3 = [layer6 mask];

    p_isa = &selfCopy->super.super.super.isa;
    if (!mask3)
    {
      v74 = [UIImage kitImageNamed:@"UILabelMarqueeMask.png"];
      [v74 size];
      v75 = v51;
      v77 = 1.0 / v76;
      layer7 = [MEMORY[0x1E6979398] layer];

      [layer7 setContents:{objc_msgSend(v74, "CGImage")}];
      v79 = 0.5 - v77 * 0.5;
      v80 = v77;
      v51 = v75;
      v65 = v164;
      [layer7 setContentsCenter:{v79, 0.0, v80, 1.0}];
      [v74 scale];
      [layer7 setContentsScale:?];
      [layer7 setFrame:{-v164, 0.0, v162, v155}];
      layer8 = [(UIView *)v35 layer];
      [layer8 setMask:layer7];

      mask2 = layer7;
    }

    v151 = v33;
    v158 = v35;
    if (_isNaturallyRTL)
    {
      v82 = 1.0 - v36;
    }

    else
    {
      [(UILabel *)selfCopy marqueeLoopPadding];
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

    v154 = mask2;
    if (_isNaturallyRTL)
    {
      reverseObjectEnumerator = [v89 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      v140 = v65;
      v89 = allObjects;
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

    _marqueeAnimationDelegate2 = [(UILabel *)selfCopy _marqueeAnimationDelegate];
    [v156 setDelegate:_marqueeAnimationDelegate2];

    [(NSMutableDictionary *)selfCopy->_marqueeAnimations setObject:v156 forKeyedSubscript:@"UILabelMarqueeLayerContentOriginXAnimationKey"];
    layer9 = [(UIView *)v35 layer];
    [layer9 addAnimation:v156 forKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

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
    v140 = [v112 numberWithDouble:v114 * 0.5 - v140];
    v116 = MEMORY[0x1E696AD98];
    [v113 floatValue];
    v164 = [v116 numberWithDouble:v117 * 0.5 - v164];
    v172[0] = v140;
    v172[1] = v140;
    v172[2] = v164;
    v172[3] = v164;
    v172[4] = v140;
    v172[5] = v140;
    v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:6];
    [v110 setValues:v119];

    keyTimes = [v108 keyTimes];
    [v110 setKeyTimes:keyTimes];

    v121 = v154;
    [v154 addAnimation:v108 forKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
    [p_isa[84] setObject:v108 forKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
    [v154 addAnimation:v110 forKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
    [p_isa[84] setObject:v110 forKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
    textLabelFlags = self->_textLabelFlags;
    if ((*&textLabelFlags & 0x10000000) != 0)
    {
      layer10 = [p_isa layer];
      [layer10 _clearContents];

      textLabelFlags = self->_textLabelFlags;
    }

    if ((*&textLabelFlags & 0x1000) == 0)
    {
      v138 = v164;
      v141 = v140;
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
              layer11 = [v126 layer];
              mask4 = [layer11 mask];

              layer12 = [v126 layer];
              v130 = [layer12 animationForKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];
              v131 = [v130 copy];

              v132 = [mask4 animationForKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
              v133 = [v132 copy];

              v134 = [mask4 animationForKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];
              v135 = [v134 copy];

              [v131 setBeginTime:v50];
              [v133 setBeginTime:v50];
              [v135 setBeginTime:v50];
              layer13 = [v126 layer];
              [layer13 addAnimation:v131 forKey:@"UILabelMarqueeLayerContentOriginXAnimationKey"];

              [mask4 addAnimation:v133 forKey:@"UILabelMarqueeMaskLayerWidthAnimationKey"];
              [mask4 addAnimation:v135 forKey:@"UILabelMarqueeMaskLayerPositionXAnimationKey"];

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
      v164 = v138;
      v140 = v141;
    }
  }
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  collectorCopy = collector;
  selfCopy = self;
  _sSo7UILabelC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0I16ElementCollectorCtF_0(collectorCopy);
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
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetLargeContentTitle = [_largeContentStoredProperties didSetLargeContentTitle];

  if (didSetLargeContentTitle)
  {
    v8.receiver = self;
    v8.super_class = UILabel;
    largeContentTitle = [(UIView *)&v8 largeContentTitle];
  }

  else
  {
    attributedText = [(UILabel *)self attributedText];
    largeContentTitle = [attributedText string];
  }

  return largeContentTitle;
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide
{
  if ((edge - 5) > 1)
  {
    v8.receiver = self;
    v8.super_class = UILabel;
    [(UIView *)&v8 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute inContainer:container isGuide:guide];
  }

  else
  {
    _UIViewBaselineToEdgeSpacing([(UILabel *)self _fontInfoForBaselineSpacing], edge);

    UICeilToViewScale(self);
  }

  return result;
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute nextToNeighbor:(id)neighbor edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)multiplier
{
  v10 = *&a6;
  v13 = *&edge;
  if ((edge - 5) > 1)
  {
    goto LABEL_12;
  }

  v15 = attribute - 11;
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
    [(UIView *)&v19 _autolayoutSpacingAtEdge:v13 forAttribute:attribute nextToNeighbor:neighbor edge:v10 attribute:a7 multiplier:multiplier];
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

  _UIViewBaselineSpacing(self, neighbor, v13);
  return result;
}

- (void)_setCuiCatalog:(id)catalog
{
  catalogCopy = catalog;
  if (self->_cuiCatalog != catalogCopy)
  {
    v7 = catalogCopy;
    objc_storeStrong(&self->_cuiCatalog, catalog);
    layout = self->_layout;
    self->_layout = 0;

    v8.receiver = self;
    v8.super_class = UILabel;
    [(UIView *)&v8 setNeedsDisplay];
    catalogCopy = v7;
  }
}

- (void)_setCuiStyleEffectConfiguration:(id)configuration
{
  if (self->_cuiStyleEffectConfiguration != configuration)
  {
    v4 = [configuration copy];
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

    appearanceName = [v4 appearanceName];

    if (!appearanceName)
    {
      traitCollection = [(UIView *)self traitCollection];
      _styleEffectAppearanceName = [(UITraitCollection *)traitCollection _styleEffectAppearanceName];
      [v4 setAppearanceName:_styleEffectAppearanceName];
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
  _needsDoubleUpdateConstraintsPass = [(UILabel *)self _needsDoubleUpdateConstraintsPass];
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

  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:_needsDoubleUpdateConstraintsPass];
}

- (void)_setDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = self->_content;
  _content = [(UILabel *)self _content];
  v6 = [_content contentWithDefaultAttributes:attributesCopy];
  [(UILabel *)self _setContent:v6];

  if (v4 != self->_content)
  {
    [(UILabel *)self _noteInstanceCustomizationForAttributedString:attributesCopy attributes:?];
    if ([(_UILabelContent *)self->_content isAttribute:*off_1E70EC920 uniformlyEqualToValue:0])
    {
      textColor = [(UILabel *)self textColor];
      lastSetColor = self->_lastSetColor;
      self->_lastSetColor = textColor;
      v9 = textColor;

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

- (void)_noteInstanceCustomizationForAttributedString:(void *)string attributes:
{
  v8 = a2;
  stringCopy = string;
  if (self)
  {
    _visualStyle = [self _visualStyle];
    v7 = [_visualStyle shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:v8 attributes:stringCopy];

    if (v7)
    {
      self[93] |= 0x80000uLL;
    }
  }
}

- (void)_resolveMaterialColor:(uint64_t)color
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (color)
  {
    if ([color _enableMonochromaticTreatment])
    {
      _monochromaticContentEffect = [color _monochromaticContentEffect];
      v5 = _monochromaticContentEffect;
      if (!_monochromaticContentEffect)
      {
        [color mt_setContentEffects:0];
        goto LABEL_16;
      }

      v12[0] = _monochromaticContentEffect;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [color mt_setContentEffects:v6];
LABEL_14:

LABEL_16:
      goto LABEL_17;
    }

    if (!v3)
    {
      [color mt_setContentEffects:0];
      goto LABEL_17;
    }

    v5 = v3;
    if (([color isEnabled] & 1) == 0)
    {
      _disabledFontColor = [color _disabledFontColor];

      v5 = _disabledFontColor;
    }

    if (*(color + 113))
    {
      traitCollection = [color traitCollection];
      v6 = [v5 _resolvedMaterialWithTraitCollection:traitCollection];

      if ([v6 isVibrant])
      {
        string = [*(color + 552) string];
        _containsEmoji = [string _containsEmoji];

        if (!_containsEmoji)
        {
          goto LABEL_13;
        }
      }
    }

    v6 = 0;
LABEL_13:
    contentEffects = [v6 contentEffects];
    [color mt_setContentEffects:contentEffects];

    goto LABEL_14;
  }

LABEL_17:
}

- (void)_setContent:(id)content
{
  contentCopy = content;
  v4 = dyld_program_sdk_at_least();
  [(UILabel *)self _setContent:contentCopy adjustingFontForAccessibilityTraits:1 adjustingFontForTypesettingLanguage:v4 adjustingFontForTypesettingLanguageAwareLineHeightRatio:v4 checkingForDifferences:1];
}

- (void)_setContent:(uint64_t)content adjustingFontForAccessibilityTraits:(int)traits adjustingFontForTypesettingLanguage:(int)language adjustingFontForTypesettingLanguageAwareLineHeightRatio:(char)ratio checkingForDifferences:
{
  v12 = a2;
  if (!self)
  {
    goto LABEL_48;
  }

  if ((ratio & 1) == 0)
  {
    objc_storeStrong((self + 552), a2);
    goto LABEL_48;
  }

  v13 = *(self + 552);
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

  v16 = [*(self + 552) differenceVersusContent:v12 checkFontDifference:content];
  v17 = v16;
  if ((*(self + 747) & 0x20) == 0 || (v16 & 0x200) != 0)
  {
    v26 = 0;
    if (content)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = v12;
    _defaultAttributes = [self _defaultAttributes];
    v12 = [v18 contentWithDefaultAttributes:_defaultAttributes];

    v26 = v12 != v18;
    if (content)
    {
      goto LABEL_19;
    }
  }

  if ((traits & 1) == 0 && !language)
  {
    v20 = 1;
    goto LABEL_20;
  }

LABEL_19:
  v20 = (v17 & 0x10000) == 0;
LABEL_20:
  _wantsContentAwareTypesettingLanguage = 0;
  v28 = 0;
  v27 = 0;
  if (traits)
  {
    _wantsContentAwareTypesettingLanguage = [self _wantsContentAwareTypesettingLanguage];
  }

  v22 = v12;
  v12 = v22;
  if (!v20 && (content & 1) != 0)
  {
    v12 = [(UILabel *)self _contentAdjustingFontForAccessibilityTraits:v22 forced:0 didAdjustFont:&v28 + 1];
  }

  if (!((v20 || (language & 1) == 0) | _wantsContentAwareTypesettingLanguage & 1))
  {
    v23 = [(UILabel *)self _contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:v12 didAdjustFont:&v28];

    v12 = v23;
  }

  if (!traits)
  {
    if (!_wantsContentAwareTypesettingLanguage)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (_wantsContentAwareTypesettingLanguage & 1 | (((v28 | v20) & 1) == 0))
  {
LABEL_30:
    v24 = [(UILabel *)self _contentAdjustingFontForTypesettingLanguage:v12 didAdjustFont:&v27];

    v12 = v24;
  }

LABEL_31:
  if (v26 || ((v28 & 0x100) != 0 || (v28 & 1) != 0 || v27 == 1) && v22 != v12)
  {
    v17 = [*(self + 552) differenceVersusContent:v12];
  }

  if (v17)
  {
    v25 = *(self + 552);
    objc_storeStrong((self + 552), v12);
    if ((v17 & 0xFFFFFFFFFFFFFFF7) != 0)
    {
      [self _contentDidChange:v17 fromContent:v25];
      if ([self _allowsMonochromaticTreatment] && objc_msgSend(self, "_enableMonochromaticTreatment"))
      {
        [self _setMonochromaticTreatment:{objc_msgSend(self, "_monochromaticTreatment")}];
      }

      [(UILabel *)self _invalidateLabelDisplay];
      if ((v17 & 0x4000) != 0)
      {
        [self _invalidateLabelSize];
        if ((*(self + 95) & 2) != 0 && !*(self + 768))
        {
          [self _invalidateBaselineConstraints];
        }
      }
    }
  }

LABEL_48:
}

- (id)_contentAdjustingFontForAccessibilityTraits:(char)traits forced:(_BYTE *)forced didAdjustFont:
{
  v7 = a2;
  v8 = v7;
  if ((self[748] & 2) == 0 && (traits & 1) == 0)
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
  traitCollection = [self traitCollection];
  font = [v28[5] font];
  v13 = [font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  if (v13)
  {
    if ([v10 isAttributed])
    {
      attributedString = [v10 attributedString];
      v15 = [v28[5] length];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__UILabel__contentAdjustingFontForAccessibilityTraits_forced_didAdjustFont___block_invoke;
      v23[3] = &unk_1E7129F78;
      v24 = traitCollection;
      v25 = &v27;
      forcedCopy = forced;
      [attributedString enumerateAttributesInRange:0 options:v15 usingBlock:{0x100000, v23}];
    }

    font2 = [v28[5] font];
    v17 = v13;
    v18 = v17;
    if (font2 != v17)
    {
      if (font2)
      {
        v19 = [font2 isEqual:v17];

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

      if (forced)
      {
        *forced = 1;
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

- (id)_contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:(_BYTE *)ratio didAdjustFont:
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__240;
  v26 = __Block_byref_object_dispose__240;
  v5 = a2;
  v27 = v5;
  traitCollection = [self traitCollection];
  [traitCollection _typesettingLanguageAwareLineHeightRatio];
  v8 = v7;

  font = [v23[5] font];
  v10 = [(UIFont *)font _fontAdjustedForTypesettingLanguageAwareLineHeightRatio:v8];

  if (v10)
  {
    if ([v5 isAttributed])
    {
      attributedString = [v5 attributedString];
      v12 = [v23[5] length];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __89__UILabel__contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio_didAdjustFont___block_invoke;
      v21[3] = &unk_1E7129FA0;
      *&v21[5] = v8;
      v21[4] = &v22;
      v21[6] = ratio;
      [attributedString enumerateAttributesInRange:0 options:v12 usingBlock:{0x100000, v21}];
    }

    font2 = [v23[5] font];
    v14 = v10;
    v15 = v14;
    if (font2 == v14)
    {

      goto LABEL_12;
    }

    if (font2)
    {
      v16 = [font2 isEqual:v14];

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

    if (ratio)
    {
      *ratio = 1;
    }
  }

LABEL_12:
  v19 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v19;
}

- (id)_contentAdjustingFontForTypesettingLanguage:(_BYTE *)language didAdjustFont:
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__240;
  v31 = __Block_byref_object_dispose__240;
  v5 = a2;
  v32 = v5;
  string = [v5 string];
  if ([self _wantsContentAwareTypesettingLanguage] && objc_msgSend(string, "length") && (v7 = CTFontCopyTallestTextStyleLanguageForString()) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    traitCollection = [self traitCollection];
    typesettingLanguage = [traitCollection typesettingLanguage];

    v8 = typesettingLanguage;
  }

  font = [v28[5] font];
  v12 = [(UIFont *)font _fontAdjustedForTypesettingLanguage:v8];

  if (v12)
  {
    if ([v5 isAttributed])
    {
      attributedString = [v5 attributedString];
      v14 = [v28[5] length];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __69__UILabel__contentAdjustingFontForTypesettingLanguage_didAdjustFont___block_invoke;
      v23[3] = &unk_1E7129F78;
      v24 = v8;
      v25 = &v27;
      languageCopy = language;
      [attributedString enumerateAttributesInRange:0 options:v14 usingBlock:{0x100000, v23}];
    }

    font2 = [v28[5] font];
    v16 = v12;
    v17 = v16;
    if (font2 == v16)
    {

      goto LABEL_19;
    }

    if (font2)
    {
      v18 = [font2 isEqual:v16];

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

    if (language)
    {
      *language = 1;
    }
  }

LABEL_19:
  v21 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v21;
}

- (void)_contentDidChange:(int64_t)change fromContent:(id)content
{
  contentCopy = content;
  _content = [(UILabel *)self _content];
  labelViewTextAttachments = [_content labelViewTextAttachments];
  labelViewTextAttachments2 = [contentCopy labelViewTextAttachments];

  [(UILabel *)self _addViewsForLabelViewTextAttachments:labelViewTextAttachments previousLabelViewTextAttachments:labelViewTextAttachments2];
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

- (id)_synthesizedAttributedTextForContent:(uint64_t)content
{
  v3 = a2;
  v4 = v3;
  if (content)
  {
    attributedString = [v3 attributedString];
    if (attributedString)
    {
      defaultAttributes = [v4 defaultAttributes];
      _synthesizedTextAttributes = [(UILabel *)content _synthesizedTextAttributes];
      v69 = attributedString;
      v70 = defaultAttributes;
      v71 = _synthesizedTextAttributes;
      if (defaultAttributes == _synthesizedTextAttributes)
      {
        v19 = _synthesizedTextAttributes;
        v21 = -[NSAttributedString _ui_synthesizeAttributedSubstringFromRange:usingDefaultAttributes:](attributedString, 0, [v4 length], _synthesizedTextAttributes);
      }

      else
      {
        defaultAttributes2 = [v4 defaultAttributes];
        v9 = [attributedString mutableCopy];
        v10 = *off_1E70EC920;
        v11 = [defaultAttributes2 objectForKey:*off_1E70EC920];
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
        if (([content isEnabled] & 1) == 0)
        {
          v15 = *off_1E70EC9B0;
          v16 = [defaultAttributes2 objectForKey:*off_1E70EC9B0];
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

      if ([content _overallWritingDirectionFollowsLayoutDirection])
      {
        v22 = v21;
        if ([v22 length])
        {
          v23 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [content semanticContentAttribute]) != UIUserInterfaceLayoutDirectionLeftToRight;
          v100 = 0;
          v101 = &v100;
          v102 = 0x2020000000;
          v103 = 0;
          v96 = 0;
          v97 = &v96;
          v98 = 0x2020000000;
          v99 = 0;
          _content = [content _content];
          paragraphStyle = [_content paragraphStyle];
          v26 = [v22 length];
          v27 = *off_1E70EC988;
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = __60__UILabel__attributedStringIsolatingStringWritingDirection___block_invoke;
          v92[3] = &unk_1E7129EC0;
          v67 = paragraphStyle;
          v93 = v67;
          v94 = &v96;
          v95 = &v100;
          [v22 enumerateAttribute:v27 inRange:0 options:v26 usingBlock:{0, v92}];
          v28 = v101[3];
          if (!v28)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel__attributedStringIsolatingStringWritingDirection_ object:content file:@"UILabel.m" lineNumber:1064 description:@"should have at least one isolate range (beginning to end)"];

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
          v31 = _content;
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
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__attributedStringIsolatingStringWritingDirection_ object:content file:@"UILabel.m" lineNumber:1093 description:@"Number of writing direction changes was inconsistent"];

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
          attributedString = v69;
          v19 = v71;
        }

        else
        {
          v21 = v22;
        }
      }

      [content _hyphenationFactor];
      if (v45 > 0.0 && (*(content + 747) & 4) != 0)
      {
        v46 = v21;
        string = [v46 string];
        v48 = [string length];
        v49 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:32 error:0];
        v50 = [v49 matchesInString:string options:0 range:{0, v48}];
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

      mt_contentEffects = [content mt_contentEffects];
      v56 = [mt_contentEffects count];

      if (v56)
      {
        v57 = [v21 mutableCopy];
        v58 = *off_1E70EC920;
        currentTextColor = [content currentTextColor];
        [v57 addAttribute:v58 value:currentTextColor range:{0, objc_msgSend(v21, "length")}];

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

- (UILabel)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UILabel;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UILabel *)v3 _commonInit];
  return v3;
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v47 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  toWindowCopy = toWindow;
  v43.receiver = self;
  v43.super_class = UILabel;
  [(UIView *)&v43 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
  if (toWindowCopy)
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
        v32 = toWindowCopy;
        v33 = windowCopy;
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
              layer = [v8 layer];
              v16 = [(NSMutableDictionary *)self->_marqueeAnimations objectForKeyedSubscript:v14];
              [layer addAnimation:v16 forKey:v14];
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
              layer2 = [v8 layer];
              mask = [layer2 mask];
              v25 = [(NSMutableDictionary *)self->_marqueeMaskAnimations objectForKeyedSubscript:v22];
              [mask addAnimation:v25 forKey:v22];
            }

            marqueeMaskAnimations = obj;
            v19 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v19);
        }

        toWindowCopy = v32;
        windowCopy = v33;
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
      traitCollection = [toWindowCopy traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];
      traitCollection2 = [windowCopy traitCollection];
      if (userInterfaceIdiom == [traitCollection2 userInterfaceIdiom])
      {
      }

      else
      {
        traitCollection3 = [toWindowCopy traitCollection];
        userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

        if (userInterfaceIdiom2 == 3)
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

- (void)_adjustFontForAccessibilityTraits:(_BYTE *)traits
{
  if (traits)
  {
    _content = [traits _content];
    v4 = [(UILabel *)traits _contentAdjustingFontForAccessibilityTraits:_content forced:a2 didAdjustFont:0];
    [(UILabel *)traits _setContent:v4 adjustingFontForAccessibilityTraits:0 adjustingFontForTypesettingLanguage:0 adjustingFontForTypesettingLanguageAwareLineHeightRatio:0 checkingForDifferences:1];
  }
}

- (void)_invalidateAsNeededForNewSize:(double *)(a1 oldSize:
{
  if (self)
  {
    if (a4 != a2 || a5 != a3)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke;
      aBlock[3] = &unk_1E70F3590;
      aBlock[4] = self;
      v11 = _Block_copy(aBlock);
      if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke_2;
        v21[3] = &unk_1E7127078;
        v21[4] = self;
        if (_UITextLayoutSizeWillShrink(v21, a4, a5, a2, a3))
        {
          v12 = 1;
        }

        else
        {
          v11[2](v11);
          v12 = 0;
        }

        layer = [self layer];
        _labelLayerToClipDuringBoundsSizeAnimation = [layer _labelLayerToClipDuringBoundsSizeAnimation];

        LOBYTE(layer) = [_labelLayerToClipDuringBoundsSizeAnimation masksToBounds];
        [_labelLayerToClipDuringBoundsSizeAnimation _setLabelMasksToBoundsForAnimation:1];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49__UILabel__invalidateAsNeededForNewSize_oldSize___block_invoke_3;
        v16[3] = &unk_1E7129F10;
        v17 = _labelLayerToClipDuringBoundsSizeAnimation;
        v19 = layer;
        v20 = v12;
        v18 = v11;
        v15 = _labelLayerToClipDuringBoundsSizeAnimation;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  [(UILabel *)self _invalidateAsNeededForNewSize:height oldSize:v8, v9];
  v10.receiver = self;
  v10.super_class = UILabel;
  [(UIView *)&v10 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  [(UILabel *)self _invalidateAsNeededForNewSize:height oldSize:v8, v9];
  v10.receiver = self;
  v10.super_class = UILabel;
  [(UIView *)&v10 setBounds:x, y, width, height];
}

- (UILabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = UILabel;
  v5 = [(UIView *)&v46 initWithCoder:coderCopy];
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
    v11 = [coderCopy decodeObjectForKey:@"UIHighlightedColor"];
    v12 = v9[54];
    v9[54] = v11;

    v13 = [coderCopy decodeObjectForKey:@"UIShadowColor"];
    [v9 setShadowColor:v13];

    [coderCopy decodeCGSizeForKey:@"UIShadowOffset"];
    [v9 setShadowOffset:?];
    v9[55] = 1;
    if ([coderCopy containsValueForKey:@"UINumberOfLines"])
    {
      v9[55] = [coderCopy decodeIntegerForKey:@"UINumberOfLines"];
    }

    v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFCFLL);
    if ([coderCopy containsValueForKey:@"UIBaselineAdjustment"])
    {
      v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFCFLL | (16 * ([coderCopy decodeIntegerForKey:@"UIBaselineAdjustment"] & 3)));
    }

    v14 = [coderCopy decodeBoolForKey:@"UIAdjustsFontSizeToFit"];
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFFDLL | v15);
    v16 = [coderCopy decodeBoolForKey:@"UIAdjustsLetterSpacingToFit"];
    v17 = 128;
    if (v16)
    {
      v17 = 136;
    }

    v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFF7 | v17);
    if ([coderCopy containsValueForKey:@"UIEnablesMarqueeWhenAncestorFocused"])
    {
      v18 = [coderCopy decodeBoolForKey:@"UIEnablesMarqueeWhenAncestorFocused"];
      v19 = 256;
      if (!v18)
      {
        v19 = 0;
      }

      v9[93] = (v9[93] & 0xFFFFFFFFFFFFFEFFLL | v19);
      [v9 setMarqueeEnabled:v18];
    }

    v9[93] = (v9[93] | 0x40);
    if ([coderCopy containsValueForKey:@"UIEnabled"])
    {
      v20 = [coderCopy decodeBoolForKey:@"UIEnabled"];
      v21 = 64;
      if (!v20)
      {
        v21 = 0;
      }

      v9[93] = (v9[93] & 0xFFFFFFFFFFFFFFBFLL | v21);
    }

    if ([coderCopy containsValueForKey:@"UIPreferredMaxLayoutWidth"])
    {
      [coderCopy decodeFloatForKey:@"UIPreferredMaxLayoutWidth"];
      *(v9 + 94) = v22;
      v9[93] = (v9[93] | 0x2000);
    }

    if ([coderCopy containsValueForKey:@"UIAdjustsFontForContentSizeCategory"])
    {
      [v9 setAdjustsFontForContentSizeCategory:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"UIAdjustsFontForContentSizeCategory"}];
    }

    if ([coderCopy containsValueForKey:@"UIShowsExpansionTextWhenTruncated"])
    {
      [v9 setShowsExpansionTextWhenTruncated:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"UIShowsExpansionTextWhenTruncated"}];
    }

    v23 = [coderCopy decodeObjectForKey:@"UIFont"];
    v44 = [coderCopy decodeObjectForKey:@"UITextColor"];
    [coderCopy decodeFloatForKey:@"UIMinimumFontSize"];
    v25 = v24;
    v26 = +[UILabel _defaultAttributes];
    v27 = [v26 objectForKeyedSubscript:*off_1E70EC988];

    if (v27)
    {
      lineBreakMode = [v27 lineBreakMode];
      lineBreakStrategy = [v27 lineBreakStrategy];
    }

    else
    {
      lineBreakStrategy = 0xFFFFLL;
      lineBreakMode = 4;
    }

    v30 = lineBreakMode;
    if ([coderCopy containsValueForKey:@"UILineBreakMode"])
    {
      v30 = [coderCopy decodeIntegerForKey:@"UILineBreakMode"];
    }

    v42 = lineBreakStrategy;
    if ([coderCopy containsValueForKey:@"UILineBreakStrategy"])
    {
      lineBreakStrategy = [coderCopy decodeIntegerForKey:@"UILineBreakStrategy"];
    }

    v45 = v23;
    v43 = v27;
    if ([coderCopy containsValueForKey:@"UITextAlignment"])
    {
      v31 = [coderCopy decodeIntegerForKey:@"UITextAlignment"];
    }

    else
    {
      v31 = 0;
    }

    v32 = [coderCopy decodeBoolForKey:@"UIAllowsDefaultTighteningForTruncation"];
    v33 = [coderCopy decodeObjectForKey:@"UIAttributedText"];
    if (!v33)
    {
      v41 = v6;
      v34 = [coderCopy decodeObjectForKey:@"UIText"];
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

    if (v30 != lineBreakMode)
    {
      [v9 _setLineBreakMode:v30];
    }

    if (lineBreakStrategy != v42)
    {
      [v9 _setLineBreakStrategy:lineBreakStrategy];
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
      _content = [v9 _content];
      v36 = [_content contentWithAttributedString:v33];
      [v9 _setContent:v36];

      if ([coderCopy containsValueForKey:@"UIMinimumScaleFactor"])
      {
        [coderCopy decodeFloatForKey:@"UIMinimumScaleFactor"];
        [v9 setMinimumScaleFactor:v37];
      }
    }

    if ([coderCopy containsValueForKey:@"UIDisableUpdateTextColorOnTraitCollectionChange"])
    {
      v38 = [coderCopy decodeBoolForKey:@"UIDisableUpdateTextColorOnTraitCollectionChange"];
      v39 = 0x80000;
      if (!v38)
      {
        v39 = 0;
      }

      v9[93] = (v9[93] & 0xFFFFFFFFFFF7FFFFLL | v39);
    }

    if ([coderCopy containsValueForKey:@"UILetterformAwareSizingRule"])
    {
      v9[93] = (v9[93] & 0xFFFFFFBFFFFFFFFFLL | (([coderCopy decodeIntegerForKey:@"UILetterformAwareSizingRule"] & 1) << 38));
    }
  }

  return v6;
}

- (void)_setAllowsDefaultTighteningForTruncation:(void *)truncation
{
  if (truncation)
  {
    _content = [truncation _content];
    paragraphStyle = [_content paragraphStyle];

    if ([paragraphStyle allowsDefaultTighteningForTruncation] != a2)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__UILabel__setAllowsDefaultTighteningForTruncation___block_invoke;
      v10[3] = &__block_descriptor_33_e33_v16__0__NSMutableParagraphStyle_8l;
      v11 = a2;
      truncationCopy = truncation;
      v7 = [paragraphStyle mutableCopy];
      __52__UILabel__setAllowsDefaultTighteningForTruncation___block_invoke(v10, v7);
      _content2 = [truncationCopy _content];
      v9 = [_content2 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v7];
      [truncationCopy _setContent:v9];

      [truncationCopy _invalidateLabelSize];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = UILabel;
  [(UIView *)&v43 encodeWithCoder:coderCopy];
  text = [(UILabel *)self text];

  if (text)
  {
    text2 = [(UILabel *)self text];
    [coderCopy encodeObject:text2 forKey:@"UIText"];
  }

  if ([(UILabel *)self adjustsFontForContentSizeCategory])
  {
    [coderCopy encodeBool:1 forKey:@"UIAdjustsFontForContentSizeCategory"];
  }

  if ([(UILabel *)self showsExpansionTextWhenTruncated])
  {
    [coderCopy encodeBool:1 forKey:@"UIShowsExpansionTextWhenTruncated"];
  }

  font = [(UILabel *)self font];

  if (font)
  {
    font2 = [(UILabel *)self font];
    [coderCopy encodeObject:font2 forKey:@"UIFont"];
  }

  color = [(UILabel *)self color];

  if (color)
  {
    color2 = [(UILabel *)self color];
    [coderCopy encodeObject:color2 forKey:@"UITextColor"];
  }

  highlightedColor = self->_highlightedColor;
  if (highlightedColor)
  {
    [coderCopy encodeObject:highlightedColor forKey:@"UIHighlightedColor"];
  }

  shadowColor = [(UILabel *)self shadowColor];

  if (shadowColor)
  {
    shadowColor2 = [(UILabel *)self shadowColor];
    [coderCopy encodeObject:shadowColor2 forKey:@"UIShadowColor"];
  }

  [(UILabel *)self shadowOffset];
  if (v15 != *MEMORY[0x1E695F060] || v14 != *(MEMORY[0x1E695F060] + 8))
  {
    [coderCopy encodeCGSize:@"UIShadowOffset" forKey:?];
  }

  numberOfLines = self->_numberOfLines;
  if (numberOfLines != 1)
  {
    [coderCopy encodeInteger:numberOfLines forKey:@"UINumberOfLines"];
  }

  textLabelFlags = self->_textLabelFlags;
  v18 = (*&textLabelFlags >> 4) & 3;
  if (v18)
  {
    [coderCopy encodeInteger:v18 forKey:@"UIBaselineAdjustment"];
    textLabelFlags = self->_textLabelFlags;
  }

  if ((*&textLabelFlags & 2) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIAdjustsFontSizeToFit"];
  }

  [(UILabel *)self _minimumFontSize];
  if (v19 != 0.0)
  {
    [(UILabel *)self _minimumFontSize];
    *&v20 = v20;
    [coderCopy encodeFloat:@"UIMinimumFontSize" forKey:v20];
  }

  if ([(UILabel *)self allowsDefaultTighteningForTruncation])
  {
    [coderCopy encodeBool:1 forKey:@"UIAllowsDefaultTighteningForTruncation"];
  }

  v21 = +[UILabel _defaultAttributes];
  v22 = *off_1E70EC988;
  v23 = [v21 objectForKeyedSubscript:*off_1E70EC988];

  if (v23)
  {
    lineBreakMode = [v23 lineBreakMode];
    lineBreakStrategy = [v23 lineBreakStrategy];
  }

  else
  {
    lineBreakStrategy = 0xFFFFLL;
    lineBreakMode = 4;
  }

  if ([(UILabel *)self lineBreakMode]!= lineBreakMode)
  {
    [coderCopy encodeInteger:-[UILabel lineBreakMode](self forKey:{"lineBreakMode"), @"UILineBreakMode"}];
  }

  if ([(UILabel *)self lineBreakStrategy]!= lineBreakStrategy)
  {
    [coderCopy encodeInteger:-[UILabel lineBreakStrategy](self forKey:{"lineBreakStrategy"), @"UILineBreakStrategy"}];
  }

  [coderCopy encodeInteger:-[UILabel textAlignment](self forKey:{"textAlignment"), @"UITextAlignment"}];
  v26 = self->_textLabelFlags;
  if ((*&v26 & 0x40) == 0)
  {
    [coderCopy encodeBool:0 forKey:@"UIEnabled"];
    v26 = self->_textLabelFlags;
  }

  if ((*&v26 & 0x100) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIEnablesMarqueeWhenAncestorFocused"];
  }

  _content = [(UILabel *)self _content];
  if ([_content isAttributed])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    font3 = [(UILabel *)self font];
    [dictionary setValue:font3 forKey:*off_1E70EC918];

    color3 = [(UILabel *)self color];
    [dictionary setValue:color3 forKey:*off_1E70EC920];

    v31 = objc_alloc_init(off_1E70ECB90);
    shadowColor3 = [(UILabel *)self shadowColor];
    [v31 setShadowColor:shadowColor3];

    [(UILabel *)self shadowOffset];
    [v31 setShadowOffset:?];
    [dictionary setValue:v31 forKey:*off_1E70EC9B0];
    v33 = objc_alloc_init(off_1E70ECB80);
    [v33 setLineBreakMode:{-[UILabel lineBreakMode](self, "lineBreakMode")}];
    [v33 setLineBreakStrategy:{-[UILabel lineBreakStrategy](self, "lineBreakStrategy")}];
    [v33 setAlignment:{-[UILabel textAlignment](self, "textAlignment")}];
    [dictionary setValue:v33 forKey:v22];
    v34 = objc_alloc(MEMORY[0x1E696AAB0]);
    string = [_content string];
    v36 = [v34 initWithString:string attributes:dictionary];

    LOBYTE(string) = [_content isEqualToAttributedString:v36];
    if (string)
    {
      goto LABEL_43;
    }

    v37 = objc_alloc(MEMORY[0x1E696AD40]);
    _materializedAttributedString = [(UILabel *)self _materializedAttributedString];
    _content = [v37 initWithAttributedString:_materializedAttributedString];

    [coderCopy encodeObject:_content forKey:@"UIAttributedText"];
  }

LABEL_43:
  [(UILabel *)self minimumScaleFactor];
  if (v39 != 0.0)
  {
    [(UILabel *)self minimumScaleFactor];
    *&v40 = v40;
    [coderCopy encodeFloat:@"UIMinimumScaleFactor" forKey:v40];
  }

  if ([(UILabel *)self adjustsLetterSpacingToFitWidth])
  {
    [coderCopy encodeBool:1 forKey:@"UIAdjustsLetterSpacingToFit"];
  }

  preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  if (preferredMaxLayoutWidth > 0.0)
  {
    *&preferredMaxLayoutWidth = preferredMaxLayoutWidth;
    [coderCopy encodeFloat:@"UIPreferredMaxLayoutWidth" forKey:preferredMaxLayoutWidth];
  }

  p_textLabelFlags = &self->_textLabelFlags;
  [coderCopy encodeBool:(*p_textLabelFlags >> 19) & 1 forKey:@"UIDisableUpdateTextColorOnTraitCollectionChange"];
  if ((*(p_textLabelFlags + 4) & 0x40) != 0)
  {
    [coderCopy encodeInteger:1 forKey:@"UILetterformAwareSizingRule"];
  }
}

- (double)_boundingRectWithAttributedString:(uint64_t)string size:(void *)size options:(double)options context:(double)context
{
  v11 = a2;
  sizeCopy = size;
  if (self)
  {
    if ((self[748] & 0x80) != 0)
    {
      _verticalTextLayoutManager = [(UILabel *)self _verticalTextLayoutManager];
      [_verticalTextLayoutManager boundingRectWithAttributedString:v11 size:string options:sizeCopy context:{options, context}];
      v14 = v16;
    }

    else
    {
      [v11 boundingRectWithSize:string options:sizeCopy context:{options, context}];
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
  v1 = objc_getAssociatedObject(self, &kTextLayoutManagerKey);

  return v1;
}

- (double)_boundingRectWithString:(uint64_t)string size:(void *)size options:(void *)options attributes:(double)attributes context:(double)context
{
  v13 = a2;
  sizeCopy = size;
  optionsCopy = options;
  if (self)
  {
    if ((self[748] & 0x80) != 0)
    {
      _verticalTextLayoutManager = [(UILabel *)self _verticalTextLayoutManager];
      [_verticalTextLayoutManager boundingRectWithString:v13 size:string options:sizeCopy attributes:optionsCopy context:{attributes, context}];
      v17 = v19;
    }

    else
    {
      [v13 boundingRectWithSize:string options:sizeCopy attributes:optionsCopy context:{attributes, context}];
      v17 = v16;
    }
  }

  else
  {
    v17 = 0.0;
  }

  return v17;
}

- (void)_drawWithString:(uint64_t)string rect:(void *)rect options:(void *)options attributes:(double)attributes context:(double)context
{
  v20 = a2;
  rectCopy = rect;
  optionsCopy = options;
  if ((self[748] & 0x80) != 0)
  {
    _verticalTextLayoutManager = [(UILabel *)self _verticalTextLayoutManager];
    [_verticalTextLayoutManager drawWithString:v20 rect:string options:rectCopy attributes:optionsCopy context:{attributes, context, a8, a9}];
  }

  else
  {
    [v20 drawWithRect:string options:rectCopy attributes:optionsCopy context:{attributes, context, a8, a9}];
  }
}

- (void)_drawWithAttributedString:(uint64_t)string rect:(void *)rect options:(double)options context:(double)context
{
  v17 = a2;
  rectCopy = rect;
  if ((self[748] & 0x80) != 0)
  {
    _verticalTextLayoutManager = [(UILabel *)self _verticalTextLayoutManager];
    [_verticalTextLayoutManager drawWithAttributedString:v17 rect:string options:rectCopy context:{options, context, a7, a8}];
  }

  else
  {
    [v17 drawWithRect:string options:rectCopy context:{options, context, a7, a8}];
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

- (_UILabelLegacyScaledMetrics)_scaledMetricsForText:(double)text inRect:(double)rect
{
  v9 = a2;
  if (self)
  {
    _associatedScalingLabel = [(_UILabelLegacyScaledMetrics *)self _associatedScalingLabel];
    v11 = _associatedScalingLabel;
    if (!_associatedScalingLabel || _associatedScalingLabel == self)
    {
      if ((LOBYTE(self[7]._scaledSize.height) & 2) == 0 || ([*&self[8]._scaledBaselineOffset minimumScaleFactor], v34 >= 1.0))
      {
        self = 0;
        goto LABEL_37;
      }

      _stringDrawingContext = [(_UILabelLegacyScaledMetrics *)self _stringDrawingContext];
      v15 = [_stringDrawingContext copy];

      [*&self[8]._scaledBaselineOffset minimumScaleFactor];
      if (v36 >= 1.0)
      {
        self = 0;
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
      [v15 setMaximumNumberOfLines:*&self[4]._scaledFirstBaselineOffset];
      [v9 boundingRectWithSize:-[_UILabelLegacyScaledMetrics _stringDrawingOptions](self options:"_stringDrawingOptions") context:{v15, a5, a6}];
      v38 = v37;
      v40 = v39;
      [v15 scaledLineHeight];
      v42 = v41;
      [v15 actualScaleFactor];
      self = 0;
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
      self = v45;
      if (v45)
      {
        v45->_scaledSize.width = v38;
        v45->_scaledSize.height = v42;
        v45->_unscaledAndPossiblyTooLargeSize.width = v38;
        v45->_unscaledAndPossiblyTooLargeSize.height = v40;
        [v15 baselineOffset];
        self->_baselineOffset = v46;
        [v15 firstBaselineOffset];
        self->_scaledFirstBaselineOffset = v47;
        [v15 scaledBaselineOffset];
        self->_scaledBaselineOffset = v48;
        self->_actualScaleFactor = v44;
        self->_measuredNumberOfLines = [v15 numberOfLineFragments];
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
      selfCopy2 = self;
      v33 = v17;
LABEL_23:
      [(_UICollectionLayoutItemSolver *)selfCopy2 setSolveResult:v33];

LABEL_24:
LABEL_37:

      goto LABEL_38;
    }

    if (!*&_associatedScalingLabel[6]._scaledLineHeight)
    {
      [(_UILabelLegacyScaledMetrics *)_associatedScalingLabel bounds];
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
    _stringDrawingContext2 = [(_UILabelLegacyScaledMetrics *)self _stringDrawingContext];
    v17 = [_stringDrawingContext2 copy];

    [v17 setWantsNumberOfLineFragments:1];
    [v17 setMaximumNumberOfLines:{-[_UILabelLegacyScaledMetrics numberOfLines](self, "numberOfLines")}];
    [v17 setMinimumScaleFactor:1.0];
    [v17 setLayout:0];
    [v9 boundingRectWithSize:-[_UILabelLegacyScaledMetrics _stringDrawingOptions](self options:"_stringDrawingOptions") context:{v17, a5, a6}];
    v19 = v18;
    v21 = v20;
    [v17 setLayout:0];
    [v15 boundingRectWithSize:-[_UILabelLegacyScaledMetrics _stringDrawingOptions](self options:"_stringDrawingOptions") context:{v17, a5, a6}];
    v23 = v22;
    v25 = v24;
    v26 = objc_alloc_init(_UILabelLegacyScaledMetrics);
    self = v26;
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
                    selfCopy2 = self;
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

  return self;
}

- (uint64_t)_updateScaledMetricsForRect:(double)rect
{
  if (result)
  {
    v9 = result;
    _synthesizedAttributedText = *(result + 608);
    if (_synthesizedAttributedText)
    {
      v11 = _synthesizedAttributedText[1];
    }

    else
    {
      v11 = 0.0;
    }

    if (*(result + 616) != a4 || *(result + 624) != a5)
    {
      if (a4 < 3.40282347e38 || a5 < 3.40282347e38)
      {
        _synthesizedAttributedText = [result _synthesizedAttributedText];
        v13 = [(UILabel *)v9 _scaledMetricsForText:_synthesizedAttributedText inRect:a2, rect, a4, a5];
        v14 = *(v9 + 608);
        *(v9 + 608) = v13;
      }

      else
      {
        *(result + 608) = 0;
      }

      *(v9 + 616) = a4;
      *(v9 + 624) = a5;
      _synthesizedAttributedText = *(v9 + 608);
    }

    if (_synthesizedAttributedText)
    {
      v15 = _synthesizedAttributedText[1];
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

- (CGRect)_textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines includingShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  text = [(UILabel *)self text];
  v13 = [text length];

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
  selfCopy = self;
  v16 = selfCopy;
  if ((*&selfCopy->_textLabelFlags & 4) != 0)
  {
    v18 = _UIComputedSizeForLabel(selfCopy, 0, 0, lines, &p_intrinsicSizeBaselineInfo->measuredNumberOfLines, &v88, &v87, width, height);
    v26 = v31;
  }

  else
  {
    _stringDrawingContext = [(UILabel *)selfCopy _stringDrawingContext];
    [_stringDrawingContext setMaximumNumberOfLines:lines];
    [_stringDrawingContext setWrapsForTruncationMode:lines != 1];
    [_stringDrawingContext setWantsNumberOfLineFragments:1];
    [_stringDrawingContext setWantsBaselineOffset:1];
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
        [_stringDrawingContext setLayout:0];
      }

      _content = [v16 _content];
      if ([_content isAttributed])
      {
        _synthesizedAttributedText = [v16 _synthesizedAttributedText];
        if (_synthesizedAttributedText)
        {
          v22 = -[UILabel _boundingRectWithAttributedString:size:options:context:](v16, _synthesizedAttributedText, [v16 _stringDrawingOptions], _stringDrawingContext, v18, 3.40282347e38);
          v24 = v23;
          v26 = v25;
        }

        else
        {
          v24 = *MEMORY[0x1E695F060];
          v26 = *(MEMORY[0x1E695F060] + 8);
        }

        paragraphStyle = [_content paragraphStyle];
        if (dyld_program_sdk_at_least())
        {
          [paragraphStyle firstLineHeadIndent];
          if (v38 > 0.0)
          {
            if ([_stringDrawingContext numberOfLineFragments] == 1)
            {
              goto LABEL_35;
            }

            string = [_synthesizedAttributedText string];
            [MEMORY[0x1E696AB08] newlineCharacterSet];
            v84 = v82 = string;
            v40 = [string componentsSeparatedByCharactersInSet:v84];

            v81 = [v40 count];
            v85 = v40;
            if ([v40 count])
            {
              lastObject = [v40 lastObject];
              v80 = [lastObject length] == 0;

              v42 = v81 - v80;
            }

            else
            {
              v42 = v81;
            }

            linesCopy = 0x7FFFFFFFLL;
            if (lines)
            {
              linesCopy = lines;
            }

            v44 = linesCopy >= v42 ? v42 : linesCopy;
            numberOfLineFragments = [_stringDrawingContext numberOfLineFragments];

            if (v44 == numberOfLineFragments)
            {
LABEL_35:
              [paragraphStyle firstLineHeadIndent];
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

      else if ([_content isNil])
      {
        v24 = *MEMORY[0x1E695F060];
        v26 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        string2 = [_content string];
        _stringDrawingOptions = [v16 _stringDrawingOptions];
        _synthesizedTextAttributes = [(UILabel *)v16 _synthesizedTextAttributes];
        [(UILabel *)v16 _boundingRectWithString:string2 size:_stringDrawingOptions options:_synthesizedTextAttributes attributes:_stringDrawingContext context:v18, 3.40282347e38];
        v24 = v35;
        v26 = v36;
      }

      v48 = v24 - v18;
      if (v24 - v18 < 0.0001)
      {
        v18 = v24;
      }

      p_intrinsicSizeBaselineInfo->measuredNumberOfLines = [_stringDrawingContext numberOfLineFragments];
      [_stringDrawingContext baselineOffset];
      v88 = v49;
      [_stringDrawingContext firstBaselineOffset];
      v87 = v50;
      layout = [_stringDrawingContext layout];
      v52 = *(v16 + 600);
      *(v16 + 600) = layout;
    }
  }

  v86 = y;
  if (shadowCopy && ([v16 shadowColor], v53 = objc_claimAutoreleasedReturnValue(), v53, v53) && v18 > 0.0 && v26 > 0.0)
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

  _shouldCeilSizeToViewScale = [v16 _shouldCeilSizeToViewScale];
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

  if (_shouldCeilSizeToViewScale)
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
  _content2 = [v16 _content];
  v65 = +[UIView _enableRTL];
  if ([_content2 isAttributed])
  {
    _synthesizedAttributedText2 = [v16 _synthesizedAttributedText];
    _ui_resolvedTextAlignment = [_synthesizedAttributedText2 _ui_resolvedTextAlignment];
LABEL_69:

    goto LABEL_70;
  }

  if (v65)
  {
    _ui_resolvedTextAlignment = 4;
  }

  else
  {
    _ui_resolvedTextAlignment = 0;
  }

  if ((*(v16 + 744) & 0x80) != 0)
  {
    _synthesizedAttributedText2 = [(UILabel *)v16 _synthesizedTextAttributes];
    v68 = [_synthesizedAttributedText2 objectForKey:*off_1E70EC988];
    _ui_resolvedTextAlignment = [v68 _ui_resolvedTextAlignment];

    goto LABEL_69;
  }

LABEL_70:
  if (_ui_resolvedTextAlignment == 1)
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
  if (_ui_resolvedTextAlignment == 2)
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

- (double)_sizingRuleAdjustedBoundsForBounds:(void *)bounds
{
  if (!bounds)
  {
    return 0.0;
  }

  v3 = bounds[93];
  if ((v3 & 0x6000000000) != 0)
  {
    [(UILabel *)bounds _letterformAwareAllAlignmentInsets];
    if ((v3 & 0x4000000000) == 0)
    {
      v4 = 0.0;
    }

    return a2 + v4;
  }

  return a2;
}

- (CGRect)_drawingRectForBounds:(CGRect)bounds
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

+ (double)_insetsForString:(void *)string withFont:(void *)font inView:
{
  fontCopy = font;
  stringCopy = string;
  objc_opt_self();
  CTFontGetLanguageAwareOutsets();

  UICeilToViewScale(fontCopy);
  v9 = -v7;
  UICeilToViewScale(fontCopy);
  UICeilToViewScale(fontCopy);
  UICeilToViewScale(fontCopy);

  return v9;
}

+ (double)_insetsForAttributedString:(void *)string withDefaultFont:(void *)font inView:
{
  v30 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  fontCopy = font;
  v8 = a2;
  objc_opt_self();
  v9 = [(_NSAttributedStringIntentResolver *)_UIAttributedStringIntentResolver attributedStringByResolvingString:v8];

  v10 = -[NSAttributedString _ui_fontsInRange:usingDefaultFont:](v9, 0, [v9 length], stringCopy);
  v11 = v10;
  if (stringCopy)
  {
    v12 = [v10 setByAddingObject:stringCopy];

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

  UICeilToViewScale(fontCopy);
  v23 = v22;
  UICeilToViewScale(fontCopy);
  UICeilToViewScale(fontCopy);
  UICeilToViewScale(fontCopy);

  return -v23;
}

+ (CGRect)_insetRect:(CGRect)rect forAttributedString:(id)string withDefaultFont:(id)font inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stringCopy = string;
  fontCopy = font;
  viewCopy = view;
  string = [stringCopy string];
  v17 = +[UILabel _tooBigChars];
  v18 = [string rangeOfCharacterFromSet:v17];

  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(UILabel *)self _insetsForAttributedString:stringCopy withDefaultFont:fontCopy inView:viewCopy];
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

- (void)_setText:(id)text
{
  textCopy = text;
  _content = [(UILabel *)self _content];
  v5 = [_content contentWithString:textCopy];

  v6 = [v5 widthVariantContentForView:self];
  [(UILabel *)self _setContent:v6];
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = attributedText;
  v4 = self->_content;
  _content = [(UILabel *)self _content];
  v6 = [_content contentWithAttributedString:v19];
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
      textColor = [(UILabel *)self textColor];
      lastSetColor = self->_lastSetColor;
      self->_lastSetColor = textColor;
      v15 = textColor;
    }

    else
    {
      v15 = [(NSAttributedString *)v8 attribute:v12 atIndex:0 effectiveRange:0];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v11 | ![(_UILabelContent *)self->_content isAttribute:v12 uniformlyEqualToValue:v15])
      {
        v18 = self->_lastSetColor;
        self->_lastSetColor = 0;

        selfCopy2 = self;
        v17 = 0;
        goto LABEL_10;
      }

      objc_storeStrong(&self->_lastSetColor, v15);
    }

    selfCopy2 = self;
    v17 = v15;
LABEL_10:
    [(UILabel *)selfCopy2 _resolveMaterialColor:v17];

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

- (void)_setFallbackTextColor:(id)color forUserInterfaceStyle:(int64_t)style
{
  colorCopy = color;
  fallbackColorsForUserInterfaceStyle = self->_fallbackColorsForUserInterfaceStyle;
  if (!fallbackColorsForUserInterfaceStyle)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_fallbackColorsForUserInterfaceStyle;
    self->_fallbackColorsForUserInterfaceStyle = v7;

    fallbackColorsForUserInterfaceStyle = self->_fallbackColorsForUserInterfaceStyle;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [(NSMutableDictionary *)fallbackColorsForUserInterfaceStyle setObject:colorCopy forKey:v9];

  [(UILabel *)self _updateTextColorWithFallbackColorIfNeeded];
}

- (void)_setTextColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [objc_opt_class() _defaultColor];
    *&self->_textLabelFlags &= ~0x80000uLL;
  }

  _content = [(UILabel *)self _content];
  v6 = *off_1E70EC920;
  v10 = _content;
  if (([_content isAttribute:*off_1E70EC920 uniformlyEqualToValue:colorCopy] & 1) == 0)
  {
    v7 = [v10 contentByApplyingAttributeToEntireRange:v6 value:colorCopy];
    [(UILabel *)self _setContent:v7];
  }

  lastSetColor = self->_lastSetColor;
  self->_lastSetColor = colorCopy;
  v9 = colorCopy;

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

- (int64_t)_supportedTreatmentForTreatment:(int64_t)treatment
{
  if (treatment != 2)
  {
    return treatment;
  }

  _defaultAttributes = [(UILabel *)self _defaultAttributes];
  v5 = [_defaultAttributes objectForKeyedSubscript:*off_1E70EC920];

  _content = [(UILabel *)self _content];
  v7 = [_content supportedMonochromaticTreatment:v5];

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

    window = [(UIView *)self window];
    if (window)
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

- (void)_setTextEncapsulation:(id)encapsulation
{
  objc_storeStrong(&self->_textEncapsulation, encapsulation);

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

- (void)_setAssociatedScalingLabel:(id)label
{
  value = label;
  _associatedScalingLabel = [(UILabel *)self _associatedScalingLabel];

  v5 = value;
  if (_associatedScalingLabel != value)
  {
    objc_setAssociatedObject(self, &kAssociatedScalingLabelKey, value, 1);
    [(UILabel *)self setNeedsDisplay];
    v5 = value;
  }
}

- (void)_setMinimumFontSize:(double)size
{
  if (self->_minimumFontSize != size)
  {
    font = [(UILabel *)self font];
    [font pointSize];
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

    v10 = size / v9;
    if (v9 == 0.0)
    {
      v10 = 0.0;
    }

    [(_UILabelImplProtocol *)self->__impl setMinimumScaleFactor:v10];
    self->_minimumFontSize = size;
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
    font = [(UILabel *)self font];
    [font pointSize];
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
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];
  allowsDefaultTighteningForTruncation = [paragraphStyle allowsDefaultTighteningForTruncation];

  return allowsDefaultTighteningForTruncation;
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
      layer = [(UIView *)self layer];
      [layer invalidateContentInsets];
    }

    layer2 = [(UIView *)self layer];
    [layer2 setNeedsLayout];

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

- (void)_setLineBreakStrategy:(unint64_t)strategy
{
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];

  if ([paragraphStyle lineBreakStrategy] != strategy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__UILabel__setLineBreakStrategy___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__NSMutableParagraphStyle_8l;
    v11[4] = strategy;
    selfCopy = self;
    v8 = [paragraphStyle mutableCopy];
    __33__UILabel__setLineBreakStrategy___block_invoke(v11, v8);
    _content2 = [(UILabel *)selfCopy _content];
    v10 = [_content2 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v8];
    [(UILabel *)selfCopy _setContent:v10];

    [(UILabel *)selfCopy _invalidateLabelSize];
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

- (void)_setTextColorFollowsTintColor:(BOOL)color
{
  if (((((*&self->_textLabelFlags & 0x40000000) == 0) ^ color) & 1) == 0)
  {
    v3 = 0x40000000;
    if (!color)
    {
      v3 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFBFFFFFFFLL | v3);
    [(UILabel *)self _invalidateLabelDisplay];
  }
}

- (void)_setTextAlignment:(int64_t)alignment
{
  *&self->_textLabelFlags |= 0x80uLL;
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];

  if ([paragraphStyle alignment] != alignment)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29__UILabel__setTextAlignment___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__NSMutableParagraphStyle_8l;
    v11[4] = alignment;
    selfCopy = self;
    v8 = [paragraphStyle mutableCopy];
    __29__UILabel__setTextAlignment___block_invoke(v11, v8);
    _content2 = [(UILabel *)selfCopy _content];
    v10 = [_content2 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v8];
    [(UILabel *)selfCopy _setContent:v10];

    [(UILabel *)selfCopy _invalidateLabelSize];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  if ([(UIView *)self semanticContentAttribute]!= attribute)
  {
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setSemanticContentAttribute:attribute];
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

- (void)_setFont:(id)font
{
  fontCopy = font;
  if (fontCopy || ([objc_opt_class() defaultFont], (fontCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    font = fontCopy;
    _content = [(UILabel *)self _content];
    font2 = [_content contentByApplyingAttributeToEntireRange:*off_1E70EC918 value:font];
    [(UILabel *)self _setContent:font2];
  }

  else
  {
    v7 = objc_opt_class();
    font = [(UILabel *)self font];
    _content = [font fontName];
    font2 = [(UILabel *)self font];
    [font2 pointSize];
    NSLog(&cfstr_NilPassedToUil.isa, v7, _content, v8);
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x200000000) == 0) ^ category) & 1) == 0)
  {
    v4 = 0x200000000;
    if (!category)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFDFFFFFFFFLL | v4);
    [(UILabel *)self _adjustFontForAccessibilityTraits:?];
  }
}

- (void)_setExtremeSizingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UILabel *)self _isExtremeSizingEnabled]!= enabled)
  {
    v5 = 0x2000000000;
    if (!enabledCopy)
    {
      v5 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFDFFFFFFFFFLL | v5);
    [(UILabel *)self invalidateIntrinsicContentSize];
    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      layer = [(UIView *)self layer];
      [layer setOversizeEdgesIncludedInLabelLayer:5];

      if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
      {
        layer2 = [(UIView *)self layer];
        [layer2 invalidateContentInsets];
      }
    }
  }
}

- (void)setSizingRule:(int64_t)rule
{
  if ([(UILabel *)self sizingRule]!= rule)
  {
    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFBFFFFFFFFFLL | ((rule == 1) << 38));
    [(UILabel *)self invalidateIntrinsicContentSize];
    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      layer = [(UIView *)self layer];
      [layer setOversizeEdgesIncludedInLabelLayer:15];

      if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
      {
        layer2 = [(UIView *)self layer];
        [layer2 invalidateContentInsets];
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

- (void)_setShadow:(void *)shadow
{
  if (shadow)
  {
    v3 = a2;
    _content = [shadow _content];
    v4 = [_content contentByApplyingAttributeToEntireRange:*off_1E70EC9B0 value:v3];

    [shadow _setContent:v4];
  }
}

- (void)setShadowColor:(UIColor *)shadowColor
{
  v8 = shadowColor;
  _shadow = [(UILabel *)self _shadow];
  v5 = [_shadow copy];

  shadowColor = [v5 shadowColor];
  if (shadowColor == v8)
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
  _shadow = [(UILabel *)self _shadow];
  v10 = [_shadow copy];

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
  _shadow = [(UILabel *)self _shadow];
  [_shadow shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowBlur:(double)blur
{
  _shadow = [(UILabel *)self _shadow];
  v7 = [_shadow copy];

  [v7 shadowBlurRadius];
  if (v6 != blur || dyld_program_sdk_at_least())
  {
    [v7 setShadowBlurRadius:blur];
    [(UILabel *)self _setShadow:v7];
  }
}

- (double)shadowBlur
{
  _shadow = [(UILabel *)self _shadow];
  [_shadow shadowBlurRadius];
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

- (void)_setLineBreakMode:(int64_t)mode
{
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];

  if ([paragraphStyle lineBreakMode] != mode)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29__UILabel__setLineBreakMode___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__NSMutableParagraphStyle_8l;
    v11[4] = mode;
    selfCopy = self;
    v8 = [paragraphStyle mutableCopy];
    __29__UILabel__setLineBreakMode___block_invoke(v11, v8);
    _content2 = [(UILabel *)selfCopy _content];
    v10 = [_content2 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v8];
    [(UILabel *)selfCopy _setContent:v10];

    [(UILabel *)selfCopy _invalidateLabelSize];
  }
}

- (void)setNumberOfLines:(NSInteger)numberOfLines
{
  if (self->_numberOfLines != numberOfLines)
  {
    _needsDoubleUpdateConstraintsPass = [(UILabel *)self _needsDoubleUpdateConstraintsPass];
    self->_numberOfLines = numberOfLines;
    [(UILabel *)self _invalidateLabelSize];
    v6.receiver = self;
    v6.super_class = UILabel;
    [(UIView *)&v6 setNeedsDisplay];
    [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:_needsDoubleUpdateConstraintsPass];
    [(UILabel *)self setMarqueeEnabled:(*&self->_textLabelFlags >> 8) & 1];
    [(UILabel *)self _runMarqueeIfEnabledAndAncestorIsFocused];
  }
}

- (void)setLineSpacing:(int64_t)spacing
{
  if (self->_lineSpacing != spacing)
  {
    v12[11] = v3;
    v12[12] = v4;
    self->_lineSpacing = spacing;
    _content = [(UILabel *)self _content];
    paragraphStyle = [_content paragraphStyle];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __26__UILabel_setLineSpacing___block_invoke;
    v12[3] = &unk_1E7129FC8;
    v12[4] = self;
    selfCopy = self;
    v9 = [paragraphStyle mutableCopy];
    __26__UILabel_setLineSpacing___block_invoke(v12, v9);
    _content2 = [(UILabel *)selfCopy _content];
    v11 = [_content2 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v9];
    [(UILabel *)selfCopy _setContent:v11];

    [(UILabel *)selfCopy _invalidateLabelSize];
  }
}

void __26__UILabel_setLineSpacing___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 592);
  v4 = a2;
  [v4 setMinimumLineHeight:v3];
  [v4 setMaximumLineHeight:*(*(a1 + 32) + 592)];
}

- (void)_setHyphenationFactor:(float)factor
{
  _content = [(UILabel *)self _content];
  paragraphStyle = [_content paragraphStyle];

  [paragraphStyle hyphenationFactor];
  if (v7 != factor)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__UILabel__setHyphenationFactor___block_invoke;
    v12[3] = &__block_descriptor_36_e33_v16__0__NSMutableParagraphStyle_8l;
    factorCopy = factor;
    selfCopy = self;
    v9 = [paragraphStyle mutableCopy];
    (__33__UILabel__setHyphenationFactor___block_invoke)(v12, v9);
    _content2 = [(UILabel *)selfCopy _content];
    v11 = [_content2 contentByApplyingAttributeToEntireRange:*off_1E70EC988 value:v9];
    [(UILabel *)selfCopy _setContent:v11];

    [(UILabel *)selfCopy _invalidateLabelSize];
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

- (void)_setDrawsDebugGlyphPathBoundsClipping:(BOOL)clipping
{
  if (((((*&self->_textLabelFlags & 0x8000) == 0) ^ clipping) & 1) == 0)
  {
    v4 = 0x8000;
    if (!clipping)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFF7FFFLL | v4);
    if (clipping)
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

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if (self)
  {
    v4.receiver = self;
    v4.super_class = UILabel;
    [(UIView *)&v4 setNeedsDisplay:changed];
  }
}

- (void)_setDrawsDebugBaselines:(BOOL)baselines
{
  if (((((*&self->_textLabelFlags & 0x4000) == 0) ^ baselines) & 1) == 0)
  {
    v3 = 0x4000;
    if (!baselines)
    {
      v3 = 0;
    }

    self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFBFFFLL | v3);
    v4.receiver = self;
    v4.super_class = UILabel;
    [(UIView *)&v4 setNeedsDisplay];
  }
}

- (void)set_fontForShortcutBaselineCalculation:(id)calculation
{
  calculationCopy = calculation;
  if (![calculationCopy isEqual:self->_fontForShortcutBaselineCalculation] || !calculationCopy && self->_fontForShortcutBaselineCalculation)
  {
    objc_storeStrong(&self->_fontForShortcutBaselineCalculation, calculation);
    [(UILabel *)self _invalidateBaselineConstraints];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
    font = fontForShortcutBaselineCalculation;
  }

  else
  {
    font = [(UILabel *)self font];
  }

  v14 = font;
  if (!font)
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
    height = [(_UITextSizeCache *)self->_intrinsicContentSizeCache getSize:v27 baselineInfo:buf forTargetSize:[(UILabel *)self numberOfLines:0]!= 1 isMultiline:width, height];
    if (os_variant_has_internal_diagnostics())
    {
      if (height)
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
      selfCopy2 = self;
      v36 = 2112;
      v37 = v25;
      _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "UIKit bug. Failed baseline lookup for %@ at %@", v34, 0x16u);
    }

    else
    {
      if (height)
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
      selfCopy2 = self;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "UIKit bug. Failed baseline lookup for %@ at %@", v34, 0x16u);
    }

    goto LABEL_31;
  }

  [(UIFont *)font lineHeight];
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

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UILabel;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(UIView *)self traitCollection];
  [changeCopy displayScale];
  v6 = v5;
  [traitCollection displayScale];
  v8 = v7;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    if (v6 <= 0.0)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
    }

    if (v8 <= 0.0)
    {
      mainScreen2 = [objc_opt_self() mainScreen];
      [mainScreen2 scale];
    }
  }

  typesettingLanguage = [traitCollection typesettingLanguage];
  typesettingLanguage2 = [changeCopy typesettingLanguage];
  v13 = [typesettingLanguage isEqualToString:typesettingLanguage2];

  if ((v13 & 1) == 0)
  {
    [(UILabel *)self _adjustFontForTypesettingLanguage];
  }

  [traitCollection _typesettingLanguageAwareLineHeightRatio];
  v15 = v14;
  [changeCopy _typesettingLanguageAwareLineHeightRatio];
  if (self && v15 != v16)
  {
    _content = [(UILabel *)self _content];
    v18 = [(UILabel *)self _contentAdjustingFontForTypesettingLanguageAwareLineHeightRatio:_content didAdjustFont:0];
    [(UILabel *)self _setContent:v18 adjustingFontForAccessibilityTraits:0 adjustingFontForTypesettingLanguage:0 adjustingFontForTypesettingLanguageAwareLineHeightRatio:1 checkingForDifferences:1];
  }

  if (traitCollection && (!changeCopy || traitCollection[13] != changeCopy[13] || traitCollection[15] != changeCopy[15]))
  {
    -[UILabel _adjustFontForAccessibilityTraits:](self, [traitCollection legibilityWeight] != objc_msgSend(changeCopy, "legibilityWeight"));
  }

  v19 = [(UITraitCollection *)traitCollection _resolvesNaturalAlignmentWithBaseWritingDirectionWithDefaultValue:?];
  if (![(UILabel *)self _textAlignmentFollowsWritingDirection]&& v19)
  {
    [(UILabel *)self _setTextAlignmentFollowsWritingDirection:1];
  }

  _backlightLuminance = [changeCopy _backlightLuminance];
  if (_backlightLuminance != [traitCollection _backlightLuminance])
  {
    if ([traitCollection _backlightLuminance] == 1)
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
              traitCollection2 = [(UIView *)self traitCollection];
              _backlightLuminance2 = [traitCollection2 _backlightLuminance];

              if (_backlightLuminance2 == 1)
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
                selfCopy = self;
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

  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (self && userInterfaceStyle != userInterfaceStyle2 && self->_cuiStyleEffectConfiguration)
  {
    traitCollection3 = [(UIView *)self traitCollection];
    _styleEffectAppearanceName = [(UITraitCollection *)traitCollection3 _styleEffectAppearanceName];

    appearanceName = [(CUIStyleEffectConfiguration *)self->_cuiStyleEffectConfiguration appearanceName];
    v40 = _styleEffectAppearanceName;
    v41 = appearanceName;
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

  if (_UITraitCollectionUserInterfaceRenderingModeDidChange(traitCollection, changeCopy))
  {
    [(UILabel *)self _resolveMaterialColor:?];
  }
}

- (void)_updateTextColorWithFallbackColorIfNeeded
{
  _visualStyle = [(UILabel *)self _visualStyle];
  if ([_visualStyle updatesTextColorOnUserInterfaceStyleChanges])
  {
    textLabelFlags = self->_textLabelFlags;

    if ((*&textLabelFlags & 0x80000) != 0)
    {
      return;
    }

    _visualStyle = [(UIView *)self traitCollection];
    userInterfaceStyle = [_visualStyle userInterfaceStyle];
    fallbackColorsForUserInterfaceStyle = self->_fallbackColorsForUserInterfaceStyle;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:userInterfaceStyle];
    v7 = [(NSMutableDictionary *)fallbackColorsForUserInterfaceStyle objectForKey:v6];

    [(UILabel *)self _setTextColor:v7];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

  superview = [(UIView *)self superview];
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

    superview2 = [(UIView *)self superview];
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

- (void)_setUseShortcutIntrinsicContentSize:(BOOL)size
{
  v3 = 0x400000;
  if (!size)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)_setMultilineLabelRequiresCarefulMeasurement:(BOOL)measurement
{
  v3 = 0x800000;
  if (!measurement)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self _intrinsicSizeWithinSize:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  textLabelFlags = self->_textLabelFlags;
  _letterformAwareAllAlignmentInsets = [(UILabel *)self _letterformAwareAllAlignmentInsets];
  if ((*&textLabelFlags & 0x4000000000) == 0)
  {
    v10 = 0.0;
    _letterformAwareAllAlignmentInsets = _letterformAwareAllAlignmentInsets + 0.0;
    v11 = v11 + 0.0;
    v12 = 0.0;
  }

  v13 = v7 + _letterformAwareAllAlignmentInsets + v11;
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
      _isNaturallyRTL = 0;
    }

    else
    {
      text = [(UILabel *)self text];
      _isNaturallyRTL = [text _isNaturallyRTL];
    }
  }

  else
  {
    _isNaturallyRTL = 0;
    v60 = 0.0;
    v12 = 0.0;
  }

  _shadow = [(UILabel *)self _shadow];
  shadowColor = [_shadow shadowColor];

  if (shadowColor)
  {
    if (!_shadow)
    {
      v29 = 1;
      if ((*&textLabelFlags & 0x200) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    CGContextSaveGState(v9);
    [_shadow shadowOffset];
    v22 = v21;
    v24 = v23;
    [_shadow shadowBlurRadius];
    v26 = v25;
    shadowColor2 = [_shadow shadowColor];
    cGColor = [shadowColor2 CGColor];
    v62.width = v22;
    v62.height = v24;
    CGContextSetShadowWithColor(v9, v62, v26, cGColor);

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
        attributedText = [(UILabel *)self attributedText];
        height = [(UILabel *)self _scaledMetricsForText:attributedText inRect:x, y, width, height];

        if (height)
        {
          v35 = (height[1] < self->_marqueeMinimumScaleFactor) << 11;
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
    if (_isNaturallyRTL)
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
  if (_isNaturallyRTL)
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
    if (_isNaturallyRTL)
    {
      cGImage = [v54 CGImage];
      [v54 scale];
      v58 = [UIImage imageWithCGImage:cGImage scale:4 orientation:?];

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

- (void)_setSupportMultiLineShrinkToFit:(uint64_t)fit
{
  if (fit)
  {
    v3 = 4;
    if (!a2)
    {
      v3 = 0;
    }

    *(fit + 744) = *(fit + 744) & 0xFFFFFFFFFFFFFFFBLL | v3;
    v4 = *(fit + 608);
    *(fit + 608) = 0;

    *(fit + 616) = *MEMORY[0x1E695F060];

    [(UILabel *)fit _invalidateLabelMetrics];
  }
}

- (void)_setDelegate:(id)delegate
{
  value = delegate;
  _delegate = [(UILabel *)self _delegate];

  if (_delegate != value)
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

- (CGRect)_drawTextInRect:(CGRect)rect baselineCalculationOnly:(BOOL)only
{
  if (self)
  {
    v4 = [(UILabel *)self _drawTextInRect:only baselineCalculationOnly:0 returningDeviceMetricsOfFirstLine:0 returningMultilineDeviceMetrics:0 forceMultiline:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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

- (double)_drawTextInRect:(int)rect baselineCalculationOnly:(unsigned __int8)only returningDeviceMetricsOfFirstLine:(int)line returningMultilineDeviceMetrics:(double)metrics forceMultiline:(double)multiline
{
  v265 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0.0;
  }

  multilineCopy = multiline;
  metricsCopy = metrics;
  *(self + 464) = metrics;
  *(self + 472) = multiline;
  *(self + 480) = a8;
  *(self + 488) = a9;
  _content = [self _content];
  if (![_content length] && (a2 & 1) == 0)
  {
    v18 = *MEMORY[0x1E695F050];
    goto LABEL_184;
  }

  *(self + 448) = 0;
  *(self + 456) = 0;
  *(self + 496) = -1;
  _stringDrawingContext = [self _stringDrawingContext];
  rect_16 = [(UILabel *)self _synthesizedTextAttributes];
  rect = only;
  if (a2 && ![_content length])
  {
    v27 = objc_alloc(MEMORY[0x1E696AAB0]);
    v28 = MEMORY[0x1E695DF20];
    font = [self font];
    v30 = font;
    if (!font)
    {
      v30 = +[UILabel defaultFont];
    }

    v31 = [v28 dictionaryWithObject:v30 forKey:*off_1E70EC918];
    v32 = [v27 initWithString:@"X" attributes:v31];

    if (!font)
    {
    }

    v20 = 1;
    lightReactiveAttributedString = v32;
  }

  else
  {
    v20 = 0;
    lightReactiveAttributedString = 0;
  }

  [_stringDrawingContext setWantsNumberOfLineFragments:1];
  if (line)
  {
    [_stringDrawingContext setMaximumNumberOfLines:0];
  }

  [(UILabel *)self _updateScaledMetricsForRect:metricsCopy, multilineCopy, a8, a9];
  if (*(self + 608))
  {
    [_stringDrawingContext setLayout:0];
  }

  v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
  if (lightReactiveAttributedString)
  {
LABEL_37:
    v36 = *(self + 608);
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

  if ([_content isAttributed])
  {
    v23 = *(self + 744);
    goto LABEL_15;
  }

  [self _hyphenationFactor];
  if (v33 > 0.0)
  {
    v23 = *(self + 744);
    if ((v23 & 0x4000000) != 0)
    {
LABEL_15:
      if ((v23 & 0x30000000000) != 0)
      {
        _content2 = [self _content];
        intelligenceLightAttributedStrings = [_content2 intelligenceLightAttributedStrings];

        if ((*(self + 749) & 1) != 0 && ([intelligenceLightAttributedStrings lightReactiveAttributedString], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
        {
          lightReactiveAttributedString = [intelligenceLightAttributedStrings lightReactiveAttributedString];
        }

        else
        {
          lightReactiveAttributedString = 0;
        }

        if ((*(self + 749) & 2) != 0)
        {
          lightInertAttributedString = [intelligenceLightAttributedStrings lightInertAttributedString];

          if (lightInertAttributedString)
          {
            lightInertAttributedString2 = [intelligenceLightAttributedStrings lightInertAttributedString];

            lightReactiveAttributedString = lightInertAttributedString2;
          }
        }

        if (lightReactiveAttributedString)
        {
          [_stringDrawingContext setCachesLayout:0];

LABEL_36:
          v20 = 1;
          goto LABEL_37;
        }
      }

      lightReactiveAttributedString = [self _synthesizedAttributedText];
      goto LABEL_36;
    }
  }

  lightReactiveAttributedString = [_content string];
  if (*(self + 608))
  {
LABEL_39:
    _synthesizedAttributedText = [self _synthesizedAttributedText];

    v36 = *(self + 608);
    lightReactiveAttributedString = _synthesizedAttributedText;
LABEL_40:
    v38 = *(self + 744);
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
        v36 = *(self + 608);
        if (!v36)
        {
          v258 = 0.0;
LABEL_62:
          v51 = self + v39[930];
          *(v51 + 48) = v36;
          v52 = *(self + 440);
          if (v52 >= 1)
          {
            if (v36 >= v52)
            {
              v36 = *(self + 440);
            }

            *(v51 + 48) = v36;
          }

          goto LABEL_66;
        }

        v38 = *(self + 744);
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
  v41 = multilineCopy;
  v42 = *(self + 744);
  if (*(self + 440) == 1)
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

    [_stringDrawingContext setWantsBaselineOffset:1];
    _stringDrawingOptions = [self _stringDrawingOptions];
    if (!v20)
    {
      _defaultAttributes = [self _defaultAttributes];
      [(UILabel *)self _boundingRectWithString:_stringDrawingOptions size:_defaultAttributes options:_stringDrawingContext attributes:v43 context:v44];
      v258 = v121;

      [_stringDrawingContext baselineOffset];
      v250 = 0;
      v238 = 0;
      *(self + 496) = 1;
      rect2 = 0.0;
      v40 = v122;
      multilineCopy = v41;
      goto LABEL_78;
    }

    v46 = [(UILabel *)self _boundingRectWithAttributedString:lightReactiveAttributedString size:_stringDrawingOptions options:_stringDrawingContext context:v43, v44];
    v258 = v47;
    [_stringDrawingContext baselineOffset];
    v40 = v48;
    v250 = 0;
    *(self + 496) = 1;
    rect2 = 0.0;
    multilineCopy = v41;
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

    [_stringDrawingContext setWantsBaselineOffset:1];
    _stringDrawingOptions2 = [self _stringDrawingOptions];
    if (v20)
    {
      v77 = [(UILabel *)self _boundingRectWithAttributedString:lightReactiveAttributedString size:_stringDrawingOptions2 options:_stringDrawingContext context:v75, v74];
    }

    else
    {
      v77 = [(UILabel *)self _boundingRectWithString:lightReactiveAttributedString size:_stringDrawingOptions2 options:rect_16 attributes:_stringDrawingContext context:v75, v74];
    }

    v258 = v78;
    [_stringDrawingContext baselineOffset];
    v40 = v123;
    [_stringDrawingContext firstBaselineOffset];
    v250 = 0;
    rect2 = 0.0;
    multilineCopy = v41;
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
    [lightReactiveAttributedString attribute:v54 atIndex:0 longestEffectiveRange:buf inRange:{0, objc_msgSend(lightReactiveAttributedString, "length")}];
  }

  else
  {
    [lightReactiveAttributedString attribute:*off_1E70EC8D8 atIndex:0 effectiveRange:buf];
  }
  v55 = ;
  y = buf[0].origin.y;
  if (*&y == [lightReactiveAttributedString length] || !v55)
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
      v57 = lightReactiveAttributedString;
    }

    v58 = [v57 mutableCopy];
    [v58 removeAttribute:v54 range:{0, objc_msgSend(v58, "length")}];
    [_stringDrawingContext setWantsBaselineOffset:1];
    cachesLayout = [_stringDrawingContext cachesLayout];
    [_stringDrawingContext setCachesLayout:0];
    v60 = -[UILabel _boundingRectWithAttributedString:size:options:context:](self, v58, [self _stringDrawingOptions], _stringDrawingContext, a8, 3.40282347e38);
    v258 = v61;
    [_stringDrawingContext baselineOffset];
    v40 = v62;
    [_stringDrawingContext firstBaselineOffset];
    [_stringDrawingContext setCachesLayout:cachesLayout];
  }

  v238 = 1;
LABEL_78:
  rect_12 = a2;
  UIRoundToViewScale(self);
  UIRoundToViewScale(self);
  *(self + 456) = v63;
  UIRoundToViewScale(self);
  *(self + 448) = v64;
  if (*(self + 496) == -1)
  {
    *(self + 496) = [_stringDrawingContext numberOfLineFragments];
  }

  v257 = *(self + 456) - v40;
  v249 = lightReactiveAttributedString;
  v251 = a8;
  if ([self lineSpacing])
  {
    _defaultAttributes2 = [self _defaultAttributes];
    v66 = [_defaultAttributes2 objectForKey:*off_1E70EC918];

    if (v238)
    {
      _synthesizedAttributedText2 = v250;
      if (!v250)
      {
        _synthesizedAttributedText2 = [self _synthesizedAttributedText];
      }

      rect_24 = _stringDrawingContext;
      v68 = _synthesizedAttributedText2;
      v69 = v66;
      v70 = [v68 length];
      v235 = _content;
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

      UICeilToViewScale(self);
      v73 = v87;
      if (!v250)
      {
      }

      _content = v235;
      _stringDrawingContext = rect_24;
      lightReactiveAttributedString = v249;
      v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
    }

    else
    {
      [v66 lineHeight];
      UICeilToViewScale(self);
      v73 = v72;
    }

    v257 = v257 - (v73 - [self lineSpacing]);
  }

  v88 = rect_12;
  v89 = v250;
  if (v250)
  {
    v90 = *(self + 744);
    if (*(self + 440) != 1 || (v91 = (v90 >> 4) & 3, v91 == 1))
    {
      if ((v90 & 4) != 0)
      {
        v266.origin.x = metricsCopy;
        v266.origin.y = multilineCopy;
        v266.size.width = a8;
        v266.size.height = a9;
        CGRectGetMinY(v266);
        v267.origin.x = metricsCopy;
        v267.origin.y = multilineCopy;
        v267.size.width = a8;
        v267.size.height = a9;
        CGRectGetHeight(v267);
        UICeilToViewScale(self);
        v257 = v95;
        UICeilToViewScale(self);
      }

      else
      {
        v93 = *(self + 608);
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

  [self _currentScreenScale];
  *(self + 504) = UIRectRoundToScale(metricsCopy, v257, a8, v258, v96);
  *(self + 512) = v97;
  *(self + 520) = v98;
  *(self + 528) = v99;
  v100 = rect | rect;
  if (((rect | rect) & 1) == 0 && ![self _drawsDebugGlyphPathBoundsClipping])
  {
    v109 = 0;
    goto LABEL_167;
  }

  v237 = metricsCopy;
  _stringDrawingOptions3 = [self _stringDrawingOptions];
  v102 = MEMORY[0x1E695F058];
  v104 = *MEMORY[0x1E695F058];
  v103 = *(MEMORY[0x1E695F058] + 8);
  rect_24a = *(MEMORY[0x1E695F058] + 24);
  rect2a = *(MEMORY[0x1E695F058] + 16);
  if (rect)
  {
    if (rect)
    {
      goto LABEL_133;
    }

LABEL_128:
    [_stringDrawingContext setWantsMultilineDeviceMetrics:1];
    if (v250)
    {
      v105 = v258;
      if (v258 <= 0.0)
      {
LABEL_152:
        [_stringDrawingContext multilineDeviceMetricsRect];
        v18 = v124;
        v117 = v125;
        v118 = v126;
        v119 = v127;
        v109 = 1;
        goto LABEL_153;
      }

      v106 = _stringDrawingOptions3 | 8;
      selfCopy2 = self;
      v108 = v250;
    }

    else
    {
      if (*(self + 440) == 1)
      {
        [_stringDrawingContext setMinimumScaleFactor:0.0];
      }

      if (!v238)
      {
        [(UILabel *)self _drawWithString:lightReactiveAttributedString rect:_stringDrawingOptions3 | 8 options:rect_16 attributes:_stringDrawingContext context:v237, v257, a8, v258];
        goto LABEL_152;
      }

      v106 = _stringDrawingOptions3 | 8;
      selfCopy2 = self;
      v108 = lightReactiveAttributedString;
    }

    [(UILabel *)selfCopy2 _drawWithAttributedString:v108 rect:v106 options:_stringDrawingContext context:v237, v257, a8, v258];
    goto LABEL_152;
  }

  if ([self _drawsDebugGlyphPathBoundsClipping] && (rect & 1) == 0)
  {
    goto LABEL_128;
  }

  if (!rect)
  {
    v109 = 0;
    v119 = rect_24a;
    v118 = rect2a;
    v117 = v103;
    v18 = v104;
    goto LABEL_153;
  }

LABEL_133:
  v110 = _stringDrawingOptions3 & 0xFFFFFFFFFFFFFFFELL;
  if (v250)
  {
    v111 = v110 | 8;
    v112 = v250;
  }

  else
  {
    if (*(self + 440) == 1)
    {
      [_stringDrawingContext setMinimumScaleFactor:0.0];
    }

    if (!v238)
    {
      [lightReactiveAttributedString boundingRectWithSize:v110 | 8 options:rect_16 attributes:_stringDrawingContext context:{a8, v258}];
      goto LABEL_145;
    }

    v111 = v110 | 8;
    v112 = lightReactiveAttributedString;
  }

  [v112 boundingRectWithSize:v111 options:_stringDrawingContext context:{a8, v258}];
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
    v117 = *(self + 448) - v117 - v119;
  }

  v269.origin.x = v18;
  v269.origin.y = v117;
  v269.size.width = v118;
  v269.size.height = v119;
  v293.origin.x = v104;
  v293.origin.y = v103;
  v293.size.height = rect_24a;
  v293.size.width = rect2a;
  if (CGRectEqualToRect(v269, v293) || ![self _drawsDebugGlyphPathBoundsClipping])
  {
    goto LABEL_166;
  }

  [self bounds];
  if (CGRectGetHeight(v270) == 0.0 || ([self bounds], CGRectGetWidth(v271) == 0.0) || !-[UIView _isInVisibleHierarchy](self) || (objc_msgSend(self, "isHiddenOrHasHiddenAncestor") & 1) != 0)
  {
    v211 = 0;
    goto LABEL_162;
  }

  v236 = _content;
  v217 = *(self + 64);
  [self convertRect:v18 toView:{v117, v118, v119}];
  r2_16 = v141;
  r2_24 = v140;
  v230 = v143;
  v232 = v142;
  v263 = 1;
  *&v259 = 0;
  selfCopy3 = self;
  r2 = 0;
  v145 = 0;
  x = v104;
  v147 = v103;
  recta = rect2a;
  rect1a = rect_24a;
  v148 = selfCopy3;
  r2_8 = selfCopy3;
  do
  {
    _viewControllerForAncestor = [v148 _viewControllerForAncestor];
    if ([_viewControllerForAncestor _viewControllerIgnoresClippedGlyphPathFrame])
    {

      v145 = 0;
      goto LABEL_205;
    }

    if (v263 == 1)
    {
      v150 = *(v102 + 16);
      buf[0].origin = *v102;
      buf[0].size = v150;
      if ((selfCopy3[747] & 0x10) != 0 && ([v148 clipsToBounds] & 1) == 0)
      {
        layer = [selfCopy3 layer];
        if ([layer _glyphPathBoundsExceedsLayers:buf drawableGlyphPathBounds:&v259 edgesClipped:{v18, v117, v118, v119}])
        {
          v152 = selfCopy3;

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
        selfCopy3 = r2_8;
      }

      if (v263 == 1 && [v148 clipsToBounds] && objc_msgSend(v148, "_clipsGlyphPathFrame:shouldContinueSuperviewTraversal:", &v263, r2_24, r2_16, v232, v230))
      {
        v154 = v148;

        [v154 bounds];
        [selfCopy3 convertRect:v154 fromView:?];
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
        window = [v154 window];
        [v154 convertRect:window toView:{v166, v168, rect1d, rectc}];
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

    superview = [v148 superview];

    v148 = superview;
  }

  while (superview);
  if ((r2 & 1) == 0)
  {
LABEL_205:
    v211 = 0;
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
  v211 = [(_UITextClippingDebugInfo *)v181 initWithClippingView:v154 visibleBounds:0 ignoresResult:v259 edgesClipped:x, v147, v213, v211];
LABEL_220:

  if (!v211)
  {
    _content = v236;
    goto LABEL_162;
  }

  if (![(_UITextClippingDebugInfo *)v211 hasClippedEdges])
  {
    _content = v236;
    if ([(_UITextClippingDebugInfo *)v211 ignoresResult]&& [(_UITextClippingDebugInfo *)v211 hasClippedEdges])
    {
      goto LABEL_165;
    }

LABEL_162:
    _glyphPathBoundsIntersectionData = [self _glyphPathBoundsIntersectionData];
    v130 = _glyphPathBoundsIntersectionData;
    if (_glyphPathBoundsIntersectionData)
    {
      [_glyphPathBoundsIntersectionData setClippingView:0];
      [v130 setGlyphPathBounds:v104, v103, rect2a, rect_24a];
      [v130 setAvailableBounds:v104, v103, rect2a, rect_24a];
    }

    goto LABEL_164;
  }

  v182 = getenv("__ViewHierarchyCaptureInProgress");
  _content = v236;
  if (!v182 || *v182 != 49)
  {
    v183 = +[UIColor systemGreenColor];
    [v183 setStroke];

    v119 = [UIBezierPath bezierPathWithRect:v18, v117, v118, v119];
    [v119 strokeWithBlendMode:0 alpha:1.0];
    v185 = +[UIColor systemRedColor];
    [v185 setFill];

    r2_16a = v104;
    r2_24a = v103;
    v231 = rect_24a;
    v233 = rect2a;
    if ([(_UITextClippingDebugInfo *)v211 topEdgeClipped])
    {
      [(_UITextClippingDebugInfo *)v211 visibleBounds];
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
    if ([(_UITextClippingDebugInfo *)v211 bottomEdgeClipped])
    {
      [(_UITextClippingDebugInfo *)v211 visibleBounds];
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

    if ([(_UITextClippingDebugInfo *)v211 leftEdgeClipped]|| [(_UITextClippingDebugInfo *)v211 rightEdgeClipped])
    {
      [(_UITextClippingDebugInfo *)v211 visibleBounds];
      v219 = v194;
      [(_UITextClippingDebugInfo *)v211 visibleBounds];
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

      if ([(_UITextClippingDebugInfo *)v211 leftEdgeClipped])
      {
        [(_UITextClippingDebugInfo *)v211 visibleBounds];
        v199 = [UIBezierPath bezierPathWithRect:?];
        [v199 fillWithBlendMode:0 alpha:0.6];
      }

      if ([(_UITextClippingDebugInfo *)v211 rightEdgeClipped])
      {
        [(_UITextClippingDebugInfo *)v211 visibleBounds];
        v198 = [UIBezierPath bezierPathWithRect:CGRectGetMaxX(v291) + -2.5, v234, 2.5, v198];
        [v198 fillWithBlendMode:0 alpha:0.6];
      }
    }

    v22 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
    selfCopy3 = r2_8;
  }

  if (([selfCopy3 _glyphPathBoundsClippingDetected] & 1) == 0)
  {
    clippingView = [(_UITextClippingDebugInfo *)v211 clippingView];
    [(UILabel *)selfCopy3 _markGlyphPathBoundsClippingDetected:clippingView glyphPathBounds:v18 availableBounds:v117, v118, v119, v237, v257, v251, v258];

    v130 = _UIClippingFaultLog();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
    {
      text = [selfCopy3 text];
      clippingView2 = [(_UITextClippingDebugInfo *)v211 clippingView];
      LODWORD(buf[0].origin.x) = 138543874;
      *(&buf[0].origin.x + 4) = selfCopy3;
      WORD2(buf[0].origin.y) = 2114;
      *(&buf[0].origin.y + 6) = text;
      HIWORD(buf[0].size.width) = 2114;
      *&buf[0].size.height = clippingView2;
      v204 = clippingView2;
      _os_log_fault_impl(&dword_188A29000, v130, OS_LOG_TYPE_FAULT, "[Internal] Text Clipping Detected: %{public}@ '%{public}@'. Clipping View: %{public}@", buf, 0x20u);
    }

LABEL_164:
  }

LABEL_165:

  v88 = rect_12;
  v89 = v250;
LABEL_166:
  metricsCopy = v237;
  if ((v100 & 1) == 0)
  {
LABEL_167:
    if ((v109 & 1) == 0 && (v88 & 1) == 0)
    {
      if ((*(self + v22[926] + 5) & 8) != 0)
      {
        _delegate = [self _delegate];
        [_delegate _glyphPathsBoundingRectWillChange:self];
      }

      _stringDrawingOptions4 = [self _stringDrawingOptions];
      if (v89)
      {
        v133 = v258;
        if (v258 > 0.0)
        {
          selfCopy5 = self;
          v135 = v89;
          goto LABEL_178;
        }
      }

      else
      {
        if (*(self + 440) == 1)
        {
          [_stringDrawingContext setMinimumScaleFactor:0.0];
        }

        if (v238)
        {
          selfCopy5 = self;
          v135 = v249;
LABEL_178:
          [(UILabel *)selfCopy5 _drawWithAttributedString:v135 rect:_stringDrawingOptions4 options:_stringDrawingContext context:metricsCopy, v257, v251, v258];
        }

        else
        {
          [(UILabel *)self _drawWithString:v249 rect:_stringDrawingOptions4 options:rect_16 attributes:_stringDrawingContext context:metricsCopy, v257, v251, v258];
        }
      }

      layout = [_stringDrawingContext layout];
      v137 = *(self + 600);
      *(self + 600) = layout;

      if ((*(self + v22[926] + 5) & 4) != 0)
      {
        _delegate2 = [self _delegate];
        [_delegate2 _glyphPathsBoundingRectDidChange:self];
      }
    }

    v18 = metricsCopy;
  }

LABEL_184:
  return v18;
}

- (void)_markGlyphPathBoundsClippingDetected:(double)detected glyphPathBounds:(double)bounds availableBounds:(double)availableBounds
{
  v19 = a2;
  _glyphPathBoundsIntersectionData = [self _glyphPathBoundsIntersectionData];
  if (!_glyphPathBoundsIntersectionData)
  {
    _glyphPathBoundsIntersectionData = objc_alloc_init(_UIGlyphPathBoundsIntersectionViewData);
  }

  value = _glyphPathBoundsIntersectionData;
  [(_UIGlyphPathBoundsIntersectionViewData *)_glyphPathBoundsIntersectionData setGlyphPathBounds:detected, bounds, availableBounds, a6];
  [(_UIGlyphPathBoundsIntersectionViewData *)value setClippingView:v19];

  [(_UIGlyphPathBoundsIntersectionViewData *)value setAvailableBounds:a7, a8, a9, a10];
  objc_setAssociatedObject(self, &_UIGylphPathBoundsClippingAssociationKey, value, 1);
}

- (BOOL)_glyphPathBoundsClippingDetected
{
  _glyphPathBoundsIntersectionData = [(UILabel *)self _glyphPathBoundsIntersectionData];
  v3 = _glyphPathBoundsIntersectionData;
  if (_glyphPathBoundsIntersectionData)
  {
    clippingView = [_glyphPathBoundsIntersectionData clippingView];
    v5 = clippingView != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_clipsGlyphPathFrame:(CGRect)frame shouldContinueSuperviewTraversal:(BOOL *)traversal
{
  v7.receiver = self;
  v7.super_class = UILabel;
  v5 = [(UIView *)&v7 _clipsGlyphPathFrame:frame.origin.x shouldContinueSuperviewTraversal:frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    *traversal = 0;
  }

  return v5;
}

- (CGRect)_drawTextInRect:(CGRect)rect
{
  [(UILabel *)self _drawTextInRect:0 forceMultiline:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_drawTextInRect:(CGRect)rect forceMultiline:(BOOL)multiline
{
  v4 = [(UILabel *)self _drawTextInRect:0 baselineCalculationOnly:0 returningDeviceMetricsOfFirstLine:multiline returningMultilineDeviceMetrics:rect.origin.x forceMultiline:rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)layerWillDraw:(id)draw
{
  *&self->_textLabelFlags &= ~0x1000000uLL;
  v3.receiver = self;
  v3.super_class = UILabel;
  [(UIView *)&v3 layerWillDraw:draw];
}

- (void)drawRect:(CGRect)rect
{
  [(UIView *)self bounds:rect.origin.x];
  v5 = [(UILabel *)self _sizingRuleAdjustedBoundsForBounds:v4];

  [(UILabel *)self drawTextInRect:v5];
}

- (void)setMarqueeEnabled:(BOOL)enabled
{
  if (!enabled)
  {
    textLabelFlags = self->_textLabelFlags;
    if ((*&textLabelFlags & 0x200) == 0)
    {
      return;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFFFFDFFLL);
    goto LABEL_7;
  }

  numberOfLines = [(UILabel *)self numberOfLines];
  if ((numberOfLines == 1) != ((*&self->_textLabelFlags & 0x200) == 0))
  {
    return;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFDFFLL | ((numberOfLines == 1) << 9));
  if (numberOfLines != 1)
  {
LABEL_7:
    [(UILabel *)self setMarqueeRunning:0];
    v6 = 0;
    goto LABEL_8;
  }

  [(UILabel *)self setLineBreakMode:2];
  layer = [(UIView *)self layer];
  [layer setOpaque:0];

  v6 = 1;
LABEL_8:
  v8.receiver = self;
  v8.super_class = UILabel;
  [(UIView *)&v8 setNeedsDisplay];
  [(UIView *)self _setTracksFocusedAncestors:v6];
}

- (void)_setMarqueeUpdatable:(BOOL)updatable
{
  v3 = 4096;
  if (!updatable)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (id)_siblingMarqueeLabels
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  superview = [self superview];
  subviews = [superview subviews];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = subviews;
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
          [array addObject:{v10, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (double)_maximumMarqueeTextWidth
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0.0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  _siblingMarqueeLabels = [(UILabel *)self _siblingMarqueeLabels];
  v2 = [_siblingMarqueeLabels countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_siblingMarqueeLabels);
        }

        [*(*(&v9 + 1) + 8 * i) textSizeForWidth:{3.40282347e38, v9}];
        if (v7 > v5)
        {
          v5 = v7;
        }
      }

      v3 = [_siblingMarqueeLabels countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = objc_getAssociatedObject(self, &__marqueeAnimationDelegateKey);
  if (!v2)
  {
    v2 = [[_UILabelMarqueeAnimationDelegate alloc] initWithLabel:self];
    objc_setAssociatedObject(self, &__marqueeAnimationDelegateKey, v2, 1);
  }

  return v2;
}

- (void)_stopMarqueeWithRedisplay:(BOOL)redisplay
{
  redisplayCopy = redisplay;
  marqueeAnimations = self->_marqueeAnimations;
  self->_marqueeAnimations = 0;

  marqueeMaskAnimations = self->_marqueeMaskAnimations;
  self->_marqueeMaskAnimations = 0;

  v7 = [(UIView *)self viewWithTag:4032914800];
  v8 = v7;
  if (v7)
  {
    [v7 removeFromSuperview];
    if (redisplayCopy)
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

- (void)setMarqueeRunning:(BOOL)running
{
  v4 = 1024;
  if (!running)
  {
    v4 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFFFFFFFFFBFFLL | v4);
  if (running)
  {

    [(UILabel *)self _startMarqueeIfNecessary];
  }

  else if ([(UILabel *)self marqueeRunning])
  {

    [(UILabel *)self _stopMarqueeWithRedisplay:1];
  }
}

- (void)_ancestorWillUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  nextFocusedView = [contextCopy nextFocusedView];
  v9 = nextFocusedView && [(UIView *)self isDescendantOfView:nextFocusedView]&& [(UIView *)self _tracksFocusedAncestors];
  [(UILabel *)self setMarqueeRunning:v9];
  v10.receiver = self;
  v10.super_class = UILabel;
  [(UIView *)&v10 _ancestorWillUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
}

- (void)setDrawsUnderline:(BOOL)underline
{
  underlineCopy = underline;
  _content = [(UILabel *)self _content];
  v6 = *off_1E70ECAD8;
  v10 = _content;
  v7 = [_content defaultValueForAttribute:*off_1E70ECAD8];
  if (([v7 integerValue] & 1) != underlineCopy)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:underlineCopy];
    v9 = [v10 contentByApplyingAttributeToEntireRange:v6 value:v8];
    [(UILabel *)self _setContent:v9];
  }
}

- (BOOL)drawsUnderline
{
  if (self)
  {
    _content = [(UILabel *)self _content];
    v3 = [_content defaultValueForAttribute:*off_1E70ECAD8];

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

- (void)_setUsesSimpleTextEffects:(BOOL)effects
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x20000) == 0) ^ effects) & 1) == 0)
  {
    v4 = 0x20000;
    if (!effects)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFFDFFFFLL | v4);
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)_setTextAlignmentFollowsWritingDirection:(BOOL)direction
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x100000) == 0) ^ direction) & 1) == 0)
  {
    v4 = 0x100000;
    if (!direction)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFEFFFFFLL | v4);
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)_setTextAlignmentMirrored:(BOOL)mirrored
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x200000) == 0) ^ mirrored) & 1) == 0)
  {
    v4 = 0x200000;
    if (!mirrored)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFDFFFFFLL | v4);
    v5.receiver = self;
    v5.super_class = UILabel;
    [(UIView *)&v5 setNeedsDisplay];
  }
}

- (void)_setOverallWritingDirectionFollowsLayoutDirection:(BOOL)direction
{
  if (((((*&self->_textLabelFlags & 0x2000000) == 0) ^ direction) & 1) == 0)
  {
    v3 = 0x2000000;
    if (!direction)
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
  __tightBoundingBoxLayoutGuide = [(UILabel *)self __tightBoundingBoxLayoutGuide];
  if (!__tightBoundingBoxLayoutGuide)
  {
    __tightBoundingBoxLayoutGuide = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:__tightBoundingBoxLayoutGuide];
    [(UILayoutGuide *)__tightBoundingBoxLayoutGuide _setLockedToOwningView:1];
    [(UILayoutGuide *)__tightBoundingBoxLayoutGuide _setAllowsNegativeDimensions:1];
    [(UILayoutGuide *)__tightBoundingBoxLayoutGuide setIdentifier:@"UILabelTightBoundingBoxLayoutGuide"];
    _frameLayoutItem = [(UIView *)self _frameLayoutItem];
    topAnchor = [(UILayoutGuide *)__tightBoundingBoxLayoutGuide topAnchor];
    topAnchor2 = [_frameLayoutItem topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];

    leftAnchor = [(UILayoutGuide *)__tightBoundingBoxLayoutGuide leftAnchor];
    leftAnchor2 = [_frameLayoutItem leftAnchor];
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];

    bottomAnchor = [_frameLayoutItem bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)__tightBoundingBoxLayoutGuide bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

    rightAnchor = [_frameLayoutItem rightAnchor];
    rightAnchor2 = [(UILayoutGuide *)__tightBoundingBoxLayoutGuide rightAnchor];
    v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];

    [v7 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-top"];
    [v10 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-left"];
    [v13 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-bottom"];
    [v16 setIdentifier:@"UILabelTightBoundingBoxLayoutGuide-right"];
    v19[0] = v7;
    v19[1] = v10;
    v19[2] = v13;
    v19[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    [(UILayoutGuide *)__tightBoundingBoxLayoutGuide _setSystemConstraints:v17];
    [(UILabel *)self _updateTightBoundingBoxLayoutGuideConstraintsIfNecessary];
    [MEMORY[0x1E69977A0] activateConstraints:v17];
    if (self)
    {
      objc_setAssociatedObject(self, &kTightBoudingBoxLayoutGuideKey, __tightBoundingBoxLayoutGuide, 1);
    }
  }

  return __tightBoundingBoxLayoutGuide;
}

- (void)_applicationWillResignActiveNotification:(id)notification
{
  layer = [(UIView *)self layer];
  [layer setSpeed:0.0];
  [layer setTimeOffset:CACurrentMediaTime()];
}

- (void)_applicationDidBecomeActiveNotification:(id)notification
{
  layer = [(UIView *)self layer];
  LODWORD(v3) = 1.0;
  [layer setSpeed:v3];
  [layer setTimeOffset:0.0];
}

- (void)_setLightSourceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (self->_lightSourceDescriptor != descriptorCopy)
  {
    v7 = descriptorCopy;
    objc_storeStrong(&self->_lightSourceDescriptor, descriptor);
    [(UILabel *)self _removeLightSourceView];
    descriptorCopy = v7;
    if (v7)
    {
      [(UILabel *)self _addLightSourceView];
      descriptorCopy = v7;
    }

    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      layer = [(UIView *)self layer];
      [layer reactToLightChanged];

      descriptorCopy = v7;
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
    topAnchor = [v6 topAnchor];
    topAnchor2 = [(UIView *)self->_lightContainerView topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[0] = v31;
    leadingAnchor = [v6 leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_lightContainerView leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[1] = v28;
    trailingAnchor = [v6 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_lightContainerView trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[2] = v25;
    v34 = v6;
    bottomAnchor = [v6 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_lightContainerView bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v21;
    topAnchor3 = [(UIView *)self->_lightContainerView topAnchor];
    topAnchor4 = [(UIView *)self topAnchor];
    v18 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v35[4] = v18;
    leadingAnchor3 = [(UIView *)self->_lightContainerView leadingAnchor];
    leadingAnchor4 = [(UIView *)self leadingAnchor];
    v7 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v35[5] = v7;
    trailingAnchor3 = [(UIView *)self->_lightContainerView trailingAnchor];
    trailingAnchor4 = [(UIView *)self trailingAnchor];
    v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v35[6] = v10;
    bottomAnchor3 = [(UIView *)self->_lightContainerView bottomAnchor];
    bottomAnchor4 = [(UIView *)self bottomAnchor];
    v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v35[7] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:8];
    [v24 activateConstraints:v14];

    if ((*(&self->_textLabelFlags + 3) & 0x10) != 0)
    {
      layer = [(UIView *)self layer];
      [layer setLightContainerView:self->_lightContainerView];
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
    layer = [(UIView *)self layer];
    [layer setLightContainerView:0];
  }
}

- (void)_addViewsForLabelViewTextAttachments:(id)attachments previousLabelViewTextAttachments:(id)textAttachments
{
  v36 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  textAttachmentsCopy = textAttachments;
  if (([attachmentsCopy isEqualToArray:textAttachmentsCopy] & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = textAttachmentsCopy;
    v8 = textAttachmentsCopy;
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

          view = [*(*(&v30 + 1) + 8 * i) view];
          [view removeFromSuperview];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = attachmentsCopy;
    v14 = attachmentsCopy;
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
          view2 = [v19 view];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __124__UILabel_UILabel_Internal_IntelligenceLightSupport___addViewsForLabelViewTextAttachments_previousLabelViewTextAttachments___block_invoke;
          v24[3] = &unk_1E712A038;
          v25 = view2;
          v21 = view2;
          [v19 setLayoutInRect:v24];
          [(UIView *)self addSubview:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }

    textAttachmentsCopy = v22;
    attachmentsCopy = v23;
  }
}

- (void)_setDrawingLightReactiveLayer:(BOOL)layer
{
  v3 = 0x10000000000;
  if (!layer)
  {
    v3 = 0;
  }

  self->_textLabelFlags = (*&self->_textLabelFlags & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)_setDrawingLightInertLayer:(BOOL)layer
{
  v3 = 0x20000000000;
  if (!layer)
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

- (void)_setFirstLineCapFrameOriginY:(double)y
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self _capOffsetFromBoundsTop];

  [(UILabel *)self setFrame:v6, y - v11, v8, v10];
}

- (void)_setFirstLineBaselineFrameOriginY:(double)y
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self _firstLineBaselineOffsetFromBoundsTop];

  [(UILabel *)self setFrame:v6, y - v11, v8, v10];
}

- (double)_lastLineBaselineFrameOriginY
{
  [(UIView *)self frame];
  v4 = v3;
  [(UILabel *)self _lastLineBaseline];
  return v5 + v4;
}

- (void)_setLastLineBaselineFrameOriginY:(double)y
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self _lastLineBaseline];

  [(UILabel *)self setFrame:v6, y - v11, v8, v10];
}

- (void)_setWantsContentAwareTypesettingLanguage:(BOOL)language
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x1000000000) == 0) ^ language) & 1) == 0)
  {
    v4 = 0x1000000000;
    if (!language)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFEFFFFFFFFFLL | v4);
    [(UILabel *)self _adjustFontForTypesettingLanguage];
  }
}

- (void)_setVerticalTextEnabled:(BOOL)enabled
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x8000000000) == 0) ^ enabled) & 1) == 0)
  {
    v6 = 0;
    v7 = 0x8000000000;
    if (!enabled)
    {
      v7 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFF7FFFFFFFFFLL | v7);
    if (enabled)
    {
      v6 = [[_UILabelVerticalTextLayoutManager alloc] initWithConfiguration:self->_configuration];
    }

    v8 = v6;
    objc_setAssociatedObject(self, &kTextLayoutManagerKey, v6, 1);
    [(UILabel *)self _invalidateLabelDisplay];
    [(UILabel *)self _invalidateLabelSize];
  }
}

- (void)_setWantsUnderlineForAccessibilityButtonShapesEnabled:(BOOL)enabled
{
  textLabelFlags = self->_textLabelFlags;
  if (((((*&textLabelFlags & 0x40000) == 0) ^ enabled) & 1) == 0)
  {
    v4 = 0x40000;
    if (!enabled)
    {
      v4 = 0;
    }

    self->_textLabelFlags = (*&textLabelFlags & 0xFFFFFFFFFFFBFFFFLL | v4);
    [(UILabel *)self _accessibilityButtonShapesParametersDidChange];
  }
}

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v9.receiver = self;
  v9.super_class = UILabel;
  [(UIView *)&v9 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
  _screen = [(UIView *)self _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  if (_userInterfaceIdiom != idiom && (idiom == 3 || _userInterfaceIdiom == 3))
  {
    [(UILabel *)self _accessibilityButtonShapesParametersDidChange];
  }
}

- (void)_resetUsesExplicitPreferredMaxLayoutWidth
{
  _needsDoubleUpdateConstraintsPass = [(UILabel *)self _needsDoubleUpdateConstraintsPass];
  *&self->_textLabelFlags &= ~0x2000uLL;
  self->_preferredMaxLayoutWidth = 0.0;
  [(UIView *)self _needsDoubleUpdateConstraintsPassMayHaveChangedFrom:_needsDoubleUpdateConstraintsPass];

  [(UILabel *)self invalidateIntrinsicContentSize];
}

- (CGSize)textSizeForWidth:(double)width
{
  [(UILabel *)self textRectForBounds:0 limitedToNumberOfLines:0.0, 0.0, width, 3.40282347e38];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  [(UILabel *)self textRectForBounds:0 limitedToNumberOfLines:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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