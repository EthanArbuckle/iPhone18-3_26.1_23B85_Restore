@interface _UIDragSnappingFeedbackGeneratorConfiguration
- (_UIFeedbackDiscretePlayable)objectSnappedFeedback;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
- (id)feedbackKeyPaths;
- (id)hidFeedbackPatternNameKeyPaths;
- (void)setObjectSnappedFeedback:(id)feedback;
@end

@implementation _UIDragSnappingFeedbackGeneratorConfiguration

- (id)feedbackKeyPaths
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIDragSnappingFeedbackGeneratorConfiguration;
  feedbackKeyPaths = [(_UIDragFeedbackGeneratorConfiguration *)&v7 feedbackKeyPaths];
  v3 = NSStringFromSelector(sel_objectSnappedFeedback);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [feedbackKeyPaths arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)hidFeedbackPatternNameKeyPaths
{
  v6.receiver = self;
  v6.super_class = _UIDragSnappingFeedbackGeneratorConfiguration;
  hidFeedbackPatternNameKeyPaths = [(_UIDragFeedbackGeneratorConfiguration *)&v6 hidFeedbackPatternNameKeyPaths];
  v3 = NSStringFromSelector(sel_hidObjectSnappedFeedbackPatternName);
  v4 = [hidFeedbackPatternNameKeyPaths arrayByAddingObject:v3];

  return v4;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  objectSnappedFeedback = [(_UIDragSnappingFeedbackGeneratorConfiguration *)self objectSnappedFeedback];
  v10 = [feedbackCopy isEqual:objectSnappedFeedback];

  if (v10)
  {
    hidObjectSnappedFeedbackPatternName = [(_UIDragSnappingFeedbackGeneratorConfiguration *)self hidObjectSnappedFeedbackPatternName];
    v12 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:hidObjectSnappedFeedbackPatternName deviceType:device senderID:d];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIDragSnappingFeedbackGeneratorConfiguration;
    v12 = [(_UIDragFeedbackGeneratorConfiguration *)&v14 _alternateFeedback:feedbackCopy forDevice:device senderID:d];
  }

  return v12;
}

- (void)setObjectSnappedFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  objectSnappedFeedback = self->_objectSnappedFeedback;
  self->_objectSnappedFeedback = feedbackCopy;
}

- (_UIFeedbackDiscretePlayable)objectSnappedFeedback
{
  [(_UIFeedbackGeneratorConfiguration *)self _setupIfNecessary];
  objectSnappedFeedback = self->_objectSnappedFeedback;

  return objectSnappedFeedback;
}

@end