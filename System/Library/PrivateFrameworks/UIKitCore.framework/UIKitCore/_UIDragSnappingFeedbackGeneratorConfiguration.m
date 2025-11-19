@interface _UIDragSnappingFeedbackGeneratorConfiguration
- (_UIFeedbackDiscretePlayable)objectSnappedFeedback;
- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setObjectSnappedFeedback:(id)a3;
@end

@implementation _UIDragSnappingFeedbackGeneratorConfiguration

- (id)feedbackKeyPaths
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIDragSnappingFeedbackGeneratorConfiguration;
  v2 = [(_UIDragFeedbackGeneratorConfiguration *)&v7 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_objectSnappedFeedback);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIDragSnappingFeedbackGeneratorConfiguration;
  v2 = [(_UIDragFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidObjectSnappedFeedbackPatternName);
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5
{
  v8 = a3;
  v9 = [(_UIDragSnappingFeedbackGeneratorConfiguration *)self objectSnappedFeedback];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [(_UIDragSnappingFeedbackGeneratorConfiguration *)self hidObjectSnappedFeedbackPatternName];
    v12 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:v11 deviceType:a4 senderID:a5];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIDragSnappingFeedbackGeneratorConfiguration;
    v12 = [(_UIDragFeedbackGeneratorConfiguration *)&v14 _alternateFeedback:v8 forDevice:a4 senderID:a5];
  }

  return v12;
}

- (void)setObjectSnappedFeedback:(id)a3
{
  v4 = a3;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  objectSnappedFeedback = self->_objectSnappedFeedback;
  self->_objectSnappedFeedback = v4;
}

- (_UIFeedbackDiscretePlayable)objectSnappedFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  objectSnappedFeedback = self->_objectSnappedFeedback;

  return objectSnappedFeedback;
}

@end