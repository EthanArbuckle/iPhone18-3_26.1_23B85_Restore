@interface _UIAbstractBSXPCCodingAdapter
+ (id)adapterWithObject:(id)object;
- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)coder clazz:(Class)clazz;
- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)coder collectionOfClass:(Class)class containingClass:(Class)containingClass;
- (_UIAbstractBSXPCCodingAdapter)initWithObject:(id)object;
@end

@implementation _UIAbstractBSXPCCodingAdapter

+ (id)adapterWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

- (_UIAbstractBSXPCCodingAdapter)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = _UIAbstractBSXPCCodingAdapter;
  v6 = [(_UIAbstractBSXPCCodingAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)coder clazz:(Class)clazz
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UIAbstractBSXPCCodingAdapter;
  v7 = [(_UIAbstractBSXPCCodingAdapter *)&v11 init];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:clazz forKey:@"key"];
    object = v7->_object;
    v7->_object = v8;
  }

  return v7;
}

- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)coder collectionOfClass:(Class)class containingClass:(Class)containingClass
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIAbstractBSXPCCodingAdapter;
  v9 = [(_UIAbstractBSXPCCodingAdapter *)&v13 init];
  if (v9)
  {
    v10 = [coderCopy decodeCollectionOfClass:class containingClass:containingClass forKey:@"key"];
    object = v9->_object;
    v9->_object = v10;
  }

  return v9;
}

@end