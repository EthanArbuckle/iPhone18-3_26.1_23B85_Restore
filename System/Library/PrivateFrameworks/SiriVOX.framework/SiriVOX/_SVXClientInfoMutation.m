@interface _SVXClientInfoMutation
- (_SVXClientInfoMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXClientInfoMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXClientInfo alloc] initWithProcessIdentifier:self->_processIdentifier processName:self->_processName];
    goto LABEL_5;
  }

  if ((*&self->_mutationFlags & 1) == 0)
  {
    v4 = [(SVXClientInfo *)baseModel copy];
LABEL_5:
    v5 = v4;
    goto LABEL_12;
  }

  if ((*&self->_mutationFlags & 2) != 0)
  {
    processIdentifier = self->_processIdentifier;
    if ((*&self->_mutationFlags & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v7 = [(SVXClientInfo *)self->_baseModel processName];
    goto LABEL_11;
  }

  processIdentifier = [(SVXClientInfo *)baseModel processIdentifier];
  if ((*&self->_mutationFlags & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = self->_processName;
LABEL_11:
  v8 = v7;
  v5 = [[SVXClientInfo alloc] initWithProcessIdentifier:processIdentifier processName:v7];

LABEL_12:

  return v5;
}

- (_SVXClientInfoMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXClientInfoMutation;
  v6 = [(_SVXClientInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end