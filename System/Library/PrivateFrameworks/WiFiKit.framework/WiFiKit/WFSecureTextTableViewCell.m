@interface WFSecureTextTableViewCell
- (WFSecureTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
- (void)setHideSecureText:(BOOL)a3;
@end

@implementation WFSecureTextTableViewCell

- (WFSecureTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = WFSecureTextTableViewCell;
  v4 = [(WFSecureTextTableViewCell *)&v12 initWithStyle:1 reuseIdentifier:a4];
  v5 = [(WFSecureTextTableViewCell *)v4 defaultContentConfiguration];
  v6 = [v5 secondaryTextProperties];
  [v6 setNumberOfLines:0];

  v7 = [v5 secondaryTextProperties];
  v8 = [v7 font];
  v9 = [v8 copy];
  placeholderFont = v4->_placeholderFont;
  v4->_placeholderFont = v9;

  [(WFSecureTextTableViewCell *)v4 setContentConfiguration:v5];
  return v4;
}

- (void)setHideSecureText:(BOOL)a3
{
  v3 = a3;
  v15 = [(WFSecureTextTableViewCell *)self contentConfiguration];
  if (v3)
  {
    v5 = [(WFSecureTextTableViewCell *)self credentials];
    v6 = [v5 placeholderStringWithMaxCharacters:20];
    [v15 setSecondaryText:v6];

    v7 = [(WFSecureTextTableViewCell *)self placeholderFont];
    v8 = [v15 secondaryTextProperties];
    [v8 setFont:v7];
  }

  else
  {
    v9 = [v15 secondaryTextProperties];
    [v9 setNumberOfLines:0];

    v10 = [(WFSecureTextTableViewCell *)self credentials];
    [v15 setSecondaryText:v10];

    v11 = MEMORY[0x277D74300];
    v7 = [v15 secondaryTextProperties];
    v8 = [v7 font];
    [v8 pointSize];
    v12 = *MEMORY[0x277D74418];
    v13 = [v11 monospacedSystemFontOfSize:? weight:?];
    v14 = [v15 secondaryTextProperties];
    [v14 setFont:v13];
  }

  [(WFSecureTextTableViewCell *)self setContentConfiguration:v15];
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = WFSecureTextTableViewCell;
  [(WFSecureTextTableViewCell *)&v2 awakeFromNib];
}

@end