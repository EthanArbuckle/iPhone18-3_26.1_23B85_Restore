@interface PRXPasscodeEntryView
+ (CGSize)preferredSizeForNumberOfDigits:(int64_t)digits;
+ (CGSize)wellSizeForNumberOfDigits:(int64_t)digits;
+ (double)interWellSpacingForNumberOfDigits:(int64_t)digits;
+ (double)wellCornerRadiusForNumberOfDigits:(int64_t)digits;
+ (id)fontForNumberOfDigits:(int64_t)digits useMonospacedFont:(BOOL)font;
- (BOOL)becomeFirstResponder;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (NSString)text;
- (PRXPasscodeEntryView)initWithNumberOfDigits:(int64_t)digits useMonospacedFont:(BOOL)font delegate:(id)delegate;
- (PRXPasscodeEntryViewDelegate)delegate;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateWells;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)setText:(id)text;
- (void)tintColorDidChange;
@end

@implementation PRXPasscodeEntryView

- (PRXPasscodeEntryView)initWithNumberOfDigits:(int64_t)digits useMonospacedFont:(BOOL)font delegate:(id)delegate
{
  delegateCopy = delegate;
  if ((digits - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v43 = MEMORY[0x277CBEAD8];
    v44 = *MEMORY[0x277CBE660];
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", 4, 8];
    v46 = [v43 exceptionWithName:v44 reason:v45 userInfo:0];
    v47 = v46;

    objc_exception_throw(v46);
  }

  v9 = delegateCopy;
  [objc_opt_class() preferredSizeForNumberOfDigits:digits];
  v49.receiver = self;
  v49.super_class = PRXPasscodeEntryView;
  v10 = [(PRXPasscodeEntryView *)&v49 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    v48 = v9;
    objc_storeWeak(&v10->_delegate, v9);
    v11->_keyboardType = 11;
    v11->_numberOfDigits = digits;
    v11->_useMonospacedFont = font;
    string = [MEMORY[0x277CCAB68] string];
    text = v11->_text;
    v11->_text = string;

    v14 = [objc_opt_class() fontForNumberOfDigits:digits useMonospacedFont:v11->_useMonospacedFont];
    [objc_opt_class() interWellSpacingForNumberOfDigits:digits];
    v16 = v15;
    [objc_opt_class() wellCornerRadiusForNumberOfDigits:digits];
    v18 = v17;
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:digits];
    array = [MEMORY[0x277CBEB18] array];
    while ([(NSArray *)v19 count]< digits)
    {
      v21 = objc_alloc_init(PRXPasscodeWell);
      [(PRXPasscodeWell *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      label = [(PRXPasscodeWell *)v21 label];
      [label setFont:v14];

      [(PRXPasscodeWell *)v21 _setContinuousCornerRadius:v18];
      [(PRXPasscodeEntryView *)v11 addSubview:v21];
      lastObject = [(NSArray *)v19 lastObject];
      [(NSArray *)v19 addObject:v21];
      if (lastObject)
      {
        widthAnchor = [(PRXPasscodeWell *)v21 widthAnchor];
        widthAnchor2 = [lastObject widthAnchor];
        v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        [array addObject:v26];

        leftAnchor = [(PRXPasscodeWell *)v21 leftAnchor];
        rightAnchor = [lastObject rightAnchor];
        [leftAnchor constraintEqualToAnchor:rightAnchor constant:v16];
      }

      else
      {
        leftAnchor = [(PRXPasscodeWell *)v21 leftAnchor];
        rightAnchor = [(PRXPasscodeEntryView *)v11 leftAnchor];
        [leftAnchor constraintEqualToAnchor:rightAnchor];
      }
      v29 = ;
      [array addObject:v29];

      topAnchor = [(PRXPasscodeWell *)v21 topAnchor];
      topAnchor2 = [(PRXPasscodeEntryView *)v11 topAnchor];
      v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [array addObject:v32];

      bottomAnchor = [(PRXPasscodeWell *)v21 bottomAnchor];
      bottomAnchor2 = [(PRXPasscodeEntryView *)v11 bottomAnchor];
      v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [array addObject:v35];
    }

    lastObject2 = [(NSArray *)v19 lastObject];
    rightAnchor2 = [lastObject2 rightAnchor];
    rightAnchor3 = [(PRXPasscodeEntryView *)v11 rightAnchor];
    v39 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
    [array addObject:v39];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    wells = v11->_wells;
    v11->_wells = v19;

    [(PRXPasscodeEntryView *)v11 _updateWells];
    v41 = v11;

    v9 = v48;
  }

  return v11;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PRXPasscodeEntryView;
  [(PRXPasscodeEntryView *)&v3 tintColorDidChange];
  [(PRXPasscodeEntryView *)self _updateWells];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PRXPasscodeEntryView;
  [(PRXPasscodeEntryView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PRXPasscodeEntryView *)self _updateWells];
}

- (NSString)text
{
  v2 = [(NSMutableString *)self->_text copy];

  return v2;
}

- (void)setText:(id)text
{
  textCopy = text;
  if (([(NSMutableString *)self->_text isEqualToString:?]& 1) == 0)
  {
    v4 = [textCopy length];
    numberOfDigits = self->_numberOfDigits;
    if (v4 > numberOfDigits)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      numberOfDigits = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' is too long for %@ _numberOfDigits=%ld", textCopy, self, numberOfDigits];;
      v12 = [v9 exceptionWithName:v10 reason:numberOfDigits userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    uppercaseString = [textCopy uppercaseString];
    v7 = [uppercaseString mutableCopy];
    text = self->_text;
    self->_text = v7;

    [(PRXPasscodeEntryView *)self _updateWells];
  }
}

- (void)_updateWells
{
  v3 = [(NSMutableString *)self->_text length];
  traitCollection = [(PRXPasscodeEntryView *)self traitCollection];
  [traitCollection displayScale];
  v6 = 1.0 / v5;

  wells = self->_wells;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__PRXPasscodeEntryView__updateWells__block_invoke;
  v8[3] = &unk_279ACC308;
  v8[4] = self;
  v8[5] = v3;
  *&v8[6] = v6;
  [(NSArray *)wells enumerateObjectsUsingBlock:v8];
}

void __36__PRXPasscodeEntryView__updateWells__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = a2;
  if (*(a1 + 40) == a3 && [*(a1 + 32) isFirstResponder])
  {
    v5 = [*(a1 + 32) tintColor];
    v6 = [v5 CGColor];
    v7 = [v15 layer];
    [v7 setBorderColor:v6];

    v8 = 2.0;
  }

  else
  {
    v9 = [MEMORY[0x277D75348] systemGray4Color];
    v10 = [v9 CGColor];
    v11 = [v15 layer];
    [v11 setBorderColor:v10];

    v8 = 1.0;
    if (*(*(a1 + 32) + 480) <= 6)
    {
      v8 = *(a1 + 48) + 1.0;
    }
  }

  v12 = [v15 layer];
  [v12 setBorderWidth:v8];

  if (*(a1 + 40) <= a3)
  {
    v13 = [v15 label];
    [v13 setText:&stru_2873787A8];
  }

  else
  {
    v13 = [*(*(a1 + 32) + 456) substringWithRange:{a3, 1}];
    v14 = [v15 label];
    [v14 setText:v13];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  numberOfDigits = self->_numberOfDigits;

  [v3 preferredSizeForNumberOfDigits:numberOfDigits];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)wellSizeForNumberOfDigits:(int64_t)digits
{
  if ((digits - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v16 = v4;
    v17 = v3;
    v11 = MEMORY[0x277CBEAD8];
    v12 = *MEMORY[0x277CBE660];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", 4, 8, v6, v5, v16, v17, v7, v8];
    v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v9 = vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmlaq_n_f64(xmmword_260F853A0, xmmword_260F85390, (digits - 4)))));
  v10 = v9.f64[1];
  result.width = v9.f64[0];
  result.height = v10;
  return result;
}

+ (double)interWellSpacingForNumberOfDigits:(int64_t)digits
{
  if ((digits - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v16 = v4;
    v17 = v3;
    v11 = MEMORY[0x277CBEAD8];
    v12 = *MEMORY[0x277CBE660];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", 4, 8, v6, v5, v16, v17, v7, v8];
    v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v9 = (digits - 4) * -0.5 + 8.0;
  return roundf(v9);
}

+ (double)wellCornerRadiusForNumberOfDigits:(int64_t)digits
{
  if ((digits - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v15 = v4;
    v16 = v3;
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE660];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", 4, 8, v6, v5, v15, v16, v7, v8];
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  return 8.0;
}

+ (CGSize)preferredSizeForNumberOfDigits:(int64_t)digits
{
  if ((digits - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", 4, 8];
    v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  [self wellSizeForNumberOfDigits:?];
  v6 = v5;
  v8 = v7;
  [self interWellSpacingForNumberOfDigits:digits];
  v10 = v9 * (digits - 1) + v6 * digits;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)fontForNumberOfDigits:(int64_t)digits useMonospacedFont:(BOOL)font
{
  if ((digits - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", font, 4, 8];
    v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v4 = 28.0 - (digits - 4);
  v5 = roundf(v4);
  if (font)
  {
    [MEMORY[0x277D74300] monospacedSystemFontOfSize:v5 weight:*MEMORY[0x277D74420]];
  }

  else
  {
    [MEMORY[0x277D74300] systemFontOfSize:v5 weight:*MEMORY[0x277D74410]];
  }
  v6 = ;

  return v6;
}

- (BOOL)becomeFirstResponder
{
  v7.receiver = self;
  v7.super_class = PRXPasscodeEntryView;
  becomeFirstResponder = [(PRXPasscodeEntryView *)&v7 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [(PRXPasscodeEntryView *)self _updateWells];
    delegate = [(PRXPasscodeEntryView *)self delegate];

    if (delegate)
    {
      delegate2 = [(PRXPasscodeEntryView *)self delegate];
      [delegate2 passcodeEntryViewDidBecomeFirstResponder:self];
    }
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PRXPasscodeEntryView;
  resignFirstResponder = [(PRXPasscodeEntryView *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [(PRXPasscodeEntryView *)self _updateWells];
  }

  return resignFirstResponder;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = PRXPasscodeEntryView;
  v5 = [(PRXPasscodeEntryView *)&v7 beginTrackingWithTouch:touch withEvent:event];
  if (v5)
  {
    [(PRXPasscodeEntryView *)self becomeFirstResponder];
  }

  return v5;
}

- (void)insertText:(id)text
{
  textCopy = text;
  if ([(NSMutableString *)self->_text length]< self->_numberOfDigits)
  {
    text = self->_text;
    uppercaseString = [textCopy uppercaseString];
    [(NSMutableString *)text appendString:uppercaseString];

    [(PRXPasscodeEntryView *)self _updateWells];
    [(PRXPasscodeEntryView *)self sendActionsForControlEvents:4096];
  }
}

- (void)deleteBackward
{
  if ([(NSMutableString *)self->_text length])
  {
    [(NSMutableString *)self->_text replaceCharactersInRange:[(NSMutableString *)self->_text length]- 1 withString:1, &stru_2873787A8];
    [(PRXPasscodeEntryView *)self _updateWells];

    [(PRXPasscodeEntryView *)self sendActionsForControlEvents:4096];
  }
}

- (PRXPasscodeEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end