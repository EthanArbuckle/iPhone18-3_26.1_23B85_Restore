@interface _TVControlTarget
+ (void)addTargetInControl:(id)a3 withViewElement:(id)a4;
- (_TVControlTarget)initWithViewElement:(id)a3;
@end

@implementation _TVControlTarget

+ (void)addTargetInControl:(id)a3 withViewElement:(id)a4
{
  object = a3;
  v6 = a4;
  v7 = objc_getAssociatedObject(object, "AssociatedTarget");
  if (v7)
  {
    [object removeTarget:v7 action:sel__action_ forControlEvents:64];
  }

  v8 = [[a1 alloc] initWithViewElement:v6];

  [object addTarget:v8 action:sel__action_ forControlEvents:64];
  objc_setAssociatedObject(object, "AssociatedTarget", v8, 0x301);
}

- (_TVControlTarget)initWithViewElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TVControlTarget;
  v6 = [(_TVControlTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_element, a3);
  }

  return v7;
}

@end