@interface UIDatePickerWeekMonthDayView
- (UIDatePickerWeekMonthDayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation UIDatePickerWeekMonthDayView

- (UIDatePickerWeekMonthDayView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = UIDatePickerWeekMonthDayView;
  v3 = [(UIView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    v5 = [UILabel alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(UILabel *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v10;

    v12 = v3->_dateLabel;
    v13 = +[UIColor clearColor];
    [(UIView *)v12 setBackgroundColor:v13];

    v14 = v3->_dateLabel;
    v15 = +[UIColor whiteColor];
    [(UILabel *)v14 setShadowColor:v15];

    [(UILabel *)v3->_dateLabel setShadowOffset:0.0, 1.0];
    v16 = [[UILabel alloc] initWithFrame:v6, v7, v8, v9];
    weekdayLabel = v3->_weekdayLabel;
    v3->_weekdayLabel = v16;

    [(UILabel *)v3->_weekdayLabel setAdjustsFontSizeToFitWidth:1];
    v18 = v3->_weekdayLabel;
    v19 = +[UIColor clearColor];
    [(UIView *)v18 setBackgroundColor:v19];

    if (!_MergedGlobals_15_6)
    {
      v20 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.45];
      v21 = _MergedGlobals_15_6;
      _MergedGlobals_15_6 = v20;
    }

    [(UILabel *)v3->_weekdayLabel setTextColor:?];
    if (!qword_1ED49C068)
    {
      v22 = [[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
      v23 = qword_1ED49C068;
      qword_1ED49C068 = v22;
    }

    [(UILabel *)v3->_weekdayLabel setShadowColor:?];
    [(UILabel *)v3->_weekdayLabel setShadowOffset:0.0, 1.0];
    if (!qword_1ED49C070)
    {
      traitCollection = [(UIView *)v3 traitCollection];
      v25 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);

      traitCollection2 = [(UIView *)v3 traitCollection];
      v27 = [v25 centerCellFontWithTraitCollection:traitCollection2];
      v28 = qword_1ED49C070;
      qword_1ED49C070 = v27;
    }

    [(UILabel *)v3->_weekdayLabel setFont:?];
    [(UILabel *)v3->_weekdayLabel setTextAlignment:2];
    [(UIView *)v3 addSubview:v3->_dateLabel];
    [(UIView *)v3 addSubview:v3->_weekdayLabel];
    v29 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v59.size.height = *MEMORY[0x1E69E9840];
  v3 = *(&self->super._viewFlags + 2);
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x1E695EFF8];
  v59.origin.x = *MEMORY[0x1E695EFF8];
  [(UILabel *)self->_dateLabel textRectForBounds:1 limitedToNumberOfLines:v4];
  rect = v13;
  v15 = v14;
  [(UILabel *)self->_weekdayLabel textRectForBounds:1 limitedToNumberOfLines:v5, v7, v9, v11];
  v56 = v16;
  v58 = v17;
  v18 = 4.0;
  if ((v3 & 0x400000) == 0)
  {
    if (*&self->_datePickerWeekMonthDayViewFlags)
    {
      v19 = *(v12 + 8);
      v60.origin.x = v5;
      v60.origin.y = v7;
      v60.size.width = v9;
      v60.size.height = v11;
      v20 = CGRectGetWidth(v60) - (self->_weekdayWidth + 2.0 + 5.0);
      v61.origin.x = v59.origin.x;
      v61.origin.y = v19;
      v61.size.width = rect;
      v61.size.height = v15;
      v18 = v20 - CGRectGetWidth(v61);
    }

    else
    {
      v18 = self->_weekdayWidth + 2.0 + 5.0;
    }
  }

  font = [(UILabel *)self->_dateLabel font];
  [font capHeight];
  v23 = v22;

  v62.origin.x = v5;
  v62.origin.y = v7;
  v62.size.width = v9;
  v62.size.height = v11;
  v24 = v23 * 0.5 + CGRectGetMidY(v62);
  [(UILabel *)self->_dateLabel _baselineOffsetFromBottom];
  v55 = v24 + v25 - v15;
  [(UILabel *)self->_weekdayLabel _baselineOffsetFromBottom];
  v54 = v24 + v26 - v58;
  text = [(UILabel *)self->_weekdayLabel text];

  if (!text)
  {
    if ((v3 & 0x400000) != 0)
    {
      v28 = v15;
      v18 = 4.0;
    }

    else
    {
      formattedDateString = self->_formattedDateString;
      v59.origin.y = *off_1E70EC918;
      font2 = [(UILabel *)self->_dateLabel font];
      *&v59.size.width = font2;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59.size forKeys:&v59.origin.y count:1];
      [(NSString *)formattedDateString sizeWithAttributes:v33];
      v35 = v34;

      v36 = v35 + self->_weekdayWidth + 2.0 + 5.0;
      v64.origin.x = v18;
      v64.origin.y = v55;
      v64.size.width = rect;
      v64.size.height = v15;
      v37 = v36 - CGRectGetWidth(v64);
      v65.origin.x = v37;
      v65.origin.y = v55;
      v65.size.width = rect;
      v28 = v15;
      v65.size.height = v15;
      if (CGRectGetMinX(v65) >= 7.0)
      {
        v18 = v37;
      }

      else
      {
        v18 = 7.0;
      }
    }

LABEL_17:
    v39 = v18;
    v41 = v55;
    v43 = rect;
    v45 = v28;
    x = v59.origin.x;
    goto LABEL_18;
  }

  if (*&self->_datePickerWeekMonthDayViewFlags)
  {
    v28 = v15;
    v66.origin.x = v5;
    v66.origin.y = v7;
    v66.size.width = v9;
    v66.size.height = v11;
    v30 = CGRectGetWidth(v66) - (self->_weekdayWidth + 2.0);
  }

  else if ((v3 & 0x400000) != 0)
  {
    v67.origin.x = v18;
    v67.origin.y = v55;
    v67.size.width = rect;
    v28 = v15;
    v67.size.height = v15;
    v30 = CGRectGetWidth(v67) + 2.0 + 5.0;
  }

  else
  {
    v28 = v15;
    v29 = self->_weekdayWidth + 2.0;
    v63.origin.x = v59.origin.x;
    v63.origin.y = v54;
    v63.size.width = v56;
    v63.size.height = v58;
    v30 = v29 - CGRectGetWidth(v63);
  }

  [(UIView *)self _currentScreenScale];
  v39 = UIRectIntegralWithScale(v30, v54, v56, v58, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v58 = v44;
  v59.origin.x = v39;
  v54 = v40;
  v56 = v42;
  x = v18;
  if ((*&self->_datePickerWeekMonthDayViewFlags & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v68.origin.x = v39;
  v68.origin.y = v41;
  v68.size.width = v43;
  v68.size.height = v45;
  MaxX = CGRectGetMaxX(v68);
  [(UIView *)self bounds];
  if (MaxX > v48)
  {
    v69.origin.x = v39;
    v69.origin.y = v41;
    v69.size.width = v43;
    v69.size.height = v45;
    v49 = CGRectGetMaxX(v69);
    [(UIView *)self bounds];
    v51 = v49 - v50;
    if (x < v49 - v50)
    {
      v51 = x;
    }

    v52 = v59.origin.x;
    if (text)
    {
      v52 = v59.origin.x - v51;
    }

    v59.origin.x = v52;
    v18 = v18 - v51;
  }

  if (text)
  {
    [(UILabel *)self->_weekdayLabel setFrame:v59.origin.x, v54, v56, v58];
  }

  [(UIView *)self _currentScreenScale];
  [(UILabel *)self->_dateLabel setFrame:UIRectIntegralWithScale(v18, v55, rect, v28, v53)];
}

@end