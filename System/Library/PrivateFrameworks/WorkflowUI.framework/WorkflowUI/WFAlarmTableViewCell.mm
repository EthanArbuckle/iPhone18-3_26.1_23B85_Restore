@interface WFAlarmTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (WFAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshUI:(id)i animated:(BOOL)animated;
@end

@implementation WFAlarmTableViewCell

- (void)refreshUI:(id)i animated:(BOOL)animated
{
  iCopy = i;
  self->_enabled = [iCopy isEnabled];
  repeatSchedule = [iCopy repeatSchedule];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getDetailDateMaskToStringSymbolLoc_ptr;
  v22 = getDetailDateMaskToStringSymbolLoc_ptr;
  if (!getDetailDateMaskToStringSymbolLoc_ptr)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getDetailDateMaskToStringSymbolLoc_block_invoke;
    v18[3] = &unk_279EE8CF8;
    v18[4] = &v19;
    __getDetailDateMaskToStringSymbolLoc_block_invoke(v18);
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v7)
  {
    v8 = v7(repeatSchedule);
    timeLabel = [(MTUIAlarmView *)self->_alarmView timeLabel];
    [timeLabel setHour:objc_msgSend(iCopy minute:{"hour"), objc_msgSend(iCopy, "minute")}];

    labelColor = [MEMORY[0x277D75348] labelColor];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFAlarmTableViewCell *)self setBackgroundColor:systemBackgroundColor];

    timeLabel2 = [(MTUIAlarmView *)self->_alarmView timeLabel];
    [timeLabel2 setTextColor:labelColor];

    alarmView = self->_alarmView;
    displayTitle = [iCopy displayTitle];
    [(MTUIAlarmView *)alarmView setName:displayTitle andRepeatText:v8 textColor:secondaryLabelColor];

    [(MTUIAlarmView *)self->_alarmView setNeedsLayout];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull WFDetailDateMaskToString(uint32_t)"];
    [currentHandler handleFailureInFunction:v17 file:@"WFAlarmTableViewCell.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  if (*&sizeThatFits__width == fits.width)
  {
    v8 = *&sizeThatFits__result_0;
    v9 = *&sizeThatFits__result_1;
  }

  else
  {
    sizeThatFits__width = *&fits.width;
    contentView = [(WFAlarmTableViewCell *)self contentView];
    [contentView bounds];
    v7 = v6;

    [(MTUIAlarmView *)self->_alarmView effectiveLayoutSizeFittingSize:v7, height];
    sizeThatFits__result_0 = *&v8;
    sizeThatFits__result_1 = *&v9;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (WFAlarmTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = WFAlarmTableViewCell;
  v6 = [(WFAlarmTableViewCell *)&v16 initWithStyle:0 reuseIdentifier:identifierCopy];
  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v7 = getMTUIAlarmViewClass_softClass;
    v21 = getMTUIAlarmViewClass_softClass;
    if (!getMTUIAlarmViewClass_softClass)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __getMTUIAlarmViewClass_block_invoke;
      v17[3] = &unk_279EE8CF8;
      v17[4] = &v18;
      __getMTUIAlarmViewClass_block_invoke(v17);
      v7 = v19[3];
    }

    v8 = v7;
    _Block_object_dispose(&v18, 8);
    v9 = [v7 alloc];
    contentView = [(WFAlarmTableViewCell *)v6 contentView];
    [contentView bounds];
    v11 = [v9 initWithFrame:?];
    alarmView = v6->_alarmView;
    v6->_alarmView = v11;

    [(MTUIAlarmView *)v6->_alarmView setAutoresizingMask:18];
    [(MTUIAlarmView *)v6->_alarmView setSwitchVisible:0];
    [(MTUIAlarmView *)v6->_alarmView setStyle:0];
    contentView2 = [(WFAlarmTableViewCell *)v6 contentView];
    [contentView2 addSubview:v6->_alarmView];

    v14 = v6;
  }

  return v6;
}

@end