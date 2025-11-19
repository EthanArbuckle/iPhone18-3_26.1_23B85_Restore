@interface SBTraitsOrientedContentViewController
- (SBTraitsOrientedContentViewControllerView)view;
- (TRAParticipant)containerParticipant;
- (TRAParticipant)contentParticipant;
- (void)loadView;
- (void)updateOrientationIfNeeded;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBTraitsOrientedContentViewController

- (SBTraitsOrientedContentViewControllerView)view
{
  v4.receiver = self;
  v4.super_class = SBTraitsOrientedContentViewController;
  v2 = [(SBTraitsOrientedContentViewController *)&v4 view];

  return v2;
}

- (void)loadView
{
  v3 = [SBTraitsOrientedContentViewControllerView alloc];
  v4 = [(SBTraitsOrientedContentViewControllerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBTraitsOrientedContentViewController *)self setView:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SBTraitsOrientedContentViewController;
  [(SBTraitsOrientedContentViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  WeakRetained = objc_loadWeakRetained(&self->_contentParticipant);

  if (WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__SBTraitsOrientedContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v9[3] = &unk_2783A9488;
    v9[4] = self;
    [v7 animateAlongsideTransition:v9 completion:0];
  }
}

- (void)updateOrientationIfNeeded
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

- (TRAParticipant)contentParticipant
{
  WeakRetained = objc_loadWeakRetained(&self->_contentParticipant);

  return WeakRetained;
}

- (TRAParticipant)containerParticipant
{
  WeakRetained = objc_loadWeakRetained(&self->_containerParticipant);

  return WeakRetained;
}

@end