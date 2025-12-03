@interface SUICKPFeedbackAdapter
- (BOOL)shouldHandleCardSectionEngagement:(id)engagement;
- (CRKFeedbackDelegate)feedbackDelegate;
- (id)feedbackListener;
- (void)cardSectionViewDidInvalidateSize:(id)size animate:(BOOL)animate;
- (void)cardViewDidAppear:(id)appear;
- (void)cardViewDidDisappear:(id)disappear;
- (void)didEngageCardSection:(id)section;
- (void)didPerformCommand:(id)command;
- (void)didReportUserResponseFeedback:(id)feedback;
- (void)presentViewController:(id)controller;
- (void)willDismissViewController:(id)controller;
@end

@implementation SUICKPFeedbackAdapter

- (id)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (BOOL)shouldHandleCardSectionEngagement:(id)engagement
{
  engagementCopy = engagement;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v8 = MEMORY[0x277CF9470];
    cardSection = [engagementCopy cardSection];
    v10 = [v8 cardSectionWithSFCardSection:cardSection];
    v11 = [v7 shouldHandleEngagement:engagementCopy forCardSection:v10];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)didEngageCardSection:(id)section
{
  sectionCopy = section;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v7 = MEMORY[0x277CF9470];
    cardSection = [sectionCopy cardSection];
    v9 = [v7 cardSectionWithSFCardSection:cardSection];
    [v6 cardSectionView:v9 willProcessEngagementFeedback:sectionCopy];
  }

  v10 = objc_loadWeakRetained(&self->_feedbackDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v13 = MEMORY[0x277CF9470];
    cardSection2 = [sectionCopy cardSection];
    v15 = [v13 cardSectionWithSFCardSection:cardSection2];
    [v12 userDidEngageCardSection:v15 withEngagementFeedback:sectionCopy];
  }
}

- (void)didPerformCommand:(id)command
{
  commandCopy = command;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v6 commandWasPerformed:commandCopy];
  }
}

- (void)cardViewDidAppear:(id)appear
{
  appearCopy = appear;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    card = [appearCopy card];
    [v6 cardViewDidAppearForCard:card withAppearanceFeedback:appearCopy];
  }
}

- (void)cardViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    card = [disappearCopy card];
    [v6 cardViewDidDisappearForCard:card withDisappearanceFeedback:disappearCopy];
  }
}

- (void)didReportUserResponseFeedback:(id)feedback
{
  feedbackCopy = feedback;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    cardSection = [feedbackCopy cardSection];
    [v6 userDidReportFeedback:feedbackCopy fromCardSection:cardSection];
  }
}

- (void)cardSectionViewDidInvalidateSize:(id)size animate:(BOOL)animate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v7 cardSectionViewDidInvalidateSizeForCardSection:0];
  }
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v6 presentViewController:controllerCopy];
  }
}

- (void)willDismissViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v6 willDismissViewController:controllerCopy];
  }
}

- (CRKFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end