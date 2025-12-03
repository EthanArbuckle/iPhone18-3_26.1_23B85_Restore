@interface VUIRentalExpirationLabel
+ (id)_calculateExpirationStringForDate:(id)date displayWarningColor:(BOOL *)color updateInterval:(int64_t *)interval locStringPrefix:(id)prefix;
+ (id)calculateExpirationStringForDate:(id)date updateInterval:(int64_t *)interval locStringPrefix:(id)prefix;
+ (id)labelForRentalExpirationDate:(id)date downloadExpirationDate:(id)expirationDate contentAvailabilityDate:(id)availabilityDate downloadStatus:(unint64_t)status;
+ (id)labelWithExpirationDate:(id)date textLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix;
+ (id)labelWithExpirationDate:(id)date textLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix forDownload:(BOOL)download contentIsAvailable:(BOOL)available;
+ (id)labelWithExpirationDate:(id)date textLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix useWarningColor:(BOOL)color;
+ (id)labelWithTextLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix;
- (VUIRentalExpirationLabelDelegate)delegate;
- (void)_computeExpirationLabel:(id)label;
- (void)dealloc;
- (void)invalidateTimer;
- (void)setExpirationDate:(id)date;
- (void)vui_willMoveToWindow:(id)window;
- (void)willMoveToWindow:(id)window;
@end

@implementation VUIRentalExpirationLabel

+ (id)labelForRentalExpirationDate:(id)date downloadExpirationDate:(id)expirationDate contentAvailabilityDate:(id)availabilityDate downloadStatus:(unint64_t)status
{
  dateCopy = date;
  expirationDateCopy = expirationDate;
  availabilityDateCopy = availabilityDate;
  if (expirationDateCopy)
  {
    if (status - 1 >= 2 && ([MEMORY[0x1E695DF00] shouldShowLabelForDownloadExpirationDate:expirationDateCopy] & 1) != 0)
    {
      if (!dateCopy)
      {
        v17 = expirationDateCopy;
        expirationDateCopy = v17;
        if (availabilityDateCopy)
        {
          v13 = [availabilityDateCopy vui_isInThePast] ^ 1;
          v12 = 1;
          v14 = expirationDateCopy;
          goto LABEL_12;
        }

        v12 = 1;
        v14 = v17;
        goto LABEL_11;
      }

      if ([dateCopy compare:expirationDateCopy] != -1)
      {
        expirationDateCopy = expirationDateCopy;
        v12 = 0;
        v13 = 1;
        v14 = expirationDateCopy;
LABEL_12:
        v15 = [VUIRentalExpirationLabel labelWithExpirationDate:v14 textLayout:0 existingLabel:0 locStringPrefix:@"EXPIRATION_LEFT" forDownload:v12 contentIsAvailable:v13];

        goto LABEL_14;
      }

      v14 = dateCopy;
LABEL_10:
      v12 = 0;
LABEL_11:
      v13 = 1;
      goto LABEL_12;
    }
  }

  if (dateCopy)
  {
    v14 = dateCopy;
    expirationDateCopy = 0;
    goto LABEL_10;
  }

  expirationDateCopy = 0;
  v15 = 0;
LABEL_14:

  return v15;
}

+ (id)labelWithTextLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix
{
  layoutCopy = layout;
  labelCopy = label;
  prefixCopy = prefix;
  if (!layoutCopy)
  {
    layoutCopy = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)layoutCopy setTextStyle:21];
    [(VUITextLayout *)layoutCopy setFontWeight:0];
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [(VUITextLayout *)layoutCopy setColor:grayColor];

    [(VUITextLayout *)layoutCopy setNumberOfLines:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = labelCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(VUILabel *)VUIRentalExpirationLabel labelWithString:&stru_1F5DB25C0 textLayout:layoutCopy existingLabel:v11];
  [v12 setLocStringPrefix:prefixCopy];
  [v12 setContentIsAvailable:1];

  return v12;
}

+ (id)labelWithExpirationDate:(id)date textLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix
{
  dateCopy = date;
  v10 = [VUIRentalExpirationLabel labelWithTextLayout:layout existingLabel:label locStringPrefix:prefix];
  [v10 setUseWarningColor:1];
  [v10 setExpirationDate:dateCopy];

  return v10;
}

+ (id)labelWithExpirationDate:(id)date textLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix useWarningColor:(BOOL)color
{
  colorCopy = color;
  dateCopy = date;
  v12 = [VUIRentalExpirationLabel labelWithTextLayout:layout existingLabel:label locStringPrefix:prefix];
  [v12 setUseWarningColor:colorCopy];
  [v12 setExpirationDate:dateCopy];

  return v12;
}

+ (id)labelWithExpirationDate:(id)date textLayout:(id)layout existingLabel:(id)label locStringPrefix:(id)prefix forDownload:(BOOL)download contentIsAvailable:(BOOL)available
{
  availableCopy = available;
  downloadCopy = download;
  dateCopy = date;
  layoutCopy = layout;
  labelCopy = label;
  prefixCopy = prefix;
  if (!layoutCopy)
  {
    layoutCopy = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)layoutCopy setTextStyle:21];
    [(VUITextLayout *)layoutCopy setFontWeight:0];
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [(VUITextLayout *)layoutCopy setColor:grayColor];

    [(VUITextLayout *)layoutCopy setNumberOfLines:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = labelCopy;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(VUILabel *)VUIRentalExpirationLabel labelWithString:&stru_1F5DB25C0 textLayout:layoutCopy existingLabel:v18];
  [v19 setLocStringPrefix:prefixCopy];
  [v19 setForDownload:downloadCopy];
  [v19 setUseWarningColor:1];
  [v19 setContentIsAvailable:availableCopy];
  [v19 setExpirationDate:dateCopy];

  return v19;
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = VUIRentalExpirationLabel;
  windowCopy = window;
  [(VUIRentalExpirationLabel *)&v5 willMoveToWindow:windowCopy];
  [(VUIRentalExpirationLabel *)self vui_willMoveToWindow:windowCopy, v5.receiver, v5.super_class];
}

- (void)vui_willMoveToWindow:(id)window
{
  if (window)
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

- (void)setExpirationDate:(id)date
{
  objc_storeStrong(&self->_expirationDate, date);
  window = [(VUIRentalExpirationLabel *)self window];
  [(VUIRentalExpirationLabel *)self _computeExpirationLabel:window];
}

- (void)invalidateTimer
{
  [(NSTimer *)self->_expiryUpdateTimer invalidate];
  expiryUpdateTimer = self->_expiryUpdateTimer;
  self->_expiryUpdateTimer = 0;
}

- (void)_computeExpirationLabel:(id)label
{
  labelCopy = label;
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

  textLayout = [(VUILabel *)self textLayout];
  v14 = textLayout;
  if (v33 == 1 && self->_useWarningColor)
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    [v14 setColor:redColor];

    redColor2 = [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    color = [textLayout color];

    if (!color)
    {
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
      [v14 setColor:v18];
    }

    darkColor = [v14 darkColor];

    if (darkColor)
    {
      goto LABEL_16;
    }

    redColor2 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
  }

  v20 = redColor2;
  [v14 setDarkColor:redColor2];

LABEL_16:
  v21 = [v14 attributedStringWithString:v5 view:self];
  [(VUILabel *)self setVuiAttributedText:v21];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rentalExpirationLabelNeedsRelayout:self];

  if (labelCopy && v32 >= 1)
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

+ (id)calculateExpirationStringForDate:(id)date updateInterval:(int64_t *)interval locStringPrefix:(id)prefix
{
  v11 = 0;
  prefixCopy = prefix;
  dateCopy = date;
  v9 = [objc_opt_class() _calculateExpirationStringForDate:dateCopy displayWarningColor:&v11 updateInterval:interval locStringPrefix:prefixCopy];

  return v9;
}

+ (id)_calculateExpirationStringForDate:(id)date displayWarningColor:(BOOL *)color updateInterval:(int64_t *)interval locStringPrefix:(id)prefix
{
  prefixCopy = prefix;
  v10 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  v12 = [v10 alloc];
  v13 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v15 = [v13 components:240 fromDate:date toDate:dateCopy options:0];

  v16 = [v15 day];
  hour = [v15 hour];
  minute = [v15 minute];
  second = [v15 second];
  v20 = @"COUNT";
  if (prefixCopy)
  {
    v20 = prefixCopy;
  }

  v38 = v20;
  [dateCopy timeIntervalSinceNow];
  v22 = v21;

  if (v22 > 0.0)
  {
    if (v16 >= 2)
    {
      intervalCopy3 = interval;
      v23 = second + 5;
      if (v16 >= 6)
      {
        v23 = 0;
      }

      v24 = 3600 * hour + 60 * minute + v23;
      if (hour <= 0 && minute <= 0 && second <= 0)
      {
        minute = v16;
      }

      else
      {
        minute = v16 + 1;
      }

      v27 = @"_DAYS";
      goto LABEL_27;
    }

    if (v16 != 1 && hour <= 0)
    {
      if (minute >= 1)
      {
        intervalCopy3 = interval;
        v24 = second + 5;
        v27 = @"_MINUTES";
        goto LABEL_27;
      }

      if (second >= 1)
      {
        v36 = +[VUILocalizationManager sharedInstance];
        v29 = [v36 localizedStringForKey:@"EXPIRES_LESS_THAN_ONE_MIN"];

        v24 = second + 5;
        goto LABEL_28;
      }

      v24 = 0;
    }

    else
    {
      v24 = second + 60 * minute + 5;
      if (hour + 24 * v16)
      {
        intervalCopy3 = interval;
        v27 = @"_HOURS";
        minute = hour + 24 * v16;
LABEL_27:
        v31 = [(__CFString *)v38 stringByAppendingString:v27];
        v32 = MEMORY[0x1E696AEC0];
        v33 = +[VUILocalizationManager sharedInstance];
        v34 = [v33 localizedStringForKey:v31];
        v29 = [v32 stringWithValidatedFormat:v34 validFormatSpecifiers:@"%d" error:0, minute];

        interval = intervalCopy3;
LABEL_28:
        if (color && !*color && v16 <= 4)
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
  if (color)
  {
LABEL_31:
    *color = 1;
  }

LABEL_32:
  if (interval)
  {
    *interval = v24;
  }

  return v29;
}

- (VUIRentalExpirationLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end