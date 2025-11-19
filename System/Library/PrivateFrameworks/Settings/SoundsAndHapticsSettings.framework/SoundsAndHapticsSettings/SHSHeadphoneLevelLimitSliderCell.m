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
  v4 = [(PSControlTableCell *)self control];
  [v4 frame];
  [v3 setFrame:?];

  v5 = [(SHSHeadphoneLevelLimitSliderCell *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(PSControlTableCell *)self control];
  [v10 sizeThatFits:{v7, v9}];
  v12 = v11;
  PreferencesTableViewCellLeftPad();
  v14 = v13;
  PreferencesTableViewCellLeftPad();
  v16 = v15;
  PreferencesTableViewCellRightPad();
  [v10 setFrame:{v14, round(v9 * 0.5 - v12 * 0.5), v7 - (v16 + v17), v12}];
}

@end