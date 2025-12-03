@interface _UINotificationFeedbackGeneratorConfiguration
+ (id)privateConfiguration;
+ (id)privateConfigurationForTypes:(id)types;
- (BOOL)defaultEnabled;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)feedbacks;
- (id)copyWithZone:(_NSZone *)zone;
- (id)feedbackKeyPaths;
- (void)setFeedbacks:(id)feedbacks;
@end

@implementation _UINotificationFeedbackGeneratorConfiguration

- (BOOL)defaultEnabled
{
  if (self->_includePrivateEvents)
  {
    v6.receiver = self;
    v6.super_class = _UINotificationFeedbackGeneratorConfiguration;
    if ([(_UIFeedbackGeneratorConfiguration *)&v6 defaultEnabled])
    {
      return 1;
    }

    else
    {
      v3 = +[_UIFeedbackPreferences sharedPreferences];
      v2 = [v3 enabledFeedbackTypesForCategory:0x1EFB4AA10] != 0;
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UINotificationFeedbackGeneratorConfiguration;
    return [(_UIFeedbackGeneratorConfiguration *)&v5 defaultEnabled];
  }

  return v2;
}

- (id)feedbackKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UINotificationFeedbackGeneratorConfiguration;
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

+ (id)privateConfiguration
{
  defaultConfiguration = [self defaultConfiguration];
  [defaultConfiguration set_stats_key:@"private"];
  [defaultConfiguration setIncludePrivateEvents:1];
  [defaultConfiguration setRequiredSupportLevel:0];

  return defaultConfiguration;
}

+ (id)privateConfigurationForTypes:(id)types
{
  typesCopy = types;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78___UINotificationFeedbackGeneratorConfiguration_privateConfigurationForTypes___block_invoke;
  v8[3] = &unk_1E71070C8;
  v9 = typesCopy;
  v5 = typesCopy;
  v6 = [self _configurationWithKey:@"private" requiredSupportLevel:0 preparationBlock:v8];
  [v6 setIncludePrivateEvents:1];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UINotificationFeedbackGeneratorConfiguration;
  v4 = [(_UIFeedbackGeneratorConfiguration *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_feedbacks copy];
  v6 = v4[12];
  v4[12] = v5;

  *(v4 + 88) = self->_includePrivateEvents;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _UINotificationFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5[12];
    v7 = self->_feedbacks;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = [(NSDictionary *)v7 isEqual:v8];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setFeedbacks:(id)feedbacks
{
  feedbacksCopy = feedbacks;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedbacks = self->_feedbacks;
  self->_feedbacks = feedbacksCopy;
}

@end