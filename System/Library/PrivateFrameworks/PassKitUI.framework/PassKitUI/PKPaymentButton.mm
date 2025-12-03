@interface PKPaymentButton
+ (PKPaymentButton)buttonWithType:(PKPaymentButtonType)buttonType style:(PKPaymentButtonStyle)buttonStyle;
+ (PKPaymentButton)buttonWithType:(int64_t)type style:(int64_t)style disableCardArt:(BOOL)art;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)shouldShowDynamicButton;
- (CGSize)intrinsicContentSize;
- (PKPaymentButton)initWithCoder:(id)coder;
- (PKPaymentButton)initWithPaymentButtonType:(int64_t)type paymentButtonStyle:(int64_t)style disableCardArt:(BOOL)art;
- (int64_t)_effectiveButtonStyle;
- (void)_createHighlightFilterIfNecessary;
- (void)applyAccessibilityValues;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForInterfaceBuilder;
- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setStyle:(int64_t)style;
- (void)setType:(int64_t)type;
- (void)setupDynamicButtonViewIfNeeded;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDynamicButtonView;
@end

@implementation PKPaymentButton

+ (PKPaymentButton)buttonWithType:(PKPaymentButtonType)buttonType style:(PKPaymentButtonStyle)buttonStyle
{
  v4 = [objc_alloc(objc_opt_class()) initWithPaymentButtonType:buttonType paymentButtonStyle:buttonStyle disableCardArt:0];

  return v4;
}

+ (PKPaymentButton)buttonWithType:(int64_t)type style:(int64_t)style disableCardArt:(BOOL)art
{
  v5 = [objc_alloc(objc_opt_class()) initWithPaymentButtonType:type paymentButtonStyle:style disableCardArt:art];

  return v5;
}

- (PKPaymentButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPaymentButton;
  v5 = [(PKPaymentButton *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_style = [coderCopy decodeIntegerForKey:@"PKPaymentButtonStyle"];
    v5->_type = [coderCopy decodeIntegerForKey:@"PKPaymentButtonType"];
    v5->_disableCardArt = [coderCopy decodeBoolForKey:@"PKPaymentButtonDisableCardArt"];
    [(PKPaymentButton *)v5 applyAccessibilityValues];
  }

  return v5;
}

- (PKPaymentButton)initWithPaymentButtonType:(int64_t)type paymentButtonStyle:(int64_t)style disableCardArt:(BOOL)art
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v15.receiver = self;
  v15.super_class = PKPaymentButton;
  v10 = [(PKPaymentButton *)&v15 initWithFrame:v8, v9, 140.0, 30.0];
  v11 = v10;
  if (v10)
  {
    v10->_style = style;
    v10->_type = type;
    v10->_disableCardArt = art;
    v10->_cornerRadius = *MEMORY[0x1E69BB740];
    [(PKPaymentButton *)v10 applyAccessibilityValues];
  }

  if (![(PKPaymentButton *)v11 shouldShowDynamicButton])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    PKAnalyticsReportPaymentButtonRequest();
  }

  return v11;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
  if (self->_cornerRadius != cornerRadius)
  {
    self->_cornerRadius = cornerRadius;
    if (self->_dynamicButtonView)
    {
      [(PKPaymentButton *)self updateDynamicButtonView];
    }

    else
    {
      [(PKPaymentButton *)self setNeedsDisplay];
    }
  }
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    shouldShowDynamicButton = [(PKPaymentButton *)self shouldShowDynamicButton];
    dynamicButtonView = self->_dynamicButtonView;
    if (shouldShowDynamicButton)
    {
      if (dynamicButtonView)
      {
        [(UIView *)dynamicButtonView removeFromSuperview];
        v7 = self->_dynamicButtonView;
        self->_dynamicButtonView = 0;
      }

      [(PKPaymentButton *)self setupDynamicButtonViewIfNeeded];
    }

    else
    {
      if (dynamicButtonView)
      {
        [(UIView *)dynamicButtonView removeFromSuperview];
        v8 = self->_dynamicButtonView;
        self->_dynamicButtonView = 0;
      }

      [(PKPaymentButton *)self setNeedsDisplay];
    }

    [(PKPaymentButton *)self applyAccessibilityValues];
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (self->_dynamicButtonView)
    {
      [(PKPaymentButton *)self updateDynamicButtonView];
    }

    else
    {
      [(PKPaymentButton *)self setNeedsDisplay];
    }
  }
}

- (void)applyAccessibilityValues
{
  v3 = PKApplePayButtonAccessibilityTitleForType();
  [(PKPaymentButton *)self setAccessibilityLabel:v3];

  v4 = *MEMORY[0x1E69DD9B8];

  [(PKPaymentButton *)self setAccessibilityTraits:v4];
}

- (BOOL)shouldShowDynamicButton
{
  type = self->_type;
  [(PKPaymentButton *)self bounds];
  v6 = 0;
  if (type <= 3 && ((4u >> (type & 0xF)) & 1) == 0 && v5 < 80.0 && v4 > 150.0 && v5 > 30.0)
  {
    return !self->_disableCardArt;
  }

  return v6;
}

- (void)setupDynamicButtonViewIfNeeded
{
  [(PKPaymentButton *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  dynamicButtonView = self->_dynamicButtonView;
  if (!dynamicButtonView)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v3, v4, v5, v6}];
    [(UIView *)v12 setAutoresizingMask:18];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v12 setBackgroundColor:clearColor];

    [(UIView *)v12 setClipsToBounds:1];
    [(UIView *)v12 setUserInteractionEnabled:0];
    layer = [(UIView *)v12 layer];
    [layer setCornerRadius:self->_cornerRadius];

    v15 = PKLogFacilityTypeGetObject();
    v16 = os_signpost_id_make_with_pointer(v15, self);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "paymentbuttons:renderSmartButton", "", buf, 2u);
      }
    }

    v18 = [_TtC9PassKitUI28DynamicPaymentButtonSlotView alloc];
    type = self->_type;
    style = self->_style;
    traitCollection = [(PKPaymentButton *)self traitCollection];
    v22 = -[DynamicPaymentButtonSlotView initWithType:style:paymentRequest:buttonSize:interfaceStyle:action:](v18, "initWithType:style:paymentRequest:buttonSize:interfaceStyle:action:", type, style, 0, [traitCollection userInterfaceStyle], 0, v9, v10);

    v23 = v15;
    v24 = os_signpost_id_make_with_pointer(v23, self);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v25 = v24;
      if (os_signpost_enabled(v23))
      {
        *v28 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v23, OS_SIGNPOST_INTERVAL_END, v25, "paymentbuttons:renderSmartButton", "", v28, 2u);
      }
    }

    [(UIView *)v12 bounds];
    [(DynamicPaymentButtonSlotView *)v22 setFrame:?];
    [(DynamicPaymentButtonSlotView *)v22 setAutoresizingMask:18];
    [(UIView *)v12 addSubview:v22];
    v26 = self->_dynamicButtonView;
    self->_dynamicButtonView = v12;
    v27 = v12;

    [(PKPaymentButton *)self addSubview:self->_dynamicButtonView];
    dynamicButtonView = self->_dynamicButtonView;
  }

  [(UIView *)dynamicButtonView setFrame:v7, v8, v9, v10];
}

- (void)updateDynamicButtonView
{
  dynamicButtonView = self->_dynamicButtonView;
  if (dynamicButtonView)
  {
    [(PKPaymentButton *)self bounds];
    [(UIView *)dynamicButtonView setFrame:?];
    layer = [(UIView *)self->_dynamicButtonView layer];
    [layer setCornerRadius:self->_cornerRadius];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (![(PKPaymentButton *)self shouldShowDynamicButton])
  {
    [(PKPaymentButton *)self _effectiveButtonStyle];
    CurrentContext = UIGraphicsGetCurrentContext();
    traitCollection = [(PKPaymentButton *)self traitCollection];
    [traitCollection displayScale];

    v10 = PKCreateApplePayButtonImageWithCornerRadius();
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    CGContextDrawImage(CurrentContext, v12, v10);

    CGImageRelease(v10);
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPaymentButton;
  [(PKPaymentButton *)&v5 layoutSubviews];
  if ([(PKPaymentButton *)self shouldShowDynamicButton])
  {
    [(PKPaymentButton *)self setupDynamicButtonViewIfNeeded];
    [(PKPaymentButton *)self updateDynamicButtonView];
  }

  else
  {
    dynamicButtonView = self->_dynamicButtonView;
    if (dynamicButtonView)
    {
      [(UIView *)dynamicButtonView removeFromSuperview];
      v4 = self->_dynamicButtonView;
      self->_dynamicButtonView = 0;
    }

    [(PKPaymentButton *)self setNeedsDisplay];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 140.0;
  if (!self->_type)
  {
    v2 = 100.0;
  }

  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dealloc
{
  dynamicButtonView = self->_dynamicButtonView;
  if (dynamicButtonView)
  {
    [(UIView *)dynamicButtonView removeFromSuperview];
    v4 = self->_dynamicButtonView;
    self->_dynamicButtonView = 0;
  }

  v5.receiver = self;
  v5.super_class = PKPaymentButton;
  [(PKPaymentButton *)&v5 dealloc];
}

- (void)prepareForInterfaceBuilder
{
  v5.receiver = self;
  v5.super_class = PKPaymentButton;
  [(PKPaymentButton *)&v5 prepareForInterfaceBuilder];
  dynamicButtonView = self->_dynamicButtonView;
  if (dynamicButtonView)
  {
    [(UIView *)dynamicButtonView removeFromSuperview];
    v4 = self->_dynamicButtonView;
    self->_dynamicButtonView = 0;
  }

  [(PKPaymentButton *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PKPaymentButton;
  changeCopy = change;
  [(PKPaymentButton *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PKPaymentButton *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    if (self->_dynamicButtonView)
    {
      [(PKPaymentButton *)self updateDynamicButtonView];
    }

    else
    {
      [(PKPaymentButton *)self setNeedsDisplay];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentButton;
  coderCopy = coder;
  [(PKPaymentButton *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_style forKey:{@"PKPaymentButtonStyle", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_type forKey:@"PKPaymentButtonType"];
  [coderCopy encodeBool:self->_disableCardArt forKey:@"PKPaymentButtonDisableCardArt"];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKPaymentButton;
    v5 = [(PKPaymentButton *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)_createHighlightFilterIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    layer = [(PKPaymentButton *)self layer];
    v4 = objc_alloc(MEMORY[0x1E6979378]);
    v5 = [v4 initWithType:*MEMORY[0x1E6979CB0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v5;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    v7 = self->_highlightFilter;
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    -[CAFilter setValue:forKey:](v7, "setValue:forKey:", [v8 CGColor], @"inputColor");

    v10[0] = self->_highlightFilter;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [layer setFilters:v9];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v13.receiver = self;
  v13.super_class = PKPaymentButton;
  [(PKPaymentButton *)&v13 setHighlighted:?];
  if (self->_highlighted == !highlightedCopy)
  {
    self->_highlighted = highlightedCopy;
    [(PKPaymentButton *)self _createHighlightFilterIfNecessary];
    layer = [(PKPaymentButton *)self layer];
    v6 = 0.6;
    if (!highlightedCopy)
    {
      v6 = 1.0;
    }

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:v6 alpha:?];
    v8 = MEMORY[0x1E69DC888];
    v9 = [layer valueForKeyPath:@"filters.highlightFilter.inputColor"];
    v10 = [v8 colorWithCGColor:v9];

    [layer setValue:objc_msgSend(v7 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
    [v11 setDuration:0.15];
    [v11 setFillMode:*MEMORY[0x1E69797E8]];
    [v11 setFromValue:{objc_msgSend(v10, "CGColor")}];
    [v11 setToValue:{objc_msgSend(v7, "CGColor")}];
    v12 = [layer pkui_addAdditiveAnimation:v11];
  }
}

- (int64_t)_effectiveButtonStyle
{
  style = self->_style;
  if (style == 3)
  {
    traitCollection = [(PKPaymentButton *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 6)
    {
      style = 2;
    }

    else
    {
      style = 2 * ([traitCollection userInterfaceStyle] == 1);
    }
  }

  return style;
}

@end