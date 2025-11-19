@interface SUICKPFeedbackAdapter
- (BOOL)shouldHandleCardSectionEngagement:(id)a3;
- (CRKFeedbackDelegate)feedbackDelegate;
- (id)feedbackListener;
- (void)cardSectionViewDidInvalidateSize:(id)a3 animate:(BOOL)a4;
- (void)cardViewDidAppear:(id)a3;
- (void)cardViewDidDisappear:(id)a3;
- (void)didEngageCardSection:(id)a3;
- (void)didPerformCommand:(id)a3;
- (void)didReportUserResponseFeedback:(id)a3;
- (void)presentViewController:(id)a3;
- (void)willDismissViewController:(id)a3;
@end

@implementation SUICKPFeedbackAdapter

- (id)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (BOOL)shouldHandleCardSectionEngagement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v8 = MEMORY[0x277CF9470];
    v9 = [v4 cardSection];
    v10 = [v8 cardSectionWithSFCardSection:v9];
    v11 = [v7 shouldHandleEngagement:v4 forCardSection:v10];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)didEngageCardSection:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v7 = MEMORY[0x277CF9470];
    v8 = [v16 cardSection];
    v9 = [v7 cardSectionWithSFCardSection:v8];
    [v6 cardSectionView:v9 willProcessEngagementFeedback:v16];
  }

  v10 = objc_loadWeakRetained(&self->_feedbackDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v13 = MEMORY[0x277CF9470];
    v14 = [v16 cardSection];
    v15 = [v13 cardSectionWithSFCardSection:v14];
    [v12 userDidEngageCardSection:v15 withEngagementFeedback:v16];
  }
}

- (void)didPerformCommand:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v6 commandWasPerformed:v7];
  }
}

- (void)cardViewDidAppear:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v7 = [v8 card];
    [v6 cardViewDidAppearForCard:v7 withAppearanceFeedback:v8];
  }
}

- (void)cardViewDidDisappear:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v7 = [v8 card];
    [v6 cardViewDidDisappearForCard:v7 withDisappearanceFeedback:v8];
  }
}

- (void)didReportUserResponseFeedback:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    v7 = [v8 cardSection];
    [v6 userDidReportFeedback:v8 fromCardSection:v7];
  }
}

- (void)cardSectionViewDidInvalidateSize:(id)a3 animate:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v7 cardSectionViewDidInvalidateSizeForCardSection:0];
  }
}

- (void)presentViewController:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v6 presentViewController:v7];
  }
}

- (void)willDismissViewController:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_feedbackDelegate);
    [v6 willDismissViewController:v7];
  }
}

- (CRKFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end