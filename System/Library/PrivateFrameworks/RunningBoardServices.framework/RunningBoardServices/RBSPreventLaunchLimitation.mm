@interface RBSPreventLaunchLimitation
+ (id)limitationWithPredicate:(id)predicate;
+ (id)limitationWithPredicate:(id)predicate andException:(id)exception;
- (BOOL)isEqual:(id)equal;
- (RBSPreventLaunchLimitation)initWithRBSXPCCoder:(id)coder;
- (id)_initWithPredicate:(void *)predicate andException:;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSPreventLaunchLimitation

+ (id)limitationWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [(RBSPreventLaunchLimitation *)[self alloc] _initWithPredicate:predicateCopy andException:0];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  predicate = self->_predicate;
  v6 = [v3 initWithFormat:@"<%@| %@ allow:%@>", v4, predicate, self->_allow];

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = RBSPreventLaunchLimitation;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_predicate forKey:@"_predicate"];
  allow = self->_allow;
  if (allow)
  {
    [coderCopy encodeObject:allow forKey:@"_allow"];
  }
}

- (RBSPreventLaunchLimitation)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RBSPreventLaunchLimitation;
  v5 = [(RBSAttribute *)&v11 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_allow"];
    allow = v5->_allow;
    v5->_allow = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_16;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  predicate = self->_predicate;
  v8 = equalCopy->_predicate;
  if (predicate != v8)
  {
    v9 = !predicate || v8 == 0;
    if (v9 || ![(RBSProcessPredicate *)predicate isEqual:?])
    {
      goto LABEL_3;
    }
  }

  allow = self->_allow;
  v11 = equalCopy->_allow;
  if (allow == v11)
  {
LABEL_16:
    v6 = 1;
    goto LABEL_17;
  }

  if (allow)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v6 = [(RBSProcessPredicate *)allow isEqual:?];
    goto LABEL_17;
  }

LABEL_3:
  v6 = 0;
LABEL_17:

  return v6;
}

- (id)_initWithPredicate:(void *)predicate andException:
{
  v6 = a2;
  predicateCopy = predicate;
  if (self)
  {
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithPredicate_andException_ object:self file:@"RBSPreventLaunchLimitation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
    }

    v11.receiver = self;
    v11.super_class = RBSPreventLaunchLimitation;
    v8 = objc_msgSendSuper2(&v11, sel__init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, predicate);
    }
  }

  return self;
}

+ (id)limitationWithPredicate:(id)predicate andException:(id)exception
{
  exceptionCopy = exception;
  predicateCopy = predicate;
  v8 = [(RBSPreventLaunchLimitation *)[self alloc] _initWithPredicate:predicateCopy andException:exceptionCopy];

  return v8;
}

@end