@interface PSWeakReference
+ (PSWeakReference)weakReferenceWithObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (PSWeakReference)initWithObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)object;
- (unint64_t)hash;
@end

@implementation PSWeakReference

+ (PSWeakReference)weakReferenceWithObject:(id)object
{
  objectCopy = object;
  v4 = [[PSWeakReference alloc] initWithObject:objectCopy];

  return v4;
}

- (PSWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = PSWeakReference;
  v5 = [(PSWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_location, objectCopy);
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_location);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  object = [(PSWeakReference *)self object];
  v6 = [v4 initWithObject:object];

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = PSWeakReference;
  object = [(PSWeakReference *)&v8 forwardingTargetForSelector:?];
  if (!object)
  {
    object = [(PSWeakReference *)self object];
    Name = sel_getName(selector);
    NSLog(&cfstr_WarningPsweakr.isa, Name, object);
  }

  return object;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  object = [(PSWeakReference *)self object];
  if (object == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = [equalCopy isEqual:object];
  }

  return v6;
}

- (unint64_t)hash
{
  object = [(PSWeakReference *)self object];
  v3 = [object hash];

  return v3;
}

@end