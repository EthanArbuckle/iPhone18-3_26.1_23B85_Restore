@interface NCNotificationManagementBlueButton
+ (NCNotificationManagementBlueButton)buttonWithTitle:(id)title;
- (NCNotificationManagementBlueButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation NCNotificationManagementBlueButton

+ (NCNotificationManagementBlueButton)buttonWithTitle:(id)title
{
  titleCopy = title;
  v4 = [NCNotificationManagementBlueButton buttonWithType:0];
  [v4 setTitle:titleCopy forState:0];

  return v4;
}

- (NCNotificationManagementBlueButton)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = NCNotificationManagementBlueButton;
  v3 = [(NCNotificationManagementBlueButton *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(NCNotificationManagementBlueButton *)v3 setTitleColor:whiteColor forState:0];

    v5 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    [(NCNotificationManagementBlueButton *)v3 setTitleColor:v5 forState:1];

    titleLabel = [(NCNotificationManagementBlueButton *)v3 titleLabel];
    [titleLabel setNumberOfLines:1];
    [titleLabel setTextAlignment:1];
    v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:0 options:3];
    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
    [titleLabel setFont:v8];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(NCNotificationManagementBlueButton *)v3 setBackgroundColor:systemBlueColor];

    layer = [(NCNotificationManagementBlueButton *)v3 layer];
    [layer setCornerRadius:8.0];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v13 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
      [(NCNotificationManagementBlueButton *)v3 addInteraction:v13];
    }
  }

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(NCNotificationManagementBlueButton *)self isHighlighted]& 1) == 0)
  {
    v5 = [colorCopy copy];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v5;
  }

  v7.receiver = self;
  v7.super_class = NCNotificationManagementBlueButton;
  [(NCNotificationManagementBlueButton *)&v7 setBackgroundColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (highlighted)
  {
    v14 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    [(UIColor *)self->_backgroundColor getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
    v5 = [MEMORY[0x277D75348] colorWithRed:v15 green:v14 blue:v13 alpha:v12 * 0.5];
  }

  else
  {
    v5 = self->_backgroundColor;
  }

  v6 = v5;
  v11.receiver = self;
  v11.super_class = NCNotificationManagementBlueButton;
  [(NCNotificationManagementBlueButton *)&v11 setHighlighted:highlightedCopy];
  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__NCNotificationManagementBlueButton_setHighlighted___block_invoke;
  v9[3] = &unk_27836F560;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 animateWithDuration:v9 animations:0 completion:0.2];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v5 = [MEMORY[0x277D75878] effectWithPreview:v4];
  v6 = [MEMORY[0x277D75890] styleWithEffect:v5 shape:0];

  return v6;
}

@end