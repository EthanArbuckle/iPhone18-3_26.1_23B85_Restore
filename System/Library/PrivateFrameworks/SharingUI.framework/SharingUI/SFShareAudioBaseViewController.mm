@interface SFShareAudioBaseViewController
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFShareAudioBaseViewController

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SFShareAudioBaseViewController;
  [(SFShareAudioBaseViewController *)&v7 viewWillAppear:appear];
  self->_viewActive = 1;
  flags = [(SFShareAudioViewController *)self->_mainController flags];
  if ((flags & 2) != 0)
  {
    darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
    [(UIView *)self->_cardView setBackgroundColor:darkGrayColor];
  }

  if (flags)
  {
    [(UIView *)self->_cardView _setContinuousCornerRadius:0.0];
  }

  v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDB8] variant:1280];
  [(UILabel *)self->_titleLabel setFont:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SFShareAudioBaseViewController;
  [(SFShareAudioBaseViewController *)&v4 viewWillDisappear:disappear];
  self->_viewActive = 0;
}

@end