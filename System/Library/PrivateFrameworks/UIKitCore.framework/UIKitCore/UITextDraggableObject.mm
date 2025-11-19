@interface UITextDraggableObject
+ (id)draggableObjectWithItemProvider:(id)a3 fromRange:(id)a4;
@end

@implementation UITextDraggableObject

+ (id)draggableObjectWithItemProvider:(id)a3 fromRange:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setItemProvider:v6];

  [v7 setRange:v5];

  return v7;
}

@end