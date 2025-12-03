@interface SBSetupRegulatoryInfoViewController
- (void)loadView;
@end

@implementation SBSetupRegulatoryInfoViewController

- (void)loadView
{
  v24 = SFRegulatoryImage();
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v24];
  regulatoryImageView = self->_regulatoryImageView;
  self->_regulatoryImageView = v3;

  [(UIImageView *)self->_regulatoryImageView sizeToFit];
  if (_os_feature_enabled_impl())
  {
    v5 = self->_regulatoryImageView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v5 setTintColor:whiteColor];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = v8;
  v11 = v10;

  [MEMORY[0x277D65EC0] notificationListInsets];
  v13 = v12;
  v14 = *MEMORY[0x277D76F08];
  if (SBFEffectiveHomeButtonType() == 2)
  {
    [MEMORY[0x277D65EC0] proudLockOffsetFromTopOfScreen];
    v14 = v14 + v15;
  }

  [v24 size];
  v17 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v9, v14, v16, v11 - (v13 + v14)}];
  containerView = self->_containerView;
  self->_containerView = v17;

  v19 = self->_containerView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIScrollView *)v19 setBackgroundColor:clearColor];

  [(UIScrollView *)self->_containerView setAutoresizingMask:16];
  [(UIScrollView *)self->_containerView setContentInset:24.0, 0.0, 24.0, 0.0];
  [(UIScrollView *)self->_containerView setContentOffset:0.0, -24.0];
  [(UIScrollView *)self->_containerView addSubview:self->_regulatoryImageView];
  v21 = self->_containerView;
  [(UIScrollView *)v21 frame];
  v23 = v22;
  [v24 size];
  [(UIScrollView *)v21 setContentSize:v23];
  [(UIScrollView *)self->_containerView setClipsToBounds:1];
  [(SBSetupRegulatoryInfoViewController *)self setView:self->_containerView];
}

@end