@interface WBSWeakReferenceWrapper
+ (id)wrapperWithObject:(id)object;
- (WBSWeakReferenceWrapper)initWithObject:(id)object;
- (id)object;
@end

@implementation WBSWeakReferenceWrapper

+ (id)wrapperWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

- (WBSWeakReferenceWrapper)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = WBSWeakReferenceWrapper;
  v5 = [(WBSWeakReferenceWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v7 = v6;
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end