@interface WFSecureTextTableViewCell
- (WFSecureTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setHideSecureText:(BOOL)text;
@end

@implementation WFSecureTextTableViewCell

- (WFSecureTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = WFSecureTextTableViewCell;
  v4 = [(WFSecureTextTableViewCell *)&v12 initWithStyle:1 reuseIdentifier:identifier];
  defaultContentConfiguration = [(WFSecureTextTableViewCell *)v4 defaultContentConfiguration];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setNumberOfLines:0];

  secondaryTextProperties2 = [defaultContentConfiguration secondaryTextProperties];
  font = [secondaryTextProperties2 font];
  v9 = [font copy];
  placeholderFont = v4->_placeholderFont;
  v4->_placeholderFont = v9;

  [(WFSecureTextTableViewCell *)v4 setContentConfiguration:defaultContentConfiguration];
  return v4;
}

- (void)setHideSecureText:(BOOL)text
{
  textCopy = text;
  contentConfiguration = [(WFSecureTextTableViewCell *)self contentConfiguration];
  if (textCopy)
  {
    credentials = [(WFSecureTextTableViewCell *)self credentials];
    v6 = [credentials placeholderStringWithMaxCharacters:20];
    [contentConfiguration setSecondaryText:v6];

    placeholderFont = [(WFSecureTextTableViewCell *)self placeholderFont];
    secondaryTextProperties = [contentConfiguration secondaryTextProperties];
    [secondaryTextProperties setFont:placeholderFont];
  }

  else
  {
    secondaryTextProperties2 = [contentConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setNumberOfLines:0];

    credentials2 = [(WFSecureTextTableViewCell *)self credentials];
    [contentConfiguration setSecondaryText:credentials2];

    v11 = MEMORY[0x277D74300];
    placeholderFont = [contentConfiguration secondaryTextProperties];
    secondaryTextProperties = [placeholderFont font];
    [secondaryTextProperties pointSize];
    v12 = *MEMORY[0x277D74418];
    v13 = [v11 monospacedSystemFontOfSize:? weight:?];
    secondaryTextProperties3 = [contentConfiguration secondaryTextProperties];
    [secondaryTextProperties3 setFont:v13];
  }

  [(WFSecureTextTableViewCell *)self setContentConfiguration:contentConfiguration];
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = WFSecureTextTableViewCell;
  [(WFSecureTextTableViewCell *)&v2 awakeFromNib];
}

@end