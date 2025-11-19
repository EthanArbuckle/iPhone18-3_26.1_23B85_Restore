@interface SFShareAudioBaseViewController
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFShareAudioBaseViewController

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SFShareAudioBaseViewController;
  [(SFShareAudioBaseViewController *)&v7 viewWillAppear:a3];
  self->_viewActive = 1;
  v4 = [(SFShareAudioViewController *)self->_mainController flags];
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E69DC888] darkGrayColor];
    [(UIView *)self->_cardView setBackgroundColor:v5];
  }

  if (v4)
  {
    [(UIView *)self->_cardView _setContinuousCornerRadius:0.0];
  }

  v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDB8] variant:1280];
  [(UILabel *)self->_titleLabel setFont:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFShareAudioBaseViewController;
  [(SFShareAudioBaseViewController *)&v4 viewWillDisappear:a3];
  self->_viewActive = 0;
}

@end