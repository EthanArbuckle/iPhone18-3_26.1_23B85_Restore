@interface RBComplexConcreteTarget
- (BOOL)isEqual:(id)equal;
- (id)_initWithProcess:(void *)process identity:(void *)identity environment:;
- (id)createRBSTarget;
- (unint64_t)hash;
@end

@implementation RBComplexConcreteTarget

- (unint64_t)hash
{
  v3 = [(RBSProcessIdentity *)self->_identity hash];
  v4 = [(NSString *)self->_environment hash]^ v3;
  return v4 ^ [(RBProcess *)self->_process hash];
}

- (id)createRBSTarget
{
  if ([(RBComplexConcreteTarget *)self isSystem])
  {
    systemTarget = [MEMORY[0x277D47008] systemTarget];
  }

  else
  {
    process = self->_process;
    if (process)
    {
      [MEMORY[0x277D47008] targetWithPid:-[RBProcess rbs_pid](process environmentIdentifier:{"rbs_pid"), self->_environment}];
    }

    else
    {
      [MEMORY[0x277D47008] targetWithProcessIdentity:self->_identity environmentIdentifier:self->_environment];
    }
    systemTarget = ;
  }

  return systemTarget;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_13;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_process != equalCopy->_process || equalCopy->_identity && ![(RBSProcessIdentity *)self->_identity isEqualToIdentity:?])
  {
    goto LABEL_4;
  }

  environment = self->_environment;
  v8 = equalCopy->_environment;
  if (environment == v8)
  {
LABEL_13:
    v6 = 1;
    goto LABEL_14;
  }

  if (environment)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(NSString *)environment isEqualToString:?];
    goto LABEL_14;
  }

LABEL_4:
  v6 = 0;
LABEL_14:

  return v6;
}

- (id)_initWithProcess:(void *)process identity:(void *)identity environment:
{
  v8 = a2;
  processCopy = process;
  identityCopy = identity;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = RBComplexConcreteTarget;
    v11 = objc_msgSendSuper2(&v21, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      objc_storeStrong(self + 3, process);
      v12 = [identityCopy copy];
      v13 = self[4];
      self[4] = v12;

      if (self[4])
      {
        v14 = objc_alloc(MEMORY[0x277CCACA8]);
        v15 = self[2];
        if (!v15)
        {
          v15 = self[3];
        }

        shortDescription = [v15 shortDescription];
        v17 = [v14 initWithFormat:@"%@(%@)", shortDescription, self[4]];
        v18 = self[1];
        self[1] = v17;
      }

      else
      {
        shortDescription2 = [self[3] shortDescription];
        shortDescription = self[1];
        self[1] = shortDescription2;
      }
    }
  }

  return self;
}

@end