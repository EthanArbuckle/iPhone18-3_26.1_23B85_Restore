@interface UIDateLabel
+ (id)_dateFormatter;
+ (id)_designatorFormatter;
+ (id)_relativeDateFormatter;
+ (id)_timeOnlyDateFormatter;
+ (id)_weekdayDateFormatter;
- (BOOL)timeDesignatorAppearsBeforeTime;
- (BOOL)use24HourTime;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)timeDesignatorSize;
- (NSString)_dateString;
- (NSString)timeDesignator;
- (UIDateLabel)initWithFrame:(CGRect)a3;
- (double)_noon;
- (double)_today;
- (double)_tomorrow;
- (double)_weekdayFormatCutoff;
- (double)_yesterday;
- (double)timeInterval;
- (id)_calendar;
- (id)_dateWithDayDiffFromToday:(int64_t)a3;
- (id)_stringDrawingContext;
- (id)_todayDate;
- (id)font;
- (id)text;
- (void)_recomputeTextIfNecessary;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
- (void)invalidate;
- (void)setBoldForAllLocales:(BOOL)a3;
- (void)setDate:(id)a3;
- (void)setForceTimeOnly:(BOOL)a3;
- (void)setTimeInterval:(double)a3;
@end

@implementation UIDateLabel

- (void)invalidate
{
  calendar = self->_calendar;
  self->_calendar = 0;

  yesterday = self->_yesterday;
  self->_yesterday = 0;

  today = self->_today;
  self->_today = 0;

  noon = self->_noon;
  self->_noon = 0;

  tomorrow = self->_tomorrow;
  self->_tomorrow = 0;

  weekdayFormatCutoff = self->_weekdayFormatCutoff;
  self->_weekdayFormatCutoff = 0;

  [(UIDateLabel *)self setShouldRecomputeText:1];
  [(UILabel *)self setNeedsDisplay];

  [(UILabel *)self invalidateIntrinsicContentSize];
}

- (NSString)_dateString
{
  if (self->_forceTimeOnly || ([(UIDateLabel *)self timeInterval], v6 = v5, [(UIDateLabel *)self _today], v6 >= v7) && ([(UIDateLabel *)self timeInterval], v9 = v8, [(UIDateLabel *)self _tomorrow], v9 < v10))
  {
    v3 = [objc_opt_class() _timeOnlyDateFormatter];
    goto LABEL_3;
  }

  [(UIDateLabel *)self timeInterval];
  v12 = v11;
  [(UIDateLabel *)self _tomorrow];
  if (v12 < v13)
  {
    [(UIDateLabel *)self timeInterval];
    v15 = v14;
    [(UIDateLabel *)self _yesterday];
    if (v15 >= v16)
    {
      v3 = [objc_opt_class() _relativeDateFormatter];
    }

    else
    {
      [(UIDateLabel *)self timeInterval];
      v18 = v17;
      [(UIDateLabel *)self _weekdayFormatCutoff];
      if (v18 < v19)
      {
        goto LABEL_10;
      }

      v3 = [objc_opt_class() _weekdayDateFormatter];
    }

LABEL_3:
    v4 = v3;
    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_10:
  v4 = [objc_opt_class() _dateFormatter];
LABEL_11:
  v20 = [v4 stringFromDate:self->_date];

  return v20;
}

- (void)_recomputeTextIfNecessary
{
  if ([(UIDateLabel *)self shouldRecomputeText])
  {
    v3 = [(UIDateLabel *)self _dateString];
    [(UILabel *)self setText:v3];
    v4 = [(UIDateLabel *)self boldForAllLocales];
    v9.receiver = self;
    v9.super_class = UIDateLabel;
    v5 = [(UILabel *)&v9 font];
    if (((v4 ^ (([v5 traits] & 2) == 0)) & 1) == 0)
    {
      v6 = [v5 familyName];
      if (v4)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      [v5 pointSize];
      v8 = [off_1E70ECC18 fontWithFamilyName:v6 traits:v7 size:?];

      [(UILabel *)self setFont:v8];
    }

    [(UIDateLabel *)self setShouldRecomputeText:0];
    [(UIDateLabel *)self _didUpdateDate];
  }
}

- (double)_noon
{
  noon = self->_noon;
  if (!noon)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [(UIDateLabel *)self _calendar];
    v6 = [v5 components:30 fromDate:v4];

    [v6 setHour:12];
    v7 = [(UIDateLabel *)self _calendar];
    v8 = [v7 dateFromComponents:v6];
    v9 = self->_noon;
    self->_noon = v8;

    noon = self->_noon;
  }

  [(NSDate *)noon timeIntervalSinceReferenceDate];
  return result;
}

- (NSString)timeDesignator
{
  if ([(UIDateLabel *)self use24HourTime]|| !self->_forceTimeOnly && (([(UIDateLabel *)self timeInterval], v7 = v6, [(UIDateLabel *)self _today], v7 < v8) || ([(UIDateLabel *)self timeInterval], v10 = v9, [(UIDateLabel *)self _tomorrow], v10 >= v11)))
  {
    v3 = &stru_1EFB14550;
  }

  else
  {
    v4 = [objc_opt_class() _designatorFormatter];
    v3 = [v4 stringFromDate:self->_date];
  }

  return v3;
}

- (id)_calendar
{
  if (!self->_calendar || ([MEMORY[0x1E695DF58] systemLocale], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "localeIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), -[NSCalendar calendarIdentifier](self->_calendar, "calendarIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, v3, (v6 & 1) == 0))
  {
    v7 = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = self->_calendar;
    self->_calendar = v7;
  }

  v9 = self->_calendar;

  return v9;
}

- (id)_todayDate
{
  today = self->_today;
  if (!today)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [(UIDateLabel *)self _calendar];
    v6 = [v5 components:30 fromDate:v4];

    v7 = [(UIDateLabel *)self _calendar];
    v8 = [v7 dateFromComponents:v6];
    v9 = self->_today;
    self->_today = v8;

    today = self->_today;
  }

  return today;
}

- (double)timeInterval
{
  v2 = [(UIDateLabel *)self date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (id)text
{
  [(UIDateLabel *)self _recomputeTextIfNecessary];
  v5.receiver = self;
  v5.super_class = UIDateLabel;
  v3 = [(UILabel *)&v5 text];

  return v3;
}

- (double)_today
{
  v2 = [(UIDateLabel *)self _todayDate];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (double)_tomorrow
{
  tomorrow = self->_tomorrow;
  if (!tomorrow)
  {
    v4 = [(UIDateLabel *)self _dateWithDayDiffFromToday:1];
    v5 = self->_tomorrow;
    self->_tomorrow = v4;

    tomorrow = self->_tomorrow;
  }

  [(NSDate *)tomorrow timeIntervalSinceReferenceDate];
  return result;
}

+ (id)_timeOnlyDateFormatter
{
  if (qword_1ED49AEB0 != -1)
  {
    dispatch_once(&qword_1ED49AEB0, &__block_literal_global_121_3);
  }

  v2 = qword_1ED49AE90;
  if (!qword_1ED49AE90)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v3 setLocalizedDateFormatFromTemplate:@"Jmm"];
    v4 = qword_1ED49AE90;
    qword_1ED49AE90 = v3;

    v2 = qword_1ED49AE90;
  }

  return v2;
}

- (BOOL)use24HourTime
{
  if (qword_1ED49AEB0 != -1)
  {
    dispatch_once(&qword_1ED49AEB0, &__block_literal_global_121_3);
  }

  return byte_1ED49AE81;
}

- (double)_yesterday
{
  yesterday = self->_yesterday;
  if (!yesterday)
  {
    v4 = [(UIDateLabel *)self _dateWithDayDiffFromToday:-1];
    v5 = self->_yesterday;
    self->_yesterday = v4;

    yesterday = self->_yesterday;
  }

  [(NSDate *)yesterday timeIntervalSinceReferenceDate];
  return result;
}

- (double)_weekdayFormatCutoff
{
  weekdayFormatCutoff = self->_weekdayFormatCutoff;
  if (!weekdayFormatCutoff)
  {
    v4 = [(UIDateLabel *)self _dateWithDayDiffFromToday:-6];
    v5 = self->_weekdayFormatCutoff;
    self->_weekdayFormatCutoff = v4;

    weekdayFormatCutoff = self->_weekdayFormatCutoff;
  }

  [(NSDate *)weekdayFormatCutoff timeIntervalSinceReferenceDate];
  return result;
}

+ (id)_dateFormatter
{
  if (qword_1ED49AEB0 != -1)
  {
    dispatch_once(&qword_1ED49AEB0, &__block_literal_global_121_3);
  }

  v2 = qword_1ED49AE88;
  if (!qword_1ED49AE88)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    [v3 setLocale:v4];

    [v3 setDateStyle:1];
    [v3 setTimeStyle:0];
    v5 = qword_1ED49AE88;
    qword_1ED49AE88 = v3;

    v2 = qword_1ED49AE88;
  }

  return v2;
}

- (id)_stringDrawingContext
{
  v4.receiver = self;
  v4.super_class = UIDateLabel;
  v2 = [(UILabel *)&v4 _stringDrawingContext];
  [v2 setCachesLayout:0];

  return v2;
}

- (CGSize)timeDesignatorSize
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIDateLabel *)self timeDesignator];
  if ([v3 length])
  {
    v4 = [(UIDateLabel *)self timeDesignatorFont];
    v13 = *off_1E70EC918;
    v14[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v6 = [(UIDateLabel *)self _stringDrawingContext];
    [v3 boundingRectWithSize:65 options:v5 attributes:v6 context:{3.40282347e38, 3.40282347e38}];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)font
{
  v3 = [(UIDateLabel *)self text];
  v6.receiver = self;
  v6.super_class = UIDateLabel;
  v4 = [(UILabel *)&v6 font];

  return v4;
}

- (BOOL)timeDesignatorAppearsBeforeTime
{
  if (qword_1ED49AEB0 != -1)
  {
    dispatch_once(&qword_1ED49AEB0, &__block_literal_global_121_3);
  }

  return byte_1ED49AE82;
}

- (UIDateLabel)initWithFrame:(CGRect)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = UIDateLabel;
  v3 = [(UILabel *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_paddingFromTimeToDesignator = 2.0;
    [(UIDateLabel *)v3 setShouldRecomputeText:1];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel_invalidate name:0x1EFB8EE90 object:UIApp];
    [v5 addObserver:v4 selector:sel_invalidate name:0x1EFB8EED0 object:UIApp];
    [v5 addObserver:v4 selector:sel_invalidate name:0x1EFB8EEF0 object:UIApp];
    v6 = [UIColor colorWithRed:0.141176471 green:0.439215686 blue:0.847058824 alpha:1.0];
    [(UILabel *)v4 setTextColor:v6];

    [(UILabel *)v4 setLineBreakMode:2];
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v8 = [(UIView *)v4 registerForTraitChanges:v7 withHandler:&__block_literal_global_705];
  }

  return v4;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = 0x1EFB8EE90;
  v6[1] = 0x1EFB8EED0;
  v6[2] = 0x1EFB8EEF0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIDateLabel;
  [(UILabel *)&v5 dealloc];
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIDateLabel *)self _recomputeTextIfNecessary];
  v14.receiver = self;
  v14.super_class = UIDateLabel;
  [(UILabel *)&v14 _intrinsicSizeWithinSize:width, height];
  v7 = v6;
  v9 = v8;
  [(UIDateLabel *)self timeDesignatorSize];
  if (v10 != 0.0)
  {
    v7 = v7 + v10 + self->_paddingFromTimeToDesignator;
  }

  v12 = ceil(v7);
  if (v9 >= v11)
  {
    v11 = v9;
  }

  v13 = ceil(v11);
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  [(UIView *)self bounds:a3.origin.x];

  [(UIDateLabel *)self drawTextInRect:?];
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v57[3] = *MEMORY[0x1E69E9840];
  [(UIDateLabel *)self _recomputeTextIfNecessary];
  v8 = [(UIDateLabel *)self timeDesignator];
  v9 = [(UIDateLabel *)self timeDesignatorAppearsBeforeTime];
  v10 = [v8 length];
  if (v10)
  {
    v9 ^= [v8 _isNaturallyRTL];
  }

  v11 = [(UIDateLabel *)self timeDesignatorFont];
  [(UILabel *)self textSize];
  if (v10)
  {
    v13 = v12;
    [(UIDateLabel *)self timeDesignatorSize];
    paddingFromTimeToDesignator = self->_paddingFromTimeToDesignator;
    v15 = width - v13 - paddingFromTimeToDesignator;
    v17 = v16 + paddingFromTimeToDesignator;
    if (v15 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = width - v13 - paddingFromTimeToDesignator;
    }

    v19 = x + v13 + paddingFromTimeToDesignator;
    v20 = v18 - paddingFromTimeToDesignator;
    if (v17 >= v15)
    {
      v20 = v18;
    }

    v21 = x + v18;
    v22 = paddingFromTimeToDesignator + v21;
    if (v15 >= v17)
    {
      v23 = v21;
    }

    else
    {
      v17 = v15;
      v23 = v22;
    }

    if (v9)
    {
      v24 = v17;
    }

    else
    {
      v24 = v20;
    }

    if (v9)
    {
      v25 = x;
    }

    else
    {
      v25 = v19;
    }

    if (v9)
    {
      v26 = v23;
    }

    else
    {
      v26 = x;
    }

    [(UIView *)self _currentScreenScale];
    v28 = UIRectRoundToScale(v25, y, v24, height, v27);
    v30 = v29;
    [(UIView *)self _currentScreenScale];
    v32 = UIRectRoundToScale(v26, y, v13, height, v31);
  }

  else
  {
    v30 = width;
    v28 = x;
    v35 = height;
    v34 = width;
    v33 = y;
    v32 = x;
  }

  v53.receiver = self;
  v53.super_class = UIDateLabel;
  [(UILabel *)&v53 drawTextInRect:v32, v33, v34, v35];
  if (v10)
  {
    [(UILabel *)self _drawingRectForBounds:x, y, width, height];
    v37 = v36;
    v39 = v38;
    v52 = [(UIDateLabel *)self _stringDrawingContext];
    v40 = objc_alloc_init(off_1E70ECB80);
    [v40 setLineBreakMode:2];
    v41 = [(UILabel *)self shadowColor];
    if ([(UIView *)self isUserInteractionEnabled]&& v41)
    {
      [(UILabel *)self shadowOffset];
      v43 = *off_1E70EC918;
      v44 = *off_1E70EC920;
      v45 = *off_1E70EC988;
      if (v46 == 0.0 && v42 == 0.0)
      {
        v47 = v11;
      }

      else
      {
        v56[0] = *off_1E70EC918;
        v56[1] = v44;
        v47 = v11;
        v57[0] = v11;
        v57[1] = v41;
        v56[2] = v45;
        v57[2] = v40;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
        [v8 drawWithRect:65 options:v48 attributes:v52 context:{v28, v37, v30, v39}];
      }
    }

    else
    {
      v47 = v11;
      v43 = *off_1E70EC918;
      v44 = *off_1E70EC920;
      v45 = *off_1E70EC988;
    }

    v49 = [(UILabel *)self currentTextColor];
    [v49 set];

    v55[0] = v47;
    v54[0] = v43;
    v54[1] = v44;
    v50 = [(UILabel *)self currentTextColor];
    v54[2] = v45;
    v55[1] = v50;
    v55[2] = v40;
    v11 = v47;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];

    [v8 drawWithRect:65 options:v51 attributes:v52 context:{v28, v37, v30, v39}];
  }
}

- (id)_dateWithDayDiffFromToday:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:a3];
  v6 = [(UIDateLabel *)self _calendar];
  v7 = [(UIDateLabel *)self _todayDate];
  v8 = [v6 dateByAddingComponents:v5 toDate:v7 options:0];

  return v8;
}

- (void)setForceTimeOnly:(BOOL)a3
{
  if (self->_forceTimeOnly != a3)
  {
    self->_forceTimeOnly = a3;
    [(UIDateLabel *)self setShouldRecomputeText:1];

    [(UILabel *)self setNeedsDisplay];
  }
}

- (void)setBoldForAllLocales:(BOOL)a3
{
  if (self->_boldForAllLocales != a3)
  {
    self->_boldForAllLocales = a3;
    [(UIDateLabel *)self setShouldRecomputeText:1];

    [(UILabel *)self setNeedsDisplay];
  }
}

- (void)setDate:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_date isEqualToDate:?])
  {
    objc_storeStrong(&self->_date, a3);
    [(UIDateLabel *)self invalidate];
  }
}

- (void)setTimeInterval:(double)a3
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  [(UIDateLabel *)self setDate:v4];
}

+ (id)_relativeDateFormatter
{
  if (qword_1ED49AEB0 != -1)
  {
    dispatch_once(&qword_1ED49AEB0, &__block_literal_global_121_3);
  }

  v2 = qword_1ED49AE98;
  if (!qword_1ED49AE98)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    [v3 setLocale:v4];

    [v3 setDateStyle:1];
    [v3 setTimeStyle:0];
    [v3 setDoesRelativeDateFormatting:1];
    v5 = qword_1ED49AE98;
    qword_1ED49AE98 = v3;

    v2 = qword_1ED49AE98;
  }

  return v2;
}

+ (id)_weekdayDateFormatter
{
  if (qword_1ED49AEB0 != -1)
  {
    dispatch_once(&qword_1ED49AEB0, &__block_literal_global_121_3);
  }

  v2 = qword_1ED49AEA0;
  if (!qword_1ED49AEA0)
  {
    v3 = MEMORY[0x1E696AB78];
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v3 dateFormatFromTemplate:@"cccc" options:0 locale:v4];

    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v6 setDateFormat:v5];
    v7 = qword_1ED49AEA0;
    qword_1ED49AEA0 = v6;

    v2 = qword_1ED49AEA0;
  }

  return v2;
}

+ (id)_designatorFormatter
{
  if (qword_1ED49AEB0 != -1)
  {
    dispatch_once(&qword_1ED49AEB0, &__block_literal_global_121_3);
  }

  v2 = qword_1ED49AEA8;
  if (!qword_1ED49AEA8)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    [v3 setLocale:v4];

    if (_MergedGlobals_7_14)
    {
      v5 = @"B";
    }

    else
    {
      v5 = @"a";
    }

    [v3 setDateFormat:v5];
    v6 = qword_1ED49AEA8;
    qword_1ED49AEA8 = v3;

    v2 = qword_1ED49AEA8;
  }

  return v2;
}

@end