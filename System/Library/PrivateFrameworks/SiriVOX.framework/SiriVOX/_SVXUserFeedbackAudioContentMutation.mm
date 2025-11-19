@interface _SVXUserFeedbackAudioContentMutation
- (_SVXUserFeedbackAudioContentMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXUserFeedbackAudioContentMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXUserFeedbackAudioContent alloc] initWithItemURL:self->_itemURL numberOfLoops:self->_numberOfLoops fadeInDuration:self->_fadeInDuration fadeOutDuration:self->_fadeOutDuration];
    goto LABEL_5;
  }

  if ((*&self->_mutationFlags & 1) == 0)
  {
    v4 = [(SVXUserFeedbackAudioContent *)baseModel copy];
LABEL_5:
    v5 = v4;
    goto LABEL_17;
  }

  if ((*&self->_mutationFlags & 2) != 0)
  {
    v6 = self->_itemURL;
  }

  else
  {
    v6 = [(SVXUserFeedbackAudioContent *)baseModel itemURL];
  }

  v7 = v6;
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 4) == 0)
  {
    numberOfLoops = [(SVXUserFeedbackAudioContent *)self->_baseModel numberOfLoops];
    mutationFlags = self->_mutationFlags;
    if ((mutationFlags & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    [(SVXUserFeedbackAudioContent *)self->_baseModel fadeInDuration];
    fadeInDuration = v12;
    if ((*&self->_mutationFlags & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    [(SVXUserFeedbackAudioContent *)self->_baseModel fadeOutDuration];
    fadeOutDuration = v13;
    goto LABEL_16;
  }

  numberOfLoops = self->_numberOfLoops;
  if ((*&self->_mutationFlags & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  fadeInDuration = self->_fadeInDuration;
  if ((mutationFlags & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  fadeOutDuration = self->_fadeOutDuration;
LABEL_16:
  v5 = [[SVXUserFeedbackAudioContent alloc] initWithItemURL:v7 numberOfLoops:numberOfLoops fadeInDuration:fadeInDuration fadeOutDuration:fadeOutDuration];

LABEL_17:

  return v5;
}

- (_SVXUserFeedbackAudioContentMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXUserFeedbackAudioContentMutation;
  v6 = [(_SVXUserFeedbackAudioContentMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end