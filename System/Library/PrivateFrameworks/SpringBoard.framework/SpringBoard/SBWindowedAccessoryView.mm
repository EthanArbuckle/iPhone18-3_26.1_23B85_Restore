@interface SBWindowedAccessoryView
- (SBWindowedAccessoryView)initWithFrame:(CGRect)a3;
- (SBWindowedAccessoryViewDelegate)delegate;
- (void)_forceDetachWindowedAcessoryButtonTapped:(id)a3;
- (void)layoutSubviews;
@end

@implementation SBWindowedAccessoryView

- (SBWindowedAccessoryView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = SBWindowedAccessoryView;
  v3 = [(SBWindowedAccessoryView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(SBWindowedAccessoryView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x277D75220] buttonWithType:1];
    forceDetachWindowedAcessoryButton = v3->_forceDetachWindowedAcessoryButton;
    v3->_forceDetachWindowedAcessoryButton = v5;

    [(UIButton *)v3->_forceDetachWindowedAcessoryButton addTarget:v3 action:sel__forceDetachWindowedAcessoryButtonTapped_ forControlEvents:5];
    v7 = [MEMORY[0x277D755B8] imageNamed:@"ForceDetachWindowedAcessoryButton"];
    v8 = [v7 imageWithRenderingMode:2];

    [(UIButton *)v3->_forceDetachWindowedAcessoryButton setImage:v8 forState:0];
    v9 = v3->_forceDetachWindowedAcessoryButton;
    v10 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v9 setTintColor:v10];

    [(SBWindowedAccessoryView *)v3 addSubview:v3->_forceDetachWindowedAcessoryButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBWindowedAccessoryView;
  [(SBWindowedAccessoryView *)&v13 layoutSubviews];
  v3 = [(SBWindowedAccessoryView *)self superview];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SBWindowedAccessoryView *)self setBounds:v5, v7, v9, v11];
  [(UIButton *)self->_forceDetachWindowedAcessoryButton sizeToFit];
  [(UIButton *)self->_forceDetachWindowedAcessoryButton frame];
  [(UIButton *)self->_forceDetachWindowedAcessoryButton setFrame:v9 - (v12 + 20.0), 40.0];
}

- (void)_forceDetachWindowedAcessoryButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained forceDetachWindowedAcessoryButtonTapped:self];
}

- (SBWindowedAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end