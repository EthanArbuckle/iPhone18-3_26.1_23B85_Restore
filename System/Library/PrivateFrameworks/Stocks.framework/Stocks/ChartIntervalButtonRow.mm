@interface ChartIntervalButtonRow
- (ChartIntervalButton)selectedButton;
- (ChartIntervalButtonRow)initWithMaxChartInterval:(int64_t)interval chartIntervalButtonRowDelegate:(id)delegate;
- (ChartIntervalButtonRowDelegate)delegate;
- (int64_t)intervalForTouchLocation:(CGPoint)location;
- (void)intervalButtonsTapped:(id)tapped;
- (void)layoutSubviews;
- (void)selectChartIntervalButtonForInterval:(int64_t)interval;
- (void)sizeToBoldLabels;
@end

@implementation ChartIntervalButtonRow

- (ChartIntervalButtonRow)initWithMaxChartInterval:(int64_t)interval chartIntervalButtonRowDelegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = [(ChartIntervalButtonRow *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_maxChartInterval = interval;
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:9];
    v10 = 0;
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      v15 = [[ChartIntervalButton alloc] initWithFrame:v11, v12, v13, v14];
      v16 = [ChartIntervalButton titleForInterval:v10];
      [(ChartIntervalButton *)v15 setText:v16];

      [(ChartIntervalButton *)v15 setTag:v10];
      [(ChartIntervalButton *)v15 setUserInteractionEnabled:0];
      [(ChartIntervalButton *)v15 setTextAlignment:1];
      [(NSArray *)v9 addObject:v15];
      [(ChartIntervalButtonRow *)v8 addSubview:v15];

      ++v10;
    }

    while (v10 != 9);
    intervalButtons = v8->_intervalButtons;
    v8->_intervalButtons = v9;
    v18 = v9;

    [(ChartIntervalButtonRow *)v8 sizeToBoldLabels];
    v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel_intervalButtonsTapped_];

    [(ChartIntervalButtonRow *)v8 addGestureRecognizer:v19];
  }

  return v8;
}

- (void)sizeToBoldLabels
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_intervalButtons;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setSelected:{1, v8}];
        [v7 sizeToFit];
        [v7 setSelected:0];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)layoutSubviews
{
  v49 = *MEMORY[0x277D85DE8];
  [(ChartIntervalButtonRow *)self bounds];
  v4 = v3;
  v6 = v5;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = self->_intervalButtons;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [v13 tag];
        if (v14 <= [(ChartIntervalButtonRow *)self maxChartInterval])
        {
          [v13 bounds];
          v11 = v15 + v11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v9);
    v16 = v11;
  }

  else
  {
    v16 = 0.0;
  }

  maxChartInterval = [(ChartIntervalButtonRow *)self maxChartInterval];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = self->_intervalButtons;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = (v4 - v16 + -32.0) / maxChartInterval;
    v22 = *v40;
    v23 = v6 + -5.0;
    v24 = 16.0;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v39 + 1) + 8 * j);
        v27 = [v26 tag];
        maxChartInterval2 = [(ChartIntervalButtonRow *)self maxChartInterval];
        v29 = 0.0;
        if (v27 <= maxChartInterval2)
        {
          isSelected = [v26 isSelected];
          v29 = 1.0;
          if (!isSelected)
          {
            v29 = 0.8;
          }
        }

        [v26 setAlpha:v29];
        [v26 frame];
        v32 = v31;
        v34 = v33;
        v35 = RoundToPixel(v24);
        font = [v26 font];
        [font ascender];
        v38 = v23 - RoundToPixel(v37);

        [v26 setFrame:{v35, v38, v32, v34}];
        v24 = v24 + v21 + v32;
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v20);
  }
}

- (int64_t)intervalForTouchLocation:(CGPoint)location
{
  x = location.x;
  v5 = [(ChartIntervalButtonRow *)self maxChartInterval:location.x];
  [(ChartIntervalButtonRow *)self bounds];
  v7 = x / v6 * (v5 + 1);
  v8 = floorf(v7);
  if (v8 >= v5)
  {
    v8 = v5;
  }

  return fmaxf(v8, 0.0);
}

- (void)intervalButtonsTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([tappedCopy state] == 3)
  {
    [tappedCopy locationInView:self];
    v4 = [(ChartIntervalButtonRow *)self intervalForTouchLocation:?];
    intervalButtons = [(ChartIntervalButtonRow *)self intervalButtons];
    selectedButton = [(ChartIntervalButtonRow *)self selectedButton];
    v7 = [intervalButtons indexOfObject:selectedButton];

    if (v4 != v7)
    {
      delegate = [(ChartIntervalButtonRow *)self delegate];
      [delegate chartIntervalButtonRow:self didSelectChartInterval:v4];

      [(ChartIntervalButtonRow *)self selectChartIntervalButtonForInterval:v4];
    }
  }
}

- (void)selectChartIntervalButtonForInterval:(int64_t)interval
{
  if (interval != -1)
  {
    selectedButton = [(ChartIntervalButtonRow *)self selectedButton];
    [selectedButton setSelected:0];

    intervalButtons = [(ChartIntervalButtonRow *)self intervalButtons];
    v8 = [intervalButtons objectAtIndexedSubscript:interval];

    [v8 setSelected:1];
    [(ChartIntervalButtonRow *)self setSelectedButton:v8];
    [(ChartIntervalButtonRow *)self setNeedsLayout];
  }
}

- (ChartIntervalButtonRowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ChartIntervalButton)selectedButton
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedButton);

  return WeakRetained;
}

@end