@interface SCRCWeakReferenceContainer
- (BOOL)isEqual:(id)a3;
- (SCRCWeakReferenceContainer)initWithObject:(id)a3;
- (id)autoreleasedReference;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SCRCWeakReferenceContainer

- (SCRCWeakReferenceContainer)initWithObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCRCWeakReferenceContainer;
  v4 = [(SCRCWeakReferenceContainer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_initWeak(&v4->_weakReference, a3);
  }

  return v5;
}

- (void)dealloc
{
  objc_destroyWeak(&self->_weakReference);
  v3.receiver = self;
  v3.super_class = SCRCWeakReferenceContainer;
  [(SCRCWeakReferenceContainer *)&v3 dealloc];
}

- (id)autoreleasedReference
{
  v2 = [(SCRCWeakReferenceContainer *)self strongReference];

  return v2;
}

- (unint64_t)hash
{
  v2 = [(SCRCWeakReferenceContainer *)self strongReference];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCRCWeakReferenceContainer *)self strongReference];
    v6 = [a3 strongReference];
    v7 = v5 == v6 || [v5 isEqual:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCRCWeakReferenceContainer;
    return [(SCRCWeakReferenceContainer *)&v9 isEqual:a3];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SCRCWeakReferenceContainer *)self strongReference];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithObject:", v4}];

  return v5;
}

@end