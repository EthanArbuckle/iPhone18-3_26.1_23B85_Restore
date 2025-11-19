@interface _UIAbstractBSXPCCodingAdapter
+ (id)adapterWithObject:(id)a3;
- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)a3 clazz:(Class)a4;
- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)a3 collectionOfClass:(Class)a4 containingClass:(Class)a5;
- (_UIAbstractBSXPCCodingAdapter)initWithObject:(id)a3;
@end

@implementation _UIAbstractBSXPCCodingAdapter

+ (id)adapterWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4];

  return v5;
}

- (_UIAbstractBSXPCCodingAdapter)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIAbstractBSXPCCodingAdapter;
  v6 = [(_UIAbstractBSXPCCodingAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)a3 clazz:(Class)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _UIAbstractBSXPCCodingAdapter;
  v7 = [(_UIAbstractBSXPCCodingAdapter *)&v11 init];
  if (v7)
  {
    v8 = [v6 decodeObjectOfClass:a4 forKey:@"key"];
    object = v7->_object;
    v7->_object = v8;
  }

  return v7;
}

- (_UIAbstractBSXPCCodingAdapter)initWithBSXPCCoder:(id)a3 collectionOfClass:(Class)a4 containingClass:(Class)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = _UIAbstractBSXPCCodingAdapter;
  v9 = [(_UIAbstractBSXPCCodingAdapter *)&v13 init];
  if (v9)
  {
    v10 = [v8 decodeCollectionOfClass:a4 containingClass:a5 forKey:@"key"];
    object = v9->_object;
    v9->_object = v10;
  }

  return v9;
}

@end