@interface RBSInheritanceChangeSet
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSInheritanceChangeSet)initWithGainedInheritances:(id)a3 lostInheritances:(id)a4;
- (RBSInheritanceChangeSet)initWithRBSXPCCoder:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSInheritanceChangeSet

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| gained:%@ lost:%@>", v4, self->_gainedInheritances, self->_lostInheritances];

  return v5;
}

- (RBSInheritanceChangeSet)initWithGainedInheritances:(id)a3 lostInheritances:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RBSInheritanceChangeSet;
  v8 = [(RBSInheritanceChangeSet *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    gainedInheritances = v8->_gainedInheritances;
    v8->_gainedInheritances = v9;

    v11 = [v7 copy];
    lostInheritances = v8->_lostInheritances;
    v8->_lostInheritances = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
  v8 = v4->_gainedInheritances;
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
  v11 = v4->_lostInheritances;
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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  if ([(NSSet *)self->_gainedInheritances count])
  {
    [v4 encodeObject:self->_gainedInheritances forKey:@"gainedInheritances"];
  }

  if ([(NSSet *)self->_lostInheritances count])
  {
    [v4 encodeObject:self->_lostInheritances forKey:@"lostInheritances"];
  }
}

- (RBSInheritanceChangeSet)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSInheritanceChangeSet;
  v5 = [(RBSInheritanceChangeSet *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"gainedInheritances"];
    gainedInheritances = v5->_gainedInheritances;
    v5->_gainedInheritances = v7;

    v9 = objc_opt_class();
    v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"lostInheritances"];
    lostInheritances = v5->_lostInheritances;
    v5->_lostInheritances = v10;
  }

  return v5;
}

@end