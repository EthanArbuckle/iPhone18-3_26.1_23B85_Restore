@interface _SVXButtonEventMutation
- (_SVXButtonEventMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXButtonEventMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if ((*&self->_mutationFlags & 1) == 0)
    {
      v4 = [(SVXButtonEvent *)baseModel copy];
      goto LABEL_12;
    }

    if ((*&self->_mutationFlags & 2) != 0)
    {
      type = self->_type;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      type = [(SVXButtonEvent *)baseModel type];
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_7:
        timestamp = self->_timestamp;
LABEL_10:
        v5 = [SVXButtonEvent alloc];
        v6 = type;
        v7 = timestamp;
        goto LABEL_11;
      }
    }

    timestamp = [(SVXButtonEvent *)self->_baseModel timestamp];
    goto LABEL_10;
  }

  v5 = [SVXButtonEvent alloc];
  v6 = self->_type;
  v7 = self->_timestamp;
LABEL_11:
  v4 = [(SVXButtonEvent *)v5 initWithType:v6 timestamp:v7];
LABEL_12:

  return v4;
}

- (_SVXButtonEventMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXButtonEventMutation;
  v6 = [(_SVXButtonEventMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end