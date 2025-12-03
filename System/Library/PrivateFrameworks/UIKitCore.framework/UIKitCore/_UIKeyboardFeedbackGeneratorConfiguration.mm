@interface _UIKeyboardFeedbackGeneratorConfiguration
- (BOOL)defaultEnabled;
- (NSDictionary)feedbacks;
- (id)feedbackKeyPaths;
- (void)setFeedbacks:(id)feedbacks;
@end

@implementation _UIKeyboardFeedbackGeneratorConfiguration

- (BOOL)defaultEnabled
{
  v2 = +[_UIFeedbackPreferences sharedPreferences];
  v3 = [v2 enabledFeedbackTypesForCategory:0x1EFB48430];

  return v3 & 1;
}

- (id)feedbackKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardFeedbackGeneratorConfiguration;
  feedbackKeyPaths = [(_UIFeedbackGeneratorConfiguration *)&v6 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_feedbacks);
  v4 = [feedbackKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (NSDictionary)feedbacks
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedbacks = self->_feedbacks;

  return feedbacks;
}

- (void)setFeedbacks:(id)feedbacks
{
  feedbacksCopy = feedbacks;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedbacks = self->_feedbacks;
  self->_feedbacks = feedbacksCopy;
}

@end