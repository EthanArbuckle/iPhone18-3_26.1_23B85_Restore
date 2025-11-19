@interface SiriSharedUIFeedbackController
- (BOOL)isProvidingFeedback;
- (SiriSharedUIFeedbackController)initWithCoder:(id)a3;
- (SiriSharedUIFeedbackController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setEvaluationResult:(id)a3;
- (void)setFeedbackController:(id)a3;
- (void)setIsProvidingFeedback:(BOOL)a3;
- (void)userDidReportConcernForSuggestionsWithModel:(id)a3;
- (void)userDidReportConcernWithModel:(id)a3;
@end

@implementation SiriSharedUIFeedbackController

- (BOOL)isProvidingFeedback
{
  v3 = OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsProvidingFeedback:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (void)setFeedbackController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController) = a3;
  v3 = a3;
}

- (void)setEvaluationResult:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult) = a3;
  v3 = a3;
}

- (SiriSharedUIFeedbackController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_21E4DCF78();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SiriSharedUIFeedbackController.init(nibName:bundle:)(v5, v7, a4);
}

- (SiriSharedUIFeedbackController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult) = 0;
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (void)userDidReportConcernForSuggestionsWithModel:(id)a3
{
  v4 = a3;
  v5 = self;
  SiriSharedUIFeedbackController.userDidReportConcernForSuggestions(with:)(v4);
}

- (void)userDidReportConcernWithModel:(id)a3
{
  v4 = a3;
  v5 = self;
  SiriSharedUIFeedbackController.userDidReportConcern(with:)(v4);
}

@end