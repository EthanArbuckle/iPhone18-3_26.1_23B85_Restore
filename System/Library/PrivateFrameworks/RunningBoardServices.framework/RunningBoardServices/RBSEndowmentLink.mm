@interface RBSEndowmentLink
+ (id)endowmentLinkForNamespace:(id)namespace sourceEnvironment:(id)environment sourcePid:(int)pid targetEnvironment:(id)targetEnvironment targetPid:(int)targetPid;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSEndowmentLink)initWithRBSXPCCoder:(id)coder;
- (id)_initWithNamespace:(void *)namespace sourceEnvironment:(int)environment sourcePid:(void *)pid targetEnvironment:(int)targetEnvironment targetPid:;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSEndowmentLink

+ (id)endowmentLinkForNamespace:(id)namespace sourceEnvironment:(id)environment sourcePid:(int)pid targetEnvironment:(id)targetEnvironment targetPid:(int)targetPid
{
  targetEnvironmentCopy = targetEnvironment;
  environmentCopy = environment;
  namespaceCopy = namespace;
  v14 = [[RBSEndowmentLink alloc] _initWithNamespace:namespaceCopy sourceEnvironment:environmentCopy sourcePid:pid targetEnvironment:targetEnvironmentCopy targetPid:targetPid];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RBSEndowmentLink);
  objc_storeStrong(&v4->_endowmentNamespace, self->_endowmentNamespace);
  objc_storeStrong(&v4->_sourceEnvironment, self->_sourceEnvironment);
  v4->_sourcePid = self->_sourcePid;
  objc_storeStrong(&v4->_targetEnvironment, self->_targetEnvironment);
  v4->_targetPid = self->_targetPid;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  v9 = equalCopy->_endowmentNamespace;
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
  v11 = equalCopy->_sourceEnvironment;
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

  if (self->_sourcePid != equalCopy->_sourcePid)
  {
    goto LABEL_3;
  }

  targetEnvironment = self->_targetEnvironment;
  v13 = equalCopy->_targetEnvironment;
  if (targetEnvironment == v13)
  {
LABEL_19:
    v6 = self->_targetPid == equalCopy->_targetPid;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  endowmentNamespace = self->_endowmentNamespace;
  coderCopy = coder;
  [coderCopy encodeObject:endowmentNamespace forKey:@"_endowmentNamespace"];
  [coderCopy encodeObject:self->_sourceEnvironment forKey:@"_sourceEnvironment"];
  [coderCopy encodeInt64:self->_sourcePid forKey:@"_sourcePid"];
  [coderCopy encodeObject:self->_targetEnvironment forKey:@"_targetEnvironment"];
  [coderCopy encodeInt64:self->_targetPid forKey:@"_targetPid"];
}

- (RBSEndowmentLink)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RBSEndowmentLink;
  v5 = [(RBSEndowmentLink *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endowmentNamespace"];
    endowmentNamespace = v5->_endowmentNamespace;
    v5->_endowmentNamespace = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceEnvironment"];
    sourceEnvironment = v5->_sourceEnvironment;
    v5->_sourceEnvironment = v8;

    v5->_sourcePid = [coderCopy decodeInt64ForKey:@"_sourcePid"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetEnvironment"];
    targetEnvironment = v5->_targetEnvironment;
    v5->_targetEnvironment = v10;

    v5->_targetPid = [coderCopy decodeInt64ForKey:@"_targetPid"];
  }

  return v5;
}

- (id)_initWithNamespace:(void *)namespace sourceEnvironment:(int)environment sourcePid:(void *)pid targetEnvironment:(int)targetEnvironment targetPid:
{
  v12 = a2;
  namespaceCopy = namespace;
  pidCopy = pid;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = RBSEndowmentLink;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    self = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 2, a2);
      objc_storeStrong(self + 3, namespace);
      *(self + 2) = environment;
      objc_storeStrong(self + 4, pid);
      *(self + 3) = targetEnvironment;
    }
  }

  return self;
}

@end