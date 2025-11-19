@interface RBSEndowmentLink
+ (id)endowmentLinkForNamespace:(id)a3 sourceEnvironment:(id)a4 sourcePid:(int)a5 targetEnvironment:(id)a6 targetPid:(int)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSEndowmentLink)initWithRBSXPCCoder:(id)a3;
- (id)_initWithNamespace:(void *)a3 sourceEnvironment:(int)a4 sourcePid:(void *)a5 targetEnvironment:(int)a6 targetPid:;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSEndowmentLink

+ (id)endowmentLinkForNamespace:(id)a3 sourceEnvironment:(id)a4 sourcePid:(int)a5 targetEnvironment:(id)a6 targetPid:(int)a7
{
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [[RBSEndowmentLink alloc] _initWithNamespace:v13 sourceEnvironment:v12 sourcePid:a5 targetEnvironment:v11 targetPid:a7];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RBSEndowmentLink);
  objc_storeStrong(&v4->_endowmentNamespace, self->_endowmentNamespace);
  objc_storeStrong(&v4->_sourceEnvironment, self->_sourceEnvironment);
  v4->_sourcePid = self->_sourcePid;
  objc_storeStrong(&v4->_targetEnvironment, self->_targetEnvironment);
  v4->_targetPid = self->_targetPid;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  endowmentNamespace = self->_endowmentNamespace;
  v9 = v4->_endowmentNamespace;
  if (endowmentNamespace != v9)
  {
    v6 = 0;
    if (!endowmentNamespace || !v9)
    {
      goto LABEL_5;
    }

    if (![(NSString *)endowmentNamespace isEqual:?])
    {
      goto LABEL_3;
    }
  }

  sourceEnvironment = self->_sourceEnvironment;
  v11 = v4->_sourceEnvironment;
  if (sourceEnvironment != v11)
  {
    v6 = 0;
    if (!sourceEnvironment || !v11)
    {
      goto LABEL_5;
    }

    if (![(NSString *)sourceEnvironment isEqual:?])
    {
      goto LABEL_3;
    }
  }

  if (self->_sourcePid != v4->_sourcePid)
  {
    goto LABEL_3;
  }

  targetEnvironment = self->_targetEnvironment;
  v13 = v4->_targetEnvironment;
  if (targetEnvironment == v13)
  {
LABEL_19:
    v6 = self->_targetPid == v4->_targetPid;
    goto LABEL_5;
  }

  v6 = 0;
  if (targetEnvironment && v13)
  {
    if ([(NSString *)targetEnvironment isEqual:?])
    {
      goto LABEL_19;
    }

LABEL_3:
    v6 = 0;
  }

LABEL_5:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_endowmentNamespace hash];
  v4 = [(NSString *)self->_sourceEnvironment hash]^ v3;
  sourcePid = self->_sourcePid;
  return v4 ^ sourcePid ^ [(NSString *)self->_targetEnvironment hash]^ self->_targetPid;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| namespace:%@ srcEnv:%d/%@ targEnv:%d/%@>", v4, self->_endowmentNamespace, self->_sourcePid, self->_sourceEnvironment, self->_targetPid, self->_targetEnvironment];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  endowmentNamespace = self->_endowmentNamespace;
  v5 = a3;
  [v5 encodeObject:endowmentNamespace forKey:@"_endowmentNamespace"];
  [v5 encodeObject:self->_sourceEnvironment forKey:@"_sourceEnvironment"];
  [v5 encodeInt64:self->_sourcePid forKey:@"_sourcePid"];
  [v5 encodeObject:self->_targetEnvironment forKey:@"_targetEnvironment"];
  [v5 encodeInt64:self->_targetPid forKey:@"_targetPid"];
}

- (RBSEndowmentLink)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSEndowmentLink;
  v5 = [(RBSEndowmentLink *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endowmentNamespace"];
    endowmentNamespace = v5->_endowmentNamespace;
    v5->_endowmentNamespace = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceEnvironment"];
    sourceEnvironment = v5->_sourceEnvironment;
    v5->_sourceEnvironment = v8;

    v5->_sourcePid = [v4 decodeInt64ForKey:@"_sourcePid"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetEnvironment"];
    targetEnvironment = v5->_targetEnvironment;
    v5->_targetEnvironment = v10;

    v5->_targetPid = [v4 decodeInt64ForKey:@"_targetPid"];
  }

  return v5;
}

- (id)_initWithNamespace:(void *)a3 sourceEnvironment:(int)a4 sourcePid:(void *)a5 targetEnvironment:(int)a6 targetPid:
{
  v12 = a2;
  v13 = a3;
  v14 = a5;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = RBSEndowmentLink;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      *(a1 + 2) = a4;
      objc_storeStrong(a1 + 4, a5);
      *(a1 + 3) = a6;
    }
  }

  return a1;
}

@end