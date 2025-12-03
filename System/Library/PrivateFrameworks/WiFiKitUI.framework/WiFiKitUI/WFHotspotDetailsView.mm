@interface WFHotspotDetailsView
- (CGSize)intrinsicContentSize;
- (WFHotspotDetailsView)initWithCoder:(id)coder;
- (WFHotspotDetailsView)initWithFrame:(CGRect)frame;
- (id)attributedStringFromCellularProtocol:(id)protocol;
- (void)setBatteryCharge:(unint64_t)charge;
- (void)setCellularProtocolString:(id)string;
- (void)setSignalBars:(unint64_t)bars;
- (void)setupSubviews;
- (void)updateCellularProtocolLabel;
- (void)updateSignalBars;
@end

@implementation WFHotspotDetailsView

- (WFHotspotDetailsView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = WFHotspotDetailsView;
  v3 = [(WFHotspotDetailsView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (WFHotspotDetailsView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFHotspotDetailsView;
  v3 = [(WFHotspotDetailsView *)&v7 initWithCoder:coder];
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
  arrangedSubviews = [(WFHotspotDetailsView *)self arrangedSubviews];
  v4 = [arrangedSubviews countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
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

      v5 = [arrangedSubviews countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(WFHotspotDetailsView *)self setBackgroundColor:clearColor];

  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  [(WFHotspotDetailsView *)self setSignalImageView:v9];

  signalImageView = [(WFHotspotDetailsView *)self signalImageView];
  [(WFHotspotDetailsView *)self addArrangedSubview:signalImageView];

  [(WFHotspotDetailsView *)self updateSignalBars];
  signalImageView2 = [(WFHotspotDetailsView *)self signalImageView];
  v12 = MEMORY[0x277CCAAD0];
  signalImageView3 = [(WFHotspotDetailsView *)self signalImageView];
  v14 = [v12 constraintWithItem:signalImageView3 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:17.0];
  [signalImageView2 addConstraint:v14];

  v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  [(WFHotspotDetailsView *)self setNetworkTypeLabel:v15];

  [(WFHotspotDetailsView *)self updateCellularProtocolLabel];
  networkTypeLabel = [(WFHotspotDetailsView *)self networkTypeLabel];
  [(WFHotspotDetailsView *)self addArrangedSubview:networkTypeLabel];

  v17 = [objc_alloc(MEMORY[0x277D75E10]) initWithSizeCategory:0];
  [(WFHotspotDetailsView *)self setBatteryView:v17];

  v18 = [(WFHotspotDetailsView *)self batteryCharge]/ 100.0;
  batteryView = [(WFHotspotDetailsView *)self batteryView];
  [batteryView setChargePercent:v18];

  batteryView2 = [(WFHotspotDetailsView *)self batteryView];
  [batteryView2 setNeedsLayout];

  batteryView3 = [(WFHotspotDetailsView *)self batteryView];
  [(WFHotspotDetailsView *)self addArrangedSubview:batteryView3];

  batteryView4 = [(WFHotspotDetailsView *)self batteryView];
  [batteryView4 intrinsicContentSize];
  v24 = v23;

  batteryView5 = [(WFHotspotDetailsView *)self batteryView];
  v26 = MEMORY[0x277CCAAD0];
  batteryView6 = [(WFHotspotDetailsView *)self batteryView];
  v28 = [v26 constraintWithItem:batteryView6 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v24];
  [batteryView5 addConstraint:v28];

  [(WFHotspotDetailsView *)self invalidateIntrinsicContentSize];
}

- (void)setCellularProtocolString:(id)string
{
  objc_storeStrong(&self->_cellularProtocolString, string);

  [(WFHotspotDetailsView *)self updateCellularProtocolLabel];
}

- (void)updateCellularProtocolLabel
{
  if (self->_cellularProtocolString)
  {
    networkTypeLabel2 = [(WFHotspotDetailsView *)self attributedStringFromCellularProtocol:?];
    networkTypeLabel = [(WFHotspotDetailsView *)self networkTypeLabel];
    [networkTypeLabel setAttributedText:networkTypeLabel2];
  }

  else
  {
    networkTypeLabel2 = [(WFHotspotDetailsView *)self networkTypeLabel];
    [networkTypeLabel2 setText:&stru_288308678];
  }

  networkTypeLabel3 = [(WFHotspotDetailsView *)self networkTypeLabel];
  LODWORD(v6) = 1148846080;
  [networkTypeLabel3 setContentHuggingPriority:0 forAxis:v6];

  networkTypeLabel4 = [(WFHotspotDetailsView *)self networkTypeLabel];
  constraints = [networkTypeLabel4 constraints];

  if (constraints)
  {
    networkTypeLabel5 = [(WFHotspotDetailsView *)self networkTypeLabel];
    networkTypeLabel6 = [(WFHotspotDetailsView *)self networkTypeLabel];
    constraints2 = [networkTypeLabel6 constraints];
    [networkTypeLabel5 removeConstraints:constraints2];
  }

  networkTypeLabel7 = [(WFHotspotDetailsView *)self networkTypeLabel];
  [networkTypeLabel7 sizeToFit];

  networkTypeLabel8 = [(WFHotspotDetailsView *)self networkTypeLabel];
  v14 = MEMORY[0x277CCAAD0];
  networkTypeLabel9 = [(WFHotspotDetailsView *)self networkTypeLabel];
  networkTypeLabel10 = [(WFHotspotDetailsView *)self networkTypeLabel];
  [networkTypeLabel10 frame];
  v17 = [v14 constraintWithItem:networkTypeLabel9 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:CGRectGetWidth(v19) + 1.0];
  [networkTypeLabel8 addConstraint:v17];

  [(WFHotspotDetailsView *)self sizeToFit];

  [(WFHotspotDetailsView *)self invalidateIntrinsicContentSize];
}

- (id)attributedStringFromCellularProtocol:(id)protocol
{
  v3 = MEMORY[0x277CCAB48];
  protocolCopy = protocol;
  v5 = [[v3 alloc] initWithString:protocolCopy];

  [v5 addAttribute:*MEMORY[0x277D740D0] value:&unk_288322C90 range:{0, objc_msgSend(v5, "length")}];
  v6 = *MEMORY[0x277D740A8];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  [v5 addAttribute:v6 value:v7 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (void)setSignalBars:(unint64_t)bars
{
  barsCopy = 5;
  if (bars < 5)
  {
    barsCopy = bars;
  }

  self->_signalBars = barsCopy;
  [(WFHotspotDetailsView *)self updateSignalBars];

  [(WFHotspotDetailsView *)self invalidateIntrinsicContentSize];
}

- (void)setBatteryCharge:(unint64_t)charge
{
  self->_batteryCharge = charge;
  v3 = charge / 100.0;
  batteryView = [(WFHotspotDetailsView *)self batteryView];
  [batteryView setChargePercent:v3];
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
    imageFlippedForRightToLeftLayoutDirection = [v13 imageFlippedForRightToLeftLayoutDirection];

    v8 = imageFlippedForRightToLeftLayoutDirection;
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
  defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
  [(UIImageView *)v11 setTintColor:defaultTextColor];

  [(UIImageView *)self->_signalImageView sizeToFit];
}

@end