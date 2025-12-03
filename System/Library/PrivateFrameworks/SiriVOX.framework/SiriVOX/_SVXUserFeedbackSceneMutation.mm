@interface _SVXUserFeedbackSceneMutation
- (_SVXUserFeedbackSceneMutation)initWithBaseModel:(id)model;
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
    identifier = self->_identifier;
  }

  else
  {
    identifier = [(SVXUserFeedbackScene *)baseModel identifier];
  }

  v7 = identifier;
  if ((*&self->_mutationFlags & 4) != 0)
  {
    duration = self->_duration;
    if ((*&self->_mutationFlags & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    nodes = [(SVXUserFeedbackScene *)self->_baseModel nodes];
    goto LABEL_14;
  }

  [(SVXUserFeedbackScene *)self->_baseModel duration];
  duration = v8;
  if ((*&self->_mutationFlags & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  nodes = self->_nodes;
LABEL_14:
  v11 = nodes;
  v5 = [[SVXUserFeedbackScene alloc] initWithIdentifier:v7 duration:nodes nodes:duration];

LABEL_15:

  return v5;
}

- (_SVXUserFeedbackSceneMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXUserFeedbackSceneMutation;
  v6 = [(_SVXUserFeedbackSceneMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end