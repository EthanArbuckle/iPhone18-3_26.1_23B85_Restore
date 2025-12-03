@interface _SVXDeviceProblemsStateMutation
- (_SVXDeviceProblemsStateMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXDeviceProblemsStateMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if ((*&self->_mutationFlags & 1) == 0)
    {
      v4 = [(SVXDeviceProblemsState *)baseModel copy];
      goto LABEL_12;
    }

    if ((*&self->_mutationFlags & 2) != 0)
    {
      isFixingProblems = self->_isFixingProblems;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      isFixingProblems = [(SVXDeviceProblemsState *)baseModel isFixingProblems];
      if ((*&self->_mutationFlags & 4) != 0)
      {
LABEL_7:
        problems = self->_problems;
LABEL_10:
        v5 = [SVXDeviceProblemsState alloc];
        v6 = isFixingProblems;
        v7 = problems;
        goto LABEL_11;
      }
    }

    problems = [(SVXDeviceProblemsState *)self->_baseModel problems];
    goto LABEL_10;
  }

  v5 = [SVXDeviceProblemsState alloc];
  v6 = self->_isFixingProblems;
  v7 = self->_problems;
LABEL_11:
  v4 = [(SVXDeviceProblemsState *)v5 initWithIsFixingProblems:v6 problems:v7];
LABEL_12:

  return v4;
}

- (_SVXDeviceProblemsStateMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXDeviceProblemsStateMutation;
  v6 = [(_SVXDeviceProblemsStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end