@interface SKUICounterTimeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUICounterTimeView)initWithClientContext:(id)context;
- (double)_fieldSpacingForFieldCount:(int64_t)count fieldWidth:(double)width totalWidth:(double)totalWidth;
- (id)_allFieldViews;
- (id)_visibleFieldViews;
- (void)_setValuesUsingTimestamp:(int64_t)timestamp;
- (void)layoutSubviews;
- (void)reloadTimeValue;
- (void)setBackgroundColor:(id)color;
- (void)setEndDate:(id)date;
- (void)setTextColor:(id)color;
- (void)setValueFont:(id)font;
- (void)setVisibleFields:(unint64_t)fields;
@end

@implementation SKUICounterTimeView

- (SKUICounterTimeView)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICounterTimeView initWithClientContext:];
  }

  v25.receiver = self;
  v25.super_class = SKUICounterTimeView;
  v6 = [(SKUICounterTimeView *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v7->_visibleFields = 255;
    v8 = objc_alloc_init(_SKUICounterTimeFieldView);
    daysFieldView = v7->_daysFieldView;
    v7->_daysFieldView = v8;

    labelLabel = [(_SKUICounterTimeFieldView *)v7->_daysFieldView labelLabel];
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"COUNTDOWN_DAYS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"COUNTDOWN_DAYS" inBundles:0];
    }
    v11 = ;
    [labelLabel setText:v11];

    [(_SKUICounterTimeFieldView *)v7->_daysFieldView setVisibilityField:1];
    [(SKUICounterTimeView *)v7 addSubview:v7->_daysFieldView];
    v12 = objc_alloc_init(_SKUICounterTimeFieldView);
    hoursFieldView = v7->_hoursFieldView;
    v7->_hoursFieldView = v12;

    labelLabel2 = [(_SKUICounterTimeFieldView *)v7->_hoursFieldView labelLabel];
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"COUNTDOWN_HOURS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"COUNTDOWN_HOURS" inBundles:0];
    }
    v15 = ;
    [labelLabel2 setText:v15];

    [(_SKUICounterTimeFieldView *)v7->_hoursFieldView setVisibilityField:2];
    [(SKUICounterTimeView *)v7 addSubview:v7->_hoursFieldView];
    v16 = objc_alloc_init(_SKUICounterTimeFieldView);
    minutesFieldView = v7->_minutesFieldView;
    v7->_minutesFieldView = v16;

    labelLabel3 = [(_SKUICounterTimeFieldView *)v7->_minutesFieldView labelLabel];
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"COUNTDOWN_MINUTES"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"COUNTDOWN_MINUTES" inBundles:0];
    }
    v19 = ;
    [labelLabel3 setText:v19];

    [(_SKUICounterTimeFieldView *)v7->_minutesFieldView setVisibilityField:4];
    [(SKUICounterTimeView *)v7 addSubview:v7->_minutesFieldView];
    v20 = objc_alloc_init(_SKUICounterTimeFieldView);
    secondsFieldView = v7->_secondsFieldView;
    v7->_secondsFieldView = v20;

    labelLabel4 = [(_SKUICounterTimeFieldView *)v7->_secondsFieldView labelLabel];
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"COUNTDOWN_SECONDS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"COUNTDOWN_SECONDS" inBundles:0];
    }
    v23 = ;
    [labelLabel4 setText:v23];

    [(_SKUICounterTimeFieldView *)v7->_secondsFieldView setVisibilityField:8];
    [(SKUICounterTimeView *)v7 addSubview:v7->_secondsFieldView];
  }

  return v7;
}

- (void)reloadTimeValue
{
  [(NSDate *)self->_endDate timeIntervalSinceNow];
  v4 = v3 & ~(v3 >> 63);
  if (self->_lastTimeValue != v4)
  {
    self->_lastTimeValue = v4;

    [(SKUICounterTimeView *)self _setValuesUsingTimestamp:?];
  }
}

- (void)setEndDate:(id)date
{
  dateCopy = date;
  endDate = self->_endDate;
  if (endDate != dateCopy)
  {
    v9 = dateCopy;
    endDate = [endDate isEqualToDate:dateCopy];
    dateCopy = v9;
    if ((endDate & 1) == 0)
    {
      v6 = [v9 copy];
      v7 = self->_endDate;
      self->_endDate = v6;

      [(NSDate *)self->_endDate timeIntervalSinceNow];
      self->_lastTimeValue = fmax(v8, 0.0);
      endDate = [(SKUICounterTimeView *)self _setValuesUsingTimestamp:?];
      dateCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](endDate, dateCopy);
}

- (void)setTextColor:(id)color
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_textColor != color)
  {
    v4 = [color copy];
    textColor = self->_textColor;
    self->_textColor = v4;

    _allFieldViews = [(SKUICounterTimeView *)self _allFieldViews];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [_allFieldViews countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(_allFieldViews);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          labelLabel = [v11 labelLabel];
          [labelLabel setTextColor:self->_textColor];

          valueLabel = [v11 valueLabel];
          [valueLabel setTextColor:self->_textColor];
        }

        v8 = [_allFieldViews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)setValueFont:(id)font
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_valueFont != font)
  {
    v4 = [font copy];
    valueFont = self->_valueFont;
    self->_valueFont = v4;

    _allFieldViews = [(SKUICounterTimeView *)self _allFieldViews];
    v7 = self->_valueFont;
    [(UIFont *)v7 pointSize];
    v9 = [(UIFont *)v7 fontWithSize:fmax(v8 * 0.5, 8.0)];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = _allFieldViews;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          labelLabel = [v15 labelLabel];
          [labelLabel setFont:v9];

          valueLabel = [v15 valueLabel];
          [valueLabel setFont:self->_valueFont];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [(SKUICounterTimeView *)self setNeedsLayout];
  }
}

- (void)setVisibleFields:(unint64_t)fields
{
  if (self->_visibleFields != fields)
  {
    self->_visibleFields = fields;
    [(SKUICounterTimeView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v52 = *MEMORY[0x277D85DE8];
  _allFieldViews = [(SKUICounterTimeView *)self _allFieldViews];
  _visibleFieldViews = [(SKUICounterTimeView *)self _visibleFieldViews];
  [(SKUICounterTimeView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = _allFieldViews;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = [_visibleFieldViews containsObject:v16];
        if (v17)
        {
          [v16 frame];
          v19 = v18;
          v21 = v20;
          [v16 sizeThatFits:{v6, v8}];
          if (v10 < v23)
          {
            v10 = v23;
          }

          v9 = v9 + v22;
          [v16 setFrame:{v19, v21, v22, v23}];
        }

        [v16 setHidden:v17 ^ 1u];
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v13);
  }

  v24 = [_visibleFieldViews count];
  [(SKUICounterTimeView *)self _fieldSpacingForFieldCount:v24 fieldWidth:v9 totalWidth:v6];
  v26 = v25;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = _visibleFieldViews;
  v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = v8 - v10;
    v31 = (v6 - (v9 + (v24 + 1) * v26)) * 0.5;
    v32 = v26 + floorf(v31);
    v33 = *v43;
    v34 = v10 + (floorf(v30) * 0.5);
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v36 = *(*(&v42 + 1) + 8 * j);
        [v36 frame];
        v38 = v37;
        v40 = v39;
        v41 = v34 - v39;
        [v36 setFrame:{v32, v34 - v39}];
        v53.origin.x = v32;
        v53.origin.y = v41;
        v53.size.width = v38;
        v53.size.height = v40;
        v32 = v26 + CGRectGetMaxX(v53);
      }

      v29 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v29);
  }
}

- (void)setBackgroundColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  _allFieldViews = [(SKUICounterTimeView *)self _allFieldViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [_allFieldViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_allFieldViews);
        }

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:colorCopy];
      }

      while (v7 != v9);
      v7 = [_allFieldViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SKUICounterTimeView;
  [(SKUICounterTimeView *)&v10 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v26 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  _visibleFieldViews = [(SKUICounterTimeView *)self _visibleFieldViews];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [_visibleFieldViews countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(_visibleFieldViews);
        }

        [*(*(&v21 + 1) + 8 * v12) sizeThatFits:{width, height}];
        if (v6 < v14)
        {
          v6 = v14;
        }

        v7 = v7 + v13;
        ++v12;
      }

      while (v10 != v12);
      v10 = [_visibleFieldViews countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = [_visibleFieldViews count];
  v16 = (v15 + 1);
  [(SKUICounterTimeView *)self _fieldSpacingForFieldCount:v15 fieldWidth:v7 totalWidth:width];
  v18 = v7 + v16 * v17;
  if (v18 < width)
  {
    width = v18;
  }

  v19 = width;
  v20 = v6;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)_allFieldViews
{
  v6[4] = *MEMORY[0x277D85DE8];
  hoursFieldView = self->_hoursFieldView;
  v6[0] = self->_daysFieldView;
  v6[1] = hoursFieldView;
  secondsFieldView = self->_secondsFieldView;
  v6[2] = self->_minutesFieldView;
  v6[3] = secondsFieldView;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

- (double)_fieldSpacingForFieldCount:(int64_t)count fieldWidth:(double)width totalWidth:(double)totalWidth
{
  v5 = (totalWidth - width) / (count + 1);
  v6 = floorf(v5);
  v7 = 5.0;
  if (v6 > 5.0)
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = v6 <= 14.0;
  result = 14.0;
  if (v9)
  {
    return v8;
  }

  return result;
}

- (void)_setValuesUsingTimestamp:(int64_t)timestamp
{
  if (!_setValuesUsingTimestamp__sActualValueFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v6 = _setValuesUsingTimestamp__sActualValueFormatter;
    _setValuesUsingTimestamp__sActualValueFormatter = v5;

    [_setValuesUsingTimestamp__sActualValueFormatter setNumberStyle:1];
  }

  if (!_setValuesUsingTimestamp__sPaddedValueFormatter)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v8 = _setValuesUsingTimestamp__sPaddedValueFormatter;
    _setValuesUsingTimestamp__sPaddedValueFormatter = v7;

    [_setValuesUsingTimestamp__sPaddedValueFormatter setNumberStyle:1];
    [_setValuesUsingTimestamp__sPaddedValueFormatter setPositiveFormat:@"00"];
  }

  v24 = _setValuesUsingTimestamp__sActualValueFormatter;
  valueLabel = [(_SKUICounterTimeFieldView *)self->_daysFieldView valueLabel];
  86400 = [MEMORY[0x277CCABB0] numberWithInteger:timestamp / 86400];
  v11 = [v24 stringFromNumber:86400];
  [valueLabel setText:v11];

  if (timestamp >= 86400)
  {
    v12 = _setValuesUsingTimestamp__sPaddedValueFormatter;

    v24 = v12;
  }

  valueLabel2 = [(_SKUICounterTimeFieldView *)self->_hoursFieldView valueLabel];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:timestamp / 3600 % 24];
  v15 = [v24 stringFromNumber:v14];
  [valueLabel2 setText:v15];

  if (timestamp / 3600 % 24 >= 1)
  {
    v16 = _setValuesUsingTimestamp__sPaddedValueFormatter;

    v24 = v16;
  }

  valueLabel3 = [(_SKUICounterTimeFieldView *)self->_minutesFieldView valueLabel];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:timestamp / 60 % 60];
  v19 = [v24 stringFromNumber:v18];
  [valueLabel3 setText:v19];

  valueLabel4 = [(_SKUICounterTimeFieldView *)self->_secondsFieldView valueLabel];
  v21 = _setValuesUsingTimestamp__sPaddedValueFormatter;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:timestamp % 60];
  v23 = [v21 stringFromNumber:v22];
  [valueLabel4 setText:v23];

  [(SKUICounterTimeView *)self setNeedsLayout];
}

- (id)_visibleFieldViews
{
  v21 = *MEMORY[0x277D85DE8];
  _allFieldViews = [(SKUICounterTimeView *)self _allFieldViews];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = _allFieldViews;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        valueLabel = [v9 valueLabel];
        text = [valueLabel text];
        if ([text length])
        {
          visibleFields = self->_visibleFields;
          v13 = [v9 visibilityField] & visibleFields;

          if (v13)
          {
            [array addObject:v9];
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICounterTimeView initWithClientContext:]";
}

@end