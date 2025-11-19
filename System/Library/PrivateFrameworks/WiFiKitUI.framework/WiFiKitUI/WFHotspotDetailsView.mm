@interface WFHotspotDetailsView
- (CGSize)intrinsicContentSize;
- (WFHotspotDetailsView)initWithCoder:(id)a3;
- (WFHotspotDetailsView)initWithFrame:(CGRect)a3;
- (id)attributedStringFromCellularProtocol:(id)a3;
- (void)setBatteryCharge:(unint64_t)a3;
- (void)setCellularProtocolString:(id)a3;
- (void)setSignalBars:(unint64_t)a3;
- (void)setupSubviews;
- (void)updateCellularProtocolLabel;
- (void)updateSignalBars;
@end

@implementation WFHotspotDetailsView

- (WFHotspotDetailsView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = WFHotspotDetailsView;
  v3 = [(WFHotspotDetailsView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_signalBars = 0;
    cellularProtocolString = v3->_cellularProtocolString;
    v3->_cellularProtocolString = &stru_288308678;

    v4->_batteryCharge = 0;
  }

  [(WFHotspotDetailsView *)v4 setupSubviews];
  return v4;
}

- (WFHotspotDetailsView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFHotspotDetailsView;
  v3 = [(WFHotspotDetailsView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_signalBars = 0;
    cellularProtocolString = v3->_cellularProtocolString;
    v3->_cellularProtocolString = &stru_288308678;

    v4->_batteryCharge = 0;
  }

  [(WFHotspotDetailsView *)v4 setupSubviews];
  return v4;
}

- (CGSize)intrinsicContentSize
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(WFHotspotDetailsView *)self arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [v10 intrinsicContentSize];
        v13 = v12;
        if (Width == 0.0)
        {
          [v10 frame];
          Width = CGRectGetWidth(v26);
        }

        v14 = v8 + Width;
        [(WFHotspotDetailsView *)self spacing];
        v8 = v14 + v15;
        if (v7 < v13)
        {
          v7 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  v16 = *MEMORY[0x277D85DE8];
  v17 = v8;
  v18 = v7;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)setupSubviews
{
  [(WFHotspotDetailsView *)self setSpacing:4.0];
  [(WFHotspotDetailsView *)self setAlignment:3];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(WFHotspotDetailsView *)self setBackgroundColor:v3];

  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  [(WFHotspotDetailsView *)self setSignalImageView:v9];

  v10 = [(WFHotspotDetailsView *)self signalImageView];
  [(WFHotspotDetailsView *)self addArrangedSubview:v10];

  [(WFHotspotDetailsView *)self updateSignalBars];
  v11 = [(WFHotspotDetailsView *)self signalImageView];
  v12 = MEMORY[0x277CCAAD0];
  v13 = [(WFHotspotDetailsView *)self signalImageView];
  v14 = [v12 constraintWithItem:v13 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:17.0];
  [v11 addConstraint:v14];

  v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  [(WFHotspotDetailsView *)self setNetworkTypeLabel:v15];

  [(WFHotspotDetailsView *)self updateCellularProtocolLabel];
  v16 = [(WFHotspotDetailsView *)self networkTypeLabel];
  [(WFHotspotDetailsView *)self addArrangedSubview:v16];

  v17 = [objc_alloc(MEMORY[0x277D75E10]) initWithSizeCategory:0];
  [(WFHotspotDetailsView *)self setBatteryView:v17];

  v18 = [(WFHotspotDetailsView *)self batteryCharge]/ 100.0;
  v19 = [(WFHotspotDetailsView *)self batteryView];
  [v19 setChargePercent:v18];

  v20 = [(WFHotspotDetailsView *)self batteryView];
  [v20 setNeedsLayout];

  v21 = [(WFHotspotDetailsView *)self batteryView];
  [(WFHotspotDetailsView *)self addArrangedSubview:v21];

  v22 = [(WFHotspotDetailsView *)self batteryView];
  [v22 intrinsicContentSize];
  v24 = v23;

  v25 = [(WFHotspotDetailsView *)self batteryView];
  v26 = MEMORY[0x277CCAAD0];
  v27 = [(WFHotspotDetailsView *)self batteryView];
  v28 = [v26 constraintWithItem:v27 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v24];
  [v25 addConstraint:v28];

  [(WFHotspotDetailsView *)self invalidateIntrinsicContentSize];
}

- (void)setCellularProtocolString:(id)a3
{
  objc_storeStrong(&self->_cellularProtocolString, a3);

  [(WFHotspotDetailsView *)self updateCellularProtocolLabel];
}

- (void)updateCellularProtocolLabel
{
  if (self->_cellularProtocolString)
  {
    v3 = [(WFHotspotDetailsView *)self attributedStringFromCellularProtocol:?];
    v4 = [(WFHotspotDetailsView *)self networkTypeLabel];
    [v4 setAttributedText:v3];
  }

  else
  {
    v3 = [(WFHotspotDetailsView *)self networkTypeLabel];
    [v3 setText:&stru_288308678];
  }

  v5 = [(WFHotspotDetailsView *)self networkTypeLabel];
  LODWORD(v6) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v6];

  v7 = [(WFHotspotDetailsView *)self networkTypeLabel];
  v8 = [v7 constraints];

  if (v8)
  {
    v9 = [(WFHotspotDetailsView *)self networkTypeLabel];
    v10 = [(WFHotspotDetailsView *)self networkTypeLabel];
    v11 = [v10 constraints];
    [v9 removeConstraints:v11];
  }

  v12 = [(WFHotspotDetailsView *)self networkTypeLabel];
  [v12 sizeToFit];

  v13 = [(WFHotspotDetailsView *)self networkTypeLabel];
  v14 = MEMORY[0x277CCAAD0];
  v15 = [(WFHotspotDetailsView *)self networkTypeLabel];
  v16 = [(WFHotspotDetailsView *)self networkTypeLabel];
  [v16 frame];
  v17 = [v14 constraintWithItem:v15 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:CGRectGetWidth(v19) + 1.0];
  [v13 addConstraint:v17];

  [(WFHotspotDetailsView *)self sizeToFit];

  [(WFHotspotDetailsView *)self invalidateIntrinsicContentSize];
}

- (id)attributedStringFromCellularProtocol:(id)a3
{
  v3 = MEMORY[0x277CCAB48];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  [v5 addAttribute:*MEMORY[0x277D740D0] value:&unk_288322C90 range:{0, objc_msgSend(v5, "length")}];
  v6 = *MEMORY[0x277D740A8];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  [v5 addAttribute:v6 value:v7 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (void)setSignalBars:(unint64_t)a3
{
  v4 = 5;
  if (a3 < 5)
  {
    v4 = a3;
  }

  self->_signalBars = v4;
  [(WFHotspotDetailsView *)self updateSignalBars];

  [(WFHotspotDetailsView *)self invalidateIntrinsicContentSize];
}

- (void)setBatteryCharge:(unint64_t)a3
{
  self->_batteryCharge = a3;
  v3 = a3 / 100.0;
  v4 = [(WFHotspotDetailsView *)self batteryView];
  [v4 setChargePercent:v3];
}

- (void)updateSignalBars
{
  signalBars = self->_signalBars;
  v4 = +[WFImageCache sharedImageCache];
  v5 = v4;
  if (signalBars > 3)
  {
    v6 = kWFImageCellularBars4;
  }

  else
  {
    v6 = off_279EC5CD0[signalBars];
  }

  v13 = [v4 imageNamed:*v6];

  if ([(WFHotspotDetailsView *)self _shouldReverseLayoutDirection])
  {
    v7 = [v13 imageFlippedForRightToLeftLayoutDirection];

    v8 = v7;
  }

  else
  {
    v8 = v13;
  }

  signalImageView = self->_signalImageView;
  v14 = v8;
  v10 = [v8 imageWithRenderingMode:2];
  [(UIImageView *)signalImageView setImage:v10];

  v11 = self->_signalImageView;
  v12 = [MEMORY[0x277D75348] defaultTextColor];
  [(UIImageView *)v11 setTintColor:v12];

  [(UIImageView *)self->_signalImageView sizeToFit];
}

@end