@interface VUIRentalExpirationLabel
+ (id)_calculateExpirationStringForDate:(id)a3 displayWarningColor:(BOOL *)a4 updateInterval:(int64_t *)a5 locStringPrefix:(id)a6;
+ (id)calculateExpirationStringForDate:(id)a3 updateInterval:(int64_t *)a4 locStringPrefix:(id)a5;
+ (id)labelForRentalExpirationDate:(id)a3 downloadExpirationDate:(id)a4 contentAvailabilityDate:(id)a5 downloadStatus:(unint64_t)a6;
+ (id)labelWithExpirationDate:(id)a3 textLayout:(id)a4 existingLabel:(id)a5 locStringPrefix:(id)a6;
+ (id)labelWithExpirationDate:(id)a3 textLayout:(id)a4 existingLabel:(id)a5 locStringPrefix:(id)a6 forDownload:(BOOL)a7 contentIsAvailable:(BOOL)a8;
+ (id)labelWithExpirationDate:(id)a3 textLayout:(id)a4 existingLabel:(id)a5 locStringPrefix:(id)a6 useWarningColor:(BOOL)a7;
+ (id)labelWithTextLayout:(id)a3 existingLabel:(id)a4 locStringPrefix:(id)a5;
- (VUIRentalExpirationLabelDelegate)delegate;
- (void)_computeExpirationLabel:(id)a3;
- (void)dealloc;
- (void)invalidateTimer;
- (void)setExpirationDate:(id)a3;
- (void)vui_willMoveToWindow:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation VUIRentalExpirationLabel

+ (id)labelForRentalExpirationDate:(id)a3 downloadExpirationDate:(id)a4 contentAvailabilityDate:(id)a5 downloadStatus:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    if (a6 - 1 >= 2 && ([MEMORY[0x1E695DF00] shouldShowLabelForDownloadExpirationDate:v10] & 1) != 0)
    {
      if (!v9)
      {
        v17 = v10;
        v10 = v17;
        if (v11)
        {
          v13 = [v11 vui_isInThePast] ^ 1;
          v12 = 1;
          v14 = v10;
          goto LABEL_12;
        }

        v12 = 1;
        v14 = v17;
        goto LABEL_11;
      }

      if ([v9 compare:v10] != -1)
      {
        v10 = v10;
        v12 = 0;
        v13 = 1;
        v14 = v10;
LABEL_12:
        v15 = [VUIRentalExpirationLabel labelWithExpirationDate:v14 textLayout:0 existingLabel:0 locStringPrefix:@"EXPIRATION_LEFT" forDownload:v12 contentIsAvailable:v13];

        goto LABEL_14;
      }

      v14 = v9;
LABEL_10:
      v12 = 0;
LABEL_11:
      v13 = 1;
      goto LABEL_12;
    }
  }

  if (v9)
  {
    v14 = v9;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  v15 = 0;
LABEL_14:

  return v15;
}

+ (id)labelWithTextLayout:(id)a3 existingLabel:(id)a4 locStringPrefix:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v7 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v7 setTextStyle:21];
    [(VUITextLayout *)v7 setFontWeight:0];
    v10 = [MEMORY[0x1E69DC888] grayColor];
    [(VUITextLayout *)v7 setColor:v10];

    [(VUITextLayout *)v7 setNumberOfLines:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(VUILabel *)VUIRentalExpirationLabel labelWithString:&stru_1F5DB25C0 textLayout:v7 existingLabel:v11];
  [v12 setLocStringPrefix:v9];
  [v12 setContentIsAvailable:1];

  return v12;
}

+ (id)labelWithExpirationDate:(id)a3 textLayout:(id)a4 existingLabel:(id)a5 locStringPrefix:(id)a6
{
  v9 = a3;
  v10 = [VUIRentalExpirationLabel labelWithTextLayout:a4 existingLabel:a5 locStringPrefix:a6];
  [v10 setUseWarningColor:1];
  [v10 setExpirationDate:v9];

  return v10;
}

+ (id)labelWithExpirationDate:(id)a3 textLayout:(id)a4 existingLabel:(id)a5 locStringPrefix:(id)a6 useWarningColor:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = [VUIRentalExpirationLabel labelWithTextLayout:a4 existingLabel:a5 locStringPrefix:a6];
  [v12 setUseWarningColor:v7];
  [v12 setExpirationDate:v11];

  return v12;
}

+ (id)labelWithExpirationDate:(id)a3 textLayout:(id)a4 existingLabel:(id)a5 locStringPrefix:(id)a6 forDownload:(BOOL)a7 contentIsAvailable:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!v14)
  {
    v14 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v14 setTextStyle:21];
    [(VUITextLayout *)v14 setFontWeight:0];
    v17 = [MEMORY[0x1E69DC888] grayColor];
    [(VUITextLayout *)v14 setColor:v17];

    [(VUITextLayout *)v14 setNumberOfLines:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(VUILabel *)VUIRentalExpirationLabel labelWithString:&stru_1F5DB25C0 textLayout:v14 existingLabel:v18];
  [v19 setLocStringPrefix:v16];
  [v19 setForDownload:v9];
  [v19 setUseWarningColor:1];
  [v19 setContentIsAvailable:v8];
  [v19 setExpirationDate:v13];

  return v19;
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = VUIRentalExpirationLabel;
  v4 = a3;
  [(VUIRentalExpirationLabel *)&v5 willMoveToWindow:v4];
  [(VUIRentalExpirationLabel *)self vui_willMoveToWindow:v4, v5.receiver, v5.super_class];
}

- (void)vui_willMoveToWindow:(id)a3
{
  if (a3)
  {
    [(VUIRentalExpirationLabel *)self _computeExpirationLabel:?];
  }

  else
  {
    [(VUIRentalExpirationLabel *)self invalidateTimer];
  }
}

- (void)dealloc
{
  [(VUIRentalExpirationLabel *)self invalidateTimer];
  v3.receiver = self;
  v3.super_class = VUIRentalExpirationLabel;
  [(VUILabel *)&v3 dealloc];
}

- (void)setExpirationDate:(id)a3
{
  objc_storeStrong(&self->_expirationDate, a3);
  v4 = [(VUIRentalExpirationLabel *)self window];
  [(VUIRentalExpirationLabel *)self _computeExpirationLabel:v4];
}

- (void)invalidateTimer
{
  [(NSTimer *)self->_expiryUpdateTimer invalidate];
  expiryUpdateTimer = self->_expiryUpdateTimer;
  self->_expiryUpdateTimer = 0;
}

- (void)_computeExpirationLabel:(id)a3
{
  v4 = a3;
  if (!self->_expirationDate)
  {
    [(NSTimer *)self->_expiryUpdateTimer invalidate];
    expiryUpdateTimer = self->_expiryUpdateTimer;
    self->_expiryUpdateTimer = 0;

    goto LABEL_20;
  }

  v33 = 0;
  v32 = 0;
  if (self->_contentIsAvailable)
  {
    v5 = [objc_opt_class() _calculateExpirationStringForDate:self->_expirationDate displayWarningColor:&v33 updateInterval:&v32 locStringPrefix:self->_locStringPrefix];
    if (self->_forDownload)
    {
      v6 = +[VUILocalizationManager sharedInstance];
      v7 = [v6 localizedStringForKey:@"EXPIRED"];
      v8 = [v5 isEqualToString:v7];

      if (v8)
      {
        v9 = +[VUILocalizationManager sharedInstance];
        v10 = [v9 localizedStringForKey:@"RENEW"];

        v5 = v10;
      }
    }
  }

  else
  {
    v12 = +[VUILocalizationManager sharedInstance];
    v5 = [v12 localizedStringForKey:@"NOT_AVAILABLE"];

    v33 = 1;
  }

  v13 = [(VUILabel *)self textLayout];
  v14 = v13;
  if (v33 == 1 && self->_useWarningColor)
  {
    v15 = [MEMORY[0x1E69DC888] redColor];
    [v14 setColor:v15];

    v16 = [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    v17 = [v13 color];

    if (!v17)
    {
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
      [v14 setColor:v18];
    }

    v19 = [v14 darkColor];

    if (v19)
    {
      goto LABEL_16;
    }

    v16 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
  }

  v20 = v16;
  [v14 setDarkColor:v16];

LABEL_16:
  v21 = [v14 attributedStringWithString:v5 view:self];
  [(VUILabel *)self setVuiAttributedText:v21];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rentalExpirationLabelNeedsRelayout:self];

  if (v4 && v32 >= 1)
  {
    objc_initWeak(&location, self);
    [(NSTimer *)self->_expiryUpdateTimer invalidate];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
    v24 = MEMORY[0x1E695DFF0];
    [v23 doubleValue];
    v26 = v25;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__VUIRentalExpirationLabel__computeExpirationLabel___block_invoke;
    v29[3] = &unk_1E87303B8;
    objc_copyWeak(&v30, &location);
    v27 = [v24 scheduledTimerWithTimeInterval:0 repeats:v29 block:v26];
    v28 = self->_expiryUpdateTimer;
    self->_expiryUpdateTimer = v27;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

LABEL_20:
}

void __52__VUIRentalExpirationLabel__computeExpirationLabel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained window];
  [WeakRetained _computeExpirationLabel:v1];
}

+ (id)calculateExpirationStringForDate:(id)a3 updateInterval:(int64_t *)a4 locStringPrefix:(id)a5
{
  v11 = 0;
  v7 = a5;
  v8 = a3;
  v9 = [objc_opt_class() _calculateExpirationStringForDate:v8 displayWarningColor:&v11 updateInterval:a4 locStringPrefix:v7];

  return v9;
}

+ (id)_calculateExpirationStringForDate:(id)a3 displayWarningColor:(BOOL *)a4 updateInterval:(int64_t *)a5 locStringPrefix:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x1E695DEE8];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v14 = [MEMORY[0x1E695DF00] date];
  v15 = [v13 components:240 fromDate:v14 toDate:v11 options:0];

  v16 = [v15 day];
  v17 = [v15 hour];
  v18 = [v15 minute];
  v19 = [v15 second];
  v20 = @"COUNT";
  if (v9)
  {
    v20 = v9;
  }

  v38 = v20;
  [v11 timeIntervalSinceNow];
  v22 = v21;

  if (v22 > 0.0)
  {
    if (v16 >= 2)
    {
      v37 = a5;
      v23 = v19 + 5;
      if (v16 >= 6)
      {
        v23 = 0;
      }

      v24 = 3600 * v17 + 60 * v18 + v23;
      if (v17 <= 0 && v18 <= 0 && v19 <= 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 + 1;
      }

      v27 = @"_DAYS";
      goto LABEL_27;
    }

    if (v16 != 1 && v17 <= 0)
    {
      if (v18 >= 1)
      {
        v37 = a5;
        v24 = v19 + 5;
        v27 = @"_MINUTES";
        goto LABEL_27;
      }

      if (v19 >= 1)
      {
        v36 = +[VUILocalizationManager sharedInstance];
        v29 = [v36 localizedStringForKey:@"EXPIRES_LESS_THAN_ONE_MIN"];

        v24 = v19 + 5;
        goto LABEL_28;
      }

      v24 = 0;
    }

    else
    {
      v24 = v19 + 60 * v18 + 5;
      if (v17 + 24 * v16)
      {
        v37 = a5;
        v27 = @"_HOURS";
        v18 = v17 + 24 * v16;
LABEL_27:
        v31 = [(__CFString *)v38 stringByAppendingString:v27];
        v32 = MEMORY[0x1E696AEC0];
        v33 = +[VUILocalizationManager sharedInstance];
        v34 = [v33 localizedStringForKey:v31];
        v29 = [v32 stringWithValidatedFormat:v34 validFormatSpecifiers:@"%d" error:0, v18];

        a5 = v37;
LABEL_28:
        if (a4 && !*a4 && v16 <= 4)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    v29 = 0;
    goto LABEL_28;
  }

  v28 = +[VUILocalizationManager sharedInstance];
  v29 = [v28 localizedStringForKey:@"EXPIRED"];

  v24 = 0;
  if (a4)
  {
LABEL_31:
    *a4 = 1;
  }

LABEL_32:
  if (a5)
  {
    *a5 = v24;
  }

  return v29;
}

- (VUIRentalExpirationLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end