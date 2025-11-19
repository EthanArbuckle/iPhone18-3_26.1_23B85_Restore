@interface WFAlarmTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (WFAlarmTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshUI:(id)a3 animated:(BOOL)a4;
@end

@implementation WFAlarmTableViewCell

- (void)refreshUI:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  self->_enabled = [v5 isEnabled];
  v6 = [v5 repeatSchedule];
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
    v8 = v7(v6);
    v9 = [(MTUIAlarmView *)self->_alarmView timeLabel];
    [v9 setHour:objc_msgSend(v5 minute:{"hour"), objc_msgSend(v5, "minute")}];

    v10 = [MEMORY[0x277D75348] labelColor];
    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    v12 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFAlarmTableViewCell *)self setBackgroundColor:v12];

    v13 = [(MTUIAlarmView *)self->_alarmView timeLabel];
    [v13 setTextColor:v10];

    alarmView = self->_alarmView;
    v15 = [v5 displayTitle];
    [(MTUIAlarmView *)alarmView setName:v15 andRepeatText:v8 textColor:v11];

    [(MTUIAlarmView *)self->_alarmView setNeedsLayout];
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull WFDetailDateMaskToString(uint32_t)"];
    [v16 handleFailureInFunction:v17 file:@"WFAlarmTableViewCell.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  if (*&sizeThatFits__width == a3.width)
  {
    v8 = *&sizeThatFits__result_0;
    v9 = *&sizeThatFits__result_1;
  }

  else
  {
    sizeThatFits__width = *&a3.width;
    v5 = [(WFAlarmTableViewCell *)self contentView];
    [v5 bounds];
    v7 = v6;

    [(MTUIAlarmView *)self->_alarmView effectiveLayoutSizeFittingSize:v7, height];
    sizeThatFits__result_0 = *&v8;
    sizeThatFits__result_1 = *&v9;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (WFAlarmTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5 = a4;
  v16.receiver = self;
  v16.super_class = WFAlarmTableViewCell;
  v6 = [(WFAlarmTableViewCell *)&v16 initWithStyle:0 reuseIdentifier:v5];
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
    v10 = [(WFAlarmTableViewCell *)v6 contentView];
    [v10 bounds];
    v11 = [v9 initWithFrame:?];
    alarmView = v6->_alarmView;
    v6->_alarmView = v11;

    [(MTUIAlarmView *)v6->_alarmView setAutoresizingMask:18];
    [(MTUIAlarmView *)v6->_alarmView setSwitchVisible:0];
    [(MTUIAlarmView *)v6->_alarmView setStyle:0];
    v13 = [(WFAlarmTableViewCell *)v6 contentView];
    [v13 addSubview:v6->_alarmView];

    v14 = v6;
  }

  return v6;
}

@end