@interface SVXSessionOperation
- (BOOL)handleOperationUsingActivationBlock:(id)a3 deactivationBlock:(id)a4;
- (SVXSessionOperation)initWithActivationContext:(id)a3 completion:(id)a4;
- (SVXSessionOperation)initWithDeactivationContext:(id)a3 completion:(id)a4;
- (id)description;
@end

@implementation SVXSessionOperation

- (BOOL)handleOperationUsingActivationBlock:(id)a3 deactivationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  type = self->_type;
  if (type == 1)
  {
    if (!v6)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v10 = 24;
    v11 = 16;
    v7 = v6;
    goto LABEL_7;
  }

  v12 = 0;
  if (v7 && type == 2)
  {
    v10 = 40;
    v11 = 32;
LABEL_7:
    (*(v7 + 2))(v7, *(&self->super.isa + v11), *(&self->super.isa + v10));
    v12 = 1;
  }

LABEL_9:

  return v12;
}

- (SVXSessionOperation)initWithDeactivationContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SVXSessionOperation;
  v8 = [(SVXSessionOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 2;
    v10 = [v6 copy];
    deactivationContext = v9->_deactivationContext;
    v9->_deactivationContext = v10;

    v12 = [v7 copy];
    deactivationCompletion = v9->_deactivationCompletion;
    v9->_deactivationCompletion = v12;
  }

  return v9;
}

- (SVXSessionOperation)initWithActivationContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SVXSessionOperation;
  v8 = [(SVXSessionOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    v10 = [v6 copy];
    activationContext = v9->_activationContext;
    v9->_activationContext = v10;

    v12 = [v7 copy];
    activationCompletion = v9->_activationCompletion;
    v9->_activationCompletion = v12;
  }

  return v9;
}

- (id)description
{
  type = self->_type;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  if (type == 2)
  {
    v20.receiver = self;
    v20.super_class = SVXSessionOperation;
    v5 = [(SVXSessionOperation *)&v20 description];
    v8 = self->_type;
    if (v8 > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C676C0[v8];
    }

    v12 = v9;
    v13 = v12;
    deactivationContext = self->_deactivationContext;
  }

  else
  {
    if (type != 1)
    {
      v19.receiver = self;
      v19.super_class = SVXSessionOperation;
      v5 = [(SVXSessionOperation *)&v19 description];
      v10 = self->_type;
      if (v10 > 2)
      {
        v11 = @"(unknown)";
      }

      else
      {
        v11 = off_279C676C0[v10];
      }

      v13 = v11;
      v15 = [v4 initWithFormat:@"%@ {type = %@}", v5, v13, v18];
      goto LABEL_16;
    }

    v21.receiver = self;
    v21.super_class = SVXSessionOperation;
    v5 = [(SVXSessionOperation *)&v21 description];
    v6 = self->_type;
    if (v6 > 2)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C676C0[v6];
    }

    v12 = v7;
    v13 = v12;
    deactivationContext = self->_activationContext;
  }

  v15 = [v4 initWithFormat:@"%@ {type = %@, context = %@}", v5, v12, deactivationContext];
LABEL_16:
  v16 = v15;

  return v16;
}

@end