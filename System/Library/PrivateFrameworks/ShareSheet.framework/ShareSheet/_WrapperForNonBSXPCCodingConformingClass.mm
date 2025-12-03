@interface _WrapperForNonBSXPCCodingConformingClass
- (_WrapperForNonBSXPCCodingConformingClass)initWithBSXPCCoder:(id)coder;
- (_WrapperForNonBSXPCCodingConformingClass)initWithObject:(id)object;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _WrapperForNonBSXPCCodingConformingClass

- (_WrapperForNonBSXPCCodingConformingClass)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = _WrapperForNonBSXPCCodingConformingClass;
  v5 = [(_WrapperForNonBSXPCCodingConformingClass *)&v8 init];
  object = v5->_object;
  v5->_object = objectCopy;

  return v5;
}

- (_WrapperForNonBSXPCCodingConformingClass)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"className"];
  v6 = [coderCopy decodeObjectOfClass:NSClassFromString(v5) forKey:@"wrappedObject"];

  v7 = [(_WrapperForNonBSXPCCodingConformingClass *)self initWithObject:v6];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  object = [(_WrapperForNonBSXPCCodingConformingClass *)self object];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [coderCopy encodeObject:v7 forKey:@"className"];

  object2 = [(_WrapperForNonBSXPCCodingConformingClass *)self object];
  [coderCopy encodeObject:object2 forKey:@"wrappedObject"];
}

@end