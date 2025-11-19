@interface _SVXUserFeedbackSceneMutation
- (_SVXUserFeedbackSceneMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXUserFeedbackSceneMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXUserFeedbackScene alloc] initWithIdentifier:self->_identifier duration:self->_nodes nodes:self->_duration];
    goto LABEL_5;
  }

  if ((*&self->_mutationFlags & 1) == 0)
  {
    v4 = [(SVXUserFeedbackScene *)baseModel copy];
LABEL_5:
    v5 = v4;
    goto LABEL_15;
  }

  if ((*&self->_mutationFlags & 2) != 0)
  {
    v6 = self->_identifier;
  }

  else
  {
    v6 = [(SVXUserFeedbackScene *)baseModel identifier];
  }

  v7 = v6;
  if ((*&self->_mutationFlags & 4) != 0)
  {
    duration = self->_duration;
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v10 = [(SVXUserFeedbackScene *)self->_baseModel nodes];
    goto LABEL_14;
  }

  [(SVXUserFeedbackScene *)self->_baseModel duration];
  duration = v8;
  if ((*&self->_mutationFlags & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v10 = self->_nodes;
LABEL_14:
  v11 = v10;
  v5 = [[SVXUserFeedbackScene alloc] initWithIdentifier:v7 duration:v10 nodes:duration];

LABEL_15:

  return v5;
}

- (_SVXUserFeedbackSceneMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXUserFeedbackSceneMutation;
  v6 = [(_SVXUserFeedbackSceneMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end