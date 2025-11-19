@interface RBSProcessExitEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSProcessExitEvent)initWithRBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessExitEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RBSProcessExitEvent);
  [(RBSProcessExitEvent *)v4 setProcess:self->_process];
  [(RBSProcessExitEvent *)v4 setContext:self->_context];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_12;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
LABEL_3:
    v6 = 0;
    goto LABEL_13;
  }

  process = self->_process;
  v8 = v4->_process;
  if (process != v8)
  {
    v6 = 0;
    if (!process || !v8)
    {
      goto LABEL_13;
    }

    if (![(RBSProcessHandle *)process isEqual:?])
    {
      goto LABEL_3;
    }
  }

  context = self->_context;
  v10 = v4->_context;
  if (context == v10)
  {
LABEL_12:
    v6 = 1;
    goto LABEL_13;
  }

  v6 = 0;
  if (context && v10)
  {
    v6 = [(RBSProcessExitContext *)context isEqual:?];
  }

LABEL_13:

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| process:%@ context:%@>", v4, self->_process, self->_context];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  process = self->_process;
  v5 = a3;
  [v5 encodeObject:process forKey:@"_process"];
  [v5 encodeObject:self->_context forKey:@"_context"];
}

- (RBSProcessExitEvent)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RBSProcessExitEvent;
  v5 = [(RBSProcessExitEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_process"];
    process = v5->_process;
    v5->_process = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v8;
  }

  return v5;
}

@end