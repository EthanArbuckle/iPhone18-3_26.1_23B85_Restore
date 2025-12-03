@interface _UIFeedbackStateChangeConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIFeedbackStateChangeConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(_UIFeedbackDiscretePlayable *)self->_thresholdFeedback copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(_UIFeedbackContinuousPlayable *)self->_approachFeedback copy];
  v8 = v4[2];
  v4[2] = v7;

  v4[3] = *&self->_approachStart;
  v4[4] = *&self->_approachEnd;
  v4[5] = *&self->_approachCurvature;
  v4[6] = *&self->_approachVolumeMax;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = _UIFeedbackStateChangeConfiguration;
  if ([(_UIFeedbackStateChangeConfiguration *)&v16 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = *(v5 + 1);
    v7 = self->_thresholdFeedback;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (!v7 || !v8)
      {
        goto LABEL_14;
      }

      v10 = [(_UIFeedbackDiscretePlayable *)v7 isEqual:v8];

      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v12 = *(v5 + 2);
    v7 = self->_approachFeedback;
    v13 = v12;
    v9 = v13;
    if (v7 == v13)
    {

LABEL_19:
      if (self->_approachStart == v5[3] && self->_approachEnd == v5[4] && self->_approachCurvature == v5[5])
      {
        v11 = self->_approachVolumeMax == v5[6];
        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    if (v7 && v13)
    {
      v14 = [(_UIFeedbackDiscretePlayable *)v7 isEqual:v13];

      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

@end