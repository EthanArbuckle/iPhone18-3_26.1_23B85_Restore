@interface _UINotificationFeedbackGeneratorConfiguration
+ (id)privateConfiguration;
+ (id)privateConfigurationForTypes:(id)a3;
- (BOOL)defaultEnabled;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)feedbacks;
- (id)copyWithZone:(_NSZone *)a3;
- (id)feedbackKeyPaths;
- (void)setFeedbacks:(id)a3;
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

+ (id)privateConfiguration
{
  v2 = [a1 defaultConfiguration];
  [v2 set_stats_key:@"private"];
  [v2 setIncludePrivateEvents:1];
  [v2 setRequiredSupportLevel:0];

  return v2;
}

+ (id)privateConfigurationForTypes:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78___UINotificationFeedbackGeneratorConfiguration_privateConfigurationForTypes___block_invoke;
  v8[3] = &unk_1E71070C8;
  v9 = v4;
  v5 = v4;
  v6 = [a1 _configurationWithKey:@"private" requiredSupportLevel:0 preparationBlock:v8];
  [v6 setIncludePrivateEvents:1];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UINotificationFeedbackGeneratorConfiguration;
  v4 = [(_UIFeedbackGeneratorConfiguration *)&v8 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_feedbacks copy];
  v6 = v4[12];
  v4[12] = v5;

  *(v4 + 88) = self->_includePrivateEvents;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UINotificationFeedbackGeneratorConfiguration;
  if ([(_UIFeedbackGeneratorConfiguration *)&v13 isEqual:v4])
  {
    v5 = v4;
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

- (void)setFeedbacks:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  feedbacks = self->_feedbacks;
  self->_feedbacks = v4;
}

@end