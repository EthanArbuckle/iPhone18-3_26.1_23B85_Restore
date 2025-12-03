@interface SHSHeadphoneLevelLimitSliderCell
- (void)layoutSubviews;
@end

@implementation SHSHeadphoneLevelLimitSliderCell

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SHSHeadphoneLevelLimitSliderCell;
  [(PSTableCell *)&v18 layoutSubviews];
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC78]);
  control = [(PSControlTableCell *)self control];
  [control frame];
  [v3 setFrame:?];

  contentView = [(SHSHeadphoneLevelLimitSliderCell *)self contentView];
  [contentView bounds];
  v7 = v6;
  v9 = v8;

  control2 = [(PSControlTableCell *)self control];
  [control2 sizeThatFits:{v7, v9}];
  v12 = v11;
  PreferencesTableViewCellLeftPad();
  v14 = v13;
  PreferencesTableViewCellLeftPad();
  v16 = v15;
  PreferencesTableViewCellRightPad();
  [control2 setFrame:{v14, round(v9 * 0.5 - v12 * 0.5), v7 - (v16 + v17), v12}];
}

@end