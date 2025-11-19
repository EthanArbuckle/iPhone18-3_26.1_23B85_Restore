@interface RBSPreventLaunchLimitation
+ (id)limitationWithPredicate:(id)a3;
+ (id)limitationWithPredicate:(id)a3 andException:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RBSPreventLaunchLimitation)initWithRBSXPCCoder:(id)a3;
- (id)_initWithPredicate:(void *)a3 andException:;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSPreventLaunchLimitation

+ (id)limitationWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(RBSPreventLaunchLimitation *)[a1 alloc] _initWithPredicate:v4 andException:0];

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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = RBSPreventLaunchLimitation;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_predicate forKey:@"_predicate"];
  allow = self->_allow;
  if (allow)
  {
    [v4 encodeObject:allow forKey:@"_allow"];
  }
}

- (RBSPreventLaunchLimitation)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RBSPreventLaunchLimitation;
  v5 = [(RBSAttribute *)&v11 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_allow"];
    allow = v5->_allow;
    v5->_allow = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_16;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  predicate = self->_predicate;
  v8 = v4->_predicate;
  if (predicate != v8)
  {
    v9 = !predicate || v8 == 0;
    if (v9 || ![(RBSProcessPredicate *)predicate isEqual:?])
    {
      goto LABEL_3;
    }
  }

  allow = self->_allow;
  v11 = v4->_allow;
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

- (id)_initWithPredicate:(void *)a3 andException:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (!v6)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel__initWithPredicate_andException_ object:a1 file:@"RBSPreventLaunchLimitation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
    }

    v11.receiver = a1;
    v11.super_class = RBSPreventLaunchLimitation;
    v8 = objc_msgSendSuper2(&v11, sel__init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

+ (id)limitationWithPredicate:(id)a3 andException:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RBSPreventLaunchLimitation *)[a1 alloc] _initWithPredicate:v7 andException:v6];

  return v8;
}

@end