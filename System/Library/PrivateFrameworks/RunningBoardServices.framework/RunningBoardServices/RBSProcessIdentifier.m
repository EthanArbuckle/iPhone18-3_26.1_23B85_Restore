@interface RBSProcessIdentifier
+ (id)identifierForCurrentProcess;
+ (id)identifierForIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSProcessIdentifier)init;
- (RBSProcessIdentifier)initWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessIdentifier

- (NSString)description
{
  v2 = self;
  objc_sync_enter(v2);
  description = v2->_description;
  if (!description)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d", v2->_pid];
    v5 = v2->_description;
    v2->_description = v4;

    description = v2->_description;
  }

  v6 = description;
  objc_sync_exit(v2);

  return v6;
}

+ (id)identifierForCurrentProcess
{
  v3 = getpid();

  return [a1 identifierWithPid:v3];
}

+ (id)identifierForIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 identifierWithPid:{objc_msgSend(v4, "rbs_pid")}];
  }

  v7 = v6;

  return v7;
}

- (RBSProcessIdentifier)init
{
  v3 = getpid();

  return [(RBSProcessIdentifier *)self initWithPid:v3];
}

uint64_t __36__RBSProcessIdentifier_initWithPid___block_invoke()
{
  __ProcessIdentifiers = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() || (objc_opt_respondsToSelector() & 1) != 0)
    {
      pid = self->_pid;
      v7 = pid == [(RBSProcessIdentifier *)v4 rbs_pid];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (RBSProcessIdentifier)initWithRBSXPCCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"_pid"];

  return [(RBSProcessIdentifier *)self initWithPid:v4];
}

@end