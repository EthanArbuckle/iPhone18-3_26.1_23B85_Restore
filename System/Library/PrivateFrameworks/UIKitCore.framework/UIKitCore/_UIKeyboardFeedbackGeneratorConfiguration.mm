@interface _UIKeyboardFeedbackGeneratorConfiguration
- (BOOL)defaultEnabled;
- (NSDictionary)feedbacks;
- (id)feedbackKeyPaths;
- (void)setFeedbacks:(id)a3;
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
  v2 = [(_UIFeedbackGeneratorConfiguration *)&v6 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_feedbacks);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (NSDictionary)feedbacks
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedbacks = self->_feedbacks;

  return feedbacks;
}

- (void)setFeedbacks:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedbacks = self->_feedbacks;
  self->_feedbacks = v4;
}

@end