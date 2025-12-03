@interface _TVControlTarget
+ (void)addTargetInControl:(id)control withViewElement:(id)element;
- (_TVControlTarget)initWithViewElement:(id)element;
@end

@implementation _TVControlTarget

+ (void)addTargetInControl:(id)control withViewElement:(id)element
{
  object = control;
  elementCopy = element;
  v7 = objc_getAssociatedObject(object, "AssociatedTarget");
  if (v7)
  {
    [object removeTarget:v7 action:sel__action_ forControlEvents:64];
  }

  v8 = [[self alloc] initWithViewElement:elementCopy];

  [object addTarget:v8 action:sel__action_ forControlEvents:64];
  objc_setAssociatedObject(object, "AssociatedTarget", v8, 0x301);
}

- (_TVControlTarget)initWithViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = _TVControlTarget;
  v6 = [(_TVControlTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_element, element);
  }

  return v7;
}

@end