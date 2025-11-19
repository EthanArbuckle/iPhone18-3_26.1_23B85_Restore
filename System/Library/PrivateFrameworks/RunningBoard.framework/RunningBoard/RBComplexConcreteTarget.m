@interface RBComplexConcreteTarget
- (BOOL)isEqual:(id)a3;
- (id)_initWithProcess:(void *)a3 identity:(void *)a4 environment:;
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
    v3 = [MEMORY[0x277D47008] systemTarget];
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
    v3 = ;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_13;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_process != v4->_process || v4->_identity && ![(RBSProcessIdentity *)self->_identity isEqualToIdentity:?])
  {
    goto LABEL_4;
  }

  environment = self->_environment;
  v8 = v4->_environment;
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

- (id)_initWithProcess:(void *)a3 identity:(void *)a4 environment:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = RBComplexConcreteTarget;
    v11 = objc_msgSendSuper2(&v21, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      v12 = [v10 copy];
      v13 = a1[4];
      a1[4] = v12;

      if (a1[4])
      {
        v14 = objc_alloc(MEMORY[0x277CCACA8]);
        v15 = a1[2];
        if (!v15)
        {
          v15 = a1[3];
        }

        v16 = [v15 shortDescription];
        v17 = [v14 initWithFormat:@"%@(%@)", v16, a1[4]];
        v18 = a1[1];
        a1[1] = v17;
      }

      else
      {
        v19 = [a1[3] shortDescription];
        v16 = a1[1];
        a1[1] = v19;
      }
    }
  }

  return a1;
}

@end