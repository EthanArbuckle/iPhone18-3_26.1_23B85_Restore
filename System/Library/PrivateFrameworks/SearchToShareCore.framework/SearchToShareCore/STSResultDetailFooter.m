@interface STSResultDetailFooter
- (CGSize)providerIconSize;
- (STSResultDetailFooter)initWithFrame:(CGRect)a3;
- (void)setProviderIconSize:(CGSize)a3;
- (void)updateConstraints;
@end

@implementation STSResultDetailFooter

- (STSResultDetailFooter)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = STSResultDetailFooter;
  v3 = [(STSResultDetailFooter *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    constraints = v3->_constraints;
    v3->_constraints = v4;

    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    providerIconView = v3->_providerIconView;
    v3->_providerIconView = v7;

    [(UIImageView *)v3->_providerIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_providerIconView setContentMode:4];
    [(UIImageView *)v3->_providerIconView setUserInteractionEnabled:0];
    v9 = [MEMORY[0x277D75220] buttonWithType:1];
    providerButton = v3->_providerButton;
    v3->_providerButton = v9;

    [(UIButton *)v3->_providerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_providerButton setContentEdgeInsets:10.0, 0.0, 10.0, 0.0];
    v11 = [(UIButton *)v3->_providerButton titleLabel];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [v11 setFont:v12];

    v13 = v3->_providerButton;
    v14 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v13 setTitleColor:v14 forState:0];

    v15 = [MEMORY[0x277D75220] buttonWithType:0];
    sendButton = v3->_sendButton;
    v3->_sendButton = v15;

    [(UIButton *)v3->_sendButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x277D755B8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v17 imageNamed:@"send-button" inBundle:v18];

    [(UIButton *)v3->_sendButton setImage:v19 forState:0];
    [(STSResultDetailFooter *)v3 addSubview:v3->_providerButton];
    [(STSResultDetailFooter *)v3 addSubview:v3->_providerIconView];
    [(STSResultDetailFooter *)v3 addSubview:v3->_sendButton];
    [(STSResultDetailFooter *)v3 setNeedsUpdateConstraints];
  }

  return v3;
}

- (void)updateConstraints
{
  v19[6] = *MEMORY[0x277D85DE8];
  [(STSResultDetailFooter *)self removeConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v17.receiver = self;
  v17.super_class = STSResultDetailFooter;
  [(STSResultDetailFooter *)&v17 updateConstraints];
  if (self->_providerIconSize.width <= 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 8.0;
  }

  v16 = [(UIButton *)self->_sendButton imageForState:0];
  v4 = _NSDictionaryOfVariableBindings(&cfstr_Providericonvi.isa, self->_providerIconView, self->_providerButton, self->_sendButton, 0);
  v19[0] = &unk_2876BA558;
  v18[0] = @"ProviderIconInsetsLeft";
  v18[1] = @"ProviderIconInsetsRight";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v19[1] = v5;
  v18[2] = @"ProviderIconWidth";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_providerIconSize.width];
  v19[2] = v6;
  v19[3] = &unk_2876BA568;
  v18[3] = @"ProviderButtonInsetsRight";
  v18[4] = @"SendButtonInsetsRight";
  v7 = MEMORY[0x277CCABB0];
  [v16 size];
  v9 = [v7 numberWithDouble:(44.0 - v8) * -0.5 + 10.0];
  v18[5] = @"SendButtonWidth";
  v19[4] = v9;
  v19[5] = &unk_2876BA578;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];

  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-ProviderIconInsetsLeft-[_providerIconView(ProviderIconWidth)]-ProviderIconInsetsRight-[_providerButton]-(>=ProviderButtonInsetsRight)-[_sendButton(SendButtonWidth)]-SendButtonInsetsRight-|" options:0 metrics:v10 views:v4];
  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_providerIconView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_providerButton attribute:10 relatedBy:0 toItem:self->_providerIconView attribute:10 multiplier:1.0 constant:-1.5];
  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_sendButton attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_sendButton attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v11];
  [(NSMutableArray *)self->_constraints addObject:v12];
  [(NSMutableArray *)self->_constraints addObject:v13];
  [(NSMutableArray *)self->_constraints addObject:v14];
  [(NSMutableArray *)self->_constraints addObject:v15];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
}

- (void)setProviderIconSize:(CGSize)a3
{
  if (self->_providerIconSize.width != a3.width || self->_providerIconSize.height != a3.height)
  {
    self->_providerIconSize = a3;
    [(STSResultDetailFooter *)self setNeedsUpdateConstraints];
  }
}

- (CGSize)providerIconSize
{
  width = self->_providerIconSize.width;
  height = self->_providerIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end