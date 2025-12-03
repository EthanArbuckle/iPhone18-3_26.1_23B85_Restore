@interface SCRCWeakReferenceContainer
- (BOOL)isEqual:(id)equal;
- (SCRCWeakReferenceContainer)initWithObject:(id)object;
- (id)autoreleasedReference;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SCRCWeakReferenceContainer

- (SCRCWeakReferenceContainer)initWithObject:(id)object
{
  v7.receiver = self;
  v7.super_class = SCRCWeakReferenceContainer;
  v4 = [(SCRCWeakReferenceContainer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_initWeak(&v4->_weakReference, object);
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
  strongReference = [(SCRCWeakReferenceContainer *)self strongReference];

  return strongReference;
}

- (unint64_t)hash
{
  strongReference = [(SCRCWeakReferenceContainer *)self strongReference];
  v3 = [strongReference hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    strongReference = [(SCRCWeakReferenceContainer *)self strongReference];
    strongReference2 = [equal strongReference];
    v7 = strongReference == strongReference2 || [strongReference isEqual:strongReference2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCRCWeakReferenceContainer;
    return [(SCRCWeakReferenceContainer *)&v9 isEqual:equal];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  strongReference = [(SCRCWeakReferenceContainer *)self strongReference];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithObject:", strongReference}];

  return v5;
}

@end