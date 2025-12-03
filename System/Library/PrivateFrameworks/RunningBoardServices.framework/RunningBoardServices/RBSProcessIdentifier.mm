@interface RBSProcessIdentifier
+ (id)identifierForCurrentProcess;
+ (id)identifierForIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSProcessIdentifier)init;
- (RBSProcessIdentifier)initWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessIdentifier

- (NSString)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  description = selfCopy->_description;
  if (!description)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d", selfCopy->_pid];
    v5 = selfCopy->_description;
    selfCopy->_description = v4;

    description = selfCopy->_description;
  }

  v6 = description;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)identifierForCurrentProcess
{
  v3 = getpid();

  return [self identifierWithPid:v3];
}

+ (id)identifierForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = identifierCopy;
  }

  else
  {
    v6 = [self identifierWithPid:{objc_msgSend(identifierCopy, "rbs_pid")}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() || (objc_opt_respondsToSelector() & 1) != 0)
    {
      pid = self->_pid;
      v7 = pid == [(RBSProcessIdentifier *)equalCopy rbs_pid];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (RBSProcessIdentifier)initWithRBSXPCCoder:(id)coder
{
  v4 = [coder decodeInt64ForKey:@"_pid"];

  return [(RBSProcessIdentifier *)self initWithPid:v4];
}

@end