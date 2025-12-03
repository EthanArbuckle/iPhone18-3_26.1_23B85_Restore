@interface SiriSharedUIFeedbackController
- (BOOL)isProvidingFeedback;
- (SiriSharedUIFeedbackController)initWithCoder:(id)coder;
- (SiriSharedUIFeedbackController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setEvaluationResult:(id)result;
- (void)setFeedbackController:(id)controller;
- (void)setIsProvidingFeedback:(BOOL)feedback;
- (void)userDidReportConcernForSuggestionsWithModel:(id)model;
- (void)userDidReportConcernWithModel:(id)model;
@end

@implementation SiriSharedUIFeedbackController

- (BOOL)isProvidingFeedback
{
  v3 = OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsProvidingFeedback:(BOOL)feedback
{
  v5 = OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = feedback;
}

- (void)setFeedbackController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController) = controller;
  controllerCopy = controller;
}

- (void)setEvaluationResult:(id)result
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult);
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult) = result;
  resultCopy = result;
}

- (SiriSharedUIFeedbackController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21E4DCF78();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SiriSharedUIFeedbackController.init(nibName:bundle:)(v5, v7, bundle);
}

- (SiriSharedUIFeedbackController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult) = 0;
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (void)userDidReportConcernForSuggestionsWithModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  SiriSharedUIFeedbackController.userDidReportConcernForSuggestions(with:)(modelCopy);
}

- (void)userDidReportConcernWithModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  SiriSharedUIFeedbackController.userDidReportConcern(with:)(modelCopy);
}

@end