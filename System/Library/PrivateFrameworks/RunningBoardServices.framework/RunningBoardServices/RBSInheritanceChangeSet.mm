@interface RBSInheritanceChangeSet
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSInheritanceChangeSet)initWithGainedInheritances:(id)inheritances lostInheritances:(id)lostInheritances;
- (RBSInheritanceChangeSet)initWithRBSXPCCoder:(id)coder;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSInheritanceChangeSet

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| gained:%@ lost:%@>", v4, self->_gainedInheritances, self->_lostInheritances];

  return v5;
}

- (RBSInheritanceChangeSet)initWithGainedInheritances:(id)inheritances lostInheritances:(id)lostInheritances
{
  inheritancesCopy = inheritances;
  lostInheritancesCopy = lostInheritances;
  v14.receiver = self;
  v14.super_class = RBSInheritanceChangeSet;
  v8 = [(RBSInheritanceChangeSet *)&v14 init];
  if (v8)
  {
    v9 = [inheritancesCopy copy];
    gainedInheritances = v8->_gainedInheritances;
    v8->_gainedInheritances = v9;

    v11 = [lostInheritancesCopy copy];
    lostInheritances = v8->_lostInheritances;
    v8->_lostInheritances = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_14;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
LABEL_3:
    v6 = 0;
    goto LABEL_15;
  }

  gainedInheritances = self->_gainedInheritances;
  v8 = equalCopy->_gainedInheritances;
  if (gainedInheritances != v8)
  {
    v6 = 0;
    if (!gainedInheritances || !v8)
    {
      goto LABEL_15;
    }

    Count = CFSetGetCount(self->_gainedInheritances);
    if (Count != CFSetGetCount(v8) || ![(NSSet *)gainedInheritances isEqualToSet:v8])
    {
      goto LABEL_3;
    }
  }

  lostInheritances = self->_lostInheritances;
  v11 = equalCopy->_lostInheritances;
  if (lostInheritances == v11)
  {
LABEL_14:
    v6 = 1;
    goto LABEL_15;
  }

  v6 = 0;
  if (lostInheritances && v11)
  {
    v12 = CFSetGetCount(lostInheritances);
    if (v12 == CFSetGetCount(v11))
    {
      v6 = [(NSSet *)lostInheritances isEqualToSet:v11];
      goto LABEL_15;
    }

    goto LABEL_3;
  }

LABEL_15:

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if ([(NSSet *)self->_gainedInheritances count])
  {
    [coderCopy encodeObject:self->_gainedInheritances forKey:@"gainedInheritances"];
  }

  if ([(NSSet *)self->_lostInheritances count])
  {
    [coderCopy encodeObject:self->_lostInheritances forKey:@"lostInheritances"];
  }
}

- (RBSInheritanceChangeSet)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RBSInheritanceChangeSet;
  v5 = [(RBSInheritanceChangeSet *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"gainedInheritances"];
    gainedInheritances = v5->_gainedInheritances;
    v5->_gainedInheritances = v7;

    v9 = objc_opt_class();
    v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"lostInheritances"];
    lostInheritances = v5->_lostInheritances;
    v5->_lostInheritances = v10;
  }

  return v5;
}

@end