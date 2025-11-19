@interface NCNotificationManagementBlueButton
+ (NCNotificationManagementBlueButton)buttonWithTitle:(id)a3;
- (NCNotificationManagementBlueButton)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation NCNotificationManagementBlueButton

+ (NCNotificationManagementBlueButton)buttonWithTitle:(id)a3
{
  v3 = a3;
  v4 = [NCNotificationManagementBlueButton buttonWithType:0];
  [v4 setTitle:v3 forState:0];

  return v4;
}

- (NCNotificationManagementBlueButton)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = NCNotificationManagementBlueButton;
  v3 = [(NCNotificationManagementBlueButton *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    [(NCNotificationManagementBlueButton *)v3 setTitleColor:v4 forState:0];

    v5 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    [(NCNotificationManagementBlueButton *)v3 setTitleColor:v5 forState:1];

    v6 = [(NCNotificationManagementBlueButton *)v3 titleLabel];
    [v6 setNumberOfLines:1];
    [v6 setTextAlignment:1];
    v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:0 options:3];
    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
    [v6 setFont:v8];

    v9 = [MEMORY[0x277D75348] systemBlueColor];
    [(NCNotificationManagementBlueButton *)v3 setBackgroundColor:v9];

    v10 = [(NCNotificationManagementBlueButton *)v3 layer];
    [v10 setCornerRadius:8.0];

    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 1)
    {
      v13 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
      [(NCNotificationManagementBlueButton *)v3 addInteraction:v13];
    }
  }

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (([(NCNotificationManagementBlueButton *)self isHighlighted]& 1) == 0)
  {
    v5 = [v4 copy];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v5;
  }

  v7.receiver = self;
  v7.super_class = NCNotificationManagementBlueButton;
  [(NCNotificationManagementBlueButton *)&v7 setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
  [(NCNotificationManagementBlueButton *)&v11 setHighlighted:v3];
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v5 = [MEMORY[0x277D75878] effectWithPreview:v4];
  v6 = [MEMORY[0x277D75890] styleWithEffect:v5 shape:0];

  return v6;
}

@end