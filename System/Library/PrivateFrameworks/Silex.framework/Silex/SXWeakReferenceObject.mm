@interface SXWeakReferenceObject
+ (id)withObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (SXWeakReferenceObject)initWithObject:(id)object;
- (id)description;
- (id)object;
- (unint64_t)hash;
@end

@implementation SXWeakReferenceObject

+ (id)withObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithObject:objectCopy];

  return v4;
}

- (SXWeakReferenceObject)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = SXWeakReferenceObject;
  v5 = [(SXWeakReferenceObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [(SXWeakReferenceObject *)self object];
    if (object)
    {
    }

    else
    {
      object2 = [equalCopy object];

      if (!object2)
      {
        v6 = 1;
        goto LABEL_7;
      }
    }

    object3 = [(SXWeakReferenceObject *)self object];
    object4 = [equalCopy object];
    v6 = [object3 isEqual:object4];
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  object = [(SXWeakReferenceObject *)self object];
  v3 = [object hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  object = [(SXWeakReferenceObject *)self object];
  v4 = [v2 stringWithFormat:@"<Weak: %@>", object];

  return v4;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end