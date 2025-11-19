@interface _UIStatesFeedbackGeneratorConfiguration
+ (id)keyFromState:(id)a3 toState:(id)a4;
- (NSDictionary)stateChangeConfigurations;
- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setStateChangeConfigurations:(id)a3;
@end

@implementation _UIStatesFeedbackGeneratorConfiguration

+ (id)keyFromState:(id)a3 toState:(id)a4
{
  v4 = @"any";
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"any";
  }

  if (a4)
  {
    v4 = a4;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@->%@", v5, v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = _UIStatesFeedbackGeneratorConfiguration;
  v4 = [(_UIFeedbackGeneratorConfiguration *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_initialState copy];
  v6 = v4[12];
  v4[12] = v5;

  v7 = [(NSDictionary *)self->_stateChangeConfigurations copy];
  v8 = v4[11];
  v4[11] = v7;

  return v4;
}

- (id)feedbackKeyPaths
{
  v10.receiver = self;
  v10.super_class = _UIStatesFeedbackGeneratorConfiguration;
  v3 = [(_UIFeedbackGeneratorConfiguration *)&v10 feedbackKeyPaths];
  v4 = [v3 mutableCopy];

  v5 = [(_UIStatesFeedbackGeneratorConfiguration *)self stateChangeConfigurations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___UIStatesFeedbackGeneratorConfiguration_feedbackKeyPaths__block_invoke;
  v8[3] = &unk_1E71073B0;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v10.receiver = self;
  v10.super_class = _UIStatesFeedbackGeneratorConfiguration;
  v3 = [(_UIFeedbackGeneratorConfiguration *)&v10 hidFeedbackPatternNameKeyPaths];
  v4 = [v3 mutableCopy];

  v5 = [(_UIStatesFeedbackGeneratorConfiguration *)self stateChangeConfigurations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___UIStatesFeedbackGeneratorConfiguration_hidFeedbackPatternNameKeyPaths__block_invoke;
  v8[3] = &unk_1E71073B0;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5
{
  v8 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__77;
  v23 = __Block_byref_object_dispose__77;
  v24 = 0;
  v9 = [(_UIStatesFeedbackGeneratorConfiguration *)self stateChangeConfigurations];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81___UIStatesFeedbackGeneratorConfiguration__alternateFeedback_forDevice_senderID___block_invoke;
  v16[3] = &unk_1E71073D8;
  v10 = v8;
  v17 = v10;
  v18 = &v19;
  [v9 enumerateKeysAndObjectsUsingBlock:v16];

  v11 = v20[5];
  if (v11)
  {
    v12 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:v11 deviceType:a4 senderID:a5];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _UIStatesFeedbackGeneratorConfiguration;
    v12 = [(_UIFeedbackGeneratorConfiguration *)&v15 _alternateFeedback:v10 forDevice:a4 senderID:a5];
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)setStateChangeConfigurations:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  stateChangeConfigurations = self->_stateChangeConfigurations;
  self->_stateChangeConfigurations = v4;
}

- (NSDictionary)stateChangeConfigurations
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  stateChangeConfigurations = self->_stateChangeConfigurations;

  return stateChangeConfigurations;
}

@end