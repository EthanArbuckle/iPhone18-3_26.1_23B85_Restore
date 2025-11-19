@interface PRXPasscodeEntryView
+ (CGSize)preferredSizeForNumberOfDigits:(int64_t)a3;
+ (CGSize)wellSizeForNumberOfDigits:(int64_t)a3;
+ (double)interWellSpacingForNumberOfDigits:(int64_t)a3;
+ (double)wellCornerRadiusForNumberOfDigits:(int64_t)a3;
+ (id)fontForNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4;
- (BOOL)becomeFirstResponder;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (NSString)text;
- (PRXPasscodeEntryView)initWithNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4 delegate:(id)a5;
- (PRXPasscodeEntryViewDelegate)delegate;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateWells;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setText:(id)a3;
- (void)tintColorDidChange;
@end

@implementation PRXPasscodeEntryView

- (PRXPasscodeEntryView)initWithNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4 delegate:(id)a5
{
  v8 = a5;
  if ((a3 - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v43 = MEMORY[0x277CBEAD8];
    v44 = *MEMORY[0x277CBE660];
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", 4, 8];
    v46 = [v43 exceptionWithName:v44 reason:v45 userInfo:0];
    v47 = v46;

    objc_exception_throw(v46);
  }

  v9 = v8;
  [objc_opt_class() preferredSizeForNumberOfDigits:a3];
  v49.receiver = self;
  v49.super_class = PRXPasscodeEntryView;
  v10 = [(PRXPasscodeEntryView *)&v49 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    v48 = v9;
    objc_storeWeak(&v10->_delegate, v9);
    v11->_keyboardType = 11;
    v11->_numberOfDigits = a3;
    v11->_useMonospacedFont = a4;
    v12 = [MEMORY[0x277CCAB68] string];
    text = v11->_text;
    v11->_text = v12;

    v14 = [objc_opt_class() fontForNumberOfDigits:a3 useMonospacedFont:v11->_useMonospacedFont];
    [objc_opt_class() interWellSpacingForNumberOfDigits:a3];
    v16 = v15;
    [objc_opt_class() wellCornerRadiusForNumberOfDigits:a3];
    v18 = v17;
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    v20 = [MEMORY[0x277CBEB18] array];
    while ([(NSArray *)v19 count]< a3)
    {
      v21 = objc_alloc_init(PRXPasscodeWell);
      [(PRXPasscodeWell *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = [(PRXPasscodeWell *)v21 label];
      [v22 setFont:v14];

      [(PRXPasscodeWell *)v21 _setContinuousCornerRadius:v18];
      [(PRXPasscodeEntryView *)v11 addSubview:v21];
      v23 = [(NSArray *)v19 lastObject];
      [(NSArray *)v19 addObject:v21];
      if (v23)
      {
        v24 = [(PRXPasscodeWell *)v21 widthAnchor];
        v25 = [v23 widthAnchor];
        v26 = [v24 constraintEqualToAnchor:v25];
        [v20 addObject:v26];

        v27 = [(PRXPasscodeWell *)v21 leftAnchor];
        v28 = [v23 rightAnchor];
        [v27 constraintEqualToAnchor:v28 constant:v16];
      }

      else
      {
        v27 = [(PRXPasscodeWell *)v21 leftAnchor];
        v28 = [(PRXPasscodeEntryView *)v11 leftAnchor];
        [v27 constraintEqualToAnchor:v28];
      }
      v29 = ;
      [v20 addObject:v29];

      v30 = [(PRXPasscodeWell *)v21 topAnchor];
      v31 = [(PRXPasscodeEntryView *)v11 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      [v20 addObject:v32];

      v33 = [(PRXPasscodeWell *)v21 bottomAnchor];
      v34 = [(PRXPasscodeEntryView *)v11 bottomAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      [v20 addObject:v35];
    }

    v36 = [(NSArray *)v19 lastObject];
    v37 = [v36 rightAnchor];
    v38 = [(PRXPasscodeEntryView *)v11 rightAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [v20 addObject:v39];

    [MEMORY[0x277CCAAD0] activateConstraints:v20];
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

- (void)setText:(id)a3
{
  v14 = a3;
  if (([(NSMutableString *)self->_text isEqualToString:?]& 1) == 0)
  {
    v4 = [v14 length];
    numberOfDigits = self->_numberOfDigits;
    if (v4 > numberOfDigits)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' is too long for %@ _numberOfDigits=%ld", v14, self, numberOfDigits];;
      v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    v6 = [v14 uppercaseString];
    v7 = [v6 mutableCopy];
    text = self->_text;
    self->_text = v7;

    [(PRXPasscodeEntryView *)self _updateWells];
  }
}

- (void)_updateWells
{
  v3 = [(NSMutableString *)self->_text length];
  v4 = [(PRXPasscodeEntryView *)self traitCollection];
  [v4 displayScale];
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

+ (CGSize)wellSizeForNumberOfDigits:(int64_t)a3
{
  if ((a3 - 9) <= 0xFFFFFFFFFFFFFFFALL)
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

  v9 = vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmlaq_n_f64(xmmword_260F853A0, xmmword_260F85390, (a3 - 4)))));
  v10 = v9.f64[1];
  result.width = v9.f64[0];
  result.height = v10;
  return result;
}

+ (double)interWellSpacingForNumberOfDigits:(int64_t)a3
{
  if ((a3 - 9) <= 0xFFFFFFFFFFFFFFFALL)
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

  v9 = (a3 - 4) * -0.5 + 8.0;
  return roundf(v9);
}

+ (double)wellCornerRadiusForNumberOfDigits:(int64_t)a3
{
  if ((a3 - 9) <= 0xFFFFFFFFFFFFFFFALL)
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

+ (CGSize)preferredSizeForNumberOfDigits:(int64_t)a3
{
  if ((a3 - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", 4, 8];
    v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  [a1 wellSizeForNumberOfDigits:?];
  v6 = v5;
  v8 = v7;
  [a1 interWellSpacingForNumberOfDigits:a3];
  v10 = v9 * (a3 - 1) + v6 * a3;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)fontForNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4
{
  if ((a3 - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRXPasscodeEntryView requires at between %ld and %ld digits, inclusively.", a4, 4, 8];
    v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v4 = 28.0 - (a3 - 4);
  v5 = roundf(v4);
  if (a4)
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
  v3 = [(PRXPasscodeEntryView *)&v7 becomeFirstResponder];
  if (v3)
  {
    [(PRXPasscodeEntryView *)self _updateWells];
    v4 = [(PRXPasscodeEntryView *)self delegate];

    if (v4)
    {
      v5 = [(PRXPasscodeEntryView *)self delegate];
      [v5 passcodeEntryViewDidBecomeFirstResponder:self];
    }
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PRXPasscodeEntryView;
  v3 = [(PRXPasscodeEntryView *)&v5 resignFirstResponder];
  if (v3)
  {
    [(PRXPasscodeEntryView *)self _updateWells];
  }

  return v3;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = PRXPasscodeEntryView;
  v5 = [(PRXPasscodeEntryView *)&v7 beginTrackingWithTouch:a3 withEvent:a4];
  if (v5)
  {
    [(PRXPasscodeEntryView *)self becomeFirstResponder];
  }

  return v5;
}

- (void)insertText:(id)a3
{
  v6 = a3;
  if ([(NSMutableString *)self->_text length]< self->_numberOfDigits)
  {
    text = self->_text;
    v5 = [v6 uppercaseString];
    [(NSMutableString *)text appendString:v5];

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